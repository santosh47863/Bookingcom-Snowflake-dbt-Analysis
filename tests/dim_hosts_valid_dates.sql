select *
from {{ ref('dim_hosts') }}
where host_since > current_date
