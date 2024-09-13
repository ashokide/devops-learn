## RDP
Remote Desktop (Port : 3389)
```sh
sudo apt install xrdp
```

## SSH Server
Secure Shell (Port : 22)
```sh
sudo apt install openssh-server
```

## Stress Tool
Stress the CPU

```sh
sudo apt install stress
stress -c <cores> -t <timeout-seconds>
```
## Tailscale
Secure remote access

- Install 
```sh
curl -fsSL https://tailscale.com/install.sh | sh
```

- Run Tailscale
```sh
# need to authenticate via browser
sudo tailscale up
```

- Find Tailscale IPv4 Address
```sh
tailscale ip -4
```
