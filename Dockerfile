# MULTISTAGE APPROACH

# STAGE 1: BUILD STAGE
FROM python:3.11 AS build_stage
WORKDIR /app
COPY token token
RUN git clone https://pat:$(cat token)@gitlab.com/sl0wc0der/top_secret_repo.git
RUN rm token

# STAGE 2: FINAL STAGE
FROM python:3.11
WORKDIR /app
COPY --from=build_stage /app/top_secret_repo /app/top_secret_repo

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD ["/bin/bash"]

#########################################################################

# # ORIGINAL DOCKERFILE
# FROM python:3.11
# WORKDIR /app
# COPY token token
# RUN git clone https://pat:$(cat token)@gitlab.com/sl0wc0der/top_secret_repo.git
# RUN rm token

# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# CMD ["/bin/bash"]