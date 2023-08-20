const express = require('express');
const products = express.Router();

const {
    getAllProducts,
    getProduct
} = require('../queries/products');

//index

products.get('/', async (request, response) => {
    const { error, result } = await getAllProducts();
    if (error) {
        response.status(500).json({ error: 'Server Error' })
    } else {
        response.status(200).json(result);
    }
});

//show

products.get('/:id', async (request, response) => {
    const { id } = request.params;
    const { error, result } = await getProduct(id);
    if (error?.code === 0) {
        response.status(404).json({error: 'Product Not Found'})
    } else if (error) {
        response.status(500).json({error: 'Server Error'})
    } else {
        response.status(200).json(result)
    }
})

module.exports = products;