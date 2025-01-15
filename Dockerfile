FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /kaitai

RUN apt-get update && \
	apt-get install -y --no-install-recommends curl unzip && \
	curl -k -LO https://github.com/kaitai-io/kaitai_struct_compiler/releases/download/0.10/kaitai-struct-compiler_0.10_all.deb && \
	apt-get install ./kaitai-struct-compiler_0.10_all.deb -y
