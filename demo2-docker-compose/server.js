const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();

mongoose.connect('mongodb://root:rootpassword@mongo_db:27017/mydb', { useNewUrlParser: true });

const stringSchema = new mongoose.Schema({
    value: String
});

const StringModel = mongoose.model('String', stringSchema);

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.get('/string', async (req, res) => {
    const result = await StringModel.findOne();
    res.send(result);
});

app.post('/string', async (req, res) => {
    const { value } = req.body;
    const result = await StringModel.findOneAndUpdate({}, { value }, { upsert: true, new: true });
    res.send(result);
});

app.listen(3000, () => {
    console.log('Server started on port 3000');
});
