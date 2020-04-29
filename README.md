# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~401MB)

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.5-alpine-3.11.6
2020/04/29 09:28:09 [INFO] ▶ Start clair-scanner
2020/04/29 09:28:15 [INFO] ▶ Server listening on port 9279
2020/04/29 09:28:15 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/29 09:28:16 [INFO] ▶ Analyzing ff03d61b92ed831ea8db4a50640ad4560dae4b13b8abe15ff398e66602a085a3
2020/04/29 09:28:16 [INFO] ▶ Analyzing e3ee6418976ff037e11dc39374482d48de93f3fca2f67e86e6cda5f0b9de6e17
2020/04/29 09:28:16 [INFO] ▶ Analyzing 17c9e44df64ad43aac8f0a3ac2dfa28c142e22df711bf3e3a6fc7d6adbbc33f8
2020/04/29 09:28:16 [INFO] ▶ Analyzing f79321da011dde44b86284fc55ebacd8c837bdb13c3707ff8133e88456c05905
2020/04/29 09:28:16 [INFO] ▶ Analyzing 96480db8b15ae94e8e5a937729dbeb388e4abc2fe107c6998f68f0e52ac793b1
2020/04/29 09:28:16 [INFO] ▶ Analyzing 693e6bf546f88be770d87ce61140fbaf577686b5e8312e1e31d7a2be9658abcf
2020/04/29 09:28:17 [INFO] ▶ Image [secureimages/matomo:3.13.5-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/matomo:3.13.5-alpine-3.11.6
2020-04-29T06:28:25.604Z        INFO    Need to update DB
2020-04-29T06:28:25.604Z        INFO    Downloading DB...
2020-04-29T06:28:35.438Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.5-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~473MB)

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.5
```

Security scanning using Clair
```
clair-scanner matomo:3.13.5
2020/04/29 09:28:55 [INFO] ▶ Start clair-scanner
2020/04/29 09:29:03 [INFO] ▶ Server listening on port 9279
2020/04/29 09:29:03 [INFO] ▶ Analyzing e630b0673871a1499d89b33896dda2a5c99818d3a1d9866cc6ffbe1b2d57d61c
2020/04/29 09:29:03 [INFO] ▶ Analyzing f20558414b228cf0089ea0b53c6d10989cd102293d99e1234777f5eb6e89c2e5
2020/04/29 09:29:03 [INFO] ▶ Analyzing cd5841a8ec6efee06d172699a8b9c7b6f5049fc670540d909808032204e9b427
2020/04/29 09:29:03 [INFO] ▶ Analyzing d576a9ce0bb74b5cef7951ca33a2b3940bb24aac24a11faa3877bfaca5b90802
2020/04/29 09:29:03 [INFO] ▶ Analyzing 880218926da77cfbcc112ac4c2748697ad0755d7defd2d8c5e3b90f7498d1bc6
2020/04/29 09:29:03 [INFO] ▶ Analyzing 7f8cf856ab3778da2f73cd0b8b7fda1e4c79866e8b42a253fe3e94be6bd4858c
2020/04/29 09:29:03 [INFO] ▶ Analyzing dd6585140af72e6b8c97dc6c6faeac0f716110e6d90dac0c6f9c442fe86f035e
2020/04/29 09:29:03 [INFO] ▶ Analyzing 72792beaf8d054e7810312af6f582beeb3559e290de3b2174861e67eaa86e85f
2020/04/29 09:29:03 [INFO] ▶ Analyzing 3f217e14f6c6583fcb0fd492fcceda4f240a9bb4101256ca2a0cdc402fe486c9
2020/04/29 09:29:03 [INFO] ▶ Analyzing c539c46ebbad6b4d20ac8ad2527d221ddd621b8e6706420f502ba31cfce48123
2020/04/29 09:29:03 [INFO] ▶ Analyzing cc621d43d7cee9b5cc7e0e8a46f2faa25333079159fb0d8fa46889b90e9a41d9
2020/04/29 09:29:03 [INFO] ▶ Analyzing 19cac39237f91469f09464c1b4101affb96500b2d31a6f7253fcc567dcef643e
2020/04/29 09:29:03 [INFO] ▶ Analyzing 3231e687d7a3a6de76b4ae5e5951e5e5c629a7e88dfc3145d3377d55a833a4e2
2020/04/29 09:29:03 [INFO] ▶ Analyzing 2aa686880609c0028a7f45ae4e9d3c2eaa864318aca05385799f14afbaff2be6
2020/04/29 09:29:03 [INFO] ▶ Analyzing b62157aef1d4c021f747df37121078695206d3170a4be1a379a4cb6fc4c9917e
2020/04/29 09:29:03 [INFO] ▶ Analyzing 56f2c84e46a22e69ea1886809c6cf4d5043aa32ef8c8a34373c9d0050e654d50
2020/04/29 09:29:03 [INFO] ▶ Analyzing 8f739722f21c3188f48a50c43755bf518a03c61be3d7965ac3e739bff12c9821
2020/04/29 09:29:03 [INFO] ▶ Analyzing 901875c972ca982ae1652985deb9af8caf0d0fe0aa4a8778fde782dee8493d0a
2020/04/29 09:29:03 [WARN] ▶ Image [matomo:3.13.5] contains 246 total vulnerabilities
2020/04/29 09:29:03 [ERRO] ▶ Image [matomo:3.13.5] contains 246 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress matomo:3.13.5
2020-04-29T06:29:05.861Z        INFO    Need to update DB
2020-04-29T06:29:05.861Z        INFO    Downloading DB...
2020-04-29T06:29:18.473Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.5 (debian 10.3)
===========================
Total: 519 (UNKNOWN: 1, LOW: 69, MEDIUM: 394, HIGH: 51, CRITICAL: 4)
```
