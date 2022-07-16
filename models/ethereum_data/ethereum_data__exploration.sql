with source_tokens as (
    select * from {{ source('crypto_ethereum_snapshot', 'tokens') }}
)

final as (
    select * from source_tokens
)

select * from final