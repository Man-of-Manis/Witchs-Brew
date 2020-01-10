//Maya ASCII 2018 scene
//Name: Before Fire Room Puzzle 3.ma
//Last modified: Mon, Oct 14, 2019 03:18:31 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5C56EA0A-4E37-05AE-AB3B-6C92B0901094";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.9641976707795603 18.46936266926183 11.332865390554906 ;
	setAttr ".r" -type "double3" 291.26164750220897 -1439.3999999984148 -1.1927734060718196e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E3132BC5-413A-9C00-AE28-2292B686E371";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.985387336394982;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E669E9C4-4C47-4A5B-692A-10A7CAF46394";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5329B972-4399-69F7-4431-8DB127DE402C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7158C736-497E-0179-F47F-18A49ABD8A3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4EEDC25C-485A-3698-D6BC-B9AD3CAD0A41";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E1CA52E8-44B3-AEB0-EEDB-F9A82517E433";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "164647CC-4D71-5256-B54A-9A9D5723B3DB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Floor";
	rename -uid "1FEA8653-4E8A-265F-3A63-E5ADF87F21BA";
createNode transform -n "Floor_Piece_Base" -p "Floor";
	rename -uid "C8391CA6-4219-E005-9A3C-FFBAF70AF5B6";
	setAttr ".t" -type "double3" -8 -2 1.3160630002851796 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape" -p "Floor_Piece_Base";
	rename -uid "6692623F-4744-CF50-58A6-87A39442C6CC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base";
	rename -uid "D471BA4E-46C4-2F7B-E3C7-9D8A1D4C4D7D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base25" -p "Floor_Piece_Base";
	rename -uid "1C571F4D-4692-02F6-0FAE-FDA26965A53E";
	setAttr ".t" -type "double3" 12 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape25" -p "Floor_Piece_Base25";
	rename -uid "3DAAB846-4314-F603-D9E9-6292A33CEC7A";
	setAttr -k off ".v";
	setAttr -s 50 ".iog";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[44].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[45].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[46].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[47].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[48].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[49].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base25";
	rename -uid "B39BD460-48F5-E2B4-EE77-E09F6A43B3F9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base26" -p "Floor_Piece_Base";
	rename -uid "D7099043-4EA9-7231-4386-2B828E0A36A9";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base27" -p "Floor_Piece_Base";
	rename -uid "55852FC0-4D93-3604-097C-02ADA8544C60";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base28" -p "Floor_Piece_Base";
	rename -uid "17256AE1-453C-A6E0-1C38-CAB03ACCAB1C";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -1.98 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base29" -p "Floor_Piece_Base";
	rename -uid "2648EFB8-421C-FEA9-DD92-D295574B81F0";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -2.64 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base30" -p "Floor_Piece_Base";
	rename -uid "4A59046B-43E9-A746-FE85-A8A5894FAAFB";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -3.3000000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base31" -p "Floor_Piece_Base";
	rename -uid "8FAEB267-4D48-C0FD-BB2B-92B8B3ADE82D";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -3.9600000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base32" -p "Floor_Piece_Base";
	rename -uid "D9B77C84-4E65-D4CE-7C3B-BE8FCCF55A1A";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -4.62 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base33" -p "Floor_Piece_Base";
	rename -uid "BEB6444E-44FD-659F-F72C-CEB7EFD6303A";
	setAttr ".t" -type "double3" 12 1.9898681322850127 -5.28 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base34" -p "Floor_Piece_Base";
	rename -uid "65136458-4D0B-FE63-780B-A39C751CDA9F";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base35" -p "Floor_Piece_Base";
	rename -uid "981444BF-46B1-F458-3CA6-09AAE9FCA4BD";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base36" -p "Floor_Piece_Base";
	rename -uid "7789A70C-45DC-AA84-77C4-32BEF5F2426E";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base37" -p "Floor_Piece_Base";
	rename -uid "F87D56AA-4127-00B2-6E81-D98D42DB00A2";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -1.98 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base38" -p "Floor_Piece_Base";
	rename -uid "5B5793B5-4177-6157-20A8-E0BDE48FA75B";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -2.64 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base39" -p "Floor_Piece_Base";
	rename -uid "BE04DDC8-4B46-FF23-1285-E1BEB13391F4";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -3.3000000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base40" -p "Floor_Piece_Base";
	rename -uid "02E8BC6D-44F8-E024-0C8D-109DDCF31363";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -3.9600000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base41" -p "Floor_Piece_Base";
	rename -uid "88E878AF-4FF1-F83B-C31A-D392DF5AEED7";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -4.62 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base42" -p "Floor_Piece_Base";
	rename -uid "9BFF1B65-4406-2C83-86D5-3E9F56B28D83";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 -5.28 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base43" -p "Floor_Piece_Base";
	rename -uid "0DF62516-4D41-6698-B248-B88A70186D4C";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base44" -p "Floor_Piece_Base";
	rename -uid "6BB7BD93-481F-BB00-564E-AE9842B1BBC5";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base45" -p "Floor_Piece_Base";
	rename -uid "F4EBE00A-49CC-CCA3-0410-3C9939915359";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base46" -p "Floor_Piece_Base";
	rename -uid "10325FBD-4ED9-6419-EE6D-18839ABB8AC2";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -1.9800000000000002 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base47" -p "Floor_Piece_Base";
	rename -uid "67860C94-4FE0-374E-46F8-60AB7B321FE2";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -2.64 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base48" -p "Floor_Piece_Base";
	rename -uid "EABBA3AD-4F68-CD70-938E-A085C6AC4375";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -3.3000000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base49" -p "Floor_Piece_Base";
	rename -uid "C5C23F2A-45BD-4859-3755-40B35F7E9A54";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -3.96 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base50" -p "Floor_Piece_Base";
	rename -uid "43DECECE-4EF1-116F-F020-CBA6BDD3FF3B";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -4.62 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base51" -p "Floor_Piece_Base";
	rename -uid "B58587ED-4014-0E77-2583-48BF386E8353";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 -5.28 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base52" -p "Floor_Piece_Base";
	rename -uid "54023D43-4A1B-7F08-A916-B3B86BD6BCDE";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base53" -p "Floor_Piece_Base";
	rename -uid "614F1CD3-41BC-89CD-30CC-A98E081EC202";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base54" -p "Floor_Piece_Base";
	rename -uid "12967DBC-48B2-BC19-3BCA-E9A4A0B67720";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base55" -p "Floor_Piece_Base";
	rename -uid "1ADCD8EE-4B91-0E6C-9590-06B36D08CA96";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base56" -p "Floor_Piece_Base";
	rename -uid "B4B5E72B-4DF6-B919-AE71-E59AE482053E";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -2.64 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base57" -p "Floor_Piece_Base";
	rename -uid "DE816EDB-46E3-F826-129A-EAB1D306B941";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -3.3000000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base58" -p "Floor_Piece_Base";
	rename -uid "104EC570-4C43-2ED6-8551-96B283718E61";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -3.9599999999999995 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base59" -p "Floor_Piece_Base";
	rename -uid "0143063C-4316-4DA0-C330-91A9F227BBE0";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -4.62 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base60" -p "Floor_Piece_Base";
	rename -uid "027B9C3B-4668-28E6-0F44-658970733372";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 -5.28 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base61" -p "Floor_Piece_Base";
	rename -uid "30487097-459E-8920-CECB-6D8AF1E3E754";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base62" -p "Floor_Piece_Base";
	rename -uid "04E6846D-4D23-F012-F28E-4BA7BF502CDC";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base63" -p "Floor_Piece_Base";
	rename -uid "92495A02-483B-C92D-5638-1FB0AAB1AA5B";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base64" -p "Floor_Piece_Base";
	rename -uid "0A80C7EA-47F8-0759-D327-A3986521E73B";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -1.9800000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base65" -p "Floor_Piece_Base";
	rename -uid "1E6597F4-4E70-DD5D-CCA9-4382EFA2A169";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -2.64 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base66" -p "Floor_Piece_Base";
	rename -uid "4D114AA3-4632-C241-5FE5-2284D14F1FE6";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -3.3000000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base67" -p "Floor_Piece_Base";
	rename -uid "56407F3A-4D5C-7CB0-178D-6483143A7781";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -3.9599999999999991 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base68" -p "Floor_Piece_Base";
	rename -uid "265CB338-4225-7A5F-CFFA-6885B0B9FA6D";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -4.62 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base69" -p "Floor_Piece_Base";
	rename -uid "0BFD6BBE-4689-4033-ADF0-4BB69BF8C77A";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 -5.28 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base70" -p "Floor_Piece_Base";
	rename -uid "1939522C-426A-2611-DE00-D3B0394E649C";
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape70" -p "Floor_Piece_Base70";
	rename -uid "5A7F6AE1-4297-00F9-2D0F-6CACFB3304DC";
	setAttr -k off ".v";
	setAttr -s 45 ".iog";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[44].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base70";
	rename -uid "5276043B-4E43-9959-D52A-E29559C6BF02";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base71" -p "Floor_Piece_Base";
	rename -uid "31CE4BEA-41B4-4900-7666-659D86291301";
	setAttr ".t" -type "double3" 0.66 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape71" -p "Floor_Piece_Base71";
	rename -uid "A5FF84DD-48DA-0270-0881-F4ADD5DE1460";
	setAttr -k off ".v";
	setAttr -s 44 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base71";
	rename -uid "0E7175D6-4480-2591-3228-82850411CA83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base72" -p "Floor_Piece_Base";
	rename -uid "4E3432D9-4916-8952-CB6B-93929C0EF715";
	setAttr ".t" -type "double3" 1.32 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base73" -p "Floor_Piece_Base";
	rename -uid "D8C1C05B-4C66-978A-B191-6893D45856F2";
	setAttr ".t" -type "double3" 1.98 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base74" -p "Floor_Piece_Base";
	rename -uid "4216B203-44DA-77AF-C499-409A6988C952";
	setAttr ".t" -type "double3" 2.64 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base75" -p "Floor_Piece_Base";
	rename -uid "AA9E5B58-4714-9764-04E8-C2A121EE114D";
	setAttr ".t" -type "double3" 3.3000000000000003 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base76" -p "Floor_Piece_Base";
	rename -uid "9A4DD115-4797-B18B-CA51-60A60EE326FA";
	setAttr ".t" -type "double3" 3.9600000000000004 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base77" -p "Floor_Piece_Base";
	rename -uid "A1CCBDDB-433B-379A-9C77-639D9B381DE9";
	setAttr ".t" -type "double3" 4.62 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base78" -p "Floor_Piece_Base";
	rename -uid "BB357160-49B6-FF9C-A9A5-70855E639DA1";
	setAttr ".t" -type "double3" 5.28 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base79" -p "Floor_Piece_Base";
	rename -uid "95205833-4A6B-E608-3F0C-148FD62B4BFD";
	setAttr ".t" -type "double3" 5.94 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base80" -p "Floor_Piece_Base";
	rename -uid "6BFED588-4EC0-12D8-E2C3-599F47ACD119";
	setAttr ".t" -type "double3" 6.6000000000000005 0 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base81" -p "Floor_Piece_Base";
	rename -uid "40FB0324-4FFB-02BE-5D1A-86BB4BAAB924";
	setAttr ".t" -type "double3" 7.2600000000000007 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base82" -p "Floor_Piece_Base";
	rename -uid "3CE3DAFE-4490-EDBF-13B5-EF9AE6D118B1";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base83" -p "Floor_Piece_Base";
	rename -uid "BA7179D1-4808-6371-1807-A09E457BEF5B";
	setAttr ".t" -type "double3" 0 0 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape83" -p "Floor_Piece_Base83";
	rename -uid "A80D01B7-4177-44F0-33A2-85AA26750866";
	setAttr -k off ".v";
	setAttr -s 134 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[5].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[44].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[45].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[46].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[47].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[48].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[49].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[50].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[51].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[52].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[53].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[54].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[55].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[56].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[57].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[58].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[59].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[60].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[61].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[62].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[63].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[64].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[65].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[66].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[67].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[68].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[69].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[70].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[71].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[72].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[73].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[74].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[75].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[76].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[77].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[78].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[79].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[80].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[81].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[82].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[83].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[84].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[85].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[86].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[87].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[88].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[89].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[90].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[91].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[92].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[93].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[94].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[95].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[96].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[97].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[98].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[99].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[100].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[101].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[102].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[103].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[104].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[105].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[106].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[107].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[108].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[109].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[110].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[111].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[112].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[113].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[114].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[115].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[116].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[117].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[118].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[119].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[120].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[121].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[122].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[123].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[124].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[125].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[126].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[127].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[128].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[129].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[130].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[131].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[132].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[133].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base83";
	rename -uid "4E739DBE-4A39-0C12-8DD1-748A72D77746";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base84" -p "Floor_Piece_Base";
	rename -uid "5F13DF02-4C88-0A83-4B71-C59EDC63A0EC";
	setAttr ".t" -type "double3" 0.66 0 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base85" -p "Floor_Piece_Base";
	rename -uid "5AFA702A-4528-1228-1BB3-C49B6FA672AA";
	setAttr ".t" -type "double3" 1.32 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base86" -p "Floor_Piece_Base";
	rename -uid "9188BBA3-41C2-C687-7C12-C6BB6181BFFA";
	setAttr ".t" -type "double3" 1.98 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base87" -p "Floor_Piece_Base";
	rename -uid "F6DBCC1F-4CDA-DD04-312E-198199D54262";
	setAttr ".t" -type "double3" 2.64 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base88" -p "Floor_Piece_Base";
	rename -uid "393317EA-4236-06AD-D73E-67B4654BC98A";
	setAttr ".t" -type "double3" 3.3000000000000003 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base89" -p "Floor_Piece_Base";
	rename -uid "38E393D3-4AD5-A193-BF27-3DA52C9A946A";
	setAttr ".t" -type "double3" 3.9600000000000004 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base90" -p "Floor_Piece_Base";
	rename -uid "855A500C-4884-C10E-4937-418ECCD869EA";
	setAttr ".t" -type "double3" 4.62 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base91" -p "Floor_Piece_Base";
	rename -uid "5F12E7A7-4917-ADD4-3C47-9CBD3B4C4082";
	setAttr ".t" -type "double3" 5.28 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base92" -p "Floor_Piece_Base";
	rename -uid "CA95FDE4-4CE2-4FED-6B0F-8A99516E0FC0";
	setAttr ".t" -type "double3" 5.94 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base93" -p "Floor_Piece_Base";
	rename -uid "FABD6B3C-42B6-511F-1D81-11801812D9E8";
	setAttr ".t" -type "double3" 6.6000000000000005 0 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base94" -p "Floor_Piece_Base";
	rename -uid "FA119F4A-4DDD-B085-ACB8-C3A9DD93192F";
	setAttr ".t" -type "double3" 7.2600000000000007 1.9898681322850127 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base95" -p "Floor_Piece_Base";
	rename -uid "A7DAA8EB-48ED-3E15-AA9B-B791F8B63FBA";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base96" -p "Floor_Piece_Base";
	rename -uid "1009D5C6-4C40-7884-70A8-4CAD9624E79F";
	setAttr ".t" -type "double3" 0 0 1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base97" -p "Floor_Piece_Base";
	rename -uid "93B0B9F9-459A-41F2-AA15-ED8432A5673C";
	setAttr ".t" -type "double3" 0.66 0 1.32 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base98" -p "Floor_Piece_Base";
	rename -uid "5A49F777-4BC3-669A-7CF5-5E9F2A2F6C17";
	setAttr ".t" -type "double3" 1.32 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base99" -p "Floor_Piece_Base";
	rename -uid "9DE9CD5B-407F-704C-4CE1-6EBA6805A936";
	setAttr ".t" -type "double3" 1.98 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base100" -p "Floor_Piece_Base";
	rename -uid "5E0E8D2D-4F85-97EC-49A5-BEAC5F7B4DA2";
	setAttr ".t" -type "double3" 2.64 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base101" -p "Floor_Piece_Base";
	rename -uid "8A577443-41F9-06BF-6DEF-71B8AF70A95F";
	setAttr ".t" -type "double3" 3.3000000000000003 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base102" -p "Floor_Piece_Base";
	rename -uid "15E38FAD-4F72-D262-8B3D-4C94FD5EBC3E";
	setAttr ".t" -type "double3" 3.9600000000000004 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base103" -p "Floor_Piece_Base";
	rename -uid "41ED8531-40BF-AC49-0BA4-8BABB5775B7A";
	setAttr ".t" -type "double3" 4.62 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base104" -p "Floor_Piece_Base";
	rename -uid "F80DB781-4687-852D-99F7-33AE0BD0AF05";
	setAttr ".t" -type "double3" 5.28 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base105" -p "Floor_Piece_Base";
	rename -uid "C5D79DF0-43E1-9A2C-25A6-EC80FECC4458";
	setAttr ".t" -type "double3" 5.94 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base106" -p "Floor_Piece_Base";
	rename -uid "4F1D9808-478A-293A-A6AE-0FB308EC1E66";
	setAttr ".t" -type "double3" 6.6000000000000005 0 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base107" -p "Floor_Piece_Base";
	rename -uid "64BB7960-447C-BC2A-0F1C-9495D98A8BC4";
	setAttr ".t" -type "double3" 7.2600000000000007 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base108" -p "Floor_Piece_Base";
	rename -uid "1AC35375-4956-A2FA-18AE-0D8597CDBE3B";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base109" -p "Floor_Piece_Base";
	rename -uid "05F13935-4F18-7BEA-14B7-52A658524C48";
	setAttr ".t" -type "double3" 0 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base110" -p "Floor_Piece_Base";
	rename -uid "995853AE-4525-209E-15FB-54A3C3D99067";
	setAttr ".t" -type "double3" 0.66 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base111" -p "Floor_Piece_Base";
	rename -uid "5D61F383-4721-DE2E-7FC8-59A159E4A18A";
	setAttr ".t" -type "double3" 1.32 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base112" -p "Floor_Piece_Base";
	rename -uid "7C7D4D93-4B84-60F3-8B7B-3E98F134E2AD";
	setAttr ".t" -type "double3" 1.98 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base113" -p "Floor_Piece_Base";
	rename -uid "523A53C6-495F-A8EF-C1C0-9AAE7FCAC37C";
	setAttr ".t" -type "double3" 2.64 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base114" -p "Floor_Piece_Base";
	rename -uid "DFA26E62-42B0-A336-1919-7EAA5AA2306D";
	setAttr ".t" -type "double3" 3.3 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base115" -p "Floor_Piece_Base";
	rename -uid "82110064-4B1A-B1BB-D841-E4AFA093D5CA";
	setAttr ".t" -type "double3" 3.9600000000000004 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base116" -p "Floor_Piece_Base";
	rename -uid "52B07036-4133-A7BB-7886-99A830E466CA";
	setAttr ".t" -type "double3" 4.62 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base117" -p "Floor_Piece_Base";
	rename -uid "C2E84FB9-4A7F-78BC-AFFF-DBAA505B1FE7";
	setAttr ".t" -type "double3" 5.28 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base118" -p "Floor_Piece_Base";
	rename -uid "DC562738-4A56-A989-EF8C-E592E99C1DA1";
	setAttr ".t" -type "double3" 5.94 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base119" -p "Floor_Piece_Base";
	rename -uid "6AD64E20-4F82-C0C8-C35B-F5BAD4EFAC5E";
	setAttr ".t" -type "double3" 6.6 0 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base120" -p "Floor_Piece_Base";
	rename -uid "CBF97509-489D-54B3-6E6C-74A1843FDC10";
	setAttr ".t" -type "double3" 7.26 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base121" -p "Floor_Piece_Base";
	rename -uid "8F50A8C8-443B-5BE4-9F2B-549F2B2BC40D";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base122" -p "Floor_Piece_Base";
	rename -uid "3CE261B3-4944-80C2-8CCB-DCBF5907200A";
	setAttr ".t" -type "double3" 0 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base123" -p "Floor_Piece_Base";
	rename -uid "3E90B68F-4A78-AC8C-0C5D-298AA75BB96E";
	setAttr ".t" -type "double3" 0.66 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base124" -p "Floor_Piece_Base";
	rename -uid "79A01354-47CA-D0FF-F24B-C88773BF11A3";
	setAttr ".t" -type "double3" 1.32 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base125" -p "Floor_Piece_Base";
	rename -uid "AF25EC2F-4D51-FEDE-B8B8-0486BEEAFE63";
	setAttr ".t" -type "double3" 1.98 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base126" -p "Floor_Piece_Base";
	rename -uid "F2C0AA97-456B-ABCF-A878-39A529927AAB";
	setAttr ".t" -type "double3" 2.64 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base127" -p "Floor_Piece_Base";
	rename -uid "F89FECBD-4F7C-C49C-91FE-319FF0A443CE";
	setAttr ".t" -type "double3" 3.2999999999999994 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base128" -p "Floor_Piece_Base";
	rename -uid "4293D38A-44BE-36DE-7AC0-F99BE31AEA16";
	setAttr ".t" -type "double3" 3.9600000000000004 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base129" -p "Floor_Piece_Base";
	rename -uid "524C28C5-4262-ADEA-3EE0-72937DD25D3A";
	setAttr ".t" -type "double3" 4.62 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base130" -p "Floor_Piece_Base";
	rename -uid "38E4B420-450D-CB7F-FB1C-A3B8C095D77B";
	setAttr ".t" -type "double3" 5.28 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base131" -p "Floor_Piece_Base";
	rename -uid "7519C778-4351-5A12-9C87-F1A2C7DCE454";
	setAttr ".t" -type "double3" 5.94 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base132" -p "Floor_Piece_Base";
	rename -uid "C76DD8FA-4FB5-C449-3CC3-EB9919C660CA";
	setAttr ".t" -type "double3" 6.5999999999999988 0 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base133" -p "Floor_Piece_Base";
	rename -uid "E9B1C4B4-4099-701E-378E-FD8B334CF9AE";
	setAttr ".t" -type "double3" 7.2599999999999989 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base134" -p "Floor_Piece_Base";
	rename -uid "42955800-48FB-04F1-38B7-A29AF38177E3";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base135" -p "Floor_Piece_Base";
	rename -uid "E94492E6-469A-FF3D-626C-ADAB08FCA730";
	setAttr ".t" -type "double3" 0 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base136" -p "Floor_Piece_Base";
	rename -uid "8EE96BC8-470A-75E0-0F68-A2A4B8308B78";
	setAttr ".t" -type "double3" 0.66 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base137" -p "Floor_Piece_Base";
	rename -uid "56808B26-4EBF-279A-B188-A4B0DB0A921C";
	setAttr ".t" -type "double3" 1.32 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base138" -p "Floor_Piece_Base";
	rename -uid "89A089A8-4E47-7F19-BC22-78BB0BAF215F";
	setAttr ".t" -type "double3" 1.98 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base139" -p "Floor_Piece_Base";
	rename -uid "140EA908-478A-3AD6-C9D0-099984AB2112";
	setAttr ".t" -type "double3" 2.64 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base140" -p "Floor_Piece_Base";
	rename -uid "FDC5BB70-4935-40CF-2645-68877090311E";
	setAttr ".t" -type "double3" 3.2999999999999989 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base141" -p "Floor_Piece_Base";
	rename -uid "6FFD5547-44C8-4A8B-E0B3-FF85B8D2900D";
	setAttr ".t" -type "double3" 3.9600000000000004 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base142" -p "Floor_Piece_Base";
	rename -uid "4877FB4F-427E-6711-327E-56933802BA43";
	setAttr ".t" -type "double3" 4.62 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base143" -p "Floor_Piece_Base";
	rename -uid "C4C24D16-4B2A-BED5-D93B-BAA2FB8FB833";
	setAttr ".t" -type "double3" 5.28 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base144" -p "Floor_Piece_Base";
	rename -uid "CE408933-40A2-C6FD-C7D2-EDBED7463886";
	setAttr ".t" -type "double3" 5.94 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base145" -p "Floor_Piece_Base";
	rename -uid "810F940A-4543-CAA5-8C37-1383E34D66B8";
	setAttr ".t" -type "double3" 6.5999999999999979 0 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base146" -p "Floor_Piece_Base";
	rename -uid "E29D08CD-4BB5-E3FB-E82F-35AD71D257E6";
	setAttr ".t" -type "double3" 7.259999999999998 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base147" -p "Floor_Piece_Base";
	rename -uid "FCF00AF6-418D-FD8E-542C-E4A76CD177C9";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base148" -p "Floor_Piece_Base";
	rename -uid "E5F03DB7-4F27-AEC2-DDDC-F79661D153F5";
	setAttr ".t" -type "double3" 0 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base149" -p "Floor_Piece_Base";
	rename -uid "8CC9ED17-404C-094E-8CAB-94BA06C99F31";
	setAttr ".t" -type "double3" 0.66 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base150" -p "Floor_Piece_Base";
	rename -uid "705FD54B-4467-4A62-C0CE-E9B5AB67C3FF";
	setAttr ".t" -type "double3" 1.32 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base151" -p "Floor_Piece_Base";
	rename -uid "C4F81D3A-440A-3764-85A1-3AB98BF8C654";
	setAttr ".t" -type "double3" 1.98 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base152" -p "Floor_Piece_Base";
	rename -uid "CEB3E9A8-4D2B-434C-A3EE-35BAF6F56B98";
	setAttr ".t" -type "double3" 2.64 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base153" -p "Floor_Piece_Base";
	rename -uid "D2639364-4041-40D1-D106-58A47707B22D";
	setAttr ".t" -type "double3" 3.2999999999999985 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base154" -p "Floor_Piece_Base";
	rename -uid "028CDDCE-4F9F-F5F7-71CD-569590C0C8CC";
	setAttr ".t" -type "double3" 3.9600000000000004 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base155" -p "Floor_Piece_Base";
	rename -uid "6B698B7C-4934-B47B-E575-65B2F500B56D";
	setAttr ".t" -type "double3" 4.62 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base156" -p "Floor_Piece_Base";
	rename -uid "49C8C667-457C-6E5A-6727-8B9CA1D1D75F";
	setAttr ".t" -type "double3" 5.28 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base157" -p "Floor_Piece_Base";
	rename -uid "A060250A-487D-821D-6762-E38A505D97BC";
	setAttr ".t" -type "double3" 5.94 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base158" -p "Floor_Piece_Base";
	rename -uid "51CB8BE8-4C86-AFA3-2479-D497DB90646F";
	setAttr ".t" -type "double3" 6.599999999999997 0 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base159" -p "Floor_Piece_Base";
	rename -uid "2F28A108-4C3A-9442-3B4E-1D83AAE289BE";
	setAttr ".t" -type "double3" 7.2599999999999971 1.9898681322850127 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base160" -p "Floor_Piece_Base";
	rename -uid "E0E70277-4062-5348-846A-62923E44D20B";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base161" -p "Floor_Piece_Base";
	rename -uid "286DA8C1-4D98-E639-FC88-87B9AFC53B53";
	setAttr ".t" -type "double3" 0 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base162" -p "Floor_Piece_Base";
	rename -uid "3D876A50-464E-0BA3-C723-C18F6FD62431";
	setAttr ".t" -type "double3" 0.66 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base163" -p "Floor_Piece_Base";
	rename -uid "92011A9A-4295-BCAB-29DC-D590BB6F019D";
	setAttr ".t" -type "double3" 1.32 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base164" -p "Floor_Piece_Base";
	rename -uid "D70673CE-473F-5A28-71C2-A2827C760E9E";
	setAttr ".t" -type "double3" 1.98 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base165" -p "Floor_Piece_Base";
	rename -uid "5678ADB0-48CE-E0D4-1B56-0DAC3DAC4498";
	setAttr ".t" -type "double3" 2.64 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base166" -p "Floor_Piece_Base";
	rename -uid "C32FBB03-4DE3-17B8-69FB-8EBBA3C8F9F0";
	setAttr ".t" -type "double3" 3.299999999999998 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base167" -p "Floor_Piece_Base";
	rename -uid "B8A1B77D-41BF-04C5-78D9-4899CD50C9F2";
	setAttr ".t" -type "double3" 3.9600000000000004 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base168" -p "Floor_Piece_Base";
	rename -uid "FDF0C35D-425A-7ED0-BB59-28A0780D7483";
	setAttr ".t" -type "double3" 4.62 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base169" -p "Floor_Piece_Base";
	rename -uid "84AEB7E5-424D-9BA3-B838-AE972DB7726D";
	setAttr ".t" -type "double3" 5.28 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base170" -p "Floor_Piece_Base";
	rename -uid "8DAACEC2-40EE-5F3F-1985-EFB964D1F283";
	setAttr ".t" -type "double3" 5.94 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base171" -p "Floor_Piece_Base";
	rename -uid "504015D8-4122-4756-AE9A-8CABC1DE385E";
	setAttr ".t" -type "double3" 6.5999999999999961 0 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base172" -p "Floor_Piece_Base";
	rename -uid "9BDD21EA-43F0-D61A-F2A1-0485FC1A1D73";
	setAttr ".t" -type "double3" 7.2599999999999962 1.9898681322850127 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base173" -p "Floor_Piece_Base";
	rename -uid "ABB94063-4760-FEFD-2486-DA9E5F7499CF";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base174" -p "Floor_Piece_Base";
	rename -uid "F5DD2DC3-4845-E5B2-3D2A-E3A22BECE862";
	setAttr ".t" -type "double3" 0 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base175" -p "Floor_Piece_Base";
	rename -uid "61AE1023-444C-8803-AE5C-90AF9CA28151";
	setAttr ".t" -type "double3" 0.66 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base176" -p "Floor_Piece_Base";
	rename -uid "6595CDC7-446A-16B5-FB35-5BAC2B9AD3E7";
	setAttr ".t" -type "double3" 1.32 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base177" -p "Floor_Piece_Base";
	rename -uid "4F0635A7-4DED-FEF1-CFEE-E6B84283B8BA";
	setAttr ".t" -type "double3" 1.98 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base178" -p "Floor_Piece_Base";
	rename -uid "E421FB57-4126-E699-8342-228050207BC1";
	setAttr ".t" -type "double3" 2.64 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base179" -p "Floor_Piece_Base";
	rename -uid "0B4BCB64-4EEF-516F-B575-418A0A0C6FB6";
	setAttr ".t" -type "double3" 3.2999999999999976 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base180" -p "Floor_Piece_Base";
	rename -uid "C4BD1DDD-4529-7FD4-6D39-08ACBEA3A726";
	setAttr ".t" -type "double3" 3.9600000000000004 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base181" -p "Floor_Piece_Base";
	rename -uid "4D1A01CC-4CE4-EA6B-9493-E58C8856749B";
	setAttr ".t" -type "double3" 4.62 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base182" -p "Floor_Piece_Base";
	rename -uid "C1B8CB97-4660-8C16-CEA4-9CA972407BFF";
	setAttr ".t" -type "double3" 5.28 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base183" -p "Floor_Piece_Base";
	rename -uid "E7EAFB0E-4665-9B2B-CDB2-538879243887";
	setAttr ".t" -type "double3" 5.94 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base184" -p "Floor_Piece_Base";
	rename -uid "2C6E8A70-416E-FBE5-2566-AC9CB6DC541A";
	setAttr ".t" -type "double3" 6.5999999999999952 0 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base185" -p "Floor_Piece_Base";
	rename -uid "F972B48B-413B-3037-114E-47B142CC9711";
	setAttr ".t" -type "double3" 7.2599999999999953 1.9898681322850127 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base186" -p "Floor_Piece_Base";
	rename -uid "633F9F2C-44B6-ED4A-C23F-2BBD79326527";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base187" -p "Floor_Piece_Base";
	rename -uid "CB82A94A-4A38-83C2-F6DF-57B3744A5DE1";
	setAttr ".t" -type "double3" 0 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base188" -p "Floor_Piece_Base";
	rename -uid "7E7BBCD6-4250-8239-F11E-E0B3DBE8D067";
	setAttr ".t" -type "double3" 0.66 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base189" -p "Floor_Piece_Base";
	rename -uid "503D228F-4DB4-C166-5CDD-08987A764494";
	setAttr ".t" -type "double3" 1.32 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base190" -p "Floor_Piece_Base";
	rename -uid "43FE066E-45C5-F3DA-2678-26860231CF50";
	setAttr ".t" -type "double3" 1.98 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base191" -p "Floor_Piece_Base";
	rename -uid "A871032A-4E0E-174A-BED0-52BD758166B8";
	setAttr ".t" -type "double3" 2.64 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base192" -p "Floor_Piece_Base";
	rename -uid "22D3FCA5-458E-3899-876C-2D87DE8AC858";
	setAttr ".t" -type "double3" 3.2999999999999972 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base193" -p "Floor_Piece_Base";
	rename -uid "8FE89FEB-45B8-5D73-74ED-4198EABCFAB2";
	setAttr ".t" -type "double3" 3.9600000000000004 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base194" -p "Floor_Piece_Base";
	rename -uid "BCD2F65B-4AD7-0A45-0F32-8C835F74822A";
	setAttr ".t" -type "double3" 4.62 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base195" -p "Floor_Piece_Base";
	rename -uid "CE075ED1-4344-1852-45D3-8E8A0E412D41";
	setAttr ".t" -type "double3" 5.28 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base196" -p "Floor_Piece_Base";
	rename -uid "8F8B2862-4DA6-EC72-2E62-1FA583EEBBBD";
	setAttr ".t" -type "double3" 5.94 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base197" -p "Floor_Piece_Base";
	rename -uid "796BEB10-468F-3A51-E5E9-D699E926EF88";
	setAttr ".t" -type "double3" 6.5999999999999943 0 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base198" -p "Floor_Piece_Base";
	rename -uid "2A416585-455C-59A5-FB62-5C9B307ECDBE";
	setAttr ".t" -type "double3" 7.2599999999999945 1.9898681322850127 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base199" -p "Floor_Piece_Base";
	rename -uid "7AD78501-419B-CBC7-665F-B1ADA6C9153B";
	setAttr ".t" -type "double3" 7.9200000000000008 1.9898681322850127 5.9400000000000013 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base201" -p "Floor_Piece_Base";
	rename -uid "953D6F06-4D74-0D48-D42C-B2B0071451B9";
	setAttr ".t" -type "double3" 0.66 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base202" -p "Floor_Piece_Base";
	rename -uid "54091679-454A-63B6-A450-55AC39E48713";
	setAttr ".t" -type "double3" 1.3304539859795887 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base203" -p "Floor_Piece_Base";
	rename -uid "F637379E-4DED-6A5E-7B79-B7B678630174";
	setAttr ".t" -type "double3" 1.9904539859795887 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base204" -p "Floor_Piece_Base";
	rename -uid "5801E11C-4F19-E899-A238-73BBA0FDFC58";
	setAttr ".t" -type "double3" 2.6504539859795888 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base205" -p "Floor_Piece_Base";
	rename -uid "F8F50A74-4AAD-0925-7314-EDAAE11618D8";
	setAttr ".t" -type "double3" 3.2999999999999967 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base206" -p "Floor_Piece_Base";
	rename -uid "18F36A81-478F-D25B-A0C3-7AA9A221F8B1";
	setAttr ".t" -type "double3" 3.9600000000000004 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base207" -p "Floor_Piece_Base";
	rename -uid "A762F6DF-45BE-13F5-5B75-D19FFECEBB3F";
	setAttr ".t" -type "double3" 4.62 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base208" -p "Floor_Piece_Base";
	rename -uid "E194641D-413C-C952-4260-3C937223B415";
	setAttr ".t" -type "double3" 5.28 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base209" -p "Floor_Piece_Base";
	rename -uid "76A5F658-438B-60E3-84D3-5EB449E0B124";
	setAttr ".t" -type "double3" 5.94 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base210" -p "Floor_Piece_Base";
	rename -uid "23527C8E-443E-21D3-7ED6-91BAA45C3A07";
	setAttr ".t" -type "double3" 6.5999999999999934 0 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base211" -p "Floor_Piece_Base";
	rename -uid "DB49AF66-4909-D750-637E-13AA4B93A23B";
	setAttr ".t" -type "double3" 7.2599999999999936 1.9898681322850127 6.6000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base215" -p "Floor_Piece_Base";
	rename -uid "FB5A43C7-458E-F5CD-4381-208EFEC48714";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base216" -p "Floor_Piece_Base";
	rename -uid "7181D45B-4C4E-B146-14D0-17980E7A2386";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base217" -p "Floor_Piece_Base";
	rename -uid "76E2A28B-4EE6-BE5D-4088-498752B1052A";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base218" -p "Floor_Piece_Base";
	rename -uid "CACE26FA-45A5-2FE6-A00D-4E99E6359BDD";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base219" -p "Floor_Piece_Base";
	rename -uid "6E0B772A-4417-F990-B8AE-A69A96625356";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base220" -p "Floor_Piece_Base";
	rename -uid "973CFEB4-4936-30E3-EEF8-A9915E9A14BA";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base221" -p "Floor_Piece_Base";
	rename -uid "0C2626B6-4DAE-390E-E8E8-93807662E951";
	setAttr ".t" -type "double3" 8.58 1.9898681322850127 5.2800000000000011 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base222" -p "Floor_Piece_Base";
	rename -uid "3C071A43-42FA-31B0-7A37-658EA796E902";
	setAttr ".t" -type "double3" 1.9800000000000004 0 -0.64939625414565327 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape222" -p "Floor_Piece_Base222";
	rename -uid "7A16C039-4FBA-E712-87F8-B09FE86B18B4";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base222";
	rename -uid "ACE53F64-4915-3298-9638-75968004F113";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base223" -p "Floor_Piece_Base";
	rename -uid "E13C44E6-47D3-5E31-F101-A28AA4DDEF5B";
	setAttr ".t" -type "double3" 1.9800000000000004 0 -1.3160628810758901 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape223" -p "Floor_Piece_Base223";
	rename -uid "D2C13C35-4AE9-C6B0-CD39-CEA91DC5CB82";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base223";
	rename -uid "D3CB7A73-4882-8F22-52F8-3D9B2CEC47DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base224" -p "Floor_Piece_Base";
	rename -uid "D5B2087D-4A84-13B7-4266-40B331DCA8A2";
	setAttr ".t" -type "double3" 1.9800000000000004 0 -1.9827295080061269 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape224" -p "Floor_Piece_Base224";
	rename -uid "B20BB5F2-4CB8-9AA3-90D2-99A447650213";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base224";
	rename -uid "5AA2FB3B-441A-8139-FEBE-58A89D4FB314";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base225" -p "Floor_Piece_Base";
	rename -uid "2106251B-4F56-8F5F-13A7-628610E4A2AA";
	setAttr ".t" -type "double3" 1.9800000000000004 0 -2.6493961349363637 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape225" -p "Floor_Piece_Base225";
	rename -uid "D43AEB76-4953-B14E-833A-B9BE635E46EF";
	setAttr -k off ".v";
	setAttr -s 19 ".iog";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base225";
	rename -uid "C5E727DE-4FC4-70BB-F6FF-21B987D25C23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base226" -p "Floor_Piece_Base";
	rename -uid "1EBC38F1-4499-B6AF-F01D-7BA8C070CDDD";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base227" -p "Floor_Piece_Base";
	rename -uid "EFF35BBD-430D-52FD-7AF8-3CAE1DEBD4D6";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base228" -p "Floor_Piece_Base";
	rename -uid "63316B6C-42D0-FCF4-439B-AEBBF8E71760";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base229" -p "Floor_Piece_Base";
	rename -uid "8A74055D-43CC-BC41-C7C8-FDB87876BEE9";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base230" -p "Floor_Piece_Base";
	rename -uid "CE91FA4A-42D5-D051-A57A-1FBD30D8C8D9";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base231" -p "Floor_Piece_Base";
	rename -uid "023C39B9-4DD2-9EA1-813A-129385086CA2";
	setAttr ".t" -type "double3" 9.24 1.9898681322850127 4.620000000000001 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base232" -p "Floor_Piece_Base";
	rename -uid "22AF98A7-4B1D-72C7-AF41-54B2254995FF";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base233" -p "Floor_Piece_Base";
	rename -uid "66753041-4E96-CD0A-2AB4-36A9C1CCE556";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base234" -p "Floor_Piece_Base";
	rename -uid "8204537B-489F-A998-3D70-F0B0DEF1DDEB";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base235" -p "Floor_Piece_Base";
	rename -uid "17D48FFE-462D-C2CE-B1A2-27B479821B64";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base236" -p "Floor_Piece_Base";
	rename -uid "638510B9-49F8-5884-1F92-B7AA592BD43E";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 3.9600000000000009 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base238" -p "Floor_Piece_Base";
	rename -uid "70421E72-4C7C-3B19-456A-1293256B1761";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base239" -p "Floor_Piece_Base";
	rename -uid "8B65C036-4AE6-CE52-4E9E-1898E4D5A9DA";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base240" -p "Floor_Piece_Base";
	rename -uid "BE93C2AA-4EF5-2AD1-DA17-DC8DE786C612";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base241" -p "Floor_Piece_Base";
	rename -uid "2801E7EC-4423-820F-4E3A-72B8BAF62620";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base244" -p "Floor_Piece_Base";
	rename -uid "A09D9CFD-4D7A-604C-53C0-0AAB108356AA";
	setAttr ".t" -type "double3" 11.22 1.9898681322850127 1.3200000000000003 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base245" -p "Floor_Piece_Base";
	rename -uid "53308D45-4115-8115-FA86-CEB74720FB1C";
	setAttr ".t" -type "double3" 11.22 1.9898681322850127 1.9800000000000004 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base246" -p "Floor_Piece_Base";
	rename -uid "2ADBF725-4944-C831-33BD-F7A86AC42737";
	setAttr ".t" -type "double3" 11.22 1.9898681322850127 2.6400000000000006 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base247" -p "Floor_Piece_Base";
	rename -uid "D73A853F-4019-7067-16C3-F38375A085EA";
	setAttr ".t" -type "double3" 11.22 1.9898681322850127 3.3000000000000007 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base248" -p "Floor_Piece_Base";
	rename -uid "3D06942C-41B8-9EF0-753A-F796EEB0B0E2";
	setAttr ".t" -type "double3" 9.9 1.9898681322850127 0.66000000000000025 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base249" -p "Floor_Piece_Base";
	rename -uid "CDF29A49-4D92-D86D-1AFC-6FB01070FDEF";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 0.66000000000000025 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base250" -p "Floor_Piece_Base";
	rename -uid "F89A32CF-4B5D-1C34-EA64-30950A3DF966";
	setAttr ".t" -type "double3" 11.22 1.9898681322850127 0.66000000000000025 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base252" -p "Floor_Piece_Base";
	rename -uid "F56D7EDF-4157-84AA-FDDB-4AA542F3453A";
	setAttr ".t" -type "double3" 10.56 1.9898681322850127 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base253" -p "Floor_Piece_Base";
	rename -uid "98EC6FBE-402D-B21C-09E6-75BEAF704BE1";
	setAttr ".t" -type "double3" 11.22 1.9898681322850125 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base256" -p "Floor_Piece_Base";
	rename -uid "62AE27AB-438A-E08A-AD4E-22854124C07B";
	setAttr ".t" -type "double3" 11.22 1.9898681322850125 -0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base263" -p "Floor_Piece_Base";
	rename -uid "ECBB39B3-4F62-AF3C-AFE8-909E66041BB0";
	setAttr ".t" -type "double3" 11.655056352475009 1.9898681322850125 0 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape263" -p "Floor_Piece_Base263";
	rename -uid "6E4E124B-4DFF-929D-292A-BDACCF3CBFA0";
	setAttr -k off ".v";
	setAttr -s 53 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[13].og";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[14].og";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[15].og";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[16].og";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[17].og";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[18].og";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[44].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[45].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[46].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[47].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[48].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[49].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[50].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[51].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[52].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base263";
	rename -uid "A276B104-43B0-D5C3-4839-EE9A0E0DF468";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Piece_Base264" -p "Floor_Piece_Base";
	rename -uid "07326A63-46D3-B039-B5B7-7B9A9A9954D3";
	setAttr ".t" -type "double3" 11.655056352475009 1.9898681322850125 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base265" -p "Floor_Piece_Base";
	rename -uid "D930B437-4705-AB3D-4EDA-A3AB8656D7AD";
	setAttr ".t" -type "double3" 12.66 1.9898681322850127 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base266" -p "Floor_Piece_Base";
	rename -uid "58DEF8D9-424C-DCF2-4B7C-5C90EECD5CB1";
	setAttr ".t" -type "double3" 12 1.9898681322850127 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base267" -p "Floor_Piece_Base";
	rename -uid "EADBDB76-455A-92CC-422A-E5998EF8E49D";
	setAttr ".t" -type "double3" 13.32 1.9898681322850127 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base268" -p "Floor_Piece_Base";
	rename -uid "D214AD03-44BD-04DE-EBD3-BF96E1605692";
	setAttr ".t" -type "double3" 13.98 1.9898681322850127 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base269" -p "Floor_Piece_Base";
	rename -uid "C1DC7536-4762-C52C-91BD-13B6E97D6BCC";
	setAttr ".t" -type "double3" 14.64 1.9898681322850127 0.66 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base270" -p "Floor_Piece_Base";
	rename -uid "1EB77E42-4500-0E74-7587-09B573B99BDE";
	setAttr ".t" -type "double3" 1.3304539859795887 0 7.2600000000000016 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base271" -p "Floor_Piece_Base";
	rename -uid "E3564693-4943-EC18-C0BD-D8BA46AEC49A";
	setAttr ".t" -type "double3" 1.9904539859795887 0 7.2600000000000016 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base272" -p "Floor_Piece_Base";
	rename -uid "A4F9E74B-4F24-991C-6E04-929283C5095D";
	setAttr ".t" -type "double3" 2.6504539859795888 0 7.2600000000000016 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base273" -p "Floor_Piece_Base";
	rename -uid "FBEA658B-4A90-2714-419B-D79C0F039C8C";
	setAttr ".t" -type "double3" 1.3304539859795885 0 7.9200000000000017 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base274" -p "Floor_Piece_Base";
	rename -uid "5BDC6163-494B-5975-410B-30A107F39888";
	setAttr ".t" -type "double3" 1.9904539859795889 0 7.9200000000000017 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base275" -p "Floor_Piece_Base";
	rename -uid "A5C1ECC5-447E-DD65-7CBD-BEB5120F62CA";
	setAttr ".t" -type "double3" 2.6504539859795884 0 7.9200000000000017 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode transform -n "Floor_Piece_Base276" -p "Floor_Piece_Base";
	rename -uid "173B5542-43AF-9A2E-5482-EFAEAAB3B8DD";
	setAttr ".t" -type "double3" 8.58275113342156 1.9898681322850127 0.66000000000000014 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_Piece_BaseShape276" -p "Floor_Piece_Base276";
	rename -uid "EF9F56DE-4703-CEAE-B254-EAAB547D5792";
	setAttr -k off ".v";
	setAttr -s 134 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[1].og";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[2].og";
	setAttr ".iog[2].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[2].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[3].og";
	setAttr ".iog[3].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[3].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[4].og";
	setAttr ".iog[4].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[7].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[4].og[9].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[5].og";
	setAttr ".iog[5].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[5].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[6].og";
	setAttr ".iog[6].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[6].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[7].og";
	setAttr ".iog[7].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[6].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[7].og[8].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 4 ".iog[8].og";
	setAttr ".iog[8].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[8].og[5].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[9].og";
	setAttr ".iog[9].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[9].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[10].og";
	setAttr ".iog[10].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[2].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[10].og[4].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 3 ".iog[11].og";
	setAttr ".iog[11].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[11].og[3].gcl" -type "componentList" 1 "f[0]";
	setAttr -s 2 ".iog[12].og";
	setAttr ".iog[12].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[12].og[1].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[13].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[14].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[15].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[16].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[17].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[18].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[19].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[20].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[21].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[22].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[23].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[24].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[25].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[26].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[27].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[28].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[29].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[30].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[31].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[32].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[33].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[34].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[35].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[36].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[37].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[38].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[39].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[40].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[41].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[42].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[43].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[44].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[45].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[46].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[47].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[48].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[49].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[50].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[51].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[52].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[53].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[54].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[55].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[56].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[57].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[58].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[59].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[60].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[61].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[62].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[63].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[64].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[65].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[66].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[67].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[68].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[69].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[70].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[71].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[72].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[73].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[74].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[75].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[76].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[77].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[78].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[79].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[80].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[81].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[82].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[83].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[84].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[85].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[86].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[87].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[88].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[89].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[90].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[91].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[92].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[93].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[94].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[95].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[96].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[97].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[98].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[99].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[100].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[101].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[102].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[103].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[104].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[105].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[106].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[107].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[108].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[109].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[110].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[111].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[112].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[113].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[114].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[115].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[116].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[117].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[118].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[119].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[120].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[121].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[122].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[123].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[124].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[125].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[126].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[127].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[128].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[129].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[130].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[131].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[132].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[133].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece_Base276";
	rename -uid "6732DE57-445F-654E-A6D5-9BB8FB756CF5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Base_Pieces";
	rename -uid "15D02C77-421D-AD6D-007E-CF8EB8591C21";
createNode transform -n "Floor_Piece" -p "Base_Pieces";
	rename -uid "A0C50AFA-4A5D-145D-0478-98AD75B61150";
	setAttr ".t" -type "double3" 0 -2 -16.033777099028399 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Floor_PieceShape" -p "Floor_Piece";
	rename -uid "B52D227A-43FF-B3C0-8818-4B8BB75F0BCD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.2916666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "Floor_Piece";
	rename -uid "34C61BD6-4A79-0AD4-433D-8AB1E5430C5B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cieling_Piece" -p "Base_Pieces";
	rename -uid "455BF10F-48EC-2303-7BDC-E79944587D52";
	setAttr ".t" -type "double3" 0 0 -16.033777099028399 ;
	setAttr ".rp" -type "double3" 0 1 1 ;
	setAttr ".sp" -type "double3" 0 1 1 ;
createNode mesh -n "Cieling_PieceShape" -p "Cieling_Piece";
	rename -uid "AE9890E6-4AD4-41A2-7840-DAABE555642A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.54166663 0.33333331
		 0.54166663 0.25 0.45833331 0.25 0.45833331 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.33333325 1 0.33333337 0.33333325 1 1 -0.33333337 1 1
		 -0.33333337 1 0.33333337;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -3 0 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Quad_Piece" -p "Base_Pieces";
	rename -uid "38F584D4-4CFF-7177-A804-E4892DAF05CA";
	setAttr ".t" -type "double3" 0 0 -14.033777099028397 ;
createNode mesh -n "Quad_PieceShape" -p "Quad_Piece";
	rename -uid "88AC7190-44BA-CD42-C05A-1EB6C656D5FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "T_Piece" -p "Base_Pieces";
	rename -uid "3D57B1BE-4D80-9C81-BA02-1CBF6915CD09";
	setAttr ".t" -type "double3" 0 0 -16.033777099028399 ;
createNode mesh -n "T_PieceShape" -p "T_Piece";
	rename -uid "8D6E33F1-4AF6-ECBC-C1BE-108E9AD0B172";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "L_piece" -p "Base_Pieces";
	rename -uid "213DE21A-4845-76FD-7F43-6F81E493BF60";
	setAttr ".t" -type "double3" 2 0 -14.033777099028397 ;
createNode mesh -n "L_pieceShape" -p "L_piece";
	rename -uid "CED13F57-4C28-2533-6A69-9B9D718B8A31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166662693023682 0.62500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "L_piece";
	rename -uid "48543E11-4084-91B3-42ED-5294FDA6A6AB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.20833334 0.25 0.375
		 0.41666666 0.20833334 0 0.375 0.83333337 0.29166669 0.25 0.375 0.33333331 0.29166669
		 0 0.375 0.91666669 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337 0.54166663
		 0.91666675 0.54166663 0.33333331 0.54166663 0.41666666 0.45833331 0.5 0.45833331
		 0.75 0.45833331 0.83333337 0.45833331 0.91666675 0.45833331 0.33333331 0.45833331
		 0.41666666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 1 -0.33333325 -1 -1 -0.33333325 -1 1 0.33333337
		 -1 -1 0.33333337 0.33333325 1 -1 0.33333325 -1 -1 0.33333325 -1 -0.33333325 0.33333325 -1 0.33333337
		 0.33333325 1 0.33333337 0.33333325 1 -0.33333325 -0.33333337 1 -1 -0.33333337 -1 -1
		 -0.33333337 -1 -0.33333325 -0.33333337 -1 0.33333337 -0.33333337 1 0.33333337 -0.33333337 1 -0.33333325;
	setAttr -s 24 ".ed[0:23]"  1 3 0 0 1 0 1 12 0 2 0 0 2 3 0 3 13 0 4 5 0
		 5 6 0 6 7 0 8 14 0 9 15 1 8 9 0 9 4 0 10 4 0 11 5 0 10 11 0 12 6 1 11 12 0 13 7 0
		 12 13 1 14 2 0 15 0 0 14 15 1 15 10 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -21 22 21 -4
		mu 0 4 5 18 19 1
		f 4 0 -5 3 1
		mu 0 4 2 6 4 0
		f 4 2 19 -6 -1
		mu 0 4 3 16 17 7
		f 4 13 6 -15 -16
		mu 0 4 14 8 9 15
		f 4 -18 14 7 -17
		mu 0 4 16 15 9 10
		f 4 -20 16 8 -19
		mu 0 4 17 16 10 11
		f 4 -23 -10 11 10
		mu 0 4 19 18 12 13
		f 4 -24 -11 12 -14
		mu 0 4 14 19 13 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stub_Piece" -p "Base_Pieces";
	rename -uid "42DAAE15-470F-69E8-BA96-428CED30142C";
	setAttr ".t" -type "double3" 0 0 -12.033777099028397 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Stub_PieceShape" -p "Stub_Piece";
	rename -uid "D1D82EA6-47D9-7E6A-FDF5-7193E29A3D15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45833331346511841 0.62500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.29166669 0.33333331
		 0.29166669 0.41666669 0.33333334 0.29166666 0.33333334 0.45833334 0.45833331 0.83333337
		 0.45833331 0.91666675 0.45833331 0.33333331 0.45833331 0.41666666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0.33333337 0 5.5511151e-17 
		0.33333337 0 5.5511151e-17 0.33333337 0 5.5511151e-17 0.33333337 0 5.5511151e-17;
	setAttr -s 8 ".vt[0:7]"  -1 1 -0.33333325 -1 -1 -0.33333325 -1 1 0.33333337
		 -1 -1 0.33333337 -0.33333337 -1 -0.33333325 -0.33333337 -1 0.33333337 -0.33333337 1 0.33333337
		 -0.33333337 1 -0.33333325;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 4 0 2 3 0 3 5 0 6 2 0 7 0 0 4 7 0
		 5 6 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 5 0 1
		mu 0 4 4 7 0 1
		f 4 -3 -5 -8 -4
		mu 0 4 3 2 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Diagonal_Piece" -p "Base_Pieces";
	rename -uid "36E73F88-4FAF-D115-AD1E-D3A1D30EC9FE";
	setAttr ".t" -type "double3" 0 0 -14.033777099028397 ;
	setAttr ".rp" -type "double3" 2 0 -2 ;
	setAttr ".sp" -type "double3" 2 0 -2 ;
createNode mesh -n "Diagonal_PieceShape" -p "Diagonal_Piece";
	rename -uid "7910B4D7-4BA2-9423-1FAC-07ABDC588C1C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4166666567325592 0.60416670143604279 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "Diagonal_Piece";
	rename -uid "CE0DD586-40B7-2109-C36A-57AA8ADC8327";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.5208333283662796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.5
		 0.54166663 0.5 0.45833331 0.41666666 0.29166669 0.33333331 0.54166663 0.41666666
		 0.70833337 0.33333331 0.66666669 0.29166666 0.54166663 0.33333331 0.54166663 0.25
		 0.45833331 0.25 0.45833331 0.33333331 0.33333334 0.29166666 0.54166663 0.33333331
		 0.54166663 0.91666675 0.45833331 0.91666675 0.45833331 0.33333331 0.33333334 0.45833334
		 0.33333334 0.29166666 0.45833331 0.83333337 0.45833331 0.41666666 0.29166669 0.33333331
		 0.29166669 0.41666669 0.45833331 0.75 0.45833331 0.5 0.54166663 0.83333337 0.54166663
		 0.41666666 0.54166663 0.5 0.54166663 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1 1 -2.33333325 -1 1 -2.33333325 -1 -1 -2.33333325
		 1 -1 -2.33333325 1 1 -1.66666663 -1 1 -1.66666663 -1 -1 -1.66666663 1 -1 -1.66666663
		 0.33333325 1 -1 0.33333325 1 -1.66666663 0.33333325 1 -2.33333325 0.33333325 -1 -2.33333325
		 0.33333325 -1 -1.66666663 0.33333325 -1 -1 -0.33333337 1 -1 -0.33333337 1 -1.66666663
		 -0.33333337 1 -2.33333325 -0.33333337 -1 -2.33333325 -0.33333337 -1 -1.66666663 -0.33333337 -1 -1
		 1 1 -0.33333325 1 -1 -0.33333325 1 1 0.33333337 1 -1 0.33333337 2.33333325 1 -1 2.33333325 -1 -1
		 2.33333325 -1 -0.33333325 2.33333325 -1 0.33333337 2.33333325 1 0.33333337 2.33333325 1 -0.33333325
		 1.66666663 1 -1 1.66666663 -1 -1 1.66666663 -1 -0.33333325 1.66666663 -1 0.33333337
		 1.66666663 1 0.33333337 1.66666663 1 -0.33333325;
	setAttr -s 44 ".ed[0:43]"  0 10 0 1 2 0 2 17 0 3 0 0 4 9 0 5 6 0 6 18 0
		 7 4 0 8 9 0 10 16 0 11 3 0 12 7 0 12 13 0 13 8 0 15 5 0 14 15 0 16 1 0 17 11 0 18 19 0
		 19 14 0 17 16 0 10 11 0 9 12 0 15 18 0 20 21 0 21 32 0 22 23 0 23 33 0 24 25 0 25 26 0
		 26 27 0 28 34 0 28 29 0 29 24 0 30 31 0 31 32 0 33 27 0 34 22 0 35 20 0 35 30 0 34 33 0
		 28 27 0 32 35 0 26 29 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 20 16 1 2
		mu 0 4 3 10 11 0
		f 4 -21 17 -22 9
		mu 0 4 10 3 7 12
		f 4 21 10 3 0
		mu 0 4 12 7 6 13
		f 4 -8 -12 -23 -5
		mu 0 4 14 5 4 15
		f 4 22 12 13 8
		mu 0 4 15 4 9 16
		f 4 -20 -19 -24 -16
		mu 0 4 17 8 2 18
		f 4 -6 -15 23 -7
		mu 0 4 1 19 18 2
		f 4 41 -37 -41 -32
		mu 0 4 20 21 22 23
		f 4 -27 -38 40 -28
		mu 0 4 24 25 23 22
		f 4 42 38 24 25
		mu 0 4 26 27 28 29
		f 4 -35 -40 -43 -36
		mu 0 4 30 31 27 26
		f 4 43 33 28 29
		mu 0 4 32 33 34 35
		f 4 -42 32 -44 30
		mu 0 4 21 20 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Room_Piece" -p "Base_Pieces";
	rename -uid "44309E83-4E6F-E8F5-3AFA-FE997E98E013";
	setAttr ".t" -type "double3" 2 1.9898681322850127 4 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Room_PieceShape" -p "Room_Piece";
	rename -uid "FB881969-4128-615A-37FD-DDB166E842B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Straight_Piece" -p "Base_Pieces";
	rename -uid "5FE461E6-4B1D-F504-AF7A-5FAF9EBBEBE0";
	setAttr ".t" -type "double3" -2 0 -16.033777099028399 ;
createNode mesh -n "Straight_PieceShape" -p "Straight_Piece";
	rename -uid "4CA131EA-4194-D6BB-5966-9888885C4AFF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.62500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "Straight_Piece";
	rename -uid "6591CFCD-444A-3C9E-F551-848E6070D941";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.62500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.41666666
		 0.29166669 0.33333331 0.54166663 0.41666666 0.70833337 0.33333331 0.66666669 0.29166666
		 0.54166663 0.33333331 0.45833331 0.33333331 0.33333334 0.29166666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325 1 1 0.33333337 -1 1 0.33333337 -1 -1 0.33333337 1 -1 0.33333337
		 0.33333325 1 0.33333337 0.33333325 1 -0.33333325 0.33333325 -1 -0.33333325 0.33333325 -1 0.33333337
		 -0.33333337 1 0.33333337 -0.33333337 1 -0.33333325 -0.33333337 -1 -0.33333325 -0.33333337 -1 0.33333337;
	setAttr -s 18 ".ed[0:17]"  0 9 0 1 2 0 2 14 0 3 0 0 4 8 0 5 6 0 6 15 0
		 7 4 0 9 13 0 10 3 0 11 7 0 12 5 0 13 1 0 14 10 0 14 13 0 9 10 0 8 11 0 12 15 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 14 12 1 2
		mu 0 4 3 8 9 0
		f 4 -15 13 -16 8
		mu 0 4 8 3 7 10
		f 4 15 9 3 0
		mu 0 4 10 7 6 11
		f 4 -8 -11 -17 -5
		mu 0 4 12 5 4 13
		f 4 -6 -12 17 -7
		mu 0 4 1 15 14 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece" -p "Base_Pieces";
	rename -uid "BB64C3D5-4E3D-86D4-7E38-D987EA7913DF";
	setAttr ".t" -type "double3" -4 0 -16.033777099028399 ;
createNode mesh -n "Wall_PieceShape" -p "Wall_Piece";
	rename -uid "013CD14D-4541-1CEE-179D-B598BB97AB10";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Diagonal_Piece" -p "Base_Pieces";
	rename -uid "AB376525-4E9E-629B-E0D0-64AF711949E6";
	setAttr ".t" -type "double3" -4 0 -14.033777099028397 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode mesh -n "Inside_Diagonal_PieceShape" -p "Inside_Diagonal_Piece";
	rename -uid "512E0920-4E95-ED3E-2D00-98A09FE92B7A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.66666669 0.45833334
		 0.66666669 0.29166666 0.45833331 0.5 0.45833331 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -1.66666651 1 -1 -1.66666651 1.66666663 1 -1
		 1.66666663 -1 -1;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 1 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece" -p "Base_Pieces";
	rename -uid "48F52C2D-4EEF-304F-D7C1-1CA02534F64F";
	setAttr ".t" -type "double3" -4 0 -14.033777099028397 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode mesh -n "Outside_Diagonal_PieceShape" -p "Outside_Diagonal_Piece";
	rename -uid "802DC4CA-4F6D-0DE3-7516-7CAE1F23C7D7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece" -p "Base_Pieces";
	rename -uid "7C066F1F-42BF-FE80-03DD-299181FD101E";
	setAttr ".t" -type "double3" -6 0 -14.033777099028397 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode mesh -n "Inside_Corner_PieceShape" -p "Inside_Corner_Piece";
	rename -uid "88DA1004-4253-CE72-840F-098C54E051BE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Corner_Piece" -p "Base_Pieces";
	rename -uid "9A44E6F5-4133-9A8A-02EB-0882A01C7649";
	setAttr ".t" -type "double3" -6 0 -14.033777099028397 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode mesh -n "Outside_Corner_PieceShape" -p "Outside_Corner_Piece";
	rename -uid "D077E028-4398-2731-6E84-3BB747E8D316";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.54166663 0.91666675
		 0.33333334 0.45833334 0.33333334 0.29166666 0.54166663 0.33333331 0.54166663 0.5
		 0.54166663 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 0.33333349 -1 -1 0.33333349 0.33333325 1 -1
		 0.33333325 -1 -1 0.33333325 -1 0.33333349 0.33333325 1 0.33333349;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 5 4 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 -5 6
		mu 0 4 0 1 2 3
		f 4 5 2 3 -7
		mu 0 4 3 4 5 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece1";
	rename -uid "18C533A0-4A42-CA5A-F2F3-959B6264A389";
	setAttr ".t" -type "double3" -4 0 2 ;
createNode mesh -n "Wall_Piece1Shape" -p "Wall_Piece1";
	rename -uid "34C578D9-4F1F-946F-0FC3-61BA3390DEA0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece2";
	rename -uid "E5686DBC-4E63-D651-80CD-649153D5634B";
	setAttr ".t" -type "double3" -2 0 2 ;
createNode mesh -n "Wall_Piece2Shape" -p "Wall_Piece2";
	rename -uid "EB256CCC-4543-5553-116B-BC9FD8383111";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece3";
	rename -uid "32D16E87-42C7-443F-B9F7-CCAA60824D85";
	setAttr ".t" -type "double3" 0 1.9898681322850127 4 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece3Shape" -p "Wall_Piece3";
	rename -uid "86B40402-4176-21A5-9401-90A1DC586FD3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece5";
	rename -uid "E6C99365-4991-6584-BB71-9D8FD1F05BC8";
	setAttr ".t" -type "double3" -2 0 8 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece5Shape" -p "Wall_Piece5";
	rename -uid "6A94E300-4948-0683-CAEC-528129A1C206";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece6";
	rename -uid "BA6AF0E7-4309-0C28-54EF-708F246B57B6";
	setAttr ".t" -type "double3" -4 0 8 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece6Shape" -p "Wall_Piece6";
	rename -uid "E5A5A101-4087-D69C-4F8D-9881732CFBC6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece7";
	rename -uid "B1B85C6F-4718-1368-9ECB-1890DB99E33C";
	setAttr ".t" -type "double3" -5.3372617362122172 0 9.3157967904409134 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece7Shape" -p "Wall_Piece7";
	rename -uid "9C6F092D-41D9-E251-3070-5699C62274CA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece8";
	rename -uid "1293BB4C-4805-D118-DF3B-BC8B6CCC8444";
	setAttr ".t" -type "double3" -8 0 4 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece8Shape" -p "Wall_Piece8";
	rename -uid "999FD262-42B1-5896-C5FC-958E1CEFA141";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece9";
	rename -uid "373C20B7-4D86-A850-B659-93879AD26BE1";
	setAttr ".t" -type "double3" -8 0 6 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece9Shape" -p "Wall_Piece9";
	rename -uid "0DEB16E0-43C3-6B73-4756-5A8215284D79";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece10";
	rename -uid "05E7756A-47F7-468B-1EFA-89A4A7EF7438";
	setAttr ".t" -type "double3" 4 1.9898681322850127 2 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece10Shape" -p "Wall_Piece10";
	rename -uid "DA31A7C7-4EA5-FC83-3B8F-1690B4106FFE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece11";
	rename -uid "5F80CD87-4044-C243-62FD-1FB0FC779C4F";
	setAttr ".t" -type "double3" 4 1.9898681322850127 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece11Shape" -p "Wall_Piece11";
	rename -uid "CCAB15D3-4698-061D-CF2D-06A10E03C4EA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece12";
	rename -uid "FE84F85D-4F75-309F-91A2-B9A5211BDC67";
	setAttr ".t" -type "double3" 4 1.9898681322850127 -2 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece12Shape" -p "Wall_Piece12";
	rename -uid "F669575C-4C65-1BC1-0626-37BE8D49A21B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece13";
	rename -uid "81728769-47F9-BAA4-2E01-BEBFC14620D6";
	setAttr ".t" -type "double3" 6 1.9898681322850127 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece13Shape" -p "Wall_Piece13";
	rename -uid "998975E8-457D-F854-AF8B-00AB19343741";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece14";
	rename -uid "609111A3-4D72-3143-AA8C-7CA9F18470A2";
	setAttr ".t" -type "double3" 6 1.9898681322850127 -2 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece14Shape" -p "Wall_Piece14";
	rename -uid "C828A77F-4F34-7B70-A429-A2928E7BED36";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Straight_Piece1";
	rename -uid "7425E576-45F2-AE81-9CA4-A7A0164AB6B8";
	setAttr ".t" -type "double3" -6 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Straight_Piece1Shape" -p "Straight_Piece1";
	rename -uid "EB06C3DC-4E5F-C01D-8C26-D3AD87C93462";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.62500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.41666666
		 0.29166669 0.33333331 0.54166663 0.41666666 0.70833337 0.33333331 0.66666669 0.29166666
		 0.54166663 0.33333331 0.45833331 0.33333331 0.33333334 0.29166666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325 1 1 0.33333337 -1 1 0.33333337 -1 -1 0.33333337 1 -1 0.33333337
		 0.33333325 1 0.33333337 0.33333325 1 -0.33333325 0.33333325 -1 -0.33333325 0.33333325 -1 0.33333337
		 -0.33333349 1 0.33333337 -0.33333349 1 -0.33333325 -0.33333349 -1 -0.33333325 -0.33333349 -1 0.33333337;
	setAttr -s 20 ".ed[0:19]"  0 9 0 1 2 0 2 14 0 3 0 0 4 8 0 5 6 0 6 15 0
		 7 4 0 9 13 0 10 3 0 11 7 0 12 5 0 13 1 0 14 10 0 14 13 0 9 10 0 8 11 0 12 15 0 11 15 0
		 8 12 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 14 12 1 2
		mu 0 4 3 8 9 0
		f 4 -15 13 -16 8
		mu 0 4 8 3 7 10
		f 4 15 9 3 0
		mu 0 4 10 7 6 11
		f 4 -8 -11 -17 -5
		mu 0 4 12 5 4 13
		f 4 -6 -12 17 -7
		mu 0 4 1 15 14 2
		f 4 16 18 -18 -20
		mu 0 4 13 4 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "Straight_Piece1";
	rename -uid "F05F193F-4C36-228E-7A31-449E1197DD08";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.62500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.41666666
		 0.29166669 0.33333331 0.54166663 0.41666666 0.70833337 0.33333331 0.66666669 0.29166666
		 0.54166663 0.33333331 0.45833331 0.33333331 0.33333334 0.29166666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325 1 1 0.33333337 -1 1 0.33333337 -1 -1 0.33333337 1 -1 0.33333337
		 0.33333325 1 0.33333337 0.33333325 1 -0.33333325 0.33333325 -1 -0.33333325 0.33333325 -1 0.33333337
		 -0.33333337 1 0.33333337 -0.33333337 1 -0.33333325 -0.33333337 -1 -0.33333325 -0.33333337 -1 0.33333337;
	setAttr -s 18 ".ed[0:17]"  0 9 0 1 2 0 2 14 0 3 0 0 4 8 0 5 6 0 6 15 0
		 7 4 0 9 13 0 10 3 0 11 7 0 12 5 0 13 1 0 14 10 0 14 13 0 9 10 0 8 11 0 12 15 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 14 12 1 2
		mu 0 4 3 8 9 0
		f 4 -15 13 -16 8
		mu 0 4 8 3 7 10
		f 4 15 9 3 0
		mu 0 4 10 7 6 11
		f 4 -8 -11 -17 -5
		mu 0 4 12 5 4 13
		f 4 -6 -12 17 -7
		mu 0 4 1 15 14 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Room_Piece1";
	rename -uid "BCD3F4A5-4CE1-1F26-EBDA-EF8A304A9CEB";
	setAttr ".t" -type "double3" -2 0 -14.033777099028397 ;
createNode mesh -n "Room_Piece1Shape" -p "Room_Piece1";
	rename -uid "95284702-4D41-77C8-0028-FE8E165C43F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.20833334 0.25 0.20833334 0 0.79166669 0 0.79166669 0.25 0.29166669
		 0.25 0.29166669 0 0.70833337 0 0.70833337 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -1 1 -0.3333329 -1 -1 -0.3333329 1 -1 -0.3333329 1 1 -0.3333329
		 -1 1 0.33333302 -1 -1 0.33333302 1 -1 0.33333302 1 1 0.33333302;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 12 0 3 15 0
		 4 6 0 5 7 0 6 9 0 7 10 0 6 7 0 8 4 0 8 9 1 11 5 0 10 11 0 13 0 0 12 13 1 14 1 0 14 15 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -5 -1 3 1
		mu 0 4 3 1 0 2
		f 4 11 -9 -3 7
		mu 0 4 6 7 5 4
		f 4 4 6 -20 18
		mu 0 4 1 3 19 18
		f 4 -18 -6 -4 -17
		mu 0 4 17 16 2 0
		f 4 -8 -13 13 -10
		mu 0 4 10 11 12 13
		f 4 14 8 10 15
		mu 0 4 15 9 8 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Diagonal_Piece1";
	rename -uid "DF4E0378-4BBF-046D-A0E9-5CB3D368A1B2";
	setAttr ".t" -type "double3" 0 1.9898681322850127 8 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 2 0 -2 ;
	setAttr ".sp" -type "double3" 2 0 -2 ;
createNode mesh -n "Diagonal_Piece1Shape" -p "Diagonal_Piece1";
	rename -uid "7AE88647-44D8-9649-AF64-BFBBE49BD655";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4166666567325592 0.60416670143604279 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.66666669 0.45833334
		 0.70833337 0.41666669 0.70833337 0.33333331 0.66666669 0.29166666 0.45833331 0.75
		 0.45833331 0.5 0.54166663 0.5 0.54166663 0.75 0.59722221 0.44444442 0.59722221 0.6388889
		 0.65277779 0.38888887 0.65277779 0.52777779;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1 1 -2.33333325 1 -1 -2.33333325 1 1 -1.66666663
		 1 -1 -1.66666663 2.33333325 1 -1 2.33333325 -1 -1 1.66666663 1 -1 1.66666663 -1 -1
		 2.029689312 1 -1.40878236 2.029689312 -1 -1.40878236 1.41622591 1 -2.022245884 1.41622591 -1 -2.022245884;
	setAttr -s 14 ".ed[0:13]"  1 0 0 3 2 0 4 5 0 6 7 0 2 6 0 3 7 0 1 11 0
		 0 10 0 8 4 0 9 5 0 8 9 1 10 8 0 11 9 0 10 11 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 1 4 3 -6
		mu 0 4 0 3 5 4
		f 4 10 9 -3 -9
		mu 0 4 8 9 7 6
		f 4 13 12 -11 -12
		mu 0 4 10 11 9 8
		f 4 -1 6 -14 -8
		mu 0 4 2 1 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "Diagonal_Piece1";
	rename -uid "123AA784-403C-657E-4A5A-D993FEC5135A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.5208333283662796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.5
		 0.54166663 0.5 0.45833331 0.41666666 0.29166669 0.33333331 0.54166663 0.41666666
		 0.70833337 0.33333331 0.66666669 0.29166666 0.54166663 0.33333331 0.54166663 0.25
		 0.45833331 0.25 0.45833331 0.33333331 0.33333334 0.29166666 0.54166663 0.33333331
		 0.54166663 0.91666675 0.45833331 0.91666675 0.45833331 0.33333331 0.33333334 0.45833334
		 0.33333334 0.29166666 0.45833331 0.83333337 0.45833331 0.41666666 0.29166669 0.33333331
		 0.29166669 0.41666669 0.45833331 0.75 0.45833331 0.5 0.54166663 0.83333337 0.54166663
		 0.41666666 0.54166663 0.5 0.54166663 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1 1 -2.33333325 -1 1 -2.33333325 -1 -1 -2.33333325
		 1 -1 -2.33333325 1 1 -1.66666663 -1 1 -1.66666663 -1 -1 -1.66666663 1 -1 -1.66666663
		 0.33333325 1 -1 0.33333325 1 -1.66666663 0.33333325 1 -2.33333325 0.33333325 -1 -2.33333325
		 0.33333325 -1 -1.66666663 0.33333325 -1 -1 -0.33333337 1 -1 -0.33333337 1 -1.66666663
		 -0.33333337 1 -2.33333325 -0.33333337 -1 -2.33333325 -0.33333337 -1 -1.66666663 -0.33333337 -1 -1
		 1 1 -0.33333325 1 -1 -0.33333325 1 1 0.33333337 1 -1 0.33333337 2.33333325 1 -1 2.33333325 -1 -1
		 2.33333325 -1 -0.33333325 2.33333325 -1 0.33333337 2.33333325 1 0.33333337 2.33333325 1 -0.33333325
		 1.66666663 1 -1 1.66666663 -1 -1 1.66666663 -1 -0.33333325 1.66666663 -1 0.33333337
		 1.66666663 1 0.33333337 1.66666663 1 -0.33333325;
	setAttr -s 44 ".ed[0:43]"  0 10 0 1 2 0 2 17 0 3 0 0 4 9 0 5 6 0 6 18 0
		 7 4 0 8 9 0 10 16 0 11 3 0 12 7 0 12 13 0 13 8 0 15 5 0 14 15 0 16 1 0 17 11 0 18 19 0
		 19 14 0 17 16 0 10 11 0 9 12 0 15 18 0 20 21 0 21 32 0 22 23 0 23 33 0 24 25 0 25 26 0
		 26 27 0 28 34 0 28 29 0 29 24 0 30 31 0 31 32 0 33 27 0 34 22 0 35 20 0 35 30 0 34 33 0
		 28 27 0 32 35 0 26 29 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 20 16 1 2
		mu 0 4 3 10 11 0
		f 4 -21 17 -22 9
		mu 0 4 10 3 7 12
		f 4 21 10 3 0
		mu 0 4 12 7 6 13
		f 4 -8 -12 -23 -5
		mu 0 4 14 5 4 15
		f 4 22 12 13 8
		mu 0 4 15 4 9 16
		f 4 -20 -19 -24 -16
		mu 0 4 17 8 2 18
		f 4 -6 -15 23 -7
		mu 0 4 1 19 18 2
		f 4 41 -37 -41 -32
		mu 0 4 20 21 22 23
		f 4 -27 -38 40 -28
		mu 0 4 24 25 23 22
		f 4 42 38 24 25
		mu 0 4 26 27 28 29
		f 4 -35 -40 -43 -36
		mu 0 4 30 31 27 26
		f 4 43 33 28 29
		mu 0 4 32 33 34 35
		f 4 -42 32 -44 30
		mu 0 4 21 20 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Diagonal_Piece2";
	rename -uid "17D0E64B-4787-C485-05E8-BBA381224344";
	setAttr ".t" -type "double3" 0 1.9898681322850127 4 ;
	setAttr ".r" -type "double3" 0 -270 0 ;
	setAttr ".rp" -type "double3" 2 0 -2 ;
	setAttr ".sp" -type "double3" 2 0 -2 ;
createNode mesh -n "Diagonal_Piece2Shape" -p "Diagonal_Piece2";
	rename -uid "758716F9-4563-D5B7-73A6-5B8EF5506D44";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4166666567325592 0.60416670143604279 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.66666669 0.45833334
		 0.70833337 0.41666669 0.70833337 0.33333331 0.66666669 0.29166666 0.45833331 0.75
		 0.45833331 0.5 0.54166663 0.5 0.54166663 0.75 0.59722221 0.44444442 0.59722221 0.6388889
		 0.65277779 0.38888887 0.65277779 0.52777779;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1 1 -2.33333325 1 -1 -2.33333325 1 1 -1.66666663
		 1 -1 -1.66666663 2.33333325 1 -1 2.33333325 -1 -1 1.66666663 1 -1 1.66666663 -1 -1
		 2.029689312 1 -1.40878236 2.029689312 -1 -1.40878236 1.41622591 1 -2.022245884 1.41622591 -1 -2.022245884;
	setAttr -s 14 ".ed[0:13]"  1 0 0 3 2 0 4 5 0 6 7 0 2 6 0 3 7 0 1 11 0
		 0 10 0 8 4 0 9 5 0 8 9 1 10 8 0 11 9 0 10 11 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 1 4 3 -6
		mu 0 4 0 3 5 4
		f 4 10 9 -3 -9
		mu 0 4 8 9 7 6
		f 4 13 12 -11 -12
		mu 0 4 10 11 9 8
		f 4 -1 6 -14 -8
		mu 0 4 2 1 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "Diagonal_Piece2";
	rename -uid "CE7876F6-4F0C-D381-9968-259CB7802958";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5625 0.5208333283662796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.5
		 0.54166663 0.5 0.45833331 0.41666666 0.29166669 0.33333331 0.54166663 0.41666666
		 0.70833337 0.33333331 0.66666669 0.29166666 0.54166663 0.33333331 0.54166663 0.25
		 0.45833331 0.25 0.45833331 0.33333331 0.33333334 0.29166666 0.54166663 0.33333331
		 0.54166663 0.91666675 0.45833331 0.91666675 0.45833331 0.33333331 0.33333334 0.45833334
		 0.33333334 0.29166666 0.45833331 0.83333337 0.45833331 0.41666666 0.29166669 0.33333331
		 0.29166669 0.41666669 0.45833331 0.75 0.45833331 0.5 0.54166663 0.83333337 0.54166663
		 0.41666666 0.54166663 0.5 0.54166663 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  1 1 -2.33333325 -1 1 -2.33333325 -1 -1 -2.33333325
		 1 -1 -2.33333325 1 1 -1.66666663 -1 1 -1.66666663 -1 -1 -1.66666663 1 -1 -1.66666663
		 0.33333325 1 -1 0.33333325 1 -1.66666663 0.33333325 1 -2.33333325 0.33333325 -1 -2.33333325
		 0.33333325 -1 -1.66666663 0.33333325 -1 -1 -0.33333337 1 -1 -0.33333337 1 -1.66666663
		 -0.33333337 1 -2.33333325 -0.33333337 -1 -2.33333325 -0.33333337 -1 -1.66666663 -0.33333337 -1 -1
		 1 1 -0.33333325 1 -1 -0.33333325 1 1 0.33333337 1 -1 0.33333337 2.33333325 1 -1 2.33333325 -1 -1
		 2.33333325 -1 -0.33333325 2.33333325 -1 0.33333337 2.33333325 1 0.33333337 2.33333325 1 -0.33333325
		 1.66666663 1 -1 1.66666663 -1 -1 1.66666663 -1 -0.33333325 1.66666663 -1 0.33333337
		 1.66666663 1 0.33333337 1.66666663 1 -0.33333325;
	setAttr -s 44 ".ed[0:43]"  0 10 0 1 2 0 2 17 0 3 0 0 4 9 0 5 6 0 6 18 0
		 7 4 0 8 9 0 10 16 0 11 3 0 12 7 0 12 13 0 13 8 0 15 5 0 14 15 0 16 1 0 17 11 0 18 19 0
		 19 14 0 17 16 0 10 11 0 9 12 0 15 18 0 20 21 0 21 32 0 22 23 0 23 33 0 24 25 0 25 26 0
		 26 27 0 28 34 0 28 29 0 29 24 0 30 31 0 31 32 0 33 27 0 34 22 0 35 20 0 35 30 0 34 33 0
		 28 27 0 32 35 0 26 29 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 20 16 1 2
		mu 0 4 3 10 11 0
		f 4 -21 17 -22 9
		mu 0 4 10 3 7 12
		f 4 21 10 3 0
		mu 0 4 12 7 6 13
		f 4 -8 -12 -23 -5
		mu 0 4 14 5 4 15
		f 4 22 12 13 8
		mu 0 4 15 4 9 16
		f 4 -20 -19 -24 -16
		mu 0 4 17 8 2 18
		f 4 -6 -15 23 -7
		mu 0 4 1 19 18 2
		f 4 41 -37 -41 -32
		mu 0 4 20 21 22 23
		f 4 -27 -38 40 -28
		mu 0 4 24 25 23 22
		f 4 42 38 24 25
		mu 0 4 26 27 28 29
		f 4 -35 -40 -43 -36
		mu 0 4 30 31 27 26
		f 4 43 33 28 29
		mu 0 4 32 33 34 35
		f 4 -42 32 -44 30
		mu 0 4 21 20 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece1";
	rename -uid "E30CE16C-4556-5066-CAA8-368EC3551E70";
	setAttr ".t" -type "double3" -2 1.9898681322850127 4 ;
createNode mesh -n "Outside_Diagonal_Piece1Shape" -p "Outside_Diagonal_Piece1";
	rename -uid "0C8E65B4-4A71-6EDD-8CE2-B1A66F007159";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece2";
	rename -uid "0576D95B-40B7-F4F1-C5DD-6AA5D02087E7";
	setAttr ".t" -type "double3" -2 1.9898681322850127 6 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Outside_Diagonal_Piece2Shape" -p "Outside_Diagonal_Piece2";
	rename -uid "6FC26EB3-4815-D54F-7F76-068012F19716";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece4";
	rename -uid "BD912C4F-4B5F-40D7-1112-A9A428ED03A5";
	setAttr ".t" -type "double3" -6 0 6 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Outside_Diagonal_Piece4Shape" -p "Outside_Diagonal_Piece4";
	rename -uid "B5BD159C-4FE2-D3FF-E14F-BD9E5F6474BE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece3";
	rename -uid "25A25631-4540-3A69-85EB-53AD67A315CB";
	setAttr ".t" -type "double3" -6 0 4 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Outside_Diagonal_Piece3Shape" -p "Outside_Diagonal_Piece3";
	rename -uid "9761C5DA-4278-C204-B43C-2CACBBA5AF72";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Corner_Piece1";
	rename -uid "D779CFCA-4D43-9236-14A6-97885D9B9B4C";
	setAttr ".t" -type "double3" 6 1.9898681322850127 2 ;
createNode mesh -n "Outside_Corner_Piece1Shape" -p "Outside_Corner_Piece1";
	rename -uid "90536F68-4FD8-64EA-ADB2-78BB62459FB8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.54166663 0.91666675
		 0.33333334 0.45833334 0.33333334 0.29166666 0.54166663 0.33333331 0.54166663 0.5
		 0.54166663 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 0.33333349 -1 -1 0.33333349 0.33333325 1 -1
		 0.33333325 -1 -1 0.33333325 -1 0.33333349 0.33333325 1 0.33333349;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 5 4 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 -5 6
		mu 0 4 0 1 2 3
		f 4 5 2 3 -7
		mu 0 4 3 4 5 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece1";
	rename -uid "7E794786-465C-3376-F105-B088ECE3A55A";
	setAttr ".t" -type "double3" -6 0 2 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode mesh -n "Inside_Corner_Piece1Shape" -p "Inside_Corner_Piece1";
	rename -uid "C83A98BF-44F2-1992-6429-D79077DDDF60";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece3";
	rename -uid "69B68962-4E3B-CFBE-9351-E38A89F72BDE";
	setAttr ".t" -type "double3" 0 1.9898681322850127 6 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode mesh -n "Inside_Corner_Piece3Shape" -p "Inside_Corner_Piece3";
	rename -uid "81D97062-4287-68B2-DE35-E0BC481AE85F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45833331346511841 0.5208333283662796 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[6:8]" -type "float3"  0 0.22081172 0 0 0.22081172 
		0 0 0.22081172 0;
createNode mesh -n "polySurfaceShape9" -p "Inside_Corner_Piece3";
	rename -uid "F4B23363-4199-58D1-EFAF-9EB37E24309F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece4";
	rename -uid "0AB807A6-445A-20FE-52B5-B4A635F371A5";
	setAttr ".t" -type "double3" 0 1.9898681322850127 6 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Inside_Corner_Piece4Shape" -p "Inside_Corner_Piece4";
	rename -uid "F8C30873-45A6-7590-D0E9-CFA85FF81024";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5833333432674408 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[6:8]" -type "float3"  0 0.23013002 0 0 0.23013002 
		0 3.7747583e-15 0.23013002 0;
createNode mesh -n "polySurfaceShape8" -p "Inside_Corner_Piece4";
	rename -uid "0DD13A66-494A-7804-4708-319338893208";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece2";
	rename -uid "2095B8E6-4190-67E1-7BCA-CFBC6CB7764E";
	setAttr ".t" -type "double3" -6 0 2 ;
createNode mesh -n "Inside_Corner_Piece2Shape" -p "Inside_Corner_Piece2";
	rename -uid "4126E116-47D9-C56F-7744-D6A00299090A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece5";
	rename -uid "8073283F-425D-A383-8096-74AF360AB559";
	setAttr ".t" -type "double3" 4 1.9898681322850127 2 ;
createNode mesh -n "Inside_Corner_Piece5Shape" -p "Inside_Corner_Piece5";
	rename -uid "D4D8859C-4F8E-DB51-1E71-18BA1A170B27";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece6";
	rename -uid "B5469E65-441E-B4D4-043F-FA9AEF1487FC";
	setAttr ".t" -type "double3" 5 1.9898681322850127 -3 ;
createNode mesh -n "Inside_Corner_Piece6Shape" -p "Inside_Corner_Piece6";
	rename -uid "DF292402-47E2-3618-E37D-F99A5A782F08";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Piece7";
	rename -uid "33EE2AB8-47FC-3D88-C226-538F8B675AB3";
	setAttr ".t" -type "double3" 5 1.9898681322850127 -3 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Inside_Corner_Piece7Shape" -p "Inside_Corner_Piece7";
	rename -uid "3EF7786D-4870-950C-DD34-02B2ACA283D6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Nub_Piece";
	rename -uid "44FE76DF-4016-BC2A-B2C0-D2921EA48794";
	setAttr ".t" -type "double3" -4.3333330154418945 0 -14.033776760101318 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
	setAttr ".rpt" -type "double3" 0.66666650772094704 0 -4.7683715738896148e-07 ;
	setAttr ".sp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
createNode mesh -n "Inside_Corner_Nub_PieceShape" -p "Inside_Corner_Nub_Piece";
	rename -uid "0CC2A616-4903-72C0-4263-05AEA79B854F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "Inside_Corner_Nub_Piece";
	rename -uid "9844303D-40D1-01C7-A284-2BA5ACDF11F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Nub_Piece1";
	rename -uid "E08CA882-45F7-D913-1289-C08F18B407C8";
	setAttr ".t" -type "double3" 6 1.9898681322850127 -3 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
	setAttr ".rpt" -type "double3" 0.66666650772094704 0 -4.7683715738896148e-07 ;
	setAttr ".sp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
createNode mesh -n "Inside_Corner_Nub_Piece1Shape" -p "Inside_Corner_Nub_Piece1";
	rename -uid "17527353-4B22-83C6-C3F1-D88F3B1C800C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.45833331 0.45833331 0.45833331 0.79166669 0.375 0.375 0.375
		 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302
		 -0.33333337 1 -0.66666651 -0.33333337 -1 -0.66666651 -0.66666669 1 -0.33333302 -0.66666669 -1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  1 4 0 1 2 0 0 1 0 3 0 0 2 3 1 5 0 0 4 5 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -6 -7 -1 -3
		mu 0 4 0 5 4 1
		f 4 3 2 1 4
		mu 0 4 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "Inside_Corner_Nub_Piece1";
	rename -uid "33FC7643-4BF1-A02B-28D7-D597E054A3D0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Inside_Corner_Nub_Piece2";
	rename -uid "789DB742-43AE-4B53-1063-07B67D22FF0A";
	setAttr ".t" -type "double3" 3.3333337306976318 1.9898681322850127 -3 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
	setAttr ".rpt" -type "double3" 0.66666650772094704 0 -4.7683715738896148e-07 ;
	setAttr ".sp" -type "double3" -0.33333349227905273 0 -0.33333301544189542 ;
createNode mesh -n "Inside_Corner_Nub_Piece2Shape" -p "Inside_Corner_Nub_Piece2";
	rename -uid "6F21F80E-429E-C81B-D976-0B84005D22B8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.45833331 0.45833331 0.45833331 0.79166669 0.375 0.375 0.375
		 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302
		 -0.33333337 1 -0.66666651 -0.33333337 -1 -0.66666651 -0.66666669 1 -0.33333302 -0.66666669 -1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  1 4 0 1 2 0 0 1 0 3 0 0 2 3 1 5 0 0 4 5 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -6 -7 -1 -3
		mu 0 4 0 5 4 1
		f 4 3 2 1 4
		mu 0 4 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "Inside_Corner_Nub_Piece2";
	rename -uid "9C94D043-4846-C691-39D8-D58FE054484A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0.45833331 0.83333337
		 0.45833331 0.41666666 0.29166669 0.33333331 0.29166669 0.41666669 0.45833331 0.75
		 0.45833331 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 1 -0.33333302 -1 -1 -0.33333302 -0.33333337 1 -1
		 -0.33333337 -1 -1 -0.33333337 -1 -0.33333302 -0.33333337 1 -0.33333302;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 4 0 2 3 0 3 4 0 5 0 0 5 2 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 6 4 0 1
		mu 0 4 0 1 2 3
		f 4 -3 -6 -7 -4
		mu 0 4 4 5 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Brazier_3";
	rename -uid "8CE6C514-4C69-7835-E5BD-249F6F5B5EBF";
	setAttr ".t" -type "double3" 4.231439333015385 1.6625997069463572 -2.9458013687664684 ;
	setAttr ".s" -type "double3" 0.24070768339767962 0.078050874544331794 0.24070768339767962 ;
createNode mesh -n "Brazier_Shape3" -p "Brazier_3";
	rename -uid "A9BB7179-4B21-7A7E-97CC-318E4164A61E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.03125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Brazier_4";
	rename -uid "5DF21284-4A63-F9F9-EF92-F69013187442";
	setAttr ".t" -type "double3" 5.7285362403791762 1.6625997069463572 -2.9458013687664684 ;
	setAttr ".s" -type "double3" 0.24070768339767962 0.078050874544331794 0.24070768339767962 ;
createNode mesh -n "Brazier_Shape4" -p "Brazier_4";
	rename -uid "B4DBD848-4C9B-AEAA-6334-D8AA5ABE18AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.03125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 338 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.0625 0.0625 0.0625 0.125
		 0.0625 0.1875 0.0625 0.25 0.0625 0.3125 0.0625 0.375 0.0625 0.4375 0.0625 0.5 0.0625
		 0.5625 0.0625 0.625 0.0625 0.6875 0.0625 0.75 0.0625 0.8125 0.0625 0.875 0.0625 0.9375
		 0.0625 1 0.0625 0 0.125 0.0625 0.125 0.125 0.125 0.1875 0.125 0.25 0.125 0.3125 0.125
		 0.375 0.125 0.4375 0.125 0.5 0.125 0.5625 0.125 0.625 0.125 0.6875 0.125 0.75 0.125
		 0.8125 0.125 0.875 0.125 0.9375 0.125 1 0.125 0 0.1875 0.0625 0.1875 0.125 0.1875
		 0.1875 0.1875 0.25 0.1875 0.3125 0.1875 0.375 0.1875 0.4375 0.1875 0.5 0.1875 0.5625
		 0.1875 0.625 0.1875 0.6875 0.1875 0.75 0.1875 0.8125 0.1875 0.875 0.1875 0.9375 0.1875
		 1 0.1875 0 0.25 0.0625 0.25 0.125 0.25 0.1875 0.25 0.25 0.25 0.3125 0.25 0.375 0.25
		 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.6875 0.25 0.75 0.25 0.8125 0.25 0.875
		 0.25 0.9375 0.25 1 0.25 0 0.3125 0.0625 0.3125 0.125 0.3125 0.1875 0.3125 0.25 0.3125
		 0.3125 0.3125 0.375 0.3125 0.4375 0.3125 0.5 0.3125 0.5625 0.3125 0.625 0.3125 0.6875
		 0.3125 0.75 0.3125 0.8125 0.3125 0.875 0.3125 0.9375 0.3125 1 0.3125 0 0.375 0.0625
		 0.375 0.125 0.375 0.1875 0.375 0.25 0.375 0.3125 0.375 0.375 0.375 0.4375 0.375 0.5
		 0.375 0.5625 0.375 0.625 0.375 0.6875 0.375 0.75 0.375 0.8125 0.375 0.875 0.375 0.9375
		 0.375 1 0.375 0 0.4375 0.0625 0.4375 0.125 0.4375 0.1875 0.4375 0.25 0.4375 0.3125
		 0.4375 0.375 0.4375 0.4375 0.4375 0.5 0.4375 0.5625 0.4375 0.625 0.4375 0.6875 0.4375
		 0.75 0.4375 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 1 0.4375 0 0.5 0.0625 0.5 0.125
		 0.5 0.1875 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625
		 0.5 0.6875 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0.03125 0 0.09375 0
		 0.15625 0 0.21875 0 0.28125 0 0.34375 0 0.40625 0 0.46875 0 0.53125 0 0.59375 0 0.65625
		 0 0.71875 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0 0.0625 0.0625 0.0625 0.0625
		 0.125 0 0.125 0.125 0.0625 0.125 0.125 0.1875 0.0625 0.1875 0.125 0.25 0.0625 0.25
		 0.125 0.3125 0.0625 0.3125 0.125 0.375 0.0625 0.375 0.125 0.4375 0.0625 0.4375 0.125
		 0.5 0.0625 0.5 0.125 0.5625 0.0625 0.5625 0.125 0.625 0.0625 0.625 0.125 0.6875 0.0625
		 0.6875 0.125 0.75 0.0625 0.75 0.125 0.8125 0.0625 0.8125 0.125 0.875 0.0625 0.875
		 0.125 0.9375 0.0625 0.9375 0.125 1 0.0625 1 0.125 0.0625 0.1875 0 0.1875 0.125 0.1875
		 0.1875 0.1875 0.25 0.1875 0.3125 0.1875 0.375 0.1875 0.4375 0.1875 0.5 0.1875 0.5625
		 0.1875 0.625 0.1875 0.6875 0.1875 0.75 0.1875 0.8125 0.1875 0.875 0.1875 0.9375 0.1875
		 1 0.1875 0.0625 0.25 0 0.25 0.125 0.25 0.1875 0.25 0.25 0.25 0.3125 0.25 0.375 0.25
		 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.6875 0.25 0.75 0.25 0.8125 0.25 0.875
		 0.25 0.9375 0.25 1 0.25 0.0625 0.3125 0 0.3125 0.125 0.3125 0.1875 0.3125 0.25 0.3125
		 0.3125 0.3125 0.375 0.3125 0.4375 0.3125 0.5 0.3125 0.5625 0.3125 0.625 0.3125 0.6875
		 0.3125 0.75 0.3125 0.8125 0.3125 0.875 0.3125 0.9375 0.3125 1 0.3125 0.0625 0.375
		 0 0.375 0.125 0.375 0.1875 0.375 0.25 0.375 0.3125 0.375 0.375 0.375 0.4375 0.375
		 0.5 0.375 0.5625 0.375 0.625 0.375 0.6875 0.375 0.75 0.375;
	setAttr ".uvst[0].uvsp[250:337]" 0.8125 0.375 0.875 0.375 0.9375 0.375 1 0.375
		 0.0625 0.4375 0 0.4375 0.125 0.4375 0.1875 0.4375 0.25 0.4375 0.3125 0.4375 0.375
		 0.4375 0.4375 0.4375 0.5 0.4375 0.5625 0.4375 0.625 0.4375 0.6875 0.4375 0.75 0.4375
		 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 1 0.4375 0.0625 0.5 0 0.5 0.125 0.5 0.1875
		 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875
		 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0.03125 0 0.09375 0 0.15625 0
		 0.21875 0 0.28125 0 0.34375 0 0.40625 0 0.46875 0 0.53125 0 0.59375 0 0.65625 0 0.71875
		 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0.0625 0.5 0 0.5 0.125 0.5 0.1875 0.5 0.25
		 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75
		 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0.0625 0.0625 0 0.0625 0.125 0.0625 0.1875
		 0.0625 0.25 0.0625 0.3125 0.0625 0.375 0.0625 0.4375 0.0625 0.5 0.0625 0.5625 0.0625
		 0.625 0.0625 0.6875 0.0625 0.75 0.0625 0.8125 0.0625 0.875 0.0625 0.9375 0.0625 1
		 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 274 ".vt";
	setAttr ".vt[0:165]"  0.18024001 -0.98078537 -0.074657731 0.13794976 -0.98078537 -0.1379496
		 0.074657924 -0.98078537 -0.1802399 9.8840459e-08 -0.98078537 -0.19509031 -0.074657746 -0.98078537 -0.18023999
		 -0.13794963 -0.98078537 -0.13794975 -0.18023993 -0.98078537 -0.074657902 -0.19509032 -0.98078537 -6.976974e-08
		 -0.18023998 -0.98078537 0.074657775 -0.13794972 -0.98078537 0.13794966 -0.074657865 -0.98078537 0.18023995
		 -2.9070723e-08 -0.98078537 0.19509032 0.074657813 -0.98078537 0.18023996 0.13794968 -0.98078537 0.13794971
		 0.18023995 -0.98078537 0.074657843 0.19509032 -0.98078537 0 0.3535535 -0.92387962 -0.14644641
		 0.2705982 -0.92387962 -0.2705979 0.14644679 -0.92387962 -0.35355332 1.9388254e-07 -0.92387962 -0.38268343
		 -0.14644645 -0.92387962 -0.35355347 -0.27059793 -0.92387962 -0.27059817 -0.35355335 -0.92387962 -0.14644675
		 -0.38268346 -0.92387962 -1.3685826e-07 -0.35355344 -0.92387962 0.1464465 -0.27059814 -0.92387962 0.27059799
		 -0.14644669 -0.92387962 0.35355338 -5.702428e-08 -0.92387962 0.38268346 0.14644657 -0.92387962 0.35355341
		 0.27059805 -0.92387962 0.27059808 0.35355341 -0.92387962 0.14644663 0.38268346 -0.92387962 0
		 0.51328009 -0.83146977 -0.21260722 0.39284769 -0.83146977 -0.39284724 0.21260779 -0.83146977 -0.51327986
		 2.8147383e-07 -0.83146977 -0.55557019 -0.21260728 -0.83146977 -0.51328003 -0.39284733 -0.83146977 -0.39284766
		 -0.51327991 -0.83146977 -0.21260773 -0.55557024 -0.83146977 -1.986874e-07 -0.51328003 -0.83146977 0.21260735
		 -0.39284757 -0.83146977 0.39284739 -0.21260762 -0.83146977 0.51327991 -8.2786414e-08 -0.83146977 0.55557024
		 0.21260746 -0.83146977 0.51327997 0.39284745 -0.83146977 0.39284751 0.51327997 -0.83146977 0.21260755
		 0.55557024 -0.83146977 0 0.65328163 -0.70710683 -0.27059767 0.50000024 -0.70710683 -0.4999997
		 0.27059838 -0.70710683 -0.65328127 3.582482e-07 -0.70710683 -0.70710671 -0.27059773 -0.70710683 -0.65328157
		 -0.49999976 -0.70710683 -0.50000018 -0.65328139 -0.70710683 -0.27059829 -0.70710677 -0.70710683 -2.5288108e-07
		 -0.65328151 -0.70710683 0.27059782 -0.50000012 -0.70710683 0.49999985 -0.27059817 -0.70710683 0.65328139
		 -1.0536712e-07 -0.70710683 0.70710677 0.27059796 -0.70710683 0.65328151 0.49999994 -0.70710683 0.5
		 0.65328145 -0.70710683 0.27059805 0.70710677 -0.70710683 0 0.76817799 -0.55557036 -0.3181892
		 0.58793813 -0.55557036 -0.58793747 0.31819004 -0.55557036 -0.76817757 4.2125535e-07 -0.55557036 -0.8314696
		 -0.31818929 -0.55557036 -0.76817793 -0.58793759 -0.55557036 -0.58793807 -0.76817769 -0.55557036 -0.31818995
		 -0.83146966 -0.55557036 -2.9735673e-07 -0.76817787 -0.55557036 0.31818941 -0.58793795 -0.55557036 0.58793765
		 -0.3181898 -0.55557036 0.76817775 -1.2389863e-07 -0.55557036 0.83146966 0.31818956 -0.55557036 0.76817781
		 0.58793777 -0.55557036 0.58793789 0.76817775 -0.55557036 0.31818968 0.83146966 -0.55557036 0
		 0.85355353 -0.38268352 -0.35355288 0.65328181 -0.38268352 -0.65328109 0.3535538 -0.38268352 -0.85355312
		 4.6807384e-07 -0.38268352 -0.92387944 -0.35355297 -0.38268352 -0.85355347 -0.65328115 -0.38268352 -0.65328175
		 -0.85355324 -0.38268352 -0.35355371 -0.9238795 -0.38268352 -3.3040504e-07 -0.85355347 -0.38268352 0.35355309
		 -0.65328163 -0.38268352 0.65328127 -0.35355353 -0.38268352 0.8535533 -1.3766878e-07 -0.38268352 0.9238795
		 0.35355327 -0.38268352 0.85355341 0.65328139 -0.38268352 0.65328151 0.85355335 -0.38268352 0.35355341
		 0.9238795 -0.38268352 0 0.90612763 -0.19509077 -0.37532973 0.69352025 -0.19509077 -0.69351947
		 0.37533072 -0.19509077 -0.90612715 4.9690453e-07 -0.19509077 -0.98078519 -0.37532982 -0.19509077 -0.90612757
		 -0.69351959 -0.19509077 -0.69352019 -0.90612727 -0.19509077 -0.3753306 -0.98078525 -0.19509077 -3.5075612e-07
		 -0.90612751 -0.19509077 0.37532997 -0.69352007 -0.19509077 0.69351971 -0.37533045 -0.19509077 0.90612733
		 -1.4614839e-07 -0.19509077 0.98078525 0.37533015 -0.19509077 0.90612745 0.69351983 -0.19509077 0.69351995
		 0.90612739 -0.19509077 0.3753303 0.98078525 -0.19509077 0 0.92387974 -2.3841858e-07 -0.38268289
		 0.70710713 -2.3841858e-07 -0.70710635 0.3826839 -2.3841858e-07 -0.92387927 5.0663948e-07 -2.3841858e-07 -0.99999994
		 -0.38268298 -2.3841858e-07 -0.92387968 -0.70710647 -2.3841858e-07 -0.70710707 -0.92387938 -2.3841858e-07 -0.38268378
		 -1 -2.3841858e-07 -3.5762787e-07 -0.92387962 -2.3841858e-07 0.38268313 -0.70710695 -2.3841858e-07 0.70710659
		 -0.3826836 -2.3841858e-07 0.92387944 -1.4901161e-07 -2.3841858e-07 1 0.38268331 -2.3841858e-07 0.92387956
		 0.70710671 -2.3841858e-07 0.70710683 0.9238795 -2.3841858e-07 0.38268346 1 -2.3841858e-07 0
		 0 -1 0 0.19006784 -1.031108141 -0.078728549 0.14547166 -1.031108141 -0.1454715 0.28489286 -0.97117519 -0.28489253
		 0.37223035 -0.97117519 -0.1541826 0.07872875 -1.031108141 -0.19006772 0.154183 -0.97117519 -0.37223017
		 1.0452857e-07 -1.031108141 -0.20572788 2.036422e-07 -0.97117519 -0.40289909 -0.078728564 -1.031108141 -0.19006783
		 -0.15418264 -0.97117519 -0.37223032 -0.14547153 -1.031108141 -0.14547165 -0.28489256 -0.97117519 -0.28489283
		 -0.19006777 -1.031108141 -0.078728728 -0.37223017 -0.97117519 -0.15418296 -0.20572789 -1.031108141 -7.5211886e-08
		 -0.40289912 -0.97117519 -1.4167632e-07 -0.19006781 -1.031108141 0.078728594 -0.37223029 -0.97117519 0.15418269
		 -0.14547162 -1.031108141 0.14547156 -0.2848928 -0.97117519 0.28489262 -0.078728691 -1.031108141 0.19006777
		 -0.1541829 -0.97117519 0.37223023 -3.0362077e-08 -1.031108141 0.20572789 -5.9371541e-08 -0.97117519 0.40289912
		 0.078728631 -1.031108141 0.1900678 0.15418276 -0.97117519 0.37223026 0.14547157 -1.031108141 0.1454716
		 0.28489268 -0.97117519 0.28489271 0.19006778 -1.031108141 0.078728661 0.37223026 -0.97117519 0.15418282
		 0.20572789 -1.031108141 3.7664551e-09 0.40289912 -0.97117519 1.6060203e-09 0.41335711 -0.87394667 -0.41335663
		 0.54007691 -0.87394667 -0.22370683 0.22370741 -0.87394667 -0.54007667 2.9575622e-07 -0.87394643 -0.58457488
		 -0.22370689 -0.87394667 -0.54007691;
	setAttr ".vt[166:273]" -0.41335672 -0.87394667 -0.41335708 -0.54007673 -0.87394667 -0.22370735
		 -0.58457494 -0.87394667 -2.0638748e-07 -0.54007685 -0.87394667 0.22370696 -0.41335699 -0.87394643 0.41335678
		 -0.22370724 -0.87394667 0.54007673 -8.6263867e-08 -0.87394667 0.58457494 0.22370706 -0.87394667 0.54007679
		 0.41335687 -0.87394667 0.41335693 0.54007679 -0.87394667 0.22370715 0.58457494 -0.87394667 3.2290643e-09
		 0.52593601 -0.74316549 -0.52593547 0.68716836 -0.74316549 -0.28463399 0.28463474 -0.74316549 -0.687168
		 3.7698021e-07 -0.74316549 -0.74378544 -0.28463405 -0.74316549 -0.6871683 -0.52593553 -0.74316549 -0.52593595
		 -0.68716812 -0.74316549 -0.28463465 -0.7437855 -0.74316549 -2.6437004e-07 -0.68716824 -0.74316549 0.28463414
		 -0.52593589 -0.74316549 0.52593565 -0.28463453 -0.74316549 0.68716812 -1.1086185e-07 -0.74316549 0.7437855
		 0.28463429 -0.74316549 0.68716824 0.52593571 -0.74316549 0.52593577 0.68716818 -0.74316549 0.28463441
		 0.7437855 -0.74316549 4.7454458e-09 0.6183129 -0.58385968 -0.61831218 0.80786449 -0.58385968 -0.3346279
		 0.33462876 -0.58385968 -0.80786407 4.4309562e-07 -0.58385968 -0.87442595 -0.33462796 -0.58385968 -0.80786443
		 -0.6183123 -0.58385968 -0.61831284 -0.80786419 -0.58385968 -0.33462867 -0.87442607 -0.58385968 -3.1141485e-07
		 -0.80786437 -0.58385968 0.33462811 -0.61831272 -0.58385968 0.61831242 -0.33462849 -0.58385968 0.80786425
		 -1.3343806e-07 -0.58385968 0.87442601 0.33462825 -0.58385968 0.80786431 0.61831254 -0.58385968 0.61831266
		 0.80786425 -0.58385968 0.33462837 0.87442601 -0.58385968 4.5186774e-09 0.68694675 -0.40214849 -0.68694603
		 0.8975389 -0.40214849 -0.3717722 0.37177315 -0.40214849 -0.89753848 4.9176879e-07 -0.40214849 -0.97148883
		 -0.37177229 -0.40214849 -0.89753884 -0.68694609 -0.40214849 -0.68694669 -0.8975386 -0.40214849 -0.37177306
		 -0.97148889 -0.40214849 -3.4552949e-07 -0.89753884 -0.40214849 0.37177241 -0.68694657 -0.40214849 0.68694621
		 -0.37177289 -0.40214849 0.89753866 -1.4649136e-07 -0.40214849 0.97148895 0.37177259 -0.40214849 0.89753878
		 0.68694633 -0.40214849 0.68694645 0.89753872 -0.40214849 0.37177277 0.97148895 -0.40214849 7.3101445e-09
		 0.72920781 -0.20500708 -0.72920704 0.95275569 -0.20500708 -0.39464369 0.39464471 -0.20500708 -0.95275521
		 5.2445415e-07 -0.20500708 -1.031255007 -0.39464378 -0.20500708 -0.95275563 -0.72920716 -0.20500708 -0.72920775
		 -0.95275533 -0.20500708 -0.39464459 -1.031255126 -0.20500708 -3.6491005e-07 -0.95275557 -0.20500708 0.39464393
		 -0.72920763 -0.20500708 0.72920728 -0.39464444 -0.20500708 0.95275539 -1.5373085e-07 -0.20500708 1.031255126
		 0.39464414 -0.20500708 0.95275551 0.7292074 -0.20500708 0.72920752 0.95275545 -0.20500708 0.39464429
		 1.031255126 -0.20500708 7.8352045e-09 0.74261302 -0.004945755 -0.74261212 0.9702704 -0.004945755 -0.4018985
		 0.40189958 -0.004945755 -0.97026986 5.3783879e-07 -0.004945755 -1.050212741 -0.40189859 -0.004945755 -0.97027034
		 -0.74261224 -0.004945755 -0.74261296 -0.97026998 -0.004945755 -0.4018994 -1.05021286 -0.004945755 -3.7066638e-07
		 -0.97027028 -0.004945755 0.40189874 -0.74261284 -0.004945755 0.74261236 -0.40189925 -0.004945755 0.97027004
		 -1.5925616e-07 -0.004945755 1.05021286 0.40189892 -0.004945755 0.97027016 0.7426126 -0.004945755 0.74261272
		 0.97027016 -0.004945755 0.40189907 1.05021286 -0.004945755 5.5879354e-09 0.19006784 -9.19905949 -0.078728549
		 0.14547166 -9.19905949 -0.1454715 3.0799276e-11 -9.21938705 -6.3523486e-10 0.07872875 -9.19905949 -0.19006772
		 1.0452857e-07 -9.19905949 -0.20572788 -0.078728564 -9.19905949 -0.19006783 -0.14547153 -9.19905949 -0.14547165
		 -0.19006777 -9.19905949 -0.078728728 -0.20572789 -9.19905949 -7.5211886e-08 -0.19006781 -9.19905949 0.078728594
		 -0.14547162 -9.19905949 0.14547156 -0.078728691 -9.19905949 0.19006777 -3.0362077e-08 -9.19905949 0.20572789
		 0.078728631 -9.19905949 0.1900678 0.14547157 -9.19905949 0.1454716 0.19006778 -9.19905949 0.078728661
		 0.20572789 -9.19905949 3.7664551e-09;
	setAttr -s 560 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 0 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 16 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 32 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 48 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 64 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 80 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 96 1 112 113 0 113 114 0 114 115 0
		 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 112 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1
		 6 22 1 7 23 1 8 24 1 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 16 32 1
		 17 33 1 18 34 1 19 35 1 20 36 1 21 37 1 22 38 1 23 39 1 24 40 1 25 41 1 26 42 1 27 43 1
		 28 44 1 29 45 1 30 46 1 31 47 1 32 48 1 33 49 1 34 50 1 35 51 1 36 52 1 37 53 1;
	setAttr ".ed[166:331]" 38 54 1 39 55 1 40 56 1 41 57 1 42 58 1 43 59 1 44 60 1
		 45 61 1 46 62 1 47 63 1 48 64 1 49 65 1 50 66 1 51 67 1 52 68 1 53 69 1 54 70 1 55 71 1
		 56 72 1 57 73 1 58 74 1 59 75 1 60 76 1 61 77 1 62 78 1 63 79 1 64 80 1 65 81 1 66 82 1
		 67 83 1 68 84 1 69 85 1 70 86 1 71 87 1 72 88 1 73 89 1 74 90 1 75 91 1 76 92 1 77 93 1
		 78 94 1 79 95 1 80 96 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1 87 103 1
		 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 1 96 112 1
		 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1 105 121 1
		 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 1 128 0 1 128 1 1 128 2 1
		 128 3 1 128 4 1 128 5 1 128 6 1 128 7 1 128 8 1 128 9 1 128 10 1 128 11 1 128 12 1
		 128 13 1 128 14 1 128 15 1 129 130 0 130 131 1 132 131 1 129 132 1 130 133 0 133 134 1
		 131 134 1 133 135 0 135 136 1 134 136 1 135 137 0 137 138 1 136 138 1 137 139 0 139 140 1
		 138 140 1 139 141 0 141 142 1 140 142 1 141 143 0 143 144 1 142 144 1 143 145 0 145 146 1
		 144 146 1 145 147 0 147 148 1 146 148 1 147 149 0 149 150 1 148 150 1 149 151 0 151 152 1
		 150 152 1 151 153 0 153 154 1 152 154 1 153 155 0 155 156 1 154 156 1 155 157 0 157 158 1
		 156 158 1 157 159 0 159 160 1 158 160 1 159 129 0 160 132 1 131 161 1 162 161 1 132 162 1
		 134 163 1 161 163 1 136 164 1 163 164 1 138 165 1 164 165 1 140 166 1 165 166 1 142 167 1
		 166 167 1 144 168 1 167 168 1 146 169 1 168 169 1 148 170 1 169 170 1 150 171 1 170 171 1
		 152 172 1 171 172 1 154 173 1 172 173 1 156 174 1 173 174 1 158 175 1;
	setAttr ".ed[332:497]" 174 175 1 160 176 1 175 176 1 176 162 1 161 177 1 178 177 1
		 162 178 1 163 179 1 177 179 1 164 180 1 179 180 1 165 181 1 180 181 1 166 182 1 181 182 1
		 167 183 1 182 183 1 168 184 1 183 184 1 169 185 1 184 185 1 170 186 1 185 186 1 171 187 1
		 186 187 1 172 188 1 187 188 1 173 189 1 188 189 1 174 190 1 189 190 1 175 191 1 190 191 1
		 176 192 1 191 192 1 192 178 1 177 193 1 194 193 1 178 194 1 179 195 1 193 195 1 180 196 1
		 195 196 1 181 197 1 196 197 1 182 198 1 197 198 1 183 199 1 198 199 1 184 200 1 199 200 1
		 185 201 1 200 201 1 186 202 1 201 202 1 187 203 1 202 203 1 188 204 1 203 204 1 189 205 1
		 204 205 1 190 206 1 205 206 1 191 207 1 206 207 1 192 208 1 207 208 1 208 194 1 193 209 1
		 210 209 1 194 210 1 195 211 1 209 211 1 196 212 1 211 212 1 197 213 1 212 213 1 198 214 1
		 213 214 1 199 215 1 214 215 1 200 216 1 215 216 1 201 217 1 216 217 1 202 218 1 217 218 1
		 203 219 1 218 219 1 204 220 1 219 220 1 205 221 1 220 221 1 206 222 1 221 222 1 207 223 1
		 222 223 1 208 224 1 223 224 1 224 210 1 209 225 1 226 225 1 210 226 1 211 227 1 225 227 1
		 212 228 1 227 228 1 213 229 1 228 229 1 214 230 1 229 230 1 215 231 1 230 231 1 216 232 1
		 231 232 1 217 233 1 232 233 1 218 234 1 233 234 1 219 235 1 234 235 1 220 236 1 235 236 1
		 221 237 1 236 237 1 222 238 1 237 238 1 223 239 1 238 239 1 224 240 1 239 240 1 240 226 1
		 113 241 1 225 241 1 112 242 1 242 241 0 226 242 1 114 243 1 227 243 1 241 243 0 115 244 1
		 228 244 1 243 244 0 116 245 1 229 245 1 244 245 0 117 246 1 230 246 1 245 246 0 118 247 1
		 231 247 1 246 247 0 119 248 1 232 248 1 247 248 0 120 249 1 233 249 1 248 249 0 121 250 1
		 234 250 1 249 250 0 122 251 1 235 251 1 250 251 0 123 252 1 236 252 1;
	setAttr ".ed[498:559]" 251 252 0 124 253 1 237 253 1 252 253 0 125 254 1 238 254 1
		 253 254 0 126 255 1 239 255 1 254 255 0 127 256 1 240 256 1 255 256 0 256 242 0 129 257 1
		 130 258 1 257 258 0 259 257 1 259 258 1 133 260 1 258 260 0 259 260 1 135 261 1 260 261 0
		 259 261 1 137 262 1 261 262 0 259 262 1 139 263 1 262 263 0 259 263 1 141 264 1 263 264 0
		 259 264 1 143 265 1 264 265 0 259 265 1 145 266 1 265 266 0 259 266 1 147 267 1 266 267 0
		 259 267 1 149 268 1 267 268 0 259 268 1 151 269 1 268 269 0 259 269 1 153 270 1 269 270 0
		 259 270 1 155 271 1 270 271 0 259 271 1 157 272 1 271 272 0 259 272 1 159 273 1 272 273 0
		 259 273 1 273 257 0;
	setAttr -s 288 -ch 1120 ".fc[0:287]" -type "polyFaces" 
		f 4 256 257 -259 -260
		mu 0 4 0 1 18 17
		f 4 260 261 -263 -258
		mu 0 4 1 2 19 18
		f 4 263 264 -266 -262
		mu 0 4 2 3 20 19
		f 4 266 267 -269 -265
		mu 0 4 3 4 21 20
		f 4 269 270 -272 -268
		mu 0 4 4 5 22 21
		f 4 272 273 -275 -271
		mu 0 4 5 6 23 22
		f 4 275 276 -278 -274
		mu 0 4 6 7 24 23
		f 4 278 279 -281 -277
		mu 0 4 7 8 25 24
		f 4 281 282 -284 -280
		mu 0 4 8 9 26 25
		f 4 284 285 -287 -283
		mu 0 4 9 10 27 26
		f 4 287 288 -290 -286
		mu 0 4 10 11 28 27
		f 4 290 291 -293 -289
		mu 0 4 11 12 29 28
		f 4 293 294 -296 -292
		mu 0 4 12 13 30 29
		f 4 296 297 -299 -295
		mu 0 4 13 14 31 30
		f 4 299 300 -302 -298
		mu 0 4 14 15 32 31
		f 4 302 259 -304 -301
		mu 0 4 15 16 33 32
		f 4 258 304 -306 -307
		mu 0 4 17 18 35 34
		f 4 262 307 -309 -305
		mu 0 4 18 19 36 35
		f 4 265 309 -311 -308
		mu 0 4 19 20 37 36
		f 4 268 311 -313 -310
		mu 0 4 20 21 38 37
		f 4 271 313 -315 -312
		mu 0 4 21 22 39 38
		f 4 274 315 -317 -314
		mu 0 4 22 23 40 39
		f 4 277 317 -319 -316
		mu 0 4 23 24 41 40
		f 4 280 319 -321 -318
		mu 0 4 24 25 42 41
		f 4 283 321 -323 -320
		mu 0 4 25 26 43 42
		f 4 286 323 -325 -322
		mu 0 4 26 27 44 43
		f 4 289 325 -327 -324
		mu 0 4 27 28 45 44
		f 4 292 327 -329 -326
		mu 0 4 28 29 46 45
		f 4 295 329 -331 -328
		mu 0 4 29 30 47 46
		f 4 298 331 -333 -330
		mu 0 4 30 31 48 47
		f 4 301 333 -335 -332
		mu 0 4 31 32 49 48
		f 4 303 306 -336 -334
		mu 0 4 32 33 50 49
		f 4 305 336 -338 -339
		mu 0 4 34 35 52 51
		f 4 308 339 -341 -337
		mu 0 4 35 36 53 52
		f 4 310 341 -343 -340
		mu 0 4 36 37 54 53
		f 4 312 343 -345 -342
		mu 0 4 37 38 55 54
		f 4 314 345 -347 -344
		mu 0 4 38 39 56 55
		f 4 316 347 -349 -346
		mu 0 4 39 40 57 56
		f 4 318 349 -351 -348
		mu 0 4 40 41 58 57
		f 4 320 351 -353 -350
		mu 0 4 41 42 59 58
		f 4 322 353 -355 -352
		mu 0 4 42 43 60 59
		f 4 324 355 -357 -354
		mu 0 4 43 44 61 60
		f 4 326 357 -359 -356
		mu 0 4 44 45 62 61
		f 4 328 359 -361 -358
		mu 0 4 45 46 63 62
		f 4 330 361 -363 -360
		mu 0 4 46 47 64 63
		f 4 332 363 -365 -362
		mu 0 4 47 48 65 64
		f 4 334 365 -367 -364
		mu 0 4 48 49 66 65
		f 4 335 338 -368 -366
		mu 0 4 49 50 67 66
		f 4 337 368 -370 -371
		mu 0 4 51 52 69 68
		f 4 340 371 -373 -369
		mu 0 4 52 53 70 69
		f 4 342 373 -375 -372
		mu 0 4 53 54 71 70
		f 4 344 375 -377 -374
		mu 0 4 54 55 72 71
		f 4 346 377 -379 -376
		mu 0 4 55 56 73 72
		f 4 348 379 -381 -378
		mu 0 4 56 57 74 73
		f 4 350 381 -383 -380
		mu 0 4 57 58 75 74
		f 4 352 383 -385 -382
		mu 0 4 58 59 76 75
		f 4 354 385 -387 -384
		mu 0 4 59 60 77 76
		f 4 356 387 -389 -386
		mu 0 4 60 61 78 77
		f 4 358 389 -391 -388
		mu 0 4 61 62 79 78
		f 4 360 391 -393 -390
		mu 0 4 62 63 80 79
		f 4 362 393 -395 -392
		mu 0 4 63 64 81 80
		f 4 364 395 -397 -394
		mu 0 4 64 65 82 81
		f 4 366 397 -399 -396
		mu 0 4 65 66 83 82
		f 4 367 370 -400 -398
		mu 0 4 66 67 84 83
		f 4 369 400 -402 -403
		mu 0 4 68 69 86 85
		f 4 372 403 -405 -401
		mu 0 4 69 70 87 86
		f 4 374 405 -407 -404
		mu 0 4 70 71 88 87
		f 4 376 407 -409 -406
		mu 0 4 71 72 89 88
		f 4 378 409 -411 -408
		mu 0 4 72 73 90 89
		f 4 380 411 -413 -410
		mu 0 4 73 74 91 90
		f 4 382 413 -415 -412
		mu 0 4 74 75 92 91
		f 4 384 415 -417 -414
		mu 0 4 75 76 93 92
		f 4 386 417 -419 -416
		mu 0 4 76 77 94 93
		f 4 388 419 -421 -418
		mu 0 4 77 78 95 94
		f 4 390 421 -423 -420
		mu 0 4 78 79 96 95
		f 4 392 423 -425 -422
		mu 0 4 79 80 97 96
		f 4 394 425 -427 -424
		mu 0 4 80 81 98 97
		f 4 396 427 -429 -426
		mu 0 4 81 82 99 98
		f 4 398 429 -431 -428
		mu 0 4 82 83 100 99
		f 4 399 402 -432 -430
		mu 0 4 83 84 101 100
		f 4 401 432 -434 -435
		mu 0 4 85 86 103 102
		f 4 404 435 -437 -433
		mu 0 4 86 87 104 103
		f 4 406 437 -439 -436
		mu 0 4 87 88 105 104
		f 4 408 439 -441 -438
		mu 0 4 88 89 106 105
		f 4 410 441 -443 -440
		mu 0 4 89 90 107 106
		f 4 412 443 -445 -442
		mu 0 4 90 91 108 107
		f 4 414 445 -447 -444
		mu 0 4 91 92 109 108
		f 4 416 447 -449 -446
		mu 0 4 92 93 110 109
		f 4 418 449 -451 -448
		mu 0 4 93 94 111 110
		f 4 420 451 -453 -450
		mu 0 4 94 95 112 111
		f 4 422 453 -455 -452
		mu 0 4 95 96 113 112
		f 4 424 455 -457 -454
		mu 0 4 96 97 114 113
		f 4 426 457 -459 -456
		mu 0 4 97 98 115 114
		f 4 428 459 -461 -458
		mu 0 4 98 99 116 115
		f 4 430 461 -463 -460
		mu 0 4 99 100 117 116
		f 4 431 434 -464 -462
		mu 0 4 100 101 118 117
		f 4 433 465 -468 -469
		mu 0 4 102 103 304 305
		f 4 436 470 -472 -466
		mu 0 4 103 104 306 304
		f 4 438 473 -475 -471
		mu 0 4 104 105 307 306
		f 4 440 476 -478 -474
		mu 0 4 105 106 308 307
		f 4 442 479 -481 -477
		mu 0 4 106 107 309 308
		f 4 444 482 -484 -480
		mu 0 4 107 108 310 309
		f 4 446 485 -487 -483
		mu 0 4 108 109 311 310
		f 4 448 488 -490 -486
		mu 0 4 109 110 312 311
		f 4 450 491 -493 -489
		mu 0 4 110 111 313 312
		f 4 452 494 -496 -492
		mu 0 4 111 112 314 313
		f 4 454 497 -499 -495
		mu 0 4 112 113 315 314
		f 4 456 500 -502 -498
		mu 0 4 113 114 316 315
		f 4 458 503 -505 -501
		mu 0 4 114 115 317 316
		f 4 460 506 -508 -504
		mu 0 4 115 116 318 317
		f 4 462 509 -511 -507
		mu 0 4 116 117 319 318
		f 4 463 468 -512 -510
		mu 0 4 117 118 320 319
		f 3 -515 -516 516
		mu 0 3 321 322 136
		f 3 -519 -517 519
		mu 0 3 323 321 137
		f 3 -522 -520 522
		mu 0 3 324 323 138
		f 3 -525 -523 525
		mu 0 3 325 324 139
		f 3 -528 -526 528
		mu 0 3 326 325 140
		f 3 -531 -529 531
		mu 0 3 327 326 141
		f 3 -534 -532 534
		mu 0 3 328 327 142
		f 3 -537 -535 537
		mu 0 3 329 328 143
		f 3 -540 -538 540
		mu 0 3 330 329 144
		f 3 -543 -541 543
		mu 0 3 331 330 145
		f 3 -546 -544 546
		mu 0 3 332 331 146
		f 3 -549 -547 549
		mu 0 3 333 332 147
		f 3 -552 -550 552
		mu 0 3 334 333 148
		f 3 -555 -553 555
		mu 0 3 335 334 149
		f 3 -558 -556 558
		mu 0 3 336 335 150
		f 3 -560 -559 515
		mu 0 3 337 336 151
		f 4 128 16 -130 -1
		mu 0 4 152 155 154 153
		f 4 129 17 -131 -2
		mu 0 4 153 154 157 156
		f 4 130 18 -132 -3
		mu 0 4 156 157 159 158
		f 4 131 19 -133 -4
		mu 0 4 158 159 161 160
		f 4 132 20 -134 -5
		mu 0 4 160 161 163 162
		f 4 133 21 -135 -6
		mu 0 4 162 163 165 164
		f 4 134 22 -136 -7
		mu 0 4 164 165 167 166
		f 4 135 23 -137 -8
		mu 0 4 166 167 169 168
		f 4 136 24 -138 -9
		mu 0 4 168 169 171 170
		f 4 137 25 -139 -10
		mu 0 4 170 171 173 172
		f 4 138 26 -140 -11
		mu 0 4 172 173 175 174
		f 4 139 27 -141 -12
		mu 0 4 174 175 177 176
		f 4 140 28 -142 -13
		mu 0 4 176 177 179 178
		f 4 141 29 -143 -14
		mu 0 4 178 179 181 180
		f 4 142 30 -144 -15
		mu 0 4 180 181 183 182
		f 4 143 31 -129 -16
		mu 0 4 182 183 185 184
		f 4 144 32 -146 -17
		mu 0 4 155 187 186 154
		f 4 145 33 -147 -18
		mu 0 4 154 186 188 157
		f 4 146 34 -148 -19
		mu 0 4 157 188 189 159
		f 4 147 35 -149 -20
		mu 0 4 159 189 190 161
		f 4 148 36 -150 -21
		mu 0 4 161 190 191 163
		f 4 149 37 -151 -22
		mu 0 4 163 191 192 165
		f 4 150 38 -152 -23
		mu 0 4 165 192 193 167
		f 4 151 39 -153 -24
		mu 0 4 167 193 194 169
		f 4 152 40 -154 -25
		mu 0 4 169 194 195 171
		f 4 153 41 -155 -26
		mu 0 4 171 195 196 173
		f 4 154 42 -156 -27
		mu 0 4 173 196 197 175
		f 4 155 43 -157 -28
		mu 0 4 175 197 198 177
		f 4 156 44 -158 -29
		mu 0 4 177 198 199 179
		f 4 157 45 -159 -30
		mu 0 4 179 199 200 181
		f 4 158 46 -160 -31
		mu 0 4 181 200 201 183
		f 4 159 47 -145 -32
		mu 0 4 183 201 202 185
		f 4 160 48 -162 -33
		mu 0 4 187 204 203 186
		f 4 161 49 -163 -34
		mu 0 4 186 203 205 188
		f 4 162 50 -164 -35
		mu 0 4 188 205 206 189
		f 4 163 51 -165 -36
		mu 0 4 189 206 207 190
		f 4 164 52 -166 -37
		mu 0 4 190 207 208 191
		f 4 165 53 -167 -38
		mu 0 4 191 208 209 192
		f 4 166 54 -168 -39
		mu 0 4 192 209 210 193
		f 4 167 55 -169 -40
		mu 0 4 193 210 211 194
		f 4 168 56 -170 -41
		mu 0 4 194 211 212 195
		f 4 169 57 -171 -42
		mu 0 4 195 212 213 196
		f 4 170 58 -172 -43
		mu 0 4 196 213 214 197
		f 4 171 59 -173 -44
		mu 0 4 197 214 215 198
		f 4 172 60 -174 -45
		mu 0 4 198 215 216 199
		f 4 173 61 -175 -46
		mu 0 4 199 216 217 200
		f 4 174 62 -176 -47
		mu 0 4 200 217 218 201
		f 4 175 63 -161 -48
		mu 0 4 201 218 219 202
		f 4 176 64 -178 -49
		mu 0 4 204 221 220 203
		f 4 177 65 -179 -50
		mu 0 4 203 220 222 205
		f 4 178 66 -180 -51
		mu 0 4 205 222 223 206
		f 4 179 67 -181 -52
		mu 0 4 206 223 224 207
		f 4 180 68 -182 -53
		mu 0 4 207 224 225 208
		f 4 181 69 -183 -54
		mu 0 4 208 225 226 209
		f 4 182 70 -184 -55
		mu 0 4 209 226 227 210
		f 4 183 71 -185 -56
		mu 0 4 210 227 228 211
		f 4 184 72 -186 -57
		mu 0 4 211 228 229 212
		f 4 185 73 -187 -58
		mu 0 4 212 229 230 213
		f 4 186 74 -188 -59
		mu 0 4 213 230 231 214
		f 4 187 75 -189 -60
		mu 0 4 214 231 232 215
		f 4 188 76 -190 -61
		mu 0 4 215 232 233 216
		f 4 189 77 -191 -62
		mu 0 4 216 233 234 217
		f 4 190 78 -192 -63
		mu 0 4 217 234 235 218
		f 4 191 79 -177 -64
		mu 0 4 218 235 236 219
		f 4 192 80 -194 -65
		mu 0 4 221 238 237 220
		f 4 193 81 -195 -66
		mu 0 4 220 237 239 222
		f 4 194 82 -196 -67
		mu 0 4 222 239 240 223
		f 4 195 83 -197 -68
		mu 0 4 223 240 241 224
		f 4 196 84 -198 -69
		mu 0 4 224 241 242 225
		f 4 197 85 -199 -70
		mu 0 4 225 242 243 226
		f 4 198 86 -200 -71
		mu 0 4 226 243 244 227
		f 4 199 87 -201 -72
		mu 0 4 227 244 245 228
		f 4 200 88 -202 -73
		mu 0 4 228 245 246 229
		f 4 201 89 -203 -74
		mu 0 4 229 246 247 230
		f 4 202 90 -204 -75
		mu 0 4 230 247 248 231
		f 4 203 91 -205 -76
		mu 0 4 231 248 249 232
		f 4 204 92 -206 -77
		mu 0 4 232 249 250 233
		f 4 205 93 -207 -78
		mu 0 4 233 250 251 234
		f 4 206 94 -208 -79
		mu 0 4 234 251 252 235
		f 4 207 95 -193 -80
		mu 0 4 235 252 253 236
		f 4 208 96 -210 -81
		mu 0 4 238 255 254 237
		f 4 209 97 -211 -82
		mu 0 4 237 254 256 239
		f 4 210 98 -212 -83
		mu 0 4 239 256 257 240
		f 4 211 99 -213 -84
		mu 0 4 240 257 258 241
		f 4 212 100 -214 -85
		mu 0 4 241 258 259 242
		f 4 213 101 -215 -86
		mu 0 4 242 259 260 243
		f 4 214 102 -216 -87
		mu 0 4 243 260 261 244
		f 4 215 103 -217 -88
		mu 0 4 244 261 262 245
		f 4 216 104 -218 -89
		mu 0 4 245 262 263 246
		f 4 217 105 -219 -90
		mu 0 4 246 263 264 247
		f 4 218 106 -220 -91
		mu 0 4 247 264 265 248
		f 4 219 107 -221 -92
		mu 0 4 248 265 266 249
		f 4 220 108 -222 -93
		mu 0 4 249 266 267 250
		f 4 221 109 -223 -94
		mu 0 4 250 267 268 251
		f 4 222 110 -224 -95
		mu 0 4 251 268 269 252
		f 4 223 111 -209 -96
		mu 0 4 252 269 270 253
		f 4 224 112 -226 -97
		mu 0 4 255 272 271 254
		f 4 225 113 -227 -98
		mu 0 4 254 271 273 256
		f 4 226 114 -228 -99
		mu 0 4 256 273 274 257
		f 4 227 115 -229 -100
		mu 0 4 257 274 275 258
		f 4 228 116 -230 -101
		mu 0 4 258 275 276 259
		f 4 229 117 -231 -102
		mu 0 4 259 276 277 260
		f 4 230 118 -232 -103
		mu 0 4 260 277 278 261
		f 4 231 119 -233 -104
		mu 0 4 261 278 279 262
		f 4 232 120 -234 -105
		mu 0 4 262 279 280 263
		f 4 233 121 -235 -106
		mu 0 4 263 280 281 264
		f 4 234 122 -236 -107
		mu 0 4 264 281 282 265
		f 4 235 123 -237 -108
		mu 0 4 265 282 283 266
		f 4 236 124 -238 -109
		mu 0 4 266 283 284 267
		f 4 237 125 -239 -110
		mu 0 4 267 284 285 268
		f 4 238 126 -240 -111
		mu 0 4 268 285 286 269
		f 4 239 127 -225 -112
		mu 0 4 269 286 287 270
		f 3 -242 240 0
		mu 0 3 153 288 152
		f 3 -243 241 1
		mu 0 3 156 289 153
		f 3 -244 242 2
		mu 0 3 158 290 156
		f 3 -245 243 3
		mu 0 3 160 291 158
		f 3 -246 244 4
		mu 0 3 162 292 160
		f 3 -247 245 5
		mu 0 3 164 293 162
		f 3 -248 246 6
		mu 0 3 166 294 164
		f 3 -249 247 7
		mu 0 3 168 295 166
		f 3 -250 248 8
		mu 0 3 170 296 168
		f 3 -251 249 9
		mu 0 3 172 297 170
		f 3 -252 250 10
		mu 0 3 174 298 172
		f 3 -253 251 11
		mu 0 3 176 299 174
		f 3 -254 252 12
		mu 0 3 178 300 176
		f 3 -255 253 13
		mu 0 3 180 301 178
		f 3 -256 254 14
		mu 0 3 182 302 180
		f 3 -241 255 15
		mu 0 3 184 303 182
		f 4 -113 466 467 -465
		mu 0 4 120 119 305 304
		f 4 -114 464 471 -470
		mu 0 4 121 120 304 306
		f 4 -115 469 474 -473
		mu 0 4 122 121 306 307
		f 4 -116 472 477 -476
		mu 0 4 123 122 307 308
		f 4 -117 475 480 -479
		mu 0 4 124 123 308 309
		f 4 -118 478 483 -482
		mu 0 4 125 124 309 310
		f 4 -119 481 486 -485
		mu 0 4 126 125 310 311
		f 4 -120 484 489 -488
		mu 0 4 127 126 311 312
		f 4 -121 487 492 -491
		mu 0 4 128 127 312 313
		f 4 -122 490 495 -494
		mu 0 4 129 128 313 314
		f 4 -123 493 498 -497
		mu 0 4 130 129 314 315
		f 4 -124 496 501 -500
		mu 0 4 131 130 315 316
		f 4 -125 499 504 -503
		mu 0 4 132 131 316 317
		f 4 -126 502 507 -506
		mu 0 4 133 132 317 318
		f 4 -127 505 510 -509
		mu 0 4 134 133 318 319
		f 4 -128 508 511 -467
		mu 0 4 135 134 319 320
		f 4 -257 512 514 -514
		mu 0 4 1 0 322 321
		f 4 -261 513 518 -518
		mu 0 4 2 1 321 323
		f 4 -264 517 521 -521
		mu 0 4 3 2 323 324
		f 4 -267 520 524 -524
		mu 0 4 4 3 324 325
		f 4 -270 523 527 -527
		mu 0 4 5 4 325 326
		f 4 -273 526 530 -530
		mu 0 4 6 5 326 327
		f 4 -276 529 533 -533
		mu 0 4 7 6 327 328
		f 4 -279 532 536 -536
		mu 0 4 8 7 328 329
		f 4 -282 535 539 -539
		mu 0 4 9 8 329 330
		f 4 -285 538 542 -542
		mu 0 4 10 9 330 331
		f 4 -288 541 545 -545
		mu 0 4 11 10 331 332
		f 4 -291 544 548 -548
		mu 0 4 12 11 332 333
		f 4 -294 547 551 -551
		mu 0 4 13 12 333 334
		f 4 -297 550 554 -554
		mu 0 4 14 13 334 335
		f 4 -300 553 557 -557
		mu 0 4 15 14 335 336
		f 4 -303 556 559 -513
		mu 0 4 16 15 336 337;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Fire_Potion_Plaquard";
	rename -uid "FB47B08B-4705-16BE-5C0F-FF8B1F9D018A";
	setAttr ".t" -type "double3" 6.3331544866828393 2.2146043628404533 -0.6713085497192387 ;
	setAttr ".s" -type "double3" 0.039281697045087736 0.62108997597123627 0.96496033664563408 ;
createNode mesh -n "Fire_Potion_PlaquardShape" -p "Fire_Potion_Plaquard";
	rename -uid "7190B8D5-4858-B337-B72C-AC90423F173C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Door_Frame1";
	rename -uid "166C19BA-4DF3-12D0-CC17-F08CF30E5213";
	setAttr ".t" -type "double3" -6.000812082049749 -0.38702790858111724 1.6092577706384836 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.14497303433158756 0.61323506992832244 0.67768020477871727 ;
createNode mesh -n "Door_Frame1Shape" -p "Door_Frame1";
	rename -uid "BCA60B07-461C-5169-04AD-EB90053BFDB2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.20833334 0.25 0.20833334 0 0.79166669 0 0.79166669 0.25 0.29166669
		 0.25 0.29166669 0 0.70833337 0 0.70833337 0.25 0.375 0.16666666 0.29166669 0.16666666
		 0.20833334 0.16666666 0.125 0.16666666 0.375 0.58333337 0.625 0.58333337 0.875 0.16666666
		 0.79166663 0.16666666 0.70833337 0.16666666 0.625 0.16666666 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[9]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[18]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[21]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr -s 32 ".vt[0:31]"  -0.5 -1 0.5 0.49999976 -1 0.5 -0.5 0.99999988 0.5
		 0.49999976 0.99999988 0.5 -0.5 0.99999988 -0.5 0.49999976 0.99999988 -0.5 -0.5 -1 -0.5
		 0.49999976 -1 -0.5 -0.5 0.99999988 -0.40232658 -0.49999988 -1 -0.40232658 0.49999988 -1 -0.40232658
		 0.49999976 0.99999988 -0.40232658 -0.5 0.99999988 0.40232563 -0.5 -1 0.40232563 0.49999976 -1 0.40232563
		 0.49999976 0.99999988 0.40232563 -0.5 0.91155231 0.5 -0.5 0.91155231 0.40232563 -0.49999988 0.91155231 -0.40232658
		 -0.5 0.91155231 -0.5 0.49999976 0.91155231 -0.5 0.49999988 0.91155231 -0.40232658
		 0.49999976 0.91155231 0.40232563 0.49999976 0.91155231 0.5 -0.5 2.25792265 0.5 -0.5 2.25792265 0.40232563
		 0.49999976 2.25792265 0.5 0.49999976 2.25792265 0.40232563 -0.5 2.25792265 -0.40232658
		 -0.5 2.25792265 -0.5 0.49999976 2.25792265 -0.40232658 0.49999976 2.25792265 -0.5;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 0 0 16 0 2 12 0 3 15 0
		 4 19 0 5 20 0 6 9 0 7 10 0 8 4 0 8 18 1 11 5 0 12 8 0 13 0 0 12 17 1 14 1 0 15 11 0
		 16 2 0 17 13 0 16 17 1 18 9 0 17 18 0 19 6 0 18 19 1 20 7 0 19 20 1 21 11 1 20 21 1
		 22 15 1 21 22 0 23 3 0 22 23 1 23 16 1 10 21 0 14 22 0 1 23 0 17 22 0 13 14 0 18 21 0
		 9 10 0 2 24 0 12 25 0 24 25 0 3 26 0 15 27 0 26 27 0 8 28 0 4 29 0 28 29 0 11 30 0
		 5 31 0 30 31 0 25 28 0 27 30 0;
	setAttr -s 23 -ch 92 ".fc[0:22]" -type "polyFaces" 
		f 4 -5 0 37 34
		mu 0 4 20 0 1 29
		f 4 -4 -25 27 26
		mu 0 4 7 6 24 25
		f 4 -18 36 33 -38
		mu 0 4 1 18 28 29
		f 4 15 4 21 20
		mu 0 4 17 0 20 21
		f 4 9 -23 25 24
		mu 0 4 10 13 22 23
		f 4 -11 -27 29 -36
		mu 0 4 14 8 26 27
		f 4 -22 19 5 16
		mu 0 4 21 20 2 16
		f 4 -24 -17 14 12
		mu 0 4 22 21 16 12
		f 4 -26 -13 11 7
		mu 0 4 23 22 12 11
		f 4 2 8 -28 -8
		mu 0 4 4 5 25 24
		f 4 -29 -30 -9 -14
		mu 0 4 15 27 26 9
		f 4 -31 -32 28 -19
		mu 0 4 19 28 27 15
		f 4 -34 30 -7 -33
		mu 0 4 29 28 19 3
		f 4 -35 32 -2 -20
		mu 0 4 20 29 3 2
		f 4 -21 38 -37 -40
		mu 0 4 17 21 28 18
		f 4 23 40 31 -39
		mu 0 4 21 22 27 28
		f 4 22 41 35 -41
		mu 0 4 22 13 14 27
		f 4 42 44 -44 -6
		mu 0 4 30 33 32 31
		f 4 6 46 -48 -46
		mu 0 4 34 35 36 37
		f 4 48 50 -50 -12
		mu 0 4 38 41 40 39
		f 4 13 52 -54 -52
		mu 0 4 42 43 44 45
		f 4 43 54 -49 -15
		mu 0 4 46 49 48 47
		f 4 18 51 -56 -47
		mu 0 4 50 51 52 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Door" -p "Door_Frame1";
	rename -uid "048CF9AA-4DE7-0CF2-BDDD-77B16684D62C";
	setAttr ".t" -type "double3" -0.017449698374198519 -0.045284472639740558 0.0037748012032015055 ;
	setAttr ".s" -type "double3" 0.26465816059073627 1.9217197046604648 0.83757344442584891 ;
createNode mesh -n "DoorShape" -p "|Door_Frame1|Door";
	rename -uid "0E05542F-412A-2F8D-D138-75ADDC9C2B8D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Door_Frame2";
	rename -uid "8C78A619-46EC-4869-184A-37859B587FC2";
	setAttr ".t" -type "double3" 5.002190358516013 1.6028402237038955 -3.4052895122045519 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.14497303433158756 0.61323506992832244 0.67768020477871727 ;
createNode mesh -n "Door_Frame2Shape" -p "Door_Frame2";
	rename -uid "450FB5CA-441E-C085-1994-658C876A2EDE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.20833334 0.25 0.20833334 0 0.79166669 0 0.79166669 0.25 0.29166669
		 0.25 0.29166669 0 0.70833337 0 0.70833337 0.25 0.375 0.16666666 0.29166669 0.16666666
		 0.20833334 0.16666666 0.125 0.16666666 0.375 0.58333337 0.625 0.58333337 0.875 0.16666666
		 0.79166663 0.16666666 0.70833337 0.16666666 0.625 0.16666666 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[9]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[18]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr ".pt[21]" -type "float3" 1.1920929e-07 0 0 ;
	setAttr -s 32 ".vt[0:31]"  -0.5 -1 0.5 0.49999976 -1 0.5 -0.5 0.99999988 0.5
		 0.49999976 0.99999988 0.5 -0.5 0.99999988 -0.5 0.49999976 0.99999988 -0.5 -0.5 -1 -0.5
		 0.49999976 -1 -0.5 -0.5 0.99999988 -0.40232658 -0.49999988 -1 -0.40232658 0.49999988 -1 -0.40232658
		 0.49999976 0.99999988 -0.40232658 -0.5 0.99999988 0.40232563 -0.5 -1 0.40232563 0.49999976 -1 0.40232563
		 0.49999976 0.99999988 0.40232563 -0.5 0.91155231 0.5 -0.5 0.91155231 0.40232563 -0.49999988 0.91155231 -0.40232658
		 -0.5 0.91155231 -0.5 0.49999976 0.91155231 -0.5 0.49999988 0.91155231 -0.40232658
		 0.49999976 0.91155231 0.40232563 0.49999976 0.91155231 0.5 -0.5 2.25792265 0.5 -0.5 2.25792265 0.40232563
		 0.49999976 2.25792265 0.5 0.49999976 2.25792265 0.40232563 -0.5 2.25792265 -0.40232658
		 -0.5 2.25792265 -0.5 0.49999976 2.25792265 -0.40232658 0.49999976 2.25792265 -0.5;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 0 0 16 0 2 12 0 3 15 0
		 4 19 0 5 20 0 6 9 0 7 10 0 8 4 0 8 18 1 11 5 0 12 8 0 13 0 0 12 17 1 14 1 0 15 11 0
		 16 2 0 17 13 0 16 17 1 18 9 0 17 18 0 19 6 0 18 19 1 20 7 0 19 20 1 21 11 1 20 21 1
		 22 15 1 21 22 0 23 3 0 22 23 1 23 16 1 10 21 0 14 22 0 1 23 0 17 22 0 13 14 0 18 21 0
		 9 10 0 2 24 0 12 25 0 24 25 0 3 26 0 15 27 0 26 27 0 8 28 0 4 29 0 28 29 0 11 30 0
		 5 31 0 30 31 0 25 28 0 27 30 0;
	setAttr -s 23 -ch 92 ".fc[0:22]" -type "polyFaces" 
		f 4 -5 0 37 34
		mu 0 4 20 0 1 29
		f 4 -4 -25 27 26
		mu 0 4 7 6 24 25
		f 4 -18 36 33 -38
		mu 0 4 1 18 28 29
		f 4 15 4 21 20
		mu 0 4 17 0 20 21
		f 4 9 -23 25 24
		mu 0 4 10 13 22 23
		f 4 -11 -27 29 -36
		mu 0 4 14 8 26 27
		f 4 -22 19 5 16
		mu 0 4 21 20 2 16
		f 4 -24 -17 14 12
		mu 0 4 22 21 16 12
		f 4 -26 -13 11 7
		mu 0 4 23 22 12 11
		f 4 2 8 -28 -8
		mu 0 4 4 5 25 24
		f 4 -29 -30 -9 -14
		mu 0 4 15 27 26 9
		f 4 -31 -32 28 -19
		mu 0 4 19 28 27 15
		f 4 -34 30 -7 -33
		mu 0 4 29 28 19 3
		f 4 -35 32 -2 -20
		mu 0 4 20 29 3 2
		f 4 -21 38 -37 -40
		mu 0 4 17 21 28 18
		f 4 23 40 31 -39
		mu 0 4 21 22 27 28
		f 4 22 41 35 -41
		mu 0 4 22 13 14 27
		f 4 42 44 -44 -6
		mu 0 4 30 33 32 31
		f 4 6 46 -48 -46
		mu 0 4 34 35 36 37
		f 4 48 50 -50 -12
		mu 0 4 38 41 40 39
		f 4 13 52 -54 -52
		mu 0 4 42 43 44 45
		f 4 43 54 -49 -15
		mu 0 4 46 49 48 47
		f 4 18 51 -56 -47
		mu 0 4 50 51 52 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Door" -p "Door_Frame2";
	rename -uid "6BC50122-450C-17BC-2399-4C9077D894D0";
	setAttr ".t" -type "double3" -0.017449698374198519 -0.056286026263452894 0.0037748012032015055 ;
	setAttr ".s" -type "double3" 0.26465816059073627 1.9217197046604648 0.83757344442584891 ;
createNode mesh -n "DoorShape" -p "|Door_Frame2|Door";
	rename -uid "3A208A89-4818-9861-DE56-2FBBC0216D9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1";
	rename -uid "3B558900-4401-0181-34E6-A09C34A98A80";
	setAttr ".t" -type "double3" -3.7715594118096036 -0.7900669876712676 4.970313039216121 ;
	setAttr ".s" -type "double3" 0.4186379669591071 0.4186379669591071 0.4186379669591071 ;
	setAttr ".rp" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".spt" -type "double3" 0 0 -3.5527136788005009e-15 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "27B627E6-455B-39B1-E91A-C5A3755E8974";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "993F90FC-4DC5-91B3-9F7C-E693212CF619";
	setAttr ".t" -type "double3" -4.7560181854595571 -0.012333509540582599 5.2528440035180504 ;
	setAttr ".s" -type "double3" 1.5156539947041239 0.077055730189593399 1.5156539947041239 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "06B2D436-4DCC-BAA7-D591-3C94E165E0E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall_Piece15";
	rename -uid "D8A81051-4B15-85E0-8C78-E38D6A8F9236";
	setAttr ".t" -type "double3" -1.416280593874595 0 2.666584378514397 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece15Shape" -p "Wall_Piece15";
	rename -uid "7460B7B2-43DF-7593-E309-04A6C9826066";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece16";
	rename -uid "88E06933-4488-8359-D7EB-E590F1CFB02D";
	setAttr ".t" -type "double3" -1.416280593874595 0 4.6660600924241997 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece16Shape" -p "Wall_Piece16";
	rename -uid "12652544-41A8-B9F4-E29C-2AA9E60BEADC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece17";
	rename -uid "50316D13-4EB5-AE99-0B9B-4E8B302FF9B8";
	setAttr ".t" -type "double3" -1.416280593874595 0 6.6632848763925043 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece17Shape" -p "Wall_Piece17";
	rename -uid "C2458BB8-4D62-0C74-FA4D-6A9BF7CA67ED";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece18";
	rename -uid "648115E5-4D8E-DA8B-179F-30BC9684A61C";
	setAttr ".t" -type "double3" -1.416280593874595 0 8.6625015892069861 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode mesh -n "Wall_Piece18Shape" -p "Wall_Piece18";
	rename -uid "5CC877D1-411F-340E-6DE5-329A96AAA446";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece19";
	rename -uid "BBEFCD1E-4FF2-281F-7CE6-649F37F75437";
	setAttr ".t" -type "double3" -4 1.9778977989979876 2 ;
createNode mesh -n "Wall_Piece19Shape" -p "Wall_Piece19";
	rename -uid "9DD8E6A1-4E33-152D-5B6A-D7B1F8C1379B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece20";
	rename -uid "C7773887-43C5-CAFA-CABB-89B82F0347DA";
	setAttr ".t" -type "double3" -2 1.9778977989979876 2 ;
createNode mesh -n "Wall_Piece20Shape" -p "Wall_Piece20";
	rename -uid "8697B92C-4DC2-2B6C-C2E2-24B20B1F70E4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece5";
	rename -uid "7834B258-4E13-86C5-E209-728D337953EE";
	setAttr ".t" -type "double3" -6 1.9778977989979876 4 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Outside_Diagonal_Piece5Shape" -p "Outside_Diagonal_Piece5";
	rename -uid "AD032A49-47D1-79AD-4D92-3EBB4E502ACB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece21";
	rename -uid "929088C7-4F9F-6729-5946-94975D9C4B24";
	setAttr ".t" -type "double3" -8 1.9778977989979876 4 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece21Shape" -p "Wall_Piece21";
	rename -uid "9C5772A9-444B-E48C-6980-49BFE49D94B0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece22";
	rename -uid "615829EE-4792-B809-A1EC-6494DC0725E8";
	setAttr ".t" -type "double3" -8 1.9778977989979876 6 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece22Shape" -p "Wall_Piece22";
	rename -uid "6AE16AE3-4426-EDBC-AB0F-C893E3F3BF4C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Diagonal_Piece6";
	rename -uid "7DA10157-4F91-2A96-FB91-89AD767EA35F";
	setAttr ".t" -type "double3" -6 1.9778977989979876 6 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Outside_Diagonal_Piece6Shape" -p "Outside_Diagonal_Piece6";
	rename -uid "65B2680A-4127-7DD5-71B6-4DA02538E2AE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.59722221 0.44444442
		 0.59722221 0.6388889 0.54166663 0.75 0.54166663 0.5 0.65277779 0.38888887 0.65277779
		 0.52777779 0.70833337 0.33333331 0.70833337 0.41666669;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 1 -2.33333302 1 -1 -2.33333302 2.33333325 1 -1
		 2.33333325 -1 -1 2.029689312 1 -1.40878248 2.029689312 -1 -1.40878248 1.41622591 1 -2.022245884
		 1.41622591 -1 -2.022245884;
	setAttr -s 10 ".ed[0:9]"  1 0 0 2 3 0 1 7 0 0 6 0 4 2 0 5 3 0 4 5 1
		 6 4 0 7 5 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 6 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 9 8 -7 -8
		mu 0 4 4 5 1 0
		f 4 -1 2 -10 -4
		mu 0 4 6 7 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece23";
	rename -uid "8DBEA762-4FBE-67D7-0D39-488AE2DBC1FE";
	setAttr ".t" -type "double3" -6 1.9778977989979876 8 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece23Shape" -p "Wall_Piece23";
	rename -uid "47341A45-4B01-7FF3-B5C5-539856E0D969";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece24";
	rename -uid "682A1E8E-4562-BC29-0A50-F28B8E6CB41D";
	setAttr ".t" -type "double3" -4 1.9778977989979876 8 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece24Shape" -p "Wall_Piece24";
	rename -uid "4F73F15D-409E-20E6-D78A-15BE94878935";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece25";
	rename -uid "3ECAF428-4932-6E2E-9C89-D4AD895A3570";
	setAttr ".t" -type "double3" -2 1.9778977989979876 8 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece25Shape" -p "Wall_Piece25";
	rename -uid "6EF7F031-4F37-EA34-F813-7DB3E6579CAB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece26";
	rename -uid "F630BFFA-41DC-0F16-A490-28AD37C8D732";
	setAttr ".t" -type "double3" -5.9993539774785933 1.9778977989979876 2 ;
createNode mesh -n "Wall_Piece26Shape" -p "Wall_Piece26";
	rename -uid "71E5E65D-446A-EBB2-67E8-A5937F11B84C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "EF0D966F-4160-4AB2-A4A4-8784B84037D4";
	setAttr ".t" -type "double3" -4.7702465434324637 0.0074397029934872294 2.5267005546521935 ;
	setAttr ".s" -type "double3" 1.5156539947041239 0.077055730189593399 1.5156539947041239 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "870D891D-4353-795B-B184-C7AEC546B3D5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.20833334 0.25 0.375 0.41666666 0.20833334 0 0.375
		 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.41666666 0.79166669 0.25 0.29166669
		 0.25 0.375 0.33333331 0.29166669 0 0.375 0.91666669 0.625 0.91666669 0.70833337 0
		 0.625 0.33333331 0.70833337 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337
		 0.54166663 0.91666675 0.54166663 0 0.54166663 1 0.54166663 0.25 0.54166663 0.33333331
		 0.54166663 0.41666666 0.45833331 0.5 0.45833331 0.75 0.45833331 0.83333337 0.45833331
		 0.91666675 0.45833331 0 0.45833331 1 0.45833331 0.25 0.45833331 0.33333331 0.45833331
		 0.41666666 0.375 0.25 0.45833331 0.25 0.45833331 0.33333331 0.375 0.33333331 0.375
		 0.41666666 0.45833331 0.41666666 0.45833331 0.5 0.375 0.5 0.54166663 0.33333331 0.54166663
		 0.25 0.625 0.25 0.625 0.33333331 0.54166663 0.5 0.54166663 0.41666666 0.625 0.41666666
		 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  -0.5 -0.50000006 0.50000024 0.5 -0.50000006 0.50000024
		 -0.5 0.49999994 0.50000024 0.5 0.49999994 0.50000024 -0.5 0.49999994 -0.49999976
		 0.5 0.49999994 -0.49999976 -0.5 -0.50000006 -0.49999976 0.5 -0.50000006 -0.49999976
		 -0.5 0.49999994 -0.42442894 -0.5 -0.50000006 -0.42442894 0.5 -0.50000006 -0.42442894
		 0.5 0.49999994 -0.42442894 -0.5 0.49999994 0.42442966 -0.5 -0.50000006 0.42442966
		 0.5 -0.50000006 0.42442966 0.5 0.49999994 0.42442966 0.42928028 0.49999994 -0.49999976
		 0.42928028 -0.50000006 -0.49999976 0.42928028 -0.50000006 -0.42442894 0.42928028 -0.50000006 0.42442966
		 0.42928028 -0.50000006 0.50000024 0.42928028 0.49999994 0.50000024 0.42928028 0.49999994 0.42442966
		 0.42928028 0.49999994 -0.42442894 -0.42928028 0.49999994 -0.49999976 -0.42928028 -0.50000006 -0.49999976
		 -0.42928028 -0.50000006 -0.42442894 -0.42928028 -0.50000006 0.42442966 -0.42928028 -0.50000006 0.50000024
		 -0.42928028 0.49999994 0.50000024 -0.42928028 0.49999994 0.42442966 -0.42928028 0.49999994 -0.42442894
		 -0.5 46.88708115 0.50000024 -0.42928028 46.88708115 0.50000024 -0.42928028 46.88708115 0.42442966
		 -0.5 46.88708115 0.42442966 -0.42928028 46.88708115 -0.42442894 -0.5 46.88708115 -0.42442894
		 -0.42928028 46.88708115 -0.49999976 -0.5 46.88708115 -0.49999976 0.42928028 46.88708115 0.50000024
		 0.42928028 46.88708115 0.42442966 0.5 46.88708115 0.50000024 0.5 46.88708115 0.42442966
		 0.42928028 46.88708115 -0.42442894 0.42928028 46.88708115 -0.49999976 0.5 46.88708115 -0.42442894
		 0.5 46.88708115 -0.49999976;
	setAttr -s 92 ".ed[0:91]"  0 28 0 2 29 1 4 24 1 6 25 0 0 2 0 1 3 0 2 12 1
		 3 15 1 4 6 0 5 7 0 6 9 0 7 10 0 8 4 1 9 13 0 8 9 1 10 14 0 9 26 1 11 5 1 10 11 1
		 11 23 0 12 8 0 13 0 0 12 13 1 14 1 0 13 27 1 15 11 0 14 15 1 15 22 0 16 5 1 17 7 0
		 16 17 1 18 10 1 17 18 1 19 14 1 18 19 1 20 1 0 19 20 1 21 3 1 20 21 1 22 30 1 21 22 0
		 23 31 1 22 23 1 23 16 0 24 16 0 25 17 0 24 25 1 26 18 1 25 26 1 27 19 1 26 27 1 28 20 0
		 27 28 1 29 21 0 28 29 1 30 12 0 29 30 0 31 8 0 30 31 1 31 24 0 2 32 0 29 33 0 32 33 0
		 30 34 0 33 34 0 12 35 0 34 35 0 32 35 0 31 36 0 8 37 0 36 37 0 24 38 0 36 38 0 4 39 0
		 39 38 0 37 39 0 21 40 0 22 41 0 40 41 0 3 42 0 40 42 0 15 43 0 42 43 0 43 41 0 23 44 0
		 16 45 0 44 45 0 11 46 0 46 44 0 5 47 0 46 47 0 45 47 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 54 -2 -5
		mu 0 4 0 43 45 2
		f 4 2 46 -4 -9
		mu 0 4 4 39 40 6
		f 4 24 52 -1 -22
		mu 0 4 25 42 44 8
		f 4 -24 26 -8 -6
		mu 0 4 1 27 29 3
		f 4 21 4 6 22
		mu 0 4 24 0 2 22
		f 4 10 -15 12 8
		mu 0 4 12 16 14 13
		f 4 3 48 -17 -11
		mu 0 4 6 40 41 17
		f 4 -19 -12 -10 -18
		mu 0 4 21 19 10 11
		f 4 13 -23 20 14
		mu 0 4 16 24 22 14
		f 4 16 50 -25 -14
		mu 0 4 17 41 42 25
		f 4 -27 -16 18 -26
		mu 0 4 29 27 19 21
		f 4 -56 58 57 -21
		mu 0 4 23 46 47 15
		f 4 28 9 -30 -31
		mu 0 4 30 5 7 31
		f 4 -33 29 11 -32
		mu 0 4 32 31 7 18
		f 4 -35 31 15 -34
		mu 0 4 33 32 18 26
		f 4 -37 33 23 -36
		mu 0 4 35 33 26 9
		f 4 -39 35 5 -38
		mu 0 4 36 34 1 3
		f 4 -43 -28 25 19
		mu 0 4 38 37 28 20
		f 4 44 30 -46 -47
		mu 0 4 39 30 31 40
		f 4 -49 45 32 -48
		mu 0 4 41 40 31 32
		f 4 -51 47 34 -50
		mu 0 4 42 41 32 33
		f 4 -53 49 36 -52
		mu 0 4 44 42 33 35
		f 4 -55 51 38 -54
		mu 0 4 45 43 34 36
		f 4 -57 53 40 39
		mu 0 4 46 45 36 37
		f 4 -59 -40 42 41
		mu 0 4 47 46 37 38
		f 4 -60 -42 43 -45
		mu 0 4 39 47 38 30
		f 4 1 61 -63 -61
		mu 0 4 2 45 49 48
		f 4 56 63 -65 -62
		mu 0 4 45 46 50 49
		f 4 55 65 -67 -64
		mu 0 4 46 23 51 50
		f 4 -7 60 67 -66
		mu 0 4 23 2 48 51
		f 4 -58 68 70 -70
		mu 0 4 15 47 53 52
		f 4 59 71 -73 -69
		mu 0 4 47 39 54 53
		f 4 -3 73 74 -72
		mu 0 4 39 4 55 54
		f 4 -13 69 75 -74
		mu 0 4 4 15 52 55
		f 4 -41 76 78 -78
		mu 0 4 37 36 57 56
		f 4 37 79 -81 -77
		mu 0 4 36 3 58 57
		f 4 7 81 -83 -80
		mu 0 4 3 28 59 58
		f 4 27 77 -84 -82
		mu 0 4 28 37 56 59
		f 4 -44 84 86 -86
		mu 0 4 30 38 61 60
		f 4 -20 87 88 -85
		mu 0 4 38 20 62 61
		f 4 17 89 -91 -88
		mu 0 4 20 5 63 62
		f 4 -29 85 91 -90
		mu 0 4 5 30 60 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "8F2DC72A-4D66-0456-F93C-4D8996E7CC35";
	setAttr ".t" -type "double3" -2.9761688510841191 0.50918750783219668 2.741686545767914 ;
	setAttr ".s" -type "double3" 1.5156539947041239 0.077055730189593399 1.5156539947041239 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "B0CE08BF-4B02-5AAF-F55A-D5BDC1CD9FFF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.20833334 0.25 0.375 0.41666666 0.20833334 0 0.375
		 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.41666666 0.79166669 0.25 0.29166669
		 0.25 0.375 0.33333331 0.29166669 0 0.375 0.91666669 0.625 0.91666669 0.70833337 0
		 0.625 0.33333331 0.70833337 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337
		 0.54166663 0.91666675 0.54166663 0 0.54166663 1 0.54166663 0.25 0.54166663 0.33333331
		 0.54166663 0.41666666 0.45833331 0.5 0.45833331 0.75 0.45833331 0.83333337 0.45833331
		 0.91666675 0.45833331 0 0.45833331 1 0.45833331 0.25 0.45833331 0.33333331 0.45833331
		 0.41666666 0.375 0.25 0.45833331 0.25 0.45833331 0.33333331 0.375 0.33333331 0.375
		 0.41666666 0.45833331 0.41666666 0.45833331 0.5 0.375 0.5 0.54166663 0.33333331 0.54166663
		 0.25 0.625 0.25 0.625 0.33333331 0.54166663 0.5 0.54166663 0.41666666 0.625 0.41666666
		 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  -0.5 -0.50000006 0.50000024 0.5 -0.50000006 0.50000024
		 -0.5 0.49999994 0.50000024 0.5 0.49999994 0.50000024 -0.5 0.49999994 -0.49999976
		 0.5 0.49999994 -0.49999976 -0.5 -0.50000006 -0.49999976 0.5 -0.50000006 -0.49999976
		 -0.5 0.49999994 -0.42442894 -0.5 -0.50000006 -0.42442894 0.5 -0.50000006 -0.42442894
		 0.5 0.49999994 -0.42442894 -0.5 0.49999994 0.42442966 -0.5 -0.50000006 0.42442966
		 0.5 -0.50000006 0.42442966 0.5 0.49999994 0.42442966 0.42928028 0.49999994 -0.49999976
		 0.42928028 -0.50000006 -0.49999976 0.42928028 -0.50000006 -0.42442894 0.42928028 -0.50000006 0.42442966
		 0.42928028 -0.50000006 0.50000024 0.42928028 0.49999994 0.50000024 0.42928028 0.49999994 0.42442966
		 0.42928028 0.49999994 -0.42442894 -0.42928028 0.49999994 -0.49999976 -0.42928028 -0.50000006 -0.49999976
		 -0.42928028 -0.50000006 -0.42442894 -0.42928028 -0.50000006 0.42442966 -0.42928028 -0.50000006 0.50000024
		 -0.42928028 0.49999994 0.50000024 -0.42928028 0.49999994 0.42442966 -0.42928028 0.49999994 -0.42442894
		 -0.5 46.88708115 0.50000024 -0.42928028 46.88708115 0.50000024 -0.42928028 46.88708115 0.42442966
		 -0.5 46.88708115 0.42442966 -0.42928028 46.88708115 -0.42442894 -0.5 46.88708115 -0.42442894
		 -0.42928028 46.88708115 -0.49999976 -0.5 46.88708115 -0.49999976 0.42928028 46.88708115 0.50000024
		 0.42928028 46.88708115 0.42442966 0.5 46.88708115 0.50000024 0.5 46.88708115 0.42442966
		 0.42928028 46.88708115 -0.42442894 0.42928028 46.88708115 -0.49999976 0.5 46.88708115 -0.42442894
		 0.5 46.88708115 -0.49999976;
	setAttr -s 92 ".ed[0:91]"  0 28 0 2 29 1 4 24 1 6 25 0 0 2 0 1 3 0 2 12 1
		 3 15 1 4 6 0 5 7 0 6 9 0 7 10 0 8 4 1 9 13 0 8 9 1 10 14 0 9 26 1 11 5 1 10 11 1
		 11 23 0 12 8 0 13 0 0 12 13 1 14 1 0 13 27 1 15 11 0 14 15 1 15 22 0 16 5 1 17 7 0
		 16 17 1 18 10 1 17 18 1 19 14 1 18 19 1 20 1 0 19 20 1 21 3 1 20 21 1 22 30 1 21 22 0
		 23 31 1 22 23 1 23 16 0 24 16 0 25 17 0 24 25 1 26 18 1 25 26 1 27 19 1 26 27 1 28 20 0
		 27 28 1 29 21 0 28 29 1 30 12 0 29 30 0 31 8 0 30 31 1 31 24 0 2 32 0 29 33 0 32 33 0
		 30 34 0 33 34 0 12 35 0 34 35 0 32 35 0 31 36 0 8 37 0 36 37 0 24 38 0 36 38 0 4 39 0
		 39 38 0 37 39 0 21 40 0 22 41 0 40 41 0 3 42 0 40 42 0 15 43 0 42 43 0 43 41 0 23 44 0
		 16 45 0 44 45 0 11 46 0 46 44 0 5 47 0 46 47 0 45 47 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 54 -2 -5
		mu 0 4 0 43 45 2
		f 4 2 46 -4 -9
		mu 0 4 4 39 40 6
		f 4 24 52 -1 -22
		mu 0 4 25 42 44 8
		f 4 -24 26 -8 -6
		mu 0 4 1 27 29 3
		f 4 21 4 6 22
		mu 0 4 24 0 2 22
		f 4 10 -15 12 8
		mu 0 4 12 16 14 13
		f 4 3 48 -17 -11
		mu 0 4 6 40 41 17
		f 4 -19 -12 -10 -18
		mu 0 4 21 19 10 11
		f 4 13 -23 20 14
		mu 0 4 16 24 22 14
		f 4 16 50 -25 -14
		mu 0 4 17 41 42 25
		f 4 -27 -16 18 -26
		mu 0 4 29 27 19 21
		f 4 -56 58 57 -21
		mu 0 4 23 46 47 15
		f 4 28 9 -30 -31
		mu 0 4 30 5 7 31
		f 4 -33 29 11 -32
		mu 0 4 32 31 7 18
		f 4 -35 31 15 -34
		mu 0 4 33 32 18 26
		f 4 -37 33 23 -36
		mu 0 4 35 33 26 9
		f 4 -39 35 5 -38
		mu 0 4 36 34 1 3
		f 4 -43 -28 25 19
		mu 0 4 38 37 28 20
		f 4 44 30 -46 -47
		mu 0 4 39 30 31 40
		f 4 -49 45 32 -48
		mu 0 4 41 40 31 32
		f 4 -51 47 34 -50
		mu 0 4 42 41 32 33
		f 4 -53 49 36 -52
		mu 0 4 44 42 33 35
		f 4 -55 51 38 -54
		mu 0 4 45 43 34 36
		f 4 -57 53 40 39
		mu 0 4 46 45 36 37
		f 4 -59 -40 42 41
		mu 0 4 47 46 37 38
		f 4 -60 -42 43 -45
		mu 0 4 39 47 38 30
		f 4 1 61 -63 -61
		mu 0 4 2 45 49 48
		f 4 56 63 -65 -62
		mu 0 4 45 46 50 49
		f 4 55 65 -67 -64
		mu 0 4 46 23 51 50
		f 4 -7 60 67 -66
		mu 0 4 23 2 48 51
		f 4 -58 68 70 -70
		mu 0 4 15 47 53 52
		f 4 59 71 -73 -69
		mu 0 4 47 39 54 53
		f 4 -3 73 74 -72
		mu 0 4 39 4 55 54
		f 4 -13 69 75 -74
		mu 0 4 4 15 52 55
		f 4 -41 76 78 -78
		mu 0 4 37 36 57 56
		f 4 37 79 -81 -77
		mu 0 4 36 3 58 57
		f 4 7 81 -83 -80
		mu 0 4 3 28 59 58
		f 4 27 77 -84 -82
		mu 0 4 28 37 56 59
		f 4 -44 84 86 -86
		mu 0 4 30 38 61 60
		f 4 -20 87 88 -85
		mu 0 4 38 20 62 61
		f 4 17 89 -91 -88
		mu 0 4 20 5 63 62
		f 4 -29 85 91 -90
		mu 0 4 5 30 60 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece27";
	rename -uid "24611C30-4562-A5D5-E6ED-5EA07625966F";
	setAttr ".t" -type "double3" -6.6636222505812954 0 9.3157967904409134 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "Wall_Piece27Shape" -p "Wall_Piece27";
	rename -uid "7F39803C-4B80-082A-E39E-CCBE6B73DC54";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Piece28";
	rename -uid "73065328-42E8-480D-DF7E-9F8777E9F58D";
	setAttr ".t" -type "double3" -6.0050268173217773 0 9.8933846017033797 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode mesh -n "Wall_Piece28Shape" -p "Wall_Piece28";
	rename -uid "C5898401-4C51-7B12-D3C6-7883E80E9C98";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.29166669 0.41666669
		 0.70833337 0.41666669 0.70833337 0.33333331 0.29166669 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 1 -0.33333325 -1 1 -0.33333325 -1 -1 -0.33333325
		 1 -1 -0.33333325;
	setAttr -s 4 ".ed[0:3]"  1 2 0 3 0 0 2 3 0 0 1 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 2 1 3 0
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "170AEB35-4D1D-EE84-A7CE-03B9F2BC23CE";
	setAttr ".t" -type "double3" -5.2449000347727548 0.011942089357009744 8.3778551312574692 ;
	setAttr ".s" -type "double3" 0.029571953990619765 1.024022922708802 0.029571953990619765 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "867E0459-4CFF-31F4-58E8-76856D5F45AE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "8D1804CC-4D88-2EC6-FEE1-96AAE07138A2";
	setAttr ".t" -type "double3" -5.637617025427252 0.011942089357009744 8.3778551312574692 ;
	setAttr ".s" -type "double3" 0.029571953990619765 1.024022922708802 0.029571953990619765 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "A15EA042-466A-91FA-1743-5B8A68928BA8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "8597E90F-45C1-9319-7559-F5884063D1C7";
	setAttr ".t" -type "double3" -6.0637893470976163 0.011942089357009744 8.3778551312574692 ;
	setAttr ".s" -type "double3" 0.029571953990619765 1.024022922708802 0.029571953990619765 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "4BA478F1-4118-90DB-E121-BF8EACF7DF0A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "20611115-4B4D-E894-8FB3-AFA3E6EC247C";
	setAttr ".t" -type "double3" -6.442699957090027 0.011942089357009744 8.3778551312574692 ;
	setAttr ".s" -type "double3" 0.029571953990619765 1.024022922708802 0.029571953990619765 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "52FB71FF-4E7B-18FD-4768-06BEFC24966E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "9A44408C-4302-D390-F691-39941DB612B8";
	setAttr ".t" -type "double3" -6.8063577618945557 0.011942089357009744 8.3778551312574692 ;
	setAttr ".s" -type "double3" 0.029571953990619765 1.024022922708802 0.029571953990619765 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "E31CC860-4105-F0CD-CE96-C5AF0FF21CD1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "8378B936-460E-6666-E7DF-B3B6424CE2B1";
	setAttr ".t" -type "double3" -4.4882115424719204 -0.69890871194610837 4.0290013484108087 ;
	setAttr ".s" -type "double3" 0.59593104675035358 0.59593104675035358 0.59593104675035358 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "2E4B848F-4546-1332-7F57-85A1F9A923F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 185 ".uvst[0].uvsp[0:184]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5 1 0.5 0.25 0.625 0.625 0.875
		 0.125 0.5 0.625 0.125 0.125 0.375 0.625 0.375 0.125 0.5 0.125 0.625 0.125 0.625 0.5625
		 0.875 0.1875 0.5 0.5625 0.125 0.1875 0.375 0.5625 0.375 0.1875 0.5 0.1875 0.625 0.1875
		 0.625 0.875 0.75 0 0.5 0.875 0.25 0 0.375 0.875 0.25 0.125 0.25 0.1875 0.25 0.25
		 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.25 0.75 0.1875 0.75 0.125 0.625 0.6875 0.875
		 0.0625 0.5 0.6875 0.125 0.0625 0.375 0.6875 0.25 0.0625 0.375 0.0625 0.5 0.0625 0.625
		 0.0625 0.75 0.0625 0.5625 0.625 0.5625 0.5625 0.5625 0.5 0.5625 0.375 0.5625 0.25
		 0.5625 0.1875 0.5625 0.125 0.5625 0.0625 0.5625 0 0.5625 1 0.5625 0.875 0.5625 0.75
		 0.5625 0.6875 0.4375 0.625 0.4375 0.5625 0.4375 0.5 0.4375 0.375 0.4375 0.25 0.4375
		 0.1875 0.4375 0.125 0.4375 0.0625 0.4375 0 0.4375 1 0.4375 0.875 0.4375 0.75 0.4375
		 0.6875 0.53125 0.625 0.53125 0.5625 0.53125 0.5 0.53125 0.375 0.53125 0.25 0.53125
		 0.1875 0.53125 0.125 0.53125 0.0625 0.53125 0 0.53125 1 0.53125 0.875 0.53125 0.75
		 0.53125 0.6875 0.46875 0.625 0.46875 0.5625 0.46875 0.5 0.46875 0.375 0.46875 0.25
		 0.46875 0.1875 0.46875 0.125 0.46875 0.0625 0.46875 0 0.46875 1 0.46875 0.875 0.46875
		 0.75 0.46875 0.6875 0.53125 0.5625 0.5625 0.5625 0.5625 0.625 0.53125 0.625 0.5625
		 0.125 0.5625 0.1875 0.53125 0.1875 0.53125 0.125 0.4375 0.5625 0.46875 0.5625 0.46875
		 0.625 0.4375 0.625 0.4375 0.125 0.46875 0.125 0.46875 0.1875 0.4375 0.1875 0.453125
		 0.1875 0.453125 0.25 0.453125 0.375 0.453125 0.5 0.453125 0.5625 0.453125 0.5625
		 0.453125 0.625 0.453125 0.625 0.453125 0.6875 0.453125 0.75 0.453125 0.875 0.453125
		 0 0.453125 1 0.453125 0.0625 0.453125 0.125 0.453125 0.125 0.453125 0.1875 0.546875
		 0.1875 0.546875 0.25 0.546875 0.375 0.546875 0.5 0.546875 0.5625 0.546875 0.5625
		 0.546875 0.625 0.546875 0.625 0.546875 0.6875 0.546875 0.75 0.546875 0.875 0.546875
		 0 0.546875 1 0.546875 0.0625 0.546875 0.125 0.546875 0.125 0.546875 0.1875 0.53125
		 0.5625 0.546875 0.5625 0.546875 0.625 0.53125 0.625 0.546875 0.1875 0.53125 0.1875
		 0.53125 0.125 0.546875 0.125 0.4375 0.5625 0.453125 0.5625 0.453125 0.625 0.4375
		 0.625 0.4375 0.125 0.453125 0.125 0.453125 0.1875 0.4375 0.1875 0.46875 0.5625 0.46875
		 0.625 0.46875 0.125 0.46875 0.1875 0.5625 0.5625 0.5625 0.625 0.5625 0.125 0.5625
		 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0 0.5 -0.5 0 -0.5 -0.5 0 -0.5 0.5
		 0 0.5 0.5 0.5 0 -0.5 0 0 -0.5 -0.5 0 -0.5 -0.5 0 0.5 0 0 0.5 0.5 0 0.5 0.5 0.25 -0.5
		 0 0.25 -0.5 -0.5 0.25 -0.5 -0.5 0.25 0.5 0 0.25 0.5 0.5 0.25 0.5 0.5 -0.5 0 0 -0.5 0
		 -0.5 -0.5 0 -0.5 0 0 -0.5 0.25 0 -0.5 0.5 0 0 0.5 0 0.5 0.5 0 0.5 0.25 0 0.5 0 0
		 0.5 -0.25 -0.5 0 -0.25 -0.5 -0.5 -0.25 -0.5 -0.5 -0.25 0 -0.5 -0.25 0.5 0 -0.25 0.5
		 0.5 -0.25 0.5 0.5 -0.25 0 0.44802961 0.058697782 -0.5 0.44802961 0.19130222 -0.5
		 0.36632055 0.5 -0.5 0.36632055 0.5 0 0.36632055 0.5 0.5 0.44802961 0.19130222 0.5
		 0.44802961 0.058697782 0.5 0.36632055 -0.25 0.5 0.36632055 -0.5 0.5 0.36632055 -0.5 0
		 0.36632055 -0.5 -0.5 0.36632055 -0.25 -0.5 -0.44802961 0.058697782 -0.5 -0.44802961 0.19130222 -0.5
		 -0.36632055 0.5 -0.5 -0.36632055 0.5 0 -0.36632055 0.5 0.5 -0.44802961 0.19130222 0.5
		 -0.44802961 0.058697782 0.5 -0.36632055 -0.25 0.5 -0.36632055 -0.5 0.5 -0.36632055 -0.5 0
		 -0.36632055 -0.5 -0.5 -0.36632055 -0.25 -0.5 0.15288167 0.058697782 -0.5 0.15288167 0.19130222 -0.5
		 0.125 0.5 -0.5 0.125 0.5 0 0.125 0.5 0.5 0.15288167 0.19130222 0.5 0.15288167 0.058697782 0.5
		 0.125 -0.25 0.5 0.125 -0.5 0.5 0.125 -0.5 0 0.125 -0.5 -0.5 0.125 -0.25 -0.5 -0.15288167 0.058697782 -0.5
		 -0.15288167 0.19130222 -0.5 -0.125 0.5 -0.5 -0.125 0.5 0 -0.125 0.5 0.5 -0.15288167 0.19130222 0.5
		 -0.15288167 0.058697782 0.5 -0.125 -0.25 0.5 -0.125 -0.5 0.5 -0.125 -0.5 0 -0.125 -0.5 -0.5
		 -0.125 -0.25 -0.5 0.44802961 0.19130222 -0.36306691 0.15288167 0.19130222 -0.36306691
		 0.44802961 0.058697782 -0.36306691 0.15288167 0.058697782 -0.36306691 0.44802961 0.19130222 0.36306691
		 0.44802961 0.058697782 0.36306691 0.15288167 0.19130222 0.36306691 0.15288167 0.058697782 0.36306691
		 -0.15288167 0.19130222 -0.36306691 -0.44802961 0.19130222 -0.36306691 -0.15288167 0.058697782 -0.36306691
		 -0.44802961 0.058697782 -0.36306691 -0.44802961 0.058697782 0.36306691 -0.15288167 0.058697782 0.36306691
		 -0.15288167 0.19130222 0.36306691 -0.44802961 0.19130222 0.36306691 -0.24566028 0.25 0.5
		 -0.24566028 0.5 0.5 -0.24566028 0.5 0 -0.24566028 0.5 -0.5 -0.24566028 0.25 -0.5
		 -0.24566028 0.25 -0.36306691 -0.24566028 0 -0.36306691 -0.24566028 0 -0.5 -0.24566028 -0.25 -0.5
		 -0.24566028 -0.5 -0.5 -0.24566028 -0.5 0 -0.24566028 -0.5 0.5 -0.24566028 -0.25 0.5
		 -0.24566028 0 0.5 -0.24566028 0 0.36306691 -0.24566028 0.25 0.36306691 0.24566028 0.25 0.5
		 0.24566028 0.5 0.5 0.24566028 0.5 0 0.24566028 0.5 -0.5 0.24566028 0.25 -0.5 0.24566028 0.25 -0.36306691
		 0.24566028 0 -0.36306691 0.24566028 0 -0.5 0.24566028 -0.25 -0.5 0.24566028 -0.5 -0.5
		 0.24566028 -0.5 0 0.24566028 -0.5 0.5 0.24566028 -0.25 0.5 0.24566028 0 0.5 0.24566028 0 0.36306691
		 0.24566028 0.25 0.36306691 0.25465557 0.20416665 -0.50418895 0.17320715 0.1669914 -0.50418895
		 0.25465557 0.045833334 -0.50418895 0.17320715 0.083008595 -0.50418895 0.40551141 0.1669914 -0.50418895
		 0.40551141 0.083008595 -0.50418895 0.25465557 0.045833334 0.50418895 0.25465557 0.20416665 0.50418895
		 0.17320715 0.1669914 0.50418895 0.17320715 0.083008595 0.50418895 0.40551147 0.1669914 0.5041889
		 0.40551147 0.083008595 0.5041889 -0.25465557 0.20416665 -0.50418895 -0.40551141 0.1669914 -0.50418895
		 -0.25465557 0.045833334 -0.50418895 -0.40551141 0.083008595 -0.50418895 -0.17320715 0.1669914 -0.50418895
		 -0.17320715 0.083008595 -0.50418895 -0.40551141 0.083008595 0.50418895 -0.25465554 0.045833331 0.50418895
		 -0.25465554 0.20416665 0.50418895 -0.40551141 0.1669914 0.50418895 -0.1732071 0.083008595 0.5041889
		 -0.1732071 0.1669914 0.5041889;
	setAttr -s 320 ".ed";
	setAttr ".ed[0:165]"  0 62 0 2 58 0 4 56 0 6 64 0 0 38 0 1 40 0 2 29 0 3 31 0
		 4 20 0 5 18 0 6 26 0 7 24 0 8 68 0 9 76 0 8 19 1 10 74 0 9 25 1 11 70 0 10 39 1 11 30 1
		 12 34 0 13 35 1 12 42 1 14 36 0 13 78 1 15 21 0 14 27 1 16 22 1 15 60 1 17 23 0 16 72 1
		 17 33 1 18 12 0 19 13 1 18 43 1 20 14 0 19 79 1 21 2 0 20 28 1 22 11 1 21 59 1 23 3 0
		 22 71 1 23 32 1 24 1 0 25 10 1 24 51 1 26 0 0 25 87 1 27 15 1 26 37 1 28 21 1 27 28 1
		 29 4 0 28 29 1 30 8 1 29 57 1 31 5 0 30 69 1 32 18 1 31 32 1 33 12 1 32 33 1 33 41 1
		 34 7 0 35 9 1 34 53 1 36 6 0 35 89 1 37 27 1 36 37 1 38 15 0 37 38 1 39 16 1 38 61 1
		 40 17 0 39 73 1 41 24 1 40 41 1 41 34 1 42 129 0 43 126 0 42 43 0 44 5 0 43 44 1
		 45 31 1 44 45 1 46 3 0 45 46 1 47 23 1 46 47 1 48 17 1 47 48 0 49 40 1 48 49 1 50 1 0
		 49 50 1 51 132 1 50 51 1 52 7 0 51 52 1 53 130 1 52 53 1 53 42 1 54 14 1 55 20 1
		 54 55 0 56 109 0 55 56 1 57 108 1 56 57 1 58 107 0 57 58 1 59 106 0 58 59 1 60 119 0
		 59 60 0 61 118 1 60 61 1 62 117 0 61 62 1 63 26 1 62 63 1 64 115 0 63 64 1 65 36 1
		 64 65 1 65 54 1 66 13 1 67 19 1 66 67 0 68 125 0 67 68 1 69 124 1 68 69 1 70 123 0
		 69 70 1 71 122 0 70 71 1 72 135 0 71 72 0 73 134 1 72 73 1 74 133 0 73 74 1 75 25 1
		 74 75 1 76 131 0 75 76 1 77 35 1 76 77 1 77 66 1 78 113 0 79 110 0 78 79 0 80 8 0
		 79 80 1 81 30 1 80 81 1 82 11 0 81 82 1 83 22 1 82 83 1 84 16 1 83 84 0 85 39 1;
	setAttr ".ed[166:319]" 84 85 1 86 10 0 85 86 1 87 116 1 86 87 1 88 9 0 87 88 1
		 89 114 1 88 89 1 89 78 1 43 90 0 67 91 0 90 127 0 42 92 0 92 90 0 66 93 0 92 128 0
		 93 91 0 47 94 0 48 95 0 94 95 0 71 96 0 96 137 0 72 97 0 96 97 0 97 136 0 79 98 0
		 55 99 0 98 111 0 78 100 0 100 98 0 54 101 0 100 112 0 101 99 0 60 102 0 84 103 0
		 102 120 0 83 104 0 104 103 0 59 105 0 105 121 0 105 102 0 106 83 0 107 82 0 106 107 1
		 108 81 1 107 108 1 109 80 0 108 109 1 110 55 0 109 110 1 111 99 0 110 111 1 112 101 0
		 113 54 0 112 113 1 114 65 1 113 114 1 115 88 0 114 115 1 116 63 1 115 116 1 117 86 0
		 116 117 1 118 85 1 117 118 1 119 84 0 118 119 1 120 103 0 119 120 1 121 104 0 121 106 1
		 122 47 0 123 46 0 122 123 1 124 45 1 123 124 1 125 44 0 124 125 1 126 67 0 125 126 1
		 127 91 0 126 127 1 128 93 0 129 66 0 128 129 1 130 77 1 129 130 1 131 52 0 130 131 1
		 132 75 1 131 132 1 133 50 0 132 133 1 134 49 1 133 134 1 135 48 0 134 135 1 136 95 0
		 135 136 1 137 94 0 137 122 1 127 138 0 91 139 0 138 139 0 128 140 0 138 140 1 93 141 0
		 140 141 0 141 139 0 90 142 0 142 138 0 92 143 0 143 142 0 143 140 0 136 144 0 137 145 0
		 144 145 1 96 146 0 146 145 0 97 147 0 146 147 0 147 144 0 94 148 0 95 149 0 148 149 0
		 145 148 0 144 149 0 111 150 0 99 151 0 150 151 0 112 152 0 150 152 1 101 153 0 152 153 0
		 153 151 0 98 154 0 154 150 0 100 155 0 155 154 0 155 152 0 102 156 0 120 157 0 156 157 0
		 121 158 0 157 158 1 105 159 0 159 158 0 159 156 0 103 160 0 157 160 0 104 161 0 161 160 0
		 158 161 0;
	setAttr -s 160 -ch 640 ".fc[0:159]" -type "polyFaces" 
		f 4 161 39 -160 162
		mu 0 4 103 33 18 102
		f 4 157 55 -156 158
		mu 0 4 101 44 14 100
		f 4 155 14 36 156
		mu 0 4 100 14 29 99
		f 4 171 16 48 172
		mu 0 4 109 15 37 108
		f 4 59 -10 -58 60
		mu 0 4 47 28 11 46
		f 4 38 54 53 8
		mu 0 4 30 41 42 13
		f 4 83 9 34 84
		mu 0 4 61 5 27 60
		f 4 100 99 11 46
		mu 0 4 69 70 7 35
		f 4 90 89 41 -88
		mu 0 4 63 64 34 3
		f 4 86 85 57 -84
		mu 0 4 61 62 45 5
		f 4 103 -23 20 66
		mu 0 4 71 59 19 49
		f 4 175 -25 21 68
		mu 0 4 110 98 21 51
		f 4 70 69 -27 23
		mu 0 4 52 54 40 22
		f 4 165 73 -164 166
		mu 0 4 105 56 25 104
		f 4 -92 94 93 75
		mu 0 4 26 65 66 57
		f 4 63 79 -21 -62
		mu 0 4 48 58 50 20
		f 4 -35 32 22 82
		mu 0 4 60 27 19 59
		f 4 -37 33 24 154
		mu 0 4 99 29 21 98
		f 4 26 52 -39 35
		mu 0 4 22 40 41 30
		f 4 163 27 -162 164
		mu 0 4 104 25 33 103
		f 4 -90 92 91 29
		mu 0 4 34 64 65 26
		f 4 61 -33 -60 62
		mu 0 4 48 20 28 47
		f 4 98 -47 44 -96
		mu 0 4 68 69 35 9
		f 4 -49 45 -168 170
		mu 0 4 108 37 17 107
		f 4 -70 72 71 -50
		mu 0 4 40 54 55 24
		f 4 -53 49 25 -52
		mu 0 4 41 40 24 32
		f 4 -55 51 37 6
		mu 0 4 42 41 32 2
		f 4 159 19 -158 160
		mu 0 4 102 18 44 101
		f 4 -86 88 87 7
		mu 0 4 45 62 63 3
		f 4 43 -61 -8 -42
		mu 0 4 34 47 46 3
		f 4 31 -63 -44 -30
		mu 0 4 26 48 47 34
		f 4 78 -64 -32 -76
		mu 0 4 57 58 48 26
		f 4 -67 64 -100 102
		mu 0 4 71 49 7 70
		f 4 -69 65 -172 174
		mu 0 4 110 51 15 109
		f 4 10 50 -71 67
		mu 0 4 12 38 54 52
		f 4 -73 -51 47 4
		mu 0 4 55 54 38 0
		f 4 167 18 -166 168
		mu 0 4 106 16 56 105
		f 4 -94 96 95 5
		mu 0 4 57 66 67 1
		f 4 -45 -78 -79 -6
		mu 0 4 1 36 58 57
		f 4 -80 77 -12 -65
		mu 0 4 50 58 36 10
		f 4 -271 272 274 275
		mu 0 4 161 162 163 164
		f 4 131 246 245 132
		mu 0 4 87 147 148 86
		f 4 134 133 244 -132
		mu 0 4 87 88 146 147
		f 4 242 -134 136 135
		mu 0 4 145 146 88 89
		f 4 138 137 240 -136
		mu 0 4 89 90 144 145
		f 4 283 -286 287 288
		mu 0 4 168 165 166 167
		f 4 263 -140 142 141
		mu 0 4 157 158 91 92
		f 4 261 -142 144 143
		mu 0 4 155 157 92 93
		f 4 146 -257 259 -144
		mu 0 4 94 95 154 156
		f 4 148 147 257 256
		mu 0 4 95 96 153 154
		f 4 -253 255 -148 150
		mu 0 4 97 152 153 96
		f 4 151 -251 253 252
		mu 0 4 97 85 151 152
		f 4 -106 -107 104 -36
		mu 0 4 31 73 72 23
		f 4 2 -109 105 -9
		mu 0 4 4 74 73 31
		f 4 56 -111 -3 -54
		mu 0 4 43 75 74 4
		f 4 1 -113 -57 -7
		mu 0 4 2 76 75 43
		f 4 40 -115 -2 -38
		mu 0 4 32 77 76 2
		f 4 28 -117 -41 -26
		mu 0 4 24 78 77 32
		f 4 74 -119 -29 -72
		mu 0 4 55 79 78 24
		f 4 0 -121 -75 -5
		mu 0 4 0 80 79 55
		f 4 -122 -123 -1 -48
		mu 0 4 39 82 81 8
		f 4 3 -125 121 -11
		mu 0 4 6 83 82 39
		f 4 -126 -127 -4 -68
		mu 0 4 53 84 83 6
		f 4 -105 -128 125 -24
		mu 0 4 23 72 84 53
		f 4 -130 -131 128 -34
		mu 0 4 29 86 85 21
		f 4 12 -133 129 -15
		mu 0 4 14 87 86 29
		f 4 -56 58 -135 -13
		mu 0 4 14 44 88 87
		f 4 -137 -59 -20 17
		mu 0 4 89 88 44 18
		f 4 -40 42 -139 -18
		mu 0 4 18 33 90 89
		f 4 -141 -43 -28 30
		mu 0 4 91 90 33 25
		f 4 -143 -31 -74 76
		mu 0 4 92 91 25 56
		f 4 -145 -77 -19 15
		mu 0 4 93 92 56 16
		f 4 -46 -146 -147 -16
		mu 0 4 17 37 95 94
		f 4 -17 13 -149 145
		mu 0 4 37 15 96 95
		f 4 -150 -151 -14 -66
		mu 0 4 51 97 96 15
		f 4 -129 -152 149 -22
		mu 0 4 21 85 97 51
		f 4 -297 298 300 301
		mu 0 4 169 170 171 172
		f 4 107 216 215 108
		mu 0 4 74 130 131 73
		f 4 109 214 -108 110
		mu 0 4 75 129 130 74
		f 4 111 212 -110 112
		mu 0 4 76 128 129 75
		f 4 113 210 -112 114
		mu 0 4 77 127 128 76
		f 4 309 311 -314 314
		mu 0 4 173 174 175 176
		f 4 117 233 -116 118
		mu 0 4 79 140 141 78
		f 4 119 231 -118 120
		mu 0 4 80 138 140 79
		f 4 -227 229 -120 122
		mu 0 4 82 137 139 81
		f 4 123 227 226 124
		mu 0 4 83 136 137 82
		f 4 -223 225 -124 126
		mu 0 4 84 135 136 83
		f 4 127 -221 223 222
		mu 0 4 84 72 134 135
		f 4 -246 248 247 -178
		mu 0 4 86 148 149 111
		f 4 -83 179 180 -177
		mu 0 4 60 59 113 112
		f 4 250 181 -250 251
		mu 0 4 151 85 114 150
		f 4 130 177 -184 -182
		mu 0 4 85 86 111 114
		f 4 -93 184 186 -186
		mu 0 4 65 64 116 115
		f 4 267 -138 187 188
		mu 0 4 160 144 90 117
		f 4 140 189 -191 -188
		mu 0 4 90 91 118 117
		f 4 139 265 -192 -190
		mu 0 4 91 158 159 118
		f 4 -216 218 217 -194
		mu 0 4 73 131 132 119
		f 4 -155 195 196 -193
		mu 0 4 99 98 121 120
		f 4 220 197 -220 221
		mu 0 4 134 72 122 133
		f 4 106 193 -200 -198
		mu 0 4 72 73 119 122
		f 4 115 235 -203 -201
		mu 0 4 78 141 142 123
		f 4 -165 203 204 -202
		mu 0 4 104 103 125 124
		f 4 237 -114 205 206
		mu 0 4 143 127 77 126
		f 4 116 200 -208 -206
		mu 0 4 77 78 123 126
		f 4 208 -163 -210 -211
		mu 0 4 127 103 102 128
		f 4 -213 209 -161 -212
		mu 0 4 129 128 102 101
		f 4 -215 211 -159 -214
		mu 0 4 130 129 101 100
		f 4 -217 213 -157 153
		mu 0 4 131 130 100 99
		f 4 -219 -154 192 194
		mu 0 4 132 131 99 120
		f 4 -299 -304 -306 306
		mu 0 4 171 170 177 178
		f 4 152 -222 -199 -196
		mu 0 4 98 134 133 121
		f 4 -224 -153 -176 173
		mu 0 4 135 134 98 110
		f 4 -226 -174 -175 -225
		mu 0 4 136 135 110 109
		f 4 -228 224 -173 169
		mu 0 4 137 136 109 108
		f 4 -230 -170 -171 -229
		mu 0 4 139 137 108 107
		f 4 -232 228 -169 -231
		mu 0 4 140 138 106 105
		f 4 -234 230 -167 -233
		mu 0 4 141 140 105 104
		f 4 -236 232 201 -235
		mu 0 4 142 141 104 124
		f 4 -312 316 -319 -320
		mu 0 4 175 174 179 180
		f 4 -209 -238 236 -204
		mu 0 4 103 127 143 125
		f 4 -241 238 -91 -240
		mu 0 4 145 144 64 63
		f 4 -89 -242 -243 239
		mu 0 4 63 62 146 145
		f 4 -245 241 -87 -244
		mu 0 4 147 146 62 61
		f 4 -247 243 -85 81
		mu 0 4 148 147 61 60
		f 4 -249 -82 176 178
		mu 0 4 149 148 60 112
		f 4 -273 -278 -280 280
		mu 0 4 163 162 181 182
		f 4 80 -252 -183 -180
		mu 0 4 59 151 150 113
		f 4 -254 -81 -104 101
		mu 0 4 152 151 59 71
		f 4 -256 -102 -103 -255
		mu 0 4 153 152 71 70
		f 4 -258 254 -101 97
		mu 0 4 154 153 70 69
		f 4 -260 -98 -99 -259
		mu 0 4 156 154 69 68
		f 4 -97 -261 -262 258
		mu 0 4 67 66 157 155
		f 4 -95 -263 -264 260
		mu 0 4 66 65 158 157
		f 4 -266 262 185 -265
		mu 0 4 159 158 65 115
		f 4 -292 -293 -284 293
		mu 0 4 183 184 165 168
		f 4 -239 -268 266 -185
		mu 0 4 64 144 160 116
		f 4 -248 268 270 -270
		mu 0 4 111 149 162 161
		f 4 249 273 -275 -272
		mu 0 4 150 114 164 163
		f 4 183 269 -276 -274
		mu 0 4 114 111 161 164
		f 4 -179 276 277 -269
		mu 0 4 160 117 166 165
		f 4 -181 278 279 -277
		mu 0 4 117 118 167 166
		f 4 182 271 -281 -279
		mu 0 4 118 159 168 167
		f 4 -189 284 285 -283
		mu 0 4 119 132 170 169
		f 4 190 286 -288 -285
		mu 0 4 133 122 172 171
		f 4 191 281 -289 -287
		mu 0 4 122 119 169 172
		f 4 -187 289 291 -291
		mu 0 4 123 142 174 173
		f 4 -267 282 292 -290
		mu 0 4 143 126 176 175
		f 4 264 290 -294 -282
		mu 0 4 126 123 173 176
		f 4 -218 294 296 -296
		mu 0 4 132 120 177 170
		f 4 219 299 -301 -298
		mu 0 4 120 121 178 177
		f 4 199 295 -302 -300
		mu 0 4 121 133 171 178
		f 4 -195 302 303 -295
		mu 0 4 142 124 179 174
		f 4 -197 304 305 -303
		mu 0 4 124 125 180 179
		f 4 198 297 -307 -305
		mu 0 4 125 143 175 180
		f 4 202 308 -310 -308
		mu 0 4 149 112 181 162
		f 4 -207 312 313 -311
		mu 0 4 112 113 182 181
		f 4 207 307 -315 -313
		mu 0 4 113 150 163 182
		f 4 234 315 -317 -309
		mu 0 4 115 116 184 183
		f 4 -205 317 318 -316
		mu 0 4 116 160 165 184
		f 4 -237 310 319 -318
		mu 0 4 159 115 183 168;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "64F2CF5A-4578-DE78-A3B9-7CA8DCC1E11D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.4825639743501129 -0.95187426158476129 5.2954041080390946 ;
	setAttr ".s" -type "double3" 3.7061408788500279 0.069956028671084969 3.7061408788500279 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "5A853B00-4A35-6B2B-9531-D19980A911A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16";
	rename -uid "96D2CCAF-41F8-5B93-FA54-4C9ECF553F2E";
	setAttr ".t" -type "double3" -5.5984561992075168 -1.5859652147483052 3.1262617580326726 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.47977649999339567 1 0.47977649999339567 ;
	setAttr ".rp" -type "double3" 1.4740250852850179 0 1.4720865813226967 ;
	setAttr ".sp" -type "double3" 1.4740250852850179 0 1.4720865813226967 ;
createNode mesh -n "pCube16Shape" -p "pCube16";
	rename -uid "3E3BFA6D-4657-AD09-794C-C0B39B1040AF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 160 ".pt";
	setAttr ".pt[0]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[1]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[2]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[3]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[4]" -type "float3" 0.32418364 0 -3.9464959e-17 ;
	setAttr ".pt[5]" -type "float3" -0.27422732 -1.110223e-16 3.3583162e-17 ;
	setAttr ".pt[6]" -type "float3" 8.0773062e-17 0 0.66681057 ;
	setAttr ".pt[8]" -type "float3" -5.6000266e-17 0 -0.45727664 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.66681027 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[12]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[16]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[29]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[35]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[43]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[47]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[51]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[56]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[62]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[67]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[69]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[70]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[71]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[72]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[73]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[74]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[75]" -type "float3" 8.0935692e-17 0 0.66681057 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[77]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[78]" -type "float3" -0.27422732 -1.110223e-16 0.66681045 ;
	setAttr ".pt[79]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[80]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[81]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[82]" -type "float3" -0.27422732 -1.110223e-16 3.3583162e-17 ;
	setAttr ".pt[83]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[84]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[85]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[86]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[87]" -type "float3" -5.6000266e-17 0 -0.45727664 ;
	setAttr ".pt[88]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[89]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[90]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[91]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[92]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[93]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[94]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[95]" -type "float3" 0.32418364 0 0.66681027 ;
	setAttr ".pt[96]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[97]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[98]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[99]" -type "float3" 0.32418364 0 -3.96818e-17 ;
	setAttr ".pt[100]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[101]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[102]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[103]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[104]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[109]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[110]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[117]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[118]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[124]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[125]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[131]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[132]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[133]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[134]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[136]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[137]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[138]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[139]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[145]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[153]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[156]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[157]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[164]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[165]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[166]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[167]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[168]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[169]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[170]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[171]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[172]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[173]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[174]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[175]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[176]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[177]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[178]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[179]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[180]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[181]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[182]" -type "float3" 8.0773062e-17 0 0.66681057 ;
	setAttr ".pt[183]" -type "float3" 8.0935692e-17 0 0.66681057 ;
	setAttr ".pt[184]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[185]" -type "float3" 0 0 -0.45727664 ;
	setAttr ".pt[186]" -type "float3" -5.6000266e-17 0 -0.45727664 ;
	setAttr ".pt[187]" -type "float3" -5.6000266e-17 0 -0.45727664 ;
	setAttr ".pt[200]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[201]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[214]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[215]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[216]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[217]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[226]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[227]" -type "float3" 0 0 0.66681057 ;
	setAttr ".pt[232]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[233]" -type "float3" -0.27422732 -1.110223e-16 0.66681057 ;
	setAttr ".pt[234]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[235]" -type "float3" -0.27422732 -1.110223e-16 -0.45727664 ;
	setAttr ".pt[236]" -type "float3" -0.27422732 -1.110223e-16 3.3583162e-17 ;
	setAttr ".pt[237]" -type "float3" -0.27422732 -1.110223e-16 3.3583162e-17 ;
	setAttr ".pt[238]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[239]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[240]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[241]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[242]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[243]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[244]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[245]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[246]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[247]" -type "float3" -0.27422732 -1.110223e-16 0 ;
	setAttr ".pt[248]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[249]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[250]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[251]" -type "float3" 0.32418364 0 -3.96818e-17 ;
	setAttr ".pt[252]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[253]" -type "float3" 0.32418364 0 -3.9464959e-17 ;
	setAttr ".pt[254]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[255]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[256]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[257]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[258]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[259]" -type "float3" 0.32418364 0 -0.45727664 ;
	setAttr ".pt[260]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[261]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[262]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[263]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[264]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[265]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[266]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[267]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[278]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[279]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[280]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[281]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[282]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[283]" -type "float3" 0.32418364 0 0.66681033 ;
	setAttr ".pt[284]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[285]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[286]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[287]" -type "float3" 0.32418364 0 0 ;
	setAttr ".pt[288]" -type "float3" 0 0 0.66681033 ;
	setAttr ".pt[289]" -type "float3" 0 0 0.66681033 ;
createNode mesh -n "polySurfaceShape10" -p "pCube16";
	rename -uid "203465E5-4E4C-8980-13EE-689C6327E64F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:79]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 126 ".uvst[0].uvsp[0:125]" -type "float2" 0.375 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.25 0 0.375
		 0.875 0.625 0.875 0.75 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875 0.5 0 0.5
		 1 0.5625 0.25 0.5625 0.375 0.5625 0.5 0.5625 0.75 0.5625 0.875 0.5625 1 0.625 0.3125
		 0.5625 0.3125 0.5 0.3125 0.3125 0.25 0.375 0.3125 0.3125 0 0.375 0.9375 0.5 0.9375
		 0.5625 0.9375 0.625 0.9375 0.625 0.4375 0.8125 0.25 0.5625 0.4375 0.5 0.4375 0.1875
		 0.25 0.375 0.4375 0.1875 0 0.375 0.8125 0.5 0.8125 0.5625 0.8125 0.625 0.8125 0.8125
		 0 0.4375 0.5 0.4375 0.75 0.4375 0.8125 0.4375 0.875 0.4375 0.9375 0.4375 0 0.4375
		 1 0.4375 0.25 0.4375 0.3125 0.4375 0.375 0.4375 0.4375 0.375 0 0.4375 0 0.4375 0.25
		 0.375 0.25 0.4375 0.3125 0.375 0.3125 0.375 0.9375 0.4375 0.9375 0.4375 1 0.375 1
		 0.625 0 0.6875 0 0.6875 0.25 0.625 0.25 0.3125 0 0.3125 0.25 0.75 0.25 0.75 0 0.8125
		 0 0.8125 0.25 0.5 0.25 0.5625 0.25 0.5625 0.3125 0.5 0.3125 0.5 0.4375 0.5 0.375
		 0.5625 0.375 0.5625 0.4375 0.5 0.75 0.5 0.5 0.5625 0.5 0.5625 0.75 0.5 0.875 0.5
		 0.8125 0.5625 0.8125 0.5625 0.875 0.5 1 0.5 0.9375 0.5625 0.9375 0.5625 1 0.5 0 0.5625
		 0 0.625 0.3125 0.625 0.375 0.625 0.4375 0.625 0.5 0.625 0.75 0.625 0.8125 0.625 0.875
		 0.625 0.9375 0.625 1 0.4375 0.375 0.375 0.375 0.25 0 0.25 0.25 0.375 0.875 0.4375
		 0.875 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[12]" -type "float3" 0.00053012371 0 -0.001408577 ;
	setAttr ".pt[57]" -type "float3" -0.00053012371 0 0.0014083385 ;
	setAttr -s 92 ".vt[0:91]"  -2.94699001 -0.5 2.94699001 2.94699001 -0.5 2.94699001
		 -2.94699001 0.5 2.94699001 2.94699001 0.5 2.94699001 -2.94699001 0.5 -2.94699001
		 2.94699001 0.5 -2.94699001 -2.94699001 -0.5 -2.94699001 2.94699001 -0.5 -2.94699001
		 2.94699001 0.5 0 -2.94699001 0.5 0 -2.94699001 -0.5 0 2.94699001 -0.5 0 0 0.5 2.94699001
		 0 0.5 0 0 0.5 -2.94699001 0 -0.5 -2.94699001 0 -0.5 0 0 -0.5 2.94699001 1.47349501 0.5 2.94699001
		 1.47349501 0.5 0 1.47349501 0.5 -2.94699001 1.47349501 -0.5 -2.94699001 1.47349501 -0.5 0
		 1.47349501 -0.5 2.94699001 2.94699001 0.5 1.47349501 1.47349501 0.5 1.47349501 0 0.5 1.47349501
		 -2.94699001 0.5 1.47349501 -2.94699001 -0.5 1.47349501 0 -0.5 1.47349501 1.47349501 -0.5 1.47349501
		 2.94699001 -0.5 1.47349501 2.94699001 0.5 -1.47349501 1.47349501 0.5 -1.47349501
		 0 0.5 -1.47349501 -2.94699001 0.5 -1.47349501 -2.94699001 -0.5 -1.47349501 0 -0.5 -1.47349501
		 1.47349501 -0.5 -1.47349501 2.94699001 -0.5 -1.47349501 -1.47349501 0.5 -2.94699001
		 -1.47349501 -0.5 -2.94699001 -1.47349501 -0.5 -1.47349501 -1.47349501 -0.5 0 -1.47349501 -0.5 1.47349501
		 -1.47349501 -0.5 2.94699001 -1.47349501 0.5 2.94699001 -1.47349501 0.5 1.47349501
		 -1.47349501 0.5 0 -1.47349501 0.5 -1.47349501 0.0010602474 -0.5 5.89116287 5.89504051 -0.5 5.89116287
		 0.0010602474 0.5 5.89116287 5.89504051 0.5 5.89116287 5.89504051 0.5 -0.0028169155
		 5.89504051 -0.5 -0.0028169155 5.89504051 0.5 2.9441731 0.0010602474 0.5 2.9441731
		 0.0010602474 -0.5 2.9441731 5.89504051 -0.5 2.9441731 2.94805026 0.5 5.89116287 2.94805026 0.5 2.9441731
		 2.94805026 0.5 -0.0028169155 2.94805026 -0.5 -0.0028169155 2.94805026 -0.5 2.9441731
		 2.94805026 -0.5 5.89116287 4.42154503 0.5 5.89116287 4.42154503 0.5 2.9441731 4.42154503 0.5 -0.0028169155
		 4.42154503 -0.5 -0.0028169155 4.42154503 -0.5 2.9441731 4.42154503 -0.5 5.89116287
		 5.89504051 0.5 4.41766834 4.42154503 0.5 4.41766834 2.94805026 0.5 4.41766834 0.0010602474 0.5 4.41766834
		 0.0010602474 -0.5 4.41766834 2.94805026 -0.5 4.41766834 4.42154503 -0.5 4.41766834
		 5.89504051 -0.5 4.41766834 5.89504051 0.5 1.47067809 4.42154503 0.5 1.47067809 2.94805026 0.5 1.47067809
		 2.94805026 -0.5 1.47067809 4.42154503 -0.5 1.47067809 5.89504051 -0.5 1.47067809
		 1.47455525 -0.5 2.9441731 1.47455525 -0.5 4.41766834 1.47455525 -0.5 5.89116287 1.47455525 0.5 5.89116287
		 1.47455525 0.5 4.41766834 1.47455525 0.5 2.9441731;
	setAttr -s 170 ".ed";
	setAttr ".ed[0:165]"  0 45 0 2 46 0 4 40 0 6 41 0 0 2 0 2 27 0 3 24 0 4 6 0
		 5 7 0 6 36 0 7 39 0 8 32 0 9 35 0 8 19 1 10 28 0 9 10 1 11 31 0 10 43 1 11 8 0 12 18 0
		 13 48 1 12 26 1 14 20 0 13 34 1 15 21 0 14 15 1 16 22 1 15 37 1 17 23 0 16 29 1 17 12 0
		 18 3 0 19 13 1 18 25 1 20 5 0 19 33 1 21 7 0 20 21 1 22 11 1 21 38 1 23 1 0 22 30 1
		 24 8 0 25 19 1 24 25 1 26 13 1 25 26 1 27 9 0 26 47 1 28 0 0 27 28 1 29 17 1 28 44 1
		 30 23 1 29 30 1 31 1 0 30 31 1 32 5 0 33 20 1 32 33 1 34 14 1 33 34 1 35 4 0 34 49 1
		 36 10 0 35 36 1 37 16 1 36 42 1 38 22 1 37 38 1 39 11 0 38 39 1 39 32 1 40 14 0 41 15 0
		 40 41 1 42 37 1 41 42 1 43 16 1 42 43 1 44 29 1 43 44 1 45 17 0 44 45 1 46 12 0 45 46 1
		 47 27 1 46 47 1 48 9 1 47 48 1 49 35 1 48 49 1 49 40 1 50 88 0 52 89 0 50 52 0 51 53 0
		 52 75 0 53 72 0 54 55 0 55 85 0 56 80 0 56 67 1 58 76 0 57 58 0 59 79 0 58 86 0 59 56 1
		 60 66 0 61 91 0 60 74 1 62 68 0 61 82 0 63 69 0 62 63 0 64 70 1 63 83 0 65 71 0 64 77 1
		 65 60 1 66 53 0 67 61 1 66 73 1 68 54 0 67 81 1 69 55 0 68 69 1 70 59 1 69 84 1 71 51 0
		 70 78 1 71 66 1 72 56 0 73 67 1 72 73 1 74 61 1 73 74 1 75 57 0 74 90 1 76 50 0 75 76 1
		 77 65 1 76 87 1 78 71 1 77 78 1 79 51 0 78 79 1 79 72 1 80 54 0 81 68 1 80 81 1 82 62 0
		 81 82 1 83 64 0 84 70 1 83 84 1 85 59 0 84 85 1 85 80 1 86 64 0 87 77 1 86 87 1 88 65 0
		 87 88 1 89 60 0 88 89 1;
	setAttr ".ed[166:169]" 90 75 1 89 90 1 91 57 0 90 91 1;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 0 85 -2 -5
		mu 0 4 0 61 63 1
		f 4 1 87 86 -6
		mu 0 4 1 63 64 38
		f 4 2 75 -4 -8
		mu 0 4 3 56 57 5
		f 4 52 83 -1 -50
		mu 0 4 40 60 62 7
		f 4 49 4 5 50
		mu 0 4 39 0 1 37
		f 4 -89 91 90 -13
		mu 0 4 16 65 66 49
		f 4 64 -16 12 65
		mu 0 4 50 17 15 48
		f 4 67 79 -18 -65
		mu 0 4 51 58 59 18
		f 4 -19 -71 72 -12
		mu 0 4 14 20 55 45
		f 4 19 33 46 -22
		mu 0 4 21 28 35 36
		f 4 -24 -33 35 61
		mu 0 4 47 22 29 46
		f 4 -26 22 37 -25
		mu 0 4 24 23 30 31
		f 4 -67 69 68 -27
		mu 0 4 25 52 53 32
		f 4 -52 54 53 -29
		mu 0 4 27 41 42 33
		f 4 31 6 44 -34
		mu 0 4 28 2 34 35
		f 4 -36 -14 11 59
		mu 0 4 46 29 13 44
		f 4 -38 34 8 -37
		mu 0 4 31 30 4 6
		f 4 -69 71 70 -39
		mu 0 4 32 53 54 19
		f 4 -54 56 55 -41
		mu 0 4 33 42 43 8
		f 4 -45 42 13 -44
		mu 0 4 35 34 13 29
		f 4 -47 43 32 -46
		mu 0 4 36 35 29 22
		f 4 -87 89 88 -48
		mu 0 4 38 64 65 16
		f 4 14 -51 47 15
		mu 0 4 17 39 37 15
		f 4 17 81 -53 -15
		mu 0 4 18 59 60 40
		f 4 -55 -30 26 41
		mu 0 4 42 41 25 32
		f 4 -57 -42 38 16
		mu 0 4 43 42 32 19
		f 4 -59 -60 57 -35
		mu 0 4 30 46 44 4
		f 4 -61 -62 58 -23
		mu 0 4 23 47 46 30
		f 4 -91 92 -3 -63
		mu 0 4 49 66 56 3
		f 4 9 -66 62 7
		mu 0 4 11 50 48 12
		f 4 3 77 -68 -10
		mu 0 4 5 57 58 51
		f 4 -70 -28 24 39
		mu 0 4 53 52 24 31
		f 4 -72 -40 36 10
		mu 0 4 54 53 31 6
		f 4 -73 -11 -9 -58
		mu 0 4 45 55 9 10
		f 4 73 25 -75 -76
		mu 0 4 56 23 24 57
		f 4 -78 74 27 -77
		mu 0 4 58 57 24 52
		f 4 -80 76 66 -79
		mu 0 4 59 58 52 25
		f 4 -82 78 29 -81
		mu 0 4 60 59 25 41
		f 4 -84 80 51 -83
		mu 0 4 62 60 41 27
		f 4 -86 82 30 -85
		mu 0 4 63 61 26 21
		f 4 -88 84 21 48
		mu 0 4 64 63 21 36
		f 4 -90 -49 45 20
		mu 0 4 65 64 36 22
		f 4 -92 -21 23 63
		mu 0 4 66 65 22 47
		f 4 -93 -64 60 -74
		mu 0 4 56 66 47 23
		f 4 93 165 -95 -96
		mu 0 4 67 68 69 70
		f 4 94 167 166 -98
		mu 0 4 70 69 71 72
		f 4 142 163 -94 -140
		mu 0 4 73 74 75 76
		f 4 -146 147 -99 -97
		mu 0 4 77 78 79 80
		f 4 139 95 97 140
		mu 0 4 81 67 70 82
		f 4 -108 -157 158 -102
		mu 0 4 83 84 85 86
		f 4 108 122 136 -111
		mu 0 4 87 88 89 90
		f 4 -113 -122 124 152
		mu 0 4 91 92 93 94
		f 4 -115 111 126 -114
		mu 0 4 95 96 97 98
		f 4 -154 155 154 -116
		mu 0 4 99 100 101 102
		f 4 -142 144 143 -118
		mu 0 4 103 104 105 106
		f 4 -120 117 131 -109
		mu 0 4 87 107 108 88
		f 4 120 98 134 -123
		mu 0 4 88 80 109 89
		f 4 -125 -103 101 150
		mu 0 4 94 93 110 111
		f 4 -127 123 99 -126
		mu 0 4 98 97 112 113
		f 4 -155 157 156 -128
		mu 0 4 102 101 114 115
		f 4 -144 146 145 -130
		mu 0 4 106 105 116 117
		f 4 -132 129 96 -121
		mu 0 4 88 108 77 80
		f 4 -135 132 102 -134
		mu 0 4 89 109 110 93
		f 4 -137 133 121 -136
		mu 0 4 90 89 93 92
		f 4 -167 169 168 -138
		mu 0 4 72 71 118 119
		f 4 103 -141 137 104
		mu 0 4 120 81 82 121
		f 4 106 161 -143 -104
		mu 0 4 122 123 74 73
		f 4 -145 -119 115 130
		mu 0 4 105 104 99 102
		f 4 -147 -131 127 105
		mu 0 4 116 105 102 115
		f 4 -148 -106 107 -133
		mu 0 4 79 78 84 83
		f 4 -150 -151 148 -124
		mu 0 4 97 94 111 112
		f 4 -152 -153 149 -112
		mu 0 4 96 91 94 97
		f 4 -156 -117 113 128
		mu 0 4 101 100 95 98
		f 4 -158 -129 125 100
		mu 0 4 114 101 98 113
		f 4 -159 -101 -100 -149
		mu 0 4 86 85 124 125
		f 4 -162 159 118 -161
		mu 0 4 74 123 99 104
		f 4 -164 160 141 -163
		mu 0 4 75 74 104 103
		f 4 -166 162 119 -165
		mu 0 4 69 68 107 87
		f 4 -168 164 110 138
		mu 0 4 71 69 87 90
		f 4 -170 -139 135 109
		mu 0 4 118 71 90 92;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	rename -uid "2DE51898-47FD-B632-F1C3-F9B5B0AA9B7A";
	setAttr ".t" -type "double3" -1.3514617186484816 1.1009008119284125 2.741686545767914 ;
	setAttr ".s" -type "double3" 1.5156539947041239 0.077055730189593399 1.5156539947041239 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "2F766914-4B2B-8B64-5013-76824B141572";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.20833334 0.25 0.375 0.41666666 0.20833334 0 0.375
		 0.83333337 0.625 0.83333337 0.79166669 0 0.625 0.41666666 0.79166669 0.25 0.29166669
		 0.25 0.375 0.33333331 0.29166669 0 0.375 0.91666669 0.625 0.91666669 0.70833337 0
		 0.625 0.33333331 0.70833337 0.25 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337
		 0.54166663 0.91666675 0.54166663 0 0.54166663 1 0.54166663 0.25 0.54166663 0.33333331
		 0.54166663 0.41666666 0.45833331 0.5 0.45833331 0.75 0.45833331 0.83333337 0.45833331
		 0.91666675 0.45833331 0 0.45833331 1 0.45833331 0.25 0.45833331 0.33333331 0.45833331
		 0.41666666 0.375 0.25 0.45833331 0.25 0.45833331 0.33333331 0.375 0.33333331 0.375
		 0.41666666 0.45833331 0.41666666 0.45833331 0.5 0.375 0.5 0.54166663 0.33333331 0.54166663
		 0.25 0.625 0.25 0.625 0.33333331 0.54166663 0.5 0.54166663 0.41666666 0.625 0.41666666
		 0.625 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  -0.5 -0.50000006 0.50000024 0.5 -0.50000006 0.50000024
		 -0.5 0.49999994 0.50000024 0.5 0.49999994 0.50000024 -0.5 0.49999994 -0.49999976
		 0.5 0.49999994 -0.49999976 -0.5 -0.50000006 -0.49999976 0.5 -0.50000006 -0.49999976
		 -0.5 0.49999994 -0.42442894 -0.5 -0.50000006 -0.42442894 0.5 -0.50000006 -0.42442894
		 0.5 0.49999994 -0.42442894 -0.5 0.49999994 0.42442966 -0.5 -0.50000006 0.42442966
		 0.5 -0.50000006 0.42442966 0.5 0.49999994 0.42442966 0.42928028 0.49999994 -0.49999976
		 0.42928028 -0.50000006 -0.49999976 0.42928028 -0.50000006 -0.42442894 0.42928028 -0.50000006 0.42442966
		 0.42928028 -0.50000006 0.50000024 0.42928028 0.49999994 0.50000024 0.42928028 0.49999994 0.42442966
		 0.42928028 0.49999994 -0.42442894 -0.42928028 0.49999994 -0.49999976 -0.42928028 -0.50000006 -0.49999976
		 -0.42928028 -0.50000006 -0.42442894 -0.42928028 -0.50000006 0.42442966 -0.42928028 -0.50000006 0.50000024
		 -0.42928028 0.49999994 0.50000024 -0.42928028 0.49999994 0.42442966 -0.42928028 0.49999994 -0.42442894
		 -0.5 46.88708115 0.50000024 -0.42928028 46.88708115 0.50000024 -0.42928028 46.88708115 0.42442966
		 -0.5 46.88708115 0.42442966 -0.42928028 46.88708115 -0.42442894 -0.5 46.88708115 -0.42442894
		 -0.42928028 46.88708115 -0.49999976 -0.5 46.88708115 -0.49999976 0.42928028 46.88708115 0.50000024
		 0.42928028 46.88708115 0.42442966 0.5 46.88708115 0.50000024 0.5 46.88708115 0.42442966
		 0.42928028 46.88708115 -0.42442894 0.42928028 46.88708115 -0.49999976 0.5 46.88708115 -0.42442894
		 0.5 46.88708115 -0.49999976;
	setAttr -s 92 ".ed[0:91]"  0 28 0 2 29 1 4 24 1 6 25 0 0 2 0 1 3 0 2 12 1
		 3 15 1 4 6 0 5 7 0 6 9 0 7 10 0 8 4 1 9 13 0 8 9 1 10 14 0 9 26 1 11 5 1 10 11 1
		 11 23 0 12 8 0 13 0 0 12 13 1 14 1 0 13 27 1 15 11 0 14 15 1 15 22 0 16 5 1 17 7 0
		 16 17 1 18 10 1 17 18 1 19 14 1 18 19 1 20 1 0 19 20 1 21 3 1 20 21 1 22 30 1 21 22 0
		 23 31 1 22 23 1 23 16 0 24 16 0 25 17 0 24 25 1 26 18 1 25 26 1 27 19 1 26 27 1 28 20 0
		 27 28 1 29 21 0 28 29 1 30 12 0 29 30 0 31 8 0 30 31 1 31 24 0 2 32 0 29 33 0 32 33 0
		 30 34 0 33 34 0 12 35 0 34 35 0 32 35 0 31 36 0 8 37 0 36 37 0 24 38 0 36 38 0 4 39 0
		 39 38 0 37 39 0 21 40 0 22 41 0 40 41 0 3 42 0 40 42 0 15 43 0 42 43 0 43 41 0 23 44 0
		 16 45 0 44 45 0 11 46 0 46 44 0 5 47 0 46 47 0 45 47 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
		f 4 0 54 -2 -5
		mu 0 4 0 43 45 2
		f 4 2 46 -4 -9
		mu 0 4 4 39 40 6
		f 4 24 52 -1 -22
		mu 0 4 25 42 44 8
		f 4 -24 26 -8 -6
		mu 0 4 1 27 29 3
		f 4 21 4 6 22
		mu 0 4 24 0 2 22
		f 4 10 -15 12 8
		mu 0 4 12 16 14 13
		f 4 3 48 -17 -11
		mu 0 4 6 40 41 17
		f 4 -19 -12 -10 -18
		mu 0 4 21 19 10 11
		f 4 13 -23 20 14
		mu 0 4 16 24 22 14
		f 4 16 50 -25 -14
		mu 0 4 17 41 42 25
		f 4 -27 -16 18 -26
		mu 0 4 29 27 19 21
		f 4 -56 58 57 -21
		mu 0 4 23 46 47 15
		f 4 28 9 -30 -31
		mu 0 4 30 5 7 31
		f 4 -33 29 11 -32
		mu 0 4 32 31 7 18
		f 4 -35 31 15 -34
		mu 0 4 33 32 18 26
		f 4 -37 33 23 -36
		mu 0 4 35 33 26 9
		f 4 -39 35 5 -38
		mu 0 4 36 34 1 3
		f 4 -43 -28 25 19
		mu 0 4 38 37 28 20
		f 4 44 30 -46 -47
		mu 0 4 39 30 31 40
		f 4 -49 45 32 -48
		mu 0 4 41 40 31 32
		f 4 -51 47 34 -50
		mu 0 4 42 41 32 33
		f 4 -53 49 36 -52
		mu 0 4 44 42 33 35
		f 4 -55 51 38 -54
		mu 0 4 45 43 34 36
		f 4 -57 53 40 39
		mu 0 4 46 45 36 37
		f 4 -59 -40 42 41
		mu 0 4 47 46 37 38
		f 4 -60 -42 43 -45
		mu 0 4 39 47 38 30
		f 4 1 61 -63 -61
		mu 0 4 2 45 49 48
		f 4 56 63 -65 -62
		mu 0 4 45 46 50 49
		f 4 55 65 -67 -64
		mu 0 4 46 23 51 50
		f 4 -7 60 67 -66
		mu 0 4 23 2 48 51
		f 4 -58 68 70 -70
		mu 0 4 15 47 53 52
		f 4 59 71 -73 -69
		mu 0 4 47 39 54 53
		f 4 -3 73 74 -72
		mu 0 4 39 4 55 54
		f 4 -13 69 75 -74
		mu 0 4 4 15 52 55
		f 4 -41 76 78 -78
		mu 0 4 37 36 57 56
		f 4 37 79 -81 -77
		mu 0 4 36 3 58 57
		f 4 7 81 -83 -80
		mu 0 4 3 28 59 58
		f 4 27 77 -84 -82
		mu 0 4 28 37 56 59
		f 4 -44 84 86 -86
		mu 0 4 30 38 61 60
		f 4 -20 87 88 -85
		mu 0 4 38 20 62 61
		f 4 17 89 -91 -88
		mu 0 4 20 5 63 62
		f 4 -29 85 91 -90
		mu 0 4 5 30 60 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base26" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base27" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base28" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base29" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base30" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base31" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base32" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base33" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base34" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base35" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base36" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base37" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base38" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base39" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base40" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base41" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base42" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base43" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base44" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base45" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base46" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base47" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base48" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base49" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base50" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base51" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base52" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base53" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base54" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base55" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base56" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base57" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base58" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base59" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base60" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base61" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base62" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base63" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base64" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base65" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base66" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base67" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base68" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base69" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base265" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base266" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base267" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base268" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25" "Floor_Piece_Base269" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base26" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base27" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base28" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base29" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base30" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base31" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base32" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base33" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base34" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base35" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base36" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base37" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base38" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base39" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base40" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base41" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base42" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base43" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base44" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base45" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base46" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base47" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base48" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base49" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base50" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base51" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base52" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base53" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base54" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base55" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base56" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base57" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base58" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base59" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base60" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base61" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base62" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base63" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base64" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base65" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base66" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base67" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base68" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base69" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base265" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base266" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base267" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base268" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base25|polySurfaceShape2" "Floor_Piece_Base269" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base72" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base73" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base74" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base75" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base76" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base77" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base78" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base79" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base80" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base81" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base82" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base215" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base216" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base217" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base218" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base219" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base220" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base221" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base226" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base227" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base228" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base229" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base230" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base231" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base232" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base233" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base234" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base235" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base236" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base238" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base239" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base240" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base241" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base244" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base245" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base246" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base247" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base248" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base249" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base250" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base252" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base253" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71" "Floor_Piece_Base256" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base72" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base73" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base74" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base75" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base76" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base77" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base78" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base79" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base80" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base81" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base82" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base215" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base216" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base217" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base218" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base219" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base220" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base221" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base226" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base227" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base228" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base229" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base230" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base231" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base232" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base233" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base234" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base235" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base236" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base238" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base239" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base240" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base241" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base244" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base245" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base246" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base247" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base248" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base249" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base250" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base252" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base253" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base71|polySurfaceShape2" "Floor_Piece_Base256" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base84" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base85" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base86" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base87" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base88" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base89" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base90" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base91" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base92" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base93" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base94" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base95" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base96" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base97" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base98" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base99" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base100" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base101" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base102" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base103" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base104" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base105" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base106" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base107" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base108" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base109" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base110" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base111" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base112" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base113" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base114" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base115" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base116" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base117" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base118" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base119" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base120" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base121" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base122" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base123" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base124" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base125" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base126" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base127" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base128" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base129" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base130" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base131" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base132" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base133" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base134" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base135" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base136" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base137" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base138" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base139" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base140" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base141" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base142" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base143" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base144" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base145" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base146" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base147" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base148" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base149" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base150" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base151" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base152" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base153" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base154" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base155" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base156" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base157" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base158" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base159" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base160" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base161" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base162" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base163" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base164" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base165" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base166" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base167" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base168" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base169" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base170" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base171" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base172" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base173" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base174" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base175" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base176" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base177" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base178" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base179" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base180" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base181" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base182" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base183" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base184" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base185" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base186" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base187" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base188" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base189" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base190" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base191" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base192" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base193" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base194" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base195" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base196" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base197" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base198" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base199" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base201" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base202" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base203" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base204" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base205" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base206" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base207" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base208" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base209" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base210" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base211" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base270" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base271" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base272" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base273" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base274" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83" "Floor_Piece_Base275" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base84" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base85" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base86" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base87" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base88" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base89" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base90" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base91" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base92" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base93" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base94" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base95" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base96" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base97" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base98" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base99" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base100" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base101" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base102" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base103" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base104" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base105" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base106" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base107" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base108" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base109" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base110" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base111" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base112" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base113" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base114" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base115" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base116" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base117" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base118" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base119" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base120" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base121" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base122" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base123" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base124" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base125" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base126" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base127" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base128" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base129" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base130" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base131" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base132" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base133" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base134" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base135" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base136" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base137" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base138" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base139" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base140" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base141" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base142" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base143" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base144" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base145" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base146" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base147" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base148" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base149" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base150" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base151" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base152" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base153" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base154" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base155" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base156" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base157" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base158" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base159" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base160" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base161" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base162" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base163" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base164" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base165" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base166" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base167" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base168" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base169" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base170" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base171" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base172" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base173" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base174" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base175" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base176" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base177" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base178" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base179" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base180" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base181" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base182" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base183" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base184" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base185" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base186" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base187" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base188" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base189" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base190" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base191" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base192" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base193" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base194" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base195" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base196" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base197" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base198" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base199" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base201" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base202" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base203" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base204" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base205" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base206" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base207" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base208" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base209" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base210" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base211" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base270" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base271" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base272" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base273" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base274" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base83|polySurfaceShape2" "Floor_Piece_Base275" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base263|Floor_Piece_BaseShape263" "Floor_Piece_Base264" ;
parent -s -nc -r -add "|Floor|Floor_Piece_Base|Floor_Piece_Base263|polySurfaceShape2" "Floor_Piece_Base264" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "15D446AF-485C-98D9-1A3E-A49B286EE028";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AB7579CC-44EA-5E73-5AA7-9AA93C851CE7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A33E059D-4ABA-138E-21BC-0EBB98348E50";
createNode displayLayerManager -n "layerManager";
	rename -uid "0A569180-43EC-A6F7-8A31-05AC2D99A474";
createNode displayLayer -n "defaultLayer";
	rename -uid "33B91A1D-44DF-0493-C443-C9A8E5A1DCB8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E8AF39AE-40BE-DB94-5BF7-718246D90DBD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0FA4DBE3-4E3B-7F5C-A9B3-D2BDA37CF324";
	setAttr ".g" yes;
createNode polyCube -n "polyCube2";
	rename -uid "D49DEFD5-47CD-6793-95FA-93AFB10FCC52";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "1291A972-44B0-275A-BE52-3D9FAF0B2FC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64782696962356567;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "9865E37D-4B8C-BBB6-B77B-A4BE0F9A547A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.5 -0.5 0.5 0.5 -0.5 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "3501EF66-44B7-B015-15AF-0AA27F8755B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50331592559814453;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "FA90B66A-46B5-AF72-437A-C0BC72AC870B";
	setAttr ".dc" -type "componentList" 2 "f[2]" "f[6:8]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4FE03CBF-41B1-AA0F-BFA7-EF818129FA63";
	setAttr ".dc" -type "componentList" 4 "f[0:5]" "f[10:11]" "f[14:15]" "f[17]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "E3394859-4782-0061-E37C-32A6C0C6BAE1";
	setAttr ".dc" -type "componentList" 1 "f[5]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "036251ED-4E07-442A-4874-A5A9C65F3E66";
	setAttr ".ics" -type "componentList" 2 "e[4]" "e[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 18;
	setAttr ".sv2" 1;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "1607538B-4008-0F2C-C06E-A09CE3C4AB0C";
	setAttr ".ics" -type "componentList" 2 "e[28]" "e[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 17;
	setAttr ".sv2" 23;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "B88E5D2B-48F0-15AD-FFB7-CE833472B1B5";
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 10;
	setAttr ".sv2" 8;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "6D91CF40-44EA-6D5D-B8C9-3588ECD2082F";
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 15;
	setAttr ".sv2" 3;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "6D198A69-461B-09F9-311C-7EBEBA7F61D6";
	setAttr ".ics" -type "componentList" 2 "e[8]" "e[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 4;
	setAttr ".sv2" 11;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "55E24988-459C-4B27-1784-2D9CAC306965";
	setAttr ".ics" -type "componentList" 2 "e[17]" "e[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 12;
	setAttr ".sv2" 14;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	rename -uid "1A5B861F-47BC-5A74-0BC8-F99FE84D6E6B";
	setAttr ".ics" -type "componentList" 2 "e[32]" "e[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 19;
	setAttr ".sv2" 21;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	rename -uid "71EFC504-42E8-EF0B-B4E9-96A16B12B84E";
	setAttr ".ics" -type "componentList" 2 "e[10]" "e[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6;
	setAttr ".sv2" 22;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "76A073BD-4BAB-C757-F640-3A971174F6A8";
	setAttr ".dc" -type "componentList" 4 "f[0:1]" "f[3]" "f[5:6]" "f[10:13]";
createNode polyNormal -n "polyNormal1";
	rename -uid "2A0FF63F-42BA-DB80-7F93-38A2DC049A2B";
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".unm" no;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	rename -uid "10AABE69-44B2-20A0-67EA-789FBF2CF4BE";
	setAttr ".ics" -type "componentList" 2 "e[9]" "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 13;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	rename -uid "210FC4CA-4AD5-EE74-9D08-658598D95857";
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 3;
	setAttr ".sv2" 14;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	rename -uid "015DC073-4C75-46FA-94FD-4587112506D1";
	setAttr ".ics" -type "componentList" 2 "e[2]" "e[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 12;
	setAttr ".sv2" 0;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	rename -uid "C25A0D22-4379-D1E6-D319-77BB1734F8AE";
	setAttr ".ics" -type "componentList" 2 "e[17]" "e[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 11;
	setAttr ".sv2" 15;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	rename -uid "E1513201-4089-45CA-AEE5-57B34D157CEF";
	setAttr ".ics" -type "componentList" 2 "e[7]" "e[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6;
	setAttr ".sv2" 4;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	rename -uid "E573382E-4CD3-DB64-099B-D1A79CDED4EF";
	setAttr ".ics" -type "componentList" 2 "e[8]" "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 7;
	setAttr ".sv2" 9;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "B4ACD99E-45C8-0D1C-89CF-91A9FB918E85";
	setAttr ".dc" -type "componentList" 2 "f[1]" "f[3]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "0C54B262-4BDC-D98F-9105-F2AC142BBAF5";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[4:5]";
createNode polyNormal -n "polyNormal2";
	rename -uid "317EFF28-4268-470F-5074-63B240710067";
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".unm" no;
createNode polyCube -n "polyCube3";
	rename -uid "27635949-4DDC-2743-C037-6EB641216FC3";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "7BD894F1-43BB-1F0C-FDE4-A1B38AF3D7E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".wt" 0.45918750762939453;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "E613651E-4498-472E-FBCB-EFA7819EAE6E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.5 -0.5 0.5 0.5 -0.5 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "AF356AD3-4F9D-AADA-54CD-14993D082B2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".wt" 0.58487194776535034;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "94D83566-4DF4-5278-68A4-3DA6DA719C60";
	setAttr ".dc" -type "componentList" 3 "f[4]" "f[14]" "f[20:21]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "9AB07975-4A27-7CDA-DF1D-7080A7CFFCFC";
	setAttr ".dc" -type "componentList" 2 "f[0:1]" "f[4]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "3680682B-4C6E-5AA4-80C0-54ACE5AE26B1";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "5B1901B5-4550-F3C5-9121-63BF7D05A16B";
	setAttr ".dc" -type "componentList" 1 "f[0:3]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "4F056876-4A9C-2A12-7014-459A0FEC1B83";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[6:8]" "f[12:14]";
createNode polyBridgeEdge -n "polyBridgeEdge15";
	rename -uid "93A90447-4335-8377-7EA8-249277B1213C";
	setAttr ".ics" -type "componentList" 2 "e[4]" "e[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 17;
	setAttr ".sv2" 1;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	rename -uid "588AA0D1-4926-E51C-175D-DF8A4C93C6DD";
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 16;
	setAttr ".sv2" 11;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	rename -uid "85A668C0-4D09-EA0A-244D-CE882C51EB49";
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 10;
	setAttr ".sv2" 3;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	rename -uid "01A16EE2-4592-F264-E96E-569092C1D538";
	setAttr ".ics" -type "componentList" 2 "e[8]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 4;
	setAttr ".sv2" 12;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	rename -uid "C380BBA3-434A-9537-D15B-1CB0766AFCAD";
	setAttr ".ics" -type "componentList" 2 "e[13]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9;
	setAttr ".sv2" 13;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	rename -uid "C5DE42B4-4E4A-CE88-4C7D-E28EAB595032";
	setAttr ".ics" -type "componentList" 2 "e[23]" "e[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 14;
	setAttr ".sv2" 18;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	rename -uid "76B7A23B-4214-E6A7-F95A-8786AF89658F";
	setAttr ".ics" -type "componentList" 2 "e[10]" "e[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 6;
	setAttr ".sv2" 15;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "53F97084-41A0-4499-4A80-D0B5AC5BBEF0";
	setAttr ".dc" -type "componentList" 3 "f[1]" "f[3]" "f[10]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "9AC3A23E-448D-2322-8C7B-96AA524A1784";
	setAttr ".dc" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
createNode polyNormal -n "polyNormal3";
	rename -uid "E1FABBE3-47DC-A5DD-59BE-B089740CC22B";
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".unm" no;
createNode polyBridgeEdge -n "polyBridgeEdge22";
	rename -uid "81FC15EB-453A-4122-6A36-69B2262FA7FA";
	setAttr ".ics" -type "componentList" 2 "e[10]" "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9;
	setAttr ".sv2" 14;
	setAttr ".d" 1;
createNode polyChipOff -n "polyChipOff1";
	rename -uid "8C5E6537-4645-24F0-C8DF-67BC6E989D87";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2 1;
	setAttr ".pvt" -type "float3" 0 0 -2 ;
	setAttr ".rs" 34539;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	rename -uid "45069AD6-4E4F-87FF-F654-F39F99D84227";
	setAttr ".ic" 2;
createNode groupId -n "groupId1";
	rename -uid "5E64C3CF-40F1-D762-77E6-3AAE8DFE4DF5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A693F3EB-493F-DAB7-B8CE-33BDB0616ECB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId3";
	rename -uid "54BB1389-4CDD-D59F-E996-43AE40DA170D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B44C5AEB-49E4-616B-60B5-019B3EB358B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId7";
	rename -uid "C29D28B9-4813-5FD0-BE7F-D8A8519AE61F";
	setAttr ".ihi" 0;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "FA6CCB50-4CE2-3471-8E65-5EA1074CDE3C";
	setAttr ".dc" -type "componentList" 2 "f[0:1]" "f[3]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "D2608B93-40E2-9E13-6BB3-F6B90DC2CD8B";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "D513AED2-4997-349D-4D95-9CB1F1E36162";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "285E28DE-4B90-CC81-1A00-D3AF17ACE728";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "DC7C7C31-4B5F-7C7A-3D38-FEA37E1D1526";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "65B03305-4621-C799-48EA-1895B988D5A5";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyNormal -n "polyNormal4";
	rename -uid "28A666B4-4873-BB74-CEDE-D18A973B7F7C";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode groupId -n "groupId8";
	rename -uid "51601741-47C5-A054-A34A-1AAEAEFCBE04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "08C28750-4329-79EC-D94D-D8AB345D292B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polyBridgeEdge -n "polyBridgeEdge23";
	rename -uid "4D2BCA1C-4117-066B-C8B2-C9A1E669AB42";
	setAttr ".ics" -type "componentList" 2 "e[7]" "e[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 7;
	setAttr ".sv2" 30;
	setAttr ".d" 1;
createNode groupParts -n "groupParts4";
	rename -uid "63447C8E-40EB-CA2F-0B5C-578F6FE284B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId9";
	rename -uid "B26BE404-4E47-9DBE-3983-DBBE030ECCFE";
	setAttr ".ihi" 0;
createNode polyBridgeEdge -n "polyBridgeEdge24";
	rename -uid "04706789-48E7-3613-2D8A-8AB0EE537EA7";
	setAttr ".ics" -type "componentList" 2 "e[3]" "e[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 0;
	setAttr ".sv2" 25;
	setAttr ".d" 1;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "4AC9EB55-4E57-4913-2202-A290290C7413";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[46:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50025945901870728;
	setAttr ".dr" no;
	setAttr ".re" 47;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "E980995F-4490-4D16-CF19-8BBBAE191A19";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0.14080054 0 0.035662018 0.14080054
		 0 0.035662018 -0.028218465 0 -0.133357 -0.028218465 0 -0.133357;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "D6626E43-4FB1-1B71-F0E8-B48B49EBDA54";
	setAttr ".dc" -type "componentList" 1 "f[0:6]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "EEA73BD3-48B9-8297-BB31-C6AB0462FE01";
	setAttr ".dc" -type "componentList" 1 "f[0:5]";
createNode polyBridgeEdge -n "polyBridgeEdge25";
	rename -uid "EA19FEE4-48D0-BACE-BABA-EB952260BD00";
	setAttr ".ics" -type "componentList" 1 "e[16:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0 -2 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 15;
	setAttr ".d" 1;
createNode groupId -n "groupId10";
	rename -uid "BBA3F6D3-4214-03A8-0A4F-A5A48DA7FC92";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "0E301FF8-46B9-E668-B66A-67A3D1E2E605";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId14";
	rename -uid "2FAEE9F1-44EE-352D-F8D6-A4972965E742";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "CDE18588-4D57-2D2A-5AD8-C08663EF520B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "891C72D1-40C0-987E-EB90-0F8ECEA377FE";
	setAttr ".ihi" 0;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "7FEED21C-476E-F525-F96D-CCBB3542447F";
	setAttr ".ics" -type "componentList" 1 "e[16]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "A5A88497-4420-C9A5-0480-39A0026DE300";
	setAttr ".ics" -type "componentList" 1 "e[16]";
	setAttr ".cv" yes;
createNode groupId -n "groupId24";
	rename -uid "3F480336-4E6A-C0F1-C243-8C85C230060D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "7773A573-4D60-30EE-BABD-9787D3244769";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7B2BDED8-42E5-0B93-8C3B-AD9D61E5AB2F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 987\n            -height 793\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 987\\n    -height 793\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 987\\n    -height 793\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AEFEB0FF-4011-91EF-CBBA-7D95E1CA8684";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId27";
	rename -uid "58B251D7-4DBC-A79F-3E0B-A1BA106C8E2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "D6055CBF-496E-3640-EB6F-D9BCC4D2D7B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "27A36B79-4920-50B5-DA49-969A818AE9BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "C96D247B-4DF2-E778-D50A-17B68C400A4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "D56BB9F9-445E-728C-87EF-FD8E2B2A1420";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "409B67E0-4C8F-FB16-8AD9-B68A2FC7C098";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "19C90FA8-42AE-AE8D-2C4B-2887C281B0F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "79FE0ACD-4524-BBA5-657F-2AAC8F8B858A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "CDBF71D7-45FB-B80E-640A-24B793B87444";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "204A9917-48FE-8340-1989-F6980C122DAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "88FE2EAB-45F1-557F-A4F2-3A98B3E5556C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	rename -uid "B74CE19C-4D38-3B04-12B8-84872C4840AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "5A89FC39-4D51-4DCC-3DE4-DAAD9AE1ED10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	rename -uid "DEA7F1A0-42B2-BC92-E5C3-7E9CF82CA050";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "C3BDBF54-4A59-74E4-7283-1297EAB5B4D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	rename -uid "53D1E15B-4DE4-3EE2-ED02-1F8C3F84ADBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "6D97888C-46C4-2266-DCF0-C588D8123846";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	rename -uid "375634CF-4ECC-1C5D-6390-A3AB910916DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "6EEE356E-422F-B857-E739-289A6C7B2A99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "3977C80B-4FB5-0D48-69A5-64B92B2811EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "8C5BB244-4FAF-C492-D20E-899493613D78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "91416C68-44F6-5FEE-3DF1-17A2D89E92BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "941C157C-4B88-4B2C-CE21-EDBA800E342F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "79DB7C93-481B-FEDF-5EDE-A79F826D6D8C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "FC719B03-49D8-B77C-FAE6-46BB86588BF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "EC4EA617-4649-B8F7-0E04-64AC28AF42CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "19AA95A7-4447-282B-F75C-6FB42D4C179E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "30E261D7-4D4E-2525-FF47-CAA2B95FB602";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "67F73BAC-4442-38AD-1F7D-338F4BF84A2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "424E6D33-4D02-F2A9-1E03-E9993C8B5209";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "33D95CBA-4AD3-20B9-0632-728BEA3426C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	rename -uid "A956CB34-49DA-936C-B0BC-7C97BAA4BF4D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "920BC20F-4F41-07FB-90F1-39AB736ED88B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "7E4F9B1D-4708-C906-C2DE-969BC009E157";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "4EF692E5-4B9A-45FD-AEBB-B7BCC1EF9287";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	rename -uid "D1F23860-4054-8316-9E3A-59997E2A8C75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "28ABA083-48D8-66E3-F7F3-8EA2C2FB0D15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	rename -uid "715E77CF-414B-2C20-5932-2EAEA38BF854";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "8102290E-4AD8-E574-AFDC-47B29C7D6269";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	rename -uid "509092E1-4328-BA39-6A39-AEAC9E951B77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	rename -uid "AB412F0B-48DD-7259-0B72-E3BE0EA42CAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	rename -uid "62FB83ED-4F6F-AE94-3965-A197CFC440C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "0CA0AFB2-4277-D4AA-9720-4FAD95577702";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	rename -uid "26D6BB8A-4D51-74D8-0EE4-0EB4269F6FF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "C711E5A2-4DF5-C094-C6E2-5DADB833C22E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	rename -uid "4605BDFA-40C2-92E4-B615-3DA23DAEC853";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "B6F417A6-456F-7221-387F-5CB70CB9B55D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	rename -uid "BEDF9190-4521-F27F-F2BD-00B014878A87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	rename -uid "94C34DB0-4757-CC43-FF9C-41B1E2EE7183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	rename -uid "BEBBC7F5-4005-D8C0-F06C-C9B3DEAD6996";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	rename -uid "A49DEF21-4B18-A27E-B5D9-108A9E284396";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "69D32683-4B9B-007F-7059-4A88683F4BA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "392F7221-45CF-098F-B4BB-B5AB6A042E67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "9EE5B6AD-4B34-7AA4-AB68-7E84A732C190";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "EF575250-47E9-FC04-2AFC-7E806490D9EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "D881BBC4-4523-8AF8-5466-F2B8DD5C739E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "CB95CDFD-4C86-07BF-F787-B3B2C85795DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "D3280699-4E75-F4AC-26AC-EC9334C76C5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "2E7ABCEC-4443-A182-A58E-CE9FE0B9F200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "63375A2F-4CA7-E79B-E59D-0D88BBEFE824";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "9D829CBB-4A3E-1B2D-9FBA-DBA4143C41A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "20B7A210-4549-5462-642A-38BEA1C6FB0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "044094A5-4173-ABE8-8C1F-A787314E1254";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	rename -uid "D7DE4A71-4349-801C-A5B4-18B737777D35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "5EC86A98-41D3-D93D-4EFA-F8A76DD60B13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "44898FF1-4524-B20B-0ED6-A3A0E08A63B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	rename -uid "B1D05739-45C0-9EB2-EEC5-A1BA60CA4F63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	rename -uid "75462D0B-4476-6095-BAF3-D49EA757CC87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	rename -uid "B9DE7697-4B55-81DB-EE36-84911D98DC87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	rename -uid "43430FDA-47CA-86B0-B8EF-07AEB30ACDA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	rename -uid "59D00D04-4485-EE5D-740A-248F651B7B14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "690992DC-4988-04C0-B3FF-89AA1156C6F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	rename -uid "89975FD2-4589-3CE7-1928-B8947AD76B27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	rename -uid "CC7324E0-47FA-DEF1-9F79-FCA24A4A3068";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	rename -uid "0C601343-4861-D16B-A897-D5B92EE10541";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	rename -uid "6CAA82D4-43FE-4DB4-DE64-70B70FD6F54E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	rename -uid "6970EFBA-48A9-4DD1-4E98-BC9EFD663BAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	rename -uid "A1AA2D1B-4879-E071-4C41-3B8EBBF14528";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	rename -uid "E9DA3E4C-4CFF-0CC1-9B6B-C58F5F8D29C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	rename -uid "06862B57-4C87-49D8-0637-7BB46DA4EDB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	rename -uid "05FADCE1-493B-D15E-A4D4-FFADDD83D8C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	rename -uid "58A91F1E-4521-9DBA-2BFE-CFAF6619EEE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	rename -uid "92423B36-4450-75AF-133C-469E0AF7A1DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	rename -uid "E2D6786C-415E-EE58-2B4B-619313D5BBE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	rename -uid "E93C2654-4437-85FF-FFA1-F89599ABD8AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	rename -uid "C9B407DD-42DA-A603-F90F-B3AAC3B62137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	rename -uid "52F29955-4B14-ACE0-030D-6FBEEA93C3E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	rename -uid "EF23607F-4A17-3195-34D2-E28896CC6A8F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	rename -uid "DEEC4AE4-4C2D-9897-1814-3BB545E8F4EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	rename -uid "B32EC172-41D2-C5E7-ED22-8ABBB00B2648";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	rename -uid "B0F289C6-4502-1356-F572-1383CC9AD650";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	rename -uid "7179F2DD-49A0-DC08-A3FA-86A1B118294C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	rename -uid "B2DD90A9-46A1-491E-A144-B597DE2A40FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	rename -uid "B9F9F652-4642-D992-DB83-96A2F4A83B61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId141";
	rename -uid "85ED81F4-4848-EFEE-343D-B3B70A6A0AB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	rename -uid "B46B83A1-4F61-2D68-1D7B-55BFEBFE192C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	rename -uid "8652AACA-4884-29C7-9223-248F4E8A1B67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	rename -uid "8E4E96F3-42D5-4379-5F44-6AA00CDC670C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	rename -uid "6B34A3CE-48F2-645A-1F29-F28F323734F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	rename -uid "C70E828F-4DF6-0305-864C-76B997F958E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	rename -uid "FEADE9DC-4BA2-7CB3-117C-DB8129203333";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	rename -uid "E61800F8-4A4F-DB3E-8E43-9D96C2840CD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId149";
	rename -uid "8DA757DE-4F64-ACD4-6796-59A48F9E56E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	rename -uid "7CDD2D50-4E73-F3E2-4C41-9EBBA8E0791A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId151";
	rename -uid "48BA843A-46AE-BCDA-6F9E-A7AB50AB71ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId152";
	rename -uid "52B4716C-4526-C8DD-F6D2-BEB2049AFD89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId153";
	rename -uid "68C46D2C-45D2-450D-201D-CBACC8339393";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	rename -uid "1D006C98-4389-BEBB-AF5C-269EFF514731";
	setAttr ".ihi" 0;
createNode groupId -n "groupId155";
	rename -uid "823249AD-434F-B756-A965-079D7F1C3627";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	rename -uid "80A459FB-4931-2A8F-90B5-3FA615E8DC66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId157";
	rename -uid "3C6B7306-46F2-FDD5-1DFF-388E1DF823D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId158";
	rename -uid "7AE86947-44C8-57B7-A9A6-31A28D94DB26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	rename -uid "500CA8CE-4F8F-3006-2739-DEA8D6C878E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "2F2E9FF4-4520-0A70-12F5-598D5A00E620";
	setAttr ".ihi" 0;
createNode groupId -n "groupId161";
	rename -uid "12CFD7A7-4E5B-76DE-5706-79B5AF1545B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId162";
	rename -uid "7224BD5B-4230-2C80-CB8B-EDBC032B473F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId163";
	rename -uid "A1B1810E-47C1-8740-B7FE-1C955B063AA1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId164";
	rename -uid "C65AD1E8-4A7C-0F16-B69B-A6AF18B65AA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId165";
	rename -uid "96DDBE8D-4A41-3F2C-7E20-CFAFACE6ECC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId166";
	rename -uid "F1BC2AF7-47CD-AC5C-018C-80B1B2F24CE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId167";
	rename -uid "87600DB2-47C6-943E-E81C-909D7A63AFF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId168";
	rename -uid "F57C298E-4FCA-7E2A-7A35-DBB2FCA602E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId169";
	rename -uid "54CFCFBB-4BB6-9A18-7E83-C48ED16F041E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId170";
	rename -uid "D85FE52A-45B4-0436-4706-4EA3BC707A7C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId171";
	rename -uid "A7E2AA98-42AF-A5D3-BCF3-F7B71424CA86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId172";
	rename -uid "39B58CB3-4732-5D0A-6B37-99BCDFF80106";
	setAttr ".ihi" 0;
createNode groupId -n "groupId173";
	rename -uid "6FF7D627-4AAB-5B90-B714-B5BE2210818A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId174";
	rename -uid "D06F0597-4A6B-6212-9392-748EE07AA72D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId175";
	rename -uid "2AFF77DC-4523-E2BD-9448-36BBF0605B11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId176";
	rename -uid "F3E99BC3-4A8E-12DD-0043-1397006608A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId177";
	rename -uid "08CFD0E5-4FB3-E3C5-6708-86BD2BC95561";
	setAttr ".ihi" 0;
createNode groupId -n "groupId178";
	rename -uid "063E3A30-4FEB-B050-08B6-AF872BEC9EDE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId179";
	rename -uid "0AD2D645-4115-D4B9-99DC-16B5298F5AF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	rename -uid "D706ED99-45D5-86F8-45CF-78B5086575CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId181";
	rename -uid "1AB0C3AE-4082-3E08-56A7-808B14084038";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	rename -uid "FBC1132C-4A04-3139-A39C-1B95FEA5A578";
	setAttr ".ihi" 0;
createNode groupId -n "groupId183";
	rename -uid "A61718E9-4234-F007-64E0-5EB8352CF1BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	rename -uid "7B5E8465-44C5-4163-B6EA-8DA229141F66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	rename -uid "1A9E43C6-4A46-8630-AB15-A789DCDE364C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId186";
	rename -uid "65DDB1EC-4A53-B44D-29A6-30AA8A42F634";
	setAttr ".ihi" 0;
createNode groupId -n "groupId187";
	rename -uid "53BC9D35-4EF5-AB24-24CB-4B8AC67D9E97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId188";
	rename -uid "59C75782-4A80-6DE0-D9E8-A0A4883E8B5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId189";
	rename -uid "F4444130-4D8B-F881-5F8B-848473340A71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	rename -uid "1D86CED7-4142-6E9B-AB32-ED8F9A1FF21D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId191";
	rename -uid "DC34BB3F-4EBF-858C-5916-40BFD3583914";
	setAttr ".ihi" 0;
createNode groupId -n "groupId192";
	rename -uid "EC1A438E-4CE0-B2CF-0E54-0F9013967B0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId193";
	rename -uid "923F6FF8-4078-A16E-3B1E-888A823958EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId194";
	rename -uid "8490F899-4F60-C5DF-E843-5FAE49E26341";
	setAttr ".ihi" 0;
createNode groupId -n "groupId195";
	rename -uid "9EEFA252-4333-127F-1307-02A64D54FFCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId196";
	rename -uid "ECA1DB3F-4EC3-C800-8F4F-6E9C79E9F3BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId197";
	rename -uid "77865BDF-4C02-ECA2-C38A-8ABE48A6D9F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId198";
	rename -uid "728FBF1E-4FD4-4D79-3CD1-F4A3E721BC53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId199";
	rename -uid "2D2EBA92-4532-51A9-1C5B-0EB11FCB2A5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId200";
	rename -uid "C6A34BAF-40D7-44D7-7319-28AF983A41CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId201";
	rename -uid "C58BA1B0-46EA-0DD9-E626-80ACB62B13B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId202";
	rename -uid "3575D62E-43C4-7F70-F84F-8ABC5A5DBC46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId203";
	rename -uid "27BA968D-4F39-4C51-CCA3-F5BE8A821AC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId204";
	rename -uid "935BD1DC-489B-983E-3A77-E1A27C592D03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId205";
	rename -uid "8CD4E9EF-4270-475E-D355-369ADD9BC406";
	setAttr ".ihi" 0;
createNode groupId -n "groupId206";
	rename -uid "E860D4E2-4B33-A9AA-8A79-CBA1315F57D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId207";
	rename -uid "A9C2DA7C-4DD9-3923-DD7E-91AB2D049012";
	setAttr ".ihi" 0;
createNode groupId -n "groupId208";
	rename -uid "FAB2219E-4BB7-C009-F87F-9CBBDBFDB673";
	setAttr ".ihi" 0;
createNode groupId -n "groupId209";
	rename -uid "2A1A814F-4AD1-D917-CCCB-3B9ED11BF0C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId210";
	rename -uid "38AD7614-4791-5A4C-E509-079D434A208F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId211";
	rename -uid "FEA36215-456E-F88E-B421-3380062A9392";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	rename -uid "02A1D39E-43BD-BC15-4B3F-92930D2CCCC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId213";
	rename -uid "577E0D65-4FC6-4BD2-08D5-F48C886D4B45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId214";
	rename -uid "2CA8DD31-4236-A54E-7D5E-25A60D6B615B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId215";
	rename -uid "E0139F1A-4B61-3DE0-64CC-D9AC2A343782";
	setAttr ".ihi" 0;
createNode groupId -n "groupId216";
	rename -uid "BB2702A7-4A86-870F-D352-788609399D1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId217";
	rename -uid "2C50DD36-4863-C3AE-3A13-0985F86C287B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId218";
	rename -uid "93291AF8-47F7-1DC3-C70D-B2A0D3FC59FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId219";
	rename -uid "9BC5367F-4425-3E21-BED4-8B8171A5F9CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId220";
	rename -uid "D6723559-40AB-2747-F9AA-0D955E7A6189";
	setAttr ".ihi" 0;
createNode groupId -n "groupId221";
	rename -uid "2D7401F8-4720-362E-132F-A484C1BBECFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId222";
	rename -uid "F412D1B3-4B97-630D-4E0E-DB81B53F257D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId223";
	rename -uid "E44F83E2-4640-1016-6F0E-01827198DB44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId224";
	rename -uid "0F1366EF-45A5-6AB1-7C92-DF838CE3FC16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId225";
	rename -uid "643BEB2E-446B-492F-B3E0-368466A5E4F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId226";
	rename -uid "45A2BD0D-4CDE-B2E1-96FD-D383B6E394F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId227";
	rename -uid "4F7F5CC6-452B-FB5A-94BC-64A560104427";
	setAttr ".ihi" 0;
createNode groupId -n "groupId228";
	rename -uid "4EC23132-4ADE-002F-9CD4-52B6CD217D4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId229";
	rename -uid "503B1122-4A3F-5718-48C6-009480B7A507";
	setAttr ".ihi" 0;
createNode groupId -n "groupId230";
	rename -uid "0AA7AD80-4FCA-C3BD-D988-D1ACCCCA4B95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId231";
	rename -uid "0501861C-4CF5-29CA-0CCE-6F9291AA8BF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId232";
	rename -uid "2172CDD5-4BD8-67B0-97A0-0083925F652F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId233";
	rename -uid "3B57AFD2-4D52-77BD-A1EB-5D83C475BAAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId234";
	rename -uid "8D9DB12F-404A-A4C0-47D8-6A83A93B514B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId235";
	rename -uid "324864EC-4637-062B-ECB2-46A206B5AF42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId236";
	rename -uid "1EED818F-4F13-E036-2E73-5D9D9CD738D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId237";
	rename -uid "892E81D9-4458-10BF-68D4-8393E4695321";
	setAttr ".ihi" 0;
createNode groupId -n "groupId238";
	rename -uid "D3C21D90-47CE-BC14-4399-A482402490D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId239";
	rename -uid "B1FAA432-46D8-C586-E89C-8DA231A93E2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId240";
	rename -uid "C668FE1C-44CC-EE50-BD0A-D49321447991";
	setAttr ".ihi" 0;
createNode groupId -n "groupId241";
	rename -uid "89CED9B9-41AB-F6CB-55AC-F6904A3BDD9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId242";
	rename -uid "C913B8D8-4D1F-5CF7-2BC7-8A9814B0B7F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId243";
	rename -uid "4071303C-457E-4B74-E1AB-648440C3FCBB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "D3128F19-4842-78FF-57F6-9DB07B4FB8BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	rename -uid "339649DC-44BE-FF0F-1E03-41B5E0CA8339";
	setAttr ".ihi" 0;
createNode groupId -n "groupId246";
	rename -uid "B77A69F1-4D78-0222-F84C-D4B755A9E967";
	setAttr ".ihi" 0;
createNode groupId -n "groupId247";
	rename -uid "0BC240C1-4C42-4650-F4AF-0BB6258D7D50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId248";
	rename -uid "4799B1B3-46B1-8DF7-9864-5C9E6A91A1A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId249";
	rename -uid "A5E0DD9B-4E27-8354-F034-B09844B944CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId250";
	rename -uid "EDC762B2-476E-DBC6-E8D7-23A7CE6A2C81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId251";
	rename -uid "765FDA93-4735-112F-417F-89BFE870B418";
	setAttr ".ihi" 0;
createNode groupId -n "groupId252";
	rename -uid "57B6FC48-4EEC-1136-441B-4F840B97A500";
	setAttr ".ihi" 0;
createNode groupId -n "groupId253";
	rename -uid "0692B8D6-4D4E-CDF4-A762-13ABAC2B2B5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId254";
	rename -uid "5A5BB756-4FE0-B7B6-CA56-33BC442E7184";
	setAttr ".ihi" 0;
createNode groupId -n "groupId255";
	rename -uid "1B1D34A2-4CBC-38CB-E5D0-88B3B50BA879";
	setAttr ".ihi" 0;
createNode groupId -n "groupId256";
	rename -uid "538F5F82-4A3F-796E-0019-54A0F51A9C43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId257";
	rename -uid "7D5C0818-4A3B-2EEE-B87C-17B4FB670467";
	setAttr ".ihi" 0;
createNode groupId -n "groupId258";
	rename -uid "BD711E75-43F0-4721-DBE5-9784EF4FF609";
	setAttr ".ihi" 0;
createNode groupId -n "groupId259";
	rename -uid "3D6ACF3B-4A92-C5EA-00AE-FC885569E80B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId260";
	rename -uid "FDF681C3-4B34-124C-4FFB-F59FA2BD294E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId261";
	rename -uid "5B375AE1-40FF-4C49-9FCE-C18B79179735";
	setAttr ".ihi" 0;
createNode groupId -n "groupId262";
	rename -uid "A2879BD4-48A9-E535-9CF2-E0BBA6DAAFD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId263";
	rename -uid "F7FC8BFD-4A0B-E1AE-DD04-8AA06006B14D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId264";
	rename -uid "453F90A4-4920-FE62-542F-F382AC935EED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId265";
	rename -uid "D44C9697-4E66-5972-593D-E58EC533CE0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId266";
	rename -uid "3E65AE73-4889-B81D-A708-FBB96948AAF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId267";
	rename -uid "322AAC06-4C71-98E7-03AA-A8962E12317D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId268";
	rename -uid "E1A77259-4982-A239-F7DD-11B836275186";
	setAttr ".ihi" 0;
createNode groupId -n "groupId269";
	rename -uid "2627ABEB-4DDE-C3B0-DAAC-AE8C962D3048";
	setAttr ".ihi" 0;
createNode groupId -n "groupId270";
	rename -uid "D646EF40-43F0-AD29-D353-D4A624998F1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId271";
	rename -uid "657CC7C1-4DED-379C-D2F8-109A90C09962";
	setAttr ".ihi" 0;
createNode groupId -n "groupId272";
	rename -uid "15255AEE-489B-C0E4-622B-89AE1F15D0A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId273";
	rename -uid "D4FA9925-433E-CB4D-AE59-00AB97824997";
	setAttr ".ihi" 0;
createNode groupId -n "groupId274";
	rename -uid "087C5991-4D73-1DF5-FE78-13861DE17C20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId275";
	rename -uid "2F6326EC-4390-4592-920C-F79684B74C0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId276";
	rename -uid "C6C15AE1-4B12-AE8A-5E12-0A8321A113D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId277";
	rename -uid "1902D543-4613-00F6-0EBD-88A7D5BD70BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId278";
	rename -uid "4626A9F5-4D31-1217-46AF-D1A0F65240B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId279";
	rename -uid "767C55F5-47D6-5809-DE3D-05B67725CC88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId280";
	rename -uid "3ADEAE72-44DF-333A-CA1D-08B7891346D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId281";
	rename -uid "5EF3D6AB-4B47-51D2-FF62-8C974231261F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId282";
	rename -uid "A23D9CBE-457F-52B9-60D1-529E117CF83C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId283";
	rename -uid "9132FAB5-4E80-CCD6-37DF-ED8184F207B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId284";
	rename -uid "9AA86ADF-4A22-A408-6552-9BAD221DC84D";
	setAttr ".ihi" 0;
createNode polyNormal -n "polyNormal5";
	rename -uid "1033B190-4ED3-0C4A-D499-3D9063AD029D";
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".unm" no;
createNode deleteComponent -n "deleteComponent25";
	rename -uid "907CDB53-42ED-5931-8EA1-08B0DCA62AEA";
	setAttr ".dc" -type "componentList" 3 "f[2]" "f[6]" "f[8]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "F5C6038B-4B65-BB8E-0453-DF82EF1F89A5";
	setAttr ".dc" -type "componentList" 3 "f[1]" "f[9]" "f[11]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "2111690B-41F7-2D1B-D7F1-098482BAE0F5";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "F89428A6-403A-2508-545B-D4BF9B99F3C1";
	setAttr ".ics" -type "componentList" 7 "e[14]" "e[16]" "e[18:19]" "e[23]" "e[29]" "e[35]" "e[41]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "CE195A3D-4259-FDC4-9B5C-E39C80054E9D";
	setAttr ".ics" -type "componentList" 7 "e[14]" "e[16]" "e[18:19]" "e[33]" "e[39]" "e[49]" "e[55]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent22";
	rename -uid "1E4FE79E-4EB9-BF86-E911-2CB9701D32C0";
	setAttr ".dc" -type "componentList" 1 "f[26]";
createNode polyTweak -n "polyTweak5";
	rename -uid "D9BCFF7D-4847-F3C8-F5C7-B09C797541A9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[8:31]" -type "float3"  0.58151281 0 0 0.58151281
		 0 0 0.58151281 0 0 0.58151281 0 0 -0.58151281 0 0 -0.58151281 0 0 -0.58151281 0 0
		 -0.58151281 0 0 0 0 3.5762787e-07 0 0 3.5762787e-07 -0.58151281 0 3.5762787e-07 0.58151281
		 0 3.5762787e-07 0 0 3.5762787e-07 0 0 3.5762787e-07 0.58151281 0 3.5762787e-07 -0.58151281
		 0 3.5762787e-07 0 0 -3.5762787e-07 0 0 -3.5762787e-07 -0.58151281 0 -3.5762787e-07
		 0.58151281 0 -3.5762787e-07 0 0 -3.5762787e-07 0 0 -3.5762787e-07 0.58151281 0 -3.5762787e-07
		 -0.58151281 0 -3.5762787e-07;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "11FDABEB-4050-4B4D-984E-FF8F51ABA8FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0 0 1;
	setAttr ".wt" 0.23891790211200714;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "8898D12A-4D54-1736-4520-68BDF48E33F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2 0 0 1;
	setAttr ".wt" 0.58502256870269775;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "0260A3C0-45B2-316E-34CC-AD972A8E3D48";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.5 -0.5 0.5 0.5 -0.5 0.5
		 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
createNode polyCube -n "polyCube4";
	rename -uid "F692C951-41BF-4BD5-BF72-69922EE83911";
	setAttr ".cuv" 4;
createNode groupId -n "groupId426";
	rename -uid "98601110-48E1-00F7-ED69-CD8AFAC142A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId427";
	rename -uid "7CE82059-4CCB-E281-6C3C-BCB60049DB39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId428";
	rename -uid "84112663-4DAC-8942-B9C1-CD825C00E7A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId429";
	rename -uid "FFB74C68-45CB-4003-BC31-D39030A1DA51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId430";
	rename -uid "D9D07733-4BB9-5F7B-A109-38A0FFE4CBF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId431";
	rename -uid "8B5B629E-453D-A4C0-8C5E-818D594C3B56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId432";
	rename -uid "E3185805-4997-46BE-12D5-22B6E7D799E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId433";
	rename -uid "FF28CA57-41F4-213B-20B1-3099FDA7CECD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId434";
	rename -uid "2FD99357-407F-1765-CE4E-61AE23800FD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId435";
	rename -uid "A18367AE-4BB0-9657-E899-27B41E89A0D2";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "B6A1B762-4720-CE26-BDF2-278AEB151541";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[3]" "e[5]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-16 0
		 6.66666603088379 0 -3.6666669845581055 1;
	setAttr ".wt" 0.49427706003189087;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "groupId436";
	rename -uid "85447F95-4C49-C8D0-A160-88A994F8213E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "B3DFB252-4B50-A0DF-CE92-0C9167E8D450";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode polySplitRing -n "polySplitRing9";
	rename -uid "8889168D-471E-E7C7-1A2A-728B92A7F5B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[4]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-16 0
		 6.66666603088379 0 -3.6666669845581055 1;
	setAttr ".wt" 0.5084185004234314;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent26";
	rename -uid "8E3D64C4-49B9-33A7-58FB-B6B197F68ED8";
	setAttr ".dc" -type "componentList" 2 "f[1]" "f[3]";
createNode polyNormal -n "polyNormal6";
	rename -uid "D208934B-4AD2-6FEF-C8EC-CE926CDAF602";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".unm" no;
createNode groupId -n "groupId437";
	rename -uid "A0D6CFB7-442D-A7F4-BA94-A1A61EBC8B30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId438";
	rename -uid "EFA5B2CB-4D59-1914-AA3B-0A99603D56B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId424";
	rename -uid "1003B3F8-4C72-77C8-EF96-47A6C8F8DE1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId423";
	rename -uid "E3BBA384-407C-13F3-330D-6188CB0F0EA0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId422";
	rename -uid "BCC2153A-4D4B-6B9F-E5C8-D2B05787DB1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId420";
	rename -uid "4EF7433E-4DB3-6A57-E940-F68B79985AAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId419";
	rename -uid "9CD09711-4284-F341-74C9-C487A82F7727";
	setAttr ".ihi" 0;
createNode groupId -n "groupId418";
	rename -uid "F44FE440-4E51-DE74-A7AE-6780AEC03124";
	setAttr ".ihi" 0;
createNode groupId -n "groupId416";
	rename -uid "D90AC31B-4689-4A12-BBD7-CABFEBAD35D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId417";
	rename -uid "98C6FB45-4428-A5BA-9DD9-56BFBC1B564F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId411";
	rename -uid "221111AD-437C-033B-77C3-CB98007985FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId408";
	rename -uid "EFF499DB-405C-E6B0-B45C-339693DB09ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId407";
	rename -uid "54303FB2-4CFC-05D6-738F-64AA2319489B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId404";
	rename -uid "F14E20F2-45E1-77AE-89D4-F4B8BF9F96C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId402";
	rename -uid "ECEA8B4B-4D6E-90A7-B128-159FB747E0AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId365";
	rename -uid "0E1467B0-436C-F060-0D6C-C1B91A4DB9C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId399";
	rename -uid "1E2AD869-41A3-3050-2FBA-CA8E45C37C49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId397";
	rename -uid "7EB4A22F-4616-5166-4818-7D9050B9A65C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId396";
	rename -uid "78B304B5-41D9-206D-3E6A-BD8945813D41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId375";
	rename -uid "AD041722-4875-1395-A7EB-DBB12C9C7C23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId376";
	rename -uid "4C438E72-48A3-D731-9CE3-C0A7899BBF1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId386";
	rename -uid "AA1E44BE-4F62-D7AD-1190-37AA5C19351A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId374";
	rename -uid "823357A9-48B8-4751-2884-52A19FB7F27A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId361";
	rename -uid "5CC13EDF-444C-8EE1-7E62-549C971BC82A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId373";
	rename -uid "915990C1-450B-D1A4-A2D6-F6A2381D3C9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId378";
	rename -uid "2E1BF54A-4511-661C-45FE-96B418601F1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId366";
	rename -uid "6E15EE61-4E43-5177-5D9C-65815B5AD6DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId363";
	rename -uid "4F525EA6-4C23-B145-E737-27B1457C37E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId392";
	rename -uid "9AEE396C-40A7-4088-0667-3190895A573F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId364";
	rename -uid "8FA2E57E-4DD0-580F-DB72-88858024ABBD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId390";
	rename -uid "A08498F9-4710-C593-15F7-E0BD460D3367";
	setAttr ".ihi" 0;
createNode groupId -n "groupId370";
	rename -uid "1072D3E2-4DC8-15EA-806D-3F9A7945EBCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId367";
	rename -uid "F951C11A-4696-8F7A-AE10-42BCC30A1DAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId362";
	rename -uid "FEA63CCE-4E56-7B23-5DA4-3A8CEA5B8DFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId400";
	rename -uid "AB816306-4118-C71F-3BCB-B4BBAA99A223";
	setAttr ".ihi" 0;
createNode groupId -n "groupId406";
	rename -uid "962C6D2F-4689-6908-72AE-32BF499F8DA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId413";
	rename -uid "F6A64169-461B-52BA-56CF-548BFA80CAA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId381";
	rename -uid "04DA1DD6-446E-DF34-E14D-0C9412245E9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId412";
	rename -uid "DD7F8564-4044-6C45-FAF9-2489B98FB1EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId384";
	rename -uid "AF90D756-4F0D-07BB-A68E-6DBC8B390A73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId380";
	rename -uid "08659F76-48A0-D26B-8741-869D066D7021";
	setAttr ".ihi" 0;
createNode groupId -n "groupId409";
	rename -uid "08034AED-4307-F16E-BCA2-4C870F89BA9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId394";
	rename -uid "0155E6D6-4AF1-7CE1-5230-3EA6382B0F12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId389";
	rename -uid "34349CDF-41E2-951A-501F-ECA2AE092E3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId387";
	rename -uid "5C6521B7-4274-B3BB-60EE-548F9F92B01F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId403";
	rename -uid "69E04D5D-4842-5B18-9D54-E1992F57C586";
	setAttr ".ihi" 0;
createNode groupId -n "groupId405";
	rename -uid "348561A8-44EF-7A32-C6B1-AFA2DC102BCF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId398";
	rename -uid "17A31A35-44A9-E788-8EA5-EB98827D9485";
	setAttr ".ihi" 0;
createNode groupId -n "groupId395";
	rename -uid "E0FB0F1F-4B07-DA2F-B20E-4BAA0549E7E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId382";
	rename -uid "D8459429-4AAC-B1D0-F810-FD8C7A23AD35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId368";
	rename -uid "24B5E253-4193-CFB4-E0E1-1EAEF54B5A79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId372";
	rename -uid "AF3C0B33-488C-F235-3B56-0E8E30BBE6C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId385";
	rename -uid "B15C378E-453E-6441-0FE8-F3B9ABCE2B7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId393";
	rename -uid "97C705DB-4406-A13F-052F-DCAC0876AE26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId421";
	rename -uid "E0DCB337-4406-5ADB-AC71-679459EE4F31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId415";
	rename -uid "A4A8029E-49BE-5AB5-F808-5A9D5DB91FE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId410";
	rename -uid "9AE69D8B-4287-C1CA-02CE-648521AAB08F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId379";
	rename -uid "6B61A573-49D9-B326-A7A6-5283F0C1B3BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId360";
	rename -uid "AE5930D4-492F-D995-87AE-F7863A966DEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId414";
	rename -uid "D10F6472-47B2-EAD6-EA46-ACB3606783F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId377";
	rename -uid "BFA16A7F-4BFB-8D9B-311D-CC80D164B34F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId391";
	rename -uid "9BE3F938-49BE-5071-AED9-609580A2D0DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId388";
	rename -uid "108FEC4D-4D58-6DCB-A947-10AC4DCF8828";
	setAttr ".ihi" 0;
createNode groupId -n "groupId371";
	rename -uid "256AA1A0-4058-3D5F-3357-7AAA2F4BE875";
	setAttr ".ihi" 0;
createNode groupId -n "groupId401";
	rename -uid "EB42E786-4703-98DC-F730-4ABA17B7648D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId358";
	rename -uid "3E32C26E-4E30-F0B5-81A7-70A98C26686A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId356";
	rename -uid "CBB239E6-455C-0E5B-B349-A2B62A79DA80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId353";
	rename -uid "B3FABAB4-4519-8A1D-0B03-0DBAC898E21D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId351";
	rename -uid "66AAFA51-44C6-FF85-4816-4F80BD80E335";
	setAttr ".ihi" 0;
createNode groupId -n "groupId349";
	rename -uid "00283072-4C1D-FFCD-A7B6-3F91048588CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId348";
	rename -uid "2F7E3B10-4350-E85D-BC28-FEB7E6D6AD09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId346";
	rename -uid "641A5853-4EFA-5D1F-D393-B495676D1AA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId344";
	rename -uid "DBF3F320-4452-B4AE-1FF1-DD9474DB9D6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId342";
	rename -uid "654D5C84-4331-40CE-6ABA-B9B2E2A9B634";
	setAttr ".ihi" 0;
createNode groupId -n "groupId339";
	rename -uid "B269A3DB-4491-68F9-D311-78987215D37F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId333";
	rename -uid "AD454B4E-4D81-460F-58B9-54A8398CC198";
	setAttr ".ihi" 0;
createNode groupId -n "groupId314";
	rename -uid "45F7931D-4B06-DF36-D0D4-50BC77886DE8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId300";
	rename -uid "595F4E1C-48CC-70F3-30E5-9A8C4D98E201";
	setAttr ".ihi" 0;
createNode groupId -n "groupId308";
	rename -uid "EC2B8AC4-4F78-132B-FCEB-19991D13587F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId312";
	rename -uid "C1868D07-4A24-784B-9EB1-1BA82B3E06AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId296";
	rename -uid "6EE97820-4382-F84E-0A62-A5A88D4C4397";
	setAttr ".ihi" 0;
createNode groupId -n "groupId317";
	rename -uid "4930D8C8-4A32-5ADD-3EAA-17A427B2ADF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId330";
	rename -uid "873CF601-4FBF-5466-58BC-42A5BE1E9E7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId332";
	rename -uid "F3CD8775-4F55-A05F-B97E-438109ED3FDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId304";
	rename -uid "924793F9-4A8C-DB79-330D-14A1EE8B88B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId316";
	rename -uid "0299E909-40A4-D76D-FA89-DA977696C2D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId326";
	rename -uid "01678207-4F3D-82F3-EBA1-9DA1F33A0ABC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId325";
	rename -uid "CA386B8E-41FD-4FCA-8E0D-6A9E842D4B0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId323";
	rename -uid "CD7663A7-465C-D953-8D43-2CAFBD3068EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId298";
	rename -uid "1D8DD17E-469B-A225-7D1F-DFB1C91AD150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId321";
	rename -uid "FC5B09E9-4D5A-C683-AEE4-77B10611C408";
	setAttr ".ihi" 0;
createNode groupId -n "groupId311";
	rename -uid "50F93103-462E-F36A-402E-1580B569D138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId306";
	rename -uid "946F2981-448E-CCC9-750F-39A3FEFF2E9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId354";
	rename -uid "E45F6F56-4B12-3A92-9B23-5CA0324B9D35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId324";
	rename -uid "F930ABD0-4E3C-4E60-BF1C-418FE85ACA34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId302";
	rename -uid "B5DE4113-4E65-9AFE-9CF4-8E83E0ACBAC6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId345";
	rename -uid "441DFE04-4868-0C21-CA02-1C8DE662484A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId334";
	rename -uid "A8BD1F29-46C2-5638-3A6B-84BF3D67C43B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId322";
	rename -uid "26EF4AD3-4D45-DEB3-381E-A9BF68124045";
	setAttr ".ihi" 0;
createNode groupId -n "groupId315";
	rename -uid "E675BE8B-445A-47A3-E446-4E9DB0ABC4B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId310";
	rename -uid "385D6C7E-4B95-6750-365C-4680CF082195";
	setAttr ".ihi" 0;
createNode groupId -n "groupId301";
	rename -uid "96D400C6-48DE-EACD-0AFB-118A23C6DDAD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId305";
	rename -uid "24E9FB82-48C1-7AD7-679A-2CB31F55AC36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId297";
	rename -uid "4DE102E4-4A1D-9FC2-ADC7-D48632B6D959";
	setAttr ".ihi" 0;
createNode groupId -n "groupId320";
	rename -uid "9F6EE78E-4ED6-252A-30DA-4FB78CAE9DFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId359";
	rename -uid "4941F0CD-4ECA-EB72-722D-F288035787BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId328";
	rename -uid "DD461463-4CBF-444D-C3E4-6FA7796A1CBD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId336";
	rename -uid "D5BD9FE7-41F7-F217-0BA0-2C987E1DB270";
	setAttr ".ihi" 0;
createNode groupId -n "groupId329";
	rename -uid "1694A0F1-425C-2583-A215-C2B6F7274AD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId357";
	rename -uid "F28E372D-4B47-ABF7-6A91-FF9A733EFE1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId303";
	rename -uid "2D50FD48-43D4-6583-D1B2-A18987798D27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId337";
	rename -uid "588A37C4-47FD-FFE1-1CBC-F58A86728E47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId319";
	rename -uid "BB309640-4E93-E8EA-E0A1-D68CFC1B7C49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId307";
	rename -uid "77927041-4AB2-4E8F-A351-3487D2029061";
	setAttr ".ihi" 0;
createNode groupId -n "groupId352";
	rename -uid "28DCCCF3-4A50-DC94-B9DA-8D865AAF9F83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId350";
	rename -uid "90783A0B-4671-4EE2-68E5-3F9BCF33F6F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId338";
	rename -uid "BD7E6A58-4667-6409-B172-6095322A486B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId347";
	rename -uid "BD25B662-4471-F19A-054B-D78C09E3A9D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId318";
	rename -uid "1CFC7523-4493-9D56-28AD-259F003EB7FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId343";
	rename -uid "5E34DBA1-4B77-6A78-EDD2-80BE196E832F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId340";
	rename -uid "9A190C91-4E2C-CCF4-7300-008633CF1008";
	setAttr ".ihi" 0;
createNode groupId -n "groupId335";
	rename -uid "27BC0147-47D9-A10E-0FE1-E09BC720BE62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId331";
	rename -uid "77ABE002-4746-9351-01E8-1C867030F0DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId309";
	rename -uid "F80CD81D-4DC2-D52D-3A09-4F810F17EC1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId295";
	rename -uid "BED22ADB-4A3F-91BD-EC09-71AC6BAC081D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId294";
	rename -uid "E459DDF1-4B3E-46D8-0A01-E3A078DAB73E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId292";
	rename -uid "75EE5E79-4494-489B-56C0-77982DBC0312";
	setAttr ".ihi" 0;
createNode groupId -n "groupId289";
	rename -uid "65E950D8-41A9-4655-452A-2DBAA88622FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId288";
	rename -uid "457FF246-41A9-35CF-C3D6-8EB58267BABE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId287";
	rename -uid "16CA4CFF-4029-5358-3BF2-E2BC0EAC8FBA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId286";
	rename -uid "921C3A10-4BB2-D9A9-7FC6-5A888D29697A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId290";
	rename -uid "5C9DEE93-49C8-D148-800D-EC83ECEDD6E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId293";
	rename -uid "FD2F1EF0-4429-C969-6646-36B4B3A6861F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId291";
	rename -uid "44D1B62E-4697-9016-2C0B-C6A57583E071";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "9A3A1AD4-486F-CF16-3ECE-F28CE7FC060E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	rename -uid "406BCDF2-414F-7A1A-6E70-BAB70EE148C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "CC431869-453F-3C0C-6E6D-F68ECA7D0A52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	rename -uid "F5EA3208-4DAF-7128-7F9A-10A1A5DC5596";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "A67ABBD0-494F-7370-8B4D-30AB065B0DC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "43C37BF1-4E52-4FE6-5344-6692EE2249B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	rename -uid "A5D158D4-4DF0-56DA-8D56-809B9C89626B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "95BE9866-4DCA-8559-7A1A-4EBD583D3AC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	rename -uid "D622479D-4F9F-E978-1949-3392FB356680";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "282DB002-4834-63A0-9831-AB94B74AE3A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "64464F39-4555-5CB6-0F62-9B8169946E9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "53A1342A-4635-2610-6571-65850F916E3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "F3EA7CBA-46FE-ACF9-F2B1-0D9C4FAE319E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "CE3216C8-4D91-43A9-C50E-A4B8F6CB11C2";
	setAttr ".ihi" 0;
createNode polySphere -n "polySphere1";
	rename -uid "F5694AEE-445D-0591-443A-81A2C61F6BE3";
	setAttr ".sa" 16;
	setAttr ".sh" 16;
createNode deleteComponent -n "deleteComponent28";
	rename -uid "89950E7D-4A03-094F-78F0-8D9DBC75F055";
	setAttr ".dc" -type "componentList" 3 "f[112:117]" "f[120:223]" "f[240:255]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "020D7890-4D66-A9AA-9276-1786C207B277";
	setAttr ".dc" -type "componentList" 1 "f[112:113]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "CC3207D4-49EB-9000-F3B4-35982FF8F6E6";
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.0944053220898529 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.59440529 2.9802322e-08 ;
	setAttr ".rs" 57408;
	setAttr ".lt" -type "double3" 1.4799359654427136e-17 -4.8572257327350599e-17 0.051434875052117433 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 0.094405322089852861 -0.99999994039535522 ;
	setAttr ".cbx" -type "double3" 1 1.0944053220898529 1 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "EC9FD52B-489E-7B4D-771A-6CA58133855B";
	setAttr ".ics" -type "componentList" 1 "f[112:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.32425585026042469 0 0 0 0 1 0 0 1.0944053220898529 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -2.6485061347039514 0 ;
	setAttr ".pvt" -type "float3" 0 -1.891739 7.4505806e-09 ;
	setAttr ".rs" 59348;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20572789013385773 0.75347141285417085 -0.20572787523269653 ;
	setAttr ".cbx" -type "double3" 0.20572789013385773 0.7600624751371452 0.20572789013385773 ;
createNode polyCube -n "polyCube8";
	rename -uid "F4BAD002-4AAF-99D7-A4FC-D3BB60FDDF62";
	setAttr ".cuv" 4;
createNode groupId -n "groupId439";
	rename -uid "E21D41D6-46BD-D032-B526-35A339E9FF6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId440";
	rename -uid "144F2FF9-4633-EA00-6681-3BA979FE2636";
	setAttr ".ihi" 0;
createNode groupId -n "groupId441";
	rename -uid "27203213-481B-74EF-5B4A-C9B0BF58D785";
	setAttr ".ihi" 0;
createNode groupId -n "groupId442";
	rename -uid "78E8F11F-4C77-50F1-711B-AC95322A41AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId443";
	rename -uid "EBFE0DB9-47A3-026D-7611-3A8AD3980017";
	setAttr ".ihi" 0;
createNode groupId -n "groupId444";
	rename -uid "18E20C55-414F-C447-36FF-7394AE4C2621";
	setAttr ".ihi" 0;
createNode groupId -n "groupId445";
	rename -uid "224E1C88-46B3-C7E1-125A-9D9A4672E661";
	setAttr ".ihi" 0;
createNode groupId -n "groupId446";
	rename -uid "F4B551C7-40FA-4A6A-ED81-65854723986E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId447";
	rename -uid "D732F069-4617-D639-0283-7EA643B16FB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId448";
	rename -uid "680F0AB0-44B5-C1D6-4634-FF9A6F53D7EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId449";
	rename -uid "141E0592-4461-39AB-C584-82BE420BCD79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId450";
	rename -uid "C2B19D69-40BC-51A2-9576-D29C77D0F95B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId451";
	rename -uid "B30ECA67-48C8-9ECD-E003-CFA1AE53C233";
	setAttr ".ihi" 0;
createNode groupId -n "groupId452";
	rename -uid "FC144921-4547-E9FE-A594-93A4DECAEA04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId453";
	rename -uid "4DB05EFF-4B8F-5278-6334-ACADE262797A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId454";
	rename -uid "99A452A6-4E29-3D65-77CF-6ABB08ECB25C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId455";
	rename -uid "9FA9D21B-4288-BBCA-D8B2-5DA835270B06";
	setAttr ".ihi" 0;
createNode groupId -n "groupId456";
	rename -uid "9EFD4647-418A-8D6B-D83C-56B70F565F91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId457";
	rename -uid "8E26CF86-45B4-4C17-5B1C-CBBD0FA7EBFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId458";
	rename -uid "4B50FCB7-4527-CAEE-C607-EC82DA5F9B7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId459";
	rename -uid "A9D0A7A4-4566-4740-D17B-43BA21B1963A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId460";
	rename -uid "0E68DEBE-40CA-E658-4C4D-20914931F9E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId461";
	rename -uid "28D9E291-49AD-A7F3-54FC-83BAAF53E497";
	setAttr ".ihi" 0;
createNode groupId -n "groupId462";
	rename -uid "6A2A393B-485C-F483-A4E3-B19AE71A31BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId463";
	rename -uid "E894FA88-4AF3-CB56-9BCB-D5B6BFF9F11A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId464";
	rename -uid "C9522EB5-4980-3FEB-616B-A0B20C883E3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId465";
	rename -uid "4EDF534E-4AFD-C1C7-4300-CAACA991191F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId466";
	rename -uid "4B176465-4635-64DB-505F-A0A54656C0EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId467";
	rename -uid "E39147AE-49A0-EF1D-876B-91B64AEB0DF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId468";
	rename -uid "0F43E4FB-41A2-D9FF-26B2-5C94AC567A04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId469";
	rename -uid "AE67F9DD-421C-3988-2C69-FEB07D64416E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId470";
	rename -uid "25599582-48F1-4FEF-252E-F4B457257700";
	setAttr ".ihi" 0;
createNode groupId -n "groupId471";
	rename -uid "8F6646E5-41DF-9935-74E4-35A863555EE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId472";
	rename -uid "73BE5965-41C6-FAFF-02F9-F9A34485F51B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId473";
	rename -uid "7D8531A2-4FE2-1249-6136-0D9EDB921FB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId474";
	rename -uid "E80D8A07-44AC-D920-B79C-10ABF868DDD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId475";
	rename -uid "14738111-4EDC-DA9E-AC73-C0968F57A373";
	setAttr ".ihi" 0;
createNode groupId -n "groupId476";
	rename -uid "40794E6E-40C7-44D9-EA54-B7B7E912F043";
	setAttr ".ihi" 0;
createNode groupId -n "groupId477";
	rename -uid "C0832961-4D0C-3849-E003-EABDDC0B40D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId478";
	rename -uid "A67989B8-44F6-931F-BF0B-DC854515E3A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId479";
	rename -uid "8227AC74-4877-AA0B-577E-36ADFD4C9819";
	setAttr ".ihi" 0;
createNode groupId -n "groupId480";
	rename -uid "CF630FC8-4E66-AC65-2780-89A7AF719362";
	setAttr ".ihi" 0;
createNode groupId -n "groupId481";
	rename -uid "AA488826-4A7B-2F3C-A0DC-73B016F260A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId482";
	rename -uid "967D94A2-474D-31D1-D2D2-08B437BE63CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId483";
	rename -uid "B373AAE8-4233-CEF5-81C6-5EAA7DC048C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId484";
	rename -uid "EAA7D8F7-4306-303C-361B-28AE99AD3D90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId485";
	rename -uid "7FF3AF28-4D2E-AB1D-95F5-E59D22518E18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId486";
	rename -uid "F92FD3A7-4220-9CF5-D020-CCA3C156F695";
	setAttr ".ihi" 0;
createNode groupId -n "groupId487";
	rename -uid "E558CDD9-43F8-03BB-0630-0CB5FA57F387";
	setAttr ".ihi" 0;
createNode groupId -n "groupId488";
	rename -uid "83AA9543-432E-935E-76AF-76946C765B49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId489";
	rename -uid "CF133E9C-41D0-F8DB-0463-E5A965B811F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId490";
	rename -uid "64DF869F-4BD9-B700-FE0C-48A39B7ABF69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId491";
	rename -uid "4AA8FA4B-4E5B-C581-4561-98A352101945";
	setAttr ".ihi" 0;
createNode groupId -n "groupId492";
	rename -uid "E21C7B30-4879-EB88-0D87-93A6E4A748E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId493";
	rename -uid "A771DD33-4689-7A01-EB8F-83A1C898BAC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId494";
	rename -uid "488BC447-4273-1D60-05CC-B2B9A311594D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId495";
	rename -uid "CC9A7711-4177-758C-B4A8-4BB99F8D9C6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId496";
	rename -uid "56D713F2-4B42-75EA-D764-44883962A332";
	setAttr ".ihi" 0;
createNode groupId -n "groupId497";
	rename -uid "5F3B4942-46AA-44D2-BDEB-41ACB2ED7697";
	setAttr ".ihi" 0;
createNode groupId -n "groupId498";
	rename -uid "6D9B4C63-42E6-AC5A-F8B1-99969FE72771";
	setAttr ".ihi" 0;
createNode groupId -n "groupId499";
	rename -uid "E500C61A-49B9-3E51-C377-D69729AEC360";
	setAttr ".ihi" 0;
createNode groupId -n "groupId500";
	rename -uid "EBCF9546-431A-092B-A476-A39716903B09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId501";
	rename -uid "290D762F-4B99-16FB-E54D-05908B6F5BD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId502";
	rename -uid "F9071880-4FD6-217D-E30F-2F8F715F3160";
	setAttr ".ihi" 0;
createNode groupId -n "groupId503";
	rename -uid "437D231D-4CD8-6E86-6484-8489B41E40B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId504";
	rename -uid "456FE5F9-4E0D-452F-357E-87BC3BC4BDD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId505";
	rename -uid "B2272CD3-4F42-B2AA-F2E6-09B0455B871E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId506";
	rename -uid "B646F3F8-46B2-69C0-3EB7-1CB407BDFFAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId507";
	rename -uid "0EAAA492-4EAA-ECAD-1F41-738181F9405F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId508";
	rename -uid "8DF8D0A2-4DBE-3CF0-5D93-D492FCBBB9F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId509";
	rename -uid "68050F43-4526-3A9E-C7D6-CA891CB85892";
	setAttr ".ihi" 0;
createNode groupId -n "groupId510";
	rename -uid "9EF236F0-48BD-C9DB-634C-359C77ED4F84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId511";
	rename -uid "145DF87A-4EFA-B34E-5AE9-468E5DF505E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId512";
	rename -uid "E36ACD4B-40EF-EADF-995F-27B481A5A8F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId513";
	rename -uid "A3237ED5-4DBB-078E-18CF-2E8C98018794";
	setAttr ".ihi" 0;
createNode groupId -n "groupId514";
	rename -uid "CA90EE47-4D75-421F-05FC-0D93C8B0E7AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId515";
	rename -uid "B229E9C4-414E-E111-EABF-3D813AFEB713";
	setAttr ".ihi" 0;
createNode groupId -n "groupId516";
	rename -uid "F2829A25-4EB1-8102-C6C1-0E861F1AD0B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId517";
	rename -uid "07E1817B-43AC-8C43-A9E2-4EADA032B401";
	setAttr ".ihi" 0;
createNode groupId -n "groupId518";
	rename -uid "902FDDE9-4331-8B93-70EF-128E319A0950";
	setAttr ".ihi" 0;
createNode groupId -n "groupId519";
	rename -uid "637EE3B2-44E8-E510-C63D-B2B09D1EAE0E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId520";
	rename -uid "E1FDE4EF-4008-5E63-553C-EFB59749A408";
	setAttr ".ihi" 0;
createNode groupId -n "groupId521";
	rename -uid "ACBD2A78-45E8-8E7C-A577-7594ECA7B58A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId522";
	rename -uid "E0D4DA1B-40FA-88C7-0C73-CD9FFB79DAD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId523";
	rename -uid "D672F6AA-402E-09EC-71E3-F8AEE4270DCD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId524";
	rename -uid "AC12A2F1-4935-A652-CF6B-4596875980B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId525";
	rename -uid "31832D46-4E23-8363-60B1-DA95B40E98CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId526";
	rename -uid "05DF2AF7-4995-9FCA-D208-24A6399744CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId527";
	rename -uid "5C8E8E8E-4DCC-0772-D222-22BF4925A4AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId528";
	rename -uid "2FA4A520-41F7-E43B-0A9E-409FAAD36A9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId529";
	rename -uid "BBC919AA-4FC5-DD69-90B2-B194FF55A691";
	setAttr ".ihi" 0;
createNode groupId -n "groupId530";
	rename -uid "4F2E0FC6-4790-2570-46D6-3686BD1B6125";
	setAttr ".ihi" 0;
createNode groupId -n "groupId531";
	rename -uid "1643A251-4889-9087-2EE9-FCBF9113D3C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId532";
	rename -uid "D70DA49B-4D4D-92E6-40A6-78B0D485E925";
	setAttr ".ihi" 0;
createNode groupId -n "groupId533";
	rename -uid "CDFAD2EB-47D9-A164-7376-FC86459A59F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId534";
	rename -uid "DDFA33E3-4BA4-A155-71CC-B08139B9AF80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId535";
	rename -uid "7CB75C53-4FE7-2DB2-33B5-7BBBAA6F45E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId536";
	rename -uid "75133DFE-48FA-98B4-C27E-5BA5415F0741";
	setAttr ".ihi" 0;
createNode groupId -n "groupId537";
	rename -uid "F243D976-4186-1CD3-E57C-E8AAAE00890B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId538";
	rename -uid "5D75F2F8-42D6-089E-CC29-2EB8F06CAF55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId539";
	rename -uid "FFE52D18-478B-A226-A80F-23BF6459AEBA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId540";
	rename -uid "48395EE5-4A3F-8073-AF7E-1CA78D00D710";
	setAttr ".ihi" 0;
createNode groupId -n "groupId541";
	rename -uid "ECB32104-4A83-8F68-4CC2-798CFFE229A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId542";
	rename -uid "26EFDA08-456B-681D-E010-7A9680658B00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId543";
	rename -uid "5536CA37-4B82-BDCC-C8E9-09B0CD6A79E6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId544";
	rename -uid "C7A216FB-45C2-3262-9D90-0D92C58CA541";
	setAttr ".ihi" 0;
createNode groupId -n "groupId545";
	rename -uid "B67A3C1F-41E1-3978-67B9-67A4DB5E6FF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId546";
	rename -uid "356C6339-4567-5E02-4E9B-04B355795AE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId547";
	rename -uid "1153431F-4403-C8A6-C80C-82BDDF0845B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId548";
	rename -uid "F9E1D958-4211-01D4-C571-2283689A04E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId549";
	rename -uid "D7322206-426C-6A7C-F090-F88FE7D65CDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId550";
	rename -uid "F36689C3-451B-9DD4-727B-2CA1DEE6F0CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId551";
	rename -uid "0AF6771B-47E2-7D34-AE08-7190A1FAB857";
	setAttr ".ihi" 0;
createNode groupId -n "groupId552";
	rename -uid "010B38F5-4681-CD8B-D9F6-268FE91BF2BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId553";
	rename -uid "005BE5CE-4C75-D83B-F53A-49BD5EBE54F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId554";
	rename -uid "C91B26BD-4340-CA0A-2CDC-F3808F66F101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId555";
	rename -uid "7D5244E0-4F7E-4A7E-6368-C1B8C8B87668";
	setAttr ".ihi" 0;
createNode groupId -n "groupId556";
	rename -uid "F8C7785A-496D-2BA1-40DB-00B41E9C8B66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId557";
	rename -uid "E9F08554-47D0-EEB6-94B0-E5A4996F8EBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId558";
	rename -uid "0470AB0C-43F7-9C0A-81DF-56A1C4B2C2F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId559";
	rename -uid "472AAB26-4FD6-01DA-2E84-9AB761867274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId560";
	rename -uid "5376DF31-414A-7206-797A-08A9022D3E88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId561";
	rename -uid "4D558014-4171-2D7A-3F9F-A48274D71757";
	setAttr ".ihi" 0;
createNode groupId -n "groupId562";
	rename -uid "FF3D890E-4A78-846F-2C42-65893A9AC981";
	setAttr ".ihi" 0;
createNode groupId -n "groupId563";
	rename -uid "8B00F570-4244-2856-5871-8C86AEB7CD40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId564";
	rename -uid "485EF47E-49C7-9E74-38EA-539B6DC08AE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId565";
	rename -uid "F2CB8768-4484-9AEA-6643-80A1D01E1594";
	setAttr ".ihi" 0;
createNode groupId -n "groupId566";
	rename -uid "EFE38A99-4FF2-FF78-0F92-40BE378CA7FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId567";
	rename -uid "EE48A7D0-4CA8-D086-1610-F08869D2704A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId568";
	rename -uid "F7349B63-4F92-8ACA-55FA-E18514F59522";
	setAttr ".ihi" 0;
createNode groupId -n "groupId569";
	rename -uid "A03D04E3-4326-B70F-31C3-CB980AA02D54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId570";
	rename -uid "AE20C84C-45CC-6894-7EF8-AAB5B8118FC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId571";
	rename -uid "A3361978-4438-6A4D-33FE-2281DC3DC87F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId572";
	rename -uid "A585547A-4BA1-ABD1-CFCE-64A8E5E8CA75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId573";
	rename -uid "AE872619-473B-82A4-FBDF-6797F6FC0180";
	setAttr ".ihi" 0;
createNode groupId -n "groupId574";
	rename -uid "547DB6D2-4DEF-E5EE-9872-8E9B8755D64E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId575";
	rename -uid "9865227C-4BE8-EB9A-262D-068F8918825C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId576";
	rename -uid "249FA594-45AE-0984-1156-AAABC9B6A063";
	setAttr ".ihi" 0;
createNode groupId -n "groupId577";
	rename -uid "40F6E64E-4F69-94E5-759B-B59611229DDD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId578";
	rename -uid "E6E55121-4F28-255F-F9FB-3B8C9A7ACF95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId579";
	rename -uid "C6ACF7AF-43DC-1F18-8C2D-16B8367459FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId580";
	rename -uid "41F90756-479C-4641-51B2-B7AD7EEE2F01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId581";
	rename -uid "B2EB8676-4521-5EF0-B11E-73866A0A4D70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId582";
	rename -uid "7AA2CE0E-4A58-1A53-CD99-FA9E57310DB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId583";
	rename -uid "504D8DD9-4728-DA88-020F-1DBCF8D0086C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId584";
	rename -uid "BA825E1D-43BE-24CF-BC59-3CB3A5A45787";
	setAttr ".ihi" 0;
createNode groupId -n "groupId585";
	rename -uid "9481DD68-4131-76A3-BA31-E2BB6535B185";
	setAttr ".ihi" 0;
createNode groupId -n "groupId586";
	rename -uid "96FD2225-4D71-6C75-2C6C-089F967E52A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId587";
	rename -uid "8173C951-4DE2-F9A5-DDA3-F7A120F6933F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId588";
	rename -uid "306D57ED-4407-3B10-4AEE-EA8C8A2F0A5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId589";
	rename -uid "6E1C46FE-47B6-88D1-CB13-CABAD36ECF3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId590";
	rename -uid "5E233E94-4C30-EE49-1565-08A3C9E52D20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId591";
	rename -uid "8C002D81-4FC4-9EEC-7FE1-A8AF4BDADC9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId592";
	rename -uid "66FF1248-4D12-A1DD-716A-9B89BF6D140A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId593";
	rename -uid "A1866314-47D1-9AB3-6164-B6AD9BC5BD68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId594";
	rename -uid "19F5704A-455E-2D94-BA2E-E2B1182595BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId595";
	rename -uid "B4BBFACB-4863-2F1A-00BC-1B94EAAF8406";
	setAttr ".ihi" 0;
createNode groupId -n "groupId596";
	rename -uid "B68D5F7E-4B8B-F871-3885-F7AF704A4809";
	setAttr ".ihi" 0;
createNode groupId -n "groupId597";
	rename -uid "5CF59FF3-4709-EBF8-C2ED-08832081B831";
	setAttr ".ihi" 0;
createNode groupId -n "groupId598";
	rename -uid "1E8DDDCD-4A89-BF74-77CA-719AA09E3D6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId599";
	rename -uid "F9160ED8-46B6-084C-7430-A7AD277ED48F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId600";
	rename -uid "FBABA9D1-482E-87AE-3834-638966CD137D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId601";
	rename -uid "7D1561D5-4F84-6776-5574-A080944DEDB3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId602";
	rename -uid "F39B9D06-412C-B746-49C9-F79652C85035";
	setAttr ".ihi" 0;
createNode groupId -n "groupId603";
	rename -uid "3CE8A2D4-4B87-0B55-5AF0-D393907B2A6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId604";
	rename -uid "7CB17539-49A0-16E2-B7CE-40A1AB1B3FE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId605";
	rename -uid "F566D0E2-4D1C-5B40-54FC-FA860CA59044";
	setAttr ".ihi" 0;
createNode groupId -n "groupId606";
	rename -uid "4305CCEA-4B47-9C50-40A4-BFBEE53134FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId607";
	rename -uid "2E5ADB50-459D-3CB4-C0CF-5F8ED53EBA4C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId608";
	rename -uid "1158B1C2-4CF7-F957-2F37-46B819A21F2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId609";
	rename -uid "23B5DD6F-406B-461E-66B2-9B93B25A1663";
	setAttr ".ihi" 0;
createNode groupId -n "groupId610";
	rename -uid "981F6E22-4E68-B124-556C-16AB17226D09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId611";
	rename -uid "8ABBCB02-4020-F556-A94E-9397D758B273";
	setAttr ".ihi" 0;
createNode groupId -n "groupId612";
	rename -uid "7E12ABC4-4B1B-C868-B1AF-9EBE2BE917C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId613";
	rename -uid "E41F63AE-47B2-B36D-FECC-FEAB30778BC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId614";
	rename -uid "CC827E7F-4ABB-1067-C381-EB82A8B6856E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId615";
	rename -uid "A61952A6-49C6-37DE-4450-37B5AE08E639";
	setAttr ".ihi" 0;
createNode groupId -n "groupId616";
	rename -uid "B92FC24D-48CF-AFE1-3F51-20A550D456B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId617";
	rename -uid "A0580A62-4736-B6D6-8378-4D8792E3C3A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId618";
	rename -uid "346688B2-4CA4-1FB2-4C0B-E7B660ECC1CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId619";
	rename -uid "82DF2A0D-4EBD-C37E-F6AA-ECB0687F5777";
	setAttr ".ihi" 0;
createNode groupId -n "groupId620";
	rename -uid "350C04CD-4E2E-329C-E24A-10B511433DBE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId621";
	rename -uid "1FD9396B-4134-F3BA-9229-3BB6DED809B6";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "61091B29-4936-611D-7503-82ABDC63008F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[2]" "e[6]";
	setAttr ".ix" -type "matrix" -1 0 -1.2246467991473532e-16 0 0 1 0 0 1.2246467991473532e-16 0 -1 0
		 0 0 6 1;
	setAttr ".wt" 0.63758689165115356;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "groupId622";
	rename -uid "D4F63207-4BFF-919E-4AE6-D1A0D755A6CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "37B696E5-4B36-8C4A-EF75-AAAEC547537D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode polySplitRing -n "polySplitRing20";
	rename -uid "95B440B7-4829-5DC3-1F56-33A3A26EFE01";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[2]" "e[6]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-16 0 1 0 0 1 0 0 -1 0 2.2204460492503131e-16 0
		 0 0 6 1;
	setAttr ".wt" 0.6954801082611084;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "groupId623";
	rename -uid "877E0770-40AF-004B-2A11-B5859FBD1076";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "F176DA5C-4A3E-7B76-0766-DF9C4CB0F212";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode polyCube -n "polyCube11";
	rename -uid "6DFF517D-434E-6428-2DE1-1F80A939605B";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "CA40C187-4CC1-692E-81E1-7B96B88D608B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.63591140508651733;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "BE58E62C-49BD-9E56-4901-EF916470100C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[8:9]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.42057129740715027;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "3A2B4A5D-4016-E3C7-DF89-D08F8E0AD1C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[8:9]" "e[14]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.44155770540237427;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "98EE2161-4897-C887-51DB-FA961EFBFFA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[26]" "e[31]" "e[38]" "e[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.36908364295959473;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "90ABA1F0-4CC8-C52B-BAEE-979FEB733AF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[18]" "e[20:21]" "e[23]" "e[50]" "e[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.37708231806755066;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "ED1C3008-460D-06D8-E92E-6D8F58706ADF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[12:13]" "e[15]" "e[17]" "e[22]" "e[30]" "e[34]" "e[42]" "e[46]" "e[58]" "e[66]" "e[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.29140451550483704;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	rename -uid "E0374786-40D1-C14E-6C70-068CF63BD1C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[24]" "e[28]" "e[36]" "e[40]" "e[48]" "e[56]" "e[68]" "e[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.52036988735198975;
	setAttr ".dr" no;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing28";
	rename -uid "074A062A-4F27-9744-4C25-D4A2D075DBEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[12:13]" "e[15]" "e[17]" "e[30]" "e[42]" "e[58]" "e[76]" "e[80:81]" "e[97]" "e[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.71422445774078369;
	setAttr ".dr" no;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	rename -uid "6F3FF705-4F89-256B-E7EC-D68841F81E35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[24]" "e[36]" "e[48]" "e[68]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.41454389691352844;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "FF063DB9-4648-579D-EDEF-2F9A97B2ED24";
	setAttr ".ics" -type "componentList" 4 "f[40]" "f[45]" "f[76]" "f[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.125 0 ;
	setAttr ".rs" 53326;
	setAttr ".lt" -type "double3" 0 2.8916760437050612e-18 -0.13693306399196137 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36632055044174194 0 -0.5 ;
	setAttr ".cbx" -type "double3" 0.36632055044174194 0.25 0.5 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "F65A491E-4DFD-3B73-FBD7-5C9F35F20EAD";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[42:65]" -type "float3"  0.11632054 0 0 0.11632054
		 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054
		 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054 0 0 0.11632054 0 0 -0.11632054 0 0 -0.11632054
		 0 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0
		 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0 0 -0.11632054 0 0;
createNode polySplitRing -n "polySplitRing30";
	rename -uid "266B999D-4886-1679-7588-7CB57B3C0EA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[123]" "e[152:153]" "e[169]" "e[173]" "e[194]" "e[198]" "e[202]" "e[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50760769844055176;
	setAttr ".dr" no;
	setAttr ".re" 113;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing31";
	rename -uid "A43A84A7-460D-5663-E35E-CEB95801CBBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[80:81]" "e[97]" "e[101]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[147]" "e[178]" "e[182]" "e[188]" "e[191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50606000423431396;
	setAttr ".dr" no;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "2EEAB810-45FA-9705-31EF-B9AF9EC981E2";
	setAttr ".ics" -type "componentList" 8 "f[40]" "f[45]" "f[76]" "f[81]" "f[109]" "f[118]" "f[125]" "f[134]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.125 0 ;
	setAttr ".rs" 33033;
	setAttr ".lt" -type "double3" 3.5657274665323364e-17 1.047311210517016e-17 0.14112202410108352 ;
	setAttr ".ls" -type "double3" 0.63333334713541223 0.63333334713541223 0.42225609941494124 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.44802960753440857 0 -0.3630669116973877 ;
	setAttr ".cbx" -type "double3" 0.44802960753440857 0.25 0.3630669116973877 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "2FADFA0E-43E0-D04C-0C51-21955B6F90E2";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[42]" -type "float3" 0.081709057 0.058697782 0 ;
	setAttr ".tk[43]" -type "float3" 0.081709057 -0.058697779 0 ;
	setAttr ".tk[47]" -type "float3" 0.081709057 -0.058697779 0 ;
	setAttr ".tk[48]" -type "float3" 0.081709057 0.058697782 0 ;
	setAttr ".tk[54]" -type "float3" -0.081709057 0.058697782 0 ;
	setAttr ".tk[55]" -type "float3" -0.081709057 -0.058697779 0 ;
	setAttr ".tk[59]" -type "float3" -0.081709057 -0.058697779 0 ;
	setAttr ".tk[60]" -type "float3" -0.081709057 0.058697782 0 ;
	setAttr ".tk[66]" -type "float3" 0.027881673 0.058697782 0 ;
	setAttr ".tk[67]" -type "float3" 0.027881673 -0.058697779 0 ;
	setAttr ".tk[71]" -type "float3" 0.027881673 -0.058697779 0 ;
	setAttr ".tk[72]" -type "float3" 0.027881673 0.058697782 0 ;
	setAttr ".tk[78]" -type "float3" -0.027881673 0.058697782 0 ;
	setAttr ".tk[79]" -type "float3" -0.027881673 -0.058697779 0 ;
	setAttr ".tk[83]" -type "float3" -0.027881673 -0.058697779 0 ;
	setAttr ".tk[84]" -type "float3" -0.027881673 0.058697782 0 ;
	setAttr ".tk[90]" -type "float3" 0.081709057 -0.058697779 0 ;
	setAttr ".tk[91]" -type "float3" 0.027881673 -0.058697779 0 ;
	setAttr ".tk[92]" -type "float3" 0.081709057 0.058697782 0 ;
	setAttr ".tk[93]" -type "float3" 0.027881673 0.058697782 0 ;
	setAttr ".tk[94]" -type "float3" 0.081709057 -0.058697779 0 ;
	setAttr ".tk[95]" -type "float3" 0.081709057 0.058697782 0 ;
	setAttr ".tk[96]" -type "float3" 0.027881673 -0.058697779 0 ;
	setAttr ".tk[97]" -type "float3" 0.027881673 0.058697782 0 ;
	setAttr ".tk[98]" -type "float3" -0.027881673 -0.058697779 0 ;
	setAttr ".tk[99]" -type "float3" -0.081709057 -0.058697779 0 ;
	setAttr ".tk[100]" -type "float3" -0.027881673 0.058697782 0 ;
	setAttr ".tk[101]" -type "float3" -0.081709057 0.058697782 0 ;
	setAttr ".tk[102]" -type "float3" -0.081709057 0.058697782 0 ;
	setAttr ".tk[103]" -type "float3" -0.027881673 0.058697782 0 ;
	setAttr ".tk[104]" -type "float3" -0.027881673 -0.058697779 0 ;
	setAttr ".tk[105]" -type "float3" -0.081709057 -0.058697779 0 ;
createNode groupId -n "groupId624";
	rename -uid "80720ECC-4D36-78FB-1E9F-1791E6DA8CDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId625";
	rename -uid "CCD867A0-4A8C-C482-EE52-93967AECA398";
	setAttr ".ihi" 0;
createNode groupId -n "groupId626";
	rename -uid "039A8A96-4034-AD99-FAC3-599C8028C6A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId627";
	rename -uid "0F49ECC0-4D4D-9CE5-BFA0-34A3A962CA94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId628";
	rename -uid "5CA838E0-4867-0BA8-CEEB-F38BAA4F5A93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId629";
	rename -uid "FBA51609-4F32-6FF8-6BD6-D18671E424B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId630";
	rename -uid "39EB4BB1-4623-039E-798F-859B7680C15E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId631";
	rename -uid "1D2C10FD-47FB-209E-DF0F-FFB1B1E86A6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId632";
	rename -uid "E98767CB-4AB5-EBB2-5AA3-42A2C03540B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId633";
	rename -uid "E87411FA-4C69-CABB-68FD-718A02689CCA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId634";
	rename -uid "E473EE19-4901-412D-A9DA-F5876E498436";
	setAttr ".ihi" 0;
createNode groupId -n "groupId635";
	rename -uid "2EF68703-41F6-D119-B090-C6AD671EBB39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId636";
	rename -uid "EBC6DCEA-405F-0697-3610-95B8002F7A18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId637";
	rename -uid "3E8F6E72-4DF1-2385-2106-19A437A175B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId638";
	rename -uid "BD27D97F-42CB-9AEE-808C-389ECAAB23DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId639";
	rename -uid "A8FEAF02-49F3-7F6B-B258-6A8D1F1D1AA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId640";
	rename -uid "F6698515-4B2E-5896-2E24-8F9FA10D2C9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId641";
	rename -uid "53E5ABB2-4AC6-C603-6001-36BD31A86CFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId642";
	rename -uid "0B39C936-4F8F-6410-8F82-07A6757128D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId643";
	rename -uid "B0EFDA65-4662-6F4C-98EB-9D9BDCEC5045";
	setAttr ".ihi" 0;
createNode groupId -n "groupId644";
	rename -uid "5CABEAE5-4BB4-688D-845F-799571C71510";
	setAttr ".ihi" 0;
createNode groupId -n "groupId645";
	rename -uid "553F3BD8-445E-AE34-C240-869F35C1286A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId646";
	rename -uid "D8E39A50-47C6-BF8E-3B5C-0583961591DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId647";
	rename -uid "5E49D827-4AC1-9079-B026-EDBD2A62BAD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId648";
	rename -uid "3A9AE7FD-4496-4F78-B497-D29ABEF67C09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId649";
	rename -uid "A817753F-4251-E2CE-4C39-C3BCD216958E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId650";
	rename -uid "7C747275-49A1-ACFA-7511-09B782EE5D32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId651";
	rename -uid "6F735702-454D-7215-B995-3488C8A1F415";
	setAttr ".ihi" 0;
createNode groupId -n "groupId652";
	rename -uid "F96BF2DE-4F75-D507-F116-7D9632869060";
	setAttr ".ihi" 0;
createNode groupId -n "groupId653";
	rename -uid "0E29712A-47A0-5661-CC90-1FBC0A3976B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId654";
	rename -uid "954CA295-4F6D-065D-21EE-98BFBEB455BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId655";
	rename -uid "EEC3637D-412C-3F81-0BC1-CAB85EE0C95D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId656";
	rename -uid "C299EF19-4A1C-1EF8-FCE1-06A28C3D04A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId657";
	rename -uid "8DEEB019-47A0-46B7-CFC5-C3BB511B093D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId658";
	rename -uid "9A7997DA-4190-AA35-A833-B5981F3A037B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId659";
	rename -uid "1315CC5B-4E8C-ED84-C6A4-1AABB72DECCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId660";
	rename -uid "5AC97B6E-4B90-6A1A-A1C9-0FB76004CA1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId661";
	rename -uid "6E3C8E4C-4FB4-AFB1-11C7-4D9424B4D6A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId662";
	rename -uid "1875A34A-4144-2001-AC28-8E87CF4631B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId663";
	rename -uid "C181FDF8-4D87-2AE5-A8B0-B28558D29EB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId664";
	rename -uid "520879B7-4B92-7959-0F38-81AB350A7E16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId665";
	rename -uid "5CE8C013-4C94-470F-6FC8-93A60C2C99EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId666";
	rename -uid "E7F66E7D-4E14-3B36-2BB6-78B48086BDD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId667";
	rename -uid "F62BF55A-4BDD-8D2B-30BC-FCB061F44B32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId668";
	rename -uid "3CA9EC56-4743-0BA8-3364-99B031C77B3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId669";
	rename -uid "3B7E91D9-4FE1-A1F1-2DDC-1EBFDB84A0D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId670";
	rename -uid "10FB7152-4567-0451-8F8A-CEA03FE5E07C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId671";
	rename -uid "02B03E59-498D-EF47-820D-9290AD2B06D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId672";
	rename -uid "2127E8D6-4323-4566-4D99-8788235FEE43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId673";
	rename -uid "54960FDB-4ABA-9004-32C9-36A9721E8912";
	setAttr ".ihi" 0;
createNode groupId -n "groupId674";
	rename -uid "F757899A-456D-9F6C-9867-3FB38BEF9C98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId675";
	rename -uid "B5D2AC5B-4F48-1223-6919-AEA5AE0B2C90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId676";
	rename -uid "FEC765EC-4A00-F100-1A00-AEB875B188BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId677";
	rename -uid "583ADC16-4BA7-FA2B-59CA-9497B17FE43C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId678";
	rename -uid "6AA77E4F-4C87-B21B-EA37-DC936D26C05B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId679";
	rename -uid "275EC3D5-4E2D-0997-1082-519D1A86B318";
	setAttr ".ihi" 0;
createNode groupId -n "groupId680";
	rename -uid "41554872-4AEE-A07C-A47D-CFB724062F31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId681";
	rename -uid "22CA80A2-4CDB-8138-AE87-21B3958CEE10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId682";
	rename -uid "FDE43044-4EA0-C0B7-B299-68B07958A055";
	setAttr ".ihi" 0;
createNode groupId -n "groupId683";
	rename -uid "270BFDF4-4BAF-3020-EC86-04AC471C8ACA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId684";
	rename -uid "8E06564A-40DA-355A-1F1D-6E91F5D6B1DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId685";
	rename -uid "2980FD83-4604-9751-61D7-578430E8BB14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId686";
	rename -uid "388B0711-4D0D-3216-7BE7-05B5132F71AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId687";
	rename -uid "5A979B90-4934-0F5A-0FC3-5CA197CECB2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId688";
	rename -uid "7A94060F-4187-E48E-46DB-78B088079EFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId689";
	rename -uid "4CF83FF1-428C-A1FE-3AC2-C0904D2CD6AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId690";
	rename -uid "820CB501-44AE-49D0-9736-20AF437E2977";
	setAttr ".ihi" 0;
createNode groupId -n "groupId691";
	rename -uid "24331796-46A8-E64D-4F45-37A3C187215E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId692";
	rename -uid "DAAAA633-42D0-D96B-2E40-72B37A7F8A18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId693";
	rename -uid "3D7BD913-489F-6879-F4F5-91B28C28AD0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId694";
	rename -uid "45D81339-4F12-98BE-E24B-0085DA415B86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId695";
	rename -uid "5E834D4C-4383-7CCC-434B-C5A2E850A02E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId696";
	rename -uid "E40929EF-4361-EE82-7E48-E5B0DD495000";
	setAttr ".ihi" 0;
createNode groupId -n "groupId697";
	rename -uid "E880FCDC-4D2E-93DD-FBB3-109FA50F0F8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId698";
	rename -uid "1ED2E1A1-4724-A6AF-DA09-5EAC253A5DCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId699";
	rename -uid "F94C50F1-4F7B-F703-C5D5-299600F28746";
	setAttr ".ihi" 0;
createNode groupId -n "groupId700";
	rename -uid "574EA90E-439C-84C2-7742-D49E8FA0B7AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId701";
	rename -uid "21CDD942-4157-9392-23F0-F391AFDEAAD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId702";
	rename -uid "A17510A5-4614-4E8A-5473-499BA9A41404";
	setAttr ".ihi" 0;
createNode groupId -n "groupId703";
	rename -uid "E8A236AB-4CB4-C5FB-1E9A-3FB95DAFDECF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId704";
	rename -uid "16639E28-4A24-2ED5-2661-F3A2CED659AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId705";
	rename -uid "E058F808-4CFD-28D7-E637-D4A5D0C3C10D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId706";
	rename -uid "6EE50A13-4119-1215-79FA-A684214CEAB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId707";
	rename -uid "3CC39FBA-4E01-23A7-DDFE-6EBA29B08E7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId708";
	rename -uid "0C37C1D2-49F1-CF1B-12FB-0787F1371B12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId709";
	rename -uid "22F24C03-4DAC-CFF8-3F20-B59892CD5DEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId710";
	rename -uid "B148E88B-4616-7D7F-EA74-DB8E660080D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId711";
	rename -uid "07447205-4D1D-E878-6A0C-37B25EF4CB78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId712";
	rename -uid "0658BFE0-44EE-7F44-F5B7-3182770E2797";
	setAttr ".ihi" 0;
createNode groupId -n "groupId713";
	rename -uid "1F91971A-419A-5955-1B5E-439C2A504A1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId714";
	rename -uid "411F58A3-4D0A-0DCD-340B-3F97A7E2BEC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId715";
	rename -uid "606DDB43-4D91-6DA6-6D2E-009C04C7003D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId716";
	rename -uid "F3F64B7C-47D2-C351-E597-A6BD8B5E6DDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId717";
	rename -uid "48E46777-4BE7-8977-111F-8D8C8CED1411";
	setAttr ".ihi" 0;
createNode groupId -n "groupId718";
	rename -uid "87B5C046-42D1-62C3-20C0-E49DBB27E1D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId719";
	rename -uid "64360229-4EBF-66D4-93C5-788795764DDD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId720";
	rename -uid "4A1F2D4E-483E-E2A7-113F-FA97E2811AAD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId721";
	rename -uid "F1ACE721-4578-C676-5AB7-79AF2E602C4F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId722";
	rename -uid "96B09490-42AC-BCF7-E9DC-2CAAC67303AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId723";
	rename -uid "B36EF03F-4C4C-C201-DD55-3BA5D0133939";
	setAttr ".ihi" 0;
createNode groupId -n "groupId724";
	rename -uid "82AB2FCD-4C85-703F-195E-C08CDEC62A38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId725";
	rename -uid "33487CFC-4068-61E9-E139-39BB096C8276";
	setAttr ".ihi" 0;
createNode groupId -n "groupId726";
	rename -uid "AB5CABD9-4F34-F51E-70CD-E4A891E618F3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId727";
	rename -uid "C11A02C0-479D-A1D0-1DE2-379CF3AE9363";
	setAttr ".ihi" 0;
createNode groupId -n "groupId728";
	rename -uid "47201F18-4F72-8081-7DBA-BE94DEE1D71F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId729";
	rename -uid "7FA9099B-42A4-EFBB-5E57-A087DC5FC908";
	setAttr ".ihi" 0;
createNode groupId -n "groupId730";
	rename -uid "F0F6A3A5-442E-506C-8833-72824464AC7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId731";
	rename -uid "3914C9FA-45DA-C484-2C15-05B781E8F32C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId732";
	rename -uid "ABE37EC0-465A-4C56-07D1-2898068FAA7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId733";
	rename -uid "32A00E51-465F-5F05-8362-B68A05478E89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId734";
	rename -uid "CF470AEF-4E58-A919-1875-9EB0FE8744EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId735";
	rename -uid "A97824B7-4D74-6D91-9CCF-7A8D87A66C87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId736";
	rename -uid "CAED16D2-46CD-8068-BC7D-FDA63FDF2C5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId737";
	rename -uid "C96F20E8-4351-5456-1A30-42B16251CFD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId738";
	rename -uid "FB26268F-486D-CA33-58CA-F9990ED0E08B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId739";
	rename -uid "B8E2703F-4A69-A29D-5901-549E770E02EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId740";
	rename -uid "DBFAEE9B-40B7-754D-938D-36B00A807892";
	setAttr ".ihi" 0;
createNode groupId -n "groupId741";
	rename -uid "EA04F875-4BF1-4152-F257-588B1357ED01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId742";
	rename -uid "9E65E87D-4044-1F06-6520-49A3F2C0E20B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId743";
	rename -uid "113BF21A-4738-A0F7-BDEF-109FD1837D33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId744";
	rename -uid "C84602EB-4FF9-2F9D-8C9D-D185A2F5DA72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId745";
	rename -uid "D0C148FD-4662-D027-6F32-50A163B48432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId746";
	rename -uid "8197EB39-4E79-DD5D-C532-4E9E311DDE6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId747";
	rename -uid "EEB5879A-4616-E741-6094-4A84E4A24833";
	setAttr ".ihi" 0;
createNode groupId -n "groupId748";
	rename -uid "3A7B9D3A-4CF6-A905-EF34-E3B7B13FAC07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId749";
	rename -uid "9E3AC4F9-43FD-0B62-7A69-B09965F2BD7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId750";
	rename -uid "1AA05297-4498-B7B1-0CA6-FFB2984126A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId751";
	rename -uid "5421437D-42F6-C1C4-5E30-5BA8DC556FC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId752";
	rename -uid "335494AC-4E99-C88C-5117-08840A298E29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId753";
	rename -uid "07535EDD-4E3E-DB63-E4BE-C08014F8709D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId754";
	rename -uid "D148633E-450E-9A85-83A9-81B118CB7724";
	setAttr ".ihi" 0;
createNode groupId -n "groupId755";
	rename -uid "54008332-43FC-2CFB-0556-3EAAFBD45B0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId756";
	rename -uid "C9A8AFF8-4F75-97B6-B249-59A66CED7F13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId757";
	rename -uid "2DBEA9E3-4671-57E9-7560-098FDBD5429F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId758";
	rename -uid "590A2533-4514-3116-65B1-13BB1675BDFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId759";
	rename -uid "498C3DF7-4751-0F99-3E89-57870B969BEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId760";
	rename -uid "6DDAE59F-4866-D738-66CD-1BBC0392413D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId761";
	rename -uid "C2ABEEFB-48C7-232B-1F3D-30A16AF3CA25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId762";
	rename -uid "9608A387-404A-CF12-4615-8ABFA993A6FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId763";
	rename -uid "26145D5D-4E7B-E581-BBD4-D6BFB96DE4C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId764";
	rename -uid "41DD8EDF-459C-E11A-BDE7-E38F83C17E0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId765";
	rename -uid "F2A2FF76-4CEB-5527-3C8B-05A4F6B51FCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId766";
	rename -uid "252C1494-4301-6033-B89E-64845C7AA044";
	setAttr ".ihi" 0;
createNode groupId -n "groupId767";
	rename -uid "A40A1837-4410-F8FB-C1B5-97B21944D73D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId768";
	rename -uid "FB019473-483E-6838-7C4C-169D2B9CBE69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId769";
	rename -uid "B25B505C-4FD5-728F-8EAC-1AB6F854347E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId770";
	rename -uid "59060761-4D3D-6D6B-6887-1891CB5A1011";
	setAttr ".ihi" 0;
createNode groupId -n "groupId771";
	rename -uid "6C71EA53-45A7-6D74-7611-42B3A67BF8F3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId772";
	rename -uid "BBBA71AA-441F-D907-6794-1994DA7ABCCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId773";
	rename -uid "3F7D5F02-478F-A53C-0B24-569D1DDD6938";
	setAttr ".ihi" 0;
createNode groupId -n "groupId774";
	rename -uid "69863FCF-4B5D-2523-C959-B1871C9567FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId775";
	rename -uid "2E24F703-478D-7169-7C5B-B58D81C9C47D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId776";
	rename -uid "F5D13EE7-4F85-43F7-1639-A59E42BD19B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId777";
	rename -uid "A9C3A925-4D46-00F7-D1A7-96BC146E8A4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId778";
	rename -uid "53CA917E-4F4D-CFA0-2E01-819D49C1DA17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId779";
	rename -uid "4F9160CD-4108-F852-E25F-A88A530AF5D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId780";
	rename -uid "EED273D9-447A-A5A1-7D92-71A2628C9FC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId781";
	rename -uid "7410CADE-4D70-159E-EE64-44A05B9A46D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId782";
	rename -uid "FFD6ABF3-4154-0EEB-FBEF-7F9A186D6789";
	setAttr ".ihi" 0;
createNode groupId -n "groupId783";
	rename -uid "CB2D9BCF-47CC-765C-B67D-C782BC39FCDD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId784";
	rename -uid "5924117B-4AF4-521D-32AE-63AFE93C1B5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId785";
	rename -uid "DF8397B1-4C0E-946A-3646-DDA5A72F0597";
	setAttr ".ihi" 0;
createNode groupId -n "groupId786";
	rename -uid "088065BC-404C-69C9-BB05-C6A461EFB744";
	setAttr ".ihi" 0;
createNode groupId -n "groupId787";
	rename -uid "83999CDB-40B6-F4C7-333D-1F8B02B0FC94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId788";
	rename -uid "F825E7FF-45FF-2991-20FC-FA8F989F8367";
	setAttr ".ihi" 0;
createNode groupId -n "groupId789";
	rename -uid "EFD32DF4-406D-2E9F-9278-6FB611641555";
	setAttr ".ihi" 0;
createNode groupId -n "groupId790";
	rename -uid "FD03AFCD-4500-47C2-5CF8-748CB026E357";
	setAttr ".ihi" 0;
createNode groupId -n "groupId791";
	rename -uid "F4276DE2-4A0B-1685-86AA-2A9F3A882057";
	setAttr ".ihi" 0;
createNode groupId -n "groupId792";
	rename -uid "B60FE36D-4CDC-96F2-F9B3-29AA273ABFDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId793";
	rename -uid "492C62C4-4B70-7922-5724-CE8482629D3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId794";
	rename -uid "C7C7425B-4296-2A1E-6402-2DBED3D049BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId795";
	rename -uid "EE8097BA-4558-3F17-DF14-06B518F05498";
	setAttr ".ihi" 0;
createNode groupId -n "groupId796";
	rename -uid "653A55C1-4C06-22E2-1F93-B9A36A2E3B9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId797";
	rename -uid "75B8E729-4408-D6B8-272A-8F9D58A6A229";
	setAttr ".ihi" 0;
createNode groupId -n "groupId798";
	rename -uid "933C1E24-4BBE-ECD5-48EC-F4B51255A6CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId799";
	rename -uid "37EA3F87-4E59-5E3B-39A3-37B10CAB8CB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId800";
	rename -uid "540D3F94-4BE1-F2CC-2D02-6093D2F9DEA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId801";
	rename -uid "D8D017B6-4C6E-C977-5C3D-3BA5CC1DCBB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId802";
	rename -uid "C6445620-4BA5-C22D-0AED-EC87B8E1B8BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId803";
	rename -uid "A63F730D-4CAE-B23F-2B11-12B2A16C01AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId804";
	rename -uid "01356D10-40BB-2ED6-3462-1490FA1BA79B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId805";
	rename -uid "2872BA89-4316-C5E9-E3CD-D0A5526434DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId806";
	rename -uid "0B482E6C-4A12-2C01-7104-6982EE5691B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId807";
	rename -uid "E3641DB2-4E71-1489-2F2B-4B88F5545771";
	setAttr ".ihi" 0;
createNode groupId -n "groupId808";
	rename -uid "5A13636E-4F7F-52E1-FC46-1D919778C1AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId809";
	rename -uid "6D0CF9C4-4036-29C7-E12A-17AB5BB7ADFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId810";
	rename -uid "D205BD9E-47D4-8D83-4009-A1A2ECF061CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId811";
	rename -uid "D59DB767-45BB-A8BD-4882-31ADD1D991C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId812";
	rename -uid "B5AFA844-4E0D-0BC7-FA5D-0CB69DDFFD46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId813";
	rename -uid "8FB964E4-46B8-BD10-B300-39B1211B918C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId814";
	rename -uid "8463FD96-4FD1-DCB1-23B9-9EA67E95775D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId815";
	rename -uid "AB9440EF-4A1C-3D3C-4A9D-B6BE99B8FB98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId816";
	rename -uid "97129585-4D91-EC24-25F2-A2AF6068C039";
	setAttr ".ihi" 0;
createNode groupId -n "groupId817";
	rename -uid "1CA65970-4933-1D45-EDFE-2EACCF2930DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId818";
	rename -uid "26B977FB-4EF8-A264-0799-3291D8A2849F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId819";
	rename -uid "DF66B921-449B-B017-8C42-5B84D5896B27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId820";
	rename -uid "2573417F-48DC-CEBB-497B-6B87EC893CC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId821";
	rename -uid "187F254E-453A-94BA-1863-50B799CD0D50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId822";
	rename -uid "AD085F1F-49B7-C1A1-4C33-B5AAEAA86B8C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId823";
	rename -uid "5A6B6A1C-4806-A276-83AB-CCA778BB548C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId824";
	rename -uid "26396E6F-4A3C-E79B-EA53-77BD43B5B2FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId825";
	rename -uid "A25A18EB-4AAF-2AEF-2F80-D29035037D36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId826";
	rename -uid "CEE3A681-41E3-1B71-6044-499973822FF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId827";
	rename -uid "366D09EC-4F02-B26A-C837-A398274CFC84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId828";
	rename -uid "3F9808D7-48DE-0604-A86A-0C83D36B9FAA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId829";
	rename -uid "850CC590-40C7-9B96-211C-0AB9C312C45E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId830";
	rename -uid "4FE0955F-4B3F-D671-58B5-FFBA93C77D7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId831";
	rename -uid "BF97CD88-4B1F-3522-7823-588F3665E1C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId832";
	rename -uid "FC9AC09D-4C06-F789-6BBB-478AADC9595C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId833";
	rename -uid "60ED03E8-4BEA-3389-3666-74B3368D1CC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId834";
	rename -uid "C4A47153-48BA-9BE1-CFC0-7AAF2496DC64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId835";
	rename -uid "A303FD62-4331-1E0C-3B5D-D58E2537FC04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId836";
	rename -uid "DCE7A0F8-4389-AE12-06DD-13905F3D2739";
	setAttr ".ihi" 0;
createNode groupId -n "groupId837";
	rename -uid "F50F66A1-4BCB-71C5-5D85-F0A3288CD132";
	setAttr ".ihi" 0;
createNode groupId -n "groupId838";
	rename -uid "C5DFE453-45C5-70CB-BB95-C59406AFABA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId839";
	rename -uid "4CE72109-4B44-E6FC-0B98-50B4683A9155";
	setAttr ".ihi" 0;
createNode groupId -n "groupId840";
	rename -uid "3274322F-47E3-3B23-7186-0FAABB62F28A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId841";
	rename -uid "719771B8-4B28-7EEB-CA03-EB9E1477F5C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId842";
	rename -uid "A8B0934A-4D3B-85AB-F815-3AB87D60982C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId843";
	rename -uid "D2D8B65F-4FD7-8BCA-7CFE-3CB14E8ED2DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId844";
	rename -uid "8D602026-4300-7E58-1984-84BBFDC9FD3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId845";
	rename -uid "98117807-47CB-105A-35C0-DA85FD11DD84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId846";
	rename -uid "504740A5-443A-88F3-5FC2-88A414902FA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId847";
	rename -uid "8F8F608C-4D94-5BFE-D6A9-71AD2AA94CF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId848";
	rename -uid "4511173E-4E76-0914-25C5-67BE5A3874A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId849";
	rename -uid "16C48374-4037-E679-2345-89A8CE0D8EFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId850";
	rename -uid "118219D4-4DBF-3EEE-1B9E-80A4971BA24F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId851";
	rename -uid "0FE5A13C-46F6-C134-EC30-5181B631983A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId852";
	rename -uid "822200ED-4AB0-5347-11B3-369830A9714C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId853";
	rename -uid "0B4F8C49-48B3-E32E-3181-65BFDEB4F2CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId854";
	rename -uid "372EEA75-46E1-02B4-1BD4-93AC402BEA20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId855";
	rename -uid "08F92F16-4F6D-0522-3D25-659C9F0E1932";
	setAttr ".ihi" 0;
createNode groupId -n "groupId856";
	rename -uid "81A84D7C-4C8F-BDD5-5210-03B8CD89FC87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId857";
	rename -uid "3C02917A-4777-5E1A-1164-C38486C0FE14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId858";
	rename -uid "C9021819-45D2-56A8-3FAE-26B72CF134C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId859";
	rename -uid "31553988-4BAD-C4BF-5F77-E8A335ECC5C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId860";
	rename -uid "1517B5AF-4FEF-E6D4-ED26-7BAB18861623";
	setAttr ".ihi" 0;
createNode groupId -n "groupId861";
	rename -uid "A008E90D-46E8-BC1C-8110-A7954EC8FD54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId862";
	rename -uid "476588C8-44C3-5D80-B060-10B54C167D74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId863";
	rename -uid "9D1A2727-4A5E-93B1-213D-1EBF9FED1E49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId864";
	rename -uid "B0DE4886-4494-B1A0-099A-FFAAA50539CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId865";
	rename -uid "3671EFA4-4AC6-74D0-B474-71A8A00BB014";
	setAttr ".ihi" 0;
createNode groupId -n "groupId866";
	rename -uid "DECD5E6F-4155-6CE0-CA39-D6B72939929D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId867";
	rename -uid "12B4475E-4A77-F242-E083-AAAD7D69104E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId868";
	rename -uid "D6ADD186-4AE2-6D49-1134-5484C5A92732";
	setAttr ".ihi" 0;
createNode groupId -n "groupId869";
	rename -uid "46A87A6A-4A48-3B80-06AB-3DAB6F97C375";
	setAttr ".ihi" 0;
createNode groupId -n "groupId870";
	rename -uid "440C1637-43EC-290C-A0C4-FBB996F4B908";
	setAttr ".ihi" 0;
createNode groupId -n "groupId871";
	rename -uid "CB63F75C-4580-A575-5950-AD9DAB59D7D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId872";
	rename -uid "08D8B1D6-478B-2707-A489-529A2A5F2BBD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId873";
	rename -uid "F37FC800-4113-BEC2-FA33-0EB8EC89107F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId874";
	rename -uid "C80D57CF-4207-3970-5581-0B903BCFFF16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId875";
	rename -uid "5FF06378-4517-DAE8-AC12-67A63AFC07FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId876";
	rename -uid "2D7C84A7-40CA-0856-C03F-DA94F53E782B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId877";
	rename -uid "CB9880E7-4436-FA11-D245-20A7EACB5025";
	setAttr ".ihi" 0;
createNode groupId -n "groupId878";
	rename -uid "B4865577-457D-4247-2EBF-A3BB71073C01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId879";
	rename -uid "953D89EB-490C-605D-4CDF-AC8706457926";
	setAttr ".ihi" 0;
createNode groupId -n "groupId880";
	rename -uid "D623EBBA-4912-A858-0EED-028782ADA206";
	setAttr ".ihi" 0;
createNode groupId -n "groupId881";
	rename -uid "87921249-4C43-FD61-7F0B-64993C6CA4E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId882";
	rename -uid "AB944FD2-4201-9C5E-2E38-AE8AACE5BEE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId883";
	rename -uid "B0DE28DE-472E-8DFC-E9F4-7AACC5086F99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId884";
	rename -uid "34CFCEC5-4BCE-DB0A-D2DD-FD87DFF5E82C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId885";
	rename -uid "AA0DBFA4-4418-AED2-5FEE-22B4FC1CBEA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId886";
	rename -uid "75AB5F00-4D6F-69DB-2F87-36B642A442E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId887";
	rename -uid "A4F42AEC-404F-8537-31F8-A4AB4150EAEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId888";
	rename -uid "C8FA776E-4F88-43B4-6215-9889960FABB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId889";
	rename -uid "95DE773A-4776-9B4B-7023-608C40FA0051";
	setAttr ".ihi" 0;
createNode groupId -n "groupId890";
	rename -uid "3073EA1C-4BAF-5A31-A4FD-AE9852ABD34A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId891";
	rename -uid "3CFAD3FC-4DF0-F1F8-0D0A-06B7EC718A6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId892";
	rename -uid "4A827FB2-454F-210D-F002-43934859360C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId893";
	rename -uid "64F89B71-42E5-DBB8-FDDF-96A3AF4EEAED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId894";
	rename -uid "0C4CC96C-434E-BA5B-D861-9CA88ED07003";
	setAttr ".ihi" 0;
createNode groupId -n "groupId895";
	rename -uid "5CF4FAF6-4E0D-8900-79C8-0BA240E123F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId896";
	rename -uid "8FC11A09-4CC3-7610-F87C-1481ADF44AC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId897";
	rename -uid "47B7384E-4F19-D45E-1A07-82B136FD9689";
	setAttr ".ihi" 0;
createNode groupId -n "groupId898";
	rename -uid "3221E079-4D21-029E-6D37-9492A75EC45A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId899";
	rename -uid "A1545709-4EBF-8E63-0EDB-348ADC72B5A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId900";
	rename -uid "2F3DC933-4625-0738-1912-7C8DC4097200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId901";
	rename -uid "CB158604-4A1E-DECC-76BA-84BC8D7D6597";
	setAttr ".ihi" 0;
createNode groupId -n "groupId902";
	rename -uid "82DA1ED3-4370-D99D-D154-1A9F51E0B274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId903";
	rename -uid "361729EF-40E5-209A-5662-ABB0AB3FE7D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId904";
	rename -uid "562F64E8-4FB1-DF68-0A65-43963101682D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId905";
	rename -uid "23ABCD5E-4954-F952-4AA3-C7B0124DE6CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId906";
	rename -uid "E2A97798-4EAD-040B-245D-6F9EFC71CFD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId907";
	rename -uid "9A96AE0C-475B-5C37-F78D-80BC46AAE93E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId908";
	rename -uid "A3720CB2-44A7-3DE8-82F2-B39803ABCC21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId909";
	rename -uid "8BCE7B4A-4722-B851-4B98-AEA43A4B3673";
	setAttr ".ihi" 0;
createNode groupId -n "groupId910";
	rename -uid "D44D6F3D-4EFB-AC92-11AD-E9B9B5D666F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId911";
	rename -uid "4C3FD601-476F-AE63-15D3-2A841B38B7DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId912";
	rename -uid "34B98C93-4808-046D-D328-2D88C066DFB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId913";
	rename -uid "464B1D7D-458A-7FB3-369A-10A08D372CEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId914";
	rename -uid "8314678C-4EDB-972B-0F81-85B77893981A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId915";
	rename -uid "A991C64E-4A15-BF53-7E90-7994FD8F3108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId916";
	rename -uid "783E1FB8-4128-FFC4-C092-2E8016C51B11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId917";
	rename -uid "4528483C-4D66-40D3-762A-0AB0AB0D7919";
	setAttr ".ihi" 0;
createNode groupId -n "groupId918";
	rename -uid "58905FA0-4D55-3171-6460-DFBF834EA81D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId919";
	rename -uid "624DBE09-4D02-BCDA-FDF9-25B0F55BF9AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId920";
	rename -uid "F3821135-4EF1-8CBD-4618-2681680C0C7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId921";
	rename -uid "626E040E-4427-8A2B-8571-1C9E82076809";
	setAttr ".ihi" 0;
createNode groupId -n "groupId922";
	rename -uid "9EB1AEF6-4E1F-6BBF-1091-76A93580714C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId923";
	rename -uid "AED4F303-43D4-8A3E-60F3-4885BD62D8E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId924";
	rename -uid "F4BEBE7C-4125-91EE-28F7-DB88E3F6034F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId925";
	rename -uid "83175C99-40AE-87E5-F510-20B816DB4129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId926";
	rename -uid "29873B73-49CE-5E2D-1857-E5B71A78176B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId927";
	rename -uid "494BFA5A-4E26-AB7F-0A82-319304B6A805";
	setAttr ".ihi" 0;
createNode groupId -n "groupId928";
	rename -uid "927BB71C-4AFF-483A-5AC0-4EA48A60A1BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId929";
	rename -uid "33FE8573-45EB-2511-4214-6D9A07670D17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId930";
	rename -uid "2495F9A4-469A-C3E5-4262-0DA47864EB8F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId931";
	rename -uid "1413AA11-4C3E-B758-0BF2-C89EF1DD1DA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId932";
	rename -uid "6B358168-4A12-FA13-72E0-B385328C05F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId933";
	rename -uid "B876D058-4E6F-F252-83B5-C0A4F2E1151D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId934";
	rename -uid "02002D14-4378-DBED-46C4-07A7F13AC8F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId935";
	rename -uid "93898D39-4E8A-6556-96ED-19A779FC8A11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId936";
	rename -uid "64313068-455F-78E2-AA28-CC88441F9CA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId937";
	rename -uid "E613E7B5-4F6A-E420-E4FF-68BC9D784CA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId938";
	rename -uid "587A06B4-45E4-79E8-1F52-C4A479496585";
	setAttr ".ihi" 0;
createNode groupId -n "groupId939";
	rename -uid "7649128A-46BE-28AD-8FB4-B8AC4051E0BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId940";
	rename -uid "584BEF49-4A31-DC47-FEC7-12B51FE84C9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId941";
	rename -uid "CB926548-49CC-3184-CC63-F080894CC72E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId942";
	rename -uid "AAAFFABF-43F4-072C-1216-AA871C31C56C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId943";
	rename -uid "D2A90176-4193-F528-EBB6-ABB91EFE31A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId944";
	rename -uid "CE6D3AF2-4865-135F-F608-E5A51B87C131";
	setAttr ".ihi" 0;
createNode groupId -n "groupId945";
	rename -uid "AFAFFC09-49CA-2F0F-3F05-DE9C8B363AA4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId946";
	rename -uid "3C5BA75F-4EF8-0307-103A-08A6B9A122B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId947";
	rename -uid "AA4A85D6-4FF2-E248-F48F-588DFD5D00A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId948";
	rename -uid "B9520DF7-4E98-22F8-4074-229244C4A2AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId949";
	rename -uid "1EE1FF04-46DC-A7C8-3B30-C9A7DCD6AD2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId950";
	rename -uid "513CFA60-4949-547A-7CE7-908A61F897EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId951";
	rename -uid "647F96B3-465F-A802-AE46-70AC60C29D2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId952";
	rename -uid "0F96E358-44EF-EDFA-DF7E-4E91BB6E19B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId953";
	rename -uid "E92B7630-4608-709F-5483-C3845617397B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId954";
	rename -uid "D6D9AFF7-47AD-D876-3885-39A72AC5FD8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId955";
	rename -uid "53EEE2E5-4DB6-7502-2474-6B84C0CEBFC6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId956";
	rename -uid "18A50B20-4CED-DED0-1477-B582522424D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId957";
	rename -uid "E3AA77BD-4E87-CFEB-9B5B-4085A7DC00A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId958";
	rename -uid "CDB97D23-4B51-B4AA-2335-49A0A70F37A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId959";
	rename -uid "64E6D75E-4DB0-B37F-64C7-D48E9A8A77BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId960";
	rename -uid "888A0FDA-475E-5887-B21C-56A363CD0E5E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId961";
	rename -uid "53957F9A-4BAA-E49C-8577-E9AB0B7392FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId962";
	rename -uid "ADFC05DC-4B1D-2925-61F2-5BBCFC1C0775";
	setAttr ".ihi" 0;
createNode groupId -n "groupId963";
	rename -uid "24F01C04-473C-5E56-1B6C-B3A08AA08AE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId964";
	rename -uid "757A2B2C-434A-842A-1108-F187D2C5A8D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId965";
	rename -uid "D0A8B964-4459-0479-AC47-0DB3AB7A3F0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId966";
	rename -uid "E4936124-4F8D-F639-2C00-79B507B32BE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId967";
	rename -uid "ED66B926-4480-FDF0-AFA4-919DD16EE8D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId968";
	rename -uid "8319CF45-4FCF-3FE8-575B-FC8345110A03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId969";
	rename -uid "1412EA45-4E0E-0610-985B-57B8E76C9567";
	setAttr ".ihi" 0;
createNode groupId -n "groupId970";
	rename -uid "AF177FA6-41B1-ED7C-4CF4-498DD1A3228A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId971";
	rename -uid "936C5EE1-4181-7A63-EE3F-8186C6125F9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId972";
	rename -uid "ED7AED98-4CD9-3EDD-E263-C9BDA554A048";
	setAttr ".ihi" 0;
createNode groupId -n "groupId973";
	rename -uid "3C2DD5E4-4399-2DED-3EC5-AAA588CF1073";
	setAttr ".ihi" 0;
createNode groupId -n "groupId974";
	rename -uid "538030C3-4B57-5381-94E0-7F8669E83880";
	setAttr ".ihi" 0;
createNode groupId -n "groupId975";
	rename -uid "71FBAB4F-4FF8-78D8-6D5E-DD9908202183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId976";
	rename -uid "58309BFF-47D0-E1B7-7243-779EDC9CD062";
	setAttr ".ihi" 0;
createNode groupId -n "groupId977";
	rename -uid "C0700167-4746-226E-F523-6C8B0B341D17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId978";
	rename -uid "286AC822-43FE-9C7C-D287-52B58039D583";
	setAttr ".ihi" 0;
createNode groupId -n "groupId979";
	rename -uid "6E215A7D-4617-C732-93B3-6699427D66BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId980";
	rename -uid "4FC34900-4105-28E6-57B4-03AFB9233737";
	setAttr ".ihi" 0;
createNode groupId -n "groupId981";
	rename -uid "D3BF6EC3-4AA6-70B6-EF1C-94BD79E990D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId982";
	rename -uid "DD917141-400B-C688-B40C-9BA36A73DC60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId983";
	rename -uid "0621CE79-4C84-71C1-E1CF-CFA86A2DC412";
	setAttr ".ihi" 0;
createNode groupId -n "groupId984";
	rename -uid "2D0505EE-44DE-583E-1740-9CAD8BB96B27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId985";
	rename -uid "A4A34CA6-497D-04E0-F158-0FA972E64F7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId986";
	rename -uid "C87F5936-4F46-4D53-45AC-C88EB8AD8A71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId987";
	rename -uid "BC8B4FAA-4FAB-B65F-8577-DDBDAD60A2FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId988";
	rename -uid "6F5B4A27-4A63-32C4-DB23-AAA7C4BE00B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId989";
	rename -uid "3DA8E17E-4C7B-AEE0-B2AA-D0A75C9D9168";
	setAttr ".ihi" 0;
createNode groupId -n "groupId990";
	rename -uid "13E9BE83-4F27-512C-E103-8A8F57AA530B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId991";
	rename -uid "F9EDD9A8-420A-4079-8DF2-1C9428BE76D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId992";
	rename -uid "B1802519-4CD4-E3AB-196F-3F8D12F3AC3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId993";
	rename -uid "D5906183-4268-C17D-5C15-09ABECEFBFB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId994";
	rename -uid "4DFC4C32-48CD-C051-6FAB-3E949BE03496";
	setAttr ".ihi" 0;
createNode groupId -n "groupId995";
	rename -uid "8B8D704C-49BB-25C8-AFDA-6AA7FC0663E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId996";
	rename -uid "59F6135F-434A-9318-1298-7FB5733B865B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId997";
	rename -uid "3E12D540-4E61-3ED6-FF35-1D8D154B1B69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId998";
	rename -uid "31A75062-4649-74F6-6B0A-8E907F28B3A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId999";
	rename -uid "39622BE5-416B-6B53-D87C-4095201F2886";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1000";
	rename -uid "368C7D06-4E02-E164-A39D-E2993F048643";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1001";
	rename -uid "DA18E906-4721-2FEF-FFD0-0D9CB56B2D39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1002";
	rename -uid "3DEF049C-4060-9643-AF42-15A0B9A3A489";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1003";
	rename -uid "E0F38F40-43B7-5055-A365-3A956228129B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1004";
	rename -uid "99D6C2BF-456A-8017-1161-1999F8683F11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1005";
	rename -uid "0876A25C-421D-3C12-2B57-56AAAD0CB198";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1006";
	rename -uid "6C1BD4D1-49B8-79D0-B4B2-65A861789627";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1007";
	rename -uid "0AFDCB50-4D24-3295-2B8A-619B43B6BFF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1008";
	rename -uid "0DC1985D-47C4-A0C8-D150-219CF69074B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1009";
	rename -uid "698C3E4B-4DB2-44CC-BB00-18BF43D3AEF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1010";
	rename -uid "F5A488FF-46A3-9E59-4CF5-528FBB4DDA1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1011";
	rename -uid "9552F7E2-4DE4-1599-E45A-7FBC9D5E634A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1012";
	rename -uid "0A944766-439E-B66B-D02A-05BB7E5E4C20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1013";
	rename -uid "16493062-4B6B-2802-76E9-28A6595E1D1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1014";
	rename -uid "30D85494-4519-D052-9684-FEBDB1A22661";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1015";
	rename -uid "504A3721-490B-2167-B305-AC842DEB4DEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1016";
	rename -uid "004FE5F9-4DCB-9B1F-A1B5-7B8408339242";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1017";
	rename -uid "5715A06B-4089-0FCD-36E4-81892F7D54EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1018";
	rename -uid "180AC8A9-445B-7C1F-7112-0FA7EBF65D0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1019";
	rename -uid "878992DA-4FFA-8754-89AB-59AEAE86FB74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1020";
	rename -uid "074EE587-40C5-D38B-A923-CF92DE0D5B6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1021";
	rename -uid "B2A8B4BE-486D-9E11-42D2-00AE9972C9FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1022";
	rename -uid "3CA3F0AD-40B9-91D5-47AB-BA8F5869A432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1023";
	rename -uid "92AF5C7B-48C3-A039-8BF6-A18552273513";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1024";
	rename -uid "6869E708-49DF-FA14-6CC0-F483606AA241";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1025";
	rename -uid "65C8255C-4CF5-9E35-309B-8A8AE6FBFCF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1026";
	rename -uid "5E266307-48F3-C93B-69DF-A7873D835277";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1027";
	rename -uid "31F62DF4-4752-CF01-FA9C-FA9B55C098CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1028";
	rename -uid "60D15269-41FB-84C7-C9E1-9BA9AA4DE215";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1029";
	rename -uid "9F0BACE8-4B21-51E3-FD52-B7A0B820CDE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1030";
	rename -uid "E627CD74-4820-2445-0618-A9858A7DE10A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1031";
	rename -uid "9CCED8D1-44CF-E901-4234-69ACED860DD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1032";
	rename -uid "96599D8C-4F78-3926-28CF-D99B2B654256";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1033";
	rename -uid "774DFDB1-44A6-66EC-6139-CD9095B2CDF1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1034";
	rename -uid "EBD781B3-4B9B-1DDE-1B7C-72AF401D3449";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1035";
	rename -uid "7E65B0F1-4F40-7D9C-3B9A-14AD86067DCF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1036";
	rename -uid "4C48218B-463E-80E6-3BB3-FB9807664367";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1037";
	rename -uid "DA04C8F3-4040-51EE-E8CE-AE89FE2428E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1038";
	rename -uid "55D5468B-48C7-4791-F403-C7A9F53866DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1039";
	rename -uid "9F7BA797-48CD-FDC7-91B5-088533D08ABB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1040";
	rename -uid "77A1125C-43F9-BC59-1946-3C8BC224E59F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1041";
	rename -uid "60976419-4228-ADF2-0CD3-AB8837A11AD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1042";
	rename -uid "D511B12C-475E-3971-C357-0DADCA2366FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1043";
	rename -uid "91334291-400A-DF62-FF84-9C8EFC939DC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1044";
	rename -uid "80BE1F33-4C50-F0EC-0460-C282C75C90BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1045";
	rename -uid "1AA23BE4-48CC-C75C-447C-7AB15B6A7396";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1046";
	rename -uid "4C825CB7-4256-49A0-C3C7-E0841EE7B6B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1047";
	rename -uid "338B058E-4BAC-7BE8-24D9-0EAFD2ED169D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1048";
	rename -uid "708C950B-4771-EFF2-CDC9-F08B4D926730";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1049";
	rename -uid "3115D683-46F4-BBB4-8C03-3294AA67D824";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1050";
	rename -uid "B640749F-481B-DB9C-B6DE-A9A9E760A262";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1051";
	rename -uid "856BB6BD-4227-A472-8FED-A8962991234B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1052";
	rename -uid "6ECF8408-4133-4EFE-1272-AD90F35460EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1053";
	rename -uid "5CCCDA1F-4D07-6ABF-7485-918EDB166B49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1054";
	rename -uid "770B0228-46EB-6088-E86E-E68DCA9441E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1055";
	rename -uid "CCBD9CED-4FB8-0A16-4E7E-618BFF558793";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1056";
	rename -uid "57DCEB17-456C-C607-81AB-A2A457910D0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1057";
	rename -uid "2C5BD651-4201-3A99-4D22-8F8E54B38A00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1058";
	rename -uid "5DC106EA-47D4-0827-7F53-B9AA6D92C887";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1059";
	rename -uid "619362ED-4A35-5C5B-4C81-95849320FB9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1060";
	rename -uid "C5177777-4F54-5028-06ED-FD984E794EF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1061";
	rename -uid "674E36C5-413E-3E27-A7B1-EEA3AFE592FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1062";
	rename -uid "6B39029E-4C14-BE46-E7A2-47B04368F8D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1063";
	rename -uid "7C328B5B-403B-5567-AEDF-11A35EB4AAAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1064";
	rename -uid "50CC1BDE-4928-A764-C4E6-51A9447B5A03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1065";
	rename -uid "55138811-47A1-F9F1-662C-37BC308A5EEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1066";
	rename -uid "9D84BFDA-4265-BEDA-511D-42B66E343AB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1067";
	rename -uid "BC0C3AC1-4A49-695C-1E37-F6A7CA906BF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1068";
	rename -uid "5FD8A5DD-4AE3-217C-13CF-DC90BA782E43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1069";
	rename -uid "E622EEBB-4178-FECA-B7A0-24B2116C38FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1070";
	rename -uid "6AE2759A-4638-092C-D251-EA802DD7FA3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1071";
	rename -uid "FC84A42E-472F-CB79-E594-58915C25914D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1072";
	rename -uid "CB59F0C8-47D9-B616-9993-419CF6C592A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1073";
	rename -uid "B2167F01-4AE9-58A2-0791-74BBC645C079";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1074";
	rename -uid "8889F4C6-43B1-FF08-9D56-6C96DA8A0F42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1075";
	rename -uid "FC2C5D8F-4382-EB46-03BD-5D81AC405CC6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1076";
	rename -uid "F75351F3-4F12-BC84-5AD2-C2B92CEEB047";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1077";
	rename -uid "5939E4A2-4D41-D68E-A3B8-C78065249822";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1078";
	rename -uid "AB9ABD1C-4079-F383-DD9A-09B92392D621";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1079";
	rename -uid "0C345DC2-4F71-E202-8CBF-B3A79D7705CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1080";
	rename -uid "D504B57D-4828-8A17-B34C-6088EF00B6A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1081";
	rename -uid "9193C5C3-47AB-ACA6-764E-E18CF9862D31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1082";
	rename -uid "543C062C-4B89-2874-3E9B-D0920ACB6F35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1083";
	rename -uid "63DEC40F-4154-D0EA-FF73-F2B15476C9E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1084";
	rename -uid "A37EBBA4-41DA-F469-705B-F580631B937E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1085";
	rename -uid "46A8D69F-40D7-742D-E395-BBAAEFD57011";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1086";
	rename -uid "D1F75161-40B6-2F68-7759-7DBAC2182314";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1087";
	rename -uid "07A9F0C7-421B-3F0B-4B79-A2B2481A0906";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1088";
	rename -uid "27ADC819-459D-C3CC-EF8A-8D9F179A1A46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1089";
	rename -uid "BF499020-47BE-93C5-4CA2-F49819B74BA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1090";
	rename -uid "115CEFCE-46F8-A613-100F-F6BBC8833B39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1091";
	rename -uid "19359D6A-496A-AD25-228B-7180DA7AD1BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1092";
	rename -uid "CD324003-4317-E738-C168-638D0CAA85DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1093";
	rename -uid "D62C4F36-4F95-E5B2-26C1-FFA2CEB1E1C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1094";
	rename -uid "267AD50B-44EE-E831-6F10-01848407D3B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1095";
	rename -uid "6A31E40F-4661-7865-055B-A78E6E5FB5BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1096";
	rename -uid "C6A204B5-43EF-5835-CB36-A5AAE27CEEC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1097";
	rename -uid "379E6ED3-45DF-E79B-8B98-67BB44E247D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1098";
	rename -uid "440A587F-4815-D08F-DBCA-1990FC4C9111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1099";
	rename -uid "BF15C793-4A04-89A3-3CF2-768E11D7281D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1100";
	rename -uid "41FB3B85-46D6-EEAA-403D-4FB3E3039CAD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1101";
	rename -uid "34525F4E-401B-28EA-8C1D-63B439CB21A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1102";
	rename -uid "FD2EF648-4FE9-4842-C0E2-5CAAE567ECA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1103";
	rename -uid "8AA52499-4BC2-B0E0-CC03-60AE04EAA28A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1104";
	rename -uid "A8029430-4625-3005-FC6E-9CBC43C54019";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1105";
	rename -uid "7EB72808-40F5-AF0A-C2E4-B2AB7EAAC8F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1106";
	rename -uid "AFEB39B5-454B-18BF-2E4E-83B265DBF7AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1107";
	rename -uid "4AE24BD2-4A23-1F17-0724-BB84B01DEA7B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1108";
	rename -uid "DD632A47-4965-022F-9764-3B8E3A6B5FB3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1109";
	rename -uid "29CFE6D0-494A-9EC1-3EF1-9A918D2A170B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1110";
	rename -uid "8F9CA1DE-4CAD-B216-B171-EB9AD96DA071";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1111";
	rename -uid "9B781A5E-4D46-1392-F9E3-3E9F857D993D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1112";
	rename -uid "68EB86FD-41B2-98E7-9BE6-039BAE018682";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1113";
	rename -uid "814BAD3E-4071-75A5-9B03-1C9CFECE13E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1114";
	rename -uid "9489BC81-4BC6-33F6-36C4-0B81A60366A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1115";
	rename -uid "EDDBF933-4E95-A782-05E7-1B9B72F7B776";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1116";
	rename -uid "DBC115A9-4102-0DF3-D0EA-0DB23AEF56D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1117";
	rename -uid "125E3529-4441-0732-C434-EC8910BBF42A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1118";
	rename -uid "7C7CC8CB-4238-7E40-8626-A8A6C634CBE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1119";
	rename -uid "A3289372-4B95-D385-D424-B5ACB3F8875B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1120";
	rename -uid "A4481664-4D8C-852A-9C00-E68C39BF9EB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1121";
	rename -uid "ADC3D0AF-4B20-C708-9196-09863727843F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1122";
	rename -uid "4C860BFD-4AC9-A793-5B44-E4A69CE0AD26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1123";
	rename -uid "CAADAE87-4CD9-645B-840D-1E82BF32A320";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1124";
	rename -uid "05E8524A-4D94-8455-1C95-F480F4EF1DF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1125";
	rename -uid "FB194C3D-46C0-766F-3DE2-F4B92C7C905C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1126";
	rename -uid "F0E76F3E-4DA1-645C-345D-81B969837D60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1127";
	rename -uid "B87D4860-4BAE-DDF8-6F01-0FA3C58143E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1128";
	rename -uid "E21D116B-414B-36D8-1311-BEA781A58156";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1129";
	rename -uid "586B1662-4AAD-DB20-8039-81BC1708A89F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1130";
	rename -uid "AEC28E5B-446A-D5E2-45AE-CD9E7D5F7C6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1131";
	rename -uid "72BC7D75-4939-3FF3-921E-7DA30CB0FA40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1132";
	rename -uid "762CF016-4A62-68BB-316D-02A5D7347023";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1133";
	rename -uid "FB9F4F6E-4B81-E8FD-C206-21BC53CB5935";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1134";
	rename -uid "9B126B99-4722-48B4-6A52-968541EC736C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1135";
	rename -uid "F0D676F5-49B3-9A6E-E1BB-A58FB72E4136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1136";
	rename -uid "8B6EC378-4FD3-8980-DA2B-AB8340EC270D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1137";
	rename -uid "9BAB2467-46A8-F33E-5F33-EC866AC3653A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1138";
	rename -uid "D3B5405B-4372-B263-FA1A-CE9EF007DC86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1139";
	rename -uid "C4C824D8-4328-A8AB-7B20-83A06A1846FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1140";
	rename -uid "EF8654BE-4B69-003B-6011-648A1C34A997";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1141";
	rename -uid "FD203A9A-49E3-98B2-794D-95B4DB73DABD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1142";
	rename -uid "A4464BA6-47F5-C658-B285-B8BA39E9169F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1143";
	rename -uid "22A7BEFC-4EB3-3BD3-21A4-49B90DC2C2C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1144";
	rename -uid "D1AE6EA3-49C2-A9A2-92C4-89BE8050EC14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1145";
	rename -uid "5111921E-4848-A1F7-B71C-D2809AC91042";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1146";
	rename -uid "E274E99D-46D6-FC42-93F3-F3B947EF409E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1147";
	rename -uid "EC96F8DA-4A74-13D9-BF31-279F9D67CE56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1148";
	rename -uid "FDF1BBFF-4AF6-4B30-DA80-F8BE0A2CE81B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1149";
	rename -uid "FC5FD1D3-4D0D-E089-E2ED-6DB076FA6599";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1150";
	rename -uid "07622A1A-4F48-D8DD-3C93-88AE5652E6BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1151";
	rename -uid "A098D4CB-45AE-F1FC-3CEC-DC90561B284C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1152";
	rename -uid "69270BD2-460E-B3A0-EF5A-93A3DF5F2FFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1153";
	rename -uid "69D737F8-479E-86E6-18F9-33987A829B5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1154";
	rename -uid "A14F61D0-4E7D-5BFD-7BA7-FD8546898897";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1155";
	rename -uid "E77CBC21-4370-636E-09A1-88AA26ACF9BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1156";
	rename -uid "F94F8D9C-41E3-BF93-4C05-65872B7CE43B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1157";
	rename -uid "9EF97755-44A0-B5E5-79EE-3D826B80254D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1158";
	rename -uid "060E2ACF-4FF4-AE02-1D3A-F79A658C16CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1159";
	rename -uid "4CB5E87B-425E-AB0F-2C76-648A528556A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1160";
	rename -uid "266A44C1-4E54-1F95-F9A7-CD94486E73FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1161";
	rename -uid "83D8B6A6-43B7-A24B-1187-2CB58C5CC8A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1162";
	rename -uid "DD733185-4DDB-90C0-1F1C-F2B0E539376E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1163";
	rename -uid "5283107C-49A4-2696-AA0E-26801D1AE6BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1164";
	rename -uid "714D5BA2-44B3-AA8B-2648-5AA6584482B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1165";
	rename -uid "4CD1360B-4C5F-0668-4E49-578E1B792826";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1166";
	rename -uid "F7D202F7-4F34-74C6-3E10-0C8CD226283C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1167";
	rename -uid "513BAAA4-4553-C700-39BA-8D94FB45CCB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1168";
	rename -uid "21A005FE-4A98-46BC-7B23-B582F13FFFF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1169";
	rename -uid "56BC161A-4812-3450-9348-429A94617D0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1170";
	rename -uid "4F3D7A8F-4DF9-F62D-D70C-FB822B69000A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1171";
	rename -uid "735E62BF-4D76-2CEC-E71F-468300B47A27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1172";
	rename -uid "4EA8DA74-4CE8-CBF9-48AA-8AA49264BC79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1173";
	rename -uid "8F880C72-408A-3FD6-791F-C9A1669F2464";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1174";
	rename -uid "AD256B3C-4CBD-3883-B7B7-B88D2092420A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1175";
	rename -uid "EBD98C48-4C7D-DD22-F9F7-498315F6BD29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1176";
	rename -uid "CE7A29CD-4DD0-FD89-BA80-71AB1E17B3EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1177";
	rename -uid "88E8E5F4-428C-5359-F698-66B1539B8F20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1178";
	rename -uid "90253F8D-4A2A-055B-2474-6DBB22D45C99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1179";
	rename -uid "8F7CBE9A-4467-5586-A0F6-A5B2FCCE66E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1180";
	rename -uid "23B21D8C-4260-52FB-9FE9-C680F1C3492A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1181";
	rename -uid "2BB0A353-422C-73D2-9A39-DE8198E96E3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1182";
	rename -uid "7CD2BB79-4AD0-6055-37AB-2083C28D53AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1183";
	rename -uid "AA5E252F-426E-44A6-30A3-87890426ECEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1184";
	rename -uid "0A334B3D-4390-D619-CFD4-17ABD422C735";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1185";
	rename -uid "B3E4A185-47AA-3B48-948D-15B37504F34B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1186";
	rename -uid "EE67F0D5-4085-252A-146E-DFAB7DCAE122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1187";
	rename -uid "0F2CA845-4490-D84D-5032-A2B205730AAA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1188";
	rename -uid "C5E4B965-4F65-6D73-3698-889B5793756C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1189";
	rename -uid "B2B9F2C8-40A7-75CF-5816-B7AA9E7A1241";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1190";
	rename -uid "04576859-4E06-AF8E-15D1-D59BDA44FEAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1191";
	rename -uid "218FE206-4F14-8793-BE97-5884269E7848";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube12";
	rename -uid "CC451524-406F-02FC-E306-87ADF6F761D1";
	setAttr ".cuv" 4;
createNode groupId -n "groupId1192";
	rename -uid "F4BD8AFB-4D48-8E08-DCDE-C19C5FA0C0AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1193";
	rename -uid "6BF6FF2C-423A-E24C-0A93-AFAFD72EB5FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1194";
	rename -uid "7478E8FE-4051-0B90-D35A-8FA5993AEF57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1195";
	rename -uid "A4D5DA4E-4A28-7106-5B4D-8687C32C372F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1198";
	rename -uid "172185A9-41DA-0603-3C3E-1FA8D166C97E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1199";
	rename -uid "C6DC7998-4F6C-D8FA-FCB7-C4BB5BE3B5DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1200";
	rename -uid "4493EDC1-4C20-30A3-0E60-C89EC79DB0A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1201";
	rename -uid "9CF7646C-4784-349E-E9F8-37B7A8962F50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1202";
	rename -uid "7FEA786C-4E54-2509-8ADA-A4AD17062701";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1203";
	rename -uid "BB6D2C59-4822-BB52-93A4-C6A81DEBBBA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1204";
	rename -uid "3C3FC452-49D0-43FF-CC8B-3794764E6F24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1205";
	rename -uid "21DD9CD3-479B-801C-C517-00ABFE851CCC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1206";
	rename -uid "704E0797-40F7-839C-CA4B-C19DEA1D41E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1207";
	rename -uid "8646B0C8-4E87-7017-457F-73B87B0F5CB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1208";
	rename -uid "C251B294-4CA3-AE57-D6C6-37857B285A7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1209";
	rename -uid "681F3FF0-4854-15CF-A231-66A57EC9A6FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1210";
	rename -uid "A24434AB-4553-441F-21FD-2FA5CE030EEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1211";
	rename -uid "6A8E82EF-45A4-FB9E-BDCE-65BD43E88FB3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1212";
	rename -uid "457ACFE5-4E55-17E2-7236-F9ADF50B4EA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1213";
	rename -uid "CC3A5999-4CF0-C4D4-B1AE-4584088E8842";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1214";
	rename -uid "59BF9306-4E3E-5EE7-8AB4-0590F5FFD33A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1215";
	rename -uid "08579B95-424A-2B63-DF1D-6AAE3281F54C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1216";
	rename -uid "541E6391-48B5-5D69-0010-99B7271E8387";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1217";
	rename -uid "33B42B30-4695-2A4E-0090-70B2129BBDB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1218";
	rename -uid "418A78C7-4490-3C67-D358-22AF10C7B91D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1219";
	rename -uid "8D834210-459C-3AA9-E7AF-278F0B8ED723";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1220";
	rename -uid "9CD66953-437F-08B3-6A42-9A9AA70309B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1221";
	rename -uid "775D2474-4427-55FA-1B3E-CAABC7EEA863";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1222";
	rename -uid "7833BDFB-41E5-4484-D40A-F1A5A437F871";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1223";
	rename -uid "601F1FB6-4054-0B33-D003-E4B1839E2F92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1224";
	rename -uid "4BFBF7D7-419C-3A69-BADA-E7B09F814023";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1225";
	rename -uid "7E9F89E7-4298-333F-42C2-788319FA8933";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1226";
	rename -uid "5E2E53E8-4275-DD88-9ED8-6696AF7847FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1227";
	rename -uid "7725D6CA-4FAF-4670-DE07-31AEC7D7DA87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1228";
	rename -uid "BA2A580C-41DE-72F2-73F7-4F8B3EBD12C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1229";
	rename -uid "1CF4879C-4A14-C21E-9CA6-119003BD3633";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1230";
	rename -uid "9BA4EC7D-426D-355E-6297-39B6DF7526F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1231";
	rename -uid "1AADB4DE-47BD-3F34-A2B1-07872E0BC9DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1232";
	rename -uid "61084105-43B2-0377-C32C-D3B5184DBC69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1233";
	rename -uid "27D13E8A-4B90-2C8C-B2A3-FCBB10438F44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1234";
	rename -uid "F5D79D4C-4771-9B86-B9E3-EB8EBED11DD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1235";
	rename -uid "B985BCE5-4D7D-C05E-EB3A-C1A33856F209";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1236";
	rename -uid "0016389F-4CC6-5FB2-84D3-4D89198451C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1237";
	rename -uid "6424E358-4849-CCB2-A9DB-E2AF075CFC48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1238";
	rename -uid "D12D5CA2-4937-40F2-C104-128811C9775E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1239";
	rename -uid "0F0D653D-4847-FADC-88D2-BA9F29A75968";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1240";
	rename -uid "E3E62B7C-49CE-4850-3EEE-7292A95E6FDC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1241";
	rename -uid "1F6E1E51-43F5-0CF8-208E-798CCDA0CFE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1242";
	rename -uid "EAA67148-45EE-BD17-2892-AEA26B75BD66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1243";
	rename -uid "9448F511-4650-2AFE-ADFE-85AE8B9581FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1244";
	rename -uid "5E593100-4AC2-1443-8BD1-E3A3CACC52FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1245";
	rename -uid "FB026AF7-4506-EE14-8539-9C8B2D5C92FE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1246";
	rename -uid "B33A5365-4107-88BA-5BD5-4F8F3EF31382";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1247";
	rename -uid "63D9B095-4AA4-3F4E-0EF7-639FDC1BCCE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1248";
	rename -uid "B58E4065-4DDF-456F-1E75-9DA00CB17CCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1249";
	rename -uid "9AB9D289-485D-B617-4A7C-38B8EB447D07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1250";
	rename -uid "73E7A8D7-4EE8-F57B-05E0-FEA8B5E962D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1251";
	rename -uid "2463CC1C-47B2-E2C2-8258-D7B2C79C3585";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1252";
	rename -uid "26BC12AA-4B38-AC48-3F18-5C968CE2E390";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1253";
	rename -uid "7EA272DA-417E-4358-8E0A-8891AF82B83E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1254";
	rename -uid "F0175AC0-4D0A-501F-A4B8-B6A1921C325D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1255";
	rename -uid "E799713D-4580-C384-C4FA-71A1F47CB2C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1256";
	rename -uid "CB96079F-4E34-4C53-9720-20A4867DFA68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1257";
	rename -uid "9F4FB19D-485C-D03D-A29C-2098CC4AB6EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1258";
	rename -uid "54C391EF-484C-E242-2560-7F93217F00C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1259";
	rename -uid "30A41434-4620-8B66-B41A-AE863A74A739";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1260";
	rename -uid "D800D39E-4EEC-C367-106C-A69F5F44EA72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1261";
	rename -uid "03A58953-47DA-80B7-8B82-668E52BCE9FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1262";
	rename -uid "9AC4A39B-44B6-5570-CCE3-B284F520458B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1263";
	rename -uid "03E17486-43D9-636B-BC58-BFA0B03B182A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1264";
	rename -uid "A6C15E3A-42F6-01BF-6237-1E9A32A93D37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1265";
	rename -uid "A3A5DC28-4206-233D-3761-839B0763C44F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1266";
	rename -uid "72B96D27-41DE-9B1B-B541-5FB25DCCF789";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1267";
	rename -uid "6A19BEFC-4CC0-25A7-DA4D-CC9A544854E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1268";
	rename -uid "035D26C6-481B-2052-DB52-79B912749431";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1269";
	rename -uid "09AF46A1-4295-CD2B-4939-E1A508EC23D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1270";
	rename -uid "AD18B7CE-408D-907B-A583-92B065AF1F60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1271";
	rename -uid "A984E489-4365-5AD7-EFC8-6E9F9B5967AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1272";
	rename -uid "26DCB9BB-4D7E-2119-31AB-5B8F4EFC3094";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1273";
	rename -uid "95CD11BA-4F2D-F1F6-91B7-B697AC546734";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1274";
	rename -uid "8C9DFFB5-4978-0DFA-88DB-59AB10CEAE79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1275";
	rename -uid "64530EB6-42B2-6C6A-F869-7897E6F35D08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1276";
	rename -uid "F3CA97EC-48B2-FC6F-D839-A5BDEFD517B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1277";
	rename -uid "80B2E3F4-4D79-515A-C61E-1FBB7CA87465";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1278";
	rename -uid "F3F49219-48B6-9F18-23BB-C3BD4FDC706B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1279";
	rename -uid "EA29363A-41D5-D9C0-0027-B28FFFCC13E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1280";
	rename -uid "F97CDC99-441F-CE38-E35D-14904E37EA84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1281";
	rename -uid "B8F52CDF-4B95-648B-BD41-1CA7E37D58DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1282";
	rename -uid "1A9CCC55-47ED-B47F-BC52-1A8090187FBC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1283";
	rename -uid "BBDCEA2D-42D4-AA27-C5EA-9E83570A465B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1284";
	rename -uid "89A8F63A-49A9-F78A-D3C6-0C9BA22798E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1285";
	rename -uid "C38ACBB5-44F1-F804-79C6-45B1ED57E36A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1286";
	rename -uid "9B5FE93D-409C-8142-0D8B-74AB84C760DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1287";
	rename -uid "FC16B791-439E-F7F1-AE3E-76AC6734DD17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1288";
	rename -uid "66D3857F-4BBF-0208-55B9-028CC1BF5245";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1289";
	rename -uid "DAC299B4-404E-F076-52EA-1CB977771DFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1290";
	rename -uid "EC3C898A-4A80-A37A-1201-C599E72B8DE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1291";
	rename -uid "E20CD1BB-40C1-FC39-129C-4FA25D09B356";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1292";
	rename -uid "9C8CB4B2-4B40-388F-5BA5-CC827A6461D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1293";
	rename -uid "3D6C6EB1-4E4A-28F2-1E72-64ACAB2FF3E3";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing32";
	rename -uid "0254C202-4796-6E52-041C-4EBC1E214DB6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1.5156539947041239 0 0 0 0 0.077055730189593399 0 0
		 0 0 1.5156539947041239 0 -4 0.065241452029165425 5 1;
	setAttr ".wt" 0.61897510290145874;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing33";
	rename -uid "D1C123D4-4391-836E-3DA3-77A167295E35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 1.5156539947041239 0 0 0 0 0.077055730189593399 0 0
		 0 0 1.5156539947041239 0 -4 0.065241452029165425 5 1;
	setAttr ".wt" 0.3834969699382782;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "7D2CA302-40F0-9044-082D-00AE8DC7761F";
	setAttr ".ics" -type "componentList" 4 "f[1]" "f[9]" "f[19]" "f[21]";
	setAttr ".ix" -type "matrix" 1.5156539947041239 0 0 0 0 0.077055730189593399 0 0
		 0 0 1.5156539947041239 0 -4 0.065241452029165425 5 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 3.5743903947447149 0 ;
	setAttr ".pvt" -type "float3" -4 3.6781595 5 ;
	setAttr ".rs" 56527;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.7578269973520619 0.10376931712396212 4.2421730026479381 ;
	setAttr ".cbx" -type "double3" -3.2421730026479381 0.10376931712396212 5.7578269973520619 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "AFBDDDC3-4DA6-1455-49DE-B9B32087A801";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.25776264 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.25776264 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.25776264 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.25776264 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.25776264 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.25776264 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.25776264 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.25776264 ;
	setAttr ".tk[16]" -type "float3" 0.26261371 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.26261371 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.26261371 0 -0.25776264 ;
	setAttr ".tk[19]" -type "float3" 0.26261371 0 0.25776264 ;
	setAttr ".tk[20]" -type "float3" 0.26261371 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.26261371 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.26261371 0 0.25776264 ;
	setAttr ".tk[23]" -type "float3" 0.26261371 0 -0.25776264 ;
	setAttr ".tk[24]" -type "float3" -0.26261371 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.26261371 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.26261371 0 -0.25776264 ;
	setAttr ".tk[27]" -type "float3" -0.26261371 0 0.25776264 ;
	setAttr ".tk[28]" -type "float3" -0.26261371 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.26261371 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.26261371 0 0.25776264 ;
	setAttr ".tk[31]" -type "float3" -0.26261371 0 -0.25776264 ;
createNode deleteComponent -n "deleteComponent30";
	rename -uid "E315694F-4254-1520-182A-AE86195D6D59";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[9]" "f[19]" "f[21]";
createNode groupId -n "groupId1294";
	rename -uid "053C1C85-49C2-390A-8EB8-94AA38CF76B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1295";
	rename -uid "EA6ECDA3-4D7F-2C8C-EC6B-B496B7272F91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1296";
	rename -uid "76D61179-43B1-B28D-390E-A1B0553C8B7B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1297";
	rename -uid "1ED4FD9C-4B95-50E8-4DEC-348164CE0138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1298";
	rename -uid "6A4A7F16-484E-DCB4-D674-04907B154C2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1299";
	rename -uid "2A73224D-4D9C-F66B-90AA-248D94DD8001";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1300";
	rename -uid "1B8C36EB-4C6F-BC90-2851-EAA13606FCFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1301";
	rename -uid "9DB70962-4BF8-5B0A-8EF9-D499049D7AC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1302";
	rename -uid "ACFE7F6B-40D8-55EE-8473-8A934A168CE9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1303";
	rename -uid "E7A6A96D-4E2A-99E6-5924-82905E6190D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1304";
	rename -uid "975B144A-4919-C992-81D9-E7A35D0F7574";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1305";
	rename -uid "73FA15F0-46BC-4E1A-9365-BDAC5DB8CCB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1306";
	rename -uid "7AD2B8F2-45CD-31CF-5436-EFB532AAF28B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1307";
	rename -uid "14ADA148-4210-57ED-3FC3-F89DE8CD2AFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1308";
	rename -uid "59171D90-4DA6-0346-411F-34A92C855DDE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1309";
	rename -uid "78E2D4D2-497A-FE0E-3662-4197C70E57CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1310";
	rename -uid "F8A82178-455E-2D8E-762C-378B1087A78C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1311";
	rename -uid "C9C0BBFA-4891-1EE7-5634-79BC0C23C3E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1312";
	rename -uid "C5510F42-4B94-6534-40ED-B2BF9BDDB03B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1313";
	rename -uid "88AA80B0-4EF6-C5A7-5D23-FC955C7AADA6";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "6301C104-482B-8FC2-26A8-42B286B8FC2C";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube13";
	rename -uid "AFB50E88-4B78-C80B-71F1-FDB4D71D2F98";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "EC310964-4E21-2813-DD82-2DBEC89588F2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.7061408788500279 0 0 0 0 0.069956028671084969 0 0
		 0 0 3.7061408788500279 0 -3.4825639743501129 -0.95187426158476129 5.2954041080390946 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.482564 -0.91689622 5.295404 ;
	setAttr ".rs" 56729;
	setAttr ".ls" -type "double3" 0.96066882903946094 0.96066882903946094 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3356344137751268 -0.91689624724921881 3.4423336686140806 ;
	setAttr ".cbx" -type "double3" -1.629493534925099 -0.91689624724921881 7.148474547464108 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "4CC4960D-4ABA-7259-05BE-A3A6F580F40A";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.7061408788500279 0 0 0 0 0.069956028671084969 0 0
		 0 0 3.7061408788500279 0 -3.4825639743501129 -0.95187426158476129 5.2954041080390946 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.4825637 -0.91689616 5.295404 ;
	setAttr ".rs" 38336;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.2627507129952491 -0.91689618053395094 3.5152169275875376 ;
	setAttr ".cbx" -type "double3" -1.7023767938985559 -0.91689618053395094 7.0755910675874407 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "E6E4A9E4-4CCE-A325-3699-B1907321C178";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 3.7061408788500279 0 0 0 0 0.069956028671084969 0 0
		 0 0 3.7061408788500279 0 -3.4825639743501129 -0.95187426158476129 5.2954041080390946 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.4825637 -0.91689616 5.295404 ;
	setAttr ".rs" 48928;
	setAttr ".ls" -type "double3" 0.94110389073704248 0.94110389073704248 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8663086438205578 -0.91689618053395094 3.911658775859018 ;
	setAttr ".cbx" -type "double3" -2.098818752621642 -0.91689618053395094 6.6791489984127494 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "A9BCA728-4F12-C3A7-6488-2C8B5C84A317";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0.10696896 0 -0.10696897 ;
	setAttr ".tk[13]" -type "float3" -0.10696896 0 -0.10696897 ;
	setAttr ".tk[14]" -type "float3" -0.10696896 0 0.10696897 ;
	setAttr ".tk[15]" -type "float3" 0.10696896 0 0.10696897 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "8F41210E-480C-9C7B-B4A2-A3A368A77506";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[10:13]";
	setAttr ".ix" -type "matrix" 3.7061408788500279 0 0 0 0 0.069956028671084969 0 0
		 0 0 3.7061408788500279 0 -3.4825639743501129 -0.95187426158476129 5.2954041080390946 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.4825635 -0.91689616 5.2954035 ;
	setAttr ".rs" 62597;
	setAttr ".lt" -type "double3" 0 -1.2997718515457213e-17 -0.058536520262879699 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.2627507129952491 -0.91689618053395094 3.5152162648779059 ;
	setAttr ".cbx" -type "double3" -1.7023764625437401 -0.91689618053395094 7.0755910675874407 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "E492E4B6-4F6B-55B9-0A9B-86838A9A4DAD";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[12]" -type "float3" 0.029646246 0 -0.029646244 ;
	setAttr ".tk[13]" -type "float3" -0.029646246 0 -0.029646244 ;
	setAttr ".tk[14]" -type "float3" -0.029646246 0 0.029646244 ;
	setAttr ".tk[15]" -type "float3" 0.029646246 0 0.029646244 ;
	setAttr ".tk[16]" -type "float3" 0.027900197 0 -0.0279002 ;
	setAttr ".tk[17]" -type "float3" -0.027900195 0 -0.0279002 ;
	setAttr ".tk[18]" -type "float3" -0.027900195 0 0.0279002 ;
	setAttr ".tk[19]" -type "float3" 0.027900197 0 0.0279002 ;
createNode deleteComponent -n "deleteComponent31";
	rename -uid "08BD4A87-4638-9796-0A6C-279A52B5E411";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent32";
	rename -uid "920FEDC1-4E81-03C4-E108-559EF39454E3";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "7FE2EB39-460B-041A-A44D-DB9AE6CC1660";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode groupId -n "groupId1314";
	rename -uid "89EAAA66-44DB-4175-8E75-C0B5CCBA800A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "1154E34F-417A-D211-AA3E-BAB69D25075D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "5E91384F-46F7-CE51-5E55-30B2BBE07A59";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "E1733411-4A1A-C175-C954-939E370B94F5";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[17]" -type "float3" 0.00053012371 0 -0.001408577 ;
	setAttr ".tk[57]" -type "float3" -0.00053012371 0 0.0014083385 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "1DDD7E85-4E7E-8644-AC4A-C7A806538AB0";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "680AE99B-448D-BD3A-2BB3-7EAF76CCE85E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[18]" -type "float3" 0.00053012371 0 -0.001408577 ;
	setAttr ".tk[89]" -type "float3" -0.00053012371 0 0.0014083385 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "D9FB8604-4E82-8863-F3A5-58A2D44DAE20";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "71B8683B-4B82-82DB-8C77-82B10F5B85B7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -5.9604645e-08 0 ;
	setAttr ".tk[23]" -type "float3" 0.00053012371 0 -0.001408577 ;
	setAttr ".tk[84]" -type "float3" -0.00053012371 0 0.0014083385 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "2E93D3F3-47E9-FBDF-1F0B-FDADFC46505A";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak21";
	rename -uid "7DF767A1-4921-C4D4-3187-0EA8B96DB1FC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[3]" -type "float3" 0.00053024292 0 -0.001408577 ;
	setAttr ".tk[59]" -type "float3" -0.0005300045 0 0.0014083385 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "A5D85225-4143-4277-76CC-9E863C755575";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak22";
	rename -uid "B0A0EBB4-4654-B5CE-A589-C8BD1F85019F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[24]" -type "float3" 0.00053024292 0 -0.0014084578 ;
	setAttr ".tk[79]" -type "float3" -0.0005300045 0 0.0014084578 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "6753822B-43FA-7B1B-8517-1AAE1FCED969";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak23";
	rename -uid "84174BA6-4D65-8332-023D-E4B11FF069AE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[8]" -type "float3" 0.00053024292 0 -0.0014084578 ;
	setAttr ".tk[59]" -type "float3" -0.0005300045 0 0.0014084578 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "3B2E0393-442D-0639-8F9B-73A37212B277";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak24";
	rename -uid "A8C27DB3-488D-98C1-69BD-55ABE90BDA5A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[11]" -type "float3" 0.00053024292 0 -0.0014084578 ;
	setAttr ".tk[59]" -type "float3" -0.0005300045 0 0.0014084578 ;
createNode polySplitRing -n "polySplitRing34";
	rename -uid "EDE4AD14-4B39-CC09-1C70-4EB99AF29C0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[14]" "e[16]" "e[29]" "e[41:43]" "e[45]" "e[47]" "e[81]" "e[89]" "e[100]" "e[111]" "e[123]" "e[143:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.94022101163864136;
	setAttr ".dr" no;
	setAttr ".re" 143;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing35";
	rename -uid "A4B00223-4C4B-3BF2-9987-D79262536A3E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[102]" "e[115]" "e[118]" "e[120]" "e[122]" "e[124]" "e[129]" "e[141]" "e[145]" "e[151]" "e[167]" "e[171]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 1;
	setAttr ".dr" no;
	setAttr ".re" 118;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak25";
	rename -uid "45A51653-4242-57C8-4BFE-1AAC566B3D1B";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[19]" -type "float3" 0 6.5565109e-07 0 ;
	setAttr ".tk[24]" -type "float3" 0 1.3113022e-06 0 ;
	setAttr ".tk[25]" -type "float3" 0 -3.5762787e-07 0 ;
	setAttr ".tk[26]" -type "float3" 0 -3.5762787e-07 0 ;
	setAttr ".tk[84]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[85]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[87]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[89]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[91]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[92]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[94]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[95]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.52742362 ;
	setAttr ".tk[98]" -type "float3" 0 0 -0.52742362 ;
createNode polySplitRing -n "polySplitRing36";
	rename -uid "D0C7E324-44CB-0FCE-057C-2C97C2065249";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[97:98]" "e[107]" "e[117]" "e[134]" "e[136]" "e[138]" "e[140]" "e[157]" "e[161]" "e[204]" "e[208]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.21432402729988098;
	setAttr ".re" 208;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "5C69FA0E-4C18-4A88-886D-BE8B3C817FB1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[99:110]" -type "float3"  0.55791426 0 0 0.55791426
		 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426
		 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426 0 0 0.55791426 0 0;
createNode polySplitRing -n "polySplitRing37";
	rename -uid "FF9BB947-47ED-3BF6-5443-068D519FF664";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[19]" "e[22]" "e[24]" "e[26]" "e[28]" "e[32]" "e[46]" "e[54]" "e[61]" "e[69]" "e[93:94]" "e[137]" "e[160]" "e[177]" "e[189]" "e[224]" "e[228]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.79907995462417603;
	setAttr ".dr" no;
	setAttr ".re" 224;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak27";
	rename -uid "7451EDA9-4C35-817F-A86B-668D583897BB";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[111:122]" -type "float3"  0 0 0.56369156 0 0 0.56369156
		 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156
		 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156 0 0 0.56369156;
createNode polySplitRing -n "polySplitRing38";
	rename -uid "64505E41-4931-8DCB-361B-3697388FE1D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[5:6]" "e[21]" "e[33]" "e[49]" "e[51]" "e[53]" "e[55]" "e[83]" "e[87]" "e[101]" "e[119]" "e[147:148]" "e[150]" "e[200]" "e[212]" "e[252]" "e[272]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.14299453794956207;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak28";
	rename -uid "D8D0F207-43B8-653B-6882-04A9DA2828F7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[123:140]" -type "float3"  -0.55763912 0 0 -0.55763912
		 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0
		 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0
		 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912 0 0 -0.55763912
		 0 0;
createNode polySplitRing -n "polySplitRing39";
	rename -uid "82F0EBB2-49DA-F05E-7870-3DA6242F0D14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[17]" "e[52]" "e[67]" "e[86]" "e[88]" "e[90]" "e[181]" "e[185]" "e[300]" "e[304]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.80259758234024048;
	setAttr ".dr" no;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak29";
	rename -uid "D22F18C4-4FA5-984C-C526-B691EF4A7CA0";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk[141:159]" -type "float3"  0 0 0.57023227 0 0 0.57023227
		 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227
		 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227
		 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227 0 0 0.57023227;
createNode polySplitRing -n "polySplitRing40";
	rename -uid "73A7593C-4423-9B66-DD66-65B82524AC2A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[9:10]" "e[27]" "e[39]" "e[57:58]" "e[60]" "e[62]" "e[77]" "e[92]" "e[260]" "e[264]" "e[329]" "e[333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.35922065377235413;
	setAttr ".re" 333;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak30";
	rename -uid "10D62BEF-4D99-EA9C-DAA6-CBA16826E541";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[160:173]" -type "float3"  -0.55481988 0 0 -0.55481988
		 0 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0
		 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0 0 -0.55481988 0 0
		 -0.55481988 0 0 -0.55481988 0 0;
createNode polySplitRing -n "polySplitRing41";
	rename -uid "B355D47B-4821-658B-7FE4-3CB29F5C3468";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[13]" "e[31]" "e[34]" "e[36]" "e[38]" "e[40]" "e[44]" "e[56]" "e[59]" "e[71]" "e[133]" "e[153:154]" "e[156]" "e[158]" "e[175]" "e[191]" "e[222]" "e[230]" "e[292]" "e[312]" "e[351]" "e[355]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.84435498714447021;
	setAttr ".dr" no;
	setAttr ".re" 34;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak31";
	rename -uid "E42C5FB7-4C95-642A-E979-DAA51947D329";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[174:187]" -type "float3"  0 0 -0.55141085 0 0 -0.55141085
		 0 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0
		 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0 0 -0.55141085 0 0
		 -0.55141085 0 0 -0.55141085;
createNode polySplitRing -n "polySplitRing42";
	rename -uid "AA4A3E75-4BDC-402C-9D8C-4CB2BB33CC69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[32]" "e[46]" "e[61]" "e[160]" "e[177]" "e[224]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[271]" "e[294]" "e[310]" "e[349]" "e[357]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.67938220500946045;
	setAttr ".dr" no;
	setAttr ".re" 271;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak32";
	rename -uid "5CEB8B6E-49E4-37C8-3CAF-879C4E450DA8";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk[188:210]" -type "float3"  0.55477732 0 0 0.55477732
		 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732
		 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732
		 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732
		 0 0 0.55477732 0 0 0.55477732 0 0 0.55477732 0 0;
createNode polySplitRing -n "polySplitRing43";
	rename -uid "3D20C098-4F90-5CA1-72BC-A4AC4D5D1CC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[42:43]" "e[45]" "e[47]" "e[89]" "e[143:144]" "e[163:164]" "e[166]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[198]" "e[214]" "e[254]" "e[270]" "e[323]" "e[339]" "e[389]" "e[409]" "e[420]" "e[440]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.25521215796470642;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak33";
	rename -uid "D84421BF-4651-FFEF-F4C9-1FA403183834";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[211:232]" -type "float3"  0.43345749 0 0 0.43345749
		 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749
		 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749
		 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749 0 0 0.43345749
		 0 0 0.43345749 0 0 0.43345749 0 0;
createNode polySplitRing -n "polySplitRing44";
	rename -uid "76EF9E6B-4D21-471C-DD5B-99A2A572EFDB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[20]" "e[48]" "e[63]" "e[73:74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[179]" "e[187]" "e[298]" "e[306]" "e[345]" "e[361]" "e[484]" "e[496]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.80207288265228271;
	setAttr ".dr" no;
	setAttr ".re" 63;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak34";
	rename -uid "FDDEEA24-443A-ED7D-CA69-44AB33D1DE0F";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk[233:257]" -type "float3"  0 0 0.38858244 0 0 0.38858244
		 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244
		 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244
		 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244
		 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244 0 0 0.38858244;
createNode polySplitRing -n "polySplitRing45";
	rename -uid "ED2799E3-4863-ECAF-237A-69BFF85CD8EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[11:12]" "e[23]" "e[35]" "e[64]" "e[66]" "e[68]" "e[70]" "e[79]" "e[91]" "e[258]" "e[266]" "e[327]" "e[335]" "e[393]" "e[405]" "e[424]" "e[436]" "e[509]" "e[533]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.91353386640548706;
	setAttr ".dr" no;
	setAttr ".re" 91;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak35";
	rename -uid "32AE5D27-434E-F79C-89C7-A28E2D932091";
	setAttr ".uopa" yes;
	setAttr -s 68 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[75]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[77]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[102]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[109]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[164]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[173]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[197]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[208]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[213]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[224]" -type "float3" 0 0 -0.048754342 ;
	setAttr ".tk[233]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[234]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[235]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[236]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[237]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[238]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[239]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[240]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[241]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[242]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[243]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[244]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[245]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[246]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[247]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[248]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[249]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[250]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[251]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[252]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[253]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[254]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[255]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[256]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[257]" -type "float3" 0 0 -0.048558645 ;
	setAttr ".tk[258]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[259]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[260]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[261]" -type "float3" -0.56663418 0 -0.048558645 ;
	setAttr ".tk[262]" -type "float3" -0.56663418 0 -0.048754342 ;
	setAttr ".tk[263]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[264]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[265]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[266]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[267]" -type "float3" -0.56663418 0 -0.048754342 ;
	setAttr ".tk[268]" -type "float3" -0.56663418 0 -0.048558645 ;
	setAttr ".tk[269]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[270]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[271]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[272]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[273]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[274]" -type "float3" -0.56663418 0 0 ;
	setAttr ".tk[275]" -type "float3" -0.56663418 0 0 ;
createNode polySplitRing -n "polySplitRing46";
	rename -uid "32B5D7C3-4B74-1123-9ECE-51B0AAEC107A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[106]" "e[108:110]" "e[112]" "e[116]" "e[131]" "e[139]" "e[146]" "e[149]" "e[165]" "e[173]" "e[220]" "e[232]" "e[278]" "e[290]" "e[460]" "e[472]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.1191353052854538;
	setAttr ".re" 116;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak36";
	rename -uid "72D53A34-43BB-4F07-30B3-9DA87800EEDD";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[276]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[277]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[278]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[279]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[280]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[281]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[282]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[283]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[284]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[285]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[286]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[287]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[288]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[289]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[290]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[291]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[292]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[293]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[294]" -type "float3" 0 0 -0.55596584 ;
	setAttr ".tk[295]" -type "float3" 0 0 -0.55596584 ;
createNode polySplitRing -n "polySplitRing47";
	rename -uid "90543DB0-43B2-C3DB-E80F-0DA181F8B766";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[103:104]" "e[113]" "e[125]" "e[127:128]" "e[130]" "e[132]" "e[155]" "e[162]" "e[202]" "e[210]" "e[250]" "e[274]" "e[371]" "e[383]" "e[446]" "e[457]" "e[585]" "e[597]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.14456777274608612;
	setAttr ".re" 128;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak37";
	rename -uid "7AB7209D-4CB4-E836-7612-21A2BF140294";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[296:313]" -type "float3"  0.53704113 0 0 0.53704113
		 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113
		 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113
		 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0 0.53704113 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "40FA4B5E-4745-8934-DE43-358CED5FD4FC";
	setAttr ".ics" -type "componentList" 45 "f[1]" "f[14]" "f[26:28]" "f[40:41]" "f[43]" "f[45]" "f[50:51]" "f[56]" "f[63]" "f[71]" "f[78:79]" "f[83:84]" "f[86]" "f[101:105]" "f[117:118]" "f[129]" "f[131:135]" "f[140]" "f[142]" "f[154]" "f[163:167]" "f[181]" "f[186]" "f[188:195]" "f[204]" "f[206:208]" "f[210]" "f[223]" "f[225]" "f[230]" "f[237]" "f[240]" "f[250:253]" "f[255]" "f[266]" "f[269]" "f[281]" "f[283:288]" "f[290]" "f[301]" "f[303]" "f[306]" "f[310]" "f[312]" "f[324]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4740252 0.50000048 1.4720864 ;
	setAttr ".rs" 56149;
	setAttr ".lt" -type "double3" 0 4.6781092627177328e-16 0.1068331132374048 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9469900131225586 0.49999964237213135 -2.9469900131225586 ;
	setAttr ".cbx" -type "double3" 5.8950405120849609 0.50000131130218506 5.8911628723144531 ;
createNode polyTweak -n "polyTweak38";
	rename -uid "8981072D-4D89-918D-68D0-F5AA0A108C1A";
	setAttr ".uopa" yes;
	setAttr -s 124 ".tk";
	setAttr ".tk[18]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[68]" -type "float3" 0.28967741 0 0.26521426 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[73]" -type "float3" 0.28967741 0 0.26521426 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[76]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.017034948 0 0.26521426 ;
	setAttr ".tk[81]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[82]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.017034948 0 0.26521426 ;
	setAttr ".tk[85]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[90]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[97]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[112]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[117]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[119]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[140]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[142]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[147]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[149]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[158]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[178]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[181]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[189]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[194]" -type "float3" 0 0 0.26521426 ;
	setAttr ".tk[211]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[212]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[213]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[214]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[215]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[216]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[217]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[218]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[219]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[220]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[221]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[222]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[223]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[224]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[225]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[226]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[227]" -type "float3" -0.017034948 0 0.26521426 ;
	setAttr ".tk[228]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[229]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[230]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[231]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[232]" -type "float3" -0.017034948 0 0.26521426 ;
	setAttr ".tk[234]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[239]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[242]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[243]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[254]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[255]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[285]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[286]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[291]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[292]" -type "float3" -0.017034948 0 0 ;
	setAttr ".tk[296]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[297]" -type "float3" 0.28967741 0 0.26521426 ;
	setAttr ".tk[298]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[299]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[300]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[301]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[302]" -type "float3" 0.28967741 0 0.26521426 ;
	setAttr ".tk[303]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[304]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[305]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[306]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[307]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[308]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[309]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[310]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[311]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[312]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[313]" -type "float3" 0.28967741 0 0 ;
	setAttr ".tk[314]" -type "float3" 0.28967741 0 0.79617316 ;
	setAttr ".tk[315]" -type "float3" 0.28967741 0 0.79617316 ;
	setAttr ".tk[316]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[317]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[318]" -type "float3" -0.017034948 0 0.79617316 ;
	setAttr ".tk[319]" -type "float3" -0.017034948 0 0.79617316 ;
	setAttr ".tk[320]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[321]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[322]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[323]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[324]" -type "float3" -0.017034948 0 0.79617316 ;
	setAttr ".tk[325]" -type "float3" -0.017034948 0 0.79617316 ;
	setAttr ".tk[326]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[327]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[328]" -type "float3" 0.28967741 0 0.79617316 ;
	setAttr ".tk[329]" -type "float3" 0.28967741 0 0.79617316 ;
	setAttr ".tk[330]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[331]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[332]" -type "float3" 0 0 0.79617316 ;
	setAttr ".tk[333]" -type "float3" 0 0 0.79617316 ;
createNode deleteComponent -n "deleteComponent33";
	rename -uid "E3393D5B-426C-9929-C86B-E3B0B2B81D4D";
	setAttr ".dc" -type "componentList" 30 "f[0]" "f[2:4]" "f[6:8]" "f[11:13]" "f[16:18]" "f[22:25]" "f[29:39]" "f[44]" "f[46:49]" "f[52:55]" "f[58:61]" "f[65:69]" "f[72:77]" "f[80:82]" "f[89:100]" "f[110:116]" "f[119:128]" "f[136:139]" "f[148:153]" "f[155:162]" "f[173:180]" "f[182:185]" "f[196:203]" "f[211:222]" "f[226:229]" "f[241:249]" "f[256:265]" "f[270:280]" "f[291:300]" "f[313:323]";
createNode groupId -n "groupId1315";
	rename -uid "E71CCF4A-417E-EF44-3899-0AB300C63543";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 319 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 1283 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId32.id" "Floor_Piece_BaseShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape.iog.og[0].gco";
connectAttr "groupId439.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId461.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base26|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base26|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId462.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base27|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base27|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId463.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base28|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base28|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId464.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base29|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base29|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId465.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base30|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base30|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId466.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base31|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base31|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId467.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base32|Floor_Piece_BaseShape25.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base32|Floor_Piece_BaseShape25.iog.og[4].gco"
		;
connectAttr "groupId468.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base33|Floor_Piece_BaseShape25.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base33|Floor_Piece_BaseShape25.iog.og[1].gco"
		;
connectAttr "groupId586.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base34|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base34|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId587.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base35|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base35|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId588.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base36|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base36|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId589.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base37|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base37|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId590.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base38|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base38|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId591.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base39|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base39|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId592.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base40|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base40|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId593.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base41|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base41|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId594.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base42|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base42|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId595.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base43|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base43|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId596.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base44|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base44|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId597.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base45|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base45|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId598.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base46|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base46|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId599.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base47|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base47|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId600.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base48|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base48|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId601.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base49|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base49|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId602.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base50|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base50|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId603.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base51|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base51|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId604.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base52|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base52|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId605.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base53|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base53|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId606.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base54|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base54|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId607.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base55|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base55|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId608.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base56|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base56|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId609.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base57|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base57|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId610.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base58|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base58|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId611.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base59|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base59|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId612.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base60|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base60|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId613.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base61|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base61|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId614.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base62|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base62|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId615.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base63|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base63|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId616.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base64|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base64|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId617.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base65|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base65|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId618.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base66|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base66|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId619.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base67|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base67|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId620.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base68|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base68|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId621.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base69|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base69|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId1289.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base265|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base265|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId1290.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base266|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base266|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId1291.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base267|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base267|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId1292.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base268|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base268|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId1293.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base269|Floor_Piece_BaseShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base269|Floor_Piece_BaseShape25.iog.og[0].gco"
		;
connectAttr "groupId624.id" "Floor_Piece_BaseShape70.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape70.iog.og[0].gco";
connectAttr "groupId625.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId640.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base72|Floor_Piece_BaseShape71.iog.og[7].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base72|Floor_Piece_BaseShape71.iog.og[7].gco"
		;
connectAttr "groupId641.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base73|Floor_Piece_BaseShape71.iog.og[7].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base73|Floor_Piece_BaseShape71.iog.og[7].gco"
		;
connectAttr "groupId642.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base74|Floor_Piece_BaseShape71.iog.og[7].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base74|Floor_Piece_BaseShape71.iog.og[7].gco"
		;
connectAttr "groupId643.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base75|Floor_Piece_BaseShape71.iog.og[7].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base75|Floor_Piece_BaseShape71.iog.og[7].gco"
		;
connectAttr "groupId644.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base76|Floor_Piece_BaseShape71.iog.og[6].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base76|Floor_Piece_BaseShape71.iog.og[6].gco"
		;
connectAttr "groupId645.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base77|Floor_Piece_BaseShape71.iog.og[6].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base77|Floor_Piece_BaseShape71.iog.og[6].gco"
		;
connectAttr "groupId646.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base78|Floor_Piece_BaseShape71.iog.og[6].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base78|Floor_Piece_BaseShape71.iog.og[6].gco"
		;
connectAttr "groupId647.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base79|Floor_Piece_BaseShape71.iog.og[3].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base79|Floor_Piece_BaseShape71.iog.og[3].gco"
		;
connectAttr "groupId648.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base80|Floor_Piece_BaseShape71.iog.og[2].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base80|Floor_Piece_BaseShape71.iog.og[2].gco"
		;
connectAttr "groupId649.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base81|Floor_Piece_BaseShape71.iog.og[2].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base81|Floor_Piece_BaseShape71.iog.og[2].gco"
		;
connectAttr "groupId650.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base82|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base82|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1183.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base215|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base215|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1184.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base216|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base216|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1185.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base217|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base217|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1186.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base218|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base218|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1187.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base219|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base219|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1188.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base220|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base220|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1189.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base221|Floor_Piece_BaseShape71.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base221|Floor_Piece_BaseShape71.iog.og[1].gco"
		;
connectAttr "groupId1242.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base226|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base226|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1243.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base227|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base227|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1244.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base228|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base228|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1245.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base229|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base229|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1246.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base230|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base230|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1247.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base231|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base231|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1248.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base232|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base232|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1249.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base233|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base233|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1250.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base234|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base234|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1251.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base235|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base235|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1252.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base236|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base236|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1254.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base238|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base238|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1255.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base239|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base239|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1256.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base240|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base240|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1257.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base241|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base241|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1260.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base244|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base244|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1261.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base245|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base245|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1262.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base246|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base246|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1263.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base247|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base247|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1272.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base248|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base248|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1273.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base249|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base249|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1274.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base250|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base250|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1276.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base252|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base252|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1277.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base253|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base253|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId1280.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base256|Floor_Piece_BaseShape71.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base256|Floor_Piece_BaseShape71.iog.og[0].gco"
		;
connectAttr "groupId651.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83.iog.og[1].gco"
		;
connectAttr "groupId663.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base84|Floor_Piece_BaseShape83.iog.og[9].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base84|Floor_Piece_BaseShape83.iog.og[9].gco"
		;
connectAttr "groupId664.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base85|Floor_Piece_BaseShape83.iog.og[9].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base85|Floor_Piece_BaseShape83.iog.og[9].gco"
		;
connectAttr "groupId665.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base86|Floor_Piece_BaseShape83.iog.og[9].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base86|Floor_Piece_BaseShape83.iog.og[9].gco"
		;
connectAttr "groupId666.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base87|Floor_Piece_BaseShape83.iog.og[9].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base87|Floor_Piece_BaseShape83.iog.og[9].gco"
		;
connectAttr "groupId667.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base88|Floor_Piece_BaseShape83.iog.og[8].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base88|Floor_Piece_BaseShape83.iog.og[8].gco"
		;
connectAttr "groupId668.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base89|Floor_Piece_BaseShape83.iog.og[8].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base89|Floor_Piece_BaseShape83.iog.og[8].gco"
		;
connectAttr "groupId669.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base90|Floor_Piece_BaseShape83.iog.og[8].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base90|Floor_Piece_BaseShape83.iog.og[8].gco"
		;
connectAttr "groupId670.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base91|Floor_Piece_BaseShape83.iog.og[5].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base91|Floor_Piece_BaseShape83.iog.og[5].gco"
		;
connectAttr "groupId671.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base92|Floor_Piece_BaseShape83.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base92|Floor_Piece_BaseShape83.iog.og[4].gco"
		;
connectAttr "groupId672.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base93|Floor_Piece_BaseShape83.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base93|Floor_Piece_BaseShape83.iog.og[4].gco"
		;
connectAttr "groupId673.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base94|Floor_Piece_BaseShape83.iog.og[3].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base94|Floor_Piece_BaseShape83.iog.og[3].gco"
		;
connectAttr "groupId674.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base95|Floor_Piece_BaseShape83.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base95|Floor_Piece_BaseShape83.iog.og[1].gco"
		;
connectAttr "groupId1065.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base96|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base96|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1066.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base97|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base97|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1067.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base98|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base98|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1068.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base99|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base99|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1069.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base100|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base100|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1070.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base101|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base101|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1071.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base102|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base102|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1072.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base103|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base103|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1073.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base104|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base104|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1074.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base105|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base105|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1075.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base106|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base106|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1076.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base107|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base107|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1077.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base108|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base108|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1078.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base109|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base109|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1079.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base110|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base110|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1080.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base111|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base111|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1081.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base112|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base112|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1082.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base113|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base113|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1083.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base114|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base114|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1084.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base115|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base115|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1085.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base116|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base116|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1086.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base117|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base117|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1087.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base118|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base118|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1088.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base119|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base119|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1089.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base120|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base120|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1090.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base121|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base121|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1091.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base122|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base122|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1092.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base123|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base123|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1093.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base124|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base124|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1094.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base125|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base125|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1095.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base126|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base126|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1096.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base127|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base127|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1097.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base128|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base128|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1098.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base129|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base129|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1099.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base130|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base130|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1100.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base131|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base131|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1101.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base132|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base132|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1102.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base133|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base133|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1103.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base134|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base134|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1104.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base135|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base135|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1105.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base136|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base136|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1106.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base137|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base137|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1107.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base138|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base138|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1108.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base139|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base139|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1109.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base140|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base140|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1110.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base141|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base141|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1111.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base142|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base142|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1112.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base143|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base143|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1113.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base144|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base144|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1114.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base145|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base145|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1115.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base146|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base146|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1116.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base147|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base147|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1117.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base148|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base148|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1118.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base149|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base149|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1119.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base150|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base150|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1120.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base151|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base151|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1121.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base152|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base152|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1122.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base153|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base153|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1123.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base154|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base154|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1124.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base155|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base155|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1125.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base156|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base156|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1126.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base157|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base157|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1127.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base158|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base158|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1128.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base159|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base159|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1129.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base160|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base160|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1130.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base161|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base161|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1131.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base162|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base162|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1132.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base163|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base163|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1133.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base164|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base164|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1134.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base165|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base165|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1135.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base166|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base166|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1136.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base167|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base167|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1137.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base168|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base168|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1138.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base169|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base169|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1139.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base170|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base170|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1140.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base171|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base171|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1141.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base172|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base172|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1142.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base173|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base173|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1143.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base174|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base174|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1144.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base175|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base175|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1145.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base176|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base176|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1146.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base177|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base177|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1147.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base178|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base178|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1148.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base179|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base179|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1149.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base180|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base180|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1150.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base181|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base181|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1151.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base182|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base182|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1152.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base183|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base183|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1153.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base184|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base184|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1154.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base185|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base185|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1155.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base186|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base186|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1156.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base187|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base187|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1157.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base188|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base188|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1158.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base189|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base189|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1159.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base190|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base190|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1160.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base191|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base191|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1161.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base192|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base192|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1162.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base193|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base193|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1163.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base194|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base194|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1164.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base195|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base195|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1165.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base196|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base196|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1166.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base197|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base197|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1167.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base198|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base198|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1168.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base199|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base199|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1170.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base201|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base201|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1171.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base202|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base202|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1172.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base203|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base203|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1173.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base204|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base204|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1174.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base205|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base205|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1175.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base206|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base206|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1176.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base207|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base207|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1177.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base208|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base208|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1178.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base209|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base209|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1179.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base210|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base210|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1180.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base211|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base211|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1304.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base270|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base270|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1305.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base271|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base271|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1306.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base272|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base272|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1307.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base273|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base273|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1308.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base274|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base274|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1309.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base275|Floor_Piece_BaseShape83.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base275|Floor_Piece_BaseShape83.iog.og[0].gco"
		;
connectAttr "groupId1208.id" "Floor_Piece_BaseShape222.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape222.iog.og[7].gco";
connectAttr "groupId1209.id" "Floor_Piece_BaseShape223.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape223.iog.og[7].gco";
connectAttr "groupId1210.id" "Floor_Piece_BaseShape224.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape224.iog.og[7].gco";
connectAttr "groupId1211.id" "Floor_Piece_BaseShape225.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape225.iog.og[7].gco";
connectAttr "groupId1287.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base263|Floor_Piece_BaseShape263.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base263|Floor_Piece_BaseShape263.iog.og[0].gco"
		;
connectAttr "groupId1288.id" "|Floor|Floor_Piece_Base|Floor_Piece_Base264|Floor_Piece_BaseShape263.iog.og[8].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Floor|Floor_Piece_Base|Floor_Piece_Base264|Floor_Piece_BaseShape263.iog.og[8].gco"
		;
connectAttr "groupId1315.id" "Floor_Piece_BaseShape276.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_Piece_BaseShape276.iog.og[1].gco";
connectAttr "polyNormal4.out" "Floor_PieceShape.i";
connectAttr "groupId8.id" "Floor_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_PieceShape.iog.og[0].gco";
connectAttr "groupId7.id" "Cieling_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Cieling_PieceShape.iog.og[0].gco";
connectAttr "deleteComponent16.og" "Quad_PieceShape.i";
connectAttr "deleteComponent19.og" "T_PieceShape.i";
connectAttr "groupId3.id" "T_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "T_PieceShape.iog.og[0].gco";
connectAttr "polyDelEdge4.out" "L_pieceShape.i";
connectAttr "deleteComponent21.og" "Diagonal_PieceShape.i";
connectAttr "groupId9.id" "Diagonal_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Diagonal_PieceShape.iog.og[0].gco";
connectAttr "polyNormal5.out" "Room_PieceShape.i";
connectAttr "polyBridgeEdge25.out" "Straight_PieceShape.i";
connectAttr "groupId10.id" "Straight_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Straight_PieceShape.iog.og[0].gco";
connectAttr "groupId14.id" "Wall_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_PieceShape.iog.og[0].gco";
connectAttr "groupId18.id" "Inside_Diagonal_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Diagonal_PieceShape.iog.og[0].gco"
		;
connectAttr "groupId19.id" "Outside_Diagonal_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_PieceShape.iog.og[0].gco"
		;
connectAttr "groupId24.id" "Inside_Corner_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_PieceShape.iog.og[0].gco";
connectAttr "groupId25.id" "Outside_Corner_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Corner_PieceShape.iog.og[0].gco"
		;
connectAttr "groupId27.id" "Wall_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece1Shape.iog.og[0].gco";
connectAttr "groupId29.id" "Wall_Piece2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece2Shape.iog.og[0].gco";
connectAttr "groupId31.id" "Wall_Piece3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece3Shape.iog.og[0].gco";
connectAttr "groupId36.id" "Wall_Piece5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece5Shape.iog.og[0].gco";
connectAttr "groupId40.id" "Wall_Piece6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece6Shape.iog.og[0].gco";
connectAttr "groupId46.id" "Wall_Piece7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece7Shape.iog.og[0].gco";
connectAttr "groupId47.id" "Wall_Piece8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece8Shape.iog.og[0].gco";
connectAttr "groupId48.id" "Wall_Piece9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece9Shape.iog.og[0].gco";
connectAttr "groupId428.id" "Wall_Piece10Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece10Shape.iog.og[0].gco";
connectAttr "groupId430.id" "Wall_Piece11Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece11Shape.iog.og[0].gco";
connectAttr "groupId431.id" "Wall_Piece12Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece12Shape.iog.og[0].gco";
connectAttr "groupId432.id" "Wall_Piece13Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece13Shape.iog.og[0].gco";
connectAttr "groupId433.id" "Wall_Piece14Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece14Shape.iog.og[0].gco";
connectAttr "groupId39.id" "Straight_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Straight_Piece1Shape.iog.og[0].gco";
connectAttr "groupId49.id" "Diagonal_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Diagonal_Piece1Shape.iog.og[0].gco";
connectAttr "groupId426.id" "Diagonal_Piece2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Diagonal_Piece2Shape.iog.og[0].gco";
connectAttr "groupId30.id" "Outside_Diagonal_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece1Shape.iog.og[0].gco"
		;
connectAttr "groupId35.id" "Outside_Diagonal_Piece2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece2Shape.iog.og[0].gco"
		;
connectAttr "groupId45.id" "Outside_Diagonal_Piece4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece4Shape.iog.og[0].gco"
		;
connectAttr "groupId42.id" "Outside_Diagonal_Piece3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece3Shape.iog.og[0].gco"
		;
connectAttr "groupId429.id" "Outside_Corner_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Corner_Piece1Shape.iog.og[0].gco"
		;
connectAttr "groupId28.id" "Inside_Corner_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece1Shape.iog.og[0].gco"
		;
connectAttr "groupId623.id" "Inside_Corner_Piece3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece3Shape.iog.og[0].gco"
		;
connectAttr "polySplitRing20.out" "Inside_Corner_Piece3Shape.i";
connectAttr "groupId622.id" "Inside_Corner_Piece4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece4Shape.iog.og[0].gco"
		;
connectAttr "polySplitRing19.out" "Inside_Corner_Piece4Shape.i";
connectAttr "groupId41.id" "Inside_Corner_Piece2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece2Shape.iog.og[0].gco"
		;
connectAttr "groupId427.id" "Inside_Corner_Piece5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece5Shape.iog.og[0].gco"
		;
connectAttr "groupId434.id" "Inside_Corner_Piece6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece6Shape.iog.og[0].gco"
		;
connectAttr "groupId435.id" "Inside_Corner_Piece7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Piece7Shape.iog.og[0].gco"
		;
connectAttr "groupId436.id" "Inside_Corner_Nub_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Nub_PieceShape.iog.og[0].gco"
		;
connectAttr "polyNormal6.out" "Inside_Corner_Nub_PieceShape.i";
connectAttr "groupId437.id" "Inside_Corner_Nub_Piece1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Nub_Piece1Shape.iog.og[0].gco"
		;
connectAttr "groupId438.id" "Inside_Corner_Nub_Piece2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Nub_Piece2Shape.iog.og[0].gco"
		;
connectAttr "polyExtrudeFace3.out" "Brazier_Shape3.i";
connectAttr "polyCube8.out" "Fire_Potion_PlaquardShape.i";
connectAttr "polyExtrudeFace5.out" "pCubeShape1.i";
connectAttr "deleteComponent30.og" "pCubeShape2.i";
connectAttr "groupId1192.id" "Wall_Piece15Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece15Shape.iog.og[0].gco";
connectAttr "groupId1193.id" "Wall_Piece16Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece16Shape.iog.og[0].gco";
connectAttr "groupId1194.id" "Wall_Piece17Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece17Shape.iog.og[0].gco";
connectAttr "groupId1195.id" "Wall_Piece18Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece18Shape.iog.og[0].gco";
connectAttr "groupId1198.id" "Wall_Piece19Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece19Shape.iog.og[0].gco";
connectAttr "groupId1199.id" "Wall_Piece20Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece20Shape.iog.og[0].gco";
connectAttr "groupId1200.id" "Outside_Diagonal_Piece5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece5Shape.iog.og[0].gco"
		;
connectAttr "groupId1201.id" "Wall_Piece21Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece21Shape.iog.og[0].gco";
connectAttr "groupId1202.id" "Wall_Piece22Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece22Shape.iog.og[0].gco";
connectAttr "groupId1203.id" "Outside_Diagonal_Piece6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Diagonal_Piece6Shape.iog.og[0].gco"
		;
connectAttr "groupId1204.id" "Wall_Piece23Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece23Shape.iog.og[0].gco";
connectAttr "groupId1205.id" "Wall_Piece24Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece24Shape.iog.og[0].gco";
connectAttr "groupId1206.id" "Wall_Piece25Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece25Shape.iog.og[0].gco";
connectAttr "groupId1207.id" "Wall_Piece26Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece26Shape.iog.og[0].gco";
connectAttr "groupId1294.id" "Wall_Piece27Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece27Shape.iog.og[0].gco";
connectAttr "groupId1313.id" "Wall_Piece28Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall_Piece28Shape.iog.og[0].gco";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "deleteComponent32.og" "pCubeShape12.i";
connectAttr "deleteComponent33.og" "pCube16Shape.i";
connectAttr "groupId1314.id" "pCube16Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube16Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "Quad_PieceShape.wm" "polySplitRing1.mp";
connectAttr "polyCube2.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "Quad_PieceShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyBridgeEdge1.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "polyBridgeEdge7.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "polyBridgeEdge8.ip";
connectAttr "Quad_PieceShape.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyNormal1.ip";
connectAttr "polySurfaceShape1.o" "polyBridgeEdge9.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "polyBridgeEdge10.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "polyBridgeEdge11.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "polyBridgeEdge12.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "polyBridgeEdge13.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "polyBridgeEdge14.ip";
connectAttr "L_pieceShape.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyNormal2.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "polyCube3.out" "polyTweak2.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "polySplitRing4.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyBridgeEdge15.ip";
connectAttr "polyBridgeEdge15.out" "polyBridgeEdge16.ip";
connectAttr "polyBridgeEdge16.out" "polyBridgeEdge17.ip";
connectAttr "polyBridgeEdge17.out" "polyBridgeEdge18.ip";
connectAttr "polyBridgeEdge18.out" "polyBridgeEdge19.ip";
connectAttr "polyBridgeEdge19.out" "polyBridgeEdge20.ip";
connectAttr "polyBridgeEdge20.out" "polyBridgeEdge21.ip";
connectAttr "polyBridgeEdge21.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyNormal3.ip";
connectAttr "polyNormal3.out" "polyBridgeEdge22.ip";
connectAttr "polyBridgeEdge22.out" "polyChipOff1.ip";
connectAttr "groupParts1.og" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyNormal1.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "polyNormal2.out" "deleteComponent17.ig";
connectAttr "groupParts2.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "groupParts3.og" "polyNormal4.ip";
connectAttr "|Base_Pieces|Floor_Piece|polySurfaceShape2.o" "groupParts3.ig";
connectAttr "groupId8.id" "groupParts3.gi";
connectAttr "groupParts4.og" "polyBridgeEdge23.ip";
connectAttr "Diagonal_PieceShape.wm" "polyBridgeEdge23.mp";
connectAttr "|Base_Pieces|Diagonal_Piece|polySurfaceShape3.o" "groupParts4.ig";
connectAttr "groupId9.id" "groupParts4.gi";
connectAttr "polyBridgeEdge23.out" "polyBridgeEdge24.ip";
connectAttr "Diagonal_PieceShape.wm" "polyBridgeEdge24.mp";
connectAttr "polyBridgeEdge24.out" "polySplitRing5.ip";
connectAttr "Diagonal_PieceShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "groupParts5.og" "polyBridgeEdge25.ip";
connectAttr "Straight_PieceShape.wm" "polyBridgeEdge25.mp";
connectAttr "|Base_Pieces|Straight_Piece|polySurfaceShape4.o" "groupParts5.ig";
connectAttr "groupId10.id" "groupParts5.gi";
connectAttr "deleteComponent17.og" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "deleteComponent25.og" "polyNormal5.ip";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "polyDelEdge2.out" "deleteComponent23.ig";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "deleteComponent22.og" "polyDelEdge1.ip";
connectAttr "polyTweak5.out" "deleteComponent22.ig";
connectAttr "polySplitRing7.out" "polyTweak5.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "Room_PieceShape.wm" "polySplitRing7.mp";
connectAttr "polyTweak4.out" "polySplitRing6.ip";
connectAttr "Room_PieceShape.wm" "polySplitRing6.mp";
connectAttr "polyCube4.out" "polyTweak4.ip";
connectAttr "groupParts6.og" "polySplitRing8.ip";
connectAttr "Inside_Corner_Nub_PieceShape.wm" "polySplitRing8.mp";
connectAttr "|Inside_Corner_Nub_Piece|polySurfaceShape5.o" "groupParts6.ig";
connectAttr "groupId436.id" "groupParts6.gi";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "Inside_Corner_Nub_PieceShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "polyNormal6.ip";
connectAttr "polySphere1.out" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "polyExtrudeFace2.ip";
connectAttr "Brazier_Shape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "Brazier_Shape3.wm" "polyExtrudeFace3.mp";
connectAttr "groupParts7.og" "polySplitRing19.ip";
connectAttr "Inside_Corner_Piece4Shape.wm" "polySplitRing19.mp";
connectAttr "polySurfaceShape8.o" "groupParts7.ig";
connectAttr "groupId622.id" "groupParts7.gi";
connectAttr "groupParts8.og" "polySplitRing20.ip";
connectAttr "Inside_Corner_Piece3Shape.wm" "polySplitRing20.mp";
connectAttr "polySurfaceShape9.o" "groupParts8.ig";
connectAttr "groupId623.id" "groupParts8.gi";
connectAttr "polyCube11.out" "polySplitRing21.ip";
connectAttr "pCubeShape1.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape1.wm" "polySplitRing22.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "pCubeShape1.wm" "polySplitRing23.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape1.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pCubeShape1.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "pCubeShape1.wm" "polySplitRing26.mp";
connectAttr "polySplitRing26.out" "polySplitRing27.ip";
connectAttr "pCubeShape1.wm" "polySplitRing27.mp";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "pCubeShape1.wm" "polySplitRing28.mp";
connectAttr "polySplitRing28.out" "polySplitRing29.ip";
connectAttr "pCubeShape1.wm" "polySplitRing29.mp";
connectAttr "polyTweak13.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySplitRing29.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace4.out" "polySplitRing30.ip";
connectAttr "pCubeShape1.wm" "polySplitRing30.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "pCubeShape1.wm" "polySplitRing31.mp";
connectAttr "polyTweak14.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing31.out" "polyTweak14.ip";
connectAttr "polyCube12.out" "polySplitRing32.ip";
connectAttr "pCubeShape2.wm" "polySplitRing32.mp";
connectAttr "polySplitRing32.out" "polySplitRing33.ip";
connectAttr "pCubeShape2.wm" "polySplitRing33.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polySplitRing33.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace6.out" "deleteComponent30.ig";
connectAttr "polyCube13.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace10.out" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "groupParts9.og" "polyMergeVert1.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert1.mp";
connectAttr "polySurfaceShape10.o" "groupParts9.ig";
connectAttr "groupId1314.id" "groupParts9.gi";
connectAttr "polyTweak18.out" "polyMergeVert2.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert3.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert4.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert5.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyMergeVert6.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert7.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyMergeVert8.ip";
connectAttr "pCube16Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak24.ip";
connectAttr "polyMergeVert8.out" "polySplitRing34.ip";
connectAttr "pCube16Shape.wm" "polySplitRing34.mp";
connectAttr "polyTweak25.out" "polySplitRing35.ip";
connectAttr "pCube16Shape.wm" "polySplitRing35.mp";
connectAttr "polySplitRing34.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polySplitRing36.ip";
connectAttr "pCube16Shape.wm" "polySplitRing36.mp";
connectAttr "polySplitRing35.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polySplitRing37.ip";
connectAttr "pCube16Shape.wm" "polySplitRing37.mp";
connectAttr "polySplitRing36.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySplitRing38.ip";
connectAttr "pCube16Shape.wm" "polySplitRing38.mp";
connectAttr "polySplitRing37.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polySplitRing39.ip";
connectAttr "pCube16Shape.wm" "polySplitRing39.mp";
connectAttr "polySplitRing38.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polySplitRing40.ip";
connectAttr "pCube16Shape.wm" "polySplitRing40.mp";
connectAttr "polySplitRing39.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing41.ip";
connectAttr "pCube16Shape.wm" "polySplitRing41.mp";
connectAttr "polySplitRing40.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polySplitRing42.ip";
connectAttr "pCube16Shape.wm" "polySplitRing42.mp";
connectAttr "polySplitRing41.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polySplitRing43.ip";
connectAttr "pCube16Shape.wm" "polySplitRing43.mp";
connectAttr "polySplitRing42.out" "polyTweak33.ip";
connectAttr "polyTweak34.out" "polySplitRing44.ip";
connectAttr "pCube16Shape.wm" "polySplitRing44.mp";
connectAttr "polySplitRing43.out" "polyTweak34.ip";
connectAttr "polyTweak35.out" "polySplitRing45.ip";
connectAttr "pCube16Shape.wm" "polySplitRing45.mp";
connectAttr "polySplitRing44.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polySplitRing46.ip";
connectAttr "pCube16Shape.wm" "polySplitRing46.mp";
connectAttr "polySplitRing45.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polySplitRing47.ip";
connectAttr "pCube16Shape.wm" "polySplitRing47.mp";
connectAttr "polySplitRing46.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace11.ip";
connectAttr "pCube16Shape.wm" "polyExtrudeFace11.mp";
connectAttr "polySplitRing47.out" "polyTweak38.ip";
connectAttr "polyExtrudeFace11.out" "deleteComponent33.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Quad_PieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_pieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "T_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Cieling_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Room_PieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Straight_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Outside_Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Inside_Corner_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Corner_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Stub_PieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Corner_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Wall_Piece2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Diagonal_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Wall_Piece3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Diagonal_Piece2Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Wall_Piece5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Straight_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Corner_Piece2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Outside_Diagonal_Piece3Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Outside_Diagonal_Piece4Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Wall_Piece7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Diagonal_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Diagonal_Piece2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Corner_Piece5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Wall_Piece10Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Corner_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Wall_Piece11Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece12Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece13Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece14Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Room_Piece1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Corner_Piece6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Inside_Corner_Piece7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Inside_Corner_Nub_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Inside_Corner_Nub_Piece1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Inside_Corner_Nub_Piece2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Brazier_Shape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Brazier_Shape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Fire_Potion_PlaquardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base25|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base26|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base27|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base28|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base29|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base30|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base31|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base32|Floor_Piece_BaseShape25.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base33|Floor_Piece_BaseShape25.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base34|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base35|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base36|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base37|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base38|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base39|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base40|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base41|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base42|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base43|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base44|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base45|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base46|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base47|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base48|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base49|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base50|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base51|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base52|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base53|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base54|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base55|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base56|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base57|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base58|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base59|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base60|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base61|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base62|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base63|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base64|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base65|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base66|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base67|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base68|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base69|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Inside_Corner_Piece4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Inside_Corner_Piece3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Door_Frame1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Door_Frame1|Door|DoorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Door_Frame2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Door_Frame2|Door|DoorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape70.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base71|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base72|Floor_Piece_BaseShape71.iog.og[7]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base73|Floor_Piece_BaseShape71.iog.og[7]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base74|Floor_Piece_BaseShape71.iog.og[7]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base75|Floor_Piece_BaseShape71.iog.og[7]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base76|Floor_Piece_BaseShape71.iog.og[6]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base77|Floor_Piece_BaseShape71.iog.og[6]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base78|Floor_Piece_BaseShape71.iog.og[6]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base79|Floor_Piece_BaseShape71.iog.og[3]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base80|Floor_Piece_BaseShape71.iog.og[2]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base81|Floor_Piece_BaseShape71.iog.og[2]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base82|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base83|Floor_Piece_BaseShape83.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base84|Floor_Piece_BaseShape83.iog.og[9]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base85|Floor_Piece_BaseShape83.iog.og[9]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base86|Floor_Piece_BaseShape83.iog.og[9]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base87|Floor_Piece_BaseShape83.iog.og[9]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base88|Floor_Piece_BaseShape83.iog.og[8]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base89|Floor_Piece_BaseShape83.iog.og[8]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base90|Floor_Piece_BaseShape83.iog.og[8]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base91|Floor_Piece_BaseShape83.iog.og[5]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base92|Floor_Piece_BaseShape83.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base93|Floor_Piece_BaseShape83.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base94|Floor_Piece_BaseShape83.iog.og[3]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base95|Floor_Piece_BaseShape83.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base96|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base97|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base98|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base99|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base100|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base101|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base102|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base103|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base104|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base105|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base106|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base107|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base108|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base109|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base110|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base111|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base112|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base113|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base114|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base115|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base116|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base117|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base118|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base119|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base120|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base121|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base122|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base123|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base124|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base125|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base126|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base127|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base128|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base129|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base130|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base131|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base132|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base133|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base134|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base135|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base136|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base137|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base138|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base139|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base140|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base141|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base142|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base143|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base144|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base145|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base146|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base147|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base148|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base149|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base150|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base151|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base152|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base153|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base154|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base155|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base156|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base157|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base158|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base159|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base160|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base161|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base162|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base163|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base164|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base165|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base166|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base167|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base168|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base169|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base170|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base171|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base172|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base173|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base174|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base175|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base176|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base177|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base178|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base179|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base180|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base181|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base182|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base183|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base184|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base185|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base186|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base187|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base188|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base189|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base190|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base191|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base192|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base193|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base194|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base195|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base196|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base197|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base198|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base199|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base201|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base202|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base203|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base204|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base205|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base206|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base207|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base208|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base209|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base210|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base211|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base215|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base216|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base217|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base218|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base219|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base220|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base221|Floor_Piece_BaseShape71.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece15Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece16Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece17Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece18Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece19Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece20Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Diagonal_Piece5Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Wall_Piece21Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece22Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Diagonal_Piece6Shape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Wall_Piece23Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece24Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece25Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece26Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape222.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape223.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape224.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape225.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base226|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base227|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base228|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base229|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base230|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base231|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base232|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base233|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base234|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base235|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base236|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base238|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base239|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base240|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base241|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base244|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base245|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base246|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base247|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base248|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base249|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base250|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base252|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base253|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base256|Floor_Piece_BaseShape71.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base263|Floor_Piece_BaseShape263.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base264|Floor_Piece_BaseShape263.iog.og[8]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base265|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base266|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base267|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base268|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base269|Floor_Piece_BaseShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Piece27Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base270|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base271|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base272|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base273|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base274|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Floor|Floor_Piece_Base|Floor_Piece_Base275|Floor_Piece_BaseShape83.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Wall_Piece28Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube16Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Piece_BaseShape276.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId189.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId204.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId206.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId207.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId208.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId212.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId215.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId216.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId217.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId218.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId219.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId220.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId221.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId222.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId223.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId224.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId225.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId226.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId227.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId228.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId229.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId230.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId231.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId232.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId233.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId234.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId235.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId236.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId237.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId238.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId239.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId240.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId241.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId242.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId243.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId244.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId245.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId246.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId247.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId248.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId249.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId250.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId251.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId252.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId253.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId254.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId255.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId256.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId257.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId259.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId260.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId261.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId262.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId263.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId266.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId267.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId268.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId269.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId270.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId271.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId272.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId273.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId274.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId275.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId276.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId277.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId278.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId279.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId280.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId281.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId282.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId283.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId284.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId286.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId287.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId288.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId289.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId290.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId291.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId292.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId293.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId294.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId295.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId296.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId297.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId298.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId300.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId301.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId302.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId303.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId304.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId305.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId306.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId307.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId308.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId309.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId310.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId311.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId312.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId314.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId315.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId316.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId317.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId318.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId319.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId320.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId321.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId322.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId323.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId324.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId325.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId326.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId328.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId329.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId330.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId331.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId332.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId333.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId334.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId335.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId336.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId337.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId338.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId339.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId340.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId342.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId343.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId344.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId345.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId346.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId347.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId348.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId349.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId350.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId351.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId352.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId353.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId354.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId356.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId357.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId358.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId359.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId360.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId361.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId362.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId363.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId364.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId365.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId366.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId367.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId368.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId370.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId371.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId372.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId373.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId374.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId375.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId376.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId377.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId378.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId379.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId380.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId381.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId382.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId384.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId385.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId386.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId387.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId388.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId389.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId390.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId391.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId392.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId393.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId394.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId395.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId396.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId397.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId398.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId399.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId400.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId401.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId402.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId403.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId404.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId405.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId406.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId407.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId408.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId409.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId410.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId411.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId412.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId413.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId414.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId415.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId416.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId417.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId418.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId419.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId420.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId421.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId422.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId423.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId424.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId426.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId427.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId428.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId429.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId430.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId431.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId432.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId433.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId434.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId435.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId436.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId437.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId438.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId439.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId440.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId441.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId442.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId443.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId444.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId445.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId446.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId447.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId448.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId449.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId450.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId451.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId452.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId453.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId454.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId455.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId456.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId457.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId458.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId459.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId460.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId461.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId462.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId463.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId464.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId465.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId466.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId467.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId468.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId469.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId470.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId471.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId472.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId473.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId474.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId475.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId476.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId477.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId478.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId479.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId480.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId481.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId482.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId483.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId484.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId485.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId486.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId487.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId488.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId489.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId490.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId491.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId492.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId493.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId494.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId495.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId496.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId497.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId498.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId499.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId500.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId501.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId502.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId503.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId504.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId505.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId506.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId507.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId508.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId509.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId510.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId511.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId512.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId513.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId514.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId515.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId516.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId517.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId518.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId519.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId520.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId521.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId522.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId523.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId524.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId525.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId526.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId527.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId528.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId529.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId530.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId531.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId532.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId533.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId534.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId535.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId536.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId537.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId538.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId539.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId540.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId541.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId542.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId543.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId544.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId545.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId546.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId547.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId548.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId549.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId550.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId551.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId552.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId553.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId554.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId555.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId556.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId557.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId558.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId559.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId560.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId561.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId562.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId563.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId564.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId565.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId566.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId567.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId568.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId569.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId570.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId571.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId572.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId573.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId574.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId575.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId576.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId577.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId578.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId579.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId580.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId581.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId582.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId583.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId584.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId585.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId586.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId587.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId588.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId589.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId590.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId591.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId592.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId593.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId594.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId595.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId596.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId597.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId598.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId599.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId600.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId601.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId602.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId603.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId604.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId605.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId606.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId607.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId608.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId609.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId610.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId611.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId612.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId613.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId614.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId615.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId616.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId617.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId618.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId619.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId620.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId621.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId622.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId623.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId624.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId625.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId626.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId627.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId628.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId629.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId630.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId631.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId632.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId633.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId634.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId635.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId636.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId637.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId638.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId639.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId640.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId641.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId642.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId643.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId644.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId645.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId646.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId647.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId648.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId649.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId650.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId651.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId652.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId653.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId654.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId655.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId656.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId657.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId658.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId659.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId660.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId661.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId662.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId663.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId664.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId665.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId666.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId667.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId668.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId669.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId670.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId671.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId672.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId673.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId674.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId675.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId676.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId677.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId678.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId679.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId680.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId681.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId682.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId683.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId684.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId685.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId686.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId687.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId688.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId689.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId690.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId691.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId692.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId693.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId694.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId695.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId696.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId697.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId698.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId699.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId700.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId701.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId702.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId703.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId704.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId705.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId706.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId707.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId708.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId709.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId710.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId711.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId712.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId713.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId714.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId715.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId716.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId717.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId718.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId719.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId720.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId721.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId722.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId723.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId724.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId725.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId726.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId727.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId728.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId729.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId730.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId731.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId732.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId733.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId734.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId735.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId736.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId737.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId738.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId739.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId740.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId741.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId742.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId743.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId744.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId745.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId746.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId747.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId748.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId749.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId750.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId751.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId752.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId753.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId754.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId755.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId756.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId757.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId758.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId759.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId760.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId761.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId762.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId763.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId764.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId765.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId766.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId767.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId768.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId769.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId770.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId771.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId772.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId773.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId774.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId775.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId776.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId777.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId778.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId779.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId780.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId781.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId782.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId783.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId784.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId785.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId786.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId787.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId788.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId789.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId790.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId791.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId792.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId793.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId794.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId795.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId796.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId797.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId798.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId799.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId800.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId801.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId802.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId803.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId804.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId805.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId806.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId807.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId808.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId809.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId810.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId811.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId812.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId813.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId814.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId815.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId816.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId817.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId818.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId819.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId820.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId821.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId822.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId823.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId824.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId825.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId826.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId827.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId828.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId829.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId830.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId831.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId832.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId833.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId834.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId835.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId836.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId837.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId838.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId839.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId840.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId841.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId842.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId843.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId844.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId845.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId846.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId847.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId848.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId849.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId850.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId851.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId852.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId853.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId854.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId855.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId856.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId857.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId858.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId859.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId860.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId861.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId862.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId863.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId864.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId865.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId866.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId867.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId868.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId869.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId870.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId871.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId872.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId873.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId874.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId875.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId876.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId877.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId878.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId879.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId880.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId881.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId882.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId883.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId884.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId885.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId886.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId887.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId888.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId889.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId890.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId891.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId892.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId893.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId894.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId895.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId896.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId897.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId898.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId899.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId900.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId901.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId902.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId903.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId904.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId905.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId906.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId907.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId908.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId909.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId910.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId911.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId912.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId913.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId914.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId915.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId916.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId917.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId918.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId919.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId920.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId921.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId922.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId923.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId924.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId925.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId926.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId927.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId928.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId929.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId930.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId931.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId932.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId933.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId934.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId935.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId936.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId937.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId938.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId939.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId940.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId941.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId942.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId943.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId944.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId945.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId946.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId947.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId948.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId949.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId950.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId951.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId952.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId953.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId954.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId955.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId956.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId957.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId958.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId959.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId960.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId961.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId962.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId963.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId964.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId965.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId966.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId967.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId968.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId969.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId970.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId971.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId972.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId973.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId974.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId975.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId976.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId977.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId978.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId979.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId980.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId981.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId982.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId983.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId984.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId985.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId986.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId987.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId988.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId989.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId990.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId991.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId992.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId993.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId994.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId995.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId996.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId997.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId998.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId999.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1000.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1001.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1002.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1003.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1004.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1005.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1006.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1007.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1008.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1009.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1010.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1011.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1012.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1013.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1014.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1015.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1016.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1017.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1018.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1019.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1020.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1021.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1022.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1023.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1024.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1025.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1026.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1027.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1028.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1029.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1030.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1031.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1032.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1033.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1034.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1035.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1036.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1037.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1038.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1039.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1040.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1041.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1042.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1043.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1044.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1045.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1046.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1047.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1048.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1049.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1050.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1051.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1052.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1053.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1054.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1055.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1056.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1057.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1058.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1059.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1060.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1061.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1062.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1063.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1064.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1065.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1066.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1067.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1068.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1069.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1070.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1071.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1072.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1073.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1074.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1075.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1076.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1077.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1078.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1079.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1080.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1081.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1082.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1083.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1084.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1085.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1086.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1087.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1088.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1089.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1090.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1091.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1092.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1093.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1094.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1095.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1096.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1097.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1098.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1099.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1189.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1204.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1206.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1207.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1208.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1212.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1215.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1216.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1217.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1218.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1219.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1220.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1221.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1222.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1223.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1224.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1225.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1226.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1227.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1228.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1229.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1230.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1231.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1232.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1233.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1234.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1235.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1236.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1237.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1238.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1239.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1240.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1241.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1242.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1243.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1244.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1245.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1246.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1247.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1248.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1249.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1250.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1251.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1252.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1253.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1254.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1255.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1256.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1257.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1259.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1260.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1261.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1262.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1263.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1266.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1267.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1268.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1269.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1270.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1271.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1272.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1273.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1274.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1275.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1276.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1277.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1278.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1279.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1280.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1281.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1282.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1283.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1284.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1285.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1286.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1287.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1288.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1289.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1290.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1291.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1292.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1293.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1294.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1295.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1296.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1297.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1298.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1299.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1300.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1301.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1302.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1303.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1304.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1305.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1306.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1307.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1308.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1309.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1310.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1311.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1312.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1313.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1314.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1315.msg" ":initialShadingGroup.gn" -na;
// End of Before Fire Room Puzzle 3.ma
