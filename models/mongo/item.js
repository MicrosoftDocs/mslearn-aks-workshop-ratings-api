var mongoose = require('mongoose');

var itemSchema = new mongoose.Schema({
    uid: Number,
    name: String,
    img: String,
    description: String,
    aliases: String
});

mongoose.model('Item', itemSchema, 'items');