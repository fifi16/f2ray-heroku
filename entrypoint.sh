cd /f2raybin
wget -O f2ray.zip https://github.com/fifi16/v2ray-core/releases/download/v$VER/f2ray-linux-64.zip
unzip f2ray.zip 
cd /f2raybin/v2ray-v$VER-linux-64
chmod +777 f2ray
chmod +777 v2ctl

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

./f2ray
