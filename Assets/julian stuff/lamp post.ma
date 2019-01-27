//Maya ASCII 2016 scene
//Name: lamp post.ma
//Last modified: Sat, Jan 26, 2019 06:05:26 PM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "1E5D3D75-5E49-7C54-A6A4-35B8B596112C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.142056971664431 18.96300740982722 14.388574708075911 ;
	setAttr ".r" -type "double3" -20.138352729580326 300.60000000000537 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3BFFB4B0-F246-FA3C-B367-0DB6E4EBFCE5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 33.617021387283813;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4A5D02C2-A343-7FAC-A443-EDBFAD00F81F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F7500390-0A44-8A13-1556-AFA0211E021E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "88F45813-B744-5E58-88DD-B8847C7A7DB2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9DF79D6A-0A49-80EF-6EFF-059B526ADF82";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "B8D3A45A-DA4C-B466-9A0D-0E98E70A81D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AFD22EF3-104A-D396-1372-57917E6086BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "87455F76-CD48-8CDD-48BE-A693C907CBBA";
	setAttr ".t" -type "double3" -0.91397192338630151 4.6797189119764706 -1.0660984780732967 ;
	setAttr ".s" -type "double3" 0.25034788589180007 1 0.25034788589180007 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "84DFD067-8B45-E4F5-A7C5-F0A47532BD12";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.65123730897903442 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 141 ".pt";
	setAttr ".pt[20]" -type "float3" -0.52268779 0.41056126 0.16983029 ;
	setAttr ".pt[21]" -type "float3" -0.4446249 0.41056126 0.32303864 ;
	setAttr ".pt[22]" -type "float3" -0.323039 0.41056126 0.44462425 ;
	setAttr ".pt[23]" -type "float3" -0.16983201 0.41056126 0.52268803 ;
	setAttr ".pt[24]" -type "float3" 4.8136833e-08 0.41056126 0.54958624 ;
	setAttr ".pt[25]" -type "float3" 0.16983064 0.41056126 0.52268803 ;
	setAttr ".pt[26]" -type "float3" 0.32303807 0.41056126 0.44462425 ;
	setAttr ".pt[27]" -type "float3" 0.44462347 0.41056126 0.32303855 ;
	setAttr ".pt[28]" -type "float3" 0.52268749 0.41056126 0.16983029 ;
	setAttr ".pt[29]" -type "float3" 0.54958636 0.41056126 -7.2205245e-07 ;
	setAttr ".pt[30]" -type "float3" 0.52268749 0.41056126 -0.16983193 ;
	setAttr ".pt[31]" -type "float3" 0.44462347 0.41056126 -0.323039 ;
	setAttr ".pt[32]" -type "float3" 0.32303792 0.41056126 -0.44462478 ;
	setAttr ".pt[33]" -type "float3" 0.16983064 0.41056126 -0.52268761 ;
	setAttr ".pt[34]" -type "float3" 4.8136833e-08 0.41056126 -0.54958624 ;
	setAttr ".pt[35]" -type "float3" -0.16983201 0.41056126 -0.52268761 ;
	setAttr ".pt[36]" -type "float3" -0.32303864 0.41056126 -0.44462478 ;
	setAttr ".pt[37]" -type "float3" -0.44462448 0.41056126 -0.32303873 ;
	setAttr ".pt[38]" -type "float3" -0.52268749 0.41056126 -0.16983193 ;
	setAttr ".pt[39]" -type "float3" -0.54958636 0.41056126 -7.2205245e-07 ;
	setAttr ".pt[41]" -type "float3" 0 0.60689282 0 ;
	setAttr ".pt[142]" -type "float3" 0.31995571 0.31217277 -0.10395294 ;
	setAttr ".pt[143]" -type "float3" 0.2721751 0.31189877 -0.19773367 ;
	setAttr ".pt[144]" -type "float3" 0.19775321 0.31155765 -0.2721613 ;
	setAttr ".pt[145]" -type "float3" 0.1039734 0.31118214 -0.31994945 ;
	setAttr ".pt[146]" -type "float3" 1.497521e-05 0.31080955 -0.33641902 ;
	setAttr ".pt[147]" -type "float3" -0.10394633 0.31047577 -0.31995812 ;
	setAttr ".pt[148]" -type "float3" -0.19773294 0.31021395 -0.27217561 ;
	setAttr ".pt[149]" -type "float3" -0.2721644 0.31004965 -0.19774777 ;
	setAttr ".pt[150]" -type "float3" -0.31995261 0.30999929 -0.10396163 ;
	setAttr ".pt[151]" -type "float3" -0.33641905 0.31006667 2.4958679e-06 ;
	setAttr ".pt[152]" -type "float3" -0.31995153 0.31024638 0.10396602 ;
	setAttr ".pt[153]" -type "float3" -0.27216247 0.31052023 0.19775078 ;
	setAttr ".pt[154]" -type "float3" -0.19773096 0.31086117 0.27217695 ;
	setAttr ".pt[155]" -type "float3" -0.10394515 0.31123698 0.31995794 ;
	setAttr ".pt[156]" -type "float3" 1.497521e-05 0.31160983 0.33641902 ;
	setAttr ".pt[157]" -type "float3" 0.10397217 0.31194329 0.31994939 ;
	setAttr ".pt[158]" -type "float3" 0.1977511 0.31220487 0.27216268 ;
	setAttr ".pt[159]" -type "float3" 0.2721729 0.31236917 0.19773641 ;
	setAttr ".pt[160]" -type "float3" 0.3199544 0.3124198 0.10395692 ;
	setAttr ".pt[161]" -type "float3" 0.33641905 0.31235221 2.4958679e-06 ;
	setAttr ".pt[162]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[163]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[164]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[165]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[166]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[167]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[168]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[169]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[170]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[171]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[172]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[173]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[174]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[175]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[176]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[177]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[178]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[179]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[180]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[181]" -type "float3" 0 -0.53140098 0 ;
	setAttr ".pt[182]" -type "float3" 0.96000278 0.31006321 -0.31199965 ;
	setAttr ".pt[183]" -type "float3" 0.81661415 0.3109971 -0.59337103 ;
	setAttr ".pt[184]" -type "float3" 0.59330302 0.31152487 -0.81666565 ;
	setAttr ".pt[185]" -type "float3" 0.31192574 0.31159398 -0.96002817 ;
	setAttr ".pt[186]" -type "float3" 2.0797987e-05 0.31119925 -1.0094299 ;
	setAttr ".pt[187]" -type "float3" -0.31188819 0.3103773 -0.96004009 ;
	setAttr ".pt[188]" -type "float3" -0.59327269 0.30921084 -0.81668448 ;
	setAttr ".pt[189]" -type "float3" -0.81659901 0.30781209 -0.59339046 ;
	setAttr ".pt[190]" -type "float3" -0.95999813 0.30631855 -0.31201154 ;
	setAttr ".pt[191]" -type "float3" -1.0094299 0.30487695 -8.1492384e-05 ;
	setAttr ".pt[192]" -type "float3" -0.96004605 0.30362737 0.31186303 ;
	setAttr ".pt[193]" -type "float3" -0.81667721 0.30269334 0.59328395 ;
	setAttr ".pt[194]" -type "float3" -0.59335208 0.30216527 0.81662798 ;
	setAttr ".pt[195]" -type "float3" -0.31193632 0.30209637 0.96002293 ;
	setAttr ".pt[196]" -type "float3" 2.0797987e-05 0.30249119 1.0094299 ;
	setAttr ".pt[197]" -type "float3" 0.31197479 0.30331197 0.96001053 ;
	setAttr ".pt[198]" -type "float3" 0.59338111 0.30447963 0.81660748 ;
	setAttr ".pt[199]" -type "float3" 0.81669176 0.30587834 0.59326386 ;
	setAttr ".pt[200]" -type "float3" 0.96005082 0.30737296 0.3118501 ;
	setAttr ".pt[201]" -type "float3" 1.0094299 0.30881467 -8.1492384e-05 ;
	setAttr ".pt[202]" -type "float3" 2.3090816 -0.53092122 -0.75066251 ;
	setAttr ".pt[203]" -type "float3" 1.3604399 -0.44069272 -0.97388029 ;
	setAttr ".pt[204]" -type "float3" 0.99398834 -0.43887958 -1.3402762 ;
	setAttr ".pt[205]" -type "float3" 0.75032896 -0.52321362 -2.3091919 ;
	setAttr ".pt[206]" -type "float3" 0.020459313 -0.44117516 -1.6566046 ;
	setAttr ".pt[207]" -type "float3" -0.491375 -0.44505677 -1.5755905 ;
	setAttr ".pt[208]" -type "float3" -1.4268296 -0.53972757 -1.964561 ;
	setAttr ".pt[209]" -type "float3" -1.3196751 -0.45642954 -0.97399282 ;
	setAttr ".pt[210]" -type "float3" -1.5550628 -0.46280888 -0.51224667 ;
	setAttr ".pt[211]" -type "float3" -2.4280324 -0.56685698 -0.0004512149 ;
	setAttr ".pt[212]" -type "float3" -1.5552436 -0.47388613 0.51164931 ;
	setAttr ".pt[213]" -type "float3" -1.31997 -0.47750303 0.97355062 ;
	setAttr ".pt[214]" -type "float3" -1.4272593 -0.58223808 1.9642482 ;
	setAttr ".pt[215]" -type "float3" -0.49155501 -0.47915083 1.5754918 ;
	setAttr ".pt[216]" -type "float3" 0.020459313 -0.47702169 1.6565654 ;
	setAttr ".pt[217]" -type "float3" 0.75059479 -0.57318103 2.3091004 ;
	setAttr ".pt[218]" -type "float3" 0.99428302 -0.46787667 1.3400235 ;
	setAttr ".pt[219]" -type "float3" 1.9645948 -0.55650401 1.4267807 ;
	setAttr ".pt[220]" -type "float3" 1.595947 -0.45538095 0.51157802 ;
	setAttr ".pt[221]" -type "float3" 1.6769245 -0.44936717 -0.00032702376 ;
	setAttr ".pt[222]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[223]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[224]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[225]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[226]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[227]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[228]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[229]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[230]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[231]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[232]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[233]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[234]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[235]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[236]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[237]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[238]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[239]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[240]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[241]" -type "float3" 0 0.31120956 0 ;
	setAttr ".pt[242]" -type "float3" 2.5920713 0.1292773 -0.84253001 ;
	setAttr ".pt[243]" -type "float3" 1.5529413 0.032372788 -1.1137236 ;
	setAttr ".pt[244]" -type "float3" 1.1338154 0.034609906 -1.5327891 ;
	setAttr ".pt[245]" -type "float3" 0.84217471 0.13861996 -2.5921919 ;
	setAttr ".pt[246]" -type "float3" 0.020340702 0.03558689 -1.8945442 ;
	setAttr ".pt[247]" -type "float3" -0.56504315 0.034230661 -1.8018486 ;
	setAttr ".pt[248]" -type "float3" -1.601871 0.13295595 -2.2051528 ;
	setAttr ".pt[249]" -type "float3" -1.5122815 0.028478026 -1.1137377 ;
	setAttr ".pt[250]" -type "float3" -1.7814275 0.024646271 -0.5856542 ;
	setAttr ".pt[251]" -type "float3" -2.725563 0.1169531 -0.00032037127 ;
	setAttr ".pt[252]" -type "float3" -1.7815596 0.016907878 0.58524954 ;
	setAttr ".pt[253]" -type "float3" -1.5124962 0.013755667 1.1134461 ;
	setAttr ".pt[254]" -type "float3" -1.6021789 0.103803 2.2049301 ;
	setAttr ".pt[255]" -type "float3" -0.56517267 0.010409888 1.8018024 ;
	setAttr ".pt[256]" -type "float3" 0.020340702 0.01054157 1.8945442 ;
	setAttr ".pt[257]" -type "float3" 0.84236515 0.10435229 2.5921252 ;
	setAttr ".pt[258]" -type "float3" 1.134028 0.014349534 1.5326331 ;
	setAttr ".pt[259]" -type "float3" 2.2051888 0.11262649 1.6018206 ;
	setAttr ".pt[260]" -type "float3" 1.82221 0.02148344 0.58523834 ;
	setAttr ".pt[261]" -type "float3" 1.9148685 0.025471868 -0.00022271481 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D108F753-1C48-9A14-DAB3-08B50BEC6E0A";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "AF1FAF17-0241-F9EF-86CB-13B0DD6B82A8";
