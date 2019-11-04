#!/usr/bin/env bash

preFlight () {
    echo "* Preflight..."
    for cli in python;
    do
        if ! type "$cli" > /dev/null 2>&1; then echo "ERROR: $cli is not installed, or in the PATH. Aborting."; fi
    done
    echo "  - passed"
}

serveReport () {
    echo see report on: http://localhost:8000
    cd html
    python -m SimpleHTTPServer 8000
}

##### Program #####
preFlight
serveReport
