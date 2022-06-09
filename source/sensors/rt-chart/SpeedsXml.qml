

/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Charts module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick.XmlListModel 2.0

//![1]
XmlListModel {
    // Hard-coded test data
    xml: "<results><row><speedTrap>0</speedTrap><driver>Welding</driver><speed>0</speed></row>"
        + "<row><speedTrap>0</speedTrap><driver>Welding</driver><speed>5.2</speed></row>"
        + "<row><speedTrap>1</speedTrap><driver>Welding</driver><speed>8.12</speed></row>"
        + "<row><speedTrap>2</speedTrap><driver>Welding</driver><speed>10</speed></row>"
        + "<row><speedTrap>3</speedTrap><driver>Welding</driver><speed>11.5</speed></row>"
        + "<row><speedTrap>4</speedTrap><driver>Welding</driver><speed>12.5</speed></row>"
        + "<row><speedTrap>5</speedTrap><driver>Welding</driver><speed>13.5</speed></row>"
        + "<row><speedTrap>6</speedTrap><driver>Welding</driver><speed>14.5</speed></row>"
        + "<row><speedTrap>7</speedTrap><driver>Welding</driver><speed>15.5</speed></row>"
        + "<row><speedTrap>8</speedTrap><driver>Welding</driver><speed>16.5</speed></row>"
        + "<row><speedTrap>9</speedTrap><driver>Welding</driver><speed>17.5</speed></row>"
        + "<row><speedTrap>10</speedTrap><driver>Welding</driver><speed>18.5</speed></row>"

         + "</results>"
    //![2]
    query: "/results/row"

    XmlRole {
        name: "speedTrap"
        query: "speedTrap/string()"
    }
    XmlRole {
        name: "driver"
        query: "driver/string()"
    }
    XmlRole {
        name: "speed"
        query: "speed/string()"
    }
} //![2]
