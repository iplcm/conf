#!MANAGED-CONFIG {$userapiUrl}

#---------------------------------------------------#
## 更新：{date("Y-m-d h:i:s")}
#---------------------------------------------------#
[General]
bypass-system = true
loglevel = notify
replica = false

dns-server = system, 119.29.29.29, 119.28.28.28, 1.2.4.8
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, 17.0.0.0/8, localhost, *.local, *.crashlytics.com
tun-excluded-routes = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12
tun-included-routes = 192.168.1.12/32

always-real-ip = *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com
hijack-dns = 8.8.8.8:53, 8.8.4.4:53

http-listen = 0.0.0.0:8888
socks5-listen = 0.0.0.0:8889
wifi-access-http-port = 8888
wifi-access-socks5-port = 8889

external-controller-access = lhie1@0.0.0.0:6170

internet-test-url = http://www.aliyun.com
proxy-test-url = http://cp.cloudflare.com/generate_204
test-timeout = 5

allow-wifi-access = true
exclude-simple-hostnames = true
ipv6 = false
network-framework = false
show-error-page-for-reject = true
tls-provider = default
use-default-policy-if-wifi-not-primary = false

[Replica]
hide-apple-request = true
hide-crashlytics-request = true
hide-udp = false
keyword-filter-type = false

[Proxy]
Direct = direct
{$All_Proxy}

[Proxy Group]
{$ProxyGroups}

[Rule]

# 屏蔽邪教
RULE-SET,https://raw.githubusercontent.com/du5/js/master/Surge/REJECT.list,REJECT,notification-text="珍爱生命，远离邪教。",notification-interval=300
# Rulesets

URL-REGEX,https://app.bilibili.com/x/v2/(splash|search/(defaultword|square)),REJECT
URL-REGEX,https://api.bilibili.com/x/v2/dm/ad,REJECT

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Reject.list,AdBlock

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Special.list,DIRECT

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Netflix.list,Netflix
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Spotify.list,Spotify

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Bilibili.list,AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/iQiyi.list,AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Letv.list,AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/MOO.list,AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Tencent%20Video.list,AsianTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Youku.list,AsianTV

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/ABC.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Abema%20TV.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Amazon.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Apple%20News.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Apple%20TV.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Bahamut.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/BBC%20iPlayer.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/DAZN.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Disney%20Plus.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/encoreTVB.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Fox%20Now.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Fox%2B.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/HBO.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Hulu%20Japan.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Hulu.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Japonx.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/JOOX.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/KKBOX.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/KKTV.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Line%20TV.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/myTV%20SUPER.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Pandora.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/PBS.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Pornhub.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Soundcloud.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/ViuTV.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/YouTube%20Music.list,GlobalTV
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/YouTube.list,GlobalTV

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Telegram.list,Telegram
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Steam.list,Steam
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Speedtest.list,Speedtest
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/PayPal.list,PayPal
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Microsoft.list,Microsoft

{* 
{if $user->class > 0}
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Media/Netease%20Music.list,Netease Music
{/if} *}

RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Proxy.list,Proxy
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Domestic.list,Domestic
RULE-SET,https://raw.githubusercontent.com/lhie1/Rules/master/Surge/Surge%203/Provider/Apple.list,Apple

RULE-SET,LAN,Direct

GEOIP,CN,BackChina
FINAL,Others,dns-failed

[Host]
ip6-localhost = ::1
ip6-loopback = ::1
taobao.com = server:223.6.6.6
*.taobao.com = server:223.6.6.6
tmall.com = server:223.6.6.6
*.tmall.com = server:223.6.6.6
jd.com = server:119.29.29.29
*.jd.com = server:119.28.28.28
*.qq.com = server:119.28.28.28
*.tencent.com = server:119.28.28.28
*.alicdn.com = server:223.5.5.5
aliyun.com = server:223.5.5.5
*.aliyun.com = server:223.5.5.5
weixin.com = server:119.28.28.28
*.weixin.com = server:119.28.28.28
bilibili.com = server:119.29.29.29
*.bilibili.com = server:119.29.29.29
hdslb.com = server:119.29.29.29
163.com = server:119.29.29.29
*.163.com = server:119.29.29.29
126.com = server:119.29.29.29
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.netease.com = server:119.29.29.29
mi.com = server:119.29.29.29
*.mi.com = server:119.29.29.29
xiaomi.com = server:119.29.29.29
*.xiaomi.com = server:119.29.29.29
dler.cloud = server:180.76.76.76
dleris.best = server:180.76.76.76
routerlogin.net = server:system
_hotspot_.m2m = server:system
router.asus.com = server:system
hotspot.cslwifi.com = server:system
amplifi.lan = server:system
*.lan = server:system

