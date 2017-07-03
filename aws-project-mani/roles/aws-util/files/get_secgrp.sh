#!/bin/bash
cat /home/test/playbooks/aws-project/temp/secgrpinfo | jq ".security_groups[0].group_id"

