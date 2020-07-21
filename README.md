# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~402MB)

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.14.0-alpine-3.12.0
2020/07/21 13:49:05 [INFO] ▶ Start clair-scanner
2020/07/21 13:49:10 [INFO] ▶ Server listening on port 9279
2020/07/21 13:49:10 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/21 13:49:11 [INFO] ▶ Analyzing 6bf1d1800d45329d90cb06d8624e373597969a6fb82849fdfcdb60c12c984b06
2020/07/21 13:49:11 [INFO] ▶ Analyzing 3e3c8226f4340beaa13f30a8be4d4250f0208594b4448da8d2301de30a9615b9
2020/07/21 13:49:11 [INFO] ▶ Analyzing 4af89cd6978cd25d53121eb4db9e326ac2729ddf1750fdaea9549e55a1ed8c08
2020/07/21 13:49:11 [INFO] ▶ Analyzing 4350fdf593f309cd057a2c305c50f7d0e05ac9c6f139fb61c045a565cf43342c
2020/07/21 13:49:11 [INFO] ▶ Analyzing bd94cb4ebafb9dc57fdd50d500807b53ccd94d0a0573b6f94827b1483ceb28f0
2020/07/21 13:49:11 [INFO] ▶ Analyzing 316635ca8752d642eb3d8fc6e27db083a1606fe493f37dc2e6aa2e8579a0a371
2020/07/21 13:49:12 [INFO] ▶ Image [secureimages/matomo:3.14.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress secureimages/matomo:3.14.0-alpine-3.12.0
2020-07-21T10:50:11.227Z        INFO    Need to update DB
2020-07-21T10:50:11.227Z        INFO    Downloading DB...
2020-07-21T10:50:23.089Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.14.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~474MB)

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.14.0
```

Security scanning using Clair
```
clair-scanner matomo:3.14.0
2020/07/21 13:50:39 [INFO] ▶ Start clair-scanner
2020/07/21 13:50:48 [INFO] ▶ Server listening on port 9279
2020/07/21 13:50:48 [INFO] ▶ Analyzing 542fc11795096931bf8707e1fd00e4aaa0ba8d98bd89fc281fc9fbec21c52ed8
2020/07/21 13:50:48 [INFO] ▶ Analyzing 41359e877d830e2cbbece63ad01d1063322479cc13d593b39819e62cbadc12eb
2020/07/21 13:50:48 [INFO] ▶ Analyzing 2251b1df86d1b4de1724e98de76e24e52f30c3336f36e5692ebbe119ad049168
2020/07/21 13:50:49 [INFO] ▶ Analyzing bf1075187224c74879bae0c9c291fc76867d80912f43d4ca97b1e90060e46551
2020/07/21 13:50:49 [INFO] ▶ Analyzing 4965de01bcecba1813edf9e296bda56bbb1847ac7b18ad93d9010a5e98d2b39e
2020/07/21 13:50:49 [INFO] ▶ Analyzing e6413fc8bdcf26f07de8f0d98cb45c5f3c68935762b7a7212d0dfec49d271a6b
2020/07/21 13:50:49 [INFO] ▶ Analyzing 35e9e504b0c75782da5ad9351c7bdb3a592e3e3d8cb94d7e7e19939544a322dc
2020/07/21 13:50:49 [INFO] ▶ Analyzing e9455eb0e6b98365fa510d069fd11ef23b1a9ded2ecf950759b02237ee357381
2020/07/21 13:50:49 [INFO] ▶ Analyzing bf14c95b2d68cf89570a37de2dcf01e11baa46d5d542d207c1a63b736c9e24e6
2020/07/21 13:50:49 [INFO] ▶ Analyzing bc87d8e44892e005f7670681076074dd9086f317a6c7a007ce726c6ce904f0f6
2020/07/21 13:50:49 [INFO] ▶ Analyzing abfa35e9129c24945a2e1b5e2b6cd310a0dc5e4d4ba05fe7dfd98ab96c0b928b
2020/07/21 13:50:49 [INFO] ▶ Analyzing 63b1a638095cf1ea7a1f824b024eafa310139e0700e38c02d4a27b8e5167176f
2020/07/21 13:50:49 [INFO] ▶ Analyzing ab2695765517cc9a48bf2b94ffb1b80cfc7d3928d0007eef51e473da92b41601
2020/07/21 13:50:49 [INFO] ▶ Analyzing 756ee328c1fd937f82bc8b85697197ce85642762db13e078ed05a44937670d48
2020/07/21 13:50:49 [INFO] ▶ Analyzing 2367dac608519dbec2c83f400fd8e41134a592e13906f1d483539229acea5f1a
2020/07/21 13:50:49 [INFO] ▶ Analyzing 5707dbd2c35d45bbfd812a24317cb62bf3d77dfe660c46b2f60380563f4695c8
2020/07/21 13:50:49 [INFO] ▶ Analyzing 6babb5dc2895b9e5464f61bfd67d8afbf13c76d1c36e0d8e2cafe9abae7e4019
2020/07/21 13:50:49 [INFO] ▶ Analyzing 387549ef65901f6df4b0a27de3255f45ed17213636eaa51991e49d971f14481f
2020/07/21 13:50:49 [WARN] ▶ Image [matomo:3.14.0] contains 269 total vulnerabilities
2020/07/21 13:50:49 [ERRO] ▶ Image [matomo:3.14.0] contains 269 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress matomo:3.14.0
2020-07-21T10:50:52.674Z        INFO    Need to update DB
2020-07-21T10:50:52.674Z        INFO    Downloading DB...
2020-07-21T10:51:08.066Z        INFO    Detecting Debian vulnerabilities...

matomo:3.14.0 (debian 10.4)
===========================
Total: 553 (UNKNOWN: 0, LOW: 425, MEDIUM: 114, HIGH: 14, CRITICAL: 0)
```
