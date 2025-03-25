BUILDKIT_PROGRESS=plain docker buildx build \
	-t masterhapero/dt-duckpack-ros-commons:ente-arm64v8 \
	--platform linux/arm64 \
	--build-arg ARCH=arm64v8 \
	--build-arg DISTRO=ente \
	--build-arg DOCKER_REGISTRY=docker.io \
	--build-arg TARGETARCH=linux/arm64 \
	--build-arg TARGETPLATFORM=linux/arm64 \
	--build-arg BASE_ORGANIZATION=masterhapero \
	--build-arg BASE_REPOSITORY=dt-duckpack-py38-environment \
	--build-arg BASE_TAG=ente-arm64v8 \
	--build-arg OS_DISTRO=bionic \
	--build-arg PROJECT_NAME=dt-ros-commons \
	--build-arg PROJECT_MAINTAINER="sampsa.ranta@gmail.com" \
	--build-arg PROJECT_DESCRIPTION="Duckpack ROS image" \
	--build-arg PROJECT_FORMAT_VERSION=4 \
	--build-arg SOURCE_DIR=/code/src \
	--build-arg ROS_DISTRO="noetic" \
	--no-cache \
	.

