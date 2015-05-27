maven:
  pkg.installed

settings.xml:
  file.managed:
    - name: /etc/skel/.m2/settings.xml
    - source: salt://magnolia/settings.xml
    - template: jinja
    - user: root
    - makedirs: True
