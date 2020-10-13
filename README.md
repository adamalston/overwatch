<div align="center" id="overwatch">
    <img src="./assets/overwatch.svg" alt="Retina" height="128px">
</div>

# <div align="center">Overwatch &middot; ![Build Status](https://img.shields.io/circleci/build/gh/adamalston/v2?label=build) [![License Badge](https://img.shields.io/github/license/adamalston/Overwatch?color=white)](LICENSE) ![AWS Project](https://img.shields.io/badge/-Project-informational?style=flat&logo=amazon-aws&logoColor=FF9900&color=white&labelColor=5c5c5c)</div>

-   [Introduction](#introduction)
-   [System Architecture](#system-architecture)
-   [Setup](#setup)
    -   [Installation & Deployment](#installation)
    -   [Browser Access](#browser-access)
    -   [Commands](#commands)
-   [Demo](#demo)
-   [Future](#future)
-   [Resources](#resources)

## Introduction

More than 1 million developers use AWS to bring products and services to people around the world. Code is not perfect and neither are the people writing it. Those overseeing operations need to be able to assess their deployments at all times. To help with this task, I have created Overwatch.

I have used [AWS](https://aws.amazon.com/), [Docker](https://www.docker.com/), [Prometheus](https://prometheus.io/), and [Grafana](https://grafana.com/) to develop a monitoring solution that provides oversight for CI/CD pipelines running in the cloud so that auditors and operation’s personnel can quickly assess the health of mission-critical infrastructure.

The tight integration of Overwatch’s components allows personnel overseeing operations to assess failures quickly.

## System Architecture

<p align="center">
    <img src="./assets/overwatch.png" alt="System Architecture" width="500px">
</p>

## Setup

**Cloudwatch-Exporter**

Put your AWS credentials into `cloudwatch-exporter.dockerfile`.

```
ENV AWS_ACCESS_KEY_ID=value \
    AWS_SECRET_ACCESS_KEY=value
```

<details id="installation">
    <summary><b>Installation & Deployment</b></summary>

1. Install Docker ([Mac](https://docs.docker.com/docker-for-mac/install/), [Windows](https://docs.docker.com/docker-for-windows/install/), [Linux](https://docs.docker.com/engine/install/))
2. Clone this repository
3. In the project directory run `docker-compose up`
4. Navigate to [localhost:3000](http://localhost:3000) in a browser (If prompted to login, username: `admin`, password: `admin`)
5. On the left sidebar, select Configuration > Data Sources
6. Select Prometheus, set the HTTP URL to the IPv4 address of your EC2 instance with port number 9090; `ec2-[IP-address-goes-here].compute-1.amazonaws.com:9090`
7. On the left sidebar, select Dashboards > Manage
8. Select New Dashboard

</details>

### Browser Access

Prometheus: [http://localhost:9090](http://localhost:9090)

Alertmanager: [http://localhost:9093](http://localhost:9093)

Grafana: [http://localhost:3000](http://localhost:3000)

### Commands

Prometheus Reload: `curl -X POST http://localhost:9090/-/reload`

Prometheus Health Check: `curl http://localhost:9090/-/healthy`

Cloudwatch Exporter Reload: `curl -X POST http://localhost:9106/-/reload`

## Demo

<img float="left" height="270px" src="./assets/docker.png" alt="Docker"><img align="right" height="270px" src="./assets/grafana.png" alt="Website Preview">

## Future

-   [x] Dockerize the project

    -   Advantages
        -   Keeping the processes in separate images (and thus running them in separate containers) permits each to be maintained independently. Further, each process can be secured independently.
        -   Keeping the processes in their own containers permits the running of one Prometheus container and one Grafana container for multiple containers.
        -   Along the same line, there is more flexibility in relocating containers, potentially dropping Grafana to use a Grafana hosted service, etc.

-   [x] Alertmanager support

    -   Setup the Alertmanager config in [alertmanager.yml](alertmanager/alertmanager.yml) to meet your needs. Options include email alerts, SMS messages, and more.

-   [] Automate from frontend to backend

    -   Currently, both pieces work on their own with manual entry to AWS

-   [] Create a more robust dashboard

</details>

## Resources

Diagram made with [draw.io](https://draw.io/)

Diagram icons from [simpleicons.org](https://simpleicons.org/) (edited by me)

Project icon from [flaticon.com](https://www.flaticon.com/free-icon/retina_1632950?term=retina&page=1&position=4) (edited by me)

---

Thank you for your interest, this project was fun and insightful! If you have any questions, please reach out via email which can be found at <img src="https://git.io/JTLAg" height="14px">[AdamAlston.com](https://www.adamalston.com/)

[To the top](#overwatch)
