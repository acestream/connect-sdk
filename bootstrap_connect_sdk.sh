#!/bin/sh
set -e

ROOT=$(readlink -f $(dirname $0))

if [ ! -f ${ROOT}/modules/firetv/libs/AmazonFling.jar ]; then
    echo "Download AmazonFling.jar"
    mkdir -p ${ROOT}/modules/firetv/libs
    cd ${ROOT}/modules/firetv/libs
    wget http://acestream.org/downloads/bintray/android/connect-sdk/AmazonFling.jar
fi

if [ ! -f ${ROOT}/modules/firetv/libs/WhisperPlay.jar ]; then
    echo "Download WhisperPlay.jar"
    mkdir -p ${ROOT}/modules/firetv/libs
    cd ${ROOT}/modules/firetv/libs
    wget http://acestream.org/downloads/bintray/android/connect-sdk/WhisperPlay.jar
fi

echo "ConnectSDK bootstrap done"