# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~403MB)

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.6-alpine-3.12.0
2020/06/11 12:26:23 [INFO] ▶ Start clair-scanner
2020/06/11 12:26:28 [INFO] ▶ Server listening on port 9279
2020/06/11 12:26:28 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:26:28 [INFO] ▶ Analyzing 0577960127e493744e71ee2115d6423d9312544a91b2a31a83517f9b46c22205
2020/06/11 12:26:28 [INFO] ▶ Analyzing bb6d3214f6da97915349ff072bf8c8ae00bb95f801d53ccf6917bb50b0729ec2
2020/06/11 12:26:28 [INFO] ▶ Analyzing 96f74dffd4a3cde6932268eb101368133fa7e55c91dc278582d8e29d615090d0
2020/06/11 12:26:28 [INFO] ▶ Analyzing 9cbf547e2d96aa58fd4af5a5c3c07f58e54b1398ee33f6802d5e244bf3dd1c20
2020/06/11 12:26:28 [INFO] ▶ Analyzing 9feb600cbbb945572cbf0c24994bb5e97ae6e3cc91638c48d7410fd2f9d32be4
2020/06/11 12:26:29 [INFO] ▶ Analyzing 1e5678cada038fc66040df63c12bd50d78cc6502c3cb1e953b52122b60023fbe
2020/06/11 12:26:29 [INFO] ▶ Image [secureimages/matomo:3.13.6-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/matomo:3.13.6-alpine-3.12.0
2020-06-11T09:26:30.972Z        INFO    Need to update DB
2020-06-11T09:26:30.972Z        INFO    Downloading DB...
2020-06-11T09:26:41.291Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.6-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~473MB)

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.6
```

Security scanning using Clair
```
clair-scanner matomo:3.13.6
2020/06/11 12:26:47 [INFO] ▶ Start clair-scanner
2020/06/11 12:26:54 [INFO] ▶ Server listening on port 9279
2020/06/11 12:26:54 [INFO] ▶ Analyzing 542fc11795096931bf8707e1fd00e4aaa0ba8d98bd89fc281fc9fbec21c52ed8
2020/06/11 12:26:54 [INFO] ▶ Analyzing 41359e877d830e2cbbece63ad01d1063322479cc13d593b39819e62cbadc12eb
2020/06/11 12:26:54 [INFO] ▶ Analyzing 2251b1df86d1b4de1724e98de76e24e52f30c3336f36e5692ebbe119ad049168
2020/06/11 12:26:55 [INFO] ▶ Analyzing bf1075187224c74879bae0c9c291fc76867d80912f43d4ca97b1e90060e46551
2020/06/11 12:26:55 [INFO] ▶ Analyzing 4965de01bcecba1813edf9e296bda56bbb1847ac7b18ad93d9010a5e98d2b39e
2020/06/11 12:26:55 [INFO] ▶ Analyzing e6413fc8bdcf26f07de8f0d98cb45c5f3c68935762b7a7212d0dfec49d271a6b
2020/06/11 12:26:55 [INFO] ▶ Analyzing 35e9e504b0c75782da5ad9351c7bdb3a592e3e3d8cb94d7e7e19939544a322dc
2020/06/11 12:26:55 [INFO] ▶ Analyzing 1bc7a6359e0b4ccff291f3b4358e7c81071bdb64f9ecb903b9d962fe1fe0dda4
2020/06/11 12:26:55 [INFO] ▶ Analyzing 7734f337806a108cf811b73e8261d9d46d2c69042e4b123f65e6e9f69d202bd1
2020/06/11 12:26:55 [INFO] ▶ Analyzing edfabe61589bb832f30e10e60a0188263bd0c66eec108971b6aa3ff3180529b3
2020/06/11 12:26:55 [INFO] ▶ Analyzing 43447e0cd4359b9de377c15fc1f2ba8a50f40ca0c4ec7426475def549547a4fe
2020/06/11 12:26:55 [INFO] ▶ Analyzing 40f9130f6b09ed6065cc6df48c6843fa81458225974af7a1baa563f9fea1385a
2020/06/11 12:26:55 [INFO] ▶ Analyzing 6edf9f1326dd3628a8cd4f201fa1a0de35f3ebc63b3e902fa644f8b9f8d65b54
2020/06/11 12:26:55 [INFO] ▶ Analyzing 2d10d549784597977981dee35b6697e107a883eef47e141f59c69f285242052f
2020/06/11 12:26:55 [INFO] ▶ Analyzing 2803a2ad0875de9b1904d66c85e70017b574bae14ed9d1b28d775940ccf1796a
2020/06/11 12:26:55 [INFO] ▶ Analyzing 85f72dee2366700c82be2daf97421c736eded93faec698310ad254e9c92ccc81
2020/06/11 12:26:55 [INFO] ▶ Analyzing 19e689023d96cc29d3e813187d8ca073edb37443b92c9aac23f3fa7c9423b3fb
2020/06/11 12:26:55 [INFO] ▶ Analyzing e7437de21a7f6ab525d2304607e25cc6630eebd06904914e71b089155e317121
2020/06/11 12:26:55 [WARN] ▶ Image [matomo:3.13.6] contains 257 total vulnerabilities
2020/06/11 12:26:55 [ERRO] ▶ Image [matomo:3.13.6] contains 257 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress matomo:3.13.6
2020-06-11T09:26:57.641Z        INFO    Need to update DB
2020-06-11T09:26:57.641Z        INFO    Downloading DB...
2020-06-11T09:27:09.941Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.6 (debian 10.4)
===========================
Total: 536 (UNKNOWN: 1, LOW: 418, MEDIUM: 99, HIGH: 18, CRITICAL: 0)
```
