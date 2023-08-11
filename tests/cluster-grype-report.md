# Vulnerability Report

`\tableofcontents`{=latex}


## bitnami/sealed-secrets-controller

 * **target**: docker.io/bitnami/sealed-secrets-controller@sha256:88474198781d3614c82cb9601c3d014671136d6ce481efb6b7a882ceb3bc324d
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## curlimages/curl

 * **target**: docker.io/curlimages/curl@sha256:fcf8b68aa7af25898d21b47096ceb05678665ae182052283bd0d7128149db55f
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.18.0

| Severity                  | Count    |
|---------------------------|---------:|
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| libcrypto3@3.1.1-r1 (fixed 3.1.1-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.1.1-r1 (fixed 3.1.1-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.1.1-r1 (fixed 3.1.1-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.1.1-r1 (fixed 3.1.1-r3)                  | Unknown/?       | CVE-2099-4643                  |

## grafana/grafana

 * **target**: docker.io/grafana/grafana@sha256:2aa6e216f8674425d587bab7b692a941a579252f51de2f97a2a8c837e0f5e63a
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.4

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        5 |
| **Critical**              |        1 |
| **High**                  |        2 |
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| glibc@2.35-r0 (unknown)                            | Critical/480.0  | CVE-2099-1001022               |
| glibc@2.35-r0 (unknown)                            | High/374.3      | CVE-2099-1001023               |
| libcrypto3@3.0.9-r1 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.9-r1 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.0.9-r1 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.9-r1 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |
| nghttp2-libs@1.51.0-r0 (fixed 1.51.0-r1)           | High/?          | CVE-2099-94535                 |

## keelhq/keel

 * **target**: docker.io/keelhq/keel@sha256:9dfe2a961e0e4ee0433aa1dc6bdd41fe9765d80d3a78c105cf331ed3b5f8ffd3
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.3

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        6 |
| **High**                  |        4 |
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |
| github.com/docker/docker@v20.10.21+incompatible (fixed 20.10.24) | High/77.5       | GHSA-232p-vwff-86mp            |
| libcrypto3@3.0.8-r3 (fixed 3.0.9-r0)               | High/?          | CVE-2099-5062                  |
| libcrypto3@3.0.8-r3 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.8-r3 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.0.8-r3 (fixed 3.0.9-r0)                  | High/?          | CVE-2099-5062                  |
| libssl3@3.0.8-r3 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.8-r3 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |

## rancher/klipper-helm

 * **target**: docker.io/rancher/klipper-helm@sha256:4d2ec9ac78f6e3ca3d4dd0a1c3b754aec2b4f19e3a922c6ebcb0d74bb5ac674a
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.3

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |       13 |
| Medium (hidden)           |        9 |
| Low (hidden)              |        1 |
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| git@2.38.5-r0 (unknown)                            | High/56.0       | CVE-2099-74223                 |
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |
| github.com/docker/docker@v20.10.17+incompatible (fixed 20.10.24) | High/77.5       | GHSA-232p-vwff-86mp            |
| github.com/docker/docker@v20.10.21+incompatible (fixed 20.10.24) | High/77.5       | GHSA-232p-vwff-86mp            |
| golang.org/x/net@v0.5.0 (fixed 0.7.0)              | High/105.3      | GHSA-vvpx-j8f3-3w6h            |
| libcrypto3@3.0.8-r4 (fixed 3.0.9-r0)               | High/?          | CVE-2099-5062                  |
| libcrypto3@3.0.8-r4 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.8-r4 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libcurl@8.0.1-r0 (fixed 8.1.0-r0)                  | High/?          | CVE-2099-31829                 |
| libssl3@3.0.8-r4 (fixed 3.0.9-r0)                  | High/?          | CVE-2099-5062                  |
| libssl3@3.0.8-r4 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.8-r4 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |
| ncurses-libs@6.3_p20221119-r0 (fixed 6.3_p20221119-r1) | High/?          | CVE-2099-49921                 |
| ncurses-terminfo-base@6.3_p20221119-r0 (fixed 6.3_p20221119-r1) | High/?          | CVE-2099-49921                 |
| nghttp2-libs@1.51.0-r0 (fixed 1.51.0-r1)           | High/?          | CVE-2099-94535                 |

## rancher/local-path-provisioner

 * **target**: docker.io/rancher/local-path-provisioner@sha256:5bb33992a4ec3034c28b5e0b3c4c2ac35d3613b25b79455eb4b1a95adc82cdc0
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.2

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        5 |
| Medium (hidden)           |        7 |
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| github.com/gogo/protobuf@v1.3.1 (fixed 1.3.2)      | High/157.6      | GHSA-c3h9-896r-86jm            |
| libcrypto3@3.0.8-r0 (fixed 3.0.8-r1)               | High/?          | CVE-2099-6440                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r0)               | High/?          | CVE-2099-5062                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.0.8-r0 (fixed 3.0.8-r1)                  | High/?          | CVE-2099-6440                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r0)                  | High/?          | CVE-2099-5062                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |

## rancher/mirrored-coredns-coredns

 * **target**: docker.io/rancher/mirrored-coredns-coredns@sha256:a11fafae1f8037cbbd66c5afa40ba2423936b72b4fd50a7034a7e8b955163594
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / @

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| golang.org/x/net@v0.4.0 (fixed 0.7.0)              | High/105.3      | GHSA-vvpx-j8f3-3w6h            |

## rancher/mirrored-metrics-server

 * **target**: docker.io/rancher/mirrored-metrics-server@sha256:c2dfd72bafd6406ed306d9fbd07f55c496b004293d13d3de88a4567eacc36558
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## summerwind/actions-runner-controller

 * **target**: docker.io/summerwind/actions-runner-controller@sha256:d75101f36e47ff67bef2c7d920664a5f9f42418d3dd91eb17c9f21c47501e5b2
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## ubuntu/squid

 * **target**: docker.io/ubuntu/squid@sha256:e5aba91bd1fd92671496ed5fc2bea3dabd8910f3f45c9c86a380239201bbde17
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / ubuntu@23.04

| Severity                  | Count    |
|---------------------------|---------:|
| Negligible (hidden)       |        2 |
| Low (hidden)              |        9 |
| Medium (hidden)           |        6 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## brancz/kube-rbac-proxy

 * **target**: quay.io/brancz/kube-rbac-proxy@sha256:738c854322f56d63ebab75de5210abcdd5e0782ce2d30c0ecd4620f63b24694d
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        3 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| golang.org/x/net@v0.0.0-20221002022538-bcab6841153b (fixed 0.1.1-0.20221104162952-702349b0e862) | High/105.3      | GHSA-fxg5-wq6x-vr4w            |
| golang.org/x/net@v0.0.0-20221002022538-bcab6841153b (fixed 0.7.0) | High/105.3      | GHSA-vvpx-j8f3-3w6h            |
| golang.org/x/text@v0.3.7 (fixed 0.3.8)             | High/105.3      | GHSA-69ch-w2m2-3vjp            |

## cilium/cilium

 * **target**: quay.io/cilium/cilium@sha256:bde8800d61aaad8b8451b10e247ac7bdeb7af187bb698f83d40ad75a38c1ee6b
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / ubuntu@22.04

| Severity                  | Count    |
|---------------------------|---------:|
| Negligible (hidden)       |        3 |
| Low (hidden)              |       10 |
| Medium (hidden)           |        8 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## cilium/hubble-relay

 * **target**: quay.io/cilium/hubble-relay@sha256:bac057a5130cf75adf5bc363292b1f2642c0c460ac9ff018fcae3daf64873871
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / @

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## cilium/hubble-ui-backend

 * **target**: quay.io/cilium/hubble-ui-backend@sha256:14c04d11f78da5c363f88592abae8d2ecee3cbe009f443ef11df6ac5f692d839
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.2

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        6 |
| Medium (hidden)           |       15 |
| **Critical**              |        1 |
| **Unknown**               |        4 |
| Low (hidden)              |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| github.com/cilium/cilium@v1.13.0 (unknown)         | High/96.8       | CVE-2099-59724                 |
| github.com/cilium/cilium@v1.13.0 (unknown)         | Critical/225.5  | CVE-2099-59725                 |
| github.com/cilium/cilium@v1.13.0 (fixed 1.13.2)    | High/33.4       | GHSA-pg5p-wwp8-97g8            |
| libcrypto3@3.0.8-r0 (fixed 3.0.8-r1)               | High/?          | CVE-2099-6440                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r0)               | High/?          | CVE-2099-5062                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.0.8-r0 (fixed 3.0.8-r1)                  | High/?          | CVE-2099-6440                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r0)                  | High/?          | CVE-2099-5062                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |

