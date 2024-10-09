# Changelog

## [5.0.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v4.0.0...v5.0.0) (2024-10-09)


### ⚠ BREAKING CHANGES

* point the Argo CD provider to the new repository ([#37](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/37))

### Features

* point the Argo CD provider to the new repository ([#37](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/37)) ([3c3b79e](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/3c3b79e2bb7ede5ffb7b118d14cc88b8966b767a))

## [4.0.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v3.2.1...v4.0.0) (2024-08-20)


### ⚠ BREAKING CHANGES

* **chart:** major update of dependencies on efs-csi-driver chart ([#32](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/32))
  * The major version bump is related to the replacement of `stunnel` by `efs-utils 2.0.0` on the underlying container image. Consequently, its version has been bumped to version 2.x.y and so the chart had a major bump also. Check the official changelog for the container image [here](https://github.com/kubernetes-sigs/aws-efs-csi-driver/blob/master/CHANGELOG-2.x.md#v200).

### Features

* **chart:** major update of dependencies on efs-csi-driver chart ([#32](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/32)) ([f252ac4](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/f252ac47940474bffd1d109f9b1b3fd37435c234))

## [3.2.1](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v3.2.0...v3.2.1) (2024-08-07)


### Bug Fixes

* change IAM role policy to allow dynamic volume provisioning ([#34](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/34)) ([2d258fb](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/2d258fb6a2f8cb1a35ec96003533aea7832e70d7))

## [3.2.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v3.1.0...v3.2.0) (2024-04-17)


### Features

* add variable to set resources with default values ([#31](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/31)) ([74c4327](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/74c4327e3bce42792b46007babcf37c317a63610))

## [3.1.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v3.0.0...v3.1.0) (2024-02-23)


### Features

* **chart:** patch update of dependencies on efs-csi-driver chart ([#26](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/26)) ([cf5d811](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/cf5d8114b4e033bd38cf983bfd7b76a99d4b61e3))

## [3.0.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.4.0...v3.0.0) (2024-01-19)


### ⚠ BREAKING CHANGES

* remove the ArgoCD namespace variable
* hardcode the release name to remove the destination cluster

### Bug Fixes

* hardcode the release name to remove the destination cluster ([c64e00b](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/c64e00b05d45dd7796782f6983959e896aa82d41))
* remove the ArgoCD namespace variable ([c897ac4](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/c897ac4f3b386c412aabe1166f3c837b87002ea8))

## [2.4.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.3.0...v2.4.0) (2023-11-02)


### Features

* **chart:** minor update of dependencies on efs-csi-driver chart ([#23](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/23)) ([23721ce](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/23721ce2e361b625761b515d7db284f0c1aaf2e4))

## [2.3.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.2.0...v2.3.0) (2023-10-19)


### Features

* add standard variables and variable to add labels to Argo CD app ([4fb47a7](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/4fb47a7f85bd2c2f7eb51a53c3a392f86c979fb6))
* add variables to set AppProject and destination cluster ([7d70210](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/7d7021045fc47a184c56f831680d8e0945d9bb0e))

## [2.2.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.1.0...v2.2.0) (2023-08-22)


### Features

* **chart:** patch update of dependencies on efs-csi-driver chart ([#20](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/20)) ([58983a9](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/58983a97eb2bbd92fcf377f91b854bbd6e378809))

## [2.1.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.0.1...v2.1.0) (2023-08-10)


### Features

* **chart:** minor update of dependencies on efs-csi-driver chart ([#18](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/18)) ([2cd7e3e](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/2cd7e3e4487b715a4ee8b895e9fd3befecfc8626))

## [2.0.1](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v2.0.0...v2.0.1) (2023-08-09)


### Bug Fixes

* readd support to deactivate auto-sync which was broken by [#14](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/14) ([55636df](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/55636df767ebbaccb863c8af051af0926d5a2a70))

## [2.0.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v1.0.2...v2.0.0) (2023-07-11)


### ⚠ BREAKING CHANGES

* add support to oboukili/argocd >= v5 ([#14](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/14))

### Features

* add support to oboukili/argocd &gt;= v5 ([#14](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/14)) ([754e1e6](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/754e1e6dd1fa780c07aef7b9af209680fdda60d9))

## [1.0.2](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v1.0.1...v1.0.2) (2023-05-30)


### Bug Fixes

* add missing provider ([ead06ca](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/ead06cae9e0fc4b1617a85fdca2789c5c69d910d))

## [1.0.1](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v1.0.0...v1.0.1) (2023-03-17)


### Documentation

* add Antora Docs folder structure ([#8](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/8)) ([aba054f](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/aba054f1533507fff9ec614b2cdf789801fcf2a1))

## [1.0.0](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v1.0.0-alpha.2...v1.0.0) (2023-03-08)


### Features

* revamp module similarly to other modules ([#4](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/4)) ([ffc6119](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/ffc611940e72a8b738c82ba8799df95fdf2da36d))

## [1.0.0-alpha.2](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2023-02-23)


### Features

* add variable for controller role arn annotation ([#5](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/5)) ([8f29881](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/8f298814db7e73cc422a21e26f307571218305cc))

## 1.0.0-alpha.1 (2022-11-18)


### Continuous Integration

* add central workflows including release-please ([#2](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/issues/2)) ([4ed65b1](https://github.com/camptocamp/devops-stack-module-efs-csi-driver/commit/4ed65b10a18226cca49c724ac582273b4d740bc5))
