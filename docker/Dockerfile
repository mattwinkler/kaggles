FROM leandatascience/jupyterlabconfiguration

ARG Competition

ENV MAIN_PATH=/usr/local/bin/jpl_config
#ENV LIBS_PATH=${MAIN_PATH}/libs
#ENV CONFIG_PATH=${MAIN_PATH}/config
#ENV NOTEBOOK_PATH=${MAIN_PATH}/notebooks

COPY competitions/${Competition}/requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . ${MAIN_PATH}

EXPOSE 8888

CMD cd ${MAIN_PATH} && sh run_jupyter.sh
