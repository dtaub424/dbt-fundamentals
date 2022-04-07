with orders as (

    select
        a.order_id,
        customer_id,
        amount

    from `silver-area-345616.dbt_dtaub.stg_orders` a
    inner join `silver-area-345616.dbt_dtaub.stg_payments` b

    on a.order_id = b.order_id

)

select * from orders