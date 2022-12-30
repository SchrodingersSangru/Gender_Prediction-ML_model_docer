# FROM python:3.7

# WORKDIR /ML-streamlit_docker_project


# COPY requirements.txt ./requirements.txt

# RUN pip install -r requirements.txt



# # COPY ./ ML-streamlit_docker_project/


# # CMD ["app.py"]
# # 


FROM python:3.9-slim


RUN mkdir ML-streamlit_docker_project

COPY . /ML-streamlit_docker_project


WORKDIR /ML-streamlit_docker_project

RUN pip3 install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "app.py"]