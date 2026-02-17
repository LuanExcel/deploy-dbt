-- models/staging/stg_customers.sql

-- IMPORTS
-- referenciando a fonte de dados que é o sql na pasta raw
WITH sources AS (
    SELECT * FROM {{ ref('raw_customers') }}
)

-- LOGICAS DE NEGOCIO
-- Criando uma nova CTE para iniciar a limpeza no script
WITH renamed_and_cleaning AS (

select
    customer_id,
    company_name,
    contact_name,
    contact_title,
    address,
    city,
    region,
    postal_code,
    country,
    phone,
    fax
from
    -- Aqui estou referenciando a CTE
    sources

)

-- QUERY FINAL

SELECT * FROM renamed_and_cleaning