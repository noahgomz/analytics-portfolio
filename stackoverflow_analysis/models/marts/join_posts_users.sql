{{ config(materialized='table') }}

SELECT qp.*, u.display_name, u.location
FROM {{ source('stackoverflow','qposts') }} qp
JOIN {{ source('stackoverflow','users') }} u
ON qp.owner_user_id = u.id