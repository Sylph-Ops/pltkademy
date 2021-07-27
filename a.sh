#!/bin/bash
find . -name '*.conf' | head -n 100 | sort | xargs sed -i -- 's/nginx-01.com/nginx-02.com/g'

exit