## cilium/hubble-ui

 * **target**: quay.io/cilium/hubble-ui@sha256:bcb369c47cada2d4257d63d3749f7f87c91dde32e010b223597306de95d1ecc8
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.17.2

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |       52 |
| **High**                  |       16 |
| **Critical**              |        2 |
| Low (hidden)              |        2 |
| **Unknown**               |        4 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| curl@7.87.0-r1 (fixed 7.87.0-r2)                   | Critical/?      | CVE-2099-91324                 |
| curl@7.87.0-r1 (fixed 7.88.1-r1)                   | High/?          | CVE-2099-53723                 |
| curl@7.87.0-r1 (fixed 7.88.1-r1)                   | High/?          | CVE-2099-53724                 |
| curl@7.87.0-r1 (fixed 8.1.0-r0)                    | High/?          | CVE-2099-31829                 |
| libcrypto3@3.0.8-r0 (fixed 3.0.8-r1)               | High/?          | CVE-2099-6440                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r0)               | High/?          | CVE-2099-5062                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.0.8-r0 (fixed 3.0.9-r3)               | Unknown/?       | CVE-2099-4643                  |
| libcurl@7.87.0-r1 (fixed 7.87.0-r2)                | Critical/?      | CVE-2099-91324                 |
| libcurl@7.87.0-r1 (fixed 7.88.1-r1)                | High/?          | CVE-2099-53723                 |
| libcurl@7.87.0-r1 (fixed 7.88.1-r1)                | High/?          | CVE-2099-53724                 |
| libcurl@7.87.0-r1 (fixed 8.1.0-r0)                 | High/?          | CVE-2099-31829                 |
| libssl3@3.0.8-r0 (fixed 3.0.8-r1)                  | High/?          | CVE-2099-6440                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r0)                  | High/?          | CVE-2099-5062                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.0.8-r0 (fixed 3.0.9-r3)                  | Unknown/?       | CVE-2099-4643                  |
| libwebp@1.2.4-r1 (fixed 1.2.4-r2)                  | High/?          | CVE-2099-9991                  |
| libx11@1.8.4-r0 (fixed 1.8.4-r1)                   | High/?          | CVE-2099-3813                  |
| ncurses-libs@6.3_p20221119-r0 (fixed 6.3_p20221119-r1) | High/?          | CVE-2099-49921                 |
| ncurses-terminfo-base@6.3_p20221119-r0 (fixed 6.3_p20221119-r1) | High/?          | CVE-2099-49921                 |
| nghttp2-libs@1.51.0-r0 (fixed 1.51.0-r1)           | High/?          | CVE-2099-94535                 |
| tiff@4.4.0-r1 (fixed 4.4.0-r2)                     | High/?          | CVE-2099-7093                  |

