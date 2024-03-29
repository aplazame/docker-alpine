
# circle orbs

ifndef ORB_VERSION
  export ORB_VERSION=patch
endif

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

validate-orbs:
	circleci orb validate ./circle-orbs/s3.yml
	circleci orb validate ./circle-orbs/rsync.yml

publish-orbs: validate-orbs
	circleci orb publish increment ./circle-orbs/s3.yml aplazame/s3 ${ORB_VERSION}
	circleci orb publish increment ./circle-orbs/rsync.yml aplazame/rsync ${ORB_VERSION}

publish-s3-orb:
	circleci orb validate ./circle-orbs/s3.yml
	circleci orb publish increment ./circle-orbs/s3.yml aplazame/s3 ${ORB_VERSION}

test: validate-orbs