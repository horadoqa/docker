docker build -t robotframework-image .

docker run --rm robotframework-image

docker run -it robotframework-image /bin/bash