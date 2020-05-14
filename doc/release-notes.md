*After branching off for a major version release of Youngseokcoin Core, use this
template to create the initial release notes draft.*

*The release notes draft is a temporary file that can be added to by anyone. See
[/doc/developer-notes.md#release-notes](/doc/developer-notes.md#release-notes)
for the process.*

*Create the draft, named* "*version* Release Notes Draft"
*(e.g. "0.20.0 Release Notes Draft"), as a collaborative wiki in:*

https://github.com/youngseokcoin-core/youngseokcoin-devwiki/wiki/

*Before the final release, move the notes back to this git repository.*

*version* Release Notes Draft
===============================

Youngseokcoin Core version *version* is now available from:

  <https://youngseokcoincore.org/bin/youngseokcoin-core-*version*/>

This release includes new features, various bug fixes and performance
improvements, as well as updated translations.

Please report bugs using the issue tracker at GitHub:

  <https://github.com/youngseokcoin/youngseokcoin/issues>

To receive security and update notifications, please subscribe to:

  <https://youngseokcoincore.org/en/list/announcements/join/>

How to Upgrade
==============

If you are running an older version, shut it down. Wait until it has completely
shut down (which might take a few minutes for older versions), then run the
installer (on Windows) or just copy over `/Applications/Youngseokcoin-Qt` (on Mac)
or `youngseokcoind`/`youngseokcoin-qt` (on Linux).

Upgrading directly from a version of Youngseokcoin Core that has reached its EOL is
possible, but it might take some time if the datadir needs to be migrated. Old
wallet versions of Youngseokcoin Core are generally supported.

Compatibility
==============

Youngseokcoin Core is supported and extensively tested on operating systems using
the Linux kernel, macOS 10.12+, and Windows 7 and newer. It is not recommended
to use Youngseokcoin Core on unsupported systems.

Youngseokcoin Core should also work on most other Unix-like systems but is not
as frequently tested on them.

From Youngseokcoin Core 0.20.0 onwards, macOS versions earlier than 10.12 are no
longer supported. Additionally, Youngseokcoin Core does not yet change appearance
when macOS "dark mode" is activated.

In addition to previously supported CPU platforms, this release's pre-compiled
distribution provides binaries for the RISC-V platform.

Notable changes
===============

P2P and network changes
-----------------------

Updated RPCs
------------

Changes to Wallet or GUI related RPCs can be found in the GUI or Wallet section below.

New RPCs
--------

Build System
------------

Updated settings
----------------

Changes to Wallet or GUI related settings can be found in the GUI or Wallet  section below.

New settings
------------

Wallet
------

#### Wallet RPC changes

- The `upgradewallet` RPC replaces the `-upgradewallet` command line option.
  (#15761)
- The `settxfee` RPC will fail if the fee was set higher than the `-maxtxfee`
  command line setting. The wallet will already fail to create transactions
  with fees higher than `-maxtxfee`. (#18467)

GUI changes
-----------

Low-level changes
=================

Tests
-----

Credits
=======

Thanks to everyone who directly contributed to this release:


As well as to everyone that helped with translations on
[Transifex](https://www.transifex.com/youngseokcoin/youngseokcoin/).