createNode displayLayer -n "defaultLayer";
	rename -uid "F99EA2C2-3340-6BD5-E254-02A708521ED2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ED8A2594-684F-2633-8A89-3085A7EC3629";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "87B8B573-B64C-A63B-AABF-E2B5C9324208";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "198C27C2-3A40-4F8F-DA24-E387C5B8AB6B";
	setAttr ".r" 1.744503530939373;
	setAttr ".h" 9.3594378239529412;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCut -n "polyCut1";
	rename -uid "358091D7-5A45-9D88-1276-9BA3DC1759BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 7.6954502900000001 1.41163152 4.8684008600000004 ;
	setAttr ".ro" -type "double3" 0.95448447999999997 -87.087639280000005 90 ;
createNode polyCut -n "polyCut2";
	rename -uid "097F7A90-6A45-2D1C-84CA-C6A85FAB6EF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 7.6993191799999998 1.4059231599999999 4.8639037299999996 ;
	setAttr ".ro" -type "double3" 4.6455044699999997 -87.578180250000003 90 ;
createNode polyCut -n "polyCut3";
	rename -uid "88488F50-044B-4B36-7458-DDAE2FD8DBDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:19]" "f[80:99]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 7.7009532800000002 1.4080071599999999 4.8607076899999999 ;
	setAttr ".ro" -type "double3" 2.1705944700000002 -85.314348539999997 90 ;
