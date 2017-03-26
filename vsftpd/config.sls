{% from "vsftpd/map.jinja" import vsftpd with context %}

include:
  - vsftpd

vsftpd_config:
  file.managed:
    - name: {{ vsftpd.config }}
    - source: {{ vsftpd.config_src }}
    - template: jinja
    - user: root
    - mode: 644
    - watch_in:
      - service: {{ vsftpd.service }}

