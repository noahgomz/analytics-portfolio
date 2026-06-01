/* INNACTIVE FOR STORAGE SPACE
{{ config(
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    partition_by={
        "field": "creation_date",
        "data_type": "timestamp",
        "granularity": "month"
    },
    partition_expiration_days=7300
) }}

SELECT *
FROM {{ source('stackoverflow', 'posts') }}

{% if is_incremental() %}
    WHERE creation_date > (SELECT MAX(creation_date) FROM {{ this }})
{% else %}
    WHERE creation_date >= '2008-01-01'
{% endif %}
*/