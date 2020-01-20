# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.1-alpine-3.11.3
2020/01/20 23:02:36 [INFO] ▶ Start clair-scanner
2020/01/20 23:02:41 [INFO] ▶ Server listening on port 9279
2020/01/20 23:02:41 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 23:02:41 [INFO] ▶ Analyzing 0357e4b9e036c7886c9c09611b7ecadbdec29268447a9a0484d7cf554d2444b3
2020/01/20 23:02:42 [INFO] ▶ Analyzing 73b41729bc8b90e732519b79a1ac9e1b1efab1ff43a6b46cf176122719c636be
2020/01/20 23:02:42 [INFO] ▶ Analyzing edd313396d1e432770faf5e69a052770bfd72fe1dfd4b544bcda8df5e5f840b0
2020/01/20 23:02:42 [INFO] ▶ Analyzing d280599469ed1cce87bc06c883e5f26fba0fb479d2eb53046d10b1312483117f
2020/01/20 23:02:42 [INFO] ▶ Analyzing 2c1a56c4f30fe67d7d8cd82538609e89cec08b95db6b8e04f7e086262fd4ecbc
2020/01/20 23:02:42 [INFO] ▶ Analyzing d12b5875485c95970d09c88f28fa13b2d57f6fe498ddc2f07bccc5c7bb8545a6
2020/01/20 23:02:42 [INFO] ▶ Image [secureimages/matomo:3.13.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/matomo:3.13.1-alpine-3.11.3
2020-01-20T21:02:57.692Z        INFO    Need to update DB
2020-01-20T21:02:57.692Z        INFO    Downloading DB...
2020-01-20T21:03:01.145Z        INFO    Reopening DB...
2020-01-20T21:03:07.555Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.1-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.1
```

Security scanning using Clair
```
clair-scanner matomo:3.13.1
2020/01/20 23:03:13 [INFO] ▶ Start clair-scanner
2020/01/20 23:03:20 [INFO] ▶ Server listening on port 9279
2020/01/20 23:03:20 [INFO] ▶ Analyzing df94ec04378ec7035da598314fa23c267e23f1bd121179b7236533b7846ff6ef
2020/01/20 23:03:21 [INFO] ▶ Analyzing 22561cd0fa8247433b887c5e4cccb0815ec14c8ed5f747f55b47aa07bebf4156
2020/01/20 23:03:21 [INFO] ▶ Analyzing 01e550c9bf901ab620f1e6ce59056e110f52663cef92748df29c9cae83e30b16
2020/01/20 23:03:21 [INFO] ▶ Analyzing 974833229097118ed649001b7487ab2e5dd2194f9ba7465438189f6ce7a66481
2020/01/20 23:03:21 [INFO] ▶ Analyzing fa1e9e911e6f94bb3552916d915fb7e28018013909b720ffb97f8fe33b583c42
2020/01/20 23:03:21 [INFO] ▶ Analyzing 125cb59f692b8ab669d075a625216fc7943780952bf29139916f8a5555a04c43
2020/01/20 23:03:21 [INFO] ▶ Analyzing dae68af93b71eae3541533e5861db79a1ab4f60e0a353463b4c5ef56fa35ad92
2020/01/20 23:03:21 [INFO] ▶ Analyzing 5d7ca686e4c3dbf81342e21567be5a87f0f17a7dd55d5c011a5f89c18efc3033
2020/01/20 23:03:21 [INFO] ▶ Analyzing 21d7b524780de191ff6ac754e3dc5d92ee98daf7da96f8a752cc09350d1e07d2
2020/01/20 23:03:21 [INFO] ▶ Analyzing 5d35238723e74ad58b1b1426cf097e6b98310075d9ba1c224a4e810a76264d5c
2020/01/20 23:03:21 [INFO] ▶ Analyzing 163be2745190e6d2d983079ff36de007a75ab731e22242227fc65f247b49af53
2020/01/20 23:03:21 [INFO] ▶ Analyzing 1f65bc58ab10d11feb4c5c1f473c053e3fc0aa82120af8ad114c81800d47130e
2020/01/20 23:03:21 [INFO] ▶ Analyzing 1599143fe3320c95bebd30f8fd6732de4813f4085aadd1a1414738543ddea2e0
2020/01/20 23:03:21 [INFO] ▶ Analyzing 1feddf63dfec777494bbabd17f2f4b2ee3b428ae7a9fcea011ffcdc0db517038
2020/01/20 23:03:21 [INFO] ▶ Analyzing ae9440a8d0cb5895b4eb7202b47969e6477c7fdf83b0a81d4566494fc8e37815
2020/01/20 23:03:21 [INFO] ▶ Analyzing 798b24cb3156b9c508a0857db8877c4286adae4cf392d490eaf446d786613031
2020/01/20 23:03:21 [INFO] ▶ Analyzing 0b080a5a0f97a9236fc5563adaea3b725e4b86fc6247b3b6e3162296c64cbe87
2020/01/20 23:03:21 [INFO] ▶ Analyzing 16b5067add5762cf8adce3cfd010fd1a694db15c68be965dfead083dc8d3aae3
2020/01/20 23:03:21 [WARN] ▶ Image [matomo:3.13.1] contains 305 total vulnerabilities
2020/01/20 23:03:21 [ERRO] ▶ Image [matomo:3.13.1] contains 305 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress matomo:3.13.1
2020-01-20T21:03:24.180Z        INFO    Need to update DB
2020-01-20T21:03:24.180Z        INFO    Downloading DB...
2020-01-20T21:03:28.278Z        INFO    Reopening DB...
2020-01-20T21:03:35.900Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.1 (debian 10.2)
===========================
Total: 565 (UNKNOWN: 2, LOW: 76, MEDIUM: 379, HIGH: 97, CRITICAL: 11)
```
