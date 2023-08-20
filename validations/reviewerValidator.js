const joi = require('joi');
const createValidator = require('./createValidators');

const reviewSchema = joi.object({
    reviewer_rating: joi.number().required(),
    reviewer_comment: joi.string().optional()
});

module.exports = createValidator(reviewSchema);


