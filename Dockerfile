FROM ubuntu:14.04
MAINTAINER InAcademia Team, tech@inacademia.org

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    python-dev \
    python-pip

COPY requirements.txt start.sh /tmp/openid-mdq/
RUN pip install -r /tmp/openid-mdq/requirements.txt && \
    pip install git+https://github.com/its-dirg/openid-mdq.git@v0.0.1#egg=openid-mdq

EXPOSE 8089

ENTRYPOINT ["/tmp/openid-mdq/start.sh"]
