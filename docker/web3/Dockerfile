ARG DOCKER_PREBUILD_IMAGE 
FROM ${DOCKER_PREBUILD_IMAGE} 
USER root

RUN apt-get update \
 && apt-get dist-upgrade -y \
 && apt-get install jq -y \
 && apt-get clean \
 && echo "Finished installing dependencies"

RUN if [ "$MANUAL_BUILD_WEB3" = true ] ; then \
        cd /code/godwoken-web3 ;\
    else \
        cd /godwoken-web3 ;\
        yarn && yarn workspace @godwoken-web3/godwoken tsc && yarn workspace @godwoken-web3/api-server tsc ;\
fi

EXPOSE 8024

CMD ["node", "version"]
