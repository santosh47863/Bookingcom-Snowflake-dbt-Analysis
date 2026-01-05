select *
from {{ source('src', 'LISTINGS') }}