## cilium/operator-generic

 * **target**: quay.io/cilium/operator-generic@sha256:09ab77d324ef4d31f7d341f97ec5a2a4860910076046d57a2d61494d426c6301
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / @

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## jetstack/cert-manager-cainjector

 * **target**: quay.io/jetstack/cert-manager-cainjector@sha256:482d7e2a50dc2dbef18e3a12554dc586c8ce884ad325aa82cf466847072130a3
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## jetstack/cert-manager-controller

 * **target**: quay.io/jetstack/cert-manager-controller@sha256:2a026935a03575527525b12952b6e1e6a2caddf983d67f8e5025ed85de7b0d7f
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## jetstack/cert-manager-webhook

 * **target**: quay.io/jetstack/cert-manager-webhook@sha256:13fd9eaadb4e491ef0e1d82de60cb199f5ad2ea5a3f8e0c19fdf31d91175b9cb
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## kiwigrid/k8s-sidecar

 * **target**: quay.io/kiwigrid/k8s-sidecar@sha256:3b70b9f1a81e67c97e4cd32c9a918fa44fd2c9f66bdd0d28d8b82d7b502cb5e4
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / alpine@3.18.2

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        1 |
| **High**                  |        4 |
| **Unknown**               |        4 |
| Low (hidden)              |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| libcrypto3@3.1.1-r1 (fixed 3.1.1-r2)               | Unknown/?       | CVE-2099-7592                  |
| libcrypto3@3.1.1-r1 (fixed 3.1.1-r3)               | Unknown/?       | CVE-2099-4643                  |
| libssl3@3.1.1-r1 (fixed 3.1.1-r2)                  | Unknown/?       | CVE-2099-7592                  |
| libssl3@3.1.1-r1 (fixed 3.1.1-r3)                  | Unknown/?       | CVE-2099-4643                  |
| pip@23.1.2 (unknown)                               | High/374.3      | CVE-2099-22025                 |
| pip@23.1.2 (unknown)                               | High/374.3      | CVE-2099-22025                 |
| python@3.11.4 (unknown)                            | High/105.3      | CVE-2099-32429                 |
| python@3.11.4 (unknown)                            | High/105.3      | CVE-2099-63632                 |

## prometheus/alertmanager

 * **target**: quay.io/prometheus/alertmanager@sha256:fd4d9a3dd1fd0125108417be21be917f19cc76262347086509a0d43f29b80e98
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / busybox@1.34.1

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        3 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| busybox@1.34.1 (unknown)                           | High/374.3      | CVE-2099-39821                 |
| golang.org/x/net@v0.4.0 (fixed 0.7.0)              | High/105.3      | GHSA-vvpx-j8f3-3w6h            |
| golang.org/x/net@v0.4.0 (fixed 0.7.0)              | High/105.3      | GHSA-vvpx-j8f3-3w6h            |

## prometheus/node-exporter

 * **target**: quay.io/prometheus/node-exporter@sha256:d2e48098c364e61ee62d9016eed863b66331d87cf67146f2068b70ed9d9b4f98
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / busybox@1.36.0

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## prometheus-operator/prometheus-config-reloader

 * **target**: quay.io/prometheus-operator/prometheus-config-reloader@sha256:b7493034219c1465ff84d47dc8a8f337ed15465d1143e6ef3af3ba995d128a5c
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / busybox@1.36.1

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## prometheus-operator/prometheus-operator

 * **target**: quay.io/prometheus-operator/prometheus-operator@sha256:9c55b6970e37fb734c153e6c6acace285be98d095e8b221f93e38a6b179e1222
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / busybox@1.36.1

| Severity                  | Count    |
|---------------------------|---------:|
| Medium (hidden)           |        1 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## prometheus/prometheus

 * **target**: quay.io/prometheus/prometheus@sha256:9309deb7c981e8a94584d9ed689fd62f7ac4549d816fd3881550311cf056a237
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / busybox@1.36.1

| Severity                  | Count    |
|---------------------------|---------:|
| **High**                  |        2 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |
| github.com/docker/distribution@v2.8.1+incompatible (fixed 2.8.2-beta.1) | High/105.3      | GHSA-hqxw-f8mx-cpmw            |

## kube-state-metrics/kube-state-metrics

 * **target**: registry.k8s.io/kube-state-metrics/kube-state-metrics@sha256:5ac2e67a862cd3baa0eb4fd7683d54928fd76ea3a61cde50508922c956901d8c
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |

## docker/example/service/example-01

 * **target**: registry.example.net/docker/example/service/example-01@sha256:0133cdf0bc9334fd58c61f3ee6abef9f8edefd56126b7968a163eb90b17c13af
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / ubuntu@18.04

