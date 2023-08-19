const db = require('../db/dbConfig');

//all

const getAllProducts = async () => {
    try {
        const result = await db.any('SELECT * FROM products');
        return { result };
    } catch (error) {
        return { error }
    }
};

//one 

const getProduct = async (id) => {
    try {
        const result = await db.one('SELECT * FROM products WHERE id=$1', id);
        return { result };
    } catch (error) {
        return { error: error }
    }
};


module.exports = {
    getAllProducts,
    getProduct
};