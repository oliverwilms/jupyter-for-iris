FROM jupyter/minimal-notebook

# install IRIS DBAPI driver
COPY  intersystems_irispython-3.2.0-py3-none-any.whl /
RUN pip install /*.whl

# install python requirements
COPY  requirements.txt /
RUN pip install -r /requirements.txt
