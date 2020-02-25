# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.3-alpine-3.11.3
2020/02/25 11:10:57 [INFO] ▶ Start clair-scanner
2020/02/25 11:11:02 [INFO] ▶ Server listening on port 9279
2020/02/25 11:11:02 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/25 11:11:03 [INFO] ▶ Analyzing 063737f814467d63e9fabb29b2bedf0fc72b67aeadac35e531c41179e95e0876
2020/02/25 11:11:03 [INFO] ▶ Analyzing 35d46ecb5f536aab507d8062e676c3d8880ef528ad104d693ebf4d5120fb6d7a
2020/02/25 11:11:03 [INFO] ▶ Analyzing 487748ead91341a67cb93f37a105ad6c615dc2db09783be5450b79882317ef66
2020/02/25 11:11:03 [INFO] ▶ Analyzing e1976b66727621a9203a0c47d9ee9fdb9de350375591645ba790e0543d5ebb19
2020/02/25 11:11:03 [INFO] ▶ Analyzing 5a780ae8e0b460f2874b9fe64a2feecec56859c469e03bc9d4fe41ad0917afaf
2020/02/25 11:11:03 [INFO] ▶ Analyzing 53fe8d6ec0db60dad44f40fe683072d007fa90a43e72922c12da9642f3923b58
2020/02/25 11:11:03 [INFO] ▶ Image [secureimages/matomo:3.13.3-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/matomo:3.13.3-alpine-3.11.3
2020-02-25T09:11:07.665Z        INFO    Need to update DB
2020-02-25T09:11:07.665Z        INFO    Downloading DB...
2020-02-25T09:11:11.492Z        INFO    Reopening DB...
2020-02-25T09:11:18.620Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.3-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.3
```

Security scanning using Clair
```
clair-scanner matomo:3.13.3
2020/02/25 11:11:24 [INFO] ▶ Start clair-scanner
2020/02/25 11:11:33 [INFO] ▶ Server listening on port 9279
2020/02/25 11:11:33 [INFO] ▶ Analyzing 989d65069bef6e5e904082d12fe5b1e179e9c76a3f54745567bd588f49b0e393
2020/02/25 11:11:33 [INFO] ▶ Analyzing ec267a14247ada8ef12a80c2b725bb851c16eff48bf41df3ad67ed9af1e7ff0e
2020/02/25 11:11:33 [INFO] ▶ Analyzing 5b38feeb64bbe56a5ed8105eb7a530b25a383d6b7482a7631d946a2767de2475
2020/02/25 11:11:33 [INFO] ▶ Analyzing ee310ee0ae227c33f44567bc6906db9f50bf418a8f129aa987e563c9fe9ad22b
2020/02/25 11:11:33 [INFO] ▶ Analyzing 319e1ff6e310dc3e10f81f4a585fe14b2b824cba557e7da4ea276aa969d1130f
2020/02/25 11:11:33 [INFO] ▶ Analyzing 9c6aae902d21a7a2beb8713054190dff70f4464d8d03a2c101348425e1e2a8fa
2020/02/25 11:11:33 [INFO] ▶ Analyzing e72a464567dc3ed8b175c0101459d3da8a8387a995d3c2055e0a6bda4959fa6c
2020/02/25 11:11:33 [INFO] ▶ Analyzing 67d7310ba27cb1da9eee337cc4e13ddd138ab78e91b8088f4d8cecacf4e32fb1
2020/02/25 11:11:33 [INFO] ▶ Analyzing 203dc71aa2e286410979e767f4af54051f01c5177b667a1ac72e5c78d08fbcef
2020/02/25 11:11:33 [INFO] ▶ Analyzing f27088ff9a7ae1b92d0e7274e60101a2cf43ad2223bb656b39bc37345db30384
2020/02/25 11:11:33 [INFO] ▶ Analyzing a324f37e8ca1538f3634f17fa9325a7a79f13a186f34d80cb91ac67878f4905c
2020/02/25 11:11:33 [INFO] ▶ Analyzing 0c967aded1cb259218542e432f7be8fe8d5c5bf710d932b82ec80c09ebb9f560
2020/02/25 11:11:33 [INFO] ▶ Analyzing 8bbdab1d19ba06e5334897299da6b6b7d05d7b0eb6f916f229484ffe855aa86a
2020/02/25 11:11:33 [INFO] ▶ Analyzing 7b1d5e757871070db7b2ee1871d989cc8ec9a46728f4229a3d77084b5eaaa851
2020/02/25 11:11:33 [INFO] ▶ Analyzing 7ea10394b4a024b140cb1ac3c79bde629309d408a1290207f3e8286ed8392c80
2020/02/25 11:11:33 [INFO] ▶ Analyzing 63cc9966e5b66449885236931b566d756ecc2fd46a2ff4d4859f02f2e0a0665e
2020/02/25 11:11:34 [INFO] ▶ Analyzing bc2baa480a24dfc829f3876a9989cfe4f67b4553d30177dc126082e7654cf331
2020/02/25 11:11:34 [INFO] ▶ Analyzing 72493c295e98445b33430dd72595ce024e31f7a7146b4ab296adbe04ee1b5b38
2020/02/25 11:11:34 [WARN] ▶ Image [matomo:3.13.3] contains 315 total vulnerabilities
2020/02/25 11:11:34 [ERRO] ▶ Image [matomo:3.13.3] contains 315 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress matomo:3.13.3
2020-02-25T09:11:36.723Z        INFO    Need to update DB
2020-02-25T09:11:36.723Z        INFO    Downloading DB...
2020-02-25T09:11:40.292Z        INFO    Reopening DB...
2020-02-25T09:11:49.737Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.3 (debian 10.2)
===========================
Total: 576 (UNKNOWN: 1, LOW: 80, MEDIUM: 392, HIGH: 93, CRITICAL: 10)
```
