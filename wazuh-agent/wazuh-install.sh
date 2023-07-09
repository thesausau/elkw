#! /bin/bash

WAZUH_MANAGER='wazuh' WAZUH_AGENT_GROUP='default' yum -y install 'https://packages.wazuh.com/4.x/yum/wazuh-agent-4.0.4-1.x86_64.rpm'
/etc/init.d/wazuh-agent start
/var/ossec/bin/agent-auth -m wazuh -A $HOSTNAME
/etc/init.d/wazuh-agent restart
tail -f /dev/null
