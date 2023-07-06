FROM kibana:7.9.3
WORKDIR /usr/share/kibana
RUN chown -R kibana:kibana optimize && \
    chown -R kibana:kibana plugins && \
    bin/kibana-plugin install "https://packages.wazuh.com/4.x/ui/kibana/wazuh_kibana-4.0.4_7.9.3-1.zip"
