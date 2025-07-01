# Install dependencies for riscv-gnu-toolchain and xv6-riscv
RUN apt-get update && apt-get install -y \
	build-essential \
	git \
	python3 \
	python3-pip \
	wget \
	curl \
	&& rm -rf /var/lib/apt/lists/*

# Copy the pre-built riscv-gnu-toolchain
COPY opt/riscv /opt/riscv

# Set env variables
ENV PATH="/opt/riscv/bin:${PATH}"

# Set working directory
WORKDIR /workspace

# Default command
CMD ["bash"]
