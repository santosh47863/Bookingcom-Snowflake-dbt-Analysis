select *
from {{ source('src', 'HOSTS') }}