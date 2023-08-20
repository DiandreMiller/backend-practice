const joi = require('joi');
const createValidator = require('./createValidators');


const storeSchema = joi.object({
    store_name: joi.string().required(),
    store_address: joi.string().required(),
    store_phone_number: joi.string().required(),
    store_zip_code: joi.number().required(),
    store_city: joi.string().required(),
    store_image: joi.string(),
    store_hours: joi.string().required(),
    accepts_ebt: joi.boolean()
});

module.exports = createValidator(storeSchema);