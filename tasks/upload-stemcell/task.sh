#!/bin/bash

set -eu

# Copyright 2017-Present Pivotal Software, Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function main() {
  local cwd=$(pwd)
  local stemcell=$(find ${cwd}/stemcell/*.tgz)

  if [ -n ${stemcell} ]; then
    echo "stemcell not found."
    exit 1
  fi
  
  printf "Uploading %s to %s ...\n" "${stemcell}" "${OPSMAN_HOST}"
#    om-linux --target "https://${OPSMAN_HOST}" \
#        --skip-ssl-validation \
#        --username "${OPSMAN_USERNAME}" \
#        --password "${OPSMAN_PASSWORD}" \
#        upload-stemcell \
#        --stemcell "${stemcell}"
  done
}

main
