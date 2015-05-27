maven:
  pkg.installed

settings.xml:
  file.managed:
    - name: /etc/skel/.m2/conf/settings.xmp
    - source: salt://magnolia/settings.xml
    - template: jinja
    - user: root
    - makedirs: True