createNode polyCut -n "polyCut4";
	rename -uid "9C784124-FC49-848D-B960-B1B5DDFCE697";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" -13.64567325 0.090476699999999993 -3.8841064699999999 ;
	setAttr ".ro" -type "double3" -176.55992805 -89.593914339999998 -90 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "D862C176-974C-B926-2F27-E4A167775478";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk";
	setAttr ".tk[0]" -type "float3" 3.6995592 0 -1.2020577 ;
	setAttr ".tk[1]" -type "float3" 3.147033 0 -2.2864497 ;
	setAttr ".tk[2]" -type "float3" 2.2864542 0 -3.1470325 ;
	setAttr ".tk[3]" -type "float3" 1.2020596 0 -3.6995602 ;
	setAttr ".tk[4]" -type "float3" 1.329081e-07 0 -3.8899441 ;
	setAttr ".tk[5]" -type "float3" -1.2020594 0 -3.6995595 ;
	setAttr ".tk[6]" -type "float3" -2.2864497 0 -3.1470325 ;
	setAttr ".tk[7]" -type "float3" -3.1470308 0 -2.2864492 ;
	setAttr ".tk[8]" -type "float3" -3.6995573 0 -1.2020577 ;
	setAttr ".tk[9]" -type "float3" -3.8899438 0 1.5948975e-06 ;
	setAttr ".tk[10]" -type "float3" -3.6995573 0 1.2020594 ;
	setAttr ".tk[11]" -type "float3" -3.1470308 0 2.2864492 ;
	setAttr ".tk[12]" -type "float3" -2.2864482 0 3.1470313 ;
	setAttr ".tk[13]" -type "float3" -1.2020594 0 3.6995523 ;
	setAttr ".tk[14]" -type "float3" 1.329081e-07 0 3.8899443 ;
	setAttr ".tk[15]" -type "float3" 1.2020595 0 3.6995523 ;
	setAttr ".tk[16]" -type "float3" 2.2864497 0 3.1470313 ;
	setAttr ".tk[17]" -type "float3" 3.1470306 0 2.2864497 ;
	setAttr ".tk[18]" -type "float3" 3.6995573 0 1.2020594 ;
	setAttr ".tk[19]" -type "float3" 3.8899446 0 1.5948975e-06 ;
	setAttr ".tk[42]" -type "float3" -0.10647273 0 0.03459511 ;
	setAttr ".tk[43]" -type "float3" -0.090570807 0 0.065804034 ;
	setAttr ".tk[44]" -type "float3" -0.065803535 0 0.090570748 ;
	setAttr ".tk[45]" -type "float3" -0.034595229 0 0.10647285 ;
	setAttr ".tk[46]" -type "float3" -3.8251358e-09 0 0.11195213 ;
	setAttr ".tk[47]" -type "float3" 0.034595199 0 0.10647285 ;
	setAttr ".tk[48]" -type "float3" 0.065803461 0 0.090570748 ;
	setAttr ".tk[49]" -type "float3" 0.090572104 0 0.06580393 ;
	setAttr ".tk[50]" -type "float3" 0.10647278 0 0.034595199 ;
	setAttr ".tk[51]" -type "float3" 0.11195213 0 -4.5900862e-08 ;
	setAttr ".tk[52]" -type "float3" 0.10647278 0 -0.034595259 ;
	setAttr ".tk[53]" -type "float3" 0.090572104 0 -0.06580393 ;
	setAttr ".tk[54]" -type "float3" 0.065803066 0 -0.090572044 ;
	setAttr ".tk[55]" -type "float3" 0.034595199 0 -0.10647302 ;
	setAttr ".tk[56]" -type "float3" -3.8251358e-09 0 -0.11195213 ;
	setAttr ".tk[57]" -type "float3" -0.034595199 0 -0.10647302 ;
	setAttr ".tk[58]" -type "float3" -0.065803975 0 -0.090572044 ;
	setAttr ".tk[59]" -type "float3" -0.090571925 0 -0.065803729 ;
	setAttr ".tk[60]" -type "float3" -0.10647293 0 -0.034595251 ;
	setAttr ".tk[61]" -type "float3" -0.11195219 0 -4.5900862e-08 ;
	setAttr ".tk[62]" -type "float3" 4.3233471 -0.19676018 -1.4047375 ;
	setAttr ".tk[63]" -type "float3" 3.6776612 -0.19676018 -2.6719723 ;
	setAttr ".tk[64]" -type "float3" 2.6719747 -0.19676018 -3.6776612 ;
	setAttr ".tk[65]" -type "float3" 1.40474 -0.19676018 -4.3233485 ;
	setAttr ".tk[66]" -type "float3" -4.6595378e-07 -0.19676018 -4.545835 ;
	setAttr ".tk[67]" -type "float3" -1.4047409 -0.19676018 -4.3233471 ;
	setAttr ".tk[68]" -type "float3" -2.6719706 -0.19676018 -3.6776612 ;
	setAttr ".tk[69]" -type "float3" -3.6776588 -0.19676018 -2.6719723 ;
	setAttr ".tk[70]" -type "float3" -4.3233461 -0.19676018 -1.4047375 ;
	setAttr ".tk[71]" -type "float3" -4.5458355 -0.19676018 1.8638152e-06 ;
	setAttr ".tk[72]" -type "float3" -4.3233461 -0.19676018 1.4047399 ;
	setAttr ".tk[73]" -type "float3" -3.6776588 -0.19676018 2.6719723 ;
	setAttr ".tk[74]" -type "float3" -2.6719699 -0.19676018 3.6776595 ;
	setAttr ".tk[75]" -type "float3" -1.4047409 -0.19676018 4.3233428 ;
	setAttr ".tk[76]" -type "float3" -4.6595378e-07 -0.19676018 4.5458355 ;
	setAttr ".tk[77]" -type "float3" 1.4047374 -0.19676018 4.3233428 ;
	setAttr ".tk[78]" -type "float3" 2.671973 -0.19676018 3.677659 ;
	setAttr ".tk[79]" -type "float3" 3.6776588 -0.19676018 2.6719713 ;
	setAttr ".tk[80]" -type "float3" 4.3233438 -0.19676018 1.4047399 ;
	setAttr ".tk[81]" -type "float3" 4.5458355 -0.19676018 1.8638152e-06 ;
	setAttr ".tk[82]" -type "float3" 3.2153156 0 -1.0447181 ;
	setAttr ".tk[83]" -type "float3" 2.735112 0 -1.9871743 ;
	setAttr ".tk[84]" -type "float3" 1.9871764 0 -2.735112 ;
	setAttr ".tk[85]" -type "float3" 1.0447193 0 -3.2153161 ;
	setAttr ".tk[86]" -type "float3" 2.3102301e-07 0 -3.3807819 ;
	setAttr ".tk[87]" -type "float3" -1.0447191 0 -3.2153149 ;
	setAttr ".tk[88]" -type "float3" -1.9871716 0 -2.735112 ;
	setAttr ".tk[89]" -type "float3" -2.7351079 0 -1.9871738 ;
	setAttr ".tk[90]" -type "float3" -3.2153144 0 -1.0447181 ;
	setAttr ".tk[91]" -type "float3" -3.3807828 0 1.3861387e-06 ;
	setAttr ".tk[92]" -type "float3" -3.2153144 0 1.0447191 ;
	setAttr ".tk[93]" -type "float3" -2.7351079 0 1.9871738 ;
	setAttr ".tk[94]" -type "float3" -1.9871709 0 2.7351098 ;
	setAttr ".tk[95]" -type "float3" -1.0447191 0 3.2153132 ;
	setAttr ".tk[96]" -type "float3" 2.3102301e-07 0 3.3807819 ;
	setAttr ".tk[97]" -type "float3" 1.0447191 0 3.2153132 ;
	setAttr ".tk[98]" -type "float3" 1.987174 0 2.7351098 ;
	setAttr ".tk[99]" -type "float3" 2.7351084 0 1.9871721 ;
	setAttr ".tk[100]" -type "float3" 3.2153146 0 1.044719 ;
	setAttr ".tk[101]" -type "float3" 3.3807824 0 1.3861387e-06 ;
