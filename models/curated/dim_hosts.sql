with dim_hosts  as(
    select  
        host_id,
        host_name,
        host_since,
        is_superhost,
        host_created_date
    from
    {{ref('int_hosts')}}

)
select  *   from
dim_hosts