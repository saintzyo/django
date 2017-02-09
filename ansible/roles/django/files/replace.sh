#!/bin/bash

/usr/bin/find /home/django/tasks/tasks1 -type f -exec sed -i 's#{{\ project_name\ }}#task1#g' {} +;