# Matomo

Matomo, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/matomo:3.13.4-alpine-3.11.5
2020/03/25 10:27:40 [INFO] ▶ Start clair-scanner
2020/03/25 10:27:48 [INFO] ▶ Server listening on port 9279
2020/03/25 10:27:48 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/25 10:27:48 [INFO] ▶ Analyzing af52495ad018da972ada1bdfe72e5d9d251b904b8a2997854dc4781310d91df3
2020/03/25 10:27:48 [INFO] ▶ Analyzing ea2b5656437e20191d168ed4b482a81a54d2ef0ee2bb412c6978601dc3084a2d
2020/03/25 10:27:48 [INFO] ▶ Analyzing a7a01247ffab18a0022bb581e2f864e0ed41ac7fc1c1d13bb749323a143b97eb
2020/03/25 10:27:48 [INFO] ▶ Analyzing 011fc9d407ab7bf1a70ae309850d8cbd3231344d15037efba89d06cf9179b570
2020/03/25 10:27:48 [INFO] ▶ Analyzing f4323739e52f2fedf4c1bfd560e6e8bb3782aeb763b093bcd9325958bbaed08f
2020/03/25 10:27:48 [INFO] ▶ Analyzing 9d465e9ec935548f8e3de5eeb565ed2a56241d6ba909463f5e0bdae07f69961d
2020/03/25 10:27:48 [INFO] ▶ Image [secureimages/matomo:3.13.4-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/matomo:3.13.4-alpine-3.11.5
2020-03-25T08:27:50.594Z        INFO    Need to update DB
2020-03-25T08:27:50.594Z        INFO    Downloading DB...
2020-03-25T08:27:54.086Z        INFO    Reopening DB...
2020-03-25T08:28:02.827Z        INFO    Detecting Alpine vulnerabilities...

secureimages/matomo:3.13.4-alpine-3.11.5 (alpine 3.11.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/_/matomo](https://hub.docker.com/_/matomo)
```
docker pull matomo:3.13.4
```

Security scanning using Clair
```
clair-scanner matomo:3.13.4
2020/03/25 10:28:07 [INFO] ▶ Start clair-scanner
2020/03/25 10:28:16 [INFO] ▶ Server listening on port 9279
2020/03/25 10:28:16 [INFO] ▶ Analyzing 6570bae7a5cba7e826bbfc3b9d579975c86edcf9f2a17837229bc65352baa1d4
2020/03/25 10:28:16 [INFO] ▶ Analyzing 779e261953f7ce9e550078c2117816909b0ce37a5654afd99065c80a6e044f8c
2020/03/25 10:28:16 [INFO] ▶ Analyzing 65ada13e43f5fde0b032d7bc3599045b0cc68cc8a63b976f10651c554d423406
2020/03/25 10:28:16 [INFO] ▶ Analyzing 90265186e4fa98a9209b39677f4dba0621f4357b5ec9f78af6a60c448b39cdfd
2020/03/25 10:28:16 [INFO] ▶ Analyzing 29352e3f7daeb4a11a4d0d746051905b43c49fd416d615f19cb8a6ea9294eaf3
2020/03/25 10:28:16 [INFO] ▶ Analyzing 12a2a58886ea53ad72bed1d6f2ebe1eb0a96e444579ceae48ad7edcfd73f2dc0
2020/03/25 10:28:16 [INFO] ▶ Analyzing 3aa0509e4d206b2e8e538e5f26b3f4f1bf41d766880dab7af668e28b6eab1216
2020/03/25 10:28:16 [INFO] ▶ Analyzing 75897c804c4ecc75f4ccb38507277f1aa60b59ff702bd131e300ad7ffe8663bf
2020/03/25 10:28:16 [INFO] ▶ Analyzing b001d4300604e459463d9b847246b118597a8f93a0549c3b0bdc900ca063ca04
2020/03/25 10:28:16 [INFO] ▶ Analyzing 5ca088991b8e03c430a40c55597a0e18996539b54dcd563119b46b9c65f10fd8
2020/03/25 10:28:17 [INFO] ▶ Analyzing 6d4760c0f18263e361011ae40f373e35a61794316756f02437b123b7d2b79e2e
2020/03/25 10:28:17 [INFO] ▶ Analyzing d5862340d2a17402894f90c88964c1e03908ab32c21f206a0ba2a5399af4f60e
2020/03/25 10:28:17 [INFO] ▶ Analyzing 4925331b55ddcf81ca736da80bbd65c732a970668941eb7237dad75f713e55db
2020/03/25 10:28:17 [INFO] ▶ Analyzing 22f38cd3bfda6633cf52b3cf25db0c08968f79f983c72e3ec057cce7bb6e939e
2020/03/25 10:28:17 [INFO] ▶ Analyzing 53a3362713966969901e9558f0aa0533b591bb67a396216538b031d2cafb5dc2
2020/03/25 10:28:17 [INFO] ▶ Analyzing 4865daa752616a8c9caaa0ddd6be3c9f33c97a8d75d604aa417945c59f267ace
2020/03/25 10:28:17 [INFO] ▶ Analyzing 97fb85fe948eddcab365285c1b987a7d25bb39968bc22bdf0317b73e5069e503
2020/03/25 10:28:17 [INFO] ▶ Analyzing efded4990870fbf2623057a4b69e6000ad90698261018100036c96683ef751a0
2020/03/25 10:28:17 [WARN] ▶ Image [matomo:3.13.4] contains 234 total vulnerabilities
2020/03/25 10:28:17 [ERRO] ▶ Image [matomo:3.13.4] contains 234 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress matomo:3.13.4
2020-03-25T08:28:19.538Z        INFO    Need to update DB
2020-03-25T08:28:19.538Z        INFO    Downloading DB...
2020-03-25T08:28:23.622Z        INFO    Reopening DB...
2020-03-25T08:28:35.325Z        INFO    Detecting Debian vulnerabilities...

matomo:3.13.4 (debian 10.3)
===========================
Total: 498 (UNKNOWN: 1, LOW: 63, MEDIUM: 373, HIGH: 56, CRITICAL: 5)
```