| Severity                  | Count    |
|---------------------------|---------:|
| Negligible (hidden)       |      104 |
| Low (hidden)              |      670 |
| Medium (hidden)           |     1081 |
| **Critical**              |        6 |
| **High**                  |       88 |

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| Flask@1.0.2 (fixed 2.2.5)                          | High/105.3      | GHSA-m2qf-hxjv-5gpq            |
| Jinja2@2.10 (fixed 2.10.1)                         | High/134.2      | GHSA-462w-v97r-4m45            |
| PyYAML@3.13 (unknown)                              | Critical/480.0  | CVE-2099-34812                 |
| PyYAML@3.13 (fixed 5.3.1)                          | Critical/225.5  | GHSA-6757-jp84-gxfx            |
| PyYAML@3.13 (fixed 5.4)                            | Critical/225.5  | GHSA-8q59-q68h-6hv4            |
| PyYAML@3.13 (fixed 4.1)                            | Critical/225.5  | GHSA-rprw-h62v-c2w7            |
| Werkzeug@0.14.1 (fixed 0.15.3)                     | High/105.3      | GHSA-gq9m-qvpx-68hc            |
| Werkzeug@0.14.1 (fixed 0.15.5)                     | High/105.3      | GHSA-j544-7q9p-6xp8            |
| Werkzeug@0.14.1 (fixed 2.2.3)                      | High/105.3      | GHSA-xg9f-g7g7-2323            |
| apt@1.6.3ubuntu0.1 (fixed 1.6.6ubuntu0.1)          | High/?          | CVE-2099-6243                  |
| cryptography@2.1.4 (unknown)                       | High/145.0      | CVE-2099-90013                 |
| cryptography@2.1.4 (fixed 2.3)                     | High/105.3      | GHSA-fcf9-3qw3-gxmj            |
| cryptography@2.1.4 (fixed 39.0.1)                  | High/84.7       | GHSA-x4qr-2fvf-3mr5            |
| libapt-pkg5.0@1.6.3ubuntu0.1 (fixed 1.6.6ubuntu0.1) | High/?          | CVE-2099-6243                  |
| libexpat1@2.2.5-3 (fixed 2.2.5-3ubuntu0.4)         | High/?          | CVE-2099-23525                 |
| libexpat1@2.2.5-3 (fixed 2.2.5-3ubuntu0.4)         | High/?          | CVE-2099-23526                 |
| libexpat1-dev@2.2.5-3 (fixed 2.2.5-3ubuntu0.4)     | High/?          | CVE-2099-23525                 |
| libexpat1-dev@2.2.5-3 (fixed 2.2.5-3ubuntu0.4)     | High/?          | CVE-2099-23526                 |
| libksba8@1.3.5-2 (fixed 1.3.5-2ubuntu0.18.04.1)    | High/?          | CVE-2099-1553                  |
| libsasl2-2@2.1.27~101-g0780600+dfsg-3ubuntu2 (fixed 2.1.27~101-g0780600+dfsg-3ubuntu2.4) | High/?          | CVE-2099-40427                 |
| libsasl2-modules@2.1.27~101-g0780600+dfsg-3ubuntu2 (fixed 2.1.27~101-g0780600+dfsg-3ubuntu2.4) | High/?          | CVE-2099-40427                 |
| libsasl2-modules-db@2.1.27~101-g0780600+dfsg-3ubuntu2 (fixed 2.1.27~101-g0780600+dfsg-3ubuntu2.4) | High/?          | CVE-2099-40427                 |
| libsystemd0@237-3ubuntu10.3 (fixed 237-3ubuntu10.11) | High/?          | CVE-2099-86614                 |
| libsystemd0@237-3ubuntu10.3 (fixed 237-3ubuntu10.11) | High/?          | CVE-2099-86615                 |
| libsystemd0@237-3ubuntu10.3 (fixed 237-3ubuntu10.49) | High/?          | CVE-2099-91330                 |
| libudev1@237-3ubuntu10.3 (fixed 237-3ubuntu10.11)  | High/?          | CVE-2099-86614                 |
| libudev1@237-3ubuntu10.3 (fixed 237-3ubuntu10.11)  | High/?          | CVE-2099-86615                 |
| libudev1@237-3ubuntu10.3 (fixed 237-3ubuntu10.49)  | High/?          | CVE-2099-91330                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-50.54)   | High/?          | CVE-2099-12216                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-50.54)   | High/?          | CVE-2099-12217                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-50.54)   | High/?          | CVE-2099-13210                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-69.78)   | High/?          | CVE-2099-20217                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-39.42)   | High/?          | CVE-2099-47511                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-70.79)   | High/?          | CVE-2099-5510                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-69.78)   | High/?          | CVE-2099-13115                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-52.56)   | High/?          | CVE-2099-47117                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-52.56)   | High/?          | CVE-2099-47118                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-64.73)   | High/?          | CVE-2099-83415                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-99.100)  | High/?          | CVE-2099-88114                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-122.124) | High/?          | CVE-2099-35211                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-96.97)   | High/?          | CVE-2099-65214                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-117.118) | High/?          | CVE-2099-38416                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-121.123) | High/?          | CVE-2099-11619                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-140.144) | High/?          | CVE-2099-17720                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-140.144) | High/?          | CVE-2099-17721                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-132.136) | High/?          | CVE-2099-37824                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-136.140) | High/?          | CVE-2099-66921                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-144.148) | High/?          | CVE-2099-55225                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-139.143) | High/?          | CVE-2099-36725                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-142.146) | High/?          | CVE-2099-15924                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-151.157) | High/?          | CVE-2099-90339                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-142.146) | High/?          | CVE-2099-9343                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-147.151) | High/?          | CVE-2099-0063                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-147.151) | High/?          | CVE-2099-0963                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-156.163) | High/?          | CVE-2099-5363                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-156.163) | High/?          | CVE-2099-5663                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-99.100)  | High/?          | CVE-2099-1573                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-166.174) | High/?          | CVE-2099-0204                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-171.180) | High/?          | CVE-2099-0100                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-171.180) | High/?          | CVE-2099-0200                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-173.182) | High/?          | CVE-2099-9240                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-184.194) | High/?          | CVE-2099-49129                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-184.194) | High/?          | CVE-2099-96320                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-191.202) | High/?          | CVE-2099-8652                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-191.202) | High/?          | CVE-2099-8852                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-180.189) | High/?          | CVE-2099-58921                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-184.194) | High/?          | CVE-2099-25230                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-191.202) | High/?          | CVE-2099-91438                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-200.211) | High/?          | CVE-2099-70243                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-202.213) | High/?          | CVE-2099-89246                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-202.213) | High/?          | CVE-2099-94345                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-206.217) | High/?          | CVE-2099-6140                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-209.220) | High/?          | CVE-2099-8121                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-212.223) | High/?          | CVE-2099-8031                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-210.221) | High/?          | CVE-2099-2981                  |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-212.223) | High/?          | CVE-2099-45036                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-212.223) | High/?          | CVE-2099-43136                 |
| linux-libc-dev@4.15.0-38.41 (fixed 4.15.0-212.223) | High/?          | CVE-2099-23233                 |
| openssl@1.1.0g-2ubuntu4.1 (fixed 1.1.1-1ubuntu2.1~18.04.7) | High/?          | CVE-2099-7191                  |
| openssl@1.1.0g-2ubuntu4.1 (fixed 1.1.1-1ubuntu2.1~18.04.9) | High/?          | CVE-2099-4943                  |
| openssl@1.1.0g-2ubuntu4.1 (fixed 1.1.1-1ubuntu2.1~18.04.13) | High/?          | CVE-2099-1173                  |
| openssl@1.1.0g-2ubuntu4.1 (fixed 1.1.1-1ubuntu2.1~18.04.15) | High/?          | CVE-2099-7870                  |
| openssl@1.1.0g-2ubuntu4.1 (fixed 1.1.1-1ubuntu2.1~18.04.21) | High/?          | CVE-2099-8620                  |
| pip@9.0.1 (unknown)                                | High/374.3      | CVE-2099-22025                 |
| pip@9.0.1 (unknown)                                | High/145.0      | CVE-2099-91026                 |
| pip@9.0.1 (fixed 19.2)                             | High/105.3      | GHSA-gpvv-69j7-gwj8            |
| pycrypto@2.6.1 (unknown)                           | Critical/480.0  | CVE-2099-5947                  |
| pycrypto@2.6.1 (unknown)                           | High/145.0      | CVE-2099-9456                  |
| pycrypto@2.6.1 (not-fixed)                         | High/105.3      | GHSA-6528-wvf6-f6qg            |
| pycrypto@2.6.1 (not-fixed)                         | Critical/225.5  | GHSA-cq27-v7xp-c356            |
| pyxdg@0.25 (unknown)                               | High/159.9      | CVE-2099-76211                 |
| pyxdg@0.25 (fixed 0.26)                            | High/70.8       | GHSA-r6v3-hpxj-r8rv            |
| setuptools@39.0.1 (fixed 65.5.1)                   | High/105.3      | GHSA-r9hx-vwmv-q579            |
| wheel@0.30.0 (fixed 0.38.1)                        | High/105.3      | GHSA-qwmp-2cf2-g9g6            |

