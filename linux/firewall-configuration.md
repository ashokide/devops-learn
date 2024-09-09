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

