# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.3-alpine-3.11.5
2020/03/24 18:04:48 [INFO] ▶ Start clair-scanner
2020/03/24 18:04:53 [INFO] ▶ Server listening on port 9279
2020/03/24 18:04:53 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:04:53 [INFO] ▶ Analyzing 5dcd8a8229e5d18d786cf6a4cfd0236be357198cb7dab1d751ef1b92fb1e0700
2020/03/24 18:04:53 [INFO] ▶ Analyzing b1ed829cb280a99c05bb1fa28f87fdd303418350d337f93180dfe9651b3ced6d
2020/03/24 18:04:53 [INFO] ▶ Analyzing c8c7f6983c76679cf9f6d12cb924da9dc523dabad9b8d07fda8a50907e264651
2020/03/24 18:04:53 [INFO] ▶ Analyzing 7b14a1fa0be94b7466c60cae572821a88f54b910a16803ae20bbc92d94031b04
2020/03/24 18:04:53 [INFO] ▶ Analyzing 61429b864e14f60fbc32d2473ad341377acf81537e802090e5fc53a1b04f0dd2
2020/03/24 18:04:53 [INFO] ▶ Analyzing fe24665ac454d3e67ae813f4774c3168dc721e4937d55e97e76d1412a9a81cf1
2020/03/24 18:04:53 [INFO] ▶ Image [secureimages/matomo:3.13.3-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/matomo:3.13.3-alpine-3.11.5
2020-03-24T16:04:56.248Z        INFO    Need to update DB
2020-03-24T16:04:56.248Z        INFO    Downloading DB...
2020-03-24T16:05:00.849Z        INFO    Reopening DB...
2020-03-24T16:05:08.330Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.3-alpine-3.11.5 (alpine 3.11.5)
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
2020/03/24 18:05:13 [INFO] ▶ Start clair-scanner
2020/03/24 18:05:21 [INFO] ▶ Server listening on port 9279
2020/03/24 18:05:21 [INFO] ▶ Analyzing 6570bae7a5cba7e826bbfc3b9d579975c86edcf9f2a17837229bc65352baa1d4
2020/03/24 18:05:21 [INFO] ▶ Analyzing 779e261953f7ce9e550078c2117816909b0ce37a5654afd99065c80a6e044f8c
2020/03/24 18:05:21 [INFO] ▶ Analyzing 65ada13e43f5fde0b032d7bc3599045b0cc68cc8a63b976f10651c554d423406
2020/03/24 18:05:22 [INFO] ▶ Analyzing 90265186e4fa98a9209b39677f4dba0621f4357b5ec9f78af6a60c448b39cdfd
2020/03/24 18:05:22 [INFO] ▶ Analyzing 29352e3f7daeb4a11a4d0d746051905b43c49fd416d615f19cb8a6ea9294eaf3
2020/03/24 18:05:22 [INFO] ▶ Analyzing 12a2a58886ea53ad72bed1d6f2ebe1eb0a96e444579ceae48ad7edcfd73f2dc0
2020/03/24 18:05:22 [INFO] ▶ Analyzing 3aa0509e4d206b2e8e538e5f26b3f4f1bf41d766880dab7af668e28b6eab1216
2020/03/24 18:05:22 [INFO] ▶ Analyzing 75897c804c4ecc75f4ccb38507277f1aa60b59ff702bd131e300ad7ffe8663bf
2020/03/24 18:05:22 [INFO] ▶ Analyzing b001d4300604e459463d9b847246b118597a8f93a0549c3b0bdc900ca063ca04
2020/03/24 18:05:22 [INFO] ▶ Analyzing 5ca088991b8e03c430a40c55597a0e18996539b54dcd563119b46b9c65f10fd8
2020/03/24 18:05:22 [INFO] ▶ Analyzing 6d4760c0f18263e361011ae40f373e35a61794316756f02437b123b7d2b79e2e
2020/03/24 18:05:22 [INFO] ▶ Analyzing d5862340d2a17402894f90c88964c1e03908ab32c21f206a0ba2a5399af4f60e
2020/03/24 18:05:22 [INFO] ▶ Analyzing 4925331b55ddcf81ca736da80bbd65c732a970668941eb7237dad75f713e55db
2020/03/24 18:05:22 [INFO] ▶ Analyzing 22f38cd3bfda6633cf52b3cf25db0c08968f79f983c72e3ec057cce7bb6e939e
2020/03/24 18:05:22 [INFO] ▶ Analyzing 53a3362713966969901e9558f0aa0533b591bb67a396216538b031d2cafb5dc2
2020/03/24 18:05:22 [INFO] ▶ Analyzing 87de274fc0faf6b196d5eb690e69a1e5feac6f88a62a5243d0dd0d06bfb82415
2020/03/24 18:05:22 [INFO] ▶ Analyzing 8aef925f1d0d458419c0867f8d7ce45dba09c708de5c20cb3639ea8c5d85e7b6
2020/03/24 18:05:22 [INFO] ▶ Analyzing 56b59e89cfca15bee94a5a7632de717a8bda26cc59d073bb7a71e6ac3683cb6f
2020/03/24 18:05:22 [WARN] ▶ Image [matomo:3.13.3] contains 234 total vulnerabilities
2020/03/24 18:05:22 [ERRO] ▶ Image [matomo:3.13.3] contains 234 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress matomo:3.13.3
2020-03-24T16:05:25.545Z        INFO    Need to update DB
2020-03-24T16:05:25.545Z        INFO    Downloading DB...
2020-03-24T16:05:29.261Z        INFO    Reopening DB...
2020-03-24T16:05:39.333Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.3 (debian 10.3)
===========================
Total: 498 (UNKNOWN: 1, LOW: 63, MEDIUM: 373, HIGH: 56, CRITICAL: 5)
```
