const joi = require('joi');
const createValidator = require('./createValidators');

const productSchema = joi.object({
    product_name: joi.string().required(),
    product_price: joi.number().min(0).required(),
    product_weight: joi.number().min(0).optional(),
    product_unit: joi.string().optional(),
    is_organic: joi.boolean(),
    product_category: joi.string().optional(),
    product_brand: joi.string().optional(),
    product_description: joi.string().optional(),
    product_image: joi.string().optional(),
    is_vegetarian: joi.boolean(),
    is_frozen: joi.boolean(),
    is_fresh: joi.boolean(),
    is_non_processed: joi.boolean(),
    is_in_stock: joi.boolean(),
    is_kosher: joi.boolean(),
    is_halal: joi.boolean(),
    allergens: joi.string().optional(),
    special_diet: joi.string().optional(),
    health_label: joi.string().optional(),
    certification: joi.string().optional(),
    product_discount: joi.number().optional()
});

module.exports = createValidator(productSchema);