createNode polyCut -n "polyCut5";
	rename -uid "8BEE8846-1143-0DC9-9F98-75B787E74571";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[100:119]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" -13.645806909999999 0.088918280000000002 -3.8836679300000001 ;
	setAttr ".ro" -type "double3" 2.4326383699999998 -88.229141970000001 90 ;
createNode polyCut -n "polyCut6";
	rename -uid "5F9EB0C8-A34E-89E3-93E4-23B12E33F8FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[60:79]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.18666155000000001 8.9672532599999997 -15.729677 ;
	setAttr ".ro" -type "double3" 0.77734886999999997 -89.727725849999999 90 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "131E6B74-4849-D735-B5F1-B5B91779B3B6";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk";
	setAttr ".tk[20]" -type "float3" -0.3647033 0 0.11849903 ;
	setAttr ".tk[21]" -type "float3" -0.3102352 0 0.22539882 ;
	setAttr ".tk[22]" -type "float3" -0.22539915 0 0.31023532 ;
	setAttr ".tk[23]" -type "float3" -0.11849932 0 0.36470345 ;
	setAttr ".tk[24]" -type "float3" -5.2408446e-08 0 0.38347146 ;
	setAttr ".tk[25]" -type "float3" 0.11849919 0 0.36470336 ;
	setAttr ".tk[26]" -type "float3" 0.22539844 0 0.31023532 ;
	setAttr ".tk[27]" -type "float3" 0.31023476 0 0.22539867 ;
	setAttr ".tk[28]" -type "float3" 0.36470306 0 0.11849903 ;
	setAttr ".tk[29]" -type "float3" 0.38347155 0 -2.6204222e-07 ;
	setAttr ".tk[30]" -type "float3" 0.36470306 0 -0.1184992 ;
	setAttr ".tk[31]" -type "float3" 0.31023476 0 -0.22539867 ;
	setAttr ".tk[32]" -type "float3" 0.22539838 0 -0.31023514 ;
	setAttr ".tk[33]" -type "float3" 0.11849919 0 -0.36470294 ;
	setAttr ".tk[34]" -type "float3" -5.2408446e-08 0 -0.38347146 ;
	setAttr ".tk[35]" -type "float3" -0.11849929 0 -0.36470294 ;
	setAttr ".tk[36]" -type "float3" -0.22539894 0 -0.31023493 ;
	setAttr ".tk[37]" -type "float3" -0.3102349 0 -0.22539856 ;
	setAttr ".tk[38]" -type "float3" -0.36470306 0 -0.1184992 ;
	setAttr ".tk[39]" -type "float3" -0.38347176 0 -2.6204222e-07 ;
	setAttr ".tk[41]" -type "float3" -5.2408438e-08 0 -2.6204225e-07 ;
	setAttr ".tk[42]" -type "float3" -0.14537296 1.0190262e-05 0.047234401 ;
	setAttr ".tk[43]" -type "float3" -0.1236617 -0.0011589685 0.089845292 ;
	setAttr ".tk[44]" -type "float3" -0.089845523 -0.0022146897 0.12366164 ;
	setAttr ".tk[45]" -type "float3" -0.04723455 -0.0030536065 0.14537293 ;
	setAttr ".tk[46]" -type "float3" -2.2322872e-08 -0.0035936283 0.15285403 ;
	setAttr ".tk[47]" -type "float3" 0.047234502 -0.0037819049 0.1453729 ;
	setAttr ".tk[48]" -type "float3" 0.089845166 -0.0035999478 0.12366164 ;
	setAttr ".tk[49]" -type "float3" 0.12366127 -0.0030655956 0.089845292 ;
	setAttr ".tk[50]" -type "float3" 0.14537281 -0.0022311993 0.047234386 ;
	setAttr ".tk[51]" -type "float3" 0.15285404 -0.0011783782 -1.1161433e-07 ;
	setAttr ".tk[52]" -type "float3" 0.14537281 -1.0190262e-05 -0.047234517 ;
	setAttr ".tk[53]" -type "float3" 0.12366127 0.0011589685 -0.089845292 ;
	setAttr ".tk[54]" -type "float3" 0.089845166 0.0022146897 -0.1236614 ;
	setAttr ".tk[55]" -type "float3" 0.047234502 0.0030536065 -0.14537275 ;
	setAttr ".tk[56]" -type "float3" -2.2322872e-08 0.0035936283 -0.15285403 ;
	setAttr ".tk[57]" -type "float3" -0.047234502 0.0037819049 -0.14537275 ;
	setAttr ".tk[58]" -type "float3" -0.089845374 0.0035999478 -0.1236614 ;
	setAttr ".tk[59]" -type "float3" -0.12366147 0.0030655956 -0.089845285 ;
	setAttr ".tk[60]" -type "float3" -0.14537281 0.0022311993 -0.047234479 ;
	setAttr ".tk[61]" -type "float3" -0.15285404 0.0011783782 -1.1161433e-07 ;
	setAttr ".tk[102]" -type "float3" -0.18896289 -0.0029679684 0.075497851 ;
	setAttr ".tk[103]" -type "float3" -0.16189724 -0.0026449922 0.12304361 ;
	setAttr ".tk[104]" -type "float3" -0.12337233 -0.0021328693 0.1611781 ;
	setAttr ".tk[105]" -type "float3" -0.075764164 -0.0014635749 0.18777268 ;
	setAttr ".tk[106]" -type "float3" -0.021616518 -0.00067189685 0.20084994 ;
	setAttr ".tk[107]" -type "float3" 0.036007695 0.00019954785 0.19847286 ;
	setAttr ".tk[108]" -type "float3" 0.093060613 0.0010927912 0.17896348 ;
	setAttr ".tk[109]" -type "float3" 0.14416862 0.0019282644 0.14157405 ;
	setAttr ".tk[110]" -type "float3" 0.18279341 0.0026054357 0.087540418 ;
	setAttr ".tk[111]" -type "float3" 0.20224169 0.0030159745 0.021123635 ;
	setAttr ".tk[112]" -type "float3" 0.19752285 0.0030712872 -0.050079003 ;
	setAttr ".tk[113]" -type "float3" 0.1673767 0.0027349093 -0.11618792 ;
	setAttr ".tk[114]" -type "float3" 0.11534347 0.0020426759 -0.16738585 ;
	setAttr ".tk[115]" -type "float3" 0.049108759 0.0010976192 -0.196546 ;
	setAttr ".tk[116]" -type "float3" -0.021616518 4.0874787e-05 -0.20084971 ;
	setAttr ".tk[117]" -type "float3" -0.087551206 -0.0009852146 -0.181802 ;
	setAttr ".tk[118]" -type "float3" -0.14159584 -0.0018656008 -0.1440137 ;
	setAttr ".tk[119]" -type "float3" -0.17949101 -0.0025253617 -0.093578726 ;
	setAttr ".tk[120]" -type "float3" -0.19959795 -0.0029289145 -0.036705934 ;
	setAttr ".tk[121]" -type "float3" -0.20224169 -0.003071289 0.021123635 ;
	setAttr ".tk[122]" -type "float3" 0.88500655 0.0073411339 -0.26832345 ;
	setAttr ".tk[123]" -type "float3" 0.76798373 0.0041987551 -0.51344216 ;
	setAttr ".tk[124]" -type "float3" 0.58236223 0.00065510359 -0.71608847 ;
	setAttr ".tk[125]" -type "float3" 0.34113944 -0.0030045849 -0.85728985 ;
	setAttr ".tk[126]" -type "float3" 0.062990323 -0.0064560524 -0.92082709 ;
	setAttr ".tk[127]" -type "float3" -0.22753729 -0.0093505746 -0.8953861 ;
	setAttr ".tk[128]" -type "float3" -0.50100458 -0.011347996 -0.77750802 ;
	setAttr ".tk[129]" -type "float3" -0.72602558 -0.01217097 -0.5744884 ;
	setAttr ".tk[130]" -type "float3" -0.87416339 -0.011667183 -0.30573374 ;
	setAttr ".tk[131]" -type "float3" -0.9255932 -0.0098575568 -0.0012338979 ;
	setAttr ".tk[132]" -type "float3" -0.87347257 -0.0069477763 0.30304092 ;
	setAttr ".tk[133]" -type "float3" -0.72529542 -0.0032933322 0.57148921 ;
	setAttr ".tk[134]" -type "float3" -0.50084275 0.00066875847 0.77481622 ;
	setAttr ".tk[135]" -type "float3" -0.22784765 0.0044950633 0.89387214 ;
	setAttr ".tk[136]" -type "float3" 0.062990233 0.0077984296 0.92082709 ;
	setAttr ".tk[137]" -type "float3" 0.34224254 0.010285239 0.85821545 ;
	setAttr ".tk[138]" -type "float3" 0.58465034 0.011769806 0.71676862 ;
	setAttr ".tk[139]" -type "float3" 0.77064085 0.012170958 0.51290387 ;
	setAttr ".tk[140]" -type "float3" 0.88678741 0.011499129 0.26643345 ;
	setAttr ".tk[141]" -type "float3" 0.9255932 0.009840264 -0.0012338979 ;
