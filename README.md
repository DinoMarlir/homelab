# Homelab
This repository contains configuration files and documentation for my personal homelab setup. It includes various services, applications, and infrastructure components that I use to manage and maintain my home network and servers.

Join my journey in building my first homelab! Follow along as I document the process of setting up and configuring various services and applications.

## Services and Applications
- **Authentik**: Identity and access management platform.
- **Home Assistant**: Centralized home automation platform.
- **AdGuard Home**: Network-wide ad blocker.
- **Nextcloud**: Self-hosted cloud storage and collaboration platform.
- **Jellyfin**: Media server for streaming personal media.
- **Grafana**: Monitoring and visualization platform.
- **Prometheus**: Monitoring and alerting toolkit.
- **Node-RED**: Flow-based development tool for visual programming.
- **InfluxDB**: Time-series database for storing metrics and events.
- **Traefik**: Modern reverse proxy and load balancer.
- **Kubernetes**: Container orchestration platform for managing containerized applications.
- **Ansible**: Automation tool for configuration management and application deployment.
- **Terraform**: Infrastructure as code tool for building, changing, and versioning infrastructure.
- **Cacti**: Network graphing solution.
- **Uptime Kuma**: Self-hosted monitoring tool.

## Public Services I use
- **CloudFlare**: DNS management and CDN services.
  - **CloudFlare Zero Trust**: Secure access to internal applications without a VPN.
- **IPv64.net**: Dynamic DNS service for managing domain names with dynamic IP addresses.
- **Hetzner**: For storing backups in the cloud.

## Infrastructure Components
- **Proxmox VE**: Open-source server virtualization environment.
  - Host: I don't know! If you have any idea please open an issue 💫
- **UniFi Network**: Network management system for UniFi devices.
    - UniFi Dream Machine Pro (UDM-Pro)
    - UniFi Flex Mini Switches for many rooms (UniFi Lite 8 Pro for rooms with access points)
    - UniFi Access Points (U6-PLUS and UAP-AC-M)
- **Raspberry Pi**: Single-board computer for various projects and services.

## Network Configuration
### VLANs and Subnets
| Network Name | VLAN ID | Subnet          | Gateway      | Description           | DHCP Range                   |
|--------------|---------|-----------------|--------------|-----------------------|------------------------------|
| mgmt         | 10      | 10.1.0.0/24     | 10.1.0.1     | Management Network    | 10.1.0.100–10.1.0.200        |
| private      | 20      | 172.16.20.0/24  | 172.16.20.1  | Private Network       | 172.16.20.100–172.16.20.200  |
| wlan         | 21      | 172.16.21.0/24  | 172.16.21.1  | WLAN Network          | 172.16.21.10–172.16.21.200   |
| wlan-guest   | 22      | 172.16.22.0/24  | 172.16.22.1  | Guest WLAN            | 172.16.22.10–172.16.22.200   |
| iot          | 30      | 192.168.30.0/24 | 192.168.30.1 | IoT Network           | 192.168.30.10–192.168.30.200 |
| smart-home   | 31      | 192.168.31.0/24 | 192.168.31.1 | Smart-Home Network    | 192.168.31.10–192.168.31.200 |
| protect      | 32      | 192.168.32.0/24 | 192.168.32.1 | UniFi Protect Network | 192.168.32.10-192.168.32.100 |
| vpn-main     | 40      | 172.16.40.0/24  | 172.16.40.1  | VPN Main Network      | 172.16.40.100–172.16.40.200  |
| srv-prod     | 50      | 10.50.0.0/24    | 10.50.0.1    | Production Servers    | 10.50.0.100–10.50.0.200      |
| srv-lab      | 55      | 10.55.0.0/24    | 10.55.0.1    | Lab Servers           | 10.55.0.100–10.55.0.200      |
| vm-prod      | 60      | 10.60.0.0/24    | 10.60.0.1    | Production VMs        | 10.60.0.100–10.60.0.200      |
| vm-lab       | 65      | 10.65.0.0/24    | 10.65.0.1    | Lab VMs               | 10.65.0.100–10.65.0.200      |

## Hosts
| Hostname        | IP Address     | VLAN ID | Description                     |
|-----------------|----------------|---------|---------------------------------|
| raspberrypi     | 10.50.0.3      | 50      | Raspberry Pi for various tasks  |

## Host name structure
| Hostname        | Description                          |
|-----------------|--------------------------------------|
| *.homelab.local | Main domain for all homelab services |
| *.marlon.ovh    | Public domain for external access    |
