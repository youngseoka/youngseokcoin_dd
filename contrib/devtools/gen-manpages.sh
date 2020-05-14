#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Youngseokcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

YOUNGSEOKCOIND=${YOUNGSEOKCOIND:-$BINDIR/youngseokcoind}
YOUNGSEOKCOINCLI=${YOUNGSEOKCOINCLI:-$BINDIR/youngseokcoin-cli}
YOUNGSEOKCOINTX=${YOUNGSEOKCOINTX:-$BINDIR/youngseokcoin-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/youngseokcoin-wallet}
YOUNGSEOKCOINQT=${YOUNGSEOKCOINQT:-$BINDIR/qt/youngseokcoin-qt}

[ ! -x $YOUNGSEOKCOIND ] && echo "$YOUNGSEOKCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a YSCVER <<< "$($YOUNGSEOKCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for youngseokcoind if --version-string is not set,
# but has different outcomes for youngseokcoin-qt and youngseokcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$YOUNGSEOKCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $YOUNGSEOKCOIND $YOUNGSEOKCOINCLI $YOUNGSEOKCOINTX $WALLET_TOOL $YOUNGSEOKCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${YSCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${YSCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
