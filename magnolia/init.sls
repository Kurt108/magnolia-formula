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


jssecacerts:
  file.managed:
    - name: /usr/lib/jvm/java-8-oracle/jre/lib/security/jssecacerts
    - source: salt://magnolia/jssecacerts
    - user: root
    - makedirs: True
    - require:
      - sls: tomcat