{literal}
[URL Rewrite]
^https?:\/\/(www\.)?g\.cn https://www.google.com/ncr 302
^https?:\/\/(www\.)?google\.cn https://www.google.com/ncr 302

{/literal}

[MITM]
skip-server-cert-verify = true
tcp-connection = false
ca-passphrase = 20200105cmcloudbydu5
ca-p12 = MIIJ2wIBAzCCCaIGCSqGSIb3DQEHAaCCCZMEggmPMIIJizCCA/8GCSqGSIb3DQEHBqCCA/AwggPsAgEAMIID5QYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQI3vHoTQ2a3FwCAggAgIIDuJdfP0Crmw9ndHi6/1itiHYI6Yu0DkGQQFuy+PpeUhT/SroYyrnELNH32gI/Ze9IKs7pNEAj0J6DTQXV5bCAJUpFVGVEKv9lvENknppv5Z89XTxPukWPzKFSAhszKsFlbYsNsQAMQRuBUrV2CuaTwnvehiDPDf9zwONUr8/r0pAphSz6iksvx4z0N+BrR2q6rGHY0OFwNGMtkD0YDg7YzCY2IPTAE50xnOzjU1hbKp8fAA+WJ/+8gHKWEvg9+V+KDFHNjRC7V5k0NHcXZK83d0kKfBCvbFk+6CsGP5TDjVdXXjFDnChMYL8jK+H14GWomN0AP8TVbTjH6isnHf7l4toUlvE7yp7VtMsClWXEj0NBrIXzp/fxpOcjfwb2rI7+rP9UkPEfcuWLA4l4i81oso0AinxeSzz1En3/WgkolqjQpTSBGVglxovhcynBIkSATk6TIhF5h0cjGCzW/+aVYZpDjBLL2QjNyMZS6FoMtHJ2kb5Be8wTrkYIlQ3j4+lWDUOR7KfMyWohxSG8ORAgWZ5E8xhKsCCnkz3Aft8/dtmz9zI0QJvE+LRz4Dyf+0Dj8TXPWezmONDqlM3dik00c4XMJG+cUtQw6f5MbZ1veVKvVZzypRMrVIByT0y+3tcw0BzvXvnserZMmsJW+cBbrC4x7PL0NAH7qyoRZhYmfGhBfvT4QFDYdd5KVFpVzmZxey8iI7PVq4hyTq+4DPWO5xhku6V32Jd4boQ+VT/ud/0Wsu31ouLgwt3wbDbbtNWGLsONgztlqNDJWcn43m04LhrDW7mkfbpTt9JZRaMrV75FIpvAlfDOAt0vFMiIH1Fwi6j2bHLHrjfvOOzCfptowmIiFazu3lDzFw8d8PhQxr+gmipR7/FyP1VYjXW4inAYrI8bXYU8Wv9YatzWyUB93kef2qhLpWZfwExKC6dTtjT0CsWuSS3iHvk8WWgZ8majcs5CCb4wViiel+Mh9S6/zA+hps+JEYHkK6WrAJGJon8SEAXJzu41hTwjdGKRTHuSlU+1vLWNNJrvqfPnHeAcT6nlFP4rgnRxrwVmYDKcocooA2hizgiXb94udL1aDrPVhrc0mrmTPhgC6e+0jqW9v4LtJllBW3WqpFI4++j6L9o/K5JxTVDHVnlCYbx+ZIpI1X3JOwe6ln7O3YrVEswjuEbJJBkwJ/MGlqaX62Hw25dtRbCnLFdpZb17Z9p94WI/dLIBM3ewmFdAqORFmzk4FEPpEqiKeayIie6ARcT25QWKG1z8HaNTgLYwggWEBgkqhkiG9w0BBwGgggV1BIIFcTCCBW0wggVpBgsqhkiG9w0BDAoBAqCCBO4wggTqMBwGCiqGSIb3DQEMAQMwDgQIV2/ezQxzRoICAggABIIEyNfI8/KHIQ80oEU0mAWFHPeG3j7Cc6TEiV/c1qlk4eOETTJ3UVQWmlacIFIXjUEoam0qfWpZZ0GEp+Xsxygp2dWTHQrES3rGGm8R2fJ5H+Ltd89DbMZd72vc2Y2MKHbwa43/HQ364Qx7qTUgVmZ6OFQTH/F8rgsCVgHj3gXclcIjxNnvF8kJaPpKW2btUu/W46Ea8hzNiXXNwm/FZMYaLY/ThP5mPMLRoa7ckZtMxx5kx+cd0pczrTP/PaElDSrE6vhsTXoetIDfvA1Qu9t48v6XIg2z57kqW/c5bzYqwsnVFzcgHrTi5kgaYdxpYnp6uaZr6vbIlPJ+uyLQ1VRGV4D+bBOAfosmNQ2kbekhl+JzJy7NwNL6r2ylpbgZm96VGHZ7fM+zDZBsWTUQsfS4efraF1DR+Q6t+oUsca7LqSVgNi0HjBrYtttaYFsC/Os3iQMDEQe8JAppsEGzWwNC0b6DlC0twCUqW+PnN+OgzleFvc11WI5+991lLyOPEaFu0OX6dW21eSUc6AJkaLN2VSl/6SLq32t+ftvAqWyvJjHAOIBehuesIjipiNmxMdXp0EWGZv9SyNzPCu4M2j0ahGpDSqZk02k7vdROlzNuJbp+qHn+zwPkeAVr2o0nGvCcpgQ+m63lC/v4KmFzOawaY4nHJbZOjQ7Dx7BMwqSDEuAWW4fzFL8mXScSxqCOaBx5MLG5fQeHZeLoGoLBR4m0cUvAVLOR22VEkQ1pDvOEU7SirjshvwMGGwxfZ1sGWaK5gN/gZJL85gGgGNrMVeNr+7+/wcPtr1rB3j+3IVi1icr/fWBNDcBeWuf9ukxkYxsCcJLVG5WZDrK+n3aCh2JgSDBTx2C77g0HtobNA1qKA/8AQ8hZdDwqGvKQyON9w4l2XQ/nduzubdYSDiV+y2ei3EdTS3rXWJ8I4PHVH//QArdF8mlDPVQS/lCVWdn/zC+fNaZXNqrVGMJG0xeLqWJLkH26vUF1i1Q60Ljb1obudQJEyDP6olk2nbFcRlGOP+hDOYfN7qws1N3y/iGxCm0QIGoCbG0GpU/E0YV/G2s7nM5s9JN4xIjJ2qrHjbJxHt09FOxz0HxZ/+5W7Jzi4l2FIa/VR6PNatfoAHwUhfxyunWeDSBS2m/L5iPh1E6u4LcfnPX4I5EFS8ggqdhzvT+RvDxwxQ0TU1fcHKniIDZ0K8akMkf56DAjXZxtNICeGUgFscbkI7kJIqdaMUeozxCLO0yYa02mll9J/JztKzMo9AgF6qgbe4Wg8VK5io1e3MPtPy21/bvcT8GZXIoUkjSOmWMA8D/ih0f2IJIslxg4/gfzkfMDk+dZju0o466OhNycMrVGQaxoKx6jg+sEp+9GFgbYewVMdBE1P3qlFaYbxZelVyul6DEklRtvPamD8ZSnUxo46eNRUBeopLLvnuGocNiMYd7tj/UYn7UCEGWCGsAOqzRK5AvM/1budwXSjsxJxDXOUYuEB0GGxB2R/mkrqcpQlnqYyFFaW9xa3xbIhz/YeEQqdWxUrKI7+mFq/trsC2cb3/LDub03Nh3TB+vVk8hgQ1p5989+uBF/v6dWGBTZeJb7ItjKMIRbP+V4FWiOwooiDBIi47aCx8VVYxtfHrotOID+CBXWwDFoMEEGCSqGSIb3DQEJFDE0HjIAQwBtAEMAbABvAHUAZAAgAFMAdQByAGcAZQAgAEMAQQAgAFAAcgBvAGYAaQBsAGUAIDAjBgkqhkiG9w0BCRUxFgQUpAmofgpg0WM4cmgscCzmphigujcwMDAhMAkGBSsOAwIaBQAEFEE9QJFNuJLZLnI2YeoOmr89aSgGBAjz1lvk3lMWlQIBAQ==