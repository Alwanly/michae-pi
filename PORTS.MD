# Port Mappings

The published port follows these convention:

- Web UI: 80xx
- Prometheus exporters: 81xx

|         Service       |        Container Port      |   Published Port   |
|-----------------------|----------------------------|--------------------|
| DNSCrypt              | 5053 (UDP)                 | -                  |
| Pi-Hole               | 80 (Web), 53 (UDP)         | 80   -> 8003, 53   |
| Reverse Proxy (Nginx) | 80                         | 80                 |