## docker/example/service/example-controller

 * **target**: registry.example.net/docker/example/service/example-controller@sha256:2c462227b5b6da649860f3362cb6651bd72901336e471f79e7eb9b59dcc2d8bc
 * **Vuln-DB from**: 2023-07-27T01:32:25Z
 * **os/arch/distro**: linux/amd64 / debian@11

| Artifact@Version (fixes available)                 | Severity/Score  | Vulnerability                  |
|----------------------------------------------------|-----------------|--------------------------------|
| no relevant vulnerability found | / | / |


# Summary: Vulnerability to Artifacts

| Vulnerability        | Severity   | Artifact@Version                                   |
|----------------------|------------|----------------------------------------------------|
| CVE-2099-5947        | Critical   | pycrypto@2.6.1                                     |
| CVE-2099-34812       | Critical   | PyYAML@3.13                                        |
| CVE-2099-90013       | High       | cryptography@2.1.4                                 |
| CVE-2099-12216       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-12217       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-13210       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-20217       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-47511       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-86614       | High       | libsystemd0@237-3ubuntu10.3, libudev1@237-3ubuntu10.3 |
| CVE-2099-86615       | High       | libsystemd0@237-3ubuntu10.3, libudev1@237-3ubuntu10.3 |
| CVE-2099-22025       | High       | pip@23.1.2, pip@9.0.1                              |
| CVE-2099-9456        | High       | pycrypto@2.6.1                                     |
| CVE-2099-5510        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-1001022     | Critical   | glibc@2.35-r0                                      |
| CVE-2099-1001023     | High       | glibc@2.35-r0                                      |
| CVE-2099-13115       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-47117       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-47118       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-76211       | High       | python3-xdg@0.25-4ubuntu1, pyxdg@0.25              |
| CVE-2099-83415       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-6243        | High       | apt@1.6.3ubuntu0.1, libapt-pkg5.0@1.6.3ubuntu0.1   |
| CVE-2099-88114       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-35211       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-65214       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-38416       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-11619       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-7191        | High       | openssl@1.1.0g-2ubuntu4.1                          |
| CVE-2099-17720       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-17721       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-37824       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-66921       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-55225       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-36725       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-15924       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-90339       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-91330       | High       | libsystemd0@237-3ubuntu10.3, libudev1@237-3ubuntu10.3 |
| CVE-2099-4943        | High       | openssl@1.1.0g-2ubuntu4.1                          |
| CVE-2099-9343        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-0063        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-0963        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-5363        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-5663        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-1173        | High       | openssl@1.1.0g-2ubuntu4.1                          |
| CVE-2099-1573        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-0204        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-0100        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-0200        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-9240        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-7870        | High       | openssl@1.1.0g-2ubuntu4.1                          |
| CVE-2099-49129       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-96320       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-40427       | High       | libsasl2-2@2.1.27~101-g0780600+dfsg-3ubuntu2, libsasl2-modules-db@2.1.27~101-g0780600+dfsg-3ubuntu2, libsasl2-modules@2.1.27~101-g0780600+dfsg-3ubuntu2 |
| CVE-2099-23525       | High       | libexpat1-dev@2.2.5-3, libexpat1@2.2.5-3           |
| CVE-2099-23526       | High       | libexpat1-dev@2.2.5-3, libexpat1@2.2.5-3           |
| CVE-2099-8652        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-8852        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-39821       | High       | busybox@1.34.1                                     |
| CVE-2099-58921       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-25230       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-91438       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-1553        | High       | libksba8@1.3.5-2                                   |
| CVE-2099-7093        | High       | tiff@4.4.0-r1                                      |
| CVE-2099-70243       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-89246       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-94345       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-8620        | High       | openssl@1.1.0g-2ubuntu4.1                          |
| CVE-2099-6140        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-8121        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-8031        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-2981        | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-9991        | High       | libwebp@1.2.4-r1                                   |
| CVE-2099-74223       | High       | git@2.38.5-r0                                      |
| CVE-2099-91324       | Critical   | curl@7.87.0-r1, libcurl@7.87.0-r1                  |
| CVE-2099-53723       | High       | curl@7.87.0-r1, libcurl@7.87.0-r1                  |
| CVE-2099-53724       | High       | curl@7.87.0-r1, libcurl@7.87.0-r1                  |
| CVE-2099-59724       | High       | github.com/cilium/cilium@v1.13.0                   |
| CVE-2099-59725       | Critical   | github.com/cilium/cilium@v1.13.0                   |
| CVE-2099-31829       | High       | curl@7.87.0-r1, libcurl@7.87.0-r1, libcurl@8.0.1-r0 |
| CVE-2099-7592        | Unknown    | libcrypto3@3.0.8-r0, libcrypto3@3.0.8-r3, libcrypto3@3.0.8-r4, libcrypto3@3.0.9-r1, libcrypto3@3.1.1-r1, libssl3@3.0.2-0ubuntu1.10, libssl3@3.0.8-1ubuntu1.2, libssl3@3.0.8-r0, libssl3@3.0.8-r3, libssl3@3.0.8-r4, libssl3@3.0.9-r1, libssl3@3.1.1-r1, openssl@3.0.2-0ubuntu1.10, openssl@3.0.8-1ubuntu1.2 |
| CVE-2099-45036       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-3813        | High       | libx11@1.8.4-r0                                    |
| CVE-2099-43136       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-23233       | High       | linux-libc-dev@4.15.0-38.41                        |
| CVE-2099-4643        | Unknown    | libcrypto3@3.0.8-r0, libcrypto3@3.0.8-r3, libcrypto3@3.0.8-r4, libcrypto3@3.0.9-r1, libcrypto3@3.1.1-r1, libssl3@3.0.8-r0, libssl3@3.0.8-r3, libssl3@3.0.8-r4, libssl3@3.0.9-r1, libssl3@3.1.1-r1 |
| CVE-2099-94535       | High       | nghttp2-libs@1.51.0-r0                             |
| CVE-2099-63632       | High       | python@3.11.4                                      |
| GHSA-232p-vwff-86mp  | High       | github.com/docker/docker@v20.10.17+incompatible, github.com/docker/docker@v20.10.21+incompatible |
| GHSA-462w-v97r-4m45  | High       | Jinja2@2.10                                        |
| GHSA-6528-wvf6-f6qg  | High       | pycrypto@2.6.1                                     |
| GHSA-6757-jp84-gxfx  | Critical   | PyYAML@3.13                                        |
| GHSA-69ch-w2m2-3vjp  | High       | golang.org/x/text@v0.3.7                           |
| GHSA-8q59-q68h-6hv4  | Critical   | PyYAML@3.13                                        |
| GHSA-c3h9-896r-86jm  | High       | github.com/gogo/protobuf@v1.3.1                    |
| GHSA-cq27-v7xp-c356  | Critical   | pycrypto@2.6.1                                     |
| GHSA-fcf9-3qw3-gxmj  | High       | cryptography@2.1.4                                 |
| GHSA-fxg5-wq6x-vr4w  | High       | golang.org/x/net@v0.0.0-20221002022538-bcab6841153b |
| GHSA-gpvv-69j7-gwj8  | High       | pip@9.0.1                                          |
| GHSA-gq9m-qvpx-68hc  | High       | Werkzeug@0.14.1                                    |
| GHSA-hqxw-f8mx-cpmw  | High       | github.com/docker/distribution@v2.8.1+incompatible |
| GHSA-j544-7q9p-6xp8  | High       | Werkzeug@0.14.1                                    |
| GHSA-m2qf-hxjv-5gpq  | High       | Flask@1.0.2                                        |
| GHSA-pg5p-wwp8-97g8  | High       | github.com/cilium/cilium@v1.13.0                   |
| GHSA-qwmp-2cf2-g9g6  | High       | wheel@0.30.0                                       |
| GHSA-r6v3-hpxj-r8rv  | High       | pyxdg@0.25                                         |
| GHSA-r9hx-vwmv-q579  | High       | setuptools@39.0.1                                  |
| GHSA-rprw-h62v-c2w7  | Critical   | PyYAML@3.13                                        |
| GHSA-vvpx-j8f3-3w6h  | High       | golang.org/x/net@v0.0.0-20221002022538-bcab6841153b, golang.org/x/net@v0.4.0, golang.org/x/net@v0.5.0 |
| GHSA-x4qr-2fvf-3mr5  | High       | cryptography@2.1.4                                 |
| GHSA-xg9f-g7g7-2323  | High       | Werkzeug@0.14.1                                    |

