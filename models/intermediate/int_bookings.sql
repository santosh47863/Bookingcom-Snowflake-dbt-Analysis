with BOOKINGS_details  as(
    select  
        booking_id,
        listing_id,
        booking_date,
        nights_booked,
        booking_amount,
        cleaning_fee,
        service_fee,
        booking_status,
        created_at  as booking_created_date
    from
    {{ref('stg_bookings')}}

)
select  *   from
BOOKINGS_details