select *
from {{ source('src', 'BOOKINGS') }}