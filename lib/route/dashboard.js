/*
 *
 * */

"use strict";

var express = require('express');
var router  = express.Router();

router.get('/', function(req, res) {

    var user = req.user;
    console.log('dashboard.js: '+user);

    req.session.keep_old();

    // if no user available in session show main public
    if (!user) {
      return res.redirect_with_session('./login/');
    }

    return res.redirect_with_session('./calendar/');
});

// Make sure that all fallowing handlers Dashboard
// require authenticated users
router.all(/.*/, function (req, res, next) {

    if ( !req.user ) {
        return res.redirect_with_session(303, '/');
    }

    next();
});

router.get('/foo/', function(req, res) {
    var user = req.user;
    console.log('/foo/ '+user);
    res.render('dashboard', { title: 'FOO' });
});

router.get('/icm/', function(req, res) {
    var user = req.user;
    console.log('/foo/ '+user);
    res.render('icm_main', { title: 'ICM ' });
});


module.exports = router;
