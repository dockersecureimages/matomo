# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~405MB)

Security scanning using Clair
```
clair-scanner secureimages/matomo:4.1.1-alpine-3.13.2
2021/02/20 11:37:43 [INFO] ▶ Start clair-scanner
2021/02/20 11:37:48 [INFO] ▶ Server listening on port 9279
2021/02/20 11:37:48 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 11:37:48 [INFO] ▶ Analyzing 326a8eef51a72fb8d74afda723a4c2b1efe72d6ad00533b61382b086951f0a31
2021/02/20 11:37:48 [INFO] ▶ Analyzing bf7ed71036dc9157df7b42561b5a2edb2392aac744d3b88e02cd0592ecc3f841
2021/02/20 11:37:48 [INFO] ▶ Analyzing f46228b5e17e222d5b17f50347f3df87f139cda07a09ec30a34617ec25473aa5
2021/02/20 11:37:48 [INFO] ▶ Analyzing 1d3be7e7f97e6dbf26f29aa04e748d077b17e0db3fa993c25425ac1eebf318d0
2021/02/20 11:37:48 [INFO] ▶ Analyzing 02fae628c546f41a519262b594221b91a7dac5f6cbda9dc471640754a092720d
2021/02/20 11:37:48 [INFO] ▶ Analyzing 035ed27b0301a1a4ef7541335c354f5f2ac67a3e60277fb7b33ef30e05da418d
2021/02/20 11:37:48 [WARN] ▶ Image [secureimages/matomo:4.1.1-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 11:37:48 [ERRO] ▶ Image [secureimages/matomo:4.1.1-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/matomo:4.1.1-alpine-3.13.2
2021-02-20T11:37:50.088Z        INFO    Need to update DB
2021-02-20T11:37:50.089Z        INFO    Downloading DB...
2021-02-20T11:37:58.777Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T11:37:58.795Z        INFO    Detecting  vulnerabilities...

secureimages/matomo:4.1.1-alpine-3.13.2 (alpine 3.13.2)
=======================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

var/www/html/package-lock.json
==============================
Total: 9 (UNKNOWN: 0, LOW: 0, MEDIUM: 8, HIGH: 1, CRITICAL: 0)
```

## Official Docker image (~472MB)

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:4.1.1
```

Security scanning using Clair
```
clair-scanner matomo:4.1.1
2021/02/20 11:38:04 [INFO] ▶ Start clair-scanner
2021/02/20 11:38:11 [INFO] ▶ Server listening on port 9279
2021/02/20 11:38:11 [INFO] ▶ Analyzing 6af71e5c332cf855c5b24056f794cc905defa9f82e39e3636f459e918bed2e6e
2021/02/20 11:38:12 [INFO] ▶ Analyzing abe98a89fb5f872158e60c0c7f015a2bae2d6305413a37a6121a857392c54725
2021/02/20 11:38:12 [INFO] ▶ Analyzing 4faea366e01071ca46dc8004d6d970b17c365461059070c090d17b2fa9bcca09
2021/02/20 11:38:12 [INFO] ▶ Analyzing 2815f275ec12f831fdf19f247385993afcd8a8cdcd12fc9b91fdd86b00abe4a0
2021/02/20 11:38:12 [INFO] ▶ Analyzing d8831d2479ff413da80b464c7d3998979aa590aa64c622d509e498dbaa5a5d4f
2021/02/20 11:38:12 [INFO] ▶ Analyzing a18b74b0e7ad0f7e4b98a9e6dd722b62ddf3ab17bfd0e7ff26bfa49e9e510e2a
2021/02/20 11:38:12 [INFO] ▶ Analyzing 8f6dab939abc2f715d67a1c485899306dcef7aa437c61975fc16bef142e99f9d
2021/02/20 11:38:12 [INFO] ▶ Analyzing a50a530650ea6827a01f86a30fdc93a899aed48b53f662e6bbc24e0062de6a02
2021/02/20 11:38:12 [INFO] ▶ Analyzing c17fe582794aa0ea5c51019e5d3496c9130abdb76ad338c5ad04f855498a4055
2021/02/20 11:38:12 [INFO] ▶ Analyzing 5dde5eddf02aed0756e2f21ea070050411e804d80bb894bbc03aeca6762aca00
2021/02/20 11:38:12 [INFO] ▶ Analyzing 3ad59e648ac13458f8738c546b370ec80e47dfc60241a7775e8cddc05d3bf3c9
2021/02/20 11:38:12 [INFO] ▶ Analyzing 2d713a886601a9621c2cb4b03853f1df55b0f814a642373bb6dfd82a1b244bf7
2021/02/20 11:38:12 [INFO] ▶ Analyzing a85eabc2654489ed1f9380ca3392cdbf2f267ec4ff44d7801d8662cd8511abb8
2021/02/20 11:38:12 [INFO] ▶ Analyzing dbf5850d4865b3a22619d2173f34192dcbb28057bd3a843aac32d9a3a12dc599
2021/02/20 11:38:12 [INFO] ▶ Analyzing 693cbeec2baa859182b8edb8e3270d401a063f97db22a4f7fea4ce0c2e347d74
2021/02/20 11:38:12 [INFO] ▶ Analyzing 3e28e7b460348db742d155170719eb1f58d5c2c57562bda60f99d8d0c0208ab2
2021/02/20 11:38:12 [INFO] ▶ Analyzing 92eab8369c7d1fd748d70f5253608b33cbb6232cad8277534325ae92178f5dbf
2021/02/20 11:38:12 [INFO] ▶ Analyzing 7859fdcd6161cf832aedf80c60a662a9a5d786de4c362626f9557a619e2daa89
2021/02/20 11:38:12 [WARN] ▶ Image [matomo:4.1.1] contains 238 total vulnerabilities
2021/02/20 11:38:12 [ERRO] ▶ Image [matomo:4.1.1] contains 238 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress matomo:4.1.1
2021-02-20T11:38:14.500Z        INFO    Need to update DB
2021-02-20T11:38:14.500Z        INFO    Downloading DB...
2021-02-20T11:38:24.753Z        INFO    Detecting Debian vulnerabilities...
2021-02-20T11:38:24.794Z        INFO    Detecting  vulnerabilities...

matomo:4.1.1 (debian 10.8)
==========================
Total: 558 (UNKNOWN: 6, LOW: 433, MEDIUM: 37, HIGH: 81, CRITICAL: 1)

usr/src/matomo/package-lock.json
================================
Total: 9 (UNKNOWN: 0, LOW: 0, MEDIUM: 8, HIGH: 1, CRITICAL: 0)
```
