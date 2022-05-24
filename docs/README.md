Run live preview server :
    docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material

Build the website:
    docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build

deployments:
    deployment-dev is for developement purposes and is used by deploy-kind to avoid uploading and downloading container image
    manifests/deployment.yaml is used for production


