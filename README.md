# Building and testing bioconda recipes in Gitpod

This repository contains a Dockerfile gitpod configuration for creating and testing bioconda recipes. 

Continuous intregartion is set up to build and push to Dockerhub on merged to main or each day at 00:00 UTC.

## How to get started

To use this repository to build and test bioconda recipes, follow these steps:

1. Open a new Gitpod session from this repository. The easiest way to do this is to install the Gitpod browser plugin and click the green button on the top right corner. This Gitpod session comes preinstalled with all the tools you need to get started:
    - conda
    - mamba
    - grayskull
    - bioconda-utils

2. The Gitpod environment by default enters a clone of the bioconda recipes repository, so you can directly get started with your recipe. Create a branch and either modify an existing recipe or create a new one using `conda skeleton` or `grayskull`.

3. To test if your recipe lints, run `bioconda-utils lint --git-range master` or `bioconda-utils lint --packages mypackage`.

4. To test if your recipe works, run `bioconda-utils build --docker --mulled-test --git-range master` or `bioconda-utils build --docker --mulled-test --packages mypackage`

5. Add your fork of bioconda recipes as a remote: `git remote add [name for your remote] [URL of your fork]`

6. Push your changes to your fork to open a Pull Request: `git push -u [name for your remote] [name of your branch]`

That is it, your recipe should now be on your fork and branch for you to be able to open a pull request to the official bioconda recipes repo. 

![image](https://github.com/FloWuenne/bioconda_recipepod/assets/11639154/726fa438-e230-4781-9414-83b8bdf73baf)