maven:
  pkg.installed

tomcat7:
  pkg.installed


create_swap_file:
  cmd.run:
    - name: |
        [ -f /.swapfile ] || dd if=/dev/zero of=/.swapfile bs=1M count=2048
        chmod 0600 /.swapfile
        mkswap /.swapfile
    - unless: file /.swapfile 2>&1 | grep -q "Linux/i386 swap"
    - require_in:
      - mount: /.swapfile



/.swapfile:
  mount.swap


