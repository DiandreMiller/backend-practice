const db = require('../db/dbConfig');

//all

const getAllStores = async () => {
    try {
        const results = await db.any('SELECT * FROM stores')
        return { results };
    } catch (error) {
        return { error }
    }
};

//one 

const getOneStore = async (id) => {
    try {
        const result = await db.one('SELECT * FROM stores WHERE id=$1', id);
        return { result };
    } catch (error) {
        return { error: error }
    }
};

module.exports = {
    getAllStores,
    getOneStore
}