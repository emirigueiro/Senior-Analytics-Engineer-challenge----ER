{#
  Por defecto dbt concatena el schema del target con el custom schema
  (ej: main_staging). Acá usamos el custom schema tal cual (staging,
  intermediate, marts) para que el warehouse quede prolijo.
  En un equipo con varios desarrolladores se mantendría el prefijo por
  target para que cada uno tenga su propio entorno.
#}
{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if custom_schema_name is none -%}
        {{ target.schema }}
    {%- else -%}
        {{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}
