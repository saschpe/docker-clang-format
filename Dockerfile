FROM saschpe/clang:5.0.1
LABEL maintainer="Sascha Peilicke <sascha@peilicke.de"

# This is based on the package shipped with Alpine Linux in the base image.
LABEL description="Clang-Format ${clang_version}"

RUN clang-format --version

ENTRYPOINT ["clang-format"]
