# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.2-alpine-3.11.3
2020/02/11 11:00:55 [INFO] ▶ Start clair-scanner
2020/02/11 11:01:00 [INFO] ▶ Server listening on port 9279
2020/02/11 11:01:00 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 11:01:00 [INFO] ▶ Analyzing 4bd38e9befa44e50d7eafa9b04e10927e07c6a340cb88918129bbffc29208985
2020/02/11 11:01:01 [INFO] ▶ Analyzing 48d2634da1012682ba62f568cffd0c1923cc0defdca30255bba807af0ba8b0af
2020/02/11 11:01:01 [INFO] ▶ Analyzing 6fa1e49b5efc38c0d37e29cdf09b408693948b07ac29db6b3a4f914b36d03ada
2020/02/11 11:01:01 [INFO] ▶ Analyzing 79150d29fb890b730afa2cd4b34c00430f526b0f9ab91552596c535f1fca62d2
2020/02/11 11:01:01 [INFO] ▶ Analyzing b174dead08977548932443cb067520c2458b539fa6931c9b7cd5980d6144f23b
2020/02/11 11:01:01 [INFO] ▶ Analyzing ac8c67b1cc89e082c21075f8c037c724108b3220b806a380c2dba7ec4a3351a0
2020/02/11 11:01:01 [INFO] ▶ Image [secureimages/matomo:3.13.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/matomo:3.13.2-alpine-3.11.3
2020-02-11T09:01:03.837Z        INFO    Need to update DB
2020-02-11T09:01:03.837Z        INFO    Downloading DB...
2020-02-11T09:01:08.008Z        INFO    Reopening DB...
2020-02-11T09:01:14.992Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.2-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.2
```

Security scanning using Clair
```
clair-scanner matomo:3.13.2
2020/02/11 11:01:21 [INFO] ▶ Start clair-scanner
2020/02/11 11:01:30 [INFO] ▶ Server listening on port 9279
2020/02/11 11:01:30 [INFO] ▶ Analyzing 989d65069bef6e5e904082d12fe5b1e179e9c76a3f54745567bd588f49b0e393
2020/02/11 11:01:30 [INFO] ▶ Analyzing ec267a14247ada8ef12a80c2b725bb851c16eff48bf41df3ad67ed9af1e7ff0e
2020/02/11 11:01:30 [INFO] ▶ Analyzing 5b38feeb64bbe56a5ed8105eb7a530b25a383d6b7482a7631d946a2767de2475
2020/02/11 11:01:30 [INFO] ▶ Analyzing ee310ee0ae227c33f44567bc6906db9f50bf418a8f129aa987e563c9fe9ad22b
2020/02/11 11:01:30 [INFO] ▶ Analyzing 319e1ff6e310dc3e10f81f4a585fe14b2b824cba557e7da4ea276aa969d1130f
2020/02/11 11:01:30 [INFO] ▶ Analyzing 9c6aae902d21a7a2beb8713054190dff70f4464d8d03a2c101348425e1e2a8fa
2020/02/11 11:01:30 [INFO] ▶ Analyzing e72a464567dc3ed8b175c0101459d3da8a8387a995d3c2055e0a6bda4959fa6c
2020/02/11 11:01:30 [INFO] ▶ Analyzing 95e1f5e320f88c31dba97a6e0106411cb3ecd15ca91cd074b4d7dbb51544e470
2020/02/11 11:01:30 [INFO] ▶ Analyzing 463c54bab4128f94a75dca46f1f62aac0878e6254d7d967ddf8b6da3497717f9
2020/02/11 11:01:30 [INFO] ▶ Analyzing afac7a6d572c1034ca82a62124fb9a5c3283beedd3435214a921fa4873ac552c
2020/02/11 11:01:30 [INFO] ▶ Analyzing 022e2c9de5b58bb48c877db5333ffd456f04ab306d9ed9ae3a9cd9ac0537b1c9
2020/02/11 11:01:30 [INFO] ▶ Analyzing da2dafa0b19af890f894ae615b98713a1e383e209d765a2226a89c3ccb026889
2020/02/11 11:01:30 [INFO] ▶ Analyzing b620b8a083bc312cc86d738f7480a4d93cdb9ed546ee005363efdd108499530b
2020/02/11 11:01:30 [INFO] ▶ Analyzing 4a14fa95cc893d33f4818792dc9aa4cc433f331a626b8754603a70e10923ee3b
2020/02/11 11:01:30 [INFO] ▶ Analyzing 4bacdbb104e162cf04852c4f238faffa5d5b7dcd133da392068c765cb6a7b5de
2020/02/11 11:01:30 [INFO] ▶ Analyzing 815ac6f4d413cb4bc6f36a5e42aca98b84673a3cc2c19b6147b2f80d9f15f7aa
2020/02/11 11:01:30 [INFO] ▶ Analyzing 703821395d72ce8661ab922d96119f789fc4217a20f5ecb62462c0001070ef46
2020/02/11 11:01:30 [INFO] ▶ Analyzing 9e2453d6efb95cb959b785b1fa17bc5e0d5dd81ae72c849a6ed156346e52c367
2020/02/11 11:01:30 [WARN] ▶ Image [matomo:3.13.2] contains 313 total vulnerabilities
2020/02/11 11:01:30 [ERRO] ▶ Image [matomo:3.13.2] contains 313 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress matomo:3.13.2
2020-02-11T09:01:33.606Z        INFO    Need to update DB
2020-02-11T09:01:33.606Z        INFO    Downloading DB...
2020-02-11T09:01:37.225Z        INFO    Reopening DB...
2020-02-11T09:01:44.875Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.2 (debian 10.2)
===========================
Total: 574 (UNKNOWN: 0, LOW: 79, MEDIUM: 391, HIGH: 94, CRITICAL: 10)
```
