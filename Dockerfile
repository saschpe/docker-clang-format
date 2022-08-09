FROM saschpe/clang:14.0.6-r1
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"

# This is based on the package shipped with Alpine Linux in the base image.
LABEL description="clang-format ${clang_version}"

RUN apk add --no-cache clang-extra-tools \
    && clang-format --version

ENTRYPOINT ["clang-format"]
