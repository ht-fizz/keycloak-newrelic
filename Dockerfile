FROM jboss/keycloak:3.4.3.Final

ENV NR_AGENT_VERSION 3.30.1

ENV NR_ZIP newrelic-java-${NR_AGENT_VERSION}.zip

RUN curl -o ${NR_ZIP} https://download.newrelic.com/newrelic/java-agent/newrelic-agent/${NR_AGENT_VERSION}/${NR_ZIP}; unzip ${NR_ZIP}

RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -javaagent:/opt/jboss/newrelic/newrelic.jar\"" >> /opt/jboss/keycloak/bin/standalone.conf
