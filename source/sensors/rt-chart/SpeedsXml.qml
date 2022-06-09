

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
        + "<row><speedTrap>11</speedTrap><driver>Welding</driver><speed>19.5</speed></row>"
        + "<row><speedTrap>12</speedTrap><driver>Welding</driver><speed>20.5</speed></row>"
        + "<row><speedTrap>13</speedTrap><driver>Welding</driver><speed>21.5</speed></row>"
        + "<row><speedTrap>14</speedTrap><driver>Welding</driver><speed>22.5</speed></row>"
        + "<row><speedTrap>15</speedTrap><driver>Welding</driver><speed>23.5</speed></row>"
        + "<row><speedTrap>16</speedTrap><driver>Welding</driver><speed>24.5</speed></row>"
        + "<row><speedTrap>17</speedTrap><driver>Welding</driver><speed>25.5</speed></row>"
        + "<row><speedTrap>18</speedTrap><driver>Welding</driver><speed>26.5</speed></row>"
        + "<row><speedTrap>19</speedTrap><driver>Welding</driver><speed>10.5</speed></row>"
        + "<row><speedTrap>20</speedTrap><driver>Welding</driver><speed>11.5</speed></row>"
        + "<row><speedTrap>21</speedTrap><driver>Welding</driver><speed>12.5</speed></row>"
        + "<row><speedTrap>22</speedTrap><driver>Welding</driver><speed>13.5</speed></row>"
        + "<row><speedTrap>23</speedTrap><driver>Welding</driver><speed>14.5</speed></row>"
        + "<row><speedTrap>24</speedTrap><driver>Welding</driver><speed>15.5</speed></row>"
        + "<row><speedTrap>25</speedTrap><driver>Welding</driver><speed>16.5</speed></row>"
        + "<row><speedTrap>26</speedTrap><driver>Welding</driver><speed>17.5</speed></row>"
        + "<row><speedTrap>27</speedTrap><driver>Welding</driver><speed>18.5</speed></row>"
        + "<row><speedTrap>28</speedTrap><driver>Welding</driver><speed>19.5</speed></row>"
        + "<row><speedTrap>29</speedTrap><driver>Welding</driver><speed>20.5</speed></row>"
        + "<row><speedTrap>30</speedTrap><driver>Welding</driver><speed>21.5</speed></row>"
        + "<row><speedTrap>31</speedTrap><driver>Welding</driver><speed>22.5</speed></row>"
        + "<row><speedTrap>32</speedTrap><driver>Welding</driver><speed>23.5</speed></row>"
        + "<row><speedTrap>33</speedTrap><driver>Welding</driver><speed>24.5</speed></row>"
        + "<row><speedTrap>34</speedTrap><driver>Welding</driver><speed>25.5</speed></row>"
        + "<row><speedTrap>35</speedTrap><driver>Welding</driver><speed>26.5</speed></row>"
        + "<row><speedTrap>36</speedTrap><driver>Welding</driver><speed>27.5</speed></row>"
        + "<row><speedTrap>37</speedTrap><driver>Welding</driver><speed>28.5</speed></row>"
        + "<row><speedTrap>38</speedTrap><driver>Welding</driver><speed>29.5</speed></row>"
        + "<row><speedTrap>39</speedTrap><driver>Welding</driver><speed>30.5</speed></row>"
        + "<row><speedTrap>40</speedTrap><driver>Welding</driver><speed>31.5</speed></row>"
        + "<row><speedTrap>41</speedTrap><driver>Welding</driver><speed>32.5</speed></row>"
        + "<row><speedTrap>42</speedTrap><driver>Welding</driver><speed>33.5</speed></row>"
        + "<row><speedTrap>43</speedTrap><driver>Welding</driver><speed>34.5</speed></row>"
        + "<row><speedTrap>44</speedTrap><driver>Welding</driver><speed>35.5</speed></row>"
        + "<row><speedTrap>45</speedTrap><driver>Welding</driver><speed>36.5</speed></row>"
        + "<row><speedTrap>46</speedTrap><driver>Welding</driver><speed>37.5</speed></row>"
        + "<row><speedTrap>47</speedTrap><driver>Welding</driver><speed>38.5</speed></row>"
        + "<row><speedTrap>48</speedTrap><driver>Welding</driver><speed>39.5</speed></row>"
        + "<row><speedTrap>49</speedTrap><driver>Welding</driver><speed>40.5</speed></row>"
        + "<row><speedTrap>50</speedTrap><driver>Welding</driver><speed>41.5</speed></row>"
        + "<row><speedTrap>51</speedTrap><driver>Welding</driver><speed>42.5</speed></row>"
        + "<row><speedTrap>52</speedTrap><driver>Welding</driver><speed>43.5</speed></row>"
        + "<row><speedTrap>53</speedTrap><driver>Welding</driver><speed>44.5</speed></row>"
        + "<row><speedTrap>54</speedTrap><driver>Welding</driver><speed>45.5</speed></row>"
        + "<row><speedTrap>55</speedTrap><driver>Welding</driver><speed>46.5</speed></row>"
        + "<row><speedTrap>56</speedTrap><driver>Welding</driver><speed>47.5</speed></row>"
        + "<row><speedTrap>57</speedTrap><driver>Welding</driver><speed>48.5</speed></row>"
        + "<row><speedTrap>58</speedTrap><driver>Welding</driver><speed>49.5</speed></row>"
        + "<row><speedTrap>59</speedTrap><driver>Welding</driver><speed>50.5</speed></row>"
        + "<row><speedTrap>60</speedTrap><driver>Welding</driver><speed>51.5</speed></row>"
        + "<row><speedTrap>61</speedTrap><driver>Welding</driver><speed>52.5</speed></row>"
        + "<row><speedTrap>62</speedTrap><driver>Welding</driver><speed>53.5</speed></row>"
        + "<row><speedTrap>63</speedTrap><driver>Welding</driver><speed>54.5</speed></row>"
        + "<row><speedTrap>64</speedTrap><driver>Welding</driver><speed>55.5</speed></row>"
        + "<row><speedTrap>65</speedTrap><driver>Welding</driver><speed>56.5</speed></row>"
        + "<row><speedTrap>66</speedTrap><driver>Welding</driver><speed>57.5</speed></row>"
        + "<row><speedTrap>67</speedTrap><driver>Welding</driver><speed>58.5</speed></row>"
        + "<row><speedTrap>68</speedTrap><driver>Welding</driver><speed>59.5</speed></row>"
        + "<row><speedTrap>69</speedTrap><driver>Welding</driver><speed>60.5</speed></row>"
        + "<row><speedTrap>70</speedTrap><driver>Welding</driver><speed>61.5</speed></row>"
        + "<row><speedTrap>71</speedTrap><driver>Welding</driver><speed>62.5</speed></row>"
        + "<row><speedTrap>72</speedTrap><driver>Welding</driver><speed>63.5</speed></row>"
        + "<row><speedTrap>73</speedTrap><driver>Welding</driver><speed>64.5</speed></row>"
        + "<row><speedTrap>74</speedTrap><driver>Welding</driver><speed>65.5</speed></row>"
        + "<row><speedTrap>75</speedTrap><driver>Welding</driver><speed>66.5</speed></row>"
        + "<row><speedTrap>76</speedTrap><driver>Welding</driver><speed>67.5</speed></row>"
        + "<row><speedTrap>77</speedTrap><driver>Welding</driver><speed>68.5</speed></row>"
        + "<row><speedTrap>78</speedTrap><driver>Welding</driver><speed>69.5</speed></row>"
        + "<row><speedTrap>79</speedTrap><driver>Welding</driver><speed>70.5</speed></row>"
        + "<row><speedTrap>80</speedTrap><driver>Welding</driver><speed>71.5</speed></row>"
        + "<row><speedTrap>81</speedTrap><driver>Welding</driver><speed>72.5</speed></row>"
        + "<row><speedTrap>82</speedTrap><driver>Welding</driver><speed>73.5</speed></row>"
        + "<row><speedTrap>83</speedTrap><driver>Welding</driver><speed>74.5</speed></row>"
        + "<row><speedTrap>84</speedTrap><driver>Welding</driver><speed>75.5</speed></row>"
        + "<row><speedTrap>85</speedTrap><driver>Welding</driver><speed>76.5</speed></row>"
        + "<row><speedTrap>86</speedTrap><driver>Welding</driver><speed>77.5</speed></row>"
        + "<row><speedTrap>87</speedTrap><driver>Welding</driver><speed>78.5</speed></row>"
        + "<row><speedTrap>88</speedTrap><driver>Welding</driver><speed>79.5</speed></row>"
        + "<row><speedTrap>89</speedTrap><driver>Welding</driver><speed>80.5</speed></row>"
        + "<row><speedTrap>90</speedTrap><driver>Welding</driver><speed>81.5</speed></row>"
        + "<row><speedTrap>91</speedTrap><driver>Welding</driver><speed>82.5</speed></row>"
        + "<row><speedTrap>92</speedTrap><driver>Welding</driver><speed>83.5</speed></row>"
        + "<row><speedTrap>93</speedTrap><driver>Welding</driver><speed>84.5</speed></row>"
        + "<row><speedTrap>94</speedTrap><driver>Welding</driver><speed>85.5</speed></row>"
        + "<row><speedTrap>95</speedTrap><driver>Welding</driver><speed>86.5</speed></row>"
        + "<row><speedTrap>96</speedTrap><driver>Welding</driver><speed>87.5</speed></row>"
        + "<row><speedTrap>97</speedTrap><driver>Welding</driver><speed>88.5</speed></row>"
        + "<row><speedTrap>98</speedTrap><driver>Welding</driver><speed>89.5</speed></row>"
        + "<row><speedTrap>99</speedTrap><driver>Welding</driver><speed>90.5</speed></row>"
        + "<row><speedTrap>100</speedTrap><driver>Welding</driver><speed>91.5</speed></row>"
        + "<row><speedTrap>101</speedTrap><driver>Welding</driver><speed>92.5</speed></row>"
        + "<row><speedTrap>102</speedTrap><driver>Welding</driver><speed>93.5</speed></row>"

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
