# Port Mappings

The published port follows these convention:

- Web UI: 80xx

|         Service       |        Container Port      |   Published Port   |
|-----------------------|----------------------------|--------------------|
| DNSCrypt              | 5053 (UDP)                 | -                  |
| Pi-Hole               | 80 (Web), 53 (UDP)         | 80   -> 8003, 53   |
| Shinobi               | 8080 (Web)                 | 8080 -> 8004       |
| Flame Dashboard       | 5005 (Web)                 | 5005 -> 80         |
