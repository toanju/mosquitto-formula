# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mosquitto with context %}

mosquitto-package-install-pkg-installed:
  pkg.installed:
    - name: {{ mosquitto.pkg.name }}
