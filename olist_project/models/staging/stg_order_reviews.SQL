{{ config(materialized='table', schema="star") }}

SELECT
    review_id,
    order_id,
    review_score,
    TRIM(review_comment_title) AS review_comment_title,
    TRIM(review_comment_message) AS review_comment_message,
    TRY_CAST(review_creation_date AS TIMESTAMP) AS review_creation_date,
    TRY_CAST(review_answer_timestamp AS TIMESTAMP) AS review_answer_timestamp
FROM order_reviews