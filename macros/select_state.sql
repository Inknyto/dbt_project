{% macro select_state (param) %}
select * from airports where "STATE" = '{{params}}'
{% endmacro %}