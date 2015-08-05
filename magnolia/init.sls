{% from "tomcat/map.jinja" import tomcat with context %}

include:
  - tomcat

maven:
  pkg.installed

settings.xml:
  file.managed:
    - name: /usr/share/maven/conf/settings.xml
    - source: salt://magnolia/settings.xml
    - template: jinja
    - user: root
    - makedirs: True

magnoliadata:
  file.directory:
    - name: /var/lib/tomcat7/webapps/magnoliadata_
    - user: {{ tomcat.name }}{{ tomcat.version }}
    - require:
      - sls: tomcat