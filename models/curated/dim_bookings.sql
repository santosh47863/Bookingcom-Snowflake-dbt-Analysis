with dim_booking  as(
    select  
        booking_id,
        booking_date,
        nights_booked,
        booking_status,
        booking_created_date
    from
    {{ref('int_bookings')}}

)
select  *   from
dim_booking 