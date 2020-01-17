FROM shadowsocks/shadowsocks-libev
CMD exec ss-server \
      -u \
      -c /etc/shadowsocks-libev/config.json \
      $ARGS