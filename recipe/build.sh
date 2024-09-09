#!/bin/bash

export DISABLE_AUTOBREW=1
export OMPI_MCA_plm=isolated
export OMPI_MCA_btl_vader_single_copy_mechanism=none
export OMPI_MCA_rmaps_base_oversubscribe=yes

# shellcheck disable=SC2086
${R} CMD INSTALL --build --configure-args="--with-Rmpi-include=$PREFIX/include --with-Rmpi-libpath=$PREFIX/lib --with-Rmpi-type=OPENMPI" . ${R_ARGS}