createNode polyCut -n "polyCut7";
	rename -uid "C3365521-AA48-1D16-5C8A-FD97468B0A55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[60:79]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.17695962000000001 8.9587797800000004 -15.73140186 ;
	setAttr ".ro" -type "double3" 179.15635334999999 -85.778292130000011 -90 ;
createNode polyCut -n "polyCut8";
	rename -uid "26C55688-B74B-5D19-065B-39AE614A3495";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[180:199]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.17599227000000001 8.9647932200000007 -15.73080957 ;
	setAttr ".ro" -type "double3" -179.55370676000001 -89.012884589999999 -90 ;
createNode polyCut -n "polyCut9";
	rename -uid "79622B30-144F-B0DD-DFEF-DAB820988F1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[180:199]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.16559874999999999 8.9621509499999998 -15.73194026 ;
	setAttr ".ro" -type "double3" -178.65749689 -87.5253795 -90 ;
createNode polyCut -n "polyCut10";
	rename -uid "D5B3F18A-DA4A-EBBD-30E3-6199BDCD4912";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[160:179]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.16234290000000001 8.9686199500000008 -15.731481329999999 ;
	setAttr ".ro" -type "double3" 1.4334399 -88.754666810000003 90 ;
createNode polyCut -n "polyCut11";
	rename -uid "B1CE11C3-A84B-2CB8-9B21-25B84CD83CEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[220:239]";
	setAttr ".ix" -type "matrix" 0.25034788589180007 0 0 0 0 1 0 0 0 0 0.25034788589180007 0
		 -0.91397192338630151 4.6797189119764706 -1.0660984780732967 1;
	setAttr ".pc" -type "double3" 0.16329969999999999 8.9637909800000006 -15.731942480000001 ;
	setAttr ".ro" -type "double3" -179.70936374999999 -88.487564370000001 -90 ;
