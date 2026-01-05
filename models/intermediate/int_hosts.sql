with  details   as(
    select
        host_id,
        host_name,
        host_since,
        is_superhost,
        response_rate,
        created_at  as host_created_date
    from
    {{ref('stg_hosts')}}
)
select  *   from    details