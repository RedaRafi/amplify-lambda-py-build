docker run -it -v "$PWD"/amplify/backend/function/hellopy/src:/src python:3 bash -c "pip install -r './src/requirements.txt' --upgrade  --target ./src"
amplify push
