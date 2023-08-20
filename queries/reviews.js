const db = require('../db/dbConfig');

//all

const getAllReviews = async () => {
    try {
        const result = await db.any('SELECT * FROM reviews');
        return { result };
    } catch (error) {
        return { error }
    }
};

//one

const getOneReview = async (id) => {
    try {
        const result = await db.one('SELECT * FROM reviews WHERE id=$1', id)
        return { result }
    } catch (error) {
        return { error: error }
    }
};

//create

const createAReview = async (review) => {
    try {

        const newReview = await db.one(
            `INSERT INTO
            reviews(reviewer_rating, reviewer_comment)
            VALUES
            ($1,$2)
            RETURNING * `,
            [review.reviewer_rating, review.reviewer_comment]
        );
        return { newReview }
    } catch (error) {
        return {error: error}
    }
}

//update

const updateReview = async (id, review) => {
    try {
        const updateReview = await db.one(
            `UPDATE reviews SET reviewer_rating=$1, reviewer_comment=$2`
            [review.reviewer_rating, review.reviewer_comment]
        );
        return { updateReview };
    } catch (error) {
        return { error: error }
    }
};

//delete

const deleteAReview = async (id) => {
    try {
        const deleteReview = await db.one(`DELETE FROM reviews WHERE id=$1 RETURNING *`, id);
        return { deleteReview }
    } catch (error) {
        return { error: error }
    }
};

module.exports = {
    getAllReviews,
    getOneReview,
    createAReview,
    updateReview,
    deleteAReview
};