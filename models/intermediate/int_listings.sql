with listing_details as(
    select
        listing_id,
        host_id,
        property_type,
        room_type,
        city,
        country,
        accommodates,
        bedrooms,
        bathrooms,
        price_per_night,
        created_at  as  listing_created_date
    from
    {{ref('stg_listings')}}

)
select  *   
from
listing_details

