var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var productRouter = require('./routes/product');
var userRouter = require ('./routes/users');
var registerRouter = require ('./routes/register');
var productAddRouter = require ('./routes/productAdd');
var searchResultsRouter = require ('./routes/searchResults');
var profileRouter = require ('./routes/profile');
var usuariosRouter = require('./routes/usuarios');
var categoriasRouter = require('./routes/categorias');
var comentariosRouter = require('./routes/comentarios');

//Q odna////////////

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/product', productRouter);
app.use('/productEdit', productRouter);
app.use ('/users', userRouter );
app.use ('/register', registerRouter );
app.use ('/login', userRouter );
app.use ('/product-add', productAddRouter );
app.use ('/searchResults', searchResultsRouter );
app.use ('/profileEdit', userRouter );
app.use ('/profile', profileRouter );
app.use ('/usuarios', usuariosRouter);
app.use ('/categorias', categoriasRouter);
app.use ('/comentarios', comentariosRouter);



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
