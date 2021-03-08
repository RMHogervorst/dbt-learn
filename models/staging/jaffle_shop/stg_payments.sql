select 
    id as payment_id,
    orderid as order_id,
    created as order_date,
    paymentmethod as payment_method,
    status,
    amount / 100 as amount,
    created as created_at

from {{ source('stripe','payment') }}