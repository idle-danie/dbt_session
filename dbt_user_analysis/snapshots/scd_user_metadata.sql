{% snapshot scd_user_metadata %}

{{ 
  config(
    target_schema='danie',
    unique_key='user_id', 
    strategy='timestamp', 
    updated_at='updated_at', 
    invalidate_hard_deletes=True
  ) 
}}
SELECT * FROM raw_data.user_metadata

{% endsnapshot %}