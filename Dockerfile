# References the linux/amd64 version of 1.11.2 for compatibility, 
# but you should definitely set a newer version at build-time through your
# workflow file
ARG DIGEST=b2c15d27457a960a0f5ee98d4d08ddc9080d98017bd720d02732ae44cfd1f6ae

FROM public.ecr.aws/docker/library/elixir@${DIGEST}

COPY sobelow.sh /sobelow.sh

ENV DIR=GITHUB_WORKSPACE

WORKDIR ${DIR}

ENTRYPOINT ["/sobelow.sh"]
