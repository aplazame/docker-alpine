

### Docker images

| image | cloning image | description |
|---|---|---|
| aws | `docker push aplazame/alpine:aws` | includes `awscli` |
| node | `docker push aplazame/alpine:node` | FROM node:10-alpine, includes bash, git, curl, rsync, make, ssh |
| python | `docker push aplazame/alpine:aws` | includes `python3` |
| rsync | `docker push aplazame/alpine:aws` | just includes bash, ssh and rsync |

These docker images are being published in [Docker HUB](https://hub.docker.com/r/aplazame/alpine)

Docker Hub is set up for automatically create new images when a semver tag is created in [github releases](./releases)


### CircleCI Orbs

Orbs is a system that CircleCi has for share jobs, commands, and executors across different repositories.

#### CircleCI CLI Tool Installation

> Run this command for a [quick installation](https://circleci.com/docs/2.0/local-cli/#quick-installation)
>
> also check [alternative installation methods](https://circleci.com/docs/2.0/local-cli/#alternative-installation-methods)

``` sh
curl -fLSs https://circle.ci/cli | bash
```

#### Validate Orbs

```
make validate-orbs

# this runs
# circleci orb validate ./circle-orbs/s3.yml
# circleci orb validate ./circle-orbs/rsync.yml
```

#### Publishing orbs

Create a personal access token in: https://circleci.com/account/api

> Requires using a valid CIRCLECI_CLI_TOKEN
> CIRCLECI_CLI_TOKEN environment variable is not required when [CircleCI CLI Tool Setup](#circleci-cli-tool-setup)

``` sh
publish-orbs CIRCLECI_CLI_TOKEN=a098a098...
```


#### CircleCI CLI Tool Setup

```
circleci setup
```

![image](https://user-images.githubusercontent.com/2305833/74728531-3a24d400-5243-11ea-8c39-2cef53f2d9fc.png)

