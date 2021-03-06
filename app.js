var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require ('express-session');  
var logger = require('morgan');
let db = require('./database/models');
var indexRouter = require('./routes/index');
var productRouter = require('./routes/product');
var searchResultsRouter = require ('./routes/searchResults');
var profileRouter = require ('./routes/profile');
var securityRouter = require('./routes/security');

const { flash } = require('express-flash-message');

var app = express();

//Flash
app.use(
  session({
    secret: 'secret',
    resave: false,
    saveUninitialized: true,
    cookie: {
      maxAge: 1000 * 60 * 60 * 24 * 7,
    },
  }),
);

app.use(flash());

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use (session(
  { secret : 'Nuestro mensaje secreto',
   resave: false,
   saveUninitialized: true })),
app.use(express.static(path.join(__dirname, 'public'))); //esta linea hace que la carpeta public sea un servidor de archivos

const privateRoutes = [
  '/profile'
]
app.use(function(req, res, next){
  if(req.cookies.userId != undefined && req.session.user == undefined){
    //Cambiar
    db.usuarios.findByPk(req.cookies.userId)
    .then( user => {
      req.session.user = user;
      return next();
    })
    .catch( e => { next(createError(e.status)) })
  } else {
    next()
  }
})
app.use(function(req, res, next){
  if(req.session.user != undefined){
    res.locals.user = req.session.user
    } else {
    if (privateRoutes.includes(req.path)) {
      return res.redirect('/')
    }
  }
  next();
});

//Flash
app.use(async (req, res, next) => {
  res.locals.flash = {
    success: await req.consumeFlash('success'),
    info: await req.consumeFlash('info'),
    danger: await req.consumeFlash('danger'),
    warning: await req.consumeFlash('warning'),
  };
  next();
});

app.use('/', indexRouter);
app.use('/product', productRouter);
app.use('/productEdit', productRouter);
app.use ('/search', searchResultsRouter );
app.use ('/profile', profileRouter );
app.use ('/', securityRouter);

// ya se que esto va en las rutas pero no tenia tiempo de arreglarlo
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});
// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
module.exports = app;