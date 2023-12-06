# Use the official micromamba image as a base
FROM mambaorg/micromamba:latest

# Set the base layer for micromamba
USER root

# Update package manager and install essential build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    procps \
    wget

ARG MAMBA_ROOT_PREFIX=/opt/conda

# Add /opt/conda/bin to the PATH
ENV PATH $MAMBA_ROOT_PREFIX/bin:$PATH

# Install bioconda-utils and grayskull using micromamba
RUN micromamba install -y -c conda-forge -c bioconda \
    bioconda-utils \
    pip \
    --prefix $MAMBA_ROOT_PREFIX \
    && micromamba clean --all --yes

# Install grayskull using pip
RUN pip install grayskull