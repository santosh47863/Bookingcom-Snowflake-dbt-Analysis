{% snapshot emp_snap %}

{{ 
  config(
    target_schema = 'snapshots',
    unique_key = 'emp_id',
    strategy = 'check',
    check_cols = 'all'
  )
}}

select *
from {{ source('source_ref', 'employee') }}

{% endsnapshot %}


/*
{% snapshot arr_snap %}

{{ 
  config(
    target_schema = 'snapshots',
    unique_key = 'emp_id',
    strategy = 'timestamp',
    updated_at = 'updated_at'
  )
}}

select *
from {{ source('source_ref', 'employee') }}

{% endsnapshot %}

*/