# Summary: Vulnerability to Services

| Vulnerability            | Sev/Fix      | URL / Scans                                                                                                                                                                                        |
|--------------------------|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **CVE-2099-5947**        | **Critical** | https://nvd.nist.gov/vuln/detail/CVE-2099-5947                                                                                                                                                     |
|                          |      unknown | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-34812**       | **Critical** | https://nvd.nist.gov/vuln/detail/CVE-2099-34812                                                                                                                                                    |
|                          |      unknown | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-90013**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-90013                                                                                                                                                    |
|                          |      unknown | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-12216**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-12216                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-12217**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-12217                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-13210**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-13210                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-20217**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-20217                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-47511**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-47511                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-86614**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-86614                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-86615**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-86615                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-22025**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-22025                                                                                                                                                    |
|                          |      unknown | docker/example/service/example-01, kiwigrid/k8s-sidecar                                                                                                                                            |
| **CVE-2099-9456**        | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-9456                                                                                                                                                     |
|                          |      unknown | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-5510**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-5510                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-1001022**     | **Critical** | https://nvd.nist.gov/vuln/detail/CVE-2099-1001022                                                                                                                                                  |
|                          |      unknown | grafana/grafana                                                                                                                                                                                    |
| **CVE-2099-1001023**     | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-1001023                                                                                                                                                  |
|                          |      unknown | grafana/grafana                                                                                                                                                                                    |
| **CVE-2099-13115**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-13115                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-47117**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-47117                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-47118**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-47118                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-76211**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-76211                                                                                                                                                    |
|                          |      unknown | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-83415**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-83415                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-6243**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-6243                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-88114**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-88114                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-35211**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-35211                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-65214**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-65214                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-38416**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-38416                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-11619**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-11619                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-7191**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-7191                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-17720**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-17720                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-17721**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-17721                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-37824**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-37824                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-66921**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-66921                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-55225**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-55225                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-36725**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-36725                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-15924**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-15924                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-90339**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-90339                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-91330**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-91330                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-4943**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-4943                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-9343**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-9343                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-0063**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-0063                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-0963**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-0963                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-5363**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-5363                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-5663**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-5663                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-1173**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-1173                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-1573**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-1573                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-0204**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-0204                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-0100**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-0100                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-0200**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-0200                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-9240**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-9240                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-7870**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-7870                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-49129**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-49129                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-96320**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-96320                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-40427**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-40427                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-23525**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-23525                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-23526**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-23526                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-8652**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-8652                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-8852**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-8852                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-39821**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-39821                                                                                                                                                    |
|                          |      unknown | prometheus/alertmanager                                                                                                                                                                            |
| **CVE-2099-58921**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-58921                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-25230**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-25230                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-91438**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-91438                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-1553**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-1553                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-7093**        | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-7093                                                                                                                                        |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-70243**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-70243                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-89246**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-89246                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-94345**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-94345                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-8620**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-8620                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-6140**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-6140                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-8121**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-8121                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-8031**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-8031                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-2981**        | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-2981                                                                                                                                        |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-9991**        | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-9991                                                                                                                                        |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-74223**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-74223                                                                                                                                                    |
|                          |      unknown | rancher/klipper-helm                                                                                                                                                                               |
| **CVE-2099-91324**       | **Critical** | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-91324                                                                                                                                       |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-53723**       | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-53723                                                                                                                                       |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-53724**       | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-53724                                                                                                                                       |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-59724**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-59724                                                                                                                                                    |
|                          |      unknown | cilium/hubble-ui-backend                                                                                                                                                                           |
| **CVE-2099-59725**       | **Critical** | https://nvd.nist.gov/vuln/detail/CVE-2099-59725                                                                                                                                                    |
|                          |      unknown | cilium/hubble-ui-backend                                                                                                                                                                           |
| **CVE-2099-31829**       | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-31829                                                                                                                                       |
|                          |        fixed | cilium/hubble-ui, rancher/klipper-helm                                                                                                                                                             |
| **CVE-2099-7592**        | **Unknown**  | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-7592                                                                                                                                        |
|                          |        fixed | cilium/cilium, cilium/hubble-ui, cilium/hubble-ui-backend, curlimages/curl, grafana/grafana, keelhq/keel, kiwigrid/k8s-sidecar, rancher/klipper-helm, rancher/local-path-provisioner, ubuntu/squid |
| **CVE-2099-45036**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-45036                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-3813**        | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-3813                                                                                                                                        |
|                          |        fixed | cilium/hubble-ui                                                                                                                                                                                   |
| **CVE-2099-43136**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-43136                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-23233**       | **High**     | http://people.ubuntu.com/~ubuntu-security/cve/CVE-2099-23233                                                                                                                                       |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **CVE-2099-4643**        | **Unknown**  | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-4643                                                                                                                                        |
|                          |        fixed | cilium/hubble-ui, cilium/hubble-ui-backend, curlimages/curl, grafana/grafana, keelhq/keel, kiwigrid/k8s-sidecar, rancher/klipper-helm, rancher/local-path-provisioner                              |
| **CVE-2099-94535**       | **High**     | http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2099-94535                                                                                                                                       |
|                          |        fixed | cilium/hubble-ui, grafana/grafana, rancher/klipper-helm                                                                                                                                            |
| **CVE-2099-63632**       | **High**     | https://nvd.nist.gov/vuln/detail/CVE-2099-63632                                                                                                                                                    |
|                          |      unknown | kiwigrid/k8s-sidecar                                                                                                                                                                               |
| **GHSA-232p-vwff-86mp**  | **High**     | https://github.com/advisories/GHSA-232p-vwff-86mp                                                                                                                                                  |
|                          |        fixed | keelhq/keel, rancher/klipper-helm                                                                                                                                                                  |
| **GHSA-462w-v97r-4m45**  | **High**     | https://github.com/advisories/GHSA-462w-v97r-4m45                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-6528-wvf6-f6qg**  | **High**     | https://github.com/advisories/GHSA-6528-wvf6-f6qg                                                                                                                                                  |
|                          |    not-fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-6757-jp84-gxfx**  | **Critical** | https://github.com/advisories/GHSA-6757-jp84-gxfx                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-69ch-w2m2-3vjp**  | **High**     | https://github.com/advisories/GHSA-69ch-w2m2-3vjp                                                                                                                                                  |
|                          |        fixed | brancz/kube-rbac-proxy                                                                                                                                                                             |
| **GHSA-8q59-q68h-6hv4**  | **Critical** | https://github.com/advisories/GHSA-8q59-q68h-6hv4                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-c3h9-896r-86jm**  | **High**     | https://github.com/advisories/GHSA-c3h9-896r-86jm                                                                                                                                                  |
|                          |        fixed | rancher/local-path-provisioner                                                                                                                                                                     |
| **GHSA-cq27-v7xp-c356**  | **Critical** | https://github.com/advisories/GHSA-cq27-v7xp-c356                                                                                                                                                  |
|                          |    not-fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-fcf9-3qw3-gxmj**  | **High**     | https://github.com/advisories/GHSA-fcf9-3qw3-gxmj                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-fxg5-wq6x-vr4w**  | **High**     | https://github.com/advisories/GHSA-fxg5-wq6x-vr4w                                                                                                                                                  |
|                          |        fixed | brancz/kube-rbac-proxy                                                                                                                                                                             |
| **GHSA-gpvv-69j7-gwj8**  | **High**     | https://github.com/advisories/GHSA-gpvv-69j7-gwj8                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-gq9m-qvpx-68hc**  | **High**     | https://github.com/advisories/GHSA-gq9m-qvpx-68hc                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-hqxw-f8mx-cpmw**  | **High**     | https://github.com/advisories/GHSA-hqxw-f8mx-cpmw                                                                                                                                                  |
|                          |        fixed | keelhq/keel, prometheus/prometheus, rancher/klipper-helm                                                                                                                                           |
| **GHSA-j544-7q9p-6xp8**  | **High**     | https://github.com/advisories/GHSA-j544-7q9p-6xp8                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-m2qf-hxjv-5gpq**  | **High**     | https://github.com/advisories/GHSA-m2qf-hxjv-5gpq                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-pg5p-wwp8-97g8**  | **High**     | https://github.com/advisories/GHSA-pg5p-wwp8-97g8                                                                                                                                                  |
|                          |        fixed | cilium/hubble-ui-backend                                                                                                                                                                           |
| **GHSA-qwmp-2cf2-g9g6**  | **High**     | https://github.com/advisories/GHSA-qwmp-2cf2-g9g6                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-r6v3-hpxj-r8rv**  | **High**     | https://github.com/advisories/GHSA-r6v3-hpxj-r8rv                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-r9hx-vwmv-q579**  | **High**     | https://github.com/advisories/GHSA-r9hx-vwmv-q579                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-rprw-h62v-c2w7**  | **Critical** | https://github.com/advisories/GHSA-rprw-h62v-c2w7                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-vvpx-j8f3-3w6h**  | **High**     | https://github.com/advisories/GHSA-vvpx-j8f3-3w6h                                                                                                                                                  |
|                          |        fixed | brancz/kube-rbac-proxy, prometheus/alertmanager, rancher/klipper-helm, rancher/mirrored-coredns-coredns                                                                                            |
| **GHSA-x4qr-2fvf-3mr5**  | **High**     | https://github.com/advisories/GHSA-x4qr-2fvf-3mr5                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
| **GHSA-xg9f-g7g7-2323**  | **High**     | https://github.com/advisories/GHSA-xg9f-g7g7-2323                                                                                                                                                  |
|                          |        fixed | docker/example/service/example-01                                                                                                                                                                  |
