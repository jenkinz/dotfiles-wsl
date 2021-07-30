#!/usr/bin/env bash
# This file runs once at login.

# Add all local binary paths to the system path.
export PATH="${PATH}:${HOME}/.local/bin"

# Add arm-none-eabi-toolchain to the system path.
export PATH="${PATH}:/usr/gcc-arm-none-eabi-10-2020-q4-major/bin"

# Set environment variables required for STM32 embedded builds.
export STM32_TOOLCHAIN_PATH="/usr/gcc-arm-none-eabi-10-2020-q4-major"

# Default programs to run.
export EDITOR="vim"

# Add colors to the less and man commands.
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

# If bash is the login shell, then source ~/.bashrc if it exists.
echo "${0}" | grep "bash$" >/dev/null \
  && [ -f "${HOME}/.bashrc" ] && source "${HOME}/.bashrc"
