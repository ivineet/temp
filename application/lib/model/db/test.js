"use strict";

var moment = require('moment'),
_          = require('underscore'),
config     = require('../../config');

console.log('model test');

module.exports = function(sequelize, DataTypes) {
    var test = sequelize.define("test", {
        // TODO add validators!
        name : {
            type      : DataTypes.STRING,
            allowNull : false
        },
    

    });

    console.log('model test result :'+test.name.type);
    return test;
};
