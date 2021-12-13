const db = require('../persistence');
const uuid = require('uuid/v4');

module.exports = async (req, res) => {
    const todo = {
        id: uuid(),
        name: req.body.name,
        completed: false,
    };

    await db.storeItem(todo);
    res.send(todo);
};
