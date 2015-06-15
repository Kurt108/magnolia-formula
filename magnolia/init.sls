maven:
  pkg.installed

settings.xml:
  file.managed:
    - name: /usr/share/maven/conf/settings.xml
    - source: salt://magnolia/settings.xml
    - template: jinja
    - user: root
    - makedirs: True

