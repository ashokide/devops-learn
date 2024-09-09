## Firewall configuration (ubuntu-based)
interface for managing firewall rules

- Enable Firewall
```
sudo ufw enable
```

- Disable Firewall
```
sudo ufw disable
```

- Set a default policy for incoming traffic
```
sudo ufw default deny incoming
```

- Set a default policy for outgoing traffic
```
sudo ufw default allow outgoing
```

- List all UFW rules
```
# verbose is optional
sudo ufw status verbose
```

- Allow incoming traffic on a specific port
```
sudo ufw allow 22
```

- Allow incoming traffic on a specific service
```
sudo ufw allow http
```

- Deny incoming traffic on a specific port
```
sudo ufw deny 80
```

- Deny incoming traffic on a specific service
```
sudo ufw deny http
```

- Delete a UFW rule
```
# allow/deny rule
sudo ufw delete allow http
```
