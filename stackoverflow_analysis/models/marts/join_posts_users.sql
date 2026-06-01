{{ config(materialized='table') }}

SELECT
  p.*, u.display_name,
  u.creation_date AS user_created_date,
  u.location,
  u.reputation,
  u.up_votes,
  u.down_votes,
  u.views
FROM {{ source('stackoverflow','posts') }} p
JOIN {{ source('stackoverflow','users') }} u
ON p.owner_user_id = u.id