createNode lambert -n "lambert2";
	rename -uid "3697C2A6-3D4A-7246-01A5-2485C183BBBB";
createNode shadingEngine -n "lambert2SG";
	rename -uid "510255FF-2743-24BC-DDAB-DCB5C5338197";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EA286C03-D349-AC34-E854-7896B2A35D0A";
createNode groupId -n "groupId1";
	rename -uid "BE22DC85-8444-09DF-BCF2-4A8D81C02358";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "058F9706-A84D-51C7-F916-FAB94BEBDF95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:219]" "f[240:279]";
	setAttr ".irc" -type "componentList" 1 "f[220:239]";
createNode groupId -n "groupId2";
	rename -uid "6B2F2A7F-214E-686B-7480-2F9B094DF399";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "FB7D7933-DF42-6AFA-DC61-DCA8817942E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "29FFDE9C-1146-66FD-68EB-F4883C3F46C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[220:239]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "680B46E5-C74F-A0BC-2668-D3B681A54247";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 936\n                -height 588\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 936\n            -height 588\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 588\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 588\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4B1B5B1E-FB4F-6759-ECF0-0C89FE0C87EC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId3.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupParts2.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "pCylinderShape1.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "pCylinderShape1.wm" "polyCut3.mp";
connectAttr "polyTweak1.out" "polyCut4.ip";
connectAttr "pCylinderShape1.wm" "polyCut4.mp";
connectAttr "polyCut3.out" "polyTweak1.ip";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "pCylinderShape1.wm" "polyCut5.mp";
connectAttr "polyTweak2.out" "polyCut6.ip";
connectAttr "pCylinderShape1.wm" "polyCut6.mp";
connectAttr "polyCut5.out" "polyTweak2.ip";
connectAttr "polyCut6.out" "polyCut7.ip";
connectAttr "pCylinderShape1.wm" "polyCut7.mp";
connectAttr "polyCut7.out" "polyCut8.ip";
connectAttr "pCylinderShape1.wm" "polyCut8.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "pCylinderShape1.wm" "polyCut9.mp";
connectAttr "polyCut9.out" "polyCut10.ip";
connectAttr "pCylinderShape1.wm" "polyCut10.mp";
connectAttr "polyCut10.out" "polyCut11.ip";
connectAttr "pCylinderShape1.wm" "polyCut11.mp";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "polyCut11.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of lamp post.ma
