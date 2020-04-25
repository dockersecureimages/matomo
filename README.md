# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~401MB)

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.4-alpine-3.11.6
2020/04/25 14:17:31 [INFO] ▶ Start clair-scanner
2020/04/25 14:17:36 [INFO] ▶ Server listening on port 9279
2020/04/25 14:17:36 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 14:17:36 [INFO] ▶ Analyzing 73eb89f2fc551d2566b1e6073956e7157291a7f2b2c2030b3168f53ca01226b0
2020/04/25 14:17:36 [INFO] ▶ Analyzing ee25053869955103b0a969b00554511342d4266d42ebb9b7b060be180b57c620
2020/04/25 14:17:37 [INFO] ▶ Analyzing 378d1a371db35ba61ecff600735df8d20fdbd44821e5de93bf86718d7e03bd6a
2020/04/25 14:17:37 [INFO] ▶ Analyzing ef92773c920233c9f529b153cf81e443b54ea354683c0868f8b192d9773eb688
2020/04/25 14:17:37 [INFO] ▶ Analyzing f30d1c3b7384a7839b4b538b764c46ad3b878cf2472bdc656173b7cfd08540d6
2020/04/25 14:17:37 [INFO] ▶ Analyzing 59051780c9479a41ca8992aebc55a9db8c37c018c95544a6bd1ca1237c8bc5c3
2020/04/25 14:17:37 [INFO] ▶ Image [secureimages/matomo:3.13.4-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/matomo:3.13.4-alpine-3.11.6
2020-04-25T11:17:41.269Z        INFO    Need to update DB
2020-04-25T11:17:41.269Z        INFO    Downloading DB...
2020-04-25T11:17:52.093Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.4-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~473MB)

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.4
```

Security scanning using Clair
```
clair-scanner matomo:3.13.4
2020/04/25 14:18:10 [INFO] ▶ Start clair-scanner
2020/04/25 14:18:18 [INFO] ▶ Server listening on port 9279
2020/04/25 14:18:18 [INFO] ▶ Analyzing e630b0673871a1499d89b33896dda2a5c99818d3a1d9866cc6ffbe1b2d57d61c
2020/04/25 14:18:19 [INFO] ▶ Analyzing f20558414b228cf0089ea0b53c6d10989cd102293d99e1234777f5eb6e89c2e5
2020/04/25 14:18:19 [INFO] ▶ Analyzing cd5841a8ec6efee06d172699a8b9c7b6f5049fc670540d909808032204e9b427
2020/04/25 14:18:19 [INFO] ▶ Analyzing d576a9ce0bb74b5cef7951ca33a2b3940bb24aac24a11faa3877bfaca5b90802
2020/04/25 14:18:19 [INFO] ▶ Analyzing 880218926da77cfbcc112ac4c2748697ad0755d7defd2d8c5e3b90f7498d1bc6
2020/04/25 14:18:19 [INFO] ▶ Analyzing 7f8cf856ab3778da2f73cd0b8b7fda1e4c79866e8b42a253fe3e94be6bd4858c
2020/04/25 14:18:19 [INFO] ▶ Analyzing dd6585140af72e6b8c97dc6c6faeac0f716110e6d90dac0c6f9c442fe86f035e
2020/04/25 14:18:19 [INFO] ▶ Analyzing 72792beaf8d054e7810312af6f582beeb3559e290de3b2174861e67eaa86e85f
2020/04/25 14:18:19 [INFO] ▶ Analyzing 3f217e14f6c6583fcb0fd492fcceda4f240a9bb4101256ca2a0cdc402fe486c9
2020/04/25 14:18:19 [INFO] ▶ Analyzing c539c46ebbad6b4d20ac8ad2527d221ddd621b8e6706420f502ba31cfce48123
2020/04/25 14:18:19 [INFO] ▶ Analyzing cc621d43d7cee9b5cc7e0e8a46f2faa25333079159fb0d8fa46889b90e9a41d9
2020/04/25 14:18:19 [INFO] ▶ Analyzing 19cac39237f91469f09464c1b4101affb96500b2d31a6f7253fcc567dcef643e
2020/04/25 14:18:19 [INFO] ▶ Analyzing 3231e687d7a3a6de76b4ae5e5951e5e5c629a7e88dfc3145d3377d55a833a4e2
2020/04/25 14:18:19 [INFO] ▶ Analyzing 2aa686880609c0028a7f45ae4e9d3c2eaa864318aca05385799f14afbaff2be6
2020/04/25 14:18:19 [INFO] ▶ Analyzing b62157aef1d4c021f747df37121078695206d3170a4be1a379a4cb6fc4c9917e
2020/04/25 14:18:19 [INFO] ▶ Analyzing 2dc5ceb651ca8ed64b5a7509c08aa0633a3973c12b2feee61ba7c881ca55763d
2020/04/25 14:18:19 [INFO] ▶ Analyzing a220e03de2aa4dc2153b432701e5d627f5cf38237343d60b6ed673e236682e96
2020/04/25 14:18:19 [INFO] ▶ Analyzing 77573c2363963a1e2965d7470738e333cd618f731bfdb86bfe943cf4e9cd182d
2020/04/25 14:18:19 [WARN] ▶ Image [matomo:3.13.4] contains 246 total vulnerabilities
2020/04/25 14:18:19 [ERRO] ▶ Image [matomo:3.13.4] contains 246 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress matomo:3.13.4
2020-04-25T11:18:22.134Z        INFO    Need to update DB
2020-04-25T11:18:22.135Z        INFO    Downloading DB...
2020-04-25T11:18:35.209Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.4 (debian 10.3)
===========================
Total: 519 (UNKNOWN: 1, LOW: 69, MEDIUM: 394, HIGH: 51, CRITICAL: 4)
```
