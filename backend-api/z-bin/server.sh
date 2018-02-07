#!/bin/bash

# Author: Omer
# Revised by: RKing
# Logic Solutions Co. Ltd.
# [RKING]20161009: Just leave system server for production, but other environment will include api-server
##########################

function startApp {
  (java -Dspring.profiles.active=$1 $3 -jar ./apps/$2.jar &
   echo $! > ./apps/do_not_delete_$2.pid )>/dev/null
}

function stopApp {
  value=`cat apps/do_not_delete_$1.pid`
  sudo kill -9 $value
  rm -fr apps/do_not_delete_$1.pid
}

function stopAll {
  echo "Stopping all applications"
  # stop all the applications
  stopApp system-server
  stopApp api-server
}

function startAll4Dev {
  # first make sure all the applications are stoped
  stopAll
  echo "Starting all applications for Development Environment"
  # then start all the applications
  startApp default,dev system-server -agentlib:jdwp=transport=dt_socket,address=9090,server=y,suspend=n
  startApp default api-server
}


function startAll4Alpha {
  # first make sure all the applications are stoped
  stopAll
  echo "Starting all applications for Alpha Environment"
  # then start all the applications
  startApp default api-server
  startApp default,alp system-server -agentlib:jdwp=transport=dt_socket,address=9090,server=y,suspend=n  
}

function startAll4Beta {
  # first make sure all the applications are stoped
  stopAll
  echo "Starting all applications for Beta Environment"
  # then start all the applications
  startApp default,bta system-server -agentlib:jdwp=transport=dt_socket,address=9090,server=y,suspend=n
  startApp default api-server
}

function startAll4Staging {
  # first make sure all the applications are stoped
  stopAll
  echo "Starting all applications for Staging Environment"
  # then start all the applications
  startApp default,stg system-server
  startApp default api-server
}

function startAll4Production {
  # first make sure all the applications are stoped
  stopAll
  echo "Starting all applications for Production Environment"
  # then start all the applications
  startApp default,prd system-server
  startApp default api-server
}

build="none"
mode='no_select'

usage="
usage :
      $(basename "$0") [-h] [-m mode] [-b]

description:
 
      Server release commands.

where:
      -h  help
      -m  select the mode [startall4dev | startall4alpha | startall4beta | startall4staging | startall4production] [stopall]
      -b  build servers
          

example:
      build all the servers:  ./server.sh -b
      restarts all servers:   ./server.sh -m [startall4dev | startall4alpha | startall4beta | startall4staging | startall4production]
      stops all the servers:  ./server.sh -m stopall
      build and restarts all servers: ./server.sh -m [startall4dev | startall4alpha | startall4beta | startall4staging | startall4production] -b
"

while getopts ':hm:bd:u:p:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    m) 
       if [ "$OPTARG" == 'startall4dev' ]; then
          mode='startall4dev'
       elif [ "$OPTARG" == 'startall4alpha' ]; then
          mode='startall4alpha'
       elif [ "$OPTARG" == 'startall4beta' ]; then
          mode='startall4beta'
       elif [ "$OPTARG" == 'startall4staging' ]; then
          mode='startall4staging'
       elif [ "$OPTARG" == 'startall4production' ]; then
          mode='startall4production'
       elif [ "$OPTARG" == 'stopall' ]; then
          mode='stopall'
       else
          echo "Invalid argument for -m"
          echo "$usage"
       fi
       ;;
    b) 
        build='all'
       ;;
    :) printf "missing argument for -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "illegal option: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done

if [[ $build == 'all' ]]; then
  ./tools/apache-maven-3.3.9/bin/mvn -f ../pom.xml clean install
  cp ../api-server/target/*.jar ./apps/api-server.jar
  cp ../system-server/target/*.jar ./apps/system-server.jar

  if [[ $mode == 'startall4dev' ]]; then
    startAll4Dev
  elif [[ $mode == 'startall4alpha' ]]; then
    startAll4Alpha
  elif [[ $mode == 'startall4beta' ]]; then
    startAll4Beta
  elif [[ $mode == 'startall4staging' ]]; then
    startAll4Staging
  elif [[ $mode == 'startall4production' ]]; then
    startAll4Production        
  elif [[ $mode == 'stopall' ]]; then
    stopAll
  fi

else
  if [[ $mode == 'startall4dev' ]]; then
    startAll4Dev
  elif [[ $mode == 'startall4alpha' ]]; then
    startAll4Alpha
  elif [[ $mode == 'startall4beta' ]]; then
    startAll4Beta
  elif [[ $mode == 'startall4staging' ]]; then
    startAll4Staging
  elif [[ $mode == 'startall4production' ]]; then
    startAll4Production
  elif [[ $mode == 'stopall' ]]; then
    stopAll
  fi

fi
shift $((OPTIND - 1))

