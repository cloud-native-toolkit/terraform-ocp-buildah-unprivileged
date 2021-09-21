#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd -P)
CHART_DIR=$(cd "${SCRIPT_DIR}/../chart"; pwd -P)

NAMESPACE="$1"

${BIN_DIR}/helm template --namespace "${NAMESPACE}" buildah-unprivileged "${CHART_DIR}/buildah-unprivileged" | \
  kubectl apply -n "${NAMESPACE}" -f -
