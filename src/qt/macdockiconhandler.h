// Copyright (c) 2011-2018 The Youngseokcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef YOUNGSEOKCOIN_QT_MACDOCKICONHANDLER_H
#define YOUNGSEOKCOIN_QT_MACDOCKICONHANDLER_H

#include <QObject>

/** macOS-specific Dock icon handler.
 */
class MacDockIconHandler : public QObject
{
    Q_OBJECT

public:
    static MacDockIconHandler *instance();
    static void cleanup();

Q_SIGNALS:
    void dockIconClicked();

private:
    MacDockIconHandler();
};

#endif // YOUNGSEOKCOIN_QT_MACDOCKICONHANDLER_H
