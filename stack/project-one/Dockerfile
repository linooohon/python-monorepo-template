FROM python:slim

# add packages
COPY ./dist/deps/*.whl ./dependencies/
COPY ./dist/*.whl ./

# install packages
RUN pip install --upgrade pip \
    && pip install --no-cache-dir dependencies/*.whl && rm -rf dependencies/*.whl \
    && pip install --no-cache-dir *.whl && rm -rf *.whl

# run
CMD ["python", "-m", "service_two.main"]
