# run the python3 docker container
# mounting the lambda function's src folder
# run pip in the container using the lambda function's requirements file and outputting
# the Linux dependencies to the lambda function's src folder

export PIPENV_VERBOSITY=-1

docker run -it \
    -v "$PWD"/amplify/backend/function/hellopy/src:/src \
    python:3 \
    bash -c "pip install -r './src/requirements.txt' --upgrade --target ./src"

amplify push
