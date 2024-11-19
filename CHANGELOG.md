# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v2.3.2] - 2024-11-19
### :sparkles: New Features
- [`602a083`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/602a0832909d5695ac16c2fbaa559292a959c303) - **ci**: implement reusable workflow action for docker-hub-description *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`41b9068`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/41b906881b26dae9d5d51fdf273eb38348f308ce) - **ci**: trigger workflow on every push *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`6824ab5`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/6824ab5277d8aef5c007b3510c29eaba27f00f7f) - **ci**: added secrets param *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`981db61`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/981db61455e52cc881c533cceae5a3a6e4c5b072) - **ci**: using trivy reusable workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`30440e5`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/30440e5340b51ba3702b90c9689b5afa8e19fea4) - **ci**: testing out DGOSS_CMD parameter *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`ac10cea`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/ac10cea45bee84649b7116c4de55702ba541d14d) - **ci**: trigger trivy & docker-hub-description flows when pushing a tag *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`b331747`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/b3317473c02b13168be313aca4a314ef3446aa12) - **ci**: using reusable main workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*

### :bug: Bug Fixes
- [`a8f6d61`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/a8f6d61c9ab96848d6e2d2d71c61c5a2db9ed03b) - **dockerfile**: uppercase AS so all keywords are using the same case style (FromAsCasing) *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`f9800a8`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/f9800a8dde5cd6c5a408ef86c98f5e50b3d94562) - **ci**: goss file buildDate *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`ceb23e6`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/ceb23e629d60eea836a9cdace5801fe2bf1e2881) - **ci**: changelog using main over master branch *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`5ba143f`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/5ba143f6ae58385e75a467fc91c80d1130d4b3f5) - **ci**: refering to correct github repo workflow to be reused *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`770ae2e`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/770ae2e712529924307f30697cbc2a12060d1b9c) - **goss**: updating build month *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`fd1d4a8`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/fd1d4a87f59b76db8727ce748a41e9e914ba3d18) - **ci**: using name for job *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`2f9f262`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/2f9f262689e99dd3475fd112e45c63885eccc14d) - **ci**: wrong indentation *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`46ee9b6`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/46ee9b6334ada8944d6e2eb48899be878a63b2dc) - **ci**: fixing parameter reference *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`99ef4cd`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/99ef4cd595259d3f10a874f425adc9afcd90ed89) - **ci**: GOSS_CMD as normal input over env based *(commit by [@visibilityspots](https://github.com/visibilityspots))*

### :wrench: Chores
- [`8962a1e`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/8962a1e6897367af6a4e0f5f39ad46691fc00a24) - **update**: gotify-cli v2.3.2 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`9e07431`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/9e074315d4aef1caaebcb49a55f9d2ed87872c3c) - **update**: golang v1.23 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`b1ec4d6`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/b1ec4d6c9b4e344db0d2bca08d1954889a1f062b) - **ci**: added CHANGELOG action *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`6cc4755`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/6cc4755bbd714bc40bed296b236bd49404046865) - **deps**: bump stefanzweifel/git-auto-commit-action from 4 to 5 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`47182d8`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/47182d8a6118e9c53abd1303ab6bb77816b52b19) - **deps**: bump aquasecurity/trivy-action from 0.24.0 to 0.27.0 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`c87979c`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/c87979c5c70793f623880c021f81991a4e09060b) - **update**: golang v1.23.2 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`dd9b580`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/dd9b5806497a6976b12dbb6cc9ab76f12d30b591) - **deps**: bump aquasecurity/trivy-action from 0.27.0 to 0.28.0 *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`85435f3`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/85435f3adddc48cfd425d59a6139fa8b2ec6a1ac) - **update**: golang v1.23.3 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`d4ee4d5`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/d4ee4d50eabe0cde9f0ece61a2e70cb617989414) - **ci**: clean changelog for test ci *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`ae857bc`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/ae857bc86b911b49e14217c3526349b99ec87e9f) - **ci**: removed unused GOSS_CMD env parameter *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`4c1c357`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/4c1c357d85ba48b6a9a10fb349dc2ade6788f8d4) - **ci**: using GOSS_CMD input *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`74e579a`](https://github.com/visibilityspots/dockerfile-gotify-cli/commit/74e579a96e9008b5cd9d2bd226c7f57ee4284e6f) - **ci**: using GOSS_CMD secret to pass on to reusable workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*

[v2.3.2]: https://github.com/visibilityspots/dockerfile-gotify-cli/compare/v2.2.4...v2.3.2
