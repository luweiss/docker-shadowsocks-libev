# 使用说明

1. 编辑配置文件 shadowsocks.conf
   
   password=连接密码
   
   port=端口
   
   method=加密方法 rc4-md5,
   aes-128-gcm, aes-192-gcm, aes-256-gcm,
   aes-128-cfb, aes-192-cfb, aes-256-cfb,
   aes-128-ctr, aes-192-ctr, aes-256-ctr,
   camellia-128-cfb, camellia-192-cfb,
   camellia-256-cfb, bf-cfb,
   chacha20-ietf-poly1305,
   xchacha20-ietf-poly1305,
   salsa20, chacha20 and chacha20-ietf.

   name=docker容器名称


3. 启动
   
   ./start.sh


4. 卸载

   ./remove.sh
