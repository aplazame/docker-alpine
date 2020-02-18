

## Docker images

| image | cloning image | description |
|---|---|---|
| [aws](./aws/Dockerfile) | `docker push aplazame/alpine:aws` | includes `awscli` |
| [node](./node/Dockerfile) | `docker push aplazame/alpine:node` | `FROM node:10-alpine` includes bash, git, curl, rsync, make, ssh |
| [python](./python/Dockerfile) | `docker push aplazame/alpine:aws` | includes `python3` |
| [rsync](./rsync/Dockerfile) | `docker push aplazame/alpine:aws` | just includes bash, ssh and rsync |

These docker images are being published in [Docker HUB](https://hub.docker.com/r/aplazame/alpine)

Docker Hub is set up for automatically create new images when a semver tag is created in [github releases](./releases)


## CircleCI Orbs

Orbs is a system that CircleCi has for share jobs, commands, and executors across different repositories.

#### Aplazame Orbs

| orb name | description |
|---|---|
| [aplazame/s3](https://circleci.com/orbs/registry/orb/aplazame/s3) | provides jobs and commands for deploying to s3 using docker image `aplazame/alpine:aws` |
| [aplazame/rsync](https://circleci.com/orbs/registry/orb/aplazame/rsync) | provides jobs and commands for deploying via rsync using docker image `aplazame/alpine:rsync` |

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
make publish-orbs CIRCLECI_CLI_TOKEN=a098a098...
```

> Increasing minor or mayor version

``` sh
# for minor
make publish-orbs ORB_VERSION=minor CIRCLECI_CLI_TOKEN=a098a098...

# for mayor
make publish-orbs ORB_VERSION=mayor CIRCLECI_CLI_TOKEN=a098a098...
```


#### CircleCI CLI Tool Setup

```
circleci setup
```

![image](https://user-images.githubusercontent.com/2305833/74728531-3a24d400-5243-11ea-8c39-2cef53f2d9fc.png)

