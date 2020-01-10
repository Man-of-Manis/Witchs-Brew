//Maya ASCII 2018 scene
//Name: Bergman_Witch_Game_Tile_Set.ma
//Last modified: Sun, Oct 20, 2019 06:41:28 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5C56EA0A-4E37-05AE-AB3B-6C92B0901094";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.135347849125274 24.355845258672822 32.548077943974953 ;
	setAttr ".r" -type "double3" -32.138351647467715 -699.79999999957761 -8.4725048677506486e-16 ;
	setAttr ".rp" -type "double3" 4.4408920985006263e-18 -4.4408920985006263e-18 -1.7763568394002505e-17 ;
	setAttr ".rpt" -type "double3" 5.8401901298003655e-19 -1.0910966829955586e-17 8.0652127028581149e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E3132BC5-413A-9C00-AE28-2292B686E371";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 46.638825554099839;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.4825638638985077 -0.95187422822712731 5.2954033348778573 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E669E9C4-4C47-4A5B-692A-10A7CAF46394";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5329B972-4399-69F7-4431-8DB127DE402C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7158C736-497E-0179-F47F-18A49ABD8A3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4EEDC25C-485A-3698-D6BC-B9AD3CAD0A41";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "E1CA52E8-44B3-AEB0-EEDB-F9A82517E433";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.000999999999998 1.2036072883542253 11.136467328208562 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "164647CC-4D71-5256-B54A-9A9D5723B3DB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 4.1268043515047932;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Base_Pieces";
	rename -uid "15D02C77-421D-AD6D-007E-CF8EB8591C21";
createNode transform -n "Floor_Piece" -p "Base_Pieces";
	rename -uid "A0C50AFA-4A5D-145D-0478-98AD75B61150";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.02 -0.16033777099028398 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" 0 0.01 0.01 ;
	setAttr ".sp" -type "double3" 0 0.01 0.01 ;
createNode mesh -n "Floor_PieceShape" -p "Floor_Piece";
	rename -uid "B52D227A-43FF-B3C0-8818-4B8BB75F0BCD";
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
	setAttr -s 4 ".vt[0:3]"  0.0033333325 0.0099999998 0.0033333336 0.0033333325 0.0099999998 0.0099999998
		 -0.0033333336 0.0099999998 0.0099999998 -0.0033333336 0.0099999998 0.0033333336;
	setAttr -s 4 ".ed[0:3]"  1 2 0 0 3 0 1 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 -4 -1 2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cieling_Piece" -p "Base_Pieces";
	rename -uid "455BF10F-48EC-2303-7BDC-E79944587D52";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 1.99 -0.16033777099028398 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" 0 0.01 0.01 ;
	setAttr ".sp" -type "double3" 0 0.01 0.01 ;
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
	setAttr -s 4 ".vt[0:3]"  0.0033333325 0.0099999998 0.0033333336 0.0033333325 0.0099999998 0.0099999998
		 -0.0033333336 0.0099999998 0.0099999998 -0.0033333336 0.0099999998 0.0033333336;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 3 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
createNode mesh -n "Quad_PieceShape" -p "Quad_Piece";
	rename -uid "88AC7190-44BA-CD42-C05A-1EB6C656D5FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.70833337 0.33333331
		 0.29166669 0.33333331 0.29166669 0.41666669 0.70833337 0.41666669 0.66666669 0.29166666
		 0.33333334 0.29166666 0.33333334 0.45833334 0.66666669 0.45833334 0.54166663 0.5
		 0.54166663 0.75 0.54166663 0.83333337 0.54166663 0.91666675 0.54166663 0.5 0.54166663
		 0.25 0.54166663 0.33333331 0.54166663 0.41666666 0.45833331 0.5 0.45833331 0.75 0.45833331
		 0.83333337 0.45833331 0.91666675 0.45833331 0.5 0.45833331 0.25 0.45833331 0.33333331
		 0.45833331 0.41666666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  0.0099999998 0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 0.0099999998 -0.0099999998 -0.0033333325
		 0.0099999998 0.0099999998 0.0033333336 -0.0099999998 0.0099999998 0.0033333336 -0.0099999998 -0.0099999998 0.0033333336
		 0.0099999998 -0.0099999998 0.0033333336 0.0033333325 0.0099999998 -0.0099999998 0.0033333325 -0.0099999998 -0.0099999998
		 0.0033333325 -0.0099999998 -0.0033333325 0.0033333325 -0.0099999998 0.0033333336
		 0.0033333325 -0.0099999998 0.0099999998 0.0033333325 0.0099999998 0.0099999998 0.0033333325 0.0099999998 0.0033333336
		 0.0033333325 0.0099999998 -0.0033333325 -0.0033333336 0.0099999998 -0.0099999998
		 -0.0033333336 -0.0099999998 -0.0099999998 -0.0033333336 -0.0099999998 -0.0033333325
		 -0.0033333336 -0.0099999998 0.0033333336 -0.0033333336 -0.0099999998 0.0099999998
		 -0.0033333336 0.0099999998 0.0099999998 -0.0033333336 0.0099999998 0.0033333336 -0.0033333336 0.0099999998 -0.0033333325;
	setAttr -s 28 ".ed[0:27]"  0 15 0 1 2 0 2 18 0 3 0 0 4 14 0 5 6 0 6 19 0
		 7 4 0 8 9 0 10 3 0 9 10 0 11 7 0 11 12 0 12 13 0 13 14 0 15 8 0 16 17 0 17 18 0 19 20 0
		 20 21 0 22 5 0 21 22 0 23 1 0 23 16 0 18 23 0 10 15 0 14 11 0 19 22 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 24 22 1 2
		mu 0 4 18 23 1 2
		f 4 -17 -24 -25 -18
		mu 0 4 17 16 23 18
		f 4 25 15 8 10
		mu 0 4 10 15 8 9
		f 4 -26 9 3 0
		mu 0 4 15 10 3 0
		f 4 -8 -12 -27 -5
		mu 0 4 4 7 11 14
		f 4 13 14 26 12
		mu 0 4 12 13 14 11
		f 4 27 -22 -20 -19
		mu 0 4 19 22 21 20
		f 4 -6 -21 -28 -7
		mu 0 4 6 5 22 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "T_Piece" -p "Base_Pieces";
	rename -uid "3D57B1BE-4D80-9C81-BA02-1CBF6915CD09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -0.16033777099028398 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
createNode mesh -n "T_PieceShape" -p "T_Piece";
	rename -uid "8D6E33F1-4AF6-ECBC-C1BE-108E9AD0B172";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.29166669 0.41666669
		 0.33333334 0.45833334 0.45833331 0.91666675 0.45833331 0.83333337 0.54166663 0.91666675
		 0.66666669 0.45833334 0.70833337 0.41666669 0.54166663 0.83333337 0.45833331 0.5
		 0.54166663 0.5 0.45833331 0.41666666 0.29166669 0.33333331 0.54166663 0.41666666
		 0.70833337 0.33333331 0.66666669 0.29166666 0.54166663 0.33333331 0.54166663 0.25
		 0.45833331 0.25 0.45833331 0.33333331 0.33333334 0.29166666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.0099999998 0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 0.0099999998 -0.0099999998 -0.0033333325
		 0.0099999998 0.0099999998 0.0033333336 -0.0099999998 0.0099999998 0.0033333336 -0.0099999998 -0.0099999998 0.0033333336
		 0.0099999998 -0.0099999998 0.0033333336 0.0033333325 0.0099999998 0.0099999998 0.0033333325 0.0099999998 0.0033333336
		 0.0033333325 0.0099999998 -0.0033333325 0.0033333325 -0.0099999998 -0.0033333325
		 0.0033333325 -0.0099999998 0.0033333336 0.0033333325 -0.0099999998 0.0099999998 -0.0033333336 0.0099999998 0.0099999998
		 -0.0033333336 0.0099999998 0.0033333336 -0.0033333336 0.0099999998 -0.0033333325
		 -0.0033333336 -0.0099999998 -0.0033333325 -0.0033333336 -0.0099999998 0.0033333336
		 -0.0033333336 -0.0099999998 0.0099999998;
	setAttr -s 24 ".ed[0:23]"  0 10 0 1 2 0 2 17 0 3 0 0 4 9 0 5 6 0 6 18 0
		 7 4 0 8 9 0 10 16 0 11 3 0 12 7 0 12 13 0 13 8 0 15 5 0 14 15 0 16 1 0 17 11 0 18 19 0
		 19 14 0 17 16 0 10 11 0 9 12 0 15 18 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
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
		mu 0 4 1 19 18 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_piece" -p "Base_Pieces";
	rename -uid "213DE21A-4845-76FD-7F43-6F81E493BF60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.02 0 -0.14033777099028397 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
createNode mesh -n "L_pieceShape" -p "L_piece";
	rename -uid "CED13F57-4C28-2533-6A69-9B9D718B8A31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166662693023682 0.62500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.29166669 0.33333331
		 0.29166669 0.41666669 0.33333334 0.29166666 0.33333334 0.45833334 0.54166663 0.5
		 0.54166663 0.75 0.54166663 0.91666675 0.54166663 0.33333331 0.45833331 0.5 0.45833331
		 0.75 0.45833331 0.83333337 0.45833331 0.41666666;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 0.0033333336
		 -0.0099999998 -0.0099999998 0.0033333336 0.0033333325 0.0099999998 -0.0099999998
		 0.0033333325 -0.0099999998 -0.0099999998 0.0033333325 -0.0099999998 0.0033333336
		 0.0033333325 0.0099999998 0.0033333336 -0.0033333336 0.0099999998 -0.0099999998 -0.0033333336 -0.0099999998 -0.0099999998
		 -0.0033333336 -0.0099999998 -0.0033333325 -0.0033333336 0.0099999998 -0.0033333325;
	setAttr -s 14 ".ed[0:13]"  0 1 0 1 10 0 2 3 0 3 6 0 4 5 0 5 6 0 7 2 0
		 7 4 0 8 9 0 9 10 0 11 0 0 11 8 0 7 6 0 10 11 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -4 -3 -7 12
		mu 0 4 6 3 2 7
		f 4 13 10 0 1
		mu 0 4 10 11 0 1
		f 4 -9 -12 -14 -10
		mu 0 4 9 8 11 10
		f 4 7 4 5 -13
		mu 0 4 7 4 5 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stub_Piece" -p "Base_Pieces";
	rename -uid "42DAAE15-470F-69E8-BA96-428CED30142C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -0.12033777099028399 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0.0033333336 0 5.551115e-19 
		0.0033333336 0 5.551115e-19 0.0033333336 0 5.551115e-19 0.0033333336 0 5.551115e-19;
	setAttr -s 8 ".vt[0:7]"  -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 0.0033333336
		 -0.0099999998 -0.0099999998 0.0033333336 -0.0033333336 -0.0099999998 -0.0033333325
		 -0.0033333336 -0.0099999998 0.0033333336 -0.0033333336 0.0099999998 0.0033333336
		 -0.0033333336 0.0099999998 -0.0033333325;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.98 0 0.02 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" 0.02 0 -0.02 ;
	setAttr ".sp" -type "double3" 0.02 0 -0.02 ;
createNode mesh -n "Diagonal_PieceShape" -p "Diagonal_Piece";
	rename -uid "7910B4D7-4BA2-9423-1FAC-07ABDC588C1C";
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
	setAttr -s 12 ".vt[0:11]"  0.0099999998 0.0099999998 -0.023333333 0.0099999998 -0.0099999998 -0.023333333
		 0.0099999998 0.0099999998 -0.016666666 0.0099999998 -0.0099999998 -0.016666666 0.023333333 0.0099999998 -0.0099999998
		 0.023333333 -0.0099999998 -0.0099999998 0.016666666 0.0099999998 -0.0099999998 0.016666666 -0.0099999998 -0.0099999998
		 0.020296894 0.0099999998 -0.014087823 0.020296894 -0.0099999998 -0.014087823 0.014162259 0.0099999998 -0.020222459
		 0.014162259 -0.0099999998 -0.020222459;
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
createNode transform -n "Straight_Piece" -p "Base_Pieces";
	rename -uid "5FE461E6-4B1D-F504-AF7A-5FAF9EBBEBE0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.02 0 -0.16033777099028398 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
createNode mesh -n "Straight_PieceShape" -p "Straight_Piece";
	rename -uid "4CA131EA-4194-D6BB-5966-9888885C4AFF";
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
	setAttr -s 16 ".vt[0:15]"  0.0099999998 0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 0.0099999998 -0.0099999998 -0.0033333325
		 0.0099999998 0.0099999998 0.0033333336 -0.0099999998 0.0099999998 0.0033333336 -0.0099999998 -0.0099999998 0.0033333336
		 0.0099999998 -0.0099999998 0.0033333336 0.0033333325 0.0099999998 0.0033333336 0.0033333325 0.0099999998 -0.0033333325
		 0.0033333325 -0.0099999998 -0.0033333325 0.0033333325 -0.0099999998 0.0033333336
		 -0.0033333348 0.0099999998 0.0033333336 -0.0033333348 0.0099999998 -0.0033333325
		 -0.0033333348 -0.0099999998 -0.0033333325 -0.0033333348 -0.0099999998 0.0033333336;
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
createNode transform -n "Wall_Piece" -p "Base_Pieces";
	rename -uid "BB64C3D5-4E3D-86D4-7E38-D987EA7913DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3 0 4 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
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
	setAttr -s 4 ".vt[0:3]"  0.0099999998 0.0099999998 -0.0033333325 -0.0099999998 0.0099999998 -0.0033333325
		 -0.0099999998 -0.0099999998 -0.0033333325 0.0099999998 -0.0099999998 -0.0033333325;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.04 0 -0.14033777099028397 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
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
	setAttr -s 4 ".vt[0:3]"  0.0099999998 0.0099999998 -0.016666666 0.0099999998 -0.0099999998 -0.016666666
		 0.016666666 0.0099999998 -0.0099999998 0.016666666 -0.0099999998 -0.0099999998;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.04 0 -0.14033777099028397 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
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
	setAttr -s 8 ".vt[0:7]"  0.0099999998 0.0099999998 -0.02333333 0.0099999998 -0.0099999998 -0.02333333
		 0.023333333 0.0099999998 -0.0099999998 0.023333333 -0.0099999998 -0.0099999998 0.020296894 0.0099999998 -0.014087825
		 0.020296894 -0.0099999998 -0.014087825 0.014162259 0.0099999998 -0.020222459 0.014162259 -0.0099999998 -0.020222459;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.06 0 -0.14033777099028397 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
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
	setAttr -s 6 ".vt[0:5]"  -0.0099999998 0.0099999998 -0.0033333302
		 -0.0099999998 -0.0099999998 -0.0033333302 -0.0033333336 0.0099999998 -0.0099999998
		 -0.0033333336 -0.0099999998 -0.0099999998 -0.0033333336 -0.0099999998 -0.0033333302
		 -0.0033333336 0.0099999998 -0.0033333302;
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
createNode transform -n "Inside_Corner_Nub_Piece" -p "Base_Pieces";
	rename -uid "44FE76DF-4016-BC2A-B2C0-D2921EA48794";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.043333330154418946 0 -0.14033776760101319 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" -0.0033333349227905274 0 -0.0033333301544189544 ;
	setAttr ".rpt" -type "double3" 0.0066666650772094702 0 -4.7683715738896149e-09 ;
	setAttr ".sp" -type "double3" -0.0033333349227905274 0 -0.0033333301544189544 ;
createNode mesh -n "Inside_Corner_Nub_PieceShape" -p "Inside_Corner_Nub_Piece";
	rename -uid "0CC2A616-4903-72C0-4263-05AEA79B854F";
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
	setAttr -s 6 ".vt[0:5]"  -0.0033333336 -0.0099999998 -0.0033333302
		 -0.0033333336 0.0099999998 -0.0033333302 -0.0033333336 0.0099999998 -0.006666665
		 -0.0033333336 -0.0099999998 -0.006666665 -0.0066666668 0.0099999998 -0.0033333302
		 -0.0066666668 -0.0099999998 -0.0033333302;
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
createNode transform -n "Wall_Edges" -p "Base_Pieces";
	rename -uid "BCD3F4A5-4CE1-1F26-EBDA-EF8A304A9CEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" 0 0 -1.5053198242187502 ;
	setAttr ".sp" -type "double3" 0 0 -0.0099999997921134919 ;
	setAttr ".spt" -type "double3" 0 0 -1.4953198244266395 ;
createNode mesh -n "Wall_EdgesShape" -p "Wall_Edges";
	rename -uid "95284702-4D41-77C8-0028-FE8E165C43F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.5 0.625 0.5
		 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.20833334 0.25 0.20833334
		 0 0.79166669 0 0.79166669 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0099999998 0.0099999998 -0.0099999998
		 0.0099999998 0.0099999998 -0.0099999998 -0.0099999998 -0.0099999998 -0.0099999998
		 0.0099999998 -0.0099999998 -0.0099999998 -0.0099999998 0.0099999998 -0.003333329
		 -0.0099999998 -0.0099999998 -0.003333329 0.0099999998 -0.0099999998 -0.003333329
		 0.0099999998 0.0099999998 -0.003333329;
	setAttr -s 10 ".ed[0:9]"  0 1 0 0 2 0 1 3 0 2 5 0 3 6 0 2 3 0 4 0 0
		 4 5 1 7 1 0 6 7 0;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 5 -3 -1 1
		mu 0 4 2 3 1 0
		f 4 -2 -7 7 -4
		mu 0 4 6 7 8 9
		f 4 8 2 4 9
		mu 0 4 11 5 4 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Outside_Corner_Piece" -p "Base_Pieces";
	rename -uid "9A44E6F5-4133-9A8A-02EB-0882A01C7649";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.3332820129394385 0 2.6667182922363284 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 150.53198555123191 150.53198555123191 150.53198555123191 ;
	setAttr ".rp" -type "double3" 0.33328170776367166 0 0.33328201293944615 ;
	setAttr ".rpt" -type "double3" -0.66656372070311021 0 -3.0517577442584063e-07 ;
	setAttr ".sp" -type "double3" 0.0033333321373778813 0 0.0033333351896073192 ;
	setAttr ".spt" -type "double3" 0.32994837562629398 0 0.32994867774983422 ;
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
	setAttr -s 6 ".vt[0:5]"  -0.0099999998 0.0099999998 0.0033333348 -0.0099999998 -0.0099999998 0.0033333348
		 0.0033333325 0.0099999998 -0.0099999998 0.0033333325 -0.0099999998 -0.0099999998
		 0.0033333325 -0.0099999998 0.0033333348 0.0033333325 0.0099999998 0.0033333348;
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
createNode transform -n "Floor";
	rename -uid "BBCEB68D-42AD-F697-C107-02924B34515A";
createNode mesh -n "FloorShape" -p "Floor";
	rename -uid "CAA64943-41F6-942E-82B6-BC9E107DF099";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 0.5 0.5 0 0.5 -0.5 
		0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Flat";
	rename -uid "D0F5C58D-41C5-51B2-84FA-958DC2FEA6D1";
	setAttr ".rp" -type "double3" 0 4 0 ;
	setAttr ".sp" -type "double3" 0 4 0 ;
createNode mesh -n "Ceiling_FlatShape" -p "Ceiling_Flat";
	rename -uid "27D96FD2-4EE1-1548-C488-568F84CD06D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1 4 1 1 4 1 -1 4 -1 1 4 -1;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch";
	rename -uid "83C95ACD-42EA-D5F5-BCB1-A9923BFBE7EE";
	setAttr ".rp" -type "double3" 0 2 3 ;
	setAttr ".sp" -type "double3" 0 2 3 ;
createNode mesh -n "Ceiling_ArchShape" -p "Ceiling_Arch";
	rename -uid "5C7A79A5-453C-CC09-582B-9DB2D596B305";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.66666663 0 0.66666663 1 0.33333331 0 0.33333331 0 0.49999997 1 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1 2 4 1 2 4 -1 2 2 1 2 2 1 3 2.66666698
		 -1 3 2.66666698 1 3 3.33333349 -1 3 3.33333349 -1 3 3 1 3 3;
	setAttr -s 13 ".ed[0:12]"  0 1 0 0 7 0 1 6 0 2 3 0 4 3 0 5 2 0 4 5 1
		 6 9 0 7 8 0 6 7 1 8 5 0 9 4 0 8 9 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 5 3 -5 6
		mu 0 4 5 2 3 4
		f 4 8 12 -8 9
		mu 0 4 7 8 9 6
		f 4 1 -10 -3 -1
		mu 0 4 0 7 6 1
		f 4 10 -7 -12 -13
		mu 0 4 8 5 4 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "Ceiling_Arch";
	rename -uid "43A31A9A-4F7C-5177-4715-5EA6F9EEE502";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 0.5 0.5 0 0.5 -0.5 
		0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_Cap";
	rename -uid "99CFA2BA-479C-CF6F-6AA5-0183D9621D1F";
	setAttr ".rp" -type "double3" 2 2 3 ;
	setAttr ".sp" -type "double3" 2 2 3 ;
createNode mesh -n "Ceiling_Arch_CapShape" -p "Ceiling_Arch_Cap";
	rename -uid "C4666E9C-4AAE-644A-1D6D-70B9A201FFF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 13 ".uvst[0].uvsp[0:12]" -type "float2" 0 0 1 0 0.5 1 0 1
		 0 0 1 0 1 1 0.5 1 0 0 1 0 0.5 0 0.5 1 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".vt[0:10]"  1 2 4 1 2 2 1 3 2.66666698 1 3 3.33333349
		 3 2 4 2 3 3.33333349 2 3 2.66666698 3 2 2 1 3 3 2 3 3 3 2 3;
	setAttr -s 16 ".ed[0:15]"  0 3 0 2 1 0 3 8 0 0 4 0 3 5 1 4 5 1 2 6 1
		 1 7 0 6 7 1 5 9 1 4 10 0 8 2 0 9 6 1 8 9 1 10 7 0 9 10 1;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 4 -6 -4
		mu 0 4 0 1 2 3
		f 4 1 7 -9 -7
		mu 0 4 4 5 6 7
		f 4 2 13 -10 -5
		mu 0 4 8 10 11 2
		f 4 5 9 15 -11
		mu 0 4 3 2 11 12
		f 4 11 6 -13 -14
		mu 0 4 10 9 7 11
		f 4 -16 12 8 -15
		mu 0 4 12 11 7 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "Ceiling_Arch_Cap";
	rename -uid "504E80E2-4F65-2205-8424-0381B4235FE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 0.5 0.5 0 0.5 -0.5 
		0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "Ceiling_Arch_Cap";
	rename -uid "0AC6CB27-437A-A771-8A2F-7D893694E823";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1 2 1 1 2 1 -1 2 -1 1 2 -1;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_long";
	rename -uid "988F9552-4DD8-B778-2495-6C9995923601";
	setAttr ".rp" -type "double3" 0 1 -1 ;
	setAttr ".sp" -type "double3" 0 1 -1 ;
createNode mesh -n "Wall_longShape" -p "Wall_long";
	rename -uid "393D7C8A-442F-D015-2562-43833DDBC973";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Short";
	rename -uid "A2E8FF09-4410-3314-9BE5-CAB9A8BDE6A1";
	setAttr ".rp" -type "double3" 3 1 -1 ;
	setAttr ".sp" -type "double3" 3 1 -1 ;
createNode mesh -n "Wall_ShortShape" -p "Wall_Short";
	rename -uid "091A9BC5-411F-4A62-39AA-21B5F40794CD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0 1 0.5 1 0.5
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  2 0 -1 2 2 -1 3 2 -1 3 0 -1;
	setAttr -s 4 ".ed[0:3]"  0 3 0 0 1 0 1 2 0 2 3 1;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 -4 -3 -2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Short_High";
	rename -uid "C32CCF2E-4785-B720-CEC5-788AD6C947D6";
	setAttr ".rp" -type "double3" 3 3 -1 ;
	setAttr ".sp" -type "double3" 3 3 -1 ;
createNode mesh -n "Wall_Short_HighShape" -p "Wall_Short_High";
	rename -uid "1C6198B8-4B78-E239-51AC-6FA621B1D138";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0 1 0.5 1 0.5
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  3 2 0 3 2 0 3 2 0 3 2 0;
	setAttr -s 4 ".vt[0:3]"  -1 0 -1 -1 2 -1 0 2 -1 0 0 -1;
	setAttr -s 4 ".ed[0:3]"  0 3 0 0 1 0 1 2 0 2 3 1;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 -4 -3 -2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape12" -p "Wall_Short_High";
	rename -uid "9CDA5AE7-451F-53AA-AD08-DDAB80FEEE56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_long_High";
	rename -uid "C8081260-4753-8BD7-EF98-E8916C855606";
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode mesh -n "Wall_long_HighShape" -p "Wall_long_High";
	rename -uid "DF39E5F7-488E-22F5-C15E-4FAE04CB5E01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 2 -1.5 0.5 2 -1.5 -0.5 
		4 -0.5 0.5 4 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Window";
	rename -uid "E1B8874B-4AA0-0F1B-A31E-7A8898DFCFFF";
	setAttr ".rp" -type "double3" -8 1 -1 ;
	setAttr ".sp" -type "double3" -8 1 -1 ;
createNode mesh -n "Wall_WindowShape" -p "Wall_Window";
	rename -uid "A3E29559-4C20-3EFB-FD48-4793C867AC4D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -9 0 -1 -7 0 -1 -9 2 -1 -7 2 -1 -7.66666698 2 -1
		 -7.66666698 0 -1 -8.33333302 2 -1 -8.33333302 0 -1 -7 1.33333325 -1 -7.66666698 1.33333325 -1
		 -8.33333302 1.33333325 -1 -9 1.33333325 -1 -7 0.66666663 -1 -7.66666698 0.66666663 -1
		 -8.33333302 0.66666663 -1 -9 0.66666663 -1;
	setAttr -s 24 ".ed[0:23]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 7 5 0 6 10 1 8 3 0 9 13 1 8 9 1 10 14 1 9 10 1 11 2 0 10 11 1 12 8 0 13 5 1
		 12 13 1 14 7 1 13 14 1 15 11 0 14 15 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 5 2 19 18
		mu 0 4 5 1 12 13
		f 4 8 -19 21 20
		mu 0 4 7 5 13 14
		f 4 0 -21 23 -2
		mu 0 4 0 7 14 15
		f 4 -13 10 -5 6
		mu 0 4 9 8 3 4
		f 4 -15 -7 -8 9
		mu 0 4 10 9 4 6
		f 4 -17 -10 -4 -16
		mu 0 4 11 10 6 2
		f 4 -20 17 12 11
		mu 0 4 13 12 8 9
		f 4 -24 -14 16 -23
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Window_2";
	rename -uid "C5BD1E7F-4560-8B83-8A4B-D1BB9857BCCE";
	setAttr ".rp" -type "double3" -8 1 -4 ;
	setAttr ".sp" -type "double3" -8 1 -4 ;
createNode mesh -n "Wall_Window_2Shape" -p "Wall_Window_2";
	rename -uid "5C2FEC9B-4865-AF4C-D64C-93901C57BFEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -8 0 -3 -8 0 -3 -8 0 -3 -8 
		0 -3 -8 0 -3 -8 0 -3 -8 0 -3 -8 0 -3 -8 0 -3 -8 0.38809881 -3 -8 0.38809881 -3 -8 
		0 -3 -8 0 -3 -8 -0.38809881 -3 -8 -0.38809881 -3 -8 0 -3;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 24 ".ed[0:23]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 7 5 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 1
		 12 13 1 14 7 1 13 14 0 15 11 0 14 15 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 5 2 19 18
		mu 0 4 5 1 12 13
		f 4 8 -19 21 20
		mu 0 4 7 5 13 14
		f 4 0 -21 23 -2
		mu 0 4 0 7 14 15
		f 4 -13 10 -5 6
		mu 0 4 9 8 3 4
		f 4 -15 -7 -8 9
		mu 0 4 10 9 4 6
		f 4 -17 -10 -4 -16
		mu 0 4 11 10 6 2
		f 4 -20 17 12 11
		mu 0 4 13 12 8 9
		f 4 -24 -14 16 -23
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_Window_2";
	rename -uid "54A6909A-49AC-7318-6287-B4A8D7D82ABD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Window_3";
	rename -uid "AA4BDD9A-4433-562B-22A5-C8880EBC0B8B";
	setAttr ".rp" -type "double3" -8 1 -7 ;
	setAttr ".sp" -type "double3" -8 1 -7 ;
createNode mesh -n "Wall_Window_3Shape" -p "Wall_Window_3";
	rename -uid "E4C959AF-4390-6028-069B-928CA3A7ACF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.33333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -8 0 -6 -8 0 -6 -8 0 -6 -8 
		0 -6 -8 0 -6 -8 0 -6 -8 0 -6 -8 0 -6 -8 0 -6 -8 0.38809881 -6 -8 0.38809881 -6 -8 
		0 -6 -8 0 -6 -8 0 -6 -8 0 -6 -8 0 -6;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 24 ".ed[0:23]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 7 5 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 1
		 12 13 1 14 7 1 13 14 0 15 11 0 14 15 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 5 2 19 18
		mu 0 4 5 1 12 13
		f 4 8 -19 21 20
		mu 0 4 7 5 13 14
		f 4 0 -21 23 -2
		mu 0 4 0 7 14 15
		f 4 -13 10 -5 6
		mu 0 4 9 8 3 4
		f 4 -15 -7 -8 9
		mu 0 4 10 9 4 6
		f 4 -17 -10 -4 -16
		mu 0 4 11 10 6 2
		f 4 -20 17 12 11
		mu 0 4 13 12 8 9
		f 4 -24 -14 16 -23
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_Window_3";
	rename -uid "75F5CF59-4D93-8520-36BB-CF871937A722";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Destroyed";
	rename -uid "D71B052A-42F1-A486-7E67-B28ACF88C40F";
	setAttr ".rp" -type "double3" 10 1 -1 ;
	setAttr ".sp" -type "double3" 10 1 -1 ;
createNode mesh -n "Wall_DestroyedShape" -p "Wall_Destroyed";
	rename -uid "22496C20-41C7-EAC5-B041-E88E16397E82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  9 0 -1 11 0 -1 9 2 -1 11 2 -1 10.91564655 2 -1
		 10.33333397 0 -1 9.084353447 2 -1 9.66666698 0 -1 11 1.33333325 -1 10.33333397 1 -1
		 9.66666698 1 -1 9 1.33333325 -1 11 0.66666663 -1 10.33333397 0.66666663 -1 9.66666698 0.66666663 -1
		 9 0.66666663 -1;
	setAttr -s 23 ".ed[0:22]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 7 5 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 1 12 13 1
		 14 7 1 13 14 0 15 11 0 14 15 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 5 2 18 17
		mu 0 4 5 1 12 13
		f 4 7 -18 20 19
		mu 0 4 7 5 13 14
		f 4 0 -20 22 -2
		mu 0 4 0 7 14 15
		f 4 -12 9 -5 6
		mu 0 4 9 8 3 4
		f 4 -16 -9 -4 -15
		mu 0 4 11 10 6 2
		f 4 -19 16 11 10
		mu 0 4 13 12 8 9
		f 4 -23 -13 15 -22
		mu 0 4 15 14 10 11
		f 4 -11 13 12 -21
		mu 0 4 13 9 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_Destroyed";
	rename -uid "68D41FC9-4906-3B3E-C957-DC9885CA9C9D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Chipped_R";
	rename -uid "A97F84B7-49E7-3273-E9FE-B2A2E920B700";
	setAttr ".rp" -type "double3" 10 1 -4 ;
	setAttr ".sp" -type "double3" 10 1 -4 ;
createNode mesh -n "Wall_Chipped_RShape" -p "Wall_Chipped_R";
	rename -uid "076B9139-44AC-53A4-7B00-B1930FDF4225";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.66666662693023682 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 1 0 0 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  9 0 -4 11 0 -4 9 2 -4 10 2 -4 10.33333397 0 -4
		 9.66666698 2 -4 9.66666698 0 -4 11 1.33333325 -4 10.33333397 1.33333325 -4 9.66666698 1.33333325 -4
		 9 1.33333325 -4 11 0.66666663 -4 10.33333397 0.66666663 -4 9.66666698 0.66666663 -4
		 9 0.66666663 -4;
	setAttr -s 22 ".ed[0:21]"  0 6 0 0 14 0 1 11 0 2 5 0 4 1 0 3 8 1 5 3 0
		 6 4 0 5 9 1 8 12 0 7 8 1 9 13 0 8 9 0 10 2 0 9 10 1 11 7 0 12 4 1 11 12 1 13 6 1
		 12 13 0 14 10 0 13 14 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 4 2 17 16
		mu 0 4 4 1 11 12
		f 4 7 -17 19 18
		mu 0 4 6 4 12 13
		f 4 0 -19 21 -2
		mu 0 4 0 6 13 14
		f 4 -13 -6 -7 8
		mu 0 4 9 8 3 5
		f 4 -15 -9 -4 -14
		mu 0 4 10 9 5 2
		f 4 -18 15 10 9
		mu 0 4 12 11 7 8
		f 4 -22 -12 14 -21
		mu 0 4 14 13 9 10
		f 4 -10 12 11 -20
		mu 0 4 12 8 9 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_Chipped_R";
	rename -uid "01894A1C-478D-65E1-F5D5-79A03982F108";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Chipped_L";
	rename -uid "159CAD95-4F1D-FF15-B308-A49D2AB396F2";
	setAttr ".rp" -type "double3" 10 1 -7 ;
	setAttr ".sp" -type "double3" 10 1 -7 ;
createNode mesh -n "Wall_Chipped_LShape" -p "Wall_Chipped_L";
	rename -uid "374D2410-4EAF-56E3-24BA-D8A1B7FA385D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.66666662693023682 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 1 0 0 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  12 0 -6 8 0 -6 12 0 -6 9.666667 
		0 -6 9.333334 0 -6 10.666666 0 -6 10.666666 0 -6 8 0 -6 9.333334 0 -6 10.666666 0 
		-6 12 0 -6 8 0 -6 9.333334 0 -6 10.666666 0 -6 12 0 -6;
	setAttr -s 15 ".vt[0:14]"  -1 0 -1 1 0 -1 -1 2 -1 0.33333328 2 -1 0.33333328 0 -1
		 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1 -0.33333337 1.33333325 -1
		 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1 -0.33333337 0.66666663 -1
		 -1 0.66666663 -1;
	setAttr -s 22 ".ed[0:21]"  0 6 0 0 14 0 1 11 0 2 5 0 4 1 0 3 8 0 5 3 0
		 6 4 0 5 9 1 8 12 0 7 8 0 9 13 0 8 9 0 10 2 0 9 10 1 11 7 0 12 4 1 11 12 1 13 6 1
		 12 13 0 14 10 0 13 14 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -17 -18 -3 -5
		mu 0 4 4 12 11 1
		f 4 -19 -20 16 -8
		mu 0 4 6 13 12 4
		f 4 1 -22 18 -1
		mu 0 4 0 14 13 6
		f 4 -9 6 5 12
		mu 0 4 9 5 3 8
		f 4 13 3 8 14
		mu 0 4 10 2 5 9
		f 4 -10 -11 -16 17
		mu 0 4 12 8 7 11
		f 4 20 -15 11 21
		mu 0 4 14 10 9 13
		f 4 19 -12 -13 9
		mu 0 4 12 13 9 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_Chipped_L";
	rename -uid "9A218CA0-4EA0-915F-6382-3ABCEA952387";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape24" -p "Wall_Chipped_L";
	rename -uid "B8B94927-4AFE-D6CD-C225-0FA57E3BB6BD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 24 ".ed[0:23]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 7 5 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 1
		 12 13 1 14 7 1 13 14 0 15 11 0 14 15 1;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 5 2 19 18
		mu 0 4 5 1 12 13
		f 4 8 -19 21 20
		mu 0 4 7 5 13 14
		f 4 0 -21 23 -2
		mu 0 4 0 7 14 15
		f 4 -13 10 -5 6
		mu 0 4 9 8 3 4
		f 4 -15 -7 -8 9
		mu 0 4 10 9 4 6
		f 4 -17 -10 -4 -16
		mu 0 4 11 10 6 2
		f 4 -20 17 12 11
		mu 0 4 13 12 8 9
		f 4 -24 -14 16 -23
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_H";
	rename -uid "1BEDEA7F-49C5-40FF-B880-8EA83F5400BF";
	setAttr ".rp" -type "double3" -11 1 -1 ;
	setAttr ".sp" -type "double3" -11 1 -1 ;
createNode mesh -n "Wall_HShape" -p "Wall_H";
	rename -uid "052486F5-45BB-65AD-A02C-B1BB75B6989A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.33333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -11 0 0 -11 0 0 -11 0 0 -11 
		0 0 -10.903326 0 0 -10.903326 0 0 -11.096674 0 0 -11.096674 0 0 -11 -0.29604831 0 
		-10.903326 -0.29604831 0 -11.096674 -0.29604831 0 -11 -0.29604831 0 -11 -0.21971104 
		0 -10.903326 -0.21971104 0 -11.096674 -0.21971104 0 -11 -0.21971104 0;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 22 ".ed[0:21]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 0
		 6 10 0 8 3 0 9 13 1 8 9 1 10 14 1 9 10 0 11 2 0 10 11 1 12 8 0 13 5 0 12 13 1 14 7 0
		 13 14 0 15 11 0 14 15 1;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 5 2 17 16
		mu 0 4 5 1 12 13
		f 4 0 -19 21 -2
		mu 0 4 0 7 14 15
		f 4 -11 8 -5 6
		mu 0 4 9 8 3 4
		f 4 -15 -8 -4 -14
		mu 0 4 11 10 6 2
		f 4 -18 15 10 9
		mu 0 4 13 12 8 9
		f 4 -20 -10 12 11
		mu 0 4 14 13 9 10
		f 4 -22 -12 14 -21
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_H";
	rename -uid "8C1D98AC-4792-242C-F832-1AB26CCD5D64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_A";
	rename -uid "E0FBF86F-4E76-8730-842C-5793D6C32C7F";
	setAttr ".rp" -type "double3" -11 1 -4 ;
	setAttr ".sp" -type "double3" -11 1 -4 ;
createNode mesh -n "Wall_AShape" -p "Wall_A";
	rename -uid "DEFAFA3D-49D8-B9FF-0859-D2A102591DAD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331 0.66666663 0.77777779 1 0.77777779 0.66666663 0.8888889 1 0.8888889
		 1 0.83333331 0.66666663 0.83333331 0.33333331 0.83333331 0 0.83333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -12 0 -4 -10 0 -4 -12 2 -4 -10 2 -4 -10.56999397 2 -4
		 -10.56999397 0 -4 -11.43000603 2 -4 -11.43000603 0 -4 -10 0.82955176 -4 -10.56999397 0.82955176 -4
		 -11.43000603 0.82955176 -4 -12 0.82955176 -4 -10 0.44695559 -4 -10.56999397 0.44695559 -4
		 -11.43000603 0.44695559 -4 -12 0.44695559 -4 -10 1.63800287 -4 -10.56999397 1.63800287 -4
		 -11.43000603 1.63800287 -4 -12 1.63800287 -4;
	setAttr -s 30 ".ed[0:29]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 17 0
		 6 18 0 8 16 0 9 13 1 8 9 1 10 14 1 9 10 0 11 19 0 10 11 1 12 8 0 13 5 0 12 13 1 14 7 0
		 13 14 0 15 11 0 14 15 1 16 3 0 17 9 0 16 17 1 18 10 0 19 2 0 18 19 1 4 6 0 17 18 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 5 2 17 16
		mu 0 4 5 1 12 13
		f 4 0 -19 21 -2
		mu 0 4 0 7 14 15
		f 4 -11 8 24 23
		mu 0 4 9 8 20 21
		f 4 -15 -26 27 -14
		mu 0 4 11 10 22 23
		f 4 -18 15 10 9
		mu 0 4 13 12 8 9
		f 4 -20 -10 12 11
		mu 0 4 14 13 9 10
		f 4 -22 -12 14 -21
		mu 0 4 15 14 10 11
		f 4 -25 22 -5 6
		mu 0 4 21 20 3 4
		f 4 -28 -8 -4 -27
		mu 0 4 23 22 6 2
		f 4 -7 28 7 -30
		mu 0 4 21 4 6 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Wall_A";
	rename -uid "35AE84BA-4028-F182-C0EE-F898DA6C106F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Just_Wall";
	rename -uid "5185D3D0-4E19-60B3-9404-50B3AEB3C24D";
	setAttr ".rp" -type "double3" 0 1 -4 ;
	setAttr ".sp" -type "double3" 0 1 -4 ;
createNode mesh -n "Wall_Just_WallShape" -p "Wall_Just_Wall";
	rename -uid "241B9CE4-4DE0-1ED7-658E-BEA3BB4B438B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1666666567325592 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.66666663 1 0.66666663
		 0 0.33333331 1 0.33333331 0 0.66666663 0 1 0 1 1 0.66666663 1 0 0 0.33333331 0 0.33333331
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.69299394 2 -4 0.69299394 0 -4 -0.69299406 2 -4
		 -0.69299406 0 -4 0.69299394 0 -3 1 0 -3 1 2 -3 0.69299394 2 -3 -1 0 -3 -0.69299406 0 -3
		 -0.69299406 2 -3 -1 2 -3;
	setAttr -s 16 ".ed[0:15]"  0 1 0 2 0 0 3 1 0 2 3 0 1 4 0 4 5 0 5 6 0
		 0 7 0 7 6 0 7 4 0 3 9 0 8 9 0 2 10 0 10 9 0 11 10 0 8 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 5 6 -9 9
		mu 0 4 4 5 6 7
		f 4 2 -1 -2 3
		mu 0 4 3 1 0 2
		f 4 11 -14 -15 -16
		mu 0 4 8 9 10 11
		f 4 0 4 -10 -8
		mu 0 4 0 1 4 7
		f 4 -4 12 13 -11
		mu 0 4 3 2 10 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Jut_Cap";
	rename -uid "93EE2BEE-47BA-9968-A44D-EB81E6D416AE";
	setAttr ".rp" -type "double3" 0 2 -4 ;
	setAttr ".sp" -type "double3" 0 2 -4 ;
createNode mesh -n "Wall_Jut_CapShape" -p "Wall_Jut_Cap";
	rename -uid "83F734AB-404C-FC6C-7E3F-7185496E20B6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0 0 1 0 0.5 1 0.5
		 1 0 0 1 0 0.83333331 1 0 0 1 0 1 1 0 1 0 0 1 0 0.16666666 1 0 0 1 0 1 1 0 1 0.66666663
		 0 0.5 1 0.33333331 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.69299394 2 -4 -0.69299406 2 -4 1 2 -3 0.69299394 2 -3
		 -0.69299406 2 -3 -1 2 -3 -0.69299406 2 -4 0.69299394 2 -4 0.23335148 3 -3 1 3 -3
		 -0.23335166 3 -3 -1 3 -3 0.23099786 2 -4 0.23099786 2.6603086 -3.5924511 -0.23099811 2 -4
		 -0.23099811 2.6603086 -3.5924511 0.23335148 3 -4 1 3 -4 -1 3 -4 -0.23335166 3 -4;
	setAttr -s 32 ".ed[0:31]"  1 14 0 0 3 0 3 2 0 1 4 0 5 4 0 1 6 0 0 7 0
		 6 15 0 3 8 0 7 8 0 2 9 0 8 9 0 4 10 0 6 10 0 5 11 0 11 10 0 12 0 0 13 7 0 12 13 1
		 8 10 0 13 8 1 14 12 0 15 13 0 14 15 1 15 10 1 8 16 0 9 17 0 16 17 0 11 18 0 10 19 0
		 18 19 0 16 19 0;
	setAttr -s 13 -ch 50 ".fc[0:12]" -type "polyFaces" 
		f 4 0 23 -8 -6
		mu 0 4 0 20 21 3
		f 4 1 8 -10 -7
		mu 0 4 4 5 6 2
		f 4 2 10 -12 -9
		mu 0 4 7 8 9 10
		f 4 -4 5 13 -13
		mu 0 4 11 12 3 13
		f 4 4 12 -16 -15
		mu 0 4 14 15 16 17
		f 3 24 -14 7
		mu 0 3 21 13 3
		f 4 -19 16 6 -18
		mu 0 4 19 18 1 2
		f 3 9 -21 17
		mu 0 3 2 6 19
		f 4 -24 21 18 -23
		mu 0 4 21 20 18 19
		f 4 20 19 -25 22
		mu 0 4 19 6 13 21
		f 4 11 26 -28 -26
		mu 0 4 22 23 24 25
		f 4 15 29 -31 -29
		mu 0 4 26 27 28 29
		f 4 -20 25 31 -30
		mu 0 4 30 31 32 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape21" -p "Wall_Jut_Cap";
	rename -uid "493C9308-4F90-C307-4CBA-BB92C1A78F66";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Jut";
	rename -uid "C96A815B-4D98-C164-A20B-91A37D15D4B2";
	setAttr ".rp" -type "double3" 3 1 -3 ;
	setAttr ".sp" -type "double3" 3 1 -3 ;
createNode mesh -n "Wall_JutShape" -p "Wall_Jut";
	rename -uid "B0F53E63-45DA-62EA-11F7-59916899B9AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0 1 0.5 1 0.5
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  3 0 -2 3 0 -2 3 0 -2 3 0 
		-2;
	setAttr -s 4 ".vt[0:3]"  -1 0 -1 -1 2 -1 0 2 -1 0 0 -1;
	setAttr -s 4 ".ed[0:3]"  0 3 0 0 1 0 1 2 0 2 3 1;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 -4 -3 -2
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape12" -p "Wall_Jut";
	rename -uid "0EA15746-4F3D-82D2-AF7F-7AAF712C80AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall_Jut_Top";
	rename -uid "F64E0D10-460E-8D67-4FD2-76B339C121A1";
	setAttr ".rp" -type "double3" 3 2 -3 ;
	setAttr ".sp" -type "double3" 3 2 -3 ;
createNode mesh -n "Wall_Jut_TopShape" -p "Wall_Jut_Top";
	rename -uid "A220772E-4373-430B-AAA1-48994683DB65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 1 0.5 1 0.5 0.5
		 0 0.5 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  2 3 -3 3 3 -3 3 2 -3 2 2 -3 2 3 -4 3 3 -4;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 2 0 3 0 0 2 3 0 0 4 0 1 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -4 -2 -1 -3
		mu 0 4 3 2 1 0
		f 4 0 5 -7 -5
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape12" -p "Wall_Jut_Top";
	rename -uid "47AEF5B4-4315-9F60-2ABE-28A92038A1E6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InsideCorner_Short";
	rename -uid "21F8317C-42C1-C038-92D5-BC81AE75F879";
	setAttr ".rp" -type "double3" 5 1 -1 ;
	setAttr ".sp" -type "double3" 5 1 -1 ;
createNode mesh -n "InsideCorner_ShortShape" -p "InsideCorner_Short";
	rename -uid "F943EE73-40F2-1CC8-417D-03856AF3AC9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  4 0 -1 5 0 0 4 2 -1 5 2 0 5 0 -1 5 2 -1;
	setAttr -s 7 ".ed[0:6]"  0 4 0 0 2 0 1 3 0 2 5 0 4 1 0 5 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 6 -4 -2
		mu 0 4 0 4 5 2
		f 4 4 2 -6 -7
		mu 0 4 4 1 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InsideCorner_Long";
	rename -uid "9F4FBE74-4AD3-D636-7BAC-53A2F049BBE1";
	setAttr ".rp" -type "double3" 8 1 -1 ;
	setAttr ".sp" -type "double3" 8 1 -1 ;
createNode mesh -n "InsideCorner_LongShape" -p "InsideCorner_Long";
	rename -uid "137C6D18-4FC2-B795-D9A0-EF8878376D94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  6 0 -1 8 0 -1 6 2 -1 8 2 -1 8 0 1 8 2 1;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -3 4 6 -6
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OutsideCorner_Short";
	rename -uid "D952CCB9-4D6E-C13E-454E-F7AA15E27D45";
	setAttr ".rp" -type "double3" 5 1 -4 ;
	setAttr ".sp" -type "double3" 5 1 -4 ;
createNode mesh -n "OutsideCorner_ShortShape" -p "OutsideCorner_Short";
	rename -uid "BC009DA6-4A66-E121-466F-6CA3A5601289";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  4 0 -4 5 0 -3 4 2 -4 5 2 -3 5 0 -4 5 2 -4;
	setAttr -s 7 ".ed[0:6]"  0 4 0 0 2 0 1 3 0 2 5 0 4 1 0 5 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 3 -7 -1
		mu 0 4 0 2 5 4
		f 4 6 5 -3 -5
		mu 0 4 4 5 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "OutsideCorner_Short";
	rename -uid "C6FEE024-402F-6F2C-9C6A-609792C4A172";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OutsideCorner_Long";
	rename -uid "068040A4-4683-52D9-59A7-688A08547EC8";
	setAttr ".rp" -type "double3" 8 1 -4 ;
	setAttr ".sp" -type "double3" 8 1 -4 ;
createNode mesh -n "OutsideCorner_LongShape" -p "OutsideCorner_Long";
	rename -uid "49DE5C3A-4928-CD43-43FD-0F9E06728C1B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  6 0 -4 8 0 -4 6 2 -4 8 2 -4 8 0 -2 8 2 -2;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1
		f 4 5 -7 -5 2
		mu 0 4 4 7 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "OutsideCorner_Long";
	rename -uid "FD183403-409A-950B-33A4-069F269AF357";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_Corner_Inside";
	rename -uid "8FDE3485-4953-6A7B-3D83-DA98B3E6E035";
	setAttr ".rp" -type "double3" -2 2.5 3 ;
	setAttr ".sp" -type "double3" -2 2.5 3 ;
createNode mesh -n "Ceiling_Arch_Corner_InsideShape" -p "Ceiling_Arch_Corner_Inside";
	rename -uid "F22F33F9-4AFF-3FDF-0816-0B9E95CC3092";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0.5 0 0.66666663
		 0 0.33333331 0.33333337 0.33333331 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1 2 2 -1 3 2.66666698 -1.66666651 3 2 -1.66666651 3 2.66666627
		 -1.000000357628 3 2.99999928 -1.66666687 3 2.99999881 -2 3 2.66666627 -2 3 2 -1.66666651 3 3
		 -2 3 3;
	setAttr -s 14 ".ed[0:13]"  1 0 0 0 2 0 3 2 0 1 3 0 1 2 0 1 4 0 3 5 0
		 4 5 0 3 6 0 2 7 0 6 7 0 3 8 0 6 9 0 8 9 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -1 4 -2
		mu 0 3 0 1 2
		f 3 -5 3 2
		mu 0 3 2 1 3
		f 4 -4 5 7 -7
		mu 0 4 4 5 6 7
		f 4 -3 8 10 -10
		mu 0 4 8 9 10 11
		f 4 -9 11 13 -13
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape25" -p "Ceiling_Arch_Corner_Inside";
	rename -uid "E0947F11-4D99-C721-3939-B094429BF1EB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.66666663 0 0.66666663 1 0.33333331 0 0.33333331 0 0.66666663 0 1 1 1 1 0.66666663
		 0 0.33333331 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331
		 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331 1 0.33333331
		 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -1 2 9 1 2 9 -1 2 7 1 2 7 1 3 7.66666698
		 -1 3 7.66666698 1 3 8.33333302 -1 3 8.33333302 -1 2 11 -1 2 9 -3 2 11 -3 2 9 -2.33333325 3 9
		 -2.33333325 3 11 -1.66666651 3 9 -1.66666651 3 11 -5 2 9 -3 2 9 -5 2 7 -3 2 7 -3 3 7.66666698
		 -5 3 7.66666698 -3 3 8.33333302 -5 3 8.33333302 -1 2 7 -1 2 5 -3 2 7 -3 2 5 -2.33333325 3 5
		 -2.33333325 3 7 -1.66666651 3 5 -1.66666651 3 7;
	setAttr -s 40 ".ed[0:39]"  0 1 0 0 7 0 1 6 0 2 3 0 4 3 0 5 2 0 4 5 1
		 6 4 0 7 5 0 6 7 1 8 9 0 8 15 0 9 14 0 10 11 0 12 11 0 13 10 0 12 13 1 14 12 0 15 13 0
		 14 15 1 16 17 0 16 23 0 17 22 0 18 19 0 20 19 0 21 18 0 20 21 1 22 20 0 23 21 0 22 23 1
		 24 25 0 24 31 0 25 30 0 26 27 0 28 27 0 29 26 0 28 29 1 30 28 0 31 29 0 30 31 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 5 3 -5 6
		mu 0 4 5 2 3 4
		f 4 8 -7 -8 9
		mu 0 4 7 5 4 6
		f 4 1 -10 -3 -1
		mu 0 4 0 7 6 1
		f 4 15 13 -15 16
		mu 0 4 8 9 10 11
		f 4 18 -17 -18 19
		mu 0 4 12 8 11 13
		f 4 11 -20 -13 -11
		mu 0 4 14 12 13 15
		f 4 25 23 -25 26
		mu 0 4 16 17 18 19
		f 4 28 -27 -28 29
		mu 0 4 20 16 19 21
		f 4 21 -30 -23 -21
		mu 0 4 22 20 21 23
		f 4 35 33 -35 36
		mu 0 4 24 25 26 27
		f 4 38 -37 -38 39
		mu 0 4 28 24 27 29
		f 4 31 -40 -33 -31
		mu 0 4 30 28 29 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_HalfCap";
	rename -uid "4543985C-4437-79DB-1DFA-FDBFFBC2CF63";
	setAttr ".rp" -type "double3" -7 2.5 3 ;
	setAttr ".sp" -type "double3" -7 2.5 3 ;
createNode mesh -n "Ceiling_Arch_HalfCapShape" -p "Ceiling_Arch_HalfCap";
	rename -uid "A592C522-40E2-3F66-40E2-58A9850174C8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0 0.5 0 0.66666663
		 0.5 1 1 0.66666663 0 0.66666663 0 0.33333331 0.33333337 0.33333331 0.33333337 0.66666663
		 1 0.49999997 0.5 0.66666663 0.5 0.33333331 0 0.49999997 0.5 0.49999997 0.33333337
		 0.49999997 0 0.49999997 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -5 0 -5 -5 0 -5 -5.0035615 
		0 -5 -5 0 -5 -5 0 -5 -5 0 -5 -5 -1 -5 -5 -1 -5 -5 0 -5 -5 -1 -5 -5 -1 -5 -5 0 -5 
		-5 -1 -5 -5 -1 -5 -5 0 -5 -5 0 -5;
	setAttr -s 16 ".vt[0:15]"  -1.0017807484 2 7 -1 3 7.66666698 -2.99821925 2 7
		 -3 3 7.66666698 -2.33333325 3 7 -1.66666651 3 7 -1.66666651 4 7.66666603 -2.33333325 4 7.66666603
		 -3 3 8 -2.33333325 4 8 -1.66666651 4 8 -1 3 8 -2 4 8 -2 4 7.66666603 -2 3 7 -2 2 7;
	setAttr -s 27 ".ed[0:26]"  1 0 0 3 2 0 0 5 0 4 2 0 5 14 0 6 5 0 7 4 0
		 6 13 1 1 6 0 3 7 0 1 5 0 3 4 0 8 3 0 9 7 0 8 9 0 10 6 0 9 12 0 11 1 0 10 11 0 12 10 0
		 13 7 1 12 13 1 14 4 0 13 14 1 14 15 0 0 15 0 15 2 0;
	setAttr -s 12 -ch 44 ".fc[0:11]" -type "polyFaces" 
		f 4 7 23 -5 -6
		mu 0 4 6 13 14 5
		f 3 -1 10 -3
		mu 0 3 0 1 5
		f 3 1 -4 -12
		mu 0 3 3 2 4
		f 4 -15 12 9 -14
		mu 0 4 9 8 3 7
		f 4 -20 21 -8 -16
		mu 0 4 10 12 13 6
		f 4 -18 -19 15 -9
		mu 0 4 1 11 10 6
		f 4 -22 -17 13 -21
		mu 0 4 13 12 9 7
		f 4 -24 20 6 -23
		mu 0 4 14 13 7 4
		f 3 -11 8 5
		mu 0 3 5 1 6
		f 3 -7 -10 11
		mu 0 3 4 7 3
		f 4 4 24 -26 2
		mu 0 4 15 16 17 18
		f 4 22 3 -27 -25
		mu 0 4 19 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape25" -p "Ceiling_Arch_HalfCap";
	rename -uid "CE1E833C-4AC8-5DFF-AEAB-599F21AE50AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.66666663 0 0.66666663 1 0.33333331 0 0.33333331 0 0.66666663 0 1 1 1 1 0.66666663
		 0 0.33333331 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331
		 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331 1 0.33333331
		 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -1 2 9 1 2 9 -1 2 7 1 2 7 1 3 7.66666698
		 -1 3 7.66666698 1 3 8.33333302 -1 3 8.33333302 -1 2 11 -1 2 9 -3 2 11 -3 2 9 -2.33333325 3 9
		 -2.33333325 3 11 -1.66666651 3 9 -1.66666651 3 11 -5 2 9 -3 2 9 -5 2 7 -3 2 7 -3 3 7.66666698
		 -5 3 7.66666698 -3 3 8.33333302 -5 3 8.33333302 -1 2 7 -1 2 5 -3 2 7 -3 2 5 -2.33333325 3 5
		 -2.33333325 3 7 -1.66666651 3 5 -1.66666651 3 7;
	setAttr -s 40 ".ed[0:39]"  0 1 0 0 7 0 1 6 0 2 3 0 4 3 0 5 2 0 4 5 1
		 6 4 0 7 5 0 6 7 1 8 9 0 8 15 0 9 14 0 10 11 0 12 11 0 13 10 0 12 13 1 14 12 0 15 13 0
		 14 15 1 16 17 0 16 23 0 17 22 0 18 19 0 20 19 0 21 18 0 20 21 1 22 20 0 23 21 0 22 23 1
		 24 25 0 24 31 0 25 30 0 26 27 0 28 27 0 29 26 0 28 29 1 30 28 0 31 29 0 30 31 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 5 3 -5 6
		mu 0 4 5 2 3 4
		f 4 8 -7 -8 9
		mu 0 4 7 5 4 6
		f 4 1 -10 -3 -1
		mu 0 4 0 7 6 1
		f 4 15 13 -15 16
		mu 0 4 8 9 10 11
		f 4 18 -17 -18 19
		mu 0 4 12 8 11 13
		f 4 11 -20 -13 -11
		mu 0 4 14 12 13 15
		f 4 25 23 -25 26
		mu 0 4 16 17 18 19
		f 4 28 -27 -28 29
		mu 0 4 20 16 19 21
		f 4 21 -30 -23 -21
		mu 0 4 22 20 21 23
		f 4 35 33 -35 36
		mu 0 4 24 25 26 27
		f 4 38 -37 -38 39
		mu 0 4 28 24 27 29
		f 4 31 -40 -33 -31
		mu 0 4 30 28 29 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape26" -p "Ceiling_Arch_HalfCap";
	rename -uid "563772C7-4528-5171-C14F-38BE9385446C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0 1 0 0.66666663
		 1 1 1 0.66666663 0 0.66666663 0 1 0 0.33333331 0 0 0.33333337 0.33333331 0.33333337
		 0.66666663 1 0.49999997 0.5 0.66666663 0.5 0.33333331 0 0.49999997 0.5 0.49999997
		 0.33333337 0.49999997 0 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[6]" -type "float3" 0 1 0 ;
	setAttr ".pt[7]" -type "float3" 0 1 0 ;
	setAttr ".pt[9]" -type "float3" 0 1 0 ;
	setAttr ".pt[10]" -type "float3" 0 1 0 ;
	setAttr ".pt[12]" -type "float3" 0 1 0 ;
	setAttr ".pt[13]" -type "float3" 0 1 0 ;
	setAttr -s 15 ".vt[0:14]"  -1 2 7 -1 3 7.66666698 -3 2 7 -3 3 7.66666698
		 -2.33333325 3 7 -1.66666651 3 7 -1.66666651 3 7.66666603 -2.33333325 3 7.66666603
		 -3 3 8 -2.33333325 3 8 -1.66666651 3 8 -1 3 8 -2 3 8 -2 3 7.66666603 -2 3 7;
	setAttr -s 26 ".ed[0:25]"  1 0 0 3 2 0 0 5 0 4 2 0 5 14 0 6 5 0 7 4 0
		 6 13 1 1 6 0 3 7 0 1 5 0 0 0 0 2 2 0 3 4 0 8 3 0 9 7 0 8 9 0 10 6 0 9 12 0 11 1 0
		 10 11 0 12 10 0 13 7 1 12 13 1 14 4 0 13 14 1;
	setAttr -s 10 -ch 38 ".fc[0:9]" -type "polyFaces" 
		f 4 7 25 -5 -6
		mu 0 4 8 15 16 6
		f 4 -1 10 -3 -12
		mu 0 4 0 1 6 7
		f 4 1 12 -4 -14
		mu 0 4 3 2 5 4
		f 4 -17 14 9 -16
		mu 0 4 11 10 3 9
		f 4 -22 23 -8 -18
		mu 0 4 12 14 15 8
		f 4 -20 -21 17 -9
		mu 0 4 1 13 12 8
		f 4 -24 -19 15 -23
		mu 0 4 15 14 11 9
		f 4 -26 22 6 -25
		mu 0 4 16 15 9 4
		f 3 -11 8 5
		mu 0 3 6 1 8
		f 3 -7 -10 13
		mu 0 3 4 9 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_FourWay";
	rename -uid "A093EC3B-4370-A834-465D-5A8A0805A3B5";
	setAttr ".rp" -type "double3" -5 2.5 3 ;
	setAttr ".sp" -type "double3" -5 2.5 3 ;
createNode mesh -n "Ceiling_Arch_FourWayShape" -p "Ceiling_Arch_FourWay";
	rename -uid "41E6BBFF-450B-CB36-8FF6-0A87BE52EF8B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0 0.5 0 0.66666663
		 0.5 1 1 0.66666663 0 0.66666663 0 0.33333331 0.33333337 0.33333331 0.33333337 0.66666663
		 1 0.49999997 0.5 0.66666663 0.5 0.33333331 0 0.49999997 0.5 0.49999997 0.33333337
		 0.49999997 0 0.49999997 0.33333337 0.33333331 0.33333337 0.49999997 0 0.49999997
		 0 0.33333331 0 0.5 0 0.66666663 1 0.66666663 0.5 1 0 0.66666663 0.5 0.66666663 1
		 0.49999997 0.33333337 0.66666663 0.5 0.33333331 0.5 0.49999997 0 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  0.0017807006 0 1 0 0 1 -0.0035620118 
		0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0.0017807006 
		0 1 0 0 1 -0.0035620118 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 
		0 0 1 0 0 1 0 0 1;
	setAttr -s 30 ".vt[0:29]"  -4.0017805099 2 3 -4 3 2.33333302 -5.99821901 2 3
		 -6 3 2.33333302 -5.33333302 3 3 -4.66666651 3 3 -4.66666651 3 2.33333373 -5.33333302 3 2.33333373
		 -6 3 2 -5.33333302 3 2 -4.66666651 3 2 -4 3 2 -5 3 2 -5 3 2.33333373 -5 3 3 -4.0017805099 2 1
		 -4 3 1.66666687 -5.99821901 2 1 -6 3 1.66666687 -5.33333302 3 1 -4.66666651 3 1 -4.66666651 3 1.66666627
		 -5.33333302 3 1.66666627 -6 3 2 -5.33333302 3 2 -4.66666651 3 2 -4 3 2 -5 3 2 -5 3 1.66666627
		 -5 3 1;
	setAttr -s 48 ".ed[0:47]"  1 0 0 3 2 0 0 5 0 4 2 0 5 14 0 6 5 0 7 4 0
		 6 13 1 1 6 0 3 7 0 1 5 0 3 4 0 8 3 0 9 7 0 8 9 0 10 6 0 9 12 0 11 1 0 10 11 0 12 10 0
		 13 7 1 12 13 1 14 4 0 13 14 1 16 15 0 18 17 0 15 20 0 19 17 0 20 29 0 21 20 0 22 19 0
		 21 28 1 16 21 0 18 22 0 16 20 0 18 19 0 23 18 0 24 22 0 23 24 0 25 21 0 24 27 0 26 16 0
		 25 26 0 27 25 0 28 22 1 27 28 1 29 19 0 28 29 1;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 5 4 -24 -8
		mu 0 4 6 5 14 13
		f 3 2 -11 0
		mu 0 3 0 5 1
		f 3 11 3 -2
		mu 0 3 3 4 2
		f 4 13 -10 -13 14
		mu 0 4 9 7 3 8
		f 4 15 7 -22 19
		mu 0 4 10 6 13 12
		f 4 8 -16 18 17
		mu 0 4 1 6 10 11
		f 4 20 -14 16 21
		mu 0 4 13 7 9 12
		f 4 22 -7 -21 23
		mu 0 4 14 4 7 13
		f 3 -6 -9 10
		mu 0 3 5 6 1
		f 3 -12 9 6
		mu 0 3 4 3 7
		f 4 31 47 -29 -30
		mu 0 4 15 16 17 18
		f 3 -25 34 -27
		mu 0 3 19 20 18
		f 3 25 -28 -36
		mu 0 3 21 22 23
		f 4 -39 36 33 -38
		mu 0 4 24 25 21 26
		f 4 -44 45 -32 -40
		mu 0 4 27 28 16 15
		f 4 -42 -43 39 -33
		mu 0 4 20 29 27 15
		f 4 -46 -41 37 -45
		mu 0 4 16 28 24 26
		f 4 -48 44 30 -47
		mu 0 4 17 16 26 23
		f 3 -35 32 29
		mu 0 3 18 20 15
		f 3 -31 -34 35
		mu 0 3 23 26 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_Half";
	rename -uid "701FD941-45C4-E382-EDBE-E39665B8361B";
	setAttr ".rp" -type "double3" -3 2 3 ;
	setAttr ".sp" -type "double3" -3 2 3 ;
createNode mesh -n "Ceiling_Arch_HalfShape" -p "Ceiling_Arch_Half";
	rename -uid "49111606-450F-7958-FA51-3B817EA9FEFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.74999998509883881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 1 0.33333331
		 0 0.33333331 0 0.49999997 1 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  -3 0 3 -3 0 3 -3 0 3 -3 0 
		3 -3 0 3 -3 0 3;
	setAttr -s 6 ".vt[0:5]"  -1 2 1 1 2 1 1 3 0.33333337 -1 3 0.33333337
		 -1 3 3.8146972e-08 1 3 3.8146972e-08;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 3 0 1 2 0 2 5 0 3 4 0 2 3 1 4 5 1;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 4 6 -4 5
		mu 0 4 3 4 5 2
		f 4 1 -6 -3 -1
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "Ceiling_Arch_Half";
	rename -uid "703D2B93-446B-3C42-B8A7-35A513DECF7C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 0.5 0.5 0 0.5 -0.5 
		0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "Ceiling_Arch_Half";
	rename -uid "E2C16104-4EC2-1B7C-4FD3-4E83679729A0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1 2 1 1 2 1 -1 2 -1 1 2 -1;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_Halftop";
	rename -uid "388712B3-4834-C700-C0C3-048418BA8248";
	setAttr ".rp" -type "double3" -9 2.5 3 ;
	setAttr ".sp" -type "double3" -9 2.5 3 ;
createNode mesh -n "Ceiling_Arch_HalftopShape" -p "Ceiling_Arch_Halftop";
	rename -uid "AA1D98CD-48E4-72A6-11AF-6F8D9791EA60";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0.5 0 0.66666663
		 0.5 1 1 0.66666663 0 0.66666663 0 0.33333331 0.33333337 0.33333331 0.33333337 0.66666663
		 1 0.49999997 0.5 0.66666663 0.5 0.33333331 0 0.49999997 0.5 0.49999997 0.33333337
		 0.49999997 0 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  -7 0 -5 -7 0 -5 -7.001781 
		0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 -5 -7 0 
		-5 -7 0 -5 -7 0 -5;
	setAttr -s 15 ".vt[0:14]"  -1.0017807484 2 7 -1 3 7.66666698 -2.99821925 2 7
		 -3 3 7.66666698 -2.33333325 3 7 -1.66666651 3 7 -1.66666651 3 7.66666603 -2.33333325 3 7.66666603
		 -3 3 8 -2.33333325 3 8 -1.66666651 3 8 -1 3 8 -2 3 8 -2 3 7.66666603 -2 3 7;
	setAttr -s 24 ".ed[0:23]"  1 0 0 3 2 0 0 5 0 4 2 0 5 14 0 6 5 0 7 4 0
		 6 13 1 1 6 0 3 7 0 1 5 0 3 4 0 8 3 0 9 7 0 8 9 0 10 6 0 9 12 0 11 1 0 10 11 0 12 10 0
		 13 7 1 12 13 1 14 4 0 13 14 1;
	setAttr -s 10 -ch 36 ".fc[0:9]" -type "polyFaces" 
		f 4 7 23 -5 -6
		mu 0 4 6 13 14 5
		f 3 -1 10 -3
		mu 0 3 0 1 5
		f 3 1 -4 -12
		mu 0 3 3 2 4
		f 4 -15 12 9 -14
		mu 0 4 9 8 3 7
		f 4 -20 21 -8 -16
		mu 0 4 10 12 13 6
		f 4 -18 -19 15 -9
		mu 0 4 1 11 10 6
		f 4 -22 -17 13 -21
		mu 0 4 13 12 9 7
		f 4 -24 20 6 -23
		mu 0 4 14 13 7 4
		f 3 -11 8 5
		mu 0 3 5 1 6
		f 3 -7 -10 11
		mu 0 3 4 7 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape25" -p "Ceiling_Arch_Halftop";
	rename -uid "2061A8DC-4847-BD8D-2B0F-4EA797BD7C70";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.66666663 0 0.66666663 1 0.33333331 0 0.33333331 0 0.66666663 0 1 1 1 1 0.66666663
		 0 0.33333331 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331
		 1 0.33333331 0 0 1 0 0 0.66666663 0 1 1 1 1 0.66666663 0 0.33333331 1 0.33333331
		 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -1 2 9 1 2 9 -1 2 7 1 2 7 1 3 7.66666698
		 -1 3 7.66666698 1 3 8.33333302 -1 3 8.33333302 -1 2 11 -1 2 9 -3 2 11 -3 2 9 -2.33333325 3 9
		 -2.33333325 3 11 -1.66666651 3 9 -1.66666651 3 11 -5 2 9 -3 2 9 -5 2 7 -3 2 7 -3 3 7.66666698
		 -5 3 7.66666698 -3 3 8.33333302 -5 3 8.33333302 -1 2 7 -1 2 5 -3 2 7 -3 2 5 -2.33333325 3 5
		 -2.33333325 3 7 -1.66666651 3 5 -1.66666651 3 7;
	setAttr -s 40 ".ed[0:39]"  0 1 0 0 7 0 1 6 0 2 3 0 4 3 0 5 2 0 4 5 1
		 6 4 0 7 5 0 6 7 1 8 9 0 8 15 0 9 14 0 10 11 0 12 11 0 13 10 0 12 13 1 14 12 0 15 13 0
		 14 15 1 16 17 0 16 23 0 17 22 0 18 19 0 20 19 0 21 18 0 20 21 1 22 20 0 23 21 0 22 23 1
		 24 25 0 24 31 0 25 30 0 26 27 0 28 27 0 29 26 0 28 29 1 30 28 0 31 29 0 30 31 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 5 3 -5 6
		mu 0 4 5 2 3 4
		f 4 8 -7 -8 9
		mu 0 4 7 5 4 6
		f 4 1 -10 -3 -1
		mu 0 4 0 7 6 1
		f 4 15 13 -15 16
		mu 0 4 8 9 10 11
		f 4 18 -17 -18 19
		mu 0 4 12 8 11 13
		f 4 11 -20 -13 -11
		mu 0 4 14 12 13 15
		f 4 25 23 -25 26
		mu 0 4 16 17 18 19
		f 4 28 -27 -28 29
		mu 0 4 20 16 19 21
		f 4 21 -30 -23 -21
		mu 0 4 22 20 21 23
		f 4 35 33 -35 36
		mu 0 4 24 25 26 27
		f 4 38 -37 -38 39
		mu 0 4 28 24 27 29
		f 4 31 -40 -33 -31
		mu 0 4 30 28 29 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape26" -p "Ceiling_Arch_Halftop";
	rename -uid "3D97436D-4E8B-15AC-EE71-2DB38C9810B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0 1 0 0.66666663
		 1 1 1 0.66666663 0 0.66666663 0 1 0 0.33333331 0 0 0.33333337 0.33333331 0.33333337
		 0.66666663 1 0.49999997 0.5 0.66666663 0.5 0.33333331 0 0.49999997 0.5 0.49999997
		 0.33333337 0.49999997 0 0.49999997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[6]" -type "float3" 0 1 0 ;
	setAttr ".pt[7]" -type "float3" 0 1 0 ;
	setAttr ".pt[9]" -type "float3" 0 1 0 ;
	setAttr ".pt[10]" -type "float3" 0 1 0 ;
	setAttr ".pt[12]" -type "float3" 0 1 0 ;
	setAttr ".pt[13]" -type "float3" 0 1 0 ;
	setAttr -s 15 ".vt[0:14]"  -1 2 7 -1 3 7.66666698 -3 2 7 -3 3 7.66666698
		 -2.33333325 3 7 -1.66666651 3 7 -1.66666651 3 7.66666603 -2.33333325 3 7.66666603
		 -3 3 8 -2.33333325 3 8 -1.66666651 3 8 -1 3 8 -2 3 8 -2 3 7.66666603 -2 3 7;
	setAttr -s 26 ".ed[0:25]"  1 0 0 3 2 0 0 5 0 4 2 0 5 14 0 6 5 0 7 4 0
		 6 13 1 1 6 0 3 7 0 1 5 0 0 0 0 2 2 0 3 4 0 8 3 0 9 7 0 8 9 0 10 6 0 9 12 0 11 1 0
		 10 11 0 12 10 0 13 7 1 12 13 1 14 4 0 13 14 1;
	setAttr -s 10 -ch 38 ".fc[0:9]" -type "polyFaces" 
		f 4 7 25 -5 -6
		mu 0 4 8 15 16 6
		f 4 -1 10 -3 -12
		mu 0 4 0 1 6 7
		f 4 1 12 -4 -14
		mu 0 4 3 2 5 4
		f 4 -17 14 9 -16
		mu 0 4 11 10 3 9
		f 4 -22 23 -8 -18
		mu 0 4 12 14 15 8
		f 4 -20 -21 17 -9
		mu 0 4 1 13 12 8
		f 4 -24 -19 15 -23
		mu 0 4 15 14 11 9
		f 4 -26 22 6 -25
		mu 0 4 16 15 9 4
		f 3 -11 8 5
		mu 0 3 6 1 8
		f 3 -7 -10 13
		mu 0 3 4 9 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ceiling_Arch_Fulltop";
	rename -uid "0B2DF15A-48CE-C80D-F497-7C970D8E8D08";
	setAttr ".rp" -type "double3" -11 2 3 ;
	setAttr ".sp" -type "double3" -11 2 3 ;
createNode mesh -n "Ceiling_Arch_FulltopShape" -p "Ceiling_Arch_Fulltop";
	rename -uid "3C6C1935-42B9-02A4-A9E5-1FA85E68224E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0 0 1 0 1 0.33333331
		 0 0.33333331 0 0.49999997 1 0.49999997 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -12 2 4 -10 2 4 -10 3 3.33333349 -12 3 3.33333349
		 -12 3 3 -10 3 3 -12 3 2 -10 3 2;
	setAttr -s 10 ".ed[0:9]"  0 1 0 0 3 0 1 2 0 2 5 0 3 4 0 2 3 1 4 5 0
		 4 6 0 5 7 0 6 7 0;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 4 6 -4 5
		mu 0 4 3 4 5 2
		f 4 1 -6 -3 -1
		mu 0 4 0 3 2 1
		f 4 -7 7 9 -9
		mu 0 4 6 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "Ceiling_Arch_Fulltop";
	rename -uid "88E74529-4D17-4560-A92B-47852486C6E8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 0.5 0.5 0 0.5 -0.5 
		0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "Ceiling_Arch_Fulltop";
	rename -uid "4DF90813-40EC-823B-7609-C3B661739C0E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -1 2 1 1 2 1 -1 2 -1 1 2 -1;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Full";
	rename -uid "9B75F27A-4F27-E208-2A3C-31B5C555657A";
	setAttr ".rp" -type "double3" 6 1 9 ;
	setAttr ".sp" -type "double3" 6 1 9 ;
createNode mesh -n "Stairs_FullShape" -p "Stairs_Full";
	rename -uid "9C5E7FCC-4D62-0D94-6AF5-BD8FEDE8F878";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666668653488159 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  5 0 9 7 0 9 5 2 7 7 2 7 7 1 7.75 5 1 7.75
		 7 1.5 7.25 5 1.5 7.25 7 0.5 8.25 5 0.5 8.25 7 0.5 8.75 5 0.5 8.75 7 1 8.25 5 1 8.25
		 7 1.5 7.75 5 1.5 7.75 7 2 7.25 5 2 7.25 7 0 8.75 5 0 8.75;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Half";
	rename -uid "A49B909E-4DE3-D038-4F0B-4C84C1EC2630";
	setAttr ".rp" -type "double3" 6 1 12 ;
	setAttr ".sp" -type "double3" 6 1 12 ;
createNode mesh -n "Stairs_HalfShape" -p "Stairs_Half";
	rename -uid "FC08CC64-4EC6-6105-7727-71AA07356E75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 1 0.25 0
		 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.0625 0 0.0625 1 0.4375 0 0.4375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  5 0 12 7 0 12 7 0.5 11.25 5 0.5 11.25 7 0.5 11.75
		 5 0.5 11.75 7 1 11.25 5 1 11.25 7 0 11.75 5 0 11.75 7 1 11 5 1 11;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 9 0 1 8 0 2 6 0 3 7 0 2 3 0 4 2 0
		 5 3 0 4 5 0 6 10 0 7 11 0 6 7 0 8 4 0 9 5 0 8 9 0 10 11 1;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 14 -2
		mu 0 4 0 1 8 9
		f 4 -6 3 11 -5
		mu 0 4 3 2 6 7
		f 4 -9 6 5 -8
		mu 0 4 5 4 2 3
		f 4 -12 9 15 -11
		mu 0 4 7 6 10 11
		f 4 -15 12 8 -14
		mu 0 4 9 8 4 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Half";
	rename -uid "0145E80E-4CF7-946B-4ACA-48B64DAED07B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Half_Top";
	rename -uid "58B526E0-467F-4A16-3A5B-189A52FD0EB3";
	setAttr ".rp" -type "double3" 8 1 12 ;
	setAttr ".sp" -type "double3" 8 1 12 ;
createNode mesh -n "Stairs_Half_TopShape" -p "Stairs_Half_Top";
	rename -uid "44AE6EED-4A2D-F8FE-6F7B-23A2C0468547";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 1 0.25 0
		 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.0625 0 0.0625 1 0.4375 0 0.4375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  8 0 13 8 0 13 8 0 13 8 0 
		13 8 0 13 8 0 13 8 0 13 8 0 13 8 0 13 8 0 13 8 0 12 8 0 12;
	setAttr -s 12 ".vt[0:11]"  -1 0 -1 1 0 -1 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25
		 -1 0.5 -1.25 1 1 -1.75 -1 1 -1.75 1 0 -1.25 -1 0 -1.25 1 1 -2 -1 1 -2;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 9 0 1 8 0 2 6 0 3 7 0 2 3 0 4 2 0
		 5 3 0 4 5 0 6 10 0 7 11 0 6 7 0 8 4 0 9 5 0 8 9 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 2 14 -2
		mu 0 4 0 1 8 9
		f 4 -6 3 11 -5
		mu 0 4 3 2 6 7
		f 4 -9 6 5 -8
		mu 0 4 5 4 2 3
		f 4 -12 9 15 -11
		mu 0 4 7 6 10 11
		f 4 -15 12 8 -14
		mu 0 4 9 8 4 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Half_Top";
	rename -uid "99171906-4BC3-DBAE-960E-A7A51C9D996A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape29" -p "Stairs_Half_Top";
	rename -uid "941F3821-4123-35E3-CFAC-618AEDAD6591";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1 1 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1
		 0.625 0 0.625 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 1 0 0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 4 5 0
		 6 16 0 7 17 0 6 7 0 8 12 0 9 13 0 8 9 0 10 8 0 11 9 0 10 11 0 12 4 0 13 5 0 12 13 0
		 14 6 0 15 7 0 14 15 0 16 3 0 17 2 0 16 17 0 18 10 0 19 11 0 18 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 2 27 -2
		mu 0 4 0 1 20 21
		f 4 -7 4 21 -6
		mu 0 4 7 6 16 17
		f 4 -10 7 24 -9
		mu 0 4 9 8 18 19
		f 4 -13 10 18 -12
		mu 0 4 11 10 14 15
		f 4 -16 13 12 -15
		mu 0 4 13 12 10 11
		f 4 -19 16 6 -18
		mu 0 4 15 14 6 7
		f 4 -22 19 9 -21
		mu 0 4 17 16 8 9
		f 4 -25 22 -4 -24
		mu 0 4 19 18 3 2
		f 4 -28 25 15 -27
		mu 0 4 21 20 12 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard_middle";
	rename -uid "54E15CC2-4738-D575-13B2-5B9508313653";
	setAttr ".rp" -type "double3" 3 1 9 ;
	setAttr ".sp" -type "double3" 3 1 9 ;
createNode mesh -n "Stairs_Guard_middleShape" -p "Stairs_Guard_middle";
	rename -uid "A77E2D0C-4C37-0130-2C21-EAA76A4103E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625 0.33333337 1 0.33333337 0.875 0.33333337 0.75 0.33333337
		 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337 0.125 0.33333337
		 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75 0.66666669 0.625
		 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125 0.66666669 0.0625
		 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337 0.875 0.66666669
		 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669 0.5 0.33333337
		 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25 0.66666669
		 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337 0 0.66666669
		 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  2 0 9 4 0 9 2 2 7 4 2 7 4 1 7.75 2 1 7.75
		 4 1.5 7.25 2 1.5 7.25 4 0.5 8.25 2 0.5 8.25 4 0.5 8.75 2 0.5 8.75 4 1 8.25 2 1 8.25
		 4 1.5 7.75 2 1.5 7.75 4 2 7.25 2 2 7.25 4 0 8.75 2 0 8.75 2.66666698 2 7 2.66666698 2 7.25
		 2.66666698 1.5 7.25 2.66666698 1.5 7.75 2.66666698 1 7.75 2.66666698 1 8.25 2.66666698 0.5 8.25
		 2.66666698 0.5 8.75 2.66666698 0 8.75 2.66666698 0 9 3.33333349 2 7 3.33333349 2 7.25
		 3.33333349 1.5 7.25 3.33333349 1.5 7.75 3.33333349 1 7.75 3.33333349 1 8.25 3.33333349 0.5 8.25
		 3.33333349 0.5 8.75 3.33333349 0 8.75 3.33333349 0 9 3.33333349 2.44907331 7 3.33333349 2.10300469 7.35300398
		 2.66666698 2.44907331 7 2.66666698 2.10300469 7.35300398 3.33333349 1.76411104 7.69887209
		 2.66666698 1.76411104 7.69887209 3.33333349 1.60300457 7.85300398 2.66666698 1.60300457 7.85300398
		 3.33333349 1.26411092 8.19887161 2.66666698 1.26411092 8.19887161 3.33333349 1.10300457 8.35300446
		 2.66666698 1.10300457 8.35300446 3.33333349 0.86209333 8.60018158 2.66666698 0.86209333 8.60018158
		 3.33333349 0.66322649 8.78298664 2.66666698 0.66322649 8.78298664 3.33333349 0.38618085 9
		 2.66666698 0.38618085 9 2.66666698 0.20600909 9 3.33333349 0.20600909 9;
	setAttr -s 106 ".ed[0:105]"  0 19 0 1 18 0 2 20 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 31 0 6 32 0 14 33 0 4 34 0 12 35 0 8 36 0 10 37 0 18 38 0 0 29 0 20 30 0
		 21 17 0 20 21 0 22 7 0 21 22 0 23 15 0 22 23 0 24 5 0 23 24 0 25 13 0 24 25 0 26 9 0
		 25 26 0 27 11 0 26 27 0 28 19 0 27 28 0 29 39 0 28 29 0 30 3 0 30 31 0 31 32 0 32 33 0
		 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 39 1 0 38 39 0 30 40 0 31 41 1 40 41 0 20 42 0
		 42 40 0 21 43 1 42 43 0 41 43 0 32 44 1 41 44 0 22 45 1 43 45 0 44 45 0 33 46 1 44 46 0
		 23 47 1 45 47 0 46 47 0 34 48 1 46 48 0 24 49 1 47 49 0 48 49 0 35 50 1 48 50 0 25 51 1
		 49 51 0 50 51 0 36 52 1 50 52 0 26 53 1 51 53 0 52 53 0 37 54 1 52 54 0 27 55 1 53 55 0
		 54 55 0 38 56 1 54 56 0 28 57 1 55 57 0 56 57 0 29 58 0 39 59 0 58 59 0 56 59 0 57 58 0;
	setAttr -s 47 -ch 188 ".fc[0:46]" -type "polyFaces" 
		f 4 56 1 26 57
		mu 0 4 39 1 18 38
		f 4 3 21 51 -23
		mu 0 4 4 14 33 34
		f 4 5 19 49 -21
		mu 0 4 6 16 31 32
		f 4 7 23 53 -25
		mu 0 4 8 12 35 36
		f 4 9 24 54 -26
		mu 0 4 10 8 36 37
		f 4 11 22 52 -24
		mu 0 4 12 4 34 35
		f 4 13 20 50 -22
		mu 0 4 14 6 32 33
		f 4 15 -48 48 -20
		mu 0 4 16 3 30 31
		f 4 17 25 55 -27
		mu 0 4 18 10 37 38
		f 4 -31 -3 -17 -30
		mu 0 4 21 20 2 17
		f 4 -33 29 -7 -32
		mu 0 4 22 21 17 7
		f 4 -35 31 -15 -34
		mu 0 4 23 22 7 15
		f 4 -37 33 -5 -36
		mu 0 4 24 23 15 5
		f 4 -39 35 -13 -38
		mu 0 4 25 24 5 13
		f 4 -41 37 -9 -40
		mu 0 4 26 25 13 9
		f 4 -43 39 -11 -42
		mu 0 4 27 26 9 11
		f 4 -45 41 -19 -44
		mu 0 4 28 27 11 19
		f 4 27 -47 43 -1
		mu 0 4 0 29 28 19
		f 4 -61 -63 64 -66
		mu 0 4 40 41 42 43
		f 4 -68 65 69 -71
		mu 0 4 44 40 43 45
		f 4 -73 70 74 -76
		mu 0 4 46 44 45 47
		f 4 -78 75 79 -81
		mu 0 4 48 46 47 49
		f 4 -83 80 84 -86
		mu 0 4 50 48 49 51
		f 4 -88 85 89 -91
		mu 0 4 52 50 51 53
		f 4 -93 90 94 -96
		mu 0 4 54 52 53 55
		f 4 -98 95 99 -101
		mu 0 4 56 54 55 57
		f 4 103 -105 100 105
		mu 0 4 58 59 56 57
		f 4 -49 58 60 -60
		mu 0 4 31 30 41 40
		f 4 -29 61 62 -59
		mu 0 4 30 20 42 41
		f 4 30 63 -65 -62
		mu 0 4 20 21 43 42
		f 4 -50 59 67 -67
		mu 0 4 32 31 40 44
		f 4 32 68 -70 -64
		mu 0 4 21 22 45 43
		f 4 -51 66 72 -72
		mu 0 4 33 32 44 46
		f 4 34 73 -75 -69
		mu 0 4 22 23 47 45
		f 4 -52 71 77 -77
		mu 0 4 34 33 46 48
		f 4 36 78 -80 -74
		mu 0 4 23 24 49 47
		f 4 -53 76 82 -82
		mu 0 4 35 34 48 50
		f 4 38 83 -85 -79
		mu 0 4 24 25 51 49
		f 4 -54 81 87 -87
		mu 0 4 36 35 50 52
		f 4 40 88 -90 -84
		mu 0 4 25 26 53 51
		f 4 -55 86 92 -92
		mu 0 4 37 36 52 54
		f 4 42 93 -95 -89
		mu 0 4 26 27 55 53
		f 4 -56 91 97 -97
		mu 0 4 38 37 54 56
		f 4 44 98 -100 -94
		mu 0 4 27 28 57 55
		f 4 45 102 -104 -102
		mu 0 4 29 39 59 58
		f 4 -58 96 104 -103
		mu 0 4 39 38 56 59
		f 4 46 101 -106 -99
		mu 0 4 28 29 58 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard_middle";
	rename -uid "F03BD3C7-4837-3E07-81F7-5781CE4D261E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard";
	rename -uid "BAF7A275-40F9-A2D6-85D2-61A85EA33CD9";
	setAttr ".rp" -type "double3" 0 1 9 ;
	setAttr ".sp" -type "double3" 0 1 9 ;
createNode mesh -n "Stairs_GuardShape" -p "Stairs_Guard";
	rename -uid "0EB31118-4CF6-438D-3BF4-A88AE72F1AFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33333337306976318 0.9375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  1 0 9 1 2 7 1 1 7.75 1 1.5 7.25 1 0.5 8.25
		 1 0.5 8.75 1 1 8.25 1 1.5 7.75 1 2 7.25 1 0 8.75 -0.33333313 2 7 -0.33333313 2 7.25
		 -0.33333313 1.5 7.25 -0.33333313 1.5 7.75 -0.33333328 1 7.75 -0.33333313 1 8.25 -0.33333313 0.5 8.25
		 -0.33333313 0.5 8.75 -0.33333313 0 8.75 -0.33333313 0 9 0.33333343 2 7 0.33333343 2 7.25
		 0.33333343 1.5 7.25 0.33333343 1.5 7.75 0.33333343 1 7.75 0.33333343 1 8.25 0.33333343 0.5 8.25
		 0.33333343 0.5 8.75 0.33333343 0 8.75 0.33333343 0 9 0.33333343 2.44907331 7 0.33333343 2.10300469 7.35300398
		 -0.33333313 2.44907331 7 -0.33333313 2.10300469 7.35300398 0.33333343 1.76411104 7.69887209
		 -0.33333313 1.76411104 7.69887209 0.33333343 1.60300457 7.85300398 -0.33333313 1.60300457 7.85300398
		 0.33333343 1.26411092 8.19887161 -0.33333313 1.26411092 8.19887161 0.33333343 1.10300457 8.35300446
		 -0.33333313 1.10300457 8.35300446 0.33333343 0.86209333 8.60018158 -0.33333313 0.86209333 8.60018158
		 0.33333343 0.66322649 8.78298664 -0.33333313 0.66322649 8.78298664 0.33333343 0.38618085 9
		 -0.33333313 0.38618085 9 -0.33333313 0.20600909 9 0.33333343 0.20600909 9 -0.33333313 1.5 7
		 -0.33333328 1 7.25 -0.33333313 1 7 -0.33333337 0.5 7.75 -0.33333337 0.5 7.25 -0.33333313 0.5 7
		 -0.33333313 0 8.25 -0.33333343 0 7.75 -0.33333343 0 7.25 -0.33333313 0 7;
	setAttr -s 107 ".ed[0:106]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0 10 50 0 50 12 0 12 51 0 51 14 1 50 52 0 52 51 0 14 53 0 53 16 1 51 54 0
		 54 53 0 52 55 0 55 54 0 16 56 0 56 18 0 53 57 0 57 56 0 54 58 0 58 57 0 55 59 0 59 58 0;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47
		f 4 -19 87 88 -20
		mu 0 4 50 51 52 53
		f 4 -21 89 90 -22
		mu 0 4 54 55 56 57
		f 4 -89 91 92 -90
		mu 0 4 58 59 60 61
		f 4 -23 93 94 -24
		mu 0 4 62 63 64 65
		f 4 -91 95 96 -94
		mu 0 4 66 67 68 69
		f 4 -93 97 98 -96
		mu 0 4 70 71 72 73
		f 4 -25 99 100 -26
		mu 0 4 74 75 76 77
		f 4 -95 101 102 -100
		mu 0 4 78 79 80 81
		f 4 -97 103 104 -102
		mu 0 4 82 83 84 85
		f 4 -99 105 106 -104
		mu 0 4 86 87 88 89;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard";
	rename -uid "3F3259AB-4790-27FF-A3D1-80A21B7DD0C3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_Guard";
	rename -uid "33E898B4-4A02-732C-5426-40999A7D5BCB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard_Top";
	rename -uid "ECD88022-4867-1682-BE19-97972DA657D9";
	setAttr ".rp" -type "double3" -2 1 9 ;
	setAttr ".sp" -type "double3" -2 1 9 ;
createNode mesh -n "Stairs_Guard_TopShape" -p "Stairs_Guard_Top";
	rename -uid "2ACA2D2A-45AD-4102-E257-43A73B7F5D4D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666668653488159 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 67 ".vt[0:66]"  -1 0 9 -1 2 7 -1 1 7.75 -1 1.5 7.25 -1 0.5 8.25
		 -1 0.5 8.75 -1 1 8.25 -1 1.5 7.75 -1 2 7.25 -1 0 8.75 -2.33333302 2 7 -2.33333302 2 7.25
		 -2.33333302 1.5 7.25 -2.33333302 1.5 7.75 -2.33333302 1 7.75 -2.33333302 1 8.25 -2.33333302 0.5 8.25
		 -2.33333302 0.5 8.75 -2.33333302 0 8.75 -2.33333302 0 9 -1.66666651 2 7 -1.66666651 2 7.25
		 -1.66666651 1.5 7.25 -1.66666651 1.5 7.75 -1.66666651 1 7.75 -1.66666651 1 8.25 -1.66666651 0.5 8.25
		 -1.66666651 0.5 8.75 -1.66666651 0 8.75 -1.66666651 0 9 -1.66666651 2.1432426 7.1384325
		 -1.66666651 2.10300469 7.35300398 -2.33333302 2.1432426 7.1384325 -2.33333302 2.10300469 7.35300398
		 -1.66666651 1.76411104 7.69887209 -2.33333302 1.76411104 7.69887209 -1.66666651 1.60300457 7.85300398
		 -2.33333302 1.60300457 7.85300398 -1.66666651 1.26411092 8.19887161 -2.33333302 1.26411092 8.19887161
		 -1.66666651 1.10300457 8.35300446 -2.33333302 1.10300457 8.35300446 -1.66666651 0.86209333 8.60018158
		 -2.33333302 0.86209333 8.60018158 -1.66666651 0.66322649 8.78298664 -2.33333302 0.66322649 8.78298664
		 -1.66666651 0.38618085 9 -2.33333302 0.38618085 9 -2.33333302 0.20600909 9 -1.66666651 0.20600909 9
		 -2.33333302 1.5 7 -2.33333302 1 7.25 -2.33333302 1 7 -2.33333302 0.5 7.75 -2.33333302 0.5 7.25
		 -2.33333302 0.5 7 -2.33333302 0 8.25 -2.33333302 0 7.75 -2.33333302 0 7.25 -2.33333302 0 7
		 -2.33333302 2 6 -1.66666651 2 6 -1 2 6 -2.33333302 1.5 6 -2.33333302 1 6 -2.33333302 0.5 6
		 -2.33333302 0 6;
	setAttr -s 120 ".ed[0:119]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0 10 50 0 50 12 1 12 51 0 51 14 1 50 52 0 52 51 1 14 53 0 53 16 1 51 54 0
		 54 53 1 52 55 0 55 54 1 16 56 0 56 18 0 53 57 0 57 56 0 54 58 0 58 57 0 55 59 0 59 58 0
		 10 60 0 20 61 0 60 61 0 1 62 0 61 62 0 60 63 0 50 63 0 63 64 0 52 64 0 64 65 0 55 65 0
		 65 66 0 59 66 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47
		f 4 -19 87 88 -20
		mu 0 4 50 51 52 53
		f 4 -21 89 90 -22
		mu 0 4 54 55 56 57
		f 4 -89 91 92 -90
		mu 0 4 58 59 60 61
		f 4 -23 93 94 -24
		mu 0 4 62 63 64 65
		f 4 -91 95 96 -94
		mu 0 4 66 67 68 69
		f 4 -93 97 98 -96
		mu 0 4 70 71 72 73
		f 4 -25 99 100 -26
		mu 0 4 74 75 76 77
		f 4 -95 101 102 -100
		mu 0 4 78 79 80 81
		f 4 -97 103 104 -102
		mu 0 4 82 83 84 85
		f 4 -99 105 106 -104
		mu 0 4 86 87 88 89
		f 4 17 108 -110 -108
		mu 0 4 90 91 92 93
		f 4 28 110 -112 -109
		mu 0 4 94 95 96 97
		f 4 107 112 -114 -88
		mu 0 4 98 99 100 101
		f 4 113 114 -116 -92
		mu 0 4 102 103 104 105
		f 4 115 116 -118 -98
		mu 0 4 106 107 108 109
		f 4 117 118 -120 -106
		mu 0 4 110 111 112 113;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard_Top";
	rename -uid "C2F8E546-403F-8C73-3235-FB98245B1CB1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_Guard_Top";
	rename -uid "7D1DCBB5-464A-7DFC-350B-E787EA827540";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape31" -p "Stairs_Guard_Top";
	rename -uid "58B97DBA-4803-AB07-3822-AD8DAC724915";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33333337306976318 0.9375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  1 0 -1 1 2 -3 1 1 -2.25 1 1.5 -2.75 1 0.5 -1.75
		 1 0.5 -1.25 1 1 -1.75 1 1.5 -2.25 1 2 -2.75 1 0 -1.25 -0.33333313 2 -3 -0.33333313 2 -2.75
		 -0.33333313 1.5 -2.75 -0.33333313 1.5 -2.25 -0.33333313 1 -2.25 -0.33333313 1 -1.75
		 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25 -0.33333313 0 -1.25 -0.33333313 0 -1
		 0.33333343 2 -3 0.33333343 2 -2.75 0.33333343 1.5 -2.75 0.33333343 1.5 -2.25 0.33333343 1 -2.25
		 0.33333343 1 -1.75 0.33333343 0.5 -1.75 0.33333343 0.5 -1.25 0.33333343 0 -1.25 0.33333343 0 -1
		 0.33333343 2.44907331 -3 0.33333343 2.10300469 -2.64699554 -0.33333313 2.44907331 -3
		 -0.33333313 2.10300469 -2.64699554 0.33333343 1.76411104 -2.30112815 -0.33333313 1.76411104 -2.30112815
		 0.33333343 1.60300457 -2.14699554 -0.33333313 1.60300457 -2.14699554 0.33333343 1.26411092 -1.80112827
		 -0.33333313 1.26411092 -1.80112827 0.33333343 1.10300457 -1.64699554 -0.33333313 1.10300457 -1.64699554
		 0.33333343 0.86209333 -1.39981806 -0.33333313 0.86209333 -1.39981806 0.33333343 0.66322649 -1.21701348
		 -0.33333313 0.66322649 -1.21701348 0.33333343 0.38618085 -1 -0.33333313 0.38618085 -1
		 -0.33333313 0.20600909 -1.000000119209 0.33333343 0.20600909 -1.000000119209;
	setAttr -s 87 ".ed[0:86]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_SideFill";
	rename -uid "2BECC948-40A4-14C1-8CD1-B2A35367599B";
	setAttr ".rp" -type "double3" 0 1 7 ;
	setAttr ".sp" -type "double3" 0 1 7 ;
createNode mesh -n "Stairs_SideFillShape" -p "Stairs_SideFill";
	rename -uid "DCAEA248-48BA-E5C2-9DD5-B5A4F6AF2291";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666668653488159 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.33333251 2 7 -0.33333251 2.44907331 7
		 -0.33333251 1.5 7 -0.33333251 1 7 -0.33333251 0.5 7 -0.33333251 0 7 -0.33333251 2 5
		 -0.33333251 2.44907331 5 -0.33333251 1.5 5 -0.33333251 1 5 -0.33333251 0.5 5 -0.33333251 0 5;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 2 3 0 3 4 0 4 5 0 0 6 0 1 7 0
		 6 7 0 2 8 0 6 8 0 3 9 0 8 9 0 4 10 0 9 10 0 5 11 0 10 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 6 -8 -6
		mu 0 4 0 1 2 3
		f 4 -2 5 9 -9
		mu 0 4 4 5 6 7
		f 4 -3 8 11 -11
		mu 0 4 8 9 10 11
		f 4 -4 10 13 -13
		mu 0 4 12 13 14 15
		f 4 -5 12 15 -15
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_SideFill";
	rename -uid "3D33E50B-4068-72B5-C5CD-BFB3F3BA722C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_SideFill";
	rename -uid "3D90176D-4850-7B3F-2B10-17BC1BEC07B4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape31" -p "Stairs_SideFill";
	rename -uid "1F9C44C2-4AFF-F7E5-A984-D0BC19BB7081";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33333337306976318 0.9375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  1 0 -1 1 2 -3 1 1 -2.25 1 1.5 -2.75 1 0.5 -1.75
		 1 0.5 -1.25 1 1 -1.75 1 1.5 -2.25 1 2 -2.75 1 0 -1.25 -0.33333313 2 -3 -0.33333313 2 -2.75
		 -0.33333313 1.5 -2.75 -0.33333313 1.5 -2.25 -0.33333313 1 -2.25 -0.33333313 1 -1.75
		 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25 -0.33333313 0 -1.25 -0.33333313 0 -1
		 0.33333343 2 -3 0.33333343 2 -2.75 0.33333343 1.5 -2.75 0.33333343 1.5 -2.25 0.33333343 1 -2.25
		 0.33333343 1 -1.75 0.33333343 0.5 -1.75 0.33333343 0.5 -1.25 0.33333343 0 -1.25 0.33333343 0 -1
		 0.33333343 2.44907331 -3 0.33333343 2.10300469 -2.64699554 -0.33333313 2.44907331 -3
		 -0.33333313 2.10300469 -2.64699554 0.33333343 1.76411104 -2.30112815 -0.33333313 1.76411104 -2.30112815
		 0.33333343 1.60300457 -2.14699554 -0.33333313 1.60300457 -2.14699554 0.33333343 1.26411092 -1.80112827
		 -0.33333313 1.26411092 -1.80112827 0.33333343 1.10300457 -1.64699554 -0.33333313 1.10300457 -1.64699554
		 0.33333343 0.86209333 -1.39981806 -0.33333313 0.86209333 -1.39981806 0.33333343 0.66322649 -1.21701348
		 -0.33333313 0.66322649 -1.21701348 0.33333343 0.38618085 -1 -0.33333313 0.38618085 -1
		 -0.33333313 0.20600909 -1.000000119209 0.33333343 0.20600909 -1.000000119209;
	setAttr -s 87 ".ed[0:86]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_full_top";
	rename -uid "9B0A2C14-4E63-9846-ED80-82AA14529B22";
	setAttr ".rp" -type "double3" 8 1 9 ;
	setAttr ".sp" -type "double3" 8 1 9 ;
createNode mesh -n "Stairs_full_topShape" -p "Stairs_full_top";
	rename -uid "F3F7C291-43A2-A65D-77B3-6EBEABF2222E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  7 0 9 9 0 9 7 2 7 9 2 7 9 1 7.75 7 1 7.75
		 9 1.5 7.25 7 1.5 7.25 9 0.5 8.25 7 0.5 8.25 9 0.5 8.75 7 0.5 8.75 9 1 8.25 7 1 8.25
		 9 1.5 7.75 7 1.5 7.75 9 2 7.25 7 2 7.25 9 0 8.75 7 0 8.75 7 2 6 9 2 6;
	setAttr -s 31 ".ed[0:30]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0 2 20 0 3 21 0
		 20 21 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19
		f 4 2 29 -31 -29
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_full_top";
	rename -uid "45BF3523-4AFC-319B-4EB3-408892DDAF6D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Alt";
	rename -uid "59358958-4191-0CEF-7454-268A5442424E";
	setAttr ".rp" -type "double3" 0 0 2 ;
	setAttr ".sp" -type "double3" 0 0 2 ;
createNode mesh -n "Floor_AltShape" -p "Floor_Alt";
	rename -uid "BC7FA3B1-4285-4098-B22A-488B32709B48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 0 2.5 0.5 0 2.5 -0.5 
		0 1.5 0.5 0 1.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_half";
	rename -uid "0949B4A9-44EB-9321-35AA-C3866ED9CA30";
	setAttr ".rp" -type "double3" 2 0 0 ;
	setAttr ".sp" -type "double3" 2 0 0 ;
createNode mesh -n "Floor_halfShape" -p "Floor_half";
	rename -uid "55E02383-4C8F-0A17-7191-C2AAB59507F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 1 0.5 0 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 -1.110223e-16 1 3 -1.110223e-16 1 3 0 0
		 1 0 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 3 0 1 2 0 2 3 1;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Floor_Alt_Half";
	rename -uid "F61B048A-42C3-4D72-C730-1AA7EC9FB34D";
	setAttr ".rp" -type "double3" 2 0 2 ;
	setAttr ".sp" -type "double3" 2 0 2 ;
createNode mesh -n "Floor_Alt_HalfShape" -p "Floor_Alt_Half";
	rename -uid "2103BF85-4A70-597C-FBC1-1F8FC67E094A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 1 0.5 0 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  1 -1.110223e-16 3 3 -1.110223e-16 3 3 0 2
		 1 0 2;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 3 0 1 2 0 2 3 1;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 3 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard_middle2";
	rename -uid "01AFD9C1-4C54-D5D2-8638-6A936B2EF253";
	setAttr ".rp" -type "double3" 3 1 12 ;
	setAttr ".sp" -type "double3" 3 1 12 ;
createNode mesh -n "Stairs_Guard_middle2Shape" -p "Stairs_Guard_middle2";
	rename -uid "24424CC1-4E32-E03B-E3F4-A6AB6DE0D33C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0 0 1 0 1 0.5 0 0.5
		 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.0625 0 0.0625 0.33333337 0.5 0.33333337
		 0.375 0.33333337 0.25 0.33333337 0.125 0.33333337 0.0625 0.33333337 0 0.66666669
		 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125 0.66666669 0.0625 0.66666669
		 0 0.66666669 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25
		 0.33333337 0.25 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625
		 0.33333337 0 0.66666669 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  3 0 13 3 0 13 3 0 13.25 3 
		0 13.25 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13.25 3 0 13 
		3 0 13 3 0 13 3 0 13 3 0 13 3 0 13.25 3 0 13 3 0 13 3 0 13 3 0 13 3 0 13 3 0.18890706 
		12.794422 3 0.18890706 12.794422 3 0.0066694738 12.968304 3 0.0066694738 12.968304 
		3 1.1920929e-09 12.977038 3 1.1920929e-09 12.977038 3 0.0031723941 12.985473 3 0.0031723941 
		12.985473 3 0.059792206 13 3 0.059792206 13 3 0 13 3 0 13;
	setAttr -s 36 ".vt[0:35]"  -1 0 -1 1 0 -1 1 1 -2.25 -1 1 -2.25 1 0.5 -1.75
		 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75 -1 1 -1.75 1 0 -1.25 -1 0 -1.25 -0.33333313 1 -2.25
		 -0.33333313 1 -1.75 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25 -0.33333313 0 -1.25
		 -0.33333313 0 -1 0.33333343 1 -2.25 0.33333343 1 -1.75 0.33333343 0.5 -1.75 0.33333343 0.5 -1.25
		 0.33333343 0 -1.25 0.33333343 0 -1 0.33333343 1.26411092 -1.80112827 -0.33333313 1.26411092 -1.80112827
		 0.33333343 1.10300457 -1.64699554 -0.33333313 1.10300457 -1.64699554 0.33333343 0.86209333 -1.39981806
		 -0.33333313 0.86209333 -1.39981806 0.33333343 0.66322649 -1.21701348 -0.33333313 0.66322649 -1.21701348
		 0.33333343 0.38618085 -1 -0.33333313 0.38618085 -1 -0.33333313 0.20600909 -1.000000119209
		 0.33333343 0.20600909 -1.000000119209;
	setAttr -s 61 ".ed[0:60]"  0 11 0 1 10 0 4 8 0 5 9 0 6 4 0 7 5 0 8 2 0
		 9 3 0 10 6 0 11 7 0 2 18 0 8 19 0 4 20 0 6 21 0 10 22 0 0 17 0 12 3 0 13 9 0 12 13 0
		 14 5 0 13 14 0 15 7 0 14 15 0 16 11 0 15 16 0 17 23 0 16 17 0 18 19 0 19 20 0 20 21 0
		 21 22 0 23 1 0 22 23 0 18 24 0 12 25 0 24 25 0 19 26 1 24 26 0 13 27 1 25 27 0 26 27 0
		 20 28 1 26 28 0 14 29 1 27 29 0 28 29 0 21 30 1 28 30 0 15 31 1 29 31 0 30 31 0 22 32 1
		 30 32 0 16 33 1 31 33 0 32 33 0 17 34 0 23 35 0 34 35 0 32 35 0 33 34 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 31 1 14 32
		mu 0 4 23 1 10 22
		f 4 2 11 28 -13
		mu 0 4 4 8 19 20
		f 4 4 12 29 -14
		mu 0 4 6 4 20 21
		f 4 6 10 27 -12
		mu 0 4 8 2 18 19
		f 4 8 13 30 -15
		mu 0 4 10 6 21 22
		f 4 -19 16 -8 -18
		mu 0 4 13 12 3 9
		f 4 -21 17 -4 -20
		mu 0 4 14 13 9 5
		f 4 -23 19 -6 -22
		mu 0 4 15 14 5 7
		f 4 -25 21 -10 -24
		mu 0 4 16 15 7 11
		f 4 15 -27 23 -1
		mu 0 4 0 17 16 11
		f 4 -38 35 39 -41
		mu 0 4 26 24 25 27
		f 4 -43 40 44 -46
		mu 0 4 28 26 27 29
		f 4 -48 45 49 -51
		mu 0 4 30 28 29 31
		f 4 -53 50 54 -56
		mu 0 4 32 30 31 33
		f 4 58 -60 55 60
		mu 0 4 34 35 32 33
		f 4 -28 33 37 -37
		mu 0 4 19 18 24 26
		f 4 18 38 -40 -35
		mu 0 4 12 13 27 25
		f 4 -29 36 42 -42
		mu 0 4 20 19 26 28
		f 4 20 43 -45 -39
		mu 0 4 13 14 29 27
		f 4 -30 41 47 -47
		mu 0 4 21 20 28 30
		f 4 22 48 -50 -44
		mu 0 4 14 15 31 29
		f 4 -31 46 52 -52
		mu 0 4 22 21 30 32
		f 4 24 53 -55 -49
		mu 0 4 15 16 33 31
		f 4 25 57 -59 -57
		mu 0 4 17 23 35 34
		f 4 -33 51 59 -58
		mu 0 4 23 22 32 35
		f 4 26 56 -61 -54
		mu 0 4 16 17 34 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard_middle2";
	rename -uid "1F400F88-4B95-D90E-0303-1EA415DEE39F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_Guard_middle2";
	rename -uid "27043973-447A-D224-F55D-898D383A0EA6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard_middle3";
	rename -uid "891AE696-4EC0-C8C5-57C4-F8903C626E8A";
	setAttr ".rp" -type "double3" 0 1 12 ;
	setAttr ".sp" -type "double3" 0 1 12 ;
createNode mesh -n "Stairs_Guard_middle3Shape" -p "Stairs_Guard_middle3";
	rename -uid "91C5A856-4F44-DCF9-FD1E-DBA83492A0B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 1 0 1 0.5 1 0.25
		 1 0.125 1 0.375 1 0.0625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25
		 0.66666669 0.125 0.66666669 0.0625 0.66666669 0 0.66666669 0.5 0.33333337 0.5 0.66666669
		 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25 0.66666669 0.125 0.33333337
		 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337 0 0.66666669 0 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 33 ".vt[0:32]"  1 0 12 1 1 11 1 0.5 11.25 1 0.5 11.75 1 1 11.25
		 1 0 11.75 -0.33333313 1 11 -0.33333313 1 11.25 -0.33333313 0.50000006 11.25 -0.33333313 0.5 11.75
		 -0.33333313 -7.6293944e-08 11.75 -0.33333313 0 12 0.33333343 1 11 0.33333343 1 11.25
		 0.33333343 0.5 11.25 0.33333343 0.5 11.75 0.33333343 0 11.75 0.33333343 0 12 0.33333343 1.45301783 10.99329472
		 -0.33333313 1.45301783 10.99329472 0.33333343 1.10967398 11.32130814 -0.33333313 1.10967398 11.32130814
		 0.33333343 0.86209333 11.57722092 -0.33333313 0.86209333 11.57722092 0.33333343 0.66639882 11.76845837
		 -0.33333313 0.66639882 11.76845837 0.33333343 0.44597304 12 -0.33333313 0.44597304 12
		 -0.33333313 0.20600909 12 0.33333343 0.20600909 12 -0.33333313 0.50000012 11 -0.33333313 -9.5367433e-08 11.25
		 -0.33333313 -3.8146972e-08 11;
	setAttr -s 56 ".ed[0:55]"  0 5 0 2 4 0 3 2 0 4 1 0 5 3 0 1 12 0 4 13 0
		 2 14 0 3 15 0 5 16 0 6 7 0 7 8 0 8 9 0 9 10 0 11 17 0 10 11 0 12 13 0 13 14 0 14 15 0
		 15 16 0 17 0 0 16 17 0 12 18 0 6 19 0 18 19 0 13 20 1 18 20 0 7 21 1 19 21 0 20 21 0
		 14 22 1 20 22 0 8 23 1 21 23 0 22 23 0 15 24 1 22 24 0 9 25 1 23 25 0 24 25 0 16 26 1
		 24 26 0 10 27 1 25 27 0 26 27 0 11 28 0 17 29 0 28 29 0 26 29 0 27 28 0 6 30 0 30 8 0
		 8 31 1 31 10 0 30 32 0 32 31 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 20 0 9 21
		mu 0 4 17 0 5 16
		f 4 1 6 17 -8
		mu 0 4 2 4 13 14
		f 4 2 7 18 -9
		mu 0 4 3 2 14 15
		f 4 3 5 16 -7
		mu 0 4 4 1 12 13
		f 4 4 8 19 -10
		mu 0 4 5 3 15 16
		f 4 -27 24 28 -30
		mu 0 4 20 18 19 21
		f 4 -32 29 33 -35
		mu 0 4 22 20 21 23
		f 4 -37 34 38 -40
		mu 0 4 24 22 23 25
		f 4 -42 39 43 -45
		mu 0 4 26 24 25 27
		f 4 47 -49 44 49
		mu 0 4 28 29 26 27
		f 4 -17 22 26 -26
		mu 0 4 13 12 18 20
		f 4 10 27 -29 -24
		mu 0 4 6 7 21 19
		f 4 -18 25 31 -31
		mu 0 4 14 13 20 22
		f 4 11 32 -34 -28
		mu 0 4 7 8 23 21
		f 4 -19 30 36 -36
		mu 0 4 15 14 22 24
		f 4 12 37 -39 -33
		mu 0 4 8 9 25 23
		f 4 -20 35 41 -41
		mu 0 4 16 15 24 26
		f 4 13 42 -44 -38
		mu 0 4 9 10 27 25
		f 4 14 46 -48 -46
		mu 0 4 11 17 29 28
		f 4 -22 40 48 -47
		mu 0 4 17 16 26 29
		f 4 15 45 -50 -43
		mu 0 4 10 11 28 27
		f 4 -11 50 51 -12
		mu 0 4 30 31 32 33
		f 4 -13 52 53 -14
		mu 0 4 34 35 36 37
		f 4 -52 54 55 -53
		mu 0 4 38 39 40 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard_middle3";
	rename -uid "CF6F5557-4536-8DAB-321B-F49EA710DDA9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_Guard_middle3";
	rename -uid "563123BF-4790-139B-34C5-6FA7ABDBE789";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_Guard_Top1";
	rename -uid "B6E8868B-4B72-FAC3-6484-3E83EFB0413C";
	setAttr ".rp" -type "double3" -2 1 12 ;
	setAttr ".sp" -type "double3" -2 1 12 ;
createNode mesh -n "Stairs_Guard_Top1Shape" -p "Stairs_Guard_Top1";
	rename -uid "12ED80BE-4216-1648-F5E6-039E038EAC28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 1 0 1 0.5 1 0.25
		 1 0.125 1 0.375 1 0.0625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25
		 0.66666669 0.125 0.66666669 0.0625 0.66666669 0 0.66666669 0.5 0.33333337 0.5 0.66666669
		 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25 0.66666669 0.125 0.33333337
		 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337 0 0.66666669 0 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[8]" -type "float3" 0 7.6293944e-08 0 ;
	setAttr ".pt[31]" -type "float3" 0 -3.8146972e-08 0 ;
	setAttr -s 38 ".vt[0:37]"  -1 0 12 -1 1 11 -1 0.5 11.25 -1 0.5 11.75
		 -1 1 11.25 -1 0 11.75 -2.33333302 1 11 -2.33333302 1 11.25 -2.33333302 0.50000018 11.25
		 -2.33333302 0.5 11.75 -2.33333302 -7.6293944e-08 11.75 -2.33333302 0 12 -1.66666651 1 11
		 -1.66666651 1 11.25 -1.66666651 0.5 11.25 -1.66666651 0.5 11.75 -1.66666651 0 11.75
		 -1.66666651 0 12 -1.66666651 1.15572858 11.11403275 -2.33333302 1.15572858 11.11403275
		 -1.66666651 1.10967398 11.32130814 -2.33333302 1.10967398 11.32130814 -1.66666651 0.86209333 11.57722092
		 -2.33333302 0.86209333 11.57722092 -1.66666651 0.66639882 11.76845837 -2.33333302 0.66639882 11.76845837
		 -1.66666651 0.44597304 12 -2.33333302 0.44597304 12 -2.33333302 0.20600909 12 -1.66666651 0.20600909 12
		 -2.33333302 0.50000012 11 -2.33333302 -1.335144e-07 11.25 -2.33333302 -3.8146972e-08 11
		 -1 1 10 -1.66666651 1 10 -2.33333302 1 10 -2.33333302 0.50000012 10 -2.33333302 -3.8146972e-08 10;
	setAttr -s 66 ".ed[0:65]"  0 5 0 2 4 0 3 2 0 4 1 0 5 3 0 1 12 0 4 13 0
		 2 14 0 3 15 0 5 16 0 6 7 0 7 8 0 8 9 0 9 10 0 11 17 0 10 11 0 12 13 0 13 14 0 14 15 0
		 15 16 0 17 0 0 16 17 0 12 18 0 6 19 0 18 19 0 13 20 1 18 20 0 7 21 1 19 21 0 20 21 0
		 14 22 1 20 22 0 8 23 1 21 23 0 22 23 0 15 24 1 22 24 0 9 25 1 23 25 0 24 25 0 16 26 1
		 24 26 0 10 27 1 25 27 0 26 27 0 11 28 0 17 29 0 28 29 0 26 29 0 27 28 0 6 30 0 30 8 0
		 8 31 0 31 10 0 30 32 0 32 31 0 12 6 0 1 33 0 12 34 0 33 34 0 6 35 0 34 35 0 35 36 0
		 30 36 0 36 37 0 32 37 0;
	setAttr -s 29 -ch 116 ".fc[0:28]" -type "polyFaces" 
		f 4 20 0 9 21
		mu 0 4 17 0 5 16
		f 4 1 6 17 -8
		mu 0 4 2 4 13 14
		f 4 2 7 18 -9
		mu 0 4 3 2 14 15
		f 4 3 5 16 -7
		mu 0 4 4 1 12 13
		f 4 4 8 19 -10
		mu 0 4 5 3 15 16
		f 4 -27 24 28 -30
		mu 0 4 20 18 19 21
		f 4 -32 29 33 -35
		mu 0 4 22 20 21 23
		f 4 -37 34 38 -40
		mu 0 4 24 22 23 25
		f 4 -42 39 43 -45
		mu 0 4 26 24 25 27
		f 4 47 -49 44 49
		mu 0 4 28 29 26 27
		f 4 -17 22 26 -26
		mu 0 4 13 12 18 20
		f 4 10 27 -29 -24
		mu 0 4 6 7 21 19
		f 4 -18 25 31 -31
		mu 0 4 14 13 20 22
		f 4 11 32 -34 -28
		mu 0 4 7 8 23 21
		f 4 -19 30 36 -36
		mu 0 4 15 14 22 24
		f 4 12 37 -39 -33
		mu 0 4 8 9 25 23
		f 4 -20 35 41 -41
		mu 0 4 16 15 24 26
		f 4 13 42 -44 -38
		mu 0 4 9 10 27 25
		f 4 14 46 -48 -46
		mu 0 4 11 17 29 28
		f 4 -22 40 48 -47
		mu 0 4 17 16 26 29
		f 4 15 45 -50 -43
		mu 0 4 10 11 28 27
		f 4 -11 50 51 -12
		mu 0 4 30 31 32 33
		f 4 -13 52 53 -14
		mu 0 4 34 35 36 37
		f 4 -52 54 55 -53
		mu 0 4 38 39 40 41
		f 4 -23 56 23 -25
		mu 0 4 18 12 6 19
		f 4 -6 57 59 -59
		mu 0 4 42 43 44 45
		f 4 -57 58 61 -61
		mu 0 4 46 47 48 49
		f 4 60 62 -64 -51
		mu 0 4 50 51 52 53
		f 4 63 64 -66 -55
		mu 0 4 54 55 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_Guard_Top1";
	rename -uid "691F0023-4E83-DB0F-B189-3BAAB2D52C03";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_Guard_Top1";
	rename -uid "415AEE51-4C8A-5C92-F104-7FBA943FFE4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape36" -p "Stairs_Guard_Top1";
	rename -uid "3010BDA1-456B-1508-C458-39A9794FE6B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 1 0 1 0.5 1 0.25
		 1 0.125 1 0.375 1 0.0625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25
		 0.66666669 0.125 0.66666669 0.0625 0.66666669 0 0.66666669 0.5 0.33333337 0.5 0.66666669
		 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25 0.66666669 0.125 0.33333337
		 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337 0 0.66666669 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".vt[0:29]"  1 0 -1 1 1 -2 1 0.5 -1.75 1 0.5 -1.25 1 1 -1.75
		 1 0 -1.25 -0.33333313 1 -2 -0.33333313 1 -1.75 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25
		 -0.33333313 0 -1.25 -0.33333313 0 -1 0.33333343 1 -2 0.33333343 1 -1.75 0.33333343 0.5 -1.75
		 0.33333343 0.5 -1.25 0.33333343 0 -1.25 0.33333343 0 -1 0.33333343 1.45301783 -2.006705761
		 -0.33333313 1.45301783 -2.006705761 0.33333343 1.10967398 -1.67869186 -0.33333313 1.10967398 -1.67869186
		 0.33333343 0.86209333 -1.4227792 -0.33333313 0.86209333 -1.4227792 0.33333343 0.66639882 -1.23154151
		 -0.33333313 0.66639882 -1.23154151 0.33333343 0.44597304 -1 -0.33333313 0.44597304 -1
		 -0.33333313 0.20600909 -1.000000119209 0.33333343 0.20600909 -1.000000119209;
	setAttr -s 50 ".ed[0:49]"  0 5 0 2 4 0 3 2 0 4 1 0 5 3 0 1 12 0 4 13 0
		 2 14 0 3 15 0 5 16 0 6 7 0 7 8 0 8 9 0 9 10 0 11 17 0 10 11 0 12 13 0 13 14 0 14 15 0
		 15 16 0 17 0 0 16 17 0 12 18 0 6 19 0 18 19 0 13 20 1 18 20 0 7 21 1 19 21 0 20 21 0
		 14 22 1 20 22 0 8 23 1 21 23 0 22 23 0 15 24 1 22 24 0 9 25 1 23 25 0 24 25 0 16 26 1
		 24 26 0 10 27 1 25 27 0 26 27 0 11 28 0 17 29 0 28 29 0 26 29 0 27 28 0;
	setAttr -s 21 -ch 84 ".fc[0:20]" -type "polyFaces" 
		f 4 20 0 9 21
		mu 0 4 17 0 5 16
		f 4 1 6 17 -8
		mu 0 4 2 4 13 14
		f 4 2 7 18 -9
		mu 0 4 3 2 14 15
		f 4 3 5 16 -7
		mu 0 4 4 1 12 13
		f 4 4 8 19 -10
		mu 0 4 5 3 15 16
		f 4 -27 24 28 -30
		mu 0 4 20 18 19 21
		f 4 -32 29 33 -35
		mu 0 4 22 20 21 23
		f 4 -37 34 38 -40
		mu 0 4 24 22 23 25
		f 4 -42 39 43 -45
		mu 0 4 26 24 25 27
		f 4 47 -49 44 49
		mu 0 4 28 29 26 27
		f 4 -17 22 26 -26
		mu 0 4 13 12 18 20
		f 4 10 27 -29 -24
		mu 0 4 6 7 21 19
		f 4 -18 25 31 -31
		mu 0 4 14 13 20 22
		f 4 11 32 -34 -28
		mu 0 4 7 8 23 21
		f 4 -19 30 36 -36
		mu 0 4 15 14 22 24
		f 4 12 37 -39 -33
		mu 0 4 8 9 25 23
		f 4 -20 35 41 -41
		mu 0 4 16 15 24 26
		f 4 13 42 -44 -38
		mu 0 4 9 10 27 25
		f 4 14 46 -48 -46
		mu 0 4 11 17 29 28
		f 4 -22 40 48 -47
		mu 0 4 17 16 26 29
		f 4 15 45 -50 -43
		mu 0 4 10 11 28 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs_SideFill_Short";
	rename -uid "F760C912-43F9-DCB7-ED81-309411DF194E";
	setAttr ".rp" -type "double3" -3 1 7 ;
	setAttr ".sp" -type "double3" -3 1 7 ;
createNode mesh -n "Stairs_SideFill_ShortShape" -p "Stairs_SideFill_Short";
	rename -uid "A8FBAE6A-4281-2ED4-A19B-57AFA31548BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 1 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 1 0.5 0 0.5 0 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3.33333254 2 7 -3.33333254 2.44907331 7
		 -3.33333254 1.5 7 -3.33333254 1 7 -3.33333254 0.5 7 -3.33333254 0 7 -3.33333254 2.44907331 6
		 -3.33333254 2 6 -3.33333254 1.5 6 -3.33333254 1 6 -3.33333254 0.5 6 -3.33333254 0 6;
	setAttr -s 16 ".ed[0:15]"  0 1 0 0 2 0 2 3 0 3 4 0 4 5 0 0 7 0 1 6 0
		 2 8 0 3 9 0 4 10 0 5 11 0 6 7 1 7 8 1 8 9 1 9 10 1 10 11 1;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 6 11 -6
		mu 0 4 0 1 10 12
		f 4 -2 5 12 -8
		mu 0 4 2 3 11 14
		f 4 -3 7 13 -9
		mu 0 4 4 5 13 16
		f 4 -4 8 14 -10
		mu 0 4 6 7 15 18
		f 4 -5 9 15 -11
		mu 0 4 8 9 17 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "Stairs_SideFill_Short";
	rename -uid "ACBB0C66-405B-3FDE-CA6D-908E103BF09D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -2.5 0.5 2 -2.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape30" -p "Stairs_SideFill_Short";
	rename -uid "3B0AF2EB-4092-4848-7DB5-96A3A667A486";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 1 0 0 1 1 1 1
		 0.5 0 0.5 1 0.75 0 0.75 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.625 0 0.625
		 1 0.875 0 0.875 1 0.0625 0 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1 0 -1 1 0 -1 -1 2 -3 1 2 -3 1 1 -2.25 -1 1 -2.25
		 1 1.5 -2.75 -1 1.5 -2.75 1 0.5 -1.75 -1 0.5 -1.75 1 0.5 -1.25 -1 0.5 -1.25 1 1 -1.75
		 -1 1 -1.75 1 1.5 -2.25 -1 1.5 -2.25 1 2 -2.75 -1 2 -2.75 1 0 -1.25 -1 0 -1.25;
	setAttr -s 28 ".ed[0:27]"  0 19 0 1 18 0 2 3 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 12 0 9 13 0 10 8 0 11 9 0 12 4 0 13 5 0 14 6 0 15 7 0 16 3 0 17 2 0 18 10 0
		 19 11 0 16 17 0 6 7 0 14 15 0 4 5 0 12 13 0 8 9 0 10 11 0 18 19 0 0 1 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 27 1 26 -1
		mu 0 4 0 1 18 19
		f 4 3 21 -5 -23
		mu 0 4 4 14 15 5
		f 4 5 19 -7 -21
		mu 0 4 6 16 17 7
		f 4 7 23 -9 -25
		mu 0 4 8 12 13 9
		f 4 9 24 -11 -26
		mu 0 4 10 8 9 11
		f 4 11 22 -13 -24
		mu 0 4 12 4 5 13
		f 4 13 20 -15 -22
		mu 0 4 14 6 7 15
		f 4 15 -3 -17 -20
		mu 0 4 16 3 2 17
		f 4 17 25 -19 -27
		mu 0 4 18 10 11 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape31" -p "Stairs_SideFill_Short";
	rename -uid "A67FD9D0-43C2-EA60-7856-D292589608B4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33333337306976318 0.9375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  1 0 -1 1 2 -3 1 1 -2.25 1 1.5 -2.75 1 0.5 -1.75
		 1 0.5 -1.25 1 1 -1.75 1 1.5 -2.25 1 2 -2.75 1 0 -1.25 -0.33333313 2 -3 -0.33333313 2 -2.75
		 -0.33333313 1.5 -2.75 -0.33333313 1.5 -2.25 -0.33333313 1 -2.25 -0.33333313 1 -1.75
		 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25 -0.33333313 0 -1.25 -0.33333313 0 -1
		 0.33333343 2 -3 0.33333343 2 -2.75 0.33333343 1.5 -2.75 0.33333343 1.5 -2.25 0.33333343 1 -2.25
		 0.33333343 1 -1.75 0.33333343 0.5 -1.75 0.33333343 0.5 -1.25 0.33333343 0 -1.25 0.33333343 0 -1
		 0.33333343 2.44907331 -3 0.33333343 2.10300469 -2.64699554 -0.33333313 2.44907331 -3
		 -0.33333313 2.10300469 -2.64699554 0.33333343 1.76411104 -2.30112815 -0.33333313 1.76411104 -2.30112815
		 0.33333343 1.60300457 -2.14699554 -0.33333313 1.60300457 -2.14699554 0.33333343 1.26411092 -1.80112827
		 -0.33333313 1.26411092 -1.80112827 0.33333343 1.10300457 -1.64699554 -0.33333313 1.10300457 -1.64699554
		 0.33333343 0.86209333 -1.39981806 -0.33333313 0.86209333 -1.39981806 0.33333343 0.66322649 -1.21701348
		 -0.33333313 0.66322649 -1.21701348 0.33333343 0.38618085 -1 -0.33333313 0.38618085 -1
		 -0.33333313 0.20600909 -1.000000119209 0.33333343 0.20600909 -1.000000119209;
	setAttr -s 87 ".ed[0:86]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape32" -p "Stairs_SideFill_Short";
	rename -uid "884BD091-44C7-63AA-EC80-A39CCB3E0266";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66666668653488159 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 1 0 1 1 1 0.5 1 0.75
		 1 0.25 1 0.125 1 0.375 1 0.625 1 0.875 1 0.0625 0.33333337 1 0.33333337 0.875 0.33333337
		 0.75 0.33333337 0.625 0.33333337 0.5 0.33333337 0.375 0.33333337 0.25 0.33333337
		 0.125 0.33333337 0.0625 0.33333337 0 0.66666669 1 0.66666669 0.875 0.66666669 0.75
		 0.66666669 0.625 0.66666669 0.5 0.66666669 0.375 0.66666669 0.25 0.66666669 0.125
		 0.66666669 0.0625 0.66666669 0 0.66666669 0.875 0.66666669 1 0.33333337 1 0.33333337
		 0.875 0.66666669 0.75 0.33333337 0.75 0.66666669 0.625 0.33333337 0.625 0.66666669
		 0.5 0.33333337 0.5 0.66666669 0.375 0.33333337 0.375 0.66666669 0.25 0.33333337 0.25
		 0.66666669 0.125 0.33333337 0.125 0.66666669 0.0625 0.33333337 0.0625 0.33333337
		 0 0.66666669 0 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 70 ".vt[0:69]"  1 0 -1 1 2 -3 1 1 -2.25 1 1.5 -2.75 1 0.5 -1.75
		 1 0.5 -1.25 1 1 -1.75 1 1.5 -2.25 1 2 -2.75 1 0 -1.25 -0.33333313 2 -3 -0.33333313 2 -2.75
		 -0.33333313 1.5 -2.75 -0.33333313 1.5 -2.25 -0.33333313 1 -2.25 -0.33333313 1 -1.75
		 -0.33333313 0.5 -1.75 -0.33333313 0.5 -1.25 -0.33333313 0 -1.25 -0.33333313 0 -1
		 0.33333343 2 -3 0.33333343 2 -2.75 0.33333343 1.5 -2.75 0.33333343 1.5 -2.25 0.33333343 1 -2.25
		 0.33333343 1 -1.75 0.33333343 0.5 -1.75 0.33333343 0.5 -1.25 0.33333343 0 -1.25 0.33333343 0 -1
		 0.33333343 2.44907331 -3 0.33333343 2.10300469 -2.64699554 -0.33333313 2.44907331 -3
		 -0.33333313 2.10300469 -2.64699554 0.33333343 1.76411104 -2.30112815 -0.33333313 1.76411104 -2.30112815
		 0.33333343 1.60300457 -2.14699554 -0.33333313 1.60300457 -2.14699554 0.33333343 1.26411092 -1.80112827
		 -0.33333313 1.26411092 -1.80112827 0.33333343 1.10300457 -1.64699554 -0.33333313 1.10300457 -1.64699554
		 0.33333343 0.86209333 -1.39981806 -0.33333313 0.86209333 -1.39981806 0.33333343 0.66322649 -1.2170136
		 -0.33333313 0.66322649 -1.2170136 0.33333343 0.38618085 -1 -0.33333313 0.38618085 -1
		 -0.33333313 0.20600909 -1 0.33333343 0.20600909 -1 -0.33333313 1.5 -3 -0.33333313 1.5 -2.75
		 -0.33333313 1 -2.75 -0.33333313 1 -2.25 -0.33333313 1 -3 -0.33333313 1 -2.75 -0.33333313 0.5 -2.25
		 -0.33333313 0.5 -1.75 -0.33333313 0.5 -2.75 -0.33333313 0.5 -2.25 -0.33333313 0.5 -3
		 -0.33333313 0.5 -2.75 -0.33333313 0 -1.75 -0.33333313 0 -1.25 -0.33333313 0 -2.25
		 -0.33333313 0 -1.75 -0.33333313 0 -2.75 -0.33333313 0 -2.25 -0.33333313 0 -3 -0.33333313 0 -2.75;
	setAttr -s 117 ".ed[0:116]"  0 9 0 2 7 0 3 8 0 4 6 0 5 4 0 6 2 0 7 3 0
		 8 1 0 9 5 0 8 21 0 3 22 0 7 23 0 2 24 0 6 25 0 4 26 0 5 27 0 9 28 0 10 20 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 19 29 0 18 19 0 20 1 0 20 21 0
		 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 29 0 0 28 29 0 20 30 0 21 31 1
		 30 31 0 10 32 0 32 30 0 11 33 1 32 33 0 31 33 0 22 34 1 31 34 0 12 35 1 33 35 0 34 35 0
		 23 36 1 34 36 0 13 37 1 35 37 0 36 37 0 24 38 1 36 38 0 14 39 1 37 39 0 38 39 0 25 40 1
		 38 40 0 15 41 1 39 41 0 40 41 0 26 42 1 40 42 0 16 43 1 41 43 0 42 43 0 27 44 1 42 44 0
		 17 45 1 43 45 0 44 45 0 28 46 1 44 46 0 18 47 1 45 47 0 46 47 0 19 48 0 29 49 0 48 49 0
		 46 49 0 47 48 0 10 50 0 11 51 0 50 51 0 12 52 0 13 53 0 52 53 0 50 54 0 51 55 0 54 55 0
		 14 56 0 15 57 0 56 57 0 52 58 0 53 59 0 58 59 0 54 60 0 55 61 0 60 61 0 16 62 0 17 63 0
		 62 63 0 56 64 0 57 65 0 64 65 0 58 66 0 59 67 0 66 67 0 60 68 0 61 69 0 68 69 0;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 37 0 16 38
		mu 0 4 29 0 9 28
		f 4 1 11 32 -13
		mu 0 4 2 7 23 24
		f 4 2 9 30 -11
		mu 0 4 3 8 21 22
		f 4 3 13 34 -15
		mu 0 4 4 6 25 26
		f 4 4 14 35 -16
		mu 0 4 5 4 26 27
		f 4 5 12 33 -14
		mu 0 4 6 2 24 25
		f 4 6 10 31 -12
		mu 0 4 7 3 22 23
		f 4 7 -29 29 -10
		mu 0 4 8 1 20 21
		f 4 8 15 36 -17
		mu 0 4 9 5 27 28
		f 4 -42 -44 45 -47
		mu 0 4 30 31 32 33
		f 4 -49 46 50 -52
		mu 0 4 34 30 33 35
		f 4 -54 51 55 -57
		mu 0 4 36 34 35 37
		f 4 -59 56 60 -62
		mu 0 4 38 36 37 39
		f 4 -64 61 65 -67
		mu 0 4 40 38 39 41
		f 4 -69 66 70 -72
		mu 0 4 42 40 41 43
		f 4 -74 71 75 -77
		mu 0 4 44 42 43 45
		f 4 -79 76 80 -82
		mu 0 4 46 44 45 47
		f 4 84 -86 81 86
		mu 0 4 48 49 46 47
		f 4 -30 39 41 -41
		mu 0 4 21 20 31 30
		f 4 -18 42 43 -40
		mu 0 4 20 10 32 31
		f 4 18 44 -46 -43
		mu 0 4 10 11 33 32
		f 4 -31 40 48 -48
		mu 0 4 22 21 30 34
		f 4 19 49 -51 -45
		mu 0 4 11 12 35 33
		f 4 -32 47 53 -53
		mu 0 4 23 22 34 36
		f 4 20 54 -56 -50
		mu 0 4 12 13 37 35
		f 4 -33 52 58 -58
		mu 0 4 24 23 36 38
		f 4 21 59 -61 -55
		mu 0 4 13 14 39 37
		f 4 -34 57 63 -63
		mu 0 4 25 24 38 40
		f 4 22 64 -66 -60
		mu 0 4 14 15 41 39
		f 4 -35 62 68 -68
		mu 0 4 26 25 40 42
		f 4 23 69 -71 -65
		mu 0 4 15 16 43 41
		f 4 -36 67 73 -73
		mu 0 4 27 26 42 44
		f 4 24 74 -76 -70
		mu 0 4 16 17 45 43
		f 4 -37 72 78 -78
		mu 0 4 28 27 44 46
		f 4 25 79 -81 -75
		mu 0 4 17 18 47 45
		f 4 26 83 -85 -83
		mu 0 4 19 29 49 48
		f 4 -39 77 85 -84
		mu 0 4 29 28 46 49
		f 4 27 82 -87 -80
		mu 0 4 18 19 48 47
		f 4 -19 87 89 -89
		mu 0 4 50 51 52 53
		f 4 -21 90 92 -92
		mu 0 4 54 55 56 57
		f 4 -90 93 95 -95
		mu 0 4 58 59 60 61
		f 4 -23 96 98 -98
		mu 0 4 62 63 64 65
		f 4 -93 99 101 -101
		mu 0 4 66 67 68 69
		f 4 -96 102 104 -104
		mu 0 4 70 71 72 73
		f 4 -25 105 107 -107
		mu 0 4 74 75 76 77
		f 4 -99 108 110 -110
		mu 0 4 78 79 80 81
		f 4 -102 111 113 -113
		mu 0 4 82 83 84 85
		f 4 -105 114 116 -116
		mu 0 4 86 87 88 89;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Archway";
	rename -uid "C2743752-4657-F9F6-FD1A-9F8A599A6BDF";
	setAttr ".rp" -type "double3" -8 1 6 ;
	setAttr ".sp" -type "double3" -8 1 6 ;
createNode mesh -n "ArchwayShape" -p "Archway";
	rename -uid "6D0112A6-428F-7E4E-ED4C-F084F1A39598";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.33333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -8 0 7 -8 0 7 -8 0 7 -8 0 
		7 -8 0 7 -7.6038594 0 7 -8 0 7 -8.3961411 0 7 -8 0.3951942 7 -7.6038594 0.3951942 
		7 -8.3961411 0.3951942 7 -8 0.3951942 7 -8 0 7 -7.6038594 0 7 -8.3961411 0 7 -8 0 
		7;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 22 ".ed[0:21]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 0 12 13 1
		 14 7 0 15 11 0 14 15 1;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 5 2 18 17
		mu 0 4 5 1 12 13
		f 4 0 -20 21 -2
		mu 0 4 0 7 14 15
		f 4 -12 9 -5 6
		mu 0 4 9 8 3 4
		f 4 -14 -7 -8 8
		mu 0 4 10 9 4 6
		f 4 -16 -9 -4 -15
		mu 0 4 11 10 6 2
		f 4 -19 16 11 10
		mu 0 4 13 12 8 9
		f 4 -22 -13 15 -21
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Archway";
	rename -uid "EAAF811D-4505-3BCB-A70C-D79EC7A2947C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Doorway";
	rename -uid "61F76CF6-41DB-F4AE-31E7-21B61F323A0D";
	setAttr ".rp" -type "double3" -8 1 8 ;
	setAttr ".sp" -type "double3" -8 1 8 ;
createNode mesh -n "DoorwayShape" -p "Doorway";
	rename -uid "7C7BE092-4BDA-F04E-9264-1FA874778474";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.66666662693023682 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 1 0 0 1 1 1 0.66666663
		 1 0.66666663 0 0.33333331 1 0.33333331 0 1 0.66666663 0.66666663 0.66666663 0.33333331
		 0.66666663 0 0.66666663 1 0.33333331 0.66666663 0.33333331 0.33333331 0.33333331
		 0 0.33333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -8 0 9 -8 0 9 -8 0 9 -8 0 
		9 -8 0 9 -7.9923916 0 9 -8 0 9 -8.0076084 0 9 -8 0.082749918 9 -7.9923916 0.082749881 
		9 -8.0076084 0.082749881 9 -8 0.082749918 9 -8 0 9 -7.9923916 0 9 -8.0076084 0 9 
		-8 0 9;
	setAttr -s 16 ".vt[0:15]"  -1 0 -1 1 0 -1 -1 2 -1 1 2 -1 0.33333328 2 -1
		 0.33333328 0 -1 -0.33333337 2 -1 -0.33333337 0 -1 1 1.33333325 -1 0.33333328 1.33333325 -1
		 -0.33333337 1.33333325 -1 -1 1.33333325 -1 1 0.66666663 -1 0.33333328 0.66666663 -1
		 -0.33333337 0.66666663 -1 -1 0.66666663 -1;
	setAttr -s 22 ".ed[0:21]"  0 7 0 0 15 0 1 12 0 2 6 0 4 3 0 5 1 0 4 9 1
		 6 4 0 6 10 1 8 3 0 9 13 0 8 9 1 10 14 0 9 10 0 11 2 0 10 11 1 12 8 0 13 5 0 12 13 1
		 14 7 0 15 11 0 14 15 1;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 5 2 18 17
		mu 0 4 5 1 12 13
		f 4 0 -20 21 -2
		mu 0 4 0 7 14 15
		f 4 -12 9 -5 6
		mu 0 4 9 8 3 4
		f 4 -14 -7 -8 8
		mu 0 4 10 9 4 6
		f 4 -16 -9 -4 -15
		mu 0 4 11 10 6 2
		f 4 -19 16 11 10
		mu 0 4 13 12 8 9
		f 4 -22 -13 15 -21
		mu 0 4 15 14 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape18" -p "Doorway";
	rename -uid "12D4B1A2-461E-5C63-6C44-5DB38444D201";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Corner_Inside";
	rename -uid "E67F2D88-451D-620F-0C10-938AD2775917";
	setAttr ".rp" -type "double3" -3 1 -3 ;
	setAttr ".sp" -type "double3" -3 1 -3 ;
createNode mesh -n "Corner_InsideShape" -p "Corner_Inside";
	rename -uid "8D3AC712-4C7A-F4D8-97F9-41BC2CDB881A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[8]" -type "float3" 0 5.5511151e-17 0 ;
	setAttr ".pt[10]" -type "float3" 0 -5.5511151e-17 0 ;
	setAttr -s 11 ".vt[0:10]"  -3 -1.110223e-16 -4 -2 0 -3 -3 2 -4 -2 2 -3
		 -2 0 -1 -2 2 -1 -5 -1.110223e-16 -4 -5 2 -4 -3 0 -3 -5 -1.110223e-16 -3 -3 -5.5511151e-17 -1;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0
		 0 6 0 2 7 0 6 7 0 0 8 0 6 9 0 8 9 0 1 8 0 4 10 0 8 10 0 8 8 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -3 4 6 -6
		mu 0 4 4 5 6 7
		f 4 1 8 -10 -8
		mu 0 4 8 9 10 11
		f 4 7 11 -13 -11
		mu 0 4 0 12 13 14
		f 4 -5 13 15 -15
		mu 0 4 15 1 16 17
		f 4 10 16 -14 -1
		mu 0 4 0 14 16 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Corner_Outside";
	rename -uid "002808F4-4DA0-429E-4348-A7A4B67F146A";
	setAttr ".rp" -type "double3" -5 1 -1 ;
	setAttr ".sp" -type "double3" -5 1 -1 ;
createNode mesh -n "Corner_OutsideShape" -p "Corner_Outside";
	rename -uid "49278EBC-49CE-A5BB-A47C-D5A0DB8E9083";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1 0 0 1 0 1 1 0 1 0.5 1 0.5 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -6 -1.110223e-16 -2 -4 0 -1 -6 2 -2 -4 2 -1
		 -4 -1.3738311e-16 0 -4 2 0 -5 2 -2 -5 0 -2;
	setAttr -s 10 ".ed[0:9]"  0 7 0 0 2 0 1 3 0 2 6 0 1 4 0 3 5 0 4 5 0
		 6 3 0 7 1 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 -10 7 -3 -9
		mu 0 4 11 10 3 1
		f 4 5 -7 -5 2
		mu 0 4 6 9 8 7
		f 4 1 3 9 -1
		mu 0 4 0 2 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Corner_Outside_Alt";
	rename -uid "ED676E1D-4891-4306-873C-748A41BEED5C";
	setAttr ".rp" -type "double3" -5 1 -7 ;
	setAttr ".sp" -type "double3" -5 1 -7 ;
createNode mesh -n "Corner_Outside_AltShape" -p "Corner_Outside_Alt";
	rename -uid "1BBFD93C-4B70-9451-2768-B38A7EC1F5A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1 0 0 1 0 1 1 0 1 0.5 1 0.5 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6 0 -6 -6 0 -6 -6 0 -6 -6 
		0 -6 -6 0 -6 -6 0 -6 -6 0 -6 -6 0 -6;
	setAttr -s 8 ".vt[0:7]"  0 -1.110223e-16 -2 2 0 -1 0 2 -2 2 2 -1 2 -1.3738311e-16 0
		 2 2 0 1 2 -2 1 0 -2;
	setAttr -s 10 ".ed[0:9]"  0 7 0 0 2 0 1 3 0 2 6 0 1 4 0 3 5 0 4 5 0
		 6 3 0 7 1 0 6 7 1;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 -10 7 -3 -9
		mu 0 4 11 10 3 1
		f 4 5 -7 -5 2
		mu 0 4 6 9 8 7
		f 4 1 3 9 -1
		mu 0 4 0 2 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape41" -p "Corner_Outside_Alt";
	rename -uid "A1771CC9-47EC-7F87-D568-C389CD82DD6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.5 0 -2.5 0.5 1.110223e-16 
		-1.5 0.5 2 -1.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Corner_Inside_Alt";
	rename -uid "DDE8019E-468F-E469-53D6-71A3B49DDE49";
	setAttr ".rp" -type "double3" -3 1 -9 ;
	setAttr ".sp" -type "double3" -3 1 -9 ;
createNode mesh -n "Corner_Inside_AltShape" -p "Corner_Inside_Alt";
	rename -uid "27AE01CC-4393-B92D-E91F-A887CDB9DCD0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt[0:10]" -type "float3"  -3 0 -8 -3 0 -8 -3 0 -8 -3 
		0 -8 -3 0 -8 -3 0 -8 -3 0 -8 -3 0 -8 -3 5.5511151e-17 -8 -3 0 -8 -3 -5.5511151e-17 
		-8;
	setAttr -s 11 ".vt[0:10]"  0 -1.110223e-16 -2 1 0 -1 0 2 -2 1 2 -1 1 0 1
		 1 2 1 -2 -1.110223e-16 -2 -2 2 -2 0 0 -1 -2 -1.110223e-16 -1 0 -5.5511151e-17 1;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0
		 0 6 0 2 7 0 6 7 0 0 8 0 6 9 0 8 9 0 1 8 0 4 10 0 8 10 0 8 8 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -3 4 6 -6
		mu 0 4 4 5 6 7
		f 4 1 8 -10 -8
		mu 0 4 8 9 10 11
		f 4 7 11 -13 -11
		mu 0 4 0 12 13 14
		f 4 -5 13 15 -15
		mu 0 4 15 1 16 17
		f 4 10 16 -14 -1
		mu 0 4 0 14 16 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape40" -p "Corner_Inside_Alt";
	rename -uid "8372DF64-4B39-953F-0689-379A96AC087D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0.5 0 -2.5 0.5 1.110223e-16 
		-1.5 0.5 2 -1.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InsideCorner_Short_Alt";
	rename -uid "A3A84852-43EC-13E2-958B-A486A8A29E21";
	setAttr ".rp" -type "double3" 5 3 -1 ;
	setAttr ".sp" -type "double3" 5 3 -1 ;
createNode mesh -n "InsideCorner_Short_AltShape" -p "InsideCorner_Short_Alt";
	rename -uid "8F9C66A9-42EF-F686-F45E-CA989288CF45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  3 2 0 3 2 0 3 2 0 3 2 0 3 
		2 0 3 2 0;
	setAttr -s 6 ".vt[0:5]"  1 0 -1 2 0 0 1 2 -1 2 2 0 2 0 -1 2 2 -1;
	setAttr -s 7 ".ed[0:6]"  0 4 0 0 2 0 1 3 0 2 5 0 4 1 0 5 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 6 -4 -2
		mu 0 4 0 4 5 2
		f 4 4 2 -6 -7
		mu 0 4 4 1 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "InsideCorner_Short_Alt";
	rename -uid "DB39878E-4452-6266-3989-1AB17783EDB3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "InsideCorner_Long_Alt";
	rename -uid "568DD2CA-4223-3A50-1E55-A08035133F77";
	setAttr ".rp" -type "double3" 8 3 -1 ;
	setAttr ".sp" -type "double3" 8 3 -1 ;
createNode mesh -n "InsideCorner_Long_AltShape" -p "InsideCorner_Long_Alt";
	rename -uid "942AC943-4C8B-B4D2-6A70-07A9C8977D0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  4 2 0 4 2 0 4 2 0 4 2 0 4 
		2 0 4 2 0;
	setAttr -s 6 ".vt[0:5]"  2 0 -1 4 0 -1 2 2 -1 4 2 -1 4 0 1 4 2 1;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -3 4 6 -6
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "InsideCorner_Long_Alt";
	rename -uid "8BB9CA3D-4920-AA20-856E-CC81F4F47E93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OutsideCorner_Short_Alt";
	rename -uid "1A5D7EAC-455A-5601-A155-2F8D2509BCFD";
	setAttr ".rp" -type "double3" 5 3 -4 ;
	setAttr ".sp" -type "double3" 5 3 -4 ;
createNode mesh -n "OutsideCorner_Short_AltShape" -p "OutsideCorner_Short_Alt";
	rename -uid "422320B8-4ED7-B72D-7D25-DC87D90034EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  5 2 -3 5 2 -3 5 2 -3 5 2 
		-3 5 2 -3 5 2 -3;
	setAttr -s 6 ".vt[0:5]"  -1 0 -1 0 0 0 -1 2 -1 0 2 0 0 0 -1 0 2 -1;
	setAttr -s 7 ".ed[0:6]"  0 4 0 0 2 0 1 3 0 2 5 0 4 1 0 5 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 3 -7 -1
		mu 0 4 0 2 5 4
		f 4 6 5 -3 -5
		mu 0 4 4 5 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "OutsideCorner_Short_Alt";
	rename -uid "7379CCAB-4DB7-25A7-6988-AFB69B30E44F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape9" -p "OutsideCorner_Short_Alt";
	rename -uid "E9ABB21E-43D8-2196-1234-579B4F1F2D3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -1 0 -1 0 0 0 -1 2 -1 0 2 0 0 0 -1 0 2 -1;
	setAttr -s 7 ".ed[0:6]"  0 4 0 0 2 0 1 3 0 2 5 0 4 1 0 5 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 6 -4 -2
		mu 0 4 0 4 5 2
		f 4 4 2 -6 -7
		mu 0 4 4 1 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "OutsideCorner_Long_Alt";
	rename -uid "E83D447B-44E0-8FA7-AB7F-9C8462990F10";
	setAttr ".rp" -type "double3" 8 3 -4 ;
	setAttr ".sp" -type "double3" 8 3 -4 ;
createNode mesh -n "OutsideCorner_Long_AltShape" -p "OutsideCorner_Long_Alt";
	rename -uid "41C14507-454C-DBB9-4DEE-81AA268D7363";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  4 2 -3 4 2 -3 4 2 -3 4 2 
		-3 4 2 -3 4 2 -3;
	setAttr -s 6 ".vt[0:5]"  2 0 -1 4 0 -1 2 2 -1 4 2 -1 4 0 1 4 2 1;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1
		f 4 5 -7 -5 2
		mu 0 4 4 7 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape8" -p "OutsideCorner_Long_Alt";
	rename -uid "904573BC-4020-2D5A-BA44-1CA2857DD376";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.5 1.110223e-16 -1.5 0.5 
		1.110223e-16 -1.5 -0.5 2 -0.5 0.5 2 -0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape10" -p "OutsideCorner_Long_Alt";
	rename -uid "A49DD2BD-42FC-5551-7957-80B56A64DABB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0 0 1 0 0 1 1 1 0
		 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  2 0 -1 4 0 -1 2 2 -1 4 2 -1 4 0 1 4 2 1;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -3 4 6 -6
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "66E0C320-4213-973D-4B87-6B8DD466895A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F83DD08B-4529-BCEF-980B-E48945EE1506";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "04054747-4EC8-A755-CEF1-A1B719E1AEB6";
createNode displayLayerManager -n "layerManager";
	rename -uid "3A91BF3E-470D-44CC-B9B9-B48CD8ED3C43";
createNode displayLayer -n "defaultLayer";
	rename -uid "33B91A1D-44DF-0493-C443-C9A8E5A1DCB8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E60A2436-4C84-DD7C-09DF-6A8FF6A399AA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0FA4DBE3-4E3B-7F5C-A9B3-D2BDA37CF324";
	setAttr ".g" yes;
createNode groupId -n "groupId7";
	rename -uid "C29D28B9-4813-5FD0-BE7F-D8A8519AE61F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "2FAEE9F1-44EE-352D-F8D6-A4972965E742";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "CDE18588-4D57-2D2A-5AD8-C08663EF520B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "891C72D1-40C0-987E-EB90-0F8ECEA377FE";
	setAttr ".ihi" 0;
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 987\\n    -height 793\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 987\\n    -height 793\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "AEFEB0FF-4011-91EF-CBBA-7D95E1CA8684";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
createNode groupId -n "groupId87";
	rename -uid "53A1342A-4635-2610-6571-65850F916E3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "F3EA7CBA-46FE-ACF9-F2B1-0D9C4FAE319E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "CE3216C8-4D91-43A9-C50E-A4B8F6CB11C2";
	setAttr ".ihi" 0;
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
createNode groupId -n "groupId1169";
	rename -uid "56BC161A-4812-3450-9348-429A94617D0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1181";
	rename -uid "2BB0A353-422C-73D2-9A39-DE8198E96E3F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1182";
	rename -uid "7CD2BB79-4AD0-6055-37AB-2083C28D53AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1190";
	rename -uid "04576859-4E06-AF8E-15D1-D59BDA44FEAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1191";
	rename -uid "218FE206-4F14-8793-BE97-5884269E7848";
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
createNode groupId -n "groupId1253";
	rename -uid "7EA272DA-417E-4358-8E0A-8891AF82B83E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1258";
	rename -uid "54C391EF-484C-E242-2560-7F93217F00C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1259";
	rename -uid "30A41434-4620-8B66-B41A-AE863A74A739";
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
createNode groupId -n "groupId1275";
	rename -uid "64530EB6-42B2-6C6A-F869-7897E6F35D08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1278";
	rename -uid "F3F49219-48B6-9F18-23BB-C3BD4FDC706B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1279";
	rename -uid "EA29363A-41D5-D9C0-0027-B28FFFCC13E4";
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
createNode groupId -n "groupId1310";
	rename -uid "F8A82178-455E-2D8E-762C-378B1087A78C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1311";
	rename -uid "C9C0BBFA-4891-1EE7-5634-79BC0C23C3E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1312";
	rename -uid "C5510F42-4B94-6534-40ED-B2BF9BDDB03B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1349";
	rename -uid "31B2CC80-40D5-E27A-EEB7-85AA442419C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1350";
	rename -uid "6021D035-4920-9DA5-DEC9-B9972F26E369";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1351";
	rename -uid "7FF6D1D6-4691-F030-55D3-618DDB045FCF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1352";
	rename -uid "29221C2B-4CD4-DC63-382A-4E8B30E33B6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1353";
	rename -uid "EBF28E90-463C-63F1-6050-3DA86A42D2BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1354";
	rename -uid "CACF404A-4362-F050-3DC6-49B52DD66805";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1355";
	rename -uid "69285149-48CA-0EF4-B3E9-0FBC2AC69D29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1356";
	rename -uid "02CF6C03-4467-CC8D-0A7D-8D9B2B4EAC6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1357";
	rename -uid "25FBF1B7-45C5-4F3F-150F-0E9D0FF40593";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1358";
	rename -uid "49816073-45B9-763D-FD68-0581E14BACB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1359";
	rename -uid "B74EB977-4A7B-9F2A-3C57-8A88F346CE17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1360";
	rename -uid "516BFBBA-4BED-D75E-474C-78811132FD0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1361";
	rename -uid "14BF6C8C-4A42-E2E1-08BA-6394A017D675";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1362";
	rename -uid "36079E6F-4B04-0D7A-B85A-0E8251202425";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1363";
	rename -uid "624878D0-4814-7CB1-79C9-98A4978D9EF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1364";
	rename -uid "80294FE8-4FCB-0029-1B0A-9689DA1C2D0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1365";
	rename -uid "7F6F886D-46B9-9493-A419-6D8C6CE43C8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1366";
	rename -uid "488A3968-4BEB-8341-57C6-39B50BBC40E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1367";
	rename -uid "FD2DB7D9-44BE-C19C-77C5-0786407FA645";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1368";
	rename -uid "984B0019-41DF-8A44-0CC7-E2B238198C73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1369";
	rename -uid "34AD649B-4BAC-3658-B8CF-23989DD97671";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1370";
	rename -uid "6C9EA331-4E80-634E-208B-0CB99076B6E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1371";
	rename -uid "62C0E808-4F0F-23E9-7F64-BB960FC4CB63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1372";
	rename -uid "32D7BB66-4B14-3635-BECD-83A2B2E71D35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1373";
	rename -uid "D970058D-466C-E62E-4C2F-97914CC02ADE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1374";
	rename -uid "3F06BCEB-4C56-5E8A-660D-C291E5BA5C42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1375";
	rename -uid "42C98F8E-4AE4-4806-CD52-C59CA6A94E50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1376";
	rename -uid "9A56FE2A-4150-E72F-45A9-138281FC3F65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1377";
	rename -uid "8D158A33-41C9-758C-46B2-A99F72143DD7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1378";
	rename -uid "A77FB810-4551-968C-BD06-30833A8C9350";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1379";
	rename -uid "755FFA28-4C89-E61E-85D2-FE93E1B9C698";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1380";
	rename -uid "EF6BBF18-4DEB-E5AA-2293-73AAC8DC70D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1381";
	rename -uid "2C72EE85-498C-DAC5-E327-9FAF92033AE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1382";
	rename -uid "C66F34A3-441B-FA79-B9EC-86959B0D19DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1383";
	rename -uid "E9F51D94-4E24-A1C6-B92B-EDB2DF188774";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1384";
	rename -uid "E8F73133-4A31-1760-911D-9791E2AFC93A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1385";
	rename -uid "35CF1D4D-4F48-CC2F-3ED6-089A90AF3CEF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1386";
	rename -uid "531181E9-4D7E-B9ED-9F06-81BFC41818D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1387";
	rename -uid "1B4C2C54-4B83-2FCC-E6B9-42A52BA01429";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1388";
	rename -uid "AEB1B0F0-4EF4-41DD-B297-3DBCBEA9AFA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1389";
	rename -uid "9B6F7132-4C55-C0C5-7C8C-4DA5D66CC55B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1390";
	rename -uid "7503188D-497B-DC7B-89BD-978AE7B457F8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1391";
	rename -uid "7920268D-4B03-D3B7-4CF2-1BB029B5CA5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1392";
	rename -uid "1DEA20A3-47A8-279A-F0FF-DFB6EF83A3C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1393";
	rename -uid "9A047397-4C81-A157-84FE-7CA2ABF461B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1394";
	rename -uid "A9AACD21-45E9-211A-DD7B-D180B396D9B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1395";
	rename -uid "E643435C-459A-57AC-6609-7E8B773CD7BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1396";
	rename -uid "7138B621-4ED2-B53D-20DF-D7903369C35B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1397";
	rename -uid "8E18901E-4CC2-E1B0-D8AE-7B9EC19DDDFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1398";
	rename -uid "D73CD413-4641-C45E-6F77-57AA70B455A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1399";
	rename -uid "4A4E712C-4A12-BE3E-25C7-03A84F519543";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1400";
	rename -uid "2914DA4A-48D5-D37E-CBF2-D5B8A082AD9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1401";
	rename -uid "2DB52580-4E78-89D0-367C-C8B624DD465F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1402";
	rename -uid "0DF670D2-42A7-8522-0ECF-4088394F4E2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1403";
	rename -uid "2B021038-4B19-C937-6C89-35A17E0D0654";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1404";
	rename -uid "46E50199-4166-236F-5D66-FA88874AE7ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1405";
	rename -uid "3BD42380-4CB5-3170-ADA5-96B2260B3912";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1417";
	rename -uid "CEFF2B73-4B83-E3AF-1A20-EAA47E9BD47E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1418";
	rename -uid "D1C6B635-4A32-657C-A007-6D8B2CF388B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1419";
	rename -uid "4B7FF071-471A-D97E-7E6B-2DBA2A45A783";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1420";
	rename -uid "2082B91B-4ED0-9E69-9C94-509AA0539B61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1421";
	rename -uid "FE440878-4BDE-4987-83C1-9C9AA76E521A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1422";
	rename -uid "BEA59F85-4A35-1BC9-0464-CDADD569F70E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1423";
	rename -uid "32EFA325-4886-C12A-5789-07AE421E23ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1424";
	rename -uid "52D508AA-4CAB-6D44-12F3-AE83394B1C44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1425";
	rename -uid "C10E40EF-4035-C6C8-02E7-ABA55EDB5BF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1426";
	rename -uid "38536DB7-4AFD-7053-CA71-278A1888C845";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1427";
	rename -uid "634320E8-4953-62C6-C01E-27B7293E4EFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1428";
	rename -uid "6FBFEBB3-412C-56CD-3006-6E8BF4F39825";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1429";
	rename -uid "AC5FE991-4B33-7B06-B72C-A785A29B15ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1430";
	rename -uid "DFB9D1A7-4A6D-7CE9-6393-80B810867900";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1431";
	rename -uid "7E6C1393-49D2-A487-6C20-EC8F5A3ED32D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1432";
	rename -uid "31A8700C-4804-7E4B-0292-BD858FCA9A43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1433";
	rename -uid "884C4B9A-4520-A5C8-4C82-8491F05316E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1434";
	rename -uid "58A93C98-4329-61B2-25A4-CD9BAD9BD73F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1435";
	rename -uid "C86F5C05-4C73-74F7-CF64-98B9757C499F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1436";
	rename -uid "04035058-4EF8-06B1-218D-D1B5B0895623";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1437";
	rename -uid "2551C541-438F-BFB8-6F89-D198CF1960CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1438";
	rename -uid "B3019FD7-4D11-6438-5BE2-3396959D2389";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1439";
	rename -uid "E64C965E-4C70-97B9-2736-43B5F97A89CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1440";
	rename -uid "14E5BE1B-4B9A-E11D-FC3D-C0ADBEA2F898";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1441";
	rename -uid "6962D91E-41B8-1385-2E39-EC862556CC8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1442";
	rename -uid "829BB61F-41E2-5DCD-19C3-B08ADBA887DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1443";
	rename -uid "09260717-4990-F5FA-4150-CB8F368CE512";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1444";
	rename -uid "D0D3DC05-4167-1EC6-A3D4-E593E220DB28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1445";
	rename -uid "9B9B124A-4B3D-9E37-EF4F-5E9965164CEA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1446";
	rename -uid "C5BE2956-43DF-1018-AF7E-BB8511808929";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1447";
	rename -uid "86F258D3-4B44-3F80-1688-B0BA75C01B22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1448";
	rename -uid "70E36473-4602-EE2F-15F2-01A66A797659";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1449";
	rename -uid "64A2C101-48C0-99C5-987C-99A5066F6A27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1450";
	rename -uid "4FAE2C47-4DAC-D499-92FB-5190420EF898";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1451";
	rename -uid "4B5CAE64-482F-9D53-26B1-BFB5342054C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1452";
	rename -uid "4345C101-4A15-CA51-1A5A-71BFF711D91F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1453";
	rename -uid "254C1896-46BF-86F9-53A2-6F88449E36D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1454";
	rename -uid "3A296600-4F2C-C5F1-ACC9-938788219958";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1455";
	rename -uid "19B87702-494A-1F44-F15E-8795D533A338";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1456";
	rename -uid "022C87C6-4039-3AEF-2AF2-399D71408462";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1457";
	rename -uid "36E558CD-42A6-E754-2B53-8A86EE0D17C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1458";
	rename -uid "381984BD-4384-541B-C6BD-7191D3FA896F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1459";
	rename -uid "125651C5-4C5D-7F33-42D3-7DA7CC3D839A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1460";
	rename -uid "9D37B524-42E6-73BD-ACB9-8F9A415EDB8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1461";
	rename -uid "26252F70-4E5E-9CD6-446C-DCAB55B15E02";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1462";
	rename -uid "82F87924-4283-F164-1689-ACBB4C0FF0D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1463";
	rename -uid "91355AD8-49EE-A699-FECB-9C84F1B2EBA2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1464";
	rename -uid "1A9BAEA9-4E27-1650-5ECF-2DA34820D0D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1465";
	rename -uid "332EE2D0-4E7A-961A-72D0-57A87657AC79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1466";
	rename -uid "27C07DC2-4510-67A3-8AB6-3BB11A3EE3CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1467";
	rename -uid "95EB4A2D-4234-9F19-0E60-1D8B30098AAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1468";
	rename -uid "27CAF783-48CB-5090-E04B-9FA7E17E9460";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1469";
	rename -uid "7273B7D9-4619-5457-A421-49A5DBA3F35D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1470";
	rename -uid "C18F1560-4F89-9498-41EA-DFB689A15C60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1471";
	rename -uid "B6474606-4F36-0C46-11EC-2FA0BB881F74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1472";
	rename -uid "DDEE6F3C-4182-8D8C-C0D6-878FF6E0DBAA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1473";
	rename -uid "6061EB72-4360-79B6-8EA3-71B61CD2A99C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1474";
	rename -uid "0802AF22-42FC-8B01-DE00-33937AD72693";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1475";
	rename -uid "7F861EFE-4107-4F02-C2E8-CBA7E8711D52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1476";
	rename -uid "11B9722F-43AB-1421-6AC3-D6BBFA1BACD7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1477";
	rename -uid "58FFF1BE-4298-358C-3524-9899B6C5DF45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1478";
	rename -uid "2C079D6E-4271-75DF-2973-62B073E5830F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1479";
	rename -uid "0736740A-4D0B-618E-B9F6-AAAE6F3B7FBE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1480";
	rename -uid "93FEB2EF-478F-2918-3CB8-25A3C1A12067";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1481";
	rename -uid "E6EC0B8D-45A7-484F-C353-6D96B39FC439";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1482";
	rename -uid "835E5D5F-4065-25AE-03A9-12B4F911D1DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1483";
	rename -uid "8613DA0B-4250-E950-D4A4-E69F9F9BF7A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1484";
	rename -uid "99F24445-468B-186C-5096-5BA4A9F059DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1485";
	rename -uid "CAF302DC-4C5F-A068-D469-4B958CFCD513";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1486";
	rename -uid "75696538-4031-F2DB-9D6E-BAA2A6439957";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1487";
	rename -uid "87004844-440C-162D-1D30-29971E64729C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1488";
	rename -uid "F6742536-4B47-CEAE-E161-6D8C53085D24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1489";
	rename -uid "B0D1F15A-482F-BCEF-81F1-61B4FEFAD5EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1490";
	rename -uid "6CB9D334-4B0C-DB67-7E95-C8BA3E863500";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1491";
	rename -uid "833C2547-405D-2953-2B85-F8B8BE86C014";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1492";
	rename -uid "57FA54A8-416C-16E3-5E79-AC93840BA6C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1493";
	rename -uid "9A361A9F-4D3E-BFC4-2938-98B2CBD438AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1494";
	rename -uid "D8030D25-4853-4E80-7CA0-739B0F2AB79E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1495";
	rename -uid "05C81622-4022-1525-3274-7D9AAAD352BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1496";
	rename -uid "47B1A0B4-4737-BA70-95C7-128D36A74A1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1497";
	rename -uid "1AC1A447-4364-9F14-0AB5-08A2D70425A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1498";
	rename -uid "6DAEC5CC-40DE-36D4-42A0-28A6EC6EEA8E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1499";
	rename -uid "82AB2D59-40A0-DB06-CDAB-0882DAB57BEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1500";
	rename -uid "52A1B4C1-48D0-AFE2-023B-95A20AA14971";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1501";
	rename -uid "5CF733F3-4170-575B-2899-4995BF9F02E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1502";
	rename -uid "DE8C0126-4AA1-D243-FDFB-9AAAB381FA2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1503";
	rename -uid "124ED0F3-4A1B-A926-48C2-F59E95454E59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1504";
	rename -uid "CC3B02B8-427C-CBD5-9E02-159927D92CE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1505";
	rename -uid "A7CED3C7-47DA-B44F-6A24-C7AAE0DD48BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1506";
	rename -uid "C62429FE-45C9-325A-1146-D3942AE89158";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1507";
	rename -uid "742CDEC1-4621-93D7-9843-C382D517CD14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1508";
	rename -uid "8BA68066-491D-1224-BFAA-178C434ADD91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1509";
	rename -uid "AA9505A1-4B18-D477-EF91-F38ED9119F6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1510";
	rename -uid "E1D9493B-40C9-CF37-E7BC-BBA03B317654";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1511";
	rename -uid "71C39D7E-4A9F-48F9-1133-2DAC75C211C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1512";
	rename -uid "F86BF77B-40A0-6F15-A19A-F4BA8782407C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1513";
	rename -uid "07141338-4AAE-53BB-EDF6-01A6C6A9CA3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1514";
	rename -uid "CD762BA4-432C-9494-E4B4-1ABA43EF8C83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1515";
	rename -uid "95704E0B-46C5-B16D-2BD7-9B9B43F552DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1516";
	rename -uid "057CFDBF-4362-1ED3-D14A-7AB7696A9546";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1517";
	rename -uid "C5C723CD-4E1C-AA6B-F514-6883F20B3AEB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1518";
	rename -uid "CAD138DF-4631-4E29-571A-94AF996188E6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1519";
	rename -uid "A3BE2997-4663-FCFC-F9A3-C28304786568";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1520";
	rename -uid "8EFD2F9E-463A-4CF2-C150-5B9583EA5100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1521";
	rename -uid "29E62FFA-466E-F208-5DCF-3DBADDE7BC3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1522";
	rename -uid "AEE2E94D-4158-06D9-90FA-4B8F3EEFA9BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1523";
	rename -uid "E4593B72-424E-0A36-0F7A-61A30BD533F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1524";
	rename -uid "A8350B34-44CC-7F51-8EF8-ECA207AC98CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1525";
	rename -uid "A6FA395B-41EA-8DBC-08A1-45A487F4CB30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1526";
	rename -uid "A519E8E1-490C-B64A-8E81-30B0C62E9DE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1527";
	rename -uid "07E00055-46D4-F808-5232-CEA4271115C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1528";
	rename -uid "D36ED7AC-4633-F5A4-BCFE-A6AF35A3C981";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1529";
	rename -uid "3E1EBC9C-4E1C-6DD6-12B2-419A97130FB0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1530";
	rename -uid "4F2EF71D-4DA9-2E78-B073-6F9C2F0F0954";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1531";
	rename -uid "9066240F-4B19-1E01-F1EC-E4932F861346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1532";
	rename -uid "AB313358-4F9A-C717-CCE8-96A985674D06";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1533";
	rename -uid "96286516-4D80-8E4E-157E-2D9E2CAC2870";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1534";
	rename -uid "9BF47BC9-4D0A-AAD4-5448-7685C5509DA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1535";
	rename -uid "3078B4EF-4E24-F685-5F82-F19B8B47456F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1536";
	rename -uid "30A32DE4-4FFD-C053-5888-1194485C6F37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1537";
	rename -uid "668303A1-48BE-D882-7D9F-539F2AF11DFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1538";
	rename -uid "AAAFD154-49D1-600E-C3F1-02BF6EFDE4D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1539";
	rename -uid "56442738-4F93-7A3F-13B4-BAA522768511";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1540";
	rename -uid "00BB913F-4E39-C005-A907-C58846F9CDD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1541";
	rename -uid "293F36CF-44AE-150C-3FCD-30905853A907";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1542";
	rename -uid "8C802C5C-4B78-EE13-46BC-F09550FDA747";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1543";
	rename -uid "2A85328B-4A0E-417B-9671-D5B45A88C270";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1544";
	rename -uid "985384B4-42B8-B0B1-93F9-78ABCAAD972A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1545";
	rename -uid "8DC13A5F-4F2A-2A0B-3AC0-9B9887A332F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1546";
	rename -uid "F89D5314-4589-331A-C9FD-9CA9A57AB150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1547";
	rename -uid "41B86348-4929-92D8-DD5A-1A9ACDC12CA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1548";
	rename -uid "6833D6AC-4402-F939-8EE7-E997740D7CAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1549";
	rename -uid "5D00246A-4300-6021-3949-62A19709000F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1550";
	rename -uid "F6309DAB-4FCE-C939-C78A-3EA31EB0A65F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1551";
	rename -uid "107ABD40-485A-7CBC-7089-B69278FCBAEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1552";
	rename -uid "6166DD27-4987-B77E-BC43-3C9724559610";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1553";
	rename -uid "E2EC4005-45BC-25DD-30A9-1B8B942A0308";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1554";
	rename -uid "FD834DA6-45A5-FB91-E851-E1BF965FDE0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1555";
	rename -uid "722B08C0-4CE8-7469-A1D6-E99B2F326D53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1556";
	rename -uid "81F2FD8F-45A0-856A-2F8C-D8BF00BCD2D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1557";
	rename -uid "9A92064B-4445-73E4-CB8E-CC8AEDF5F4CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1558";
	rename -uid "0BADCEB9-4B76-26A6-AB3B-D08A9D1FFE61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1559";
	rename -uid "D873ED03-433E-C630-0E04-E3A20F51BBCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1560";
	rename -uid "6C1C37B2-4A33-6639-54CD-4B883C85FCD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1561";
	rename -uid "D3FF6C91-4626-0C34-7D54-8A9745B517AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1562";
	rename -uid "36AEF754-41D2-627A-4305-98B88D66A98A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1563";
	rename -uid "859BC211-439F-D0E2-07D7-01882355443B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1564";
	rename -uid "C30024A4-4EC8-3B33-13AE-67A755BD41DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1565";
	rename -uid "7E8B14F9-48FD-156F-A3FE-3C8079469804";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1566";
	rename -uid "D32A7E8F-4234-52C3-CB00-FC8FA6AC8EA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1567";
	rename -uid "CD3A5896-40D3-58B7-5561-45B98E178494";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1568";
	rename -uid "D79C3F2C-4886-A455-379B-FBAA24E08A0E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1569";
	rename -uid "832CD703-4020-F69C-D6FA-9CA695B3A0DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1570";
	rename -uid "C846E08C-4569-A87E-7D7F-DEB9541F7EC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1571";
	rename -uid "8E816B59-48E6-A842-EDFE-7A8F93BBC1C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1572";
	rename -uid "94BD3849-4D32-B643-AD32-80962B3FD5D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1573";
	rename -uid "E564BF2A-4E29-ACD3-6781-389D70320ED4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1574";
	rename -uid "C2106CA6-4B32-B934-3222-419B7C40AD78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1575";
	rename -uid "C772CC5F-4C5A-073D-E74F-62A02206B6A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1576";
	rename -uid "72281686-4BC8-80AC-CE55-F4964AAC38D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1577";
	rename -uid "54AF874F-4334-47EF-19B7-BEAA9353DBE8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1578";
	rename -uid "FB058325-4E81-06D1-E0AA-FD8EF3096FB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1579";
	rename -uid "2EE9D5DF-4ED5-4379-E6B4-D2A27E1CC742";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1580";
	rename -uid "F65573CD-44E4-C032-906C-0DB4B451650A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1581";
	rename -uid "61B2BAAF-4687-F57D-971E-7FAA26F5709E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1582";
	rename -uid "BD0606B0-486F-23AB-083A-66AD2B6B3A6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1583";
	rename -uid "306D1CF8-469B-CE38-E15B-08842A8B2D56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1584";
	rename -uid "8A7E410B-414E-7A28-2AAE-A18A20DB8515";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1585";
	rename -uid "EABE0B5D-49C3-4BF8-5D5B-29B281694589";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1586";
	rename -uid "24B34E0E-44F6-7876-D160-1DB53CD8D204";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1587";
	rename -uid "5F3E4B5A-4FD1-6B63-F6B8-5CB0F73C94A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1588";
	rename -uid "38FB1637-4C2D-F34A-1E12-38BC420774C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1589";
	rename -uid "EF7447CC-4ECF-FC5E-FFCE-CC8154A01823";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1590";
	rename -uid "5A00A5AD-4CAF-8D47-DD05-60A6B039362D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1591";
	rename -uid "8C5ABADB-42C8-E807-EA96-D29801DD61E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1592";
	rename -uid "6244BB83-49E2-6E28-5A47-9192377DD624";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1593";
	rename -uid "73B10F83-4D35-1211-E9BB-FF9D4D36B5B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1594";
	rename -uid "91763F08-4A4F-255D-9815-65B600608627";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1595";
	rename -uid "0DBF6B6F-4AB9-2424-FC74-C9AA64B516AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1596";
	rename -uid "787A752F-48AB-7277-499C-E6AA7A874039";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1597";
	rename -uid "133FA3B5-49AF-FBE5-3B2A-31BC8587342D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1598";
	rename -uid "30314F22-4DA5-3B7A-BD82-98B6F51A3D93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1599";
	rename -uid "DB82BBB0-4BE2-46E9-16A4-9BA5B9CDC458";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1600";
	rename -uid "D3C84797-47EF-C658-D98D-618B1681B7D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1601";
	rename -uid "669BAC8E-4B1D-1BBE-CC0E-CDA3B8C6F64F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1602";
	rename -uid "0E5C0DDD-4BEE-15C4-7A79-11AEA651FB12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1603";
	rename -uid "1E1F3013-4335-116B-7399-4D8485F4D00C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1604";
	rename -uid "84FCF1F5-47D0-CFD1-76BE-B2BAC914A777";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1605";
	rename -uid "9B0AB6AF-488E-C2EF-9D06-AE99B41C4B4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1606";
	rename -uid "98554F2B-4D3B-6AA7-DA56-87A0239A554C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1607";
	rename -uid "65F3746D-42BE-26F5-5AF6-3982DD4590E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1608";
	rename -uid "C5DC8441-4844-07AB-D018-7F820396C527";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1609";
	rename -uid "B706F0F8-4AC9-4250-BE00-289AADBDEDBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1610";
	rename -uid "A02E52C7-4DCF-9CB3-0F74-52A1306C5C78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1611";
	rename -uid "DBD7DE47-408C-2191-F16E-00A86F9F6535";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1612";
	rename -uid "7823593D-467A-9358-0FBB-5C9DA3EA510F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1613";
	rename -uid "401A1D2D-4A85-29EC-39E4-04A282EF9D5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1614";
	rename -uid "50EF6202-4EDD-6EC6-F725-9BBA36C5B092";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1615";
	rename -uid "E56F0B80-4E60-5724-52B7-469AE0BE6D01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1616";
	rename -uid "00191397-4BB0-4D87-C162-72834C1EA13C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1617";
	rename -uid "C62902DA-4C03-ACB6-0949-A8A3900DDA3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1618";
	rename -uid "07F3F36C-450B-8A18-CD77-8187C5E6E7B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1619";
	rename -uid "47BB1E96-46FB-1F0D-239F-1283118306B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1620";
	rename -uid "5D7A7160-4FBE-94F3-986D-2CB876201E4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1621";
	rename -uid "4FE0C033-41BE-AA2E-0BB5-F1B9C06430A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1622";
	rename -uid "40365C2F-40F6-8238-BEC7-B3AE86DA9082";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1623";
	rename -uid "5A1AA4E3-4178-C753-2561-67B5183FFC2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1624";
	rename -uid "306BF1E0-489F-370B-2CE1-3B9A1249FF4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1625";
	rename -uid "9BA942DE-4E8A-FC7B-AFA5-0982CA0E7B09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1626";
	rename -uid "16B3AA55-4DDA-3F26-5BC9-3AA83B674F46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1627";
	rename -uid "AC2D4E6A-4F0D-675E-804D-159A65287B71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1628";
	rename -uid "34887554-42BC-33BB-4990-3EB1578066E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1629";
	rename -uid "9993AB07-4F5B-3D21-47BB-4E897E41FF1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1630";
	rename -uid "9A701DA2-4D73-19F7-49B0-288062CC6084";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1631";
	rename -uid "611A9C66-4FE9-8B6B-2663-A2AB9C9BFCC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1632";
	rename -uid "D2A1F529-45D2-0F7C-EB5E-1BB1F6464060";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1633";
	rename -uid "82E31E3D-485C-CC1A-1E86-4D90C80FE33E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1634";
	rename -uid "96601B59-4C4B-539B-2F58-DEA005BE7E35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1635";
	rename -uid "8D4B976F-47E1-4B86-0F1D-77B9918BA603";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1636";
	rename -uid "0567F9DD-4810-B371-79DA-FEA85A990299";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1637";
	rename -uid "1A40BB3E-48B7-4279-28EE-1490A49447D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1638";
	rename -uid "35F7C2BC-4796-8B88-E6B1-9B9B9B409D99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1639";
	rename -uid "605E48D9-427D-DC85-3733-4CA438F02DF4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1640";
	rename -uid "606A8B1D-43B8-7970-53A8-F3A7EC174C0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1641";
	rename -uid "703AF3CA-44B8-9568-E8A9-D69288BBAD7C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1642";
	rename -uid "EC4A5DA4-4EBA-2E61-688B-B39F6A1E8888";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1643";
	rename -uid "15544013-4834-99F4-A719-20B746C33874";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1644";
	rename -uid "85883C0E-4616-15C0-2092-B58D1704F6E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1645";
	rename -uid "383EFE72-43E3-D13F-68E5-49A8E631E684";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1646";
	rename -uid "3CE659F1-4A47-E4C0-AEA2-8185DA1E2465";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1647";
	rename -uid "2ADB0651-491C-37DD-E0EA-609C53EAE724";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1648";
	rename -uid "EFA14921-4322-D1C5-EF3E-17BA886C8576";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1649";
	rename -uid "1465EEE0-45D0-35F6-4A72-AFB1A4680BEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1650";
	rename -uid "AE6186FA-41EF-003B-FB43-81A5F77ABAB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1651";
	rename -uid "B7BC8807-480E-0D65-3E44-00B7B5FC4E08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1652";
	rename -uid "7C6565A8-4C8C-DCC6-59DB-17850BBB0CF4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1653";
	rename -uid "3AB2836E-40A8-F49A-68C3-D08FC94F513A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1654";
	rename -uid "E59A8E29-4F26-9A90-8890-DA8434BF634F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1655";
	rename -uid "6F27727D-4614-F4BD-9C0B-AAB7F3E1A141";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1656";
	rename -uid "2B8052CA-4694-1567-AD28-8680FDB5EE39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1657";
	rename -uid "D3F57CD3-4E37-3083-2F18-B1A8A104A92E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1658";
	rename -uid "14DE4335-412B-6ECE-4626-3C94A8C45176";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1659";
	rename -uid "8D290ABA-4026-FF2E-73F1-768B5DE677F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1660";
	rename -uid "9CC8F7BF-4692-33D9-381A-9BB4FD3762D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1661";
	rename -uid "E37F7041-4A82-4213-00C4-CF8E9225407E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1662";
	rename -uid "5CEC465D-4D7E-274E-B387-ACAFF011A22A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1663";
	rename -uid "7D364471-4538-A9B5-D9A5-5696B607D410";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1664";
	rename -uid "C2131954-4D1B-1213-D312-F5B201804B18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1665";
	rename -uid "1B24DB8F-4977-25EA-3BE0-0B93FE78E4D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1666";
	rename -uid "C8BE6475-49F0-210D-0B45-F9BB68BC9506";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1667";
	rename -uid "2AC8C4FC-490F-1478-EB4B-9EA11E93B67C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1668";
	rename -uid "71314F90-4199-B956-75EB-BA8DB260FDFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1669";
	rename -uid "352C6479-4C73-F2DD-2C87-6CB9DDC81F79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1670";
	rename -uid "7C25AE70-4D4F-AAF4-0EDE-BBAD9A349EB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1671";
	rename -uid "C3E070A0-4EC3-FE4A-C512-0687F79E9A42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1672";
	rename -uid "CD058D7C-4F1F-0BFC-5775-F3A3370CB80A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1673";
	rename -uid "87C93BFD-4137-254A-473D-11ABAE4B35CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1674";
	rename -uid "3CA945C0-4BF2-1160-EE71-94B0F57AEACE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1675";
	rename -uid "2F32C5C5-40E0-C38D-E9E3-68944C012E64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1676";
	rename -uid "0AD036D1-467E-C5E0-D246-EAA9FC42B408";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1677";
	rename -uid "E9432003-4614-1CBB-246E-96A084A7F0EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1678";
	rename -uid "5116F9E4-40E3-1591-AD93-1D8FB29F09BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1679";
	rename -uid "DAF5F494-4F9E-7F52-DBB7-CF8C7CFAD835";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1680";
	rename -uid "D1181A46-4D4C-47D3-B289-E6AE4935206F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1681";
	rename -uid "E038E895-42DE-6EA1-1A1F-A1981397603E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1682";
	rename -uid "EAA5120F-4435-BD90-C732-05B88D834253";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1683";
	rename -uid "D402DD6D-416B-643B-73B9-249AB343A868";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1684";
	rename -uid "44073ECF-49B7-06FB-F62C-1997D200D21C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1685";
	rename -uid "F03867F6-4090-A44F-1D76-4699A6D0B8B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1686";
	rename -uid "4E779C9D-4FA4-40E6-141C-FAB791DA8128";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1687";
	rename -uid "254F4652-46B4-A82F-AAB6-FFB33C07FA2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1688";
	rename -uid "EC7E27C5-4F39-1989-D74E-E9A51E410DB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1689";
	rename -uid "87FB65F3-4795-6AC9-B37B-DAA96E2421B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1690";
	rename -uid "4EFED647-4200-FF52-9BDE-71AF569AC2CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1691";
	rename -uid "E8EB5C29-4C98-0E70-568B-2182C9EFADDE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1692";
	rename -uid "38CDA833-4BA7-342C-C493-EF80C4E6B213";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1693";
	rename -uid "6833B047-4E4B-0B7D-F707-9FACB4AF06F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1694";
	rename -uid "3553955D-416B-CDC5-45E0-D89C121F34C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1695";
	rename -uid "BC63EEE1-4E38-491B-C83C-D7AC121725BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1696";
	rename -uid "E3589CE4-44A8-3E93-A8E6-428232A3A1E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1697";
	rename -uid "F2556A6E-4268-6DE3-2E15-B8843BF3D029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1698";
	rename -uid "1C764FD6-4730-F1F6-660D-37A0C5E47965";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1699";
	rename -uid "CCECD6C6-4EA0-0580-0899-3E9BFF57C458";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1700";
	rename -uid "17207BC5-4307-8A53-0EBF-01B389A5E103";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1701";
	rename -uid "7DEBA1BA-40BB-E733-77A8-A68B71935F47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1702";
	rename -uid "A8F09B5C-4A0E-988B-80D1-E0923281D59D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1703";
	rename -uid "A35A984B-4781-D7DA-8BE1-60A1A168B231";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1704";
	rename -uid "438A49BB-4E25-9597-EF21-A6906810C033";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1705";
	rename -uid "4A302EFC-4175-89FF-1048-88851DCF4696";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1706";
	rename -uid "A4870581-4BFC-E1E5-9EF0-EA88F325885D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1707";
	rename -uid "9EC3A4BC-4FB9-1A9F-5675-70A3A6658180";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1708";
	rename -uid "E2305D1F-4AFC-F596-06E5-538F32DB4988";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1709";
	rename -uid "9604DDC5-4A55-95E1-0BAF-5D946FF30E35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1710";
	rename -uid "2B53233F-46D3-8879-A618-979B81CE7D53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1711";
	rename -uid "8BD62587-46C9-D1C0-2B4C-8B8A47CB1536";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1712";
	rename -uid "3BE32F20-491D-D2AF-1543-40A704F6FB7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1713";
	rename -uid "61C96332-40A0-4351-1055-2D99EE58DC7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1714";
	rename -uid "60291398-4771-6ED5-8743-E3962C5D9CF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1715";
	rename -uid "061B90F1-4399-1C44-9201-17A13623C561";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1716";
	rename -uid "940BF9F6-477B-AFB6-F0A6-87AD3E9DE79E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1717";
	rename -uid "90D8FFF8-4B81-744A-9981-D583924DB400";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1718";
	rename -uid "3F08960B-46DC-C5D7-DC81-62A7F244552F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1719";
	rename -uid "0E16AED6-42C8-3357-45BB-698926CCF98D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1720";
	rename -uid "B35E130A-42B3-68E0-09E6-20A2748D18CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1721";
	rename -uid "F686E66F-46F5-906A-1D62-F486712CB7DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1722";
	rename -uid "2190FEA0-4A04-EF4F-CBDF-8782C26534C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1723";
	rename -uid "F1946B29-4591-1FF8-0C24-E9B12CBAB7DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1724";
	rename -uid "D1AA4A69-46C8-4BBF-5014-9382326025BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1725";
	rename -uid "6455E407-49CB-1DFD-A892-FF87DC8BD917";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1726";
	rename -uid "98F335A3-4D77-FBC2-6E8A-0D9FF53DE9C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1727";
	rename -uid "C3A81980-43EA-1950-C748-B5B46C5493BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1728";
	rename -uid "319DF4D4-4161-F0A2-F08F-E38D1C1A9568";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1729";
	rename -uid "6269B034-4BFF-CEBC-ED35-AF8A2A250421";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1730";
	rename -uid "00A03DE1-485C-3EFB-F65C-15A6719E611F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1731";
	rename -uid "CE74781A-4D96-EA8D-3F6A-7EAD06601B40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1732";
	rename -uid "DD716752-4995-0CA1-7EFA-628A9A4D8EB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1733";
	rename -uid "BD0138A3-4F21-9219-7758-678DA4D9CFFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1734";
	rename -uid "96308D8B-4335-BF55-C246-928D2094C67C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1735";
	rename -uid "388165D1-4256-35D2-8EFF-54890BE8D584";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1736";
	rename -uid "54E1726B-4708-3BAE-B6A7-1A932BCFF6F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1737";
	rename -uid "2376BCED-4648-F952-FDC6-B3AB9F467B0A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1738";
	rename -uid "0BAE3D2D-4F3A-802C-5526-B09C91ABA114";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1739";
	rename -uid "E1DE7215-4C7C-3050-32EF-0483004EB932";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1740";
	rename -uid "CA508D4B-44E3-507F-3128-03913AD49BFC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1741";
	rename -uid "A4DEBE08-4120-B810-A8EB-6CB15AE54AD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1742";
	rename -uid "EAC49CDB-404D-291F-4F4E-0EAEA2540454";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1743";
	rename -uid "3A48B25D-46EB-3338-3513-A799BEE86F7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1744";
	rename -uid "E44CE8DF-47E1-AEC8-1A16-86BC069385A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1745";
	rename -uid "C2603CBE-41F4-19E2-A862-E097166DB977";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1746";
	rename -uid "3B3A9FD6-4E13-A280-1268-53B261253D6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1747";
	rename -uid "EC13E22A-4F89-DD75-3C57-C98C33FEB784";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1748";
	rename -uid "921801E5-4460-830A-524E-E49374033C95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1749";
	rename -uid "1C0FF616-4521-AFA2-3EC3-6D8E4A1B0537";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1750";
	rename -uid "AF0B579D-422E-0170-0DA4-09810CCE5A89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1751";
	rename -uid "CF8C2297-4A46-FF27-F093-E48E40922993";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1752";
	rename -uid "C6B0BDB7-4999-7FD5-83D8-708F1FE5D69F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1753";
	rename -uid "66BB9126-4D8C-4608-AC71-32A271817880";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1754";
	rename -uid "E3D36B06-4078-D934-1F9F-B5BA6F8E4C18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1755";
	rename -uid "6C53D211-4703-0BC7-6A2D-528415472F9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1756";
	rename -uid "290F2180-4628-CBB6-D080-8BB53551C87A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1757";
	rename -uid "8A394ADF-4291-4D5B-BEC3-47984B5EE27B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1758";
	rename -uid "D22711E0-4F1D-2B46-C65B-5395018179E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1759";
	rename -uid "EF6091FC-4708-202B-06D0-31B37B322FBD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1760";
	rename -uid "6C13A2FB-4524-EEC4-EA7B-CBA8AD93F2AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1761";
	rename -uid "53311B4F-4461-5AF7-2E79-D390221249CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1762";
	rename -uid "07E070B2-4725-CD00-DBCB-90BA5275F578";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1763";
	rename -uid "FE453D1E-41DB-861F-DA60-0699289DAA8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1764";
	rename -uid "0B3D5652-4BAC-9C72-94A5-7B81BD1654F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1765";
	rename -uid "98ABFEC5-416C-CCF7-8D2C-A388E7421723";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1766";
	rename -uid "70E3C4CA-44FD-587C-E081-BB84FA980C2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1767";
	rename -uid "F6F03FA3-4587-EAF5-DB2E-C9853CF6417E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1768";
	rename -uid "941A577E-4DD4-6C38-6501-DBA9E2E3CFB0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1769";
	rename -uid "1C08E8C0-453B-C938-DB47-6B991DE4537A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1770";
	rename -uid "D2148DA9-4D14-6820-EA3F-0B8C814F3416";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1771";
	rename -uid "99C0D125-4746-51E1-B749-E58D9776B029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1772";
	rename -uid "3AAFFF1A-4882-0518-F964-1E92B7840D10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1773";
	rename -uid "39629023-4C80-E320-047C-D1AAC3D640ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1774";
	rename -uid "9BA129E8-4544-3DB3-44A2-9EA5C6F3EE96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1775";
	rename -uid "1B0E3C12-482F-AC6D-5370-17B6DD85D81E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1776";
	rename -uid "A03CD0CF-4F47-FFB8-D6A5-148A535D76A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1777";
	rename -uid "FBE3F7F2-4F0A-DD21-6109-6E96A03FC563";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1778";
	rename -uid "B8F71214-4233-EF13-C1DD-EEB63518EC46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1779";
	rename -uid "44088358-4275-474C-E644-978A71E47025";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1780";
	rename -uid "BC26CB54-4BBB-DFA4-A261-B1B7C82F7ED0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1781";
	rename -uid "4F348FCE-4936-9E30-3B46-2B9EF3DC4032";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1782";
	rename -uid "D8C9B1D3-43F1-250F-B887-449C11EDA0B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1783";
	rename -uid "287B6EB8-44AA-2CA0-CE27-829F69C10225";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1784";
	rename -uid "0C9F0C99-4FF5-BC2E-103A-31B048B2150C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1785";
	rename -uid "695D2B73-4789-3A12-8360-4BAE1ABF00B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1786";
	rename -uid "40DF8E3C-4338-80E3-CAF1-E4960259A06C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1787";
	rename -uid "3D9DBB53-4D68-78C9-6657-1090924BB4DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1788";
	rename -uid "08255ADD-42B5-703D-4AE2-C5B5E09B5A76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1789";
	rename -uid "64A935B1-49FE-1164-FBF5-16950A2112C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1790";
	rename -uid "BE90E162-436D-F9DD-4666-0C9B7DE68D97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1791";
	rename -uid "9A4540D2-4ACF-4168-86AB-C3ADC71867CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1792";
	rename -uid "D97E48DC-4787-48B5-12C9-3B82B7626FB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1793";
	rename -uid "8CACB265-4D73-729F-A042-A78FEEC06CAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1794";
	rename -uid "DB84A008-4F34-54CE-17B5-998F92AEFA11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1795";
	rename -uid "34A6A89E-4EDC-095E-DF1C-ACA173AB1BB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1796";
	rename -uid "F52A5E63-4999-4648-1330-3D93A47108A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1797";
	rename -uid "BFD1BF1C-4D32-D594-78EC-3DAA847E26E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1798";
	rename -uid "1B0F7A85-4818-233E-56D3-BD94BC5C9F71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1799";
	rename -uid "6D47B57E-45EB-60E2-3B5C-808606D06A6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1800";
	rename -uid "D9C635FA-4013-15A9-674C-DFB9DBD429FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1801";
	rename -uid "BBB94705-4879-0DDF-5C01-23B3270B0699";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1802";
	rename -uid "DB3A9E56-42B7-8350-D9FB-1C857B1C0F69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1803";
	rename -uid "2669B183-4A2A-B6B7-A363-3FB7FC6BB654";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1804";
	rename -uid "6ECF2948-446D-6A0B-5BDA-41841CD8EF05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1805";
	rename -uid "82D9C42F-4F1C-A8DE-787E-D0BE0D91F286";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1806";
	rename -uid "D804948C-4F8D-1BF9-9822-BB9E216764A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1807";
	rename -uid "0E4443B9-48AD-2A57-3A8B-96B9572B2FAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1808";
	rename -uid "BA89A52F-4CE6-EACA-1C41-8EB9ED6EB231";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1809";
	rename -uid "D3EADF5A-4129-EDD0-4FF2-5C955784A7A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1810";
	rename -uid "6BD8FD58-4297-26A9-28E7-4386A1845288";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1811";
	rename -uid "D0B100AB-4FA2-9BE0-0E4B-03B0E143500A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1812";
	rename -uid "B219433E-4CDD-790F-7110-B68B861FD6CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1813";
	rename -uid "70C9341A-4198-6B9F-D016-A8A3BC750F2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1814";
	rename -uid "C620397F-41A6-F0CE-A7E3-85A65BF7B647";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1815";
	rename -uid "BA93DDB9-4E2D-15B3-6971-99934DCA011D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1816";
	rename -uid "B18BDA6D-47F4-B78B-0B10-3B8C922B0EEF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1817";
	rename -uid "E33FF09A-43CA-75A0-73B0-3ABF569FCE51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1818";
	rename -uid "B4DDBB25-4C5F-0867-83D1-20902CF08913";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1819";
	rename -uid "CBE93ABB-44CD-47E1-8B25-32B25B610A93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1820";
	rename -uid "A4B94453-4DDF-DEEE-7E22-43AD73914B57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1821";
	rename -uid "174BC29A-4185-F316-3ADC-FDB4FFACDF5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1822";
	rename -uid "911FB133-4A1E-2BE2-C9AF-2FAF71C3ED45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1823";
	rename -uid "34206C1F-4001-D335-5F31-C6AD8B550B6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1824";
	rename -uid "E2E01020-43AC-7018-E65D-EB9B0C0021F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1825";
	rename -uid "0C757C00-465D-9962-BE27-DE97AA7403C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1826";
	rename -uid "DF02E2F0-4800-9AD1-4A45-DDACFB0B32DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1827";
	rename -uid "1C6CE279-488B-6BDB-B23E-D48E4773B14D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1828";
	rename -uid "FD897227-44C8-D7AB-AD5B-27AE081F447C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1829";
	rename -uid "DDC10006-44AE-C10C-48F9-A9AD3E3AA315";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1830";
	rename -uid "8A338CD5-4815-E401-D70A-EA8FB4C73C6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1831";
	rename -uid "0182E50E-4B65-D2D6-86B3-E9A9D711DBD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1832";
	rename -uid "77C1C44D-4F78-26B4-7B70-3E975C536F47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1833";
	rename -uid "933E9805-49D9-8AA4-D5D0-F4B2472999AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1834";
	rename -uid "CB61EB5C-48F0-DF88-D5FE-1EB7987F4339";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1835";
	rename -uid "EE455292-4D93-E9ED-A213-D0B2F7C75121";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1836";
	rename -uid "57B6F1DC-4CA0-EB2E-5BFF-1FB77688A865";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1837";
	rename -uid "B31C505A-4ED1-305A-1978-7EBC5E6675E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1838";
	rename -uid "FECD0CC8-4697-F947-F245-4D84C3D5D77A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1839";
	rename -uid "2CCCADC1-420B-D4CA-67B9-B0B3915155D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1840";
	rename -uid "7CEF5587-4B47-F93B-D4D1-409629F1E3DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1841";
	rename -uid "385DABD4-443C-FEF8-9162-73B1432A2070";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1842";
	rename -uid "E9013C8C-415B-EC51-490D-D7ADA9EEBB07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1843";
	rename -uid "BEBC36D1-473B-3C16-05FB-5C8A49F543EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1844";
	rename -uid "A73D146A-4DEE-E94B-D2B3-BA8A7A3FD777";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1845";
	rename -uid "E85FC447-449F-24B8-3E9D-4AA6167D76A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1846";
	rename -uid "241D32CF-4483-FF80-9A7D-1D9ED759D844";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1847";
	rename -uid "215AFC5A-42C6-A0C4-FB33-128EC52CCA3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1848";
	rename -uid "E67BB15E-4C9E-D255-A7C6-C8BF2057214D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1849";
	rename -uid "DC68DE5A-45AB-C95A-626C-30B839BF3B90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1850";
	rename -uid "92AF8382-4A13-8F22-988C-03B08F48D9B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1851";
	rename -uid "F931335B-441F-3C2B-B548-999F4B102610";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1852";
	rename -uid "61DAEE89-4732-6A03-4C8C-16AE38A4EF24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1853";
	rename -uid "0F0EF7CB-4C19-E3AF-1CA2-9CAF3C36F651";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1854";
	rename -uid "DA089656-4164-4BF4-AA9D-E493A8820FB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1855";
	rename -uid "68EA780D-468A-9FC9-16E2-A69F1984361E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1856";
	rename -uid "E2578BC6-4BFB-A1A3-50F5-D287A07FDB56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1857";
	rename -uid "9D7C0F26-4A70-6A2D-9344-6F8CD9B42E88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1858";
	rename -uid "D221AB51-40C6-8429-ACFE-F3A09176C10A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1859";
	rename -uid "E255DE85-45CA-93C6-85BE-ABB1E62B0BB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1860";
	rename -uid "D5062E02-44ED-6B4D-62ED-57BBCA4DA037";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1861";
	rename -uid "3FC940F8-4C58-AB63-C00A-D98BF5AED702";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1862";
	rename -uid "55DDB391-4DDF-0A61-B024-449FC292A740";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1863";
	rename -uid "DBCDEA03-45C2-32FB-BB13-5F83C17D432E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1864";
	rename -uid "5CD5A14B-469A-3084-98EB-43AD2E005BC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1865";
	rename -uid "E6D028B8-4B04-041D-FA48-BAB2F444954D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1866";
	rename -uid "70A17743-4B4C-D00A-4FCD-EDB95E738B45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1867";
	rename -uid "C173E986-4DB5-6D2F-CFF6-31A04953A769";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1868";
	rename -uid "A7212551-42E4-C222-4E6E-5C846F077A51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1869";
	rename -uid "11B078A4-439F-9D56-1FCA-F49824A2FFEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1870";
	rename -uid "4F4BAAD3-41EB-2CBA-52E7-90A97EAD5331";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1871";
	rename -uid "FAD69420-4C73-E08D-8866-F09AC06E1B7C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1872";
	rename -uid "680BA2D3-4240-A5F5-DFB6-63BE2B0209B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1873";
	rename -uid "8F0741B9-483B-5809-2E70-78AFC89836E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1874";
	rename -uid "51097B9D-462B-DCB4-E634-7EB71F0E3631";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1875";
	rename -uid "64F950EA-4EAE-0CD8-6439-FA94CA0E01C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1876";
	rename -uid "3DA653F9-492B-76AB-B6A6-85A144422F4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1877";
	rename -uid "A5FDA30C-4EF2-FD97-1EE7-D6AECF644E4C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1878";
	rename -uid "0CC0F979-486E-8151-A496-F7BE00F03FB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1879";
	rename -uid "D5C3EBD3-4AA4-A0D1-5DAB-8D8AD5405DD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1880";
	rename -uid "9D455513-4B9B-4129-6C0D-D1B30EBB0022";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1881";
	rename -uid "3B0277FB-4AD3-793E-43B9-55BEEE54A20D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1882";
	rename -uid "A88EE7CB-478A-5735-088D-21A5499AA94F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1883";
	rename -uid "03F4EB73-4DDB-A517-F13B-C8ACFC5AC4CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1884";
	rename -uid "3510D927-4F7A-BBBB-7B43-65A939BB6C31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1885";
	rename -uid "A589BBB6-4388-2DD4-4169-FBA89347AE01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1886";
	rename -uid "A84B4FE8-4A22-3706-029A-1A9C44BE5F14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1887";
	rename -uid "3BAF6C9C-4BD0-DA94-3E2E-7C8AAE0B6B6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1888";
	rename -uid "51A8F25F-4C48-28C9-4F3C-1DA451499CCA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1889";
	rename -uid "A7817FD8-411D-9F5D-9A85-13B4A7190FAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1890";
	rename -uid "E5F534CC-4D4D-8C46-3BB7-2684E7C307B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1891";
	rename -uid "4E3BF6FA-4FC1-4462-2582-F99EF7695553";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1892";
	rename -uid "1DBCDDF4-4A50-06EB-CA20-5C99D683F420";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1893";
	rename -uid "333A014C-4CA0-28D5-8AB1-5D9C9B57101F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1894";
	rename -uid "F9F19304-47D6-9B74-511D-F898F7406243";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1895";
	rename -uid "EFC7495E-445D-983D-8858-6D8CB7AAE053";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1896";
	rename -uid "82896795-4CF1-CC9C-3026-DA96B06F9D0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1897";
	rename -uid "9E012395-4CAE-0FF1-610A-7AAF884AC497";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1898";
	rename -uid "992FA573-4325-4ACA-6626-8A9B35CEF955";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1899";
	rename -uid "67B9C3A3-4755-4D23-1694-308C76DEFE22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1900";
	rename -uid "62777DFC-49D7-D2CF-DE11-F4AD0013B29A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1901";
	rename -uid "8A7E0D04-47FC-DA83-3A78-2492CBF73183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1902";
	rename -uid "FC56A4B1-4A4C-9359-62F0-38B58EC8F2AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1903";
	rename -uid "B83B3C36-4620-507C-77FA-F79EA20A38C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1904";
	rename -uid "95BADFB1-466A-5546-5152-9CAD56D9CC72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1905";
	rename -uid "BC491613-49A4-29E3-C7A4-C8BDD369F488";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1906";
	rename -uid "3E6D28C0-43FB-52D1-2C9A-31879B50CCEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1907";
	rename -uid "34372861-468B-ACA8-D1F2-6AA8251AC42D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1908";
	rename -uid "D480B5E3-42F0-C1E3-DFED-DDB4A042B941";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1909";
	rename -uid "3F575B20-43D2-7BC5-8A9C-4BA9DAADDE03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1910";
	rename -uid "C965515E-4E3B-12B8-1D0E-CE971E292205";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1911";
	rename -uid "ABA3DEB6-427C-FC65-20ED-349650B795B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1912";
	rename -uid "6C1CACCC-414A-01AB-30B5-218C0993F98B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1913";
	rename -uid "D85306CA-4B1C-D19C-1D19-A19A810FC083";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1914";
	rename -uid "569BB850-42CA-1512-3415-A49A63B46751";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1915";
	rename -uid "430AD264-4F8D-BFEF-CE30-389A18700D30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1916";
	rename -uid "5C9F523E-4EBC-381B-6AB8-0D8BA40F514B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1917";
	rename -uid "FAD9D90D-451C-2EBA-594E-1185FB112DFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1918";
	rename -uid "29F18F70-479C-8F00-3D94-ABAC69A4B172";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1919";
	rename -uid "02EE92D1-44A3-55C9-9519-62BB21CA4BF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1920";
	rename -uid "C84593DD-49C3-D058-5811-9E9044D98EF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1921";
	rename -uid "4BFA77AB-47E0-9F1C-ED88-468C889B4369";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1922";
	rename -uid "0C670136-4855-1305-9E18-EEBF44EE91EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1923";
	rename -uid "B1150FAE-4851-92B4-1B85-5BB53C9CD442";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1924";
	rename -uid "02D5442D-4D7E-732D-9618-FFA48CCC8017";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1925";
	rename -uid "EEB53305-4CE2-2C6F-FAE8-1B8465A4E04F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1926";
	rename -uid "E90E3AF2-4DB0-A1DC-2FF2-308FF2CC76FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1927";
	rename -uid "D0A45814-4381-08B3-14DB-6885351DFC04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1928";
	rename -uid "2745149E-4569-613D-1971-C1AF2B1B43C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1929";
	rename -uid "563A2408-49B0-DD66-1C13-ECA7CFF3AB86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1930";
	rename -uid "367DCEEB-4427-19CC-FA7D-AABC01C25B60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1931";
	rename -uid "C1691EF5-4EC6-86C1-3BB5-A0AAAC89B720";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1932";
	rename -uid "83A20C02-4851-FE38-029E-CEB871901D90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1933";
	rename -uid "074A486C-4989-A793-836A-41B6888EBB6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1934";
	rename -uid "20E48678-4B0D-65A0-AAE7-42BAE15E2197";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1935";
	rename -uid "B861A89A-4889-1716-EB03-9A8823E02289";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1936";
	rename -uid "6E0CAFA0-425F-0966-327A-64921DEE5174";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1937";
	rename -uid "8B6CD1EE-4C92-FBEE-25A4-ACAB564BDB6A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1938";
	rename -uid "9A44CD63-41F7-EE9D-E3ED-148EE1AEDACA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1939";
	rename -uid "76A66608-48C6-9DF2-FF43-FE84ACFA55BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1940";
	rename -uid "72DE4883-4F34-3BF1-42E0-6492E8FB0F96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1941";
	rename -uid "302F7B2B-421B-B054-935B-3EBB5207BC37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1942";
	rename -uid "3E601B4B-4DB7-2876-06BF-A4B99928EA7C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1943";
	rename -uid "C22C6592-4643-2079-D437-5D8BCDB5A861";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1944";
	rename -uid "8C9621BB-444A-0FC9-C949-0C8D4DBF63FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1945";
	rename -uid "8B1429F2-4AA1-CC46-4F2E-718EDA66D473";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1946";
	rename -uid "1D8EFEC2-4AA5-8FE6-33A9-698405036187";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1947";
	rename -uid "52CD8007-4E19-4ED7-87F6-B98D4D910891";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1948";
	rename -uid "FD67CBF8-4D7B-5037-1CE5-06A709B5FBE9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1949";
	rename -uid "B03239EC-401C-CD90-1EE6-5CAABD7165F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1950";
	rename -uid "EF6BB27E-4080-A790-9F3C-4897704CC214";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1951";
	rename -uid "B51DAE0A-4414-A280-D770-9BA6DA66B7AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1952";
	rename -uid "5523A1B3-41EE-9999-2DE1-D9A3B503835A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1953";
	rename -uid "1F68C163-4F00-A11C-5405-7589719271E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1954";
	rename -uid "0D443D08-462A-BB1C-66F4-4FB22A99D38B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1955";
	rename -uid "110513FC-4CAA-FF36-D271-2FB0DC2D792F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1956";
	rename -uid "AB78C64F-46A4-A4D5-4194-EDA7AC03881C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1957";
	rename -uid "F8DE4602-4714-5037-910B-42824DF66DDF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1958";
	rename -uid "CD635D0E-4AA1-5876-E10E-CDA93CE37157";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1959";
	rename -uid "51F3E3AF-47CC-23AE-A982-54BD44CE14DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1960";
	rename -uid "231F8807-48C9-E88A-37A4-1EBEB6BC8810";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1961";
	rename -uid "F994726C-4C28-ECB0-2CBA-39AE63C71B52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1962";
	rename -uid "2E772A82-4A71-F0B6-9B20-29A8156546F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1963";
	rename -uid "C9167FD9-488E-12E9-ACF4-5B93C3A56BBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1964";
	rename -uid "D5E0F2DE-4677-142C-DA4C-4C9CE8FD6F94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1965";
	rename -uid "0B115F32-4297-F021-BE88-FC9A819B05D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1966";
	rename -uid "C609E89A-4AFF-E1FD-2118-B6806CE21420";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1967";
	rename -uid "EA20D5DF-4608-AAFF-D7DA-BA9F0A861F1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1968";
	rename -uid "C55B5374-462D-261B-1D95-459CF06BB432";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1969";
	rename -uid "63AEACCC-4E4E-C6C5-2310-39A96F63C365";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1970";
	rename -uid "C453D344-40C6-E0F4-0E41-0BA3CB05E217";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1971";
	rename -uid "F7E3F086-4097-0A7B-CA25-FBADBF130490";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1972";
	rename -uid "F67BCE98-4CED-CE18-EE5B-9A966F38B465";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1973";
	rename -uid "823E2076-4016-762C-ECA0-54946B50FAAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1974";
	rename -uid "2D56FA49-4A90-D76F-E386-7194CD824FA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1975";
	rename -uid "44CCE4F6-4BF8-BEDF-0545-FAB1CBFC3D86";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1976";
	rename -uid "6799F3F1-4AF1-2FF9-484E-16B933B5FB32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1977";
	rename -uid "63765651-4BD6-42F0-F4F6-DB8E1065BCE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1978";
	rename -uid "DC3E5986-4B4F-1C1F-2119-188FE42149FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1979";
	rename -uid "8BA37F11-4154-02C0-B55A-6E9149D781CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1980";
	rename -uid "F4C93184-4909-A052-B40B-49997A9E2115";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1981";
	rename -uid "BD34D24D-4439-F32D-9379-6E8EBBE1C941";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1982";
	rename -uid "817F3924-4E93-6467-20DF-728AD172B6A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1983";
	rename -uid "0C149D80-40DB-AB0E-5E87-A99E76366635";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1984";
	rename -uid "D5FC532D-425D-F192-9837-32A127154622";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1985";
	rename -uid "D1282FDE-410B-38E2-AF42-1D98FAF12794";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1986";
	rename -uid "95E191D9-46D4-98CC-7C7B-C4A0978A4228";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1987";
	rename -uid "7DAC402C-4B71-AC12-E24E-A8B3147E8CB8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1988";
	rename -uid "E2190F69-4922-F138-E1BC-5BB0553C44AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1989";
	rename -uid "D2B3333D-48AD-1388-7A08-C7A21B78F954";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1990";
	rename -uid "52A8C45A-4F40-6F1F-83C5-22A6A3B35D56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1991";
	rename -uid "A07E6210-4536-76F7-6AFA-3C9D66EC2B05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1992";
	rename -uid "803B3E3E-4435-E712-BAF0-AFAAA002A90F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1993";
	rename -uid "BFBFE5CF-4387-D69D-2E18-148BA63AD52D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1994";
	rename -uid "436AD9DB-46C4-2983-C3CF-CFA2A0D90422";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1995";
	rename -uid "2D4394EF-4A9E-B629-49A6-A6899CE9EA39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1996";
	rename -uid "3019AF6F-4700-509D-0EC5-F2A728CF4C97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1997";
	rename -uid "926786B7-4AE5-2D66-BA0C-1889FFACF7C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1998";
	rename -uid "514F8357-4A64-3BA0-5363-8BB9A12717A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1999";
	rename -uid "D64F5C52-4584-54A2-8C80-1F8CE0FC393C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2000";
	rename -uid "F7930D6B-404D-74CB-90DB-B1966E15C5CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2001";
	rename -uid "53E5EED6-45AF-AB7C-E37D-03AAD1D3FEF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2002";
	rename -uid "68A83854-41A8-54BB-8327-98BFE44717BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2003";
	rename -uid "42F1D6F2-4EC3-376B-0DBF-40BC08AC213D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2004";
	rename -uid "1D012FFC-4703-0041-CAD5-CB85AF61E764";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2005";
	rename -uid "3F725A34-4FA8-0B77-3D3E-5EABB0454536";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2006";
	rename -uid "3F0B2A96-4CAB-8EE4-CE83-E09D2AD896E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2007";
	rename -uid "BDEE0DE7-4121-39D9-E584-6BBC7E5901D9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2008";
	rename -uid "EA818B6C-4377-B0F1-A17D-068B4E0D0232";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2009";
	rename -uid "D2DE5E59-4E1D-11D4-33A4-61B725ED4F52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2010";
	rename -uid "657B0CF9-4386-9287-9E8E-2BA22316E042";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2011";
	rename -uid "6698AB67-4C77-B2B6-E9F0-2DB466A92092";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2012";
	rename -uid "306025F0-4534-9AC4-7B36-FB8331C45A91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2013";
	rename -uid "BA62A312-4D4E-EE08-9B2E-01A9FAE3AF4C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2014";
	rename -uid "34C7E8F8-43E7-9405-E4D4-CC8E4F55890E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2015";
	rename -uid "619C9E51-45FC-6487-F1D9-AFAC2A9AD068";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2016";
	rename -uid "CDC7C563-4901-0EB1-8395-14A189ADFA1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2017";
	rename -uid "C6DE6651-4942-0FDF-FE19-D3971D599B08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2018";
	rename -uid "6F8FAE69-4E76-2885-3A63-2285FE808045";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2019";
	rename -uid "C93EC720-4846-A53F-CA4C-67AF876910F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2020";
	rename -uid "B9A4E803-40CB-BA6B-FB20-528D844EFA64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2021";
	rename -uid "B20E93B7-496B-C8A9-2A68-C3925BB7B308";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2022";
	rename -uid "A1ACAE3B-47BD-D6F1-4F06-95AE1370BEB2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2023";
	rename -uid "95C6B739-46A0-A8A8-54ED-568317437A59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2024";
	rename -uid "1FEF4300-4F18-81E1-36D0-A4BAF847A1CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2025";
	rename -uid "3F7869E7-4E6A-A27A-CDE5-52B72D47627B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2026";
	rename -uid "05A894C7-4ACC-6EC7-2B6D-E9BE7B170C8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2027";
	rename -uid "96E3E711-4587-8ACA-7DFB-1795951A1A21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2028";
	rename -uid "DE37D984-4904-ED27-F25C-7B86D045A733";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2029";
	rename -uid "B099EEBF-4EBF-D9DA-D69F-16806B1FA73A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2030";
	rename -uid "CF522A65-4066-A5BF-455F-07B2C9300710";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2031";
	rename -uid "29EAD75F-4116-723C-FA2B-01AE3C6BE757";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2032";
	rename -uid "45F482F0-499A-A554-6391-B3BA0813D11A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2033";
	rename -uid "DA80FB19-4943-C960-C43E-AC9664D09DA8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2034";
	rename -uid "8C3B990C-4F66-BE64-4555-DBA91C163DD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2035";
	rename -uid "2453BF6A-44B5-A1AC-89A3-71891EE5F7C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2036";
	rename -uid "D848E405-4382-76D3-0839-7AB72C281A2C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2037";
	rename -uid "8EBE375A-4ABA-6CCB-4024-AD8B30497679";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2038";
	rename -uid "DEEFA3A2-4EE8-0822-C0A2-EAA095FD22B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2039";
	rename -uid "384F1D99-4AD0-9D93-6F59-D0890714B4BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2040";
	rename -uid "FC6F873A-418D-CEA9-F6A7-4D9837757730";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2041";
	rename -uid "1AD9C2AB-4574-FED6-B395-F5ACECA25ADA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2042";
	rename -uid "5F18C181-4C3D-43EF-54D1-51A242F7E5C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2043";
	rename -uid "3F86AEB6-4718-B03C-6EA3-629445F7D3C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2044";
	rename -uid "5815F662-4AB6-52D9-D59B-C9A91BB7F2BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2045";
	rename -uid "97CC7F0E-4FE5-A001-6D53-3EBE6FAB9D05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2046";
	rename -uid "2A015074-476A-E9D7-E2ED-C9A41EE2F498";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2047";
	rename -uid "A9C41B7E-4E37-0D32-739F-27AAA516D3A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2048";
	rename -uid "396C9031-4967-B77F-1BB1-32861B976DDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2049";
	rename -uid "F351384B-45F7-DB7E-3C0A-BFA0ABD65966";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2050";
	rename -uid "974AD561-49F6-0D9B-DF2D-7889BE2DD786";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2051";
	rename -uid "CD5A4D7A-482E-4B7A-7AAB-91B5CCEAA23C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2052";
	rename -uid "00951520-40AF-41C8-5057-8DA9EE006A03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2053";
	rename -uid "B0CAE84B-418E-FFF8-06D3-369760865158";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2054";
	rename -uid "E2CB2FC5-40E8-E96E-BFE9-299E9D4ABE2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2055";
	rename -uid "0EBCEAF8-4672-D06D-76B0-1C8694834F4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2056";
	rename -uid "BF6578E4-4273-719D-330E-088A14B76925";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2057";
	rename -uid "3523633B-49F1-F2F4-DEFC-54AC3574257A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2058";
	rename -uid "29E3A17C-4782-2CB3-735D-11811D27ADB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2059";
	rename -uid "7E07CFD9-4A9F-3693-78BC-ECBBA9206E79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2060";
	rename -uid "59AA84ED-41A6-6C82-3208-2A9CC79DBCC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2061";
	rename -uid "0EFEC9F9-4EAF-AFC6-09F5-759F24294509";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2062";
	rename -uid "C67FCD99-472A-0B65-78AC-8C927308791A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2063";
	rename -uid "FC86BAD4-4EA7-D523-12A1-6C8506AD5F40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2064";
	rename -uid "CCCAF856-49CD-097E-982A-2D9F71F02907";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2065";
	rename -uid "49A148D8-43B6-B483-7F3D-F189A44E08EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2066";
	rename -uid "0828EEBB-4C4F-81C5-3737-74B5655C4808";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2067";
	rename -uid "CA91CAA8-460B-B7CC-34A1-ABAC33A8BA6D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2068";
	rename -uid "C3F6284A-4F82-59DF-79A9-C7947056580C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2069";
	rename -uid "B969E06B-4283-2483-8249-0AAB5624AB9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2070";
	rename -uid "99090E56-477C-D29B-F15F-A99651BED57D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2071";
	rename -uid "B7159113-4722-5819-B136-798713A69D10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2072";
	rename -uid "5FE65C64-4C5C-6BFA-CDF4-2DB6CE729C90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2073";
	rename -uid "E4040725-4CED-2E38-E191-E49ED2BD598A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2074";
	rename -uid "0114CC92-41D6-4C41-07AE-A59381493A98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2075";
	rename -uid "CCE13EFF-4B61-CBCB-484E-8AA2FED90A87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2076";
	rename -uid "ACD060FA-4135-1705-2FAE-E88C1154BEFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2077";
	rename -uid "AEA1B2F4-444A-09B0-8A42-2ABE6EB90C36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2078";
	rename -uid "AFF2F88E-4DCF-CCD3-9D39-67BFD6245538";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2079";
	rename -uid "100CB137-44A0-1DE8-7687-658BC808A6EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2080";
	rename -uid "68585AB9-4B8B-BBAC-59FC-05A6AEDFDCBD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2081";
	rename -uid "44CDB9A9-4D5C-1055-F1D1-02BB4E7FF44A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2082";
	rename -uid "1CFDD6DC-4441-D660-63E0-A58C8E4053B8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2083";
	rename -uid "570C5A35-40E2-7209-354A-199E8FDDED64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2084";
	rename -uid "4A2B68A3-4D96-5FF2-60FC-7BB114C098AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2085";
	rename -uid "E1D2950E-4D33-F597-A3DA-B1BDEA462414";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2086";
	rename -uid "5DCDA4B1-462F-6957-9FD0-858E5EFAA8A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2087";
	rename -uid "1E62ED69-4602-2F73-1E8B-26A8FC978AD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2088";
	rename -uid "1AE3678E-4296-32DA-6FC5-6EB3D03A723D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2089";
	rename -uid "A8AB7B08-48F0-67FE-81CD-E0AED07FFD11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2090";
	rename -uid "29BAA653-4F5A-9F62-EB21-F58F91485B75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2091";
	rename -uid "C10E6AEE-4DB5-6FD3-E4ED-6CB4B6ADD2C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2092";
	rename -uid "97E5E500-4E65-BEED-CDCC-34A964F586C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2093";
	rename -uid "60258675-4998-6231-68C5-FDA478084249";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2094";
	rename -uid "9AEDEE6F-413D-06A5-2E7A-BAA11DA5A111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2095";
	rename -uid "9F61A9AB-45C6-5042-5BA6-119856CD09CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2096";
	rename -uid "BF05B4BC-4249-54E7-2F2E-A7BDF79B6AD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2097";
	rename -uid "0C8A9121-4FB8-611E-F8A4-0697213076E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2098";
	rename -uid "77720C77-4CDC-4F87-9E8C-FDA3D2EBB723";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2099";
	rename -uid "FC268671-4C12-8529-C0E1-B6ACF93C8D8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2100";
	rename -uid "4DF54477-4498-0F21-778A-248FAA8D7F42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2101";
	rename -uid "56A3CBFE-4A38-B620-B997-0EA7635F568F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2102";
	rename -uid "98230F55-44BD-C9A3-CDF6-418BCDD10147";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2103";
	rename -uid "6B31233B-40B7-EAE3-D421-A49FB6FA05C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2104";
	rename -uid "63CB448F-4B1C-6367-B07E-6FBAC15FC99F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2105";
	rename -uid "3E489139-4984-1763-53F0-EE8CE2A451AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2106";
	rename -uid "A75EB488-43AF-A228-B2BC-20A92980D1BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2107";
	rename -uid "24545CAA-43A6-25FB-C371-0E84FCEF300E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2108";
	rename -uid "240BEC4F-47D9-88F0-37F1-8A80216D23BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2109";
	rename -uid "24668F97-4C6F-8175-977E-E8A8AAB8CA90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2110";
	rename -uid "D38713DD-48CE-6F6C-656E-33A4E0EE4A01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2111";
	rename -uid "E19DA739-4D04-DDCB-34C6-1E8632035787";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2112";
	rename -uid "081AF00C-405D-B4D7-8EDE-479E4E1BF75A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2113";
	rename -uid "9819B18C-482A-4C2F-9004-81B259148C75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2114";
	rename -uid "D2044758-4C0A-57E9-F327-53B0C2616DF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2115";
	rename -uid "189BC7E4-434B-7D71-4309-8992AAC063AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2116";
	rename -uid "0B0E70B0-41AF-E4D0-A143-0F9052FCBF91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2117";
	rename -uid "E4404521-4676-4353-DE2D-758A6D7B4929";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2118";
	rename -uid "BCEFCDF0-4148-538C-D019-EC9A1AF9C7D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2119";
	rename -uid "020B5974-4E77-F5CC-13D7-DA97A582D8AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2120";
	rename -uid "FC660DE2-4334-067D-5D13-6D8DFFA9DDE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2121";
	rename -uid "1E5A9506-4132-3937-FD31-D3B6095769D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2122";
	rename -uid "DCF7D625-4035-A946-C429-78943BE79957";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2123";
	rename -uid "1CE80E6F-46EA-0503-D836-51B40D77456E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2124";
	rename -uid "75732D6E-4836-BFDF-82C8-F89DB6E29E9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2125";
	rename -uid "0423896F-407F-7391-024A-B5B05B17C7D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2126";
	rename -uid "66F2DDA6-442E-2FD9-B35E-4B9B58B23CD9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2127";
	rename -uid "2F321B9F-43EA-A593-F51B-0890CDBCB8F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2128";
	rename -uid "9CF855CB-4C9A-C14E-D40F-43AEE6356205";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2129";
	rename -uid "D4E2B2D0-4E18-C7DA-64E2-B08B9D41AC7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2130";
	rename -uid "CB2B4044-4B70-D765-4B74-EBBB7A2EFC30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2131";
	rename -uid "199DF674-495C-D0AA-3518-8C91C6289C13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2132";
	rename -uid "D4B081DB-4AC6-B4BF-FE97-36A0C4A86A89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2133";
	rename -uid "5F55B827-4AC9-63A3-8595-28A5CA2A6426";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2134";
	rename -uid "4E218768-41CA-F7B5-3AF8-15A25DDF8A3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2135";
	rename -uid "82681D1C-4177-34E2-1C46-BB9BFDC9D533";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2136";
	rename -uid "F33DCC57-4825-57E8-C979-A8AC4B0687FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2137";
	rename -uid "AE41006C-4799-C96D-7E3D-2CA2F549288D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2138";
	rename -uid "117BD1F5-4E28-C7BB-BC40-F582E0D1DF09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2139";
	rename -uid "B889963E-4D04-86E7-E9BE-31AC014672F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2140";
	rename -uid "451334A0-4D9A-E889-A88A-348BB259EA00";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2141";
	rename -uid "CC120E33-4B86-EA51-9CC0-53B3201EFF17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2142";
	rename -uid "87014192-4708-0C6F-847F-57B339B5D710";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2143";
	rename -uid "E4ACD706-4DDE-AD4B-A0FA-7DA155C3377B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2144";
	rename -uid "BA549914-4959-5ED2-DFB6-A688A4680F39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2145";
	rename -uid "37C192FB-4589-DAF1-65B3-8C9F0E12D4EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2146";
	rename -uid "87B4E3D8-4C69-7652-F064-7EB18A0EE9B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2147";
	rename -uid "28457C9F-4CBA-4F15-2183-FAAFFEFDDDF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2148";
	rename -uid "9977D1A4-4334-91AF-4A74-35949314E77F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2149";
	rename -uid "DCBF6FF2-4181-70D7-B9FF-50BCB4313C7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2150";
	rename -uid "CE2053D2-4FD1-B25B-D257-9894BC6CE26C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2151";
	rename -uid "7DC12E0F-4788-7EF0-CF3D-BAA9A308FD08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2152";
	rename -uid "E9602698-4528-40BF-64F6-C587BF5216FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2153";
	rename -uid "29B10C2A-42E6-038E-994C-5D92D28F195D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2154";
	rename -uid "154C5790-4536-51F1-F57C-3DB989496757";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2155";
	rename -uid "8E011C90-481F-E5F8-11AB-C185ED00B6A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2156";
	rename -uid "EA3991AA-4AF1-2639-23D8-6F99B40ED204";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2157";
	rename -uid "2D9025AE-4524-6A68-E0A9-38BC38FD8184";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2158";
	rename -uid "EF4F7F3D-4D2F-D6E9-A484-9BB3F4A027F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2159";
	rename -uid "59221EAE-4066-A057-CBC3-D5A110F9E337";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2160";
	rename -uid "208CF974-4D3B-D94B-E767-FE8F75A47E7B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2161";
	rename -uid "0A0283CE-4BA7-463F-FBFA-169345F48AE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2162";
	rename -uid "70F0AC2A-4A34-E3AE-3F3C-E1BEB67ADE68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2163";
	rename -uid "42B85131-4888-5F07-8E2F-39AFCB364893";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2164";
	rename -uid "F40E18D6-4E9C-9C59-DEFB-5B9B1D271DA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2165";
	rename -uid "667D3295-411F-3DF8-3365-718BE3B005B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2166";
	rename -uid "AB8B479E-4633-F2CE-C871-BD9FAE06B617";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2167";
	rename -uid "7BA55E7E-4842-79BA-DCB6-F4A8990A773D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2168";
	rename -uid "57471615-4743-1648-2CE1-26B1E76EC853";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2169";
	rename -uid "3927FED1-47B7-275A-E081-3D933D716494";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2170";
	rename -uid "7407E0A4-461A-7AF9-E4AD-BE89F6944189";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2171";
	rename -uid "9C94EDC3-4E27-5413-F759-CEA18414AE70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2172";
	rename -uid "7F54720C-47E0-E898-4A17-AE94E1463322";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2173";
	rename -uid "80554509-4B72-606B-046C-599D291EF889";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2174";
	rename -uid "118A5F94-451B-DE79-A2D2-A49D7A8E6481";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2175";
	rename -uid "EE718FAD-47A0-03A6-75A6-F2ACF006BD2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2176";
	rename -uid "0A7F0352-46B3-687E-627C-23A9DDFA326A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2177";
	rename -uid "F3F0A17A-42CC-75D9-C128-9EB23098C425";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2178";
	rename -uid "09D46647-443B-E9EC-81BD-3893F5EF8E12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2179";
	rename -uid "19658C07-45DF-B566-E844-BDBB55F0F73A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2180";
	rename -uid "28388809-4802-DCA2-6233-D5B134B60CB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2181";
	rename -uid "7185681D-46D8-6014-01B8-0481D6B53341";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2182";
	rename -uid "3459592C-4C78-B32F-51A5-7A83C5775EB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2183";
	rename -uid "01AD2B26-410F-8004-63AE-7E947F17C02D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2184";
	rename -uid "81D7A2A1-469A-3952-7F2B-8589731E1CA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2185";
	rename -uid "DF71E33F-45C6-BDE7-DB70-F5BFF0000C5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2186";
	rename -uid "596F75F8-4E7E-BF57-EA48-5CA60BD49F87";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2187";
	rename -uid "E4CFFB84-417F-3DF9-CF12-5BA09E4EC75D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2188";
	rename -uid "C0C2842F-45F1-AFED-F660-31AB30CCF0CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2189";
	rename -uid "A7E6B790-4341-6554-F24A-F087D81053A3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2190";
	rename -uid "D08268C9-4E36-3C87-B5AC-BD990E56462B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2191";
	rename -uid "8EEFDA10-45EF-7D67-651D-B59C1CF4AE69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2192";
	rename -uid "B6DC2AA5-4569-E848-5AA1-5B9A82BD0C99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2193";
	rename -uid "B18BDDFD-4D15-406F-96A2-D5A034889B98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2194";
	rename -uid "20BC48A1-41E4-F328-0471-AE86858833F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2195";
	rename -uid "D7C097F8-46D6-AC09-032F-218A3646CD96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2196";
	rename -uid "69F76806-4F03-A3F3-D2AD-3AB20D0B562B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2197";
	rename -uid "8B1AFAE7-42E6-C3A0-B0A0-519A9EED6EFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2198";
	rename -uid "C3789DA8-496A-888B-CAD1-A3A9A514025A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2199";
	rename -uid "5A259B9F-421E-7D60-4E88-F0A1A15031AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2200";
	rename -uid "6AD62AC5-4B6D-616A-1D10-5E9EE2BC01C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2201";
	rename -uid "7B32256E-46DA-A8BA-03E2-C8A7A925F93A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2202";
	rename -uid "685427A4-4A08-BAE6-E173-58B9FE3F7C62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2203";
	rename -uid "5A360D9E-4C5A-8FE4-864E-8FAF5DF63F9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2204";
	rename -uid "A76DA953-47F6-7D51-9308-F599D0FE133B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2205";
	rename -uid "BB3AC36F-47D8-833A-EF50-E0A9B1455CFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2206";
	rename -uid "825C17D6-4F1E-F42E-31EB-B0B28D759081";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2207";
	rename -uid "CD0DE4B6-4EB0-DD11-663E-ADBD6E37D27F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2208";
	rename -uid "0647F32B-441E-F055-D2E9-17A1E23E9CE7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2209";
	rename -uid "E73DB629-4EAB-15FC-AD63-658ECC3D3074";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2210";
	rename -uid "6B045D91-4C78-FDBF-621A-E18294AC62DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2211";
	rename -uid "26F17F94-43BA-974F-F405-CBA77FF85AC1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2212";
	rename -uid "BDC86DDD-40D3-A29C-BCC8-C3986A527CD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2213";
	rename -uid "01B348C5-43A7-C386-EBAA-2F90CCC8AF7B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2214";
	rename -uid "D7C96C2E-4993-CA85-33E5-80834BB02EB0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2215";
	rename -uid "4FA71596-4FA7-2C09-A0D5-FA9C812B41FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2216";
	rename -uid "1F536D9F-46CA-8E0C-A4CA-FDA7F46483E8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2217";
	rename -uid "DDF981B5-4D7B-29F5-1338-B583B8699DB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2218";
	rename -uid "6438742A-4FD0-23F5-1A7F-A0A14F90FDB4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2219";
	rename -uid "8E53DCD3-4EF5-E4DD-3A9C-29B68A0AD296";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2220";
	rename -uid "B9B17596-4931-371C-DDC7-ECA253B15295";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2221";
	rename -uid "62E47175-416A-D576-92F1-8682E2659CC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2222";
	rename -uid "E5CC0CE1-4580-2E63-F896-CE9DA52A0D4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2223";
	rename -uid "37E1D1D6-477D-1165-7513-05B6E9CB0FCF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2224";
	rename -uid "833A0298-47BE-C48F-D8CF-5FBBDE68825E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2225";
	rename -uid "00F645E3-42B3-3E2A-F8E5-EF932AEAAFEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2226";
	rename -uid "2B11E9DE-4CAF-F03D-0BC8-289AA69D753B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2227";
	rename -uid "FEC6F15A-4D8B-6925-AF9A-B0ADF349D9AB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2228";
	rename -uid "0FB70BE9-48E8-9FB4-3A4F-7C8E414DEF9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2229";
	rename -uid "8A4CEF63-4065-B2FA-AE6F-449DA71DAFFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2230";
	rename -uid "FCEF3E72-4D4D-B0AA-8DB6-55844C755FBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2231";
	rename -uid "F75F8C6B-47B2-1E26-58DD-6FB305AD7012";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2232";
	rename -uid "F65DA032-4F20-91C4-6CD4-FA9BB7EF9500";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2233";
	rename -uid "22059B9F-4E9F-DBDB-7886-76AD67BA8A80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2234";
	rename -uid "A66DAB82-4CB3-2B0B-F92D-249B11FCA9FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2235";
	rename -uid "A40F2027-4DF6-6995-C217-2FB8E203D4FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2236";
	rename -uid "6A7E5F53-45C6-58D7-9CE5-F0B27467933C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2237";
	rename -uid "11FD4BC9-4A40-CEC2-2B19-A8BEB2E5321D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2238";
	rename -uid "E6F79ADE-4D9D-E3A0-A660-CC899C8ACB2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2239";
	rename -uid "AE3D3598-4B80-E953-E0D6-7C9951A54C91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2240";
	rename -uid "C48326E1-4D9D-AF74-A168-579071836A81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2241";
	rename -uid "A80D3149-4002-FCFC-E338-31A55A2FD3D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2242";
	rename -uid "13C508CF-4FC8-C063-2136-9FA31FC3F4CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2243";
	rename -uid "458732A2-4DA3-B860-DA2B-0AA7E40EBEB3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2244";
	rename -uid "AC66FB71-4997-91EC-77F4-E5B1FCEAA003";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2245";
	rename -uid "968FB3D1-46DB-9018-AD02-31876163A3A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2246";
	rename -uid "010C8F99-464C-47D8-2726-B4BCF6D68340";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2247";
	rename -uid "45C84C4E-4C62-6639-E9C5-D6A0F64C9DB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2248";
	rename -uid "C876697E-4592-2F55-5CC2-EC946307019E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2249";
	rename -uid "6F3A5CE7-40B4-F6C2-BDCF-D2B1ADE1244B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2250";
	rename -uid "24720A12-403D-8825-4C77-83AC701C63E6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2251";
	rename -uid "2DDFC28C-46CB-5183-525F-65A250B3E5EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2252";
	rename -uid "AC0CDBDA-471F-9766-5D37-24BA00594F3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2253";
	rename -uid "9FEFCC9E-4309-F2C5-2FD8-A69FD70AC5A0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2254";
	rename -uid "6BB924DF-4BDA-0136-0877-02B3C039DD82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2255";
	rename -uid "ECB3CD17-49D9-1E00-608C-C2B1E531EAAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2256";
	rename -uid "E7735784-43CF-7659-5E84-1DAFD2235C13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2257";
	rename -uid "FE7AEC72-4E70-4CC3-01C2-6E8D6A7062C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2258";
	rename -uid "F61F6E25-4D4E-64FC-893A-76B70D36FDED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2259";
	rename -uid "3F4A7D81-4D96-C92D-6AFE-7E84ADC8E1A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2260";
	rename -uid "357DAFFF-4125-007A-4633-D7AEA22EE0BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2261";
	rename -uid "2E17A0F2-4B0E-48F5-1811-89BF6D30F398";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2262";
	rename -uid "2F723280-41A5-9CD8-5232-BA80377B5C82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2263";
	rename -uid "AA20E814-4E3C-00FB-0200-72B8D9471238";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2264";
	rename -uid "22A0FEBE-4BCC-2015-D1AC-04A567B1CF27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2265";
	rename -uid "A8B3F0B0-4CE4-BEB4-C035-88BFADF853BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2266";
	rename -uid "CFE86072-4889-0502-8277-B39A06B1C1BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2267";
	rename -uid "E2C5392C-43D7-2D30-6419-8BB9A85777CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2268";
	rename -uid "B36C2BD2-4724-DCD5-DFC9-88B82B9FD5A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2269";
	rename -uid "2B5EA0D1-40CB-148F-B78C-2D9C3EADED2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2270";
	rename -uid "B05D1357-43C2-2F45-CFC6-24A4D4CD805B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2271";
	rename -uid "A0EABF19-4AD2-175F-4BB1-7092A61A8395";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2272";
	rename -uid "92AEEBFA-431F-DED2-EC11-A990C24719F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2273";
	rename -uid "CBD8857B-4493-5008-4720-C6A60A28766C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2274";
	rename -uid "92C56AD0-4724-45E9-453C-6E94CB51A6C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2275";
	rename -uid "4525A0C3-402F-49F1-F998-478F1ACECD6B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2276";
	rename -uid "73987C4E-413A-1983-A46C-6A825D1F714B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2277";
	rename -uid "A554986E-42FD-5110-FCFC-DA8BF02C820D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2278";
	rename -uid "7FE8A1ED-4E86-DBA4-20AF-E798C70FEEE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2279";
	rename -uid "D0E4D13D-4BA0-D964-E9CC-DF93E3CC3F35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2280";
	rename -uid "37C6AD47-4471-D5C4-8BA6-6BA5CBA7C82E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2281";
	rename -uid "1C22C86D-43CF-477E-1AD2-B39CB8B3855F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2282";
	rename -uid "90632323-49B7-ABD3-2E80-9CB51D2B75F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2283";
	rename -uid "11CE23B2-467A-6817-9304-149C8893C903";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2284";
	rename -uid "26E38F11-4F13-CA60-DC43-568A584D3329";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2285";
	rename -uid "3EF745CD-4E71-D05B-04BD-C2BBCF53B818";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2286";
	rename -uid "4408D9EE-41E7-2777-D332-E6AF7D0BF10E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2287";
	rename -uid "2E83E81D-4445-250A-621E-22B7D43478C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2288";
	rename -uid "86CADA8D-4356-B2DE-5C84-FDB5121A1B15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2289";
	rename -uid "4FD64565-41C0-F2C8-3299-AB9F71BB1505";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2290";
	rename -uid "534F2494-4818-0E13-90D3-A69CAFC55074";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2291";
	rename -uid "7F1CFF8B-4ECD-63D9-C3BF-7F9F01435E26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2292";
	rename -uid "9C106253-4785-4822-51DB-AC9185C16F5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2293";
	rename -uid "2BC1BE82-4ED2-BFD8-2C39-D0B22B2D0B33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2294";
	rename -uid "50FC9252-463E-2705-E764-F4BF82F53029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2295";
	rename -uid "BEF2E742-409F-D1A4-E476-4791537A70F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2296";
	rename -uid "AA719AE6-4EE9-4935-6F3B-53B040D9C088";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2297";
	rename -uid "8BD6A33C-4A51-CF84-55D6-1E8C4057DF95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2298";
	rename -uid "9057D5A6-43F6-7C29-F06F-92B0AF4A0295";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2299";
	rename -uid "8B0B7BC0-4864-6447-C1C0-DF9C700A55AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2300";
	rename -uid "24751224-4E91-7E5C-E8BF-F0B66D3ACAB6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2301";
	rename -uid "05D36E9C-4AD0-35F2-5E8F-998E38AE8656";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2302";
	rename -uid "A6E5636C-480C-E9B1-658F-8E845D1CE32A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2303";
	rename -uid "5C5A7AF2-4C5A-A648-5A47-2C9CAB7995B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2304";
	rename -uid "B9C4E52B-4283-1AB1-DBEB-4CBD50A9F241";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2305";
	rename -uid "9EEF2474-480E-F5AB-3E6E-5A941C17249B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2306";
	rename -uid "6AA9CC18-4065-3D35-0ED5-49BEA09EAAE6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2307";
	rename -uid "A77D8320-49F9-1D82-20E9-A386CA1A61E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2308";
	rename -uid "C7ADC27D-4067-590C-20B1-41B31BB50671";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2309";
	rename -uid "7449E3D1-4949-9D8F-F805-97B3F3FBE87F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2310";
	rename -uid "7C3AB7B9-4126-A237-2742-7893692E225E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2311";
	rename -uid "AEE4BAAB-482C-F5C8-2745-708469D47DCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2312";
	rename -uid "17662BD5-4956-B189-B984-7D8AA10D92EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2313";
	rename -uid "F5BA28B9-453B-10B5-3381-9487DE1D5F41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2314";
	rename -uid "B9FAF249-447E-9655-6E08-18AAA20C7586";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2315";
	rename -uid "320FC921-4105-B2AC-054C-A0B9C38AD0E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2316";
	rename -uid "DAA2FEB4-4877-89D4-AFD0-E89892E50A03";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2317";
	rename -uid "4DB30F8B-46D2-BCCA-6767-83AAFBF8384D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2318";
	rename -uid "2FCF35F4-49F9-AF69-F578-9FBFE861FE02";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2319";
	rename -uid "B5C2F4A9-43A9-4AB8-6472-459582E7E861";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2320";
	rename -uid "3D25F172-43C3-6DD9-510E-87BFE2C292C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2321";
	rename -uid "6580B867-448E-47A9-5C9E-2A984706B4F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2322";
	rename -uid "9D492801-4C6C-7F3D-E9C9-849190CD6653";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2323";
	rename -uid "042138CE-45FE-90BE-7F52-1CABF0CD6919";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2324";
	rename -uid "1C48BD02-419F-6466-9903-14A0AAF71451";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2325";
	rename -uid "B0174110-47EA-AF37-AFF0-D3B35382F04E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2326";
	rename -uid "9F08E2C0-4FD0-F04C-AFD5-6897E5F0E4E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2327";
	rename -uid "4CB18265-4845-7B6D-16A5-93A648AEE4A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2328";
	rename -uid "F4621BA6-40A1-DBAB-0896-209FF8D1A3DB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2329";
	rename -uid "1C277CE0-48A4-7C31-0678-3FBC2E08B0D6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2330";
	rename -uid "2C2BD3B7-4D7C-B9C5-161C-A4A27BD741D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2331";
	rename -uid "EA369DA8-406E-DB70-B92A-A0B5E2522738";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2332";
	rename -uid "7B77FCC4-4BBD-558E-33A0-D98B0C7D80EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2333";
	rename -uid "1E76BD05-4CBB-D19A-0910-EFA0F29DD9F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2334";
	rename -uid "D4649419-466F-EC63-34C3-9E959755B47B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2335";
	rename -uid "610B7F8A-4503-D2D1-B21F-55BBD824B75F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2336";
	rename -uid "49CF7B90-4626-1F5C-3CD5-88A4E5609AE8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2337";
	rename -uid "043A8CAA-4827-EC9A-08C2-29989DA7E91C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2338";
	rename -uid "CF3596BD-4965-2108-B4C5-75A89413E134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2339";
	rename -uid "0A18FB0E-4AF2-0862-78A4-1BAFF3060725";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2340";
	rename -uid "F39CBDD9-4411-AE04-9262-CA8D0DBFC0EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2341";
	rename -uid "32B2E885-42BC-DC32-1921-37BF6428E32D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2342";
	rename -uid "725D9B1B-4D03-E51C-B297-5A98010ED439";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2343";
	rename -uid "E3237EE1-4897-2D76-78E8-47B7A4CE5C41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2344";
	rename -uid "AE7A9CB4-400F-5EB8-B4C5-B8B389D3D60F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2345";
	rename -uid "C9BA68B0-4AB4-FEF5-864C-AFAA1813A0FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2346";
	rename -uid "7E544CC3-46BA-9CE1-8688-91A4E3FAA7F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2347";
	rename -uid "5749AF44-405F-BEE2-5A4D-13B9E6F2546A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2348";
	rename -uid "E24D747E-47C8-1B94-C08D-7DA1CFE6CABB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2349";
	rename -uid "75EB6ECC-49C4-CD57-E7C6-EB9494A388C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2350";
	rename -uid "80E15722-4977-BDED-B69C-91AFDAF2C872";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2351";
	rename -uid "69B70A9B-4E31-A4E2-C62A-ADB39D6B7E1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2352";
	rename -uid "8B0ED7A4-46C6-23ED-83E0-6BBD69F36EC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2353";
	rename -uid "8013C20B-4238-7842-8E7F-E4BA4DC3FDC6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2354";
	rename -uid "2FFD9FFE-44E6-C797-0586-24BF46A0F00B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2355";
	rename -uid "12DBD105-4007-8664-FD3B-5AB6413F45D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2356";
	rename -uid "309BDB8E-4EED-34A1-E886-76941FED6236";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2357";
	rename -uid "C978BCE8-4157-89C8-67A9-EAA45EC8E1D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2358";
	rename -uid "5CEBED68-496D-8103-6660-B2A623DEFAB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2359";
	rename -uid "7ED4B3DD-4CEF-53A9-98B6-27806DE29136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2360";
	rename -uid "666974C7-446C-AC7D-69DC-F89233FDAEDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2361";
	rename -uid "E3F052ED-43B2-5F71-6B90-20B2625CB2BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2362";
	rename -uid "D32F92C4-4EAF-7213-A960-DD8DBDB27BCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2363";
	rename -uid "DDCAB41C-4450-7DC6-B488-A6B51CECC965";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2364";
	rename -uid "C48110F9-43FC-0E7F-E04A-58AC80DCB9F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2365";
	rename -uid "C742FB01-43FF-ED17-DA01-DD9B5B636BAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2366";
	rename -uid "A71E2880-4288-398E-883A-68A1C345320B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2367";
	rename -uid "478A5008-4D46-1310-DDD7-F483F03FCFEE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2368";
	rename -uid "5E857EEF-4EC4-EC39-9876-CDB0C773AFA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2369";
	rename -uid "F0C8D583-424A-4C42-4EB4-CE83DB503E1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2370";
	rename -uid "AB095068-4416-7F55-8282-13926A70F400";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2371";
	rename -uid "69AAAC6C-4ADA-2512-179A-A4BF2FA87521";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2372";
	rename -uid "6A41DD7C-436E-B8D6-7BD6-96899147D3CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2373";
	rename -uid "42C231FE-43DF-A710-93AF-E8BEA8A70DCE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2374";
	rename -uid "0F64A338-4DEE-E0ED-41CA-B9B008C9F11A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2375";
	rename -uid "75695BD4-4F3B-D478-A513-3584A13E631E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2376";
	rename -uid "4C5CEF5E-48D6-68E1-EC69-2F8A51B012CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2377";
	rename -uid "E3A548F3-4C94-6604-9CBB-86B56ECD15A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2378";
	rename -uid "766D5DC7-431A-7581-E801-6F8223573A1D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2379";
	rename -uid "C63C5A90-4F27-C0FD-22DC-08A5EC9DE634";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2380";
	rename -uid "CFB04F1F-4256-B3FE-5385-838A68EA02FD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2381";
	rename -uid "AAF3D2CE-419F-2089-0924-1FB39F93C90D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2382";
	rename -uid "A05714A0-48BB-DEF6-726B-E2BD5C763664";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2383";
	rename -uid "97EC1842-4360-97F7-2ADD-17998E5A30C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2384";
	rename -uid "16C2BD31-4BC3-6907-77DC-5FB85FED887B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2385";
	rename -uid "1E1626FF-4829-FA4F-5EAF-93A9A225FFBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2386";
	rename -uid "963A3068-4887-9820-1D33-7CBAD8ED22BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2387";
	rename -uid "38DBCA3B-40BE-A7C1-E491-B8BFD5547D5D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2388";
	rename -uid "C5B9F6C6-492B-1AE1-A5C6-229091B44894";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2389";
	rename -uid "7E2B4226-4570-1CDA-7025-C5B87AFAB4AE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2390";
	rename -uid "2F622586-48E8-EF32-F3A4-959EE76A0FE0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2391";
	rename -uid "28DB68F0-42B9-5744-C962-F0A08CCEE751";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2392";
	rename -uid "F831E71B-4D44-2154-1D85-1BBE3D263064";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2393";
	rename -uid "3E435EE3-46AF-E3F6-3625-76942987B50E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2394";
	rename -uid "0CCAD974-4966-10C0-3F9F-8E83C8E3E40C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2395";
	rename -uid "F2AF7E1F-48E0-2335-0180-8FBB61FA2274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2396";
	rename -uid "27E19819-4B51-2497-7B14-05B9D0F06C14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2397";
	rename -uid "C5467D52-4802-D0DA-AEB2-54AD1F1CE98C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2398";
	rename -uid "D409C9B3-43D7-6DE1-DC3C-6D910043A8BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2399";
	rename -uid "C2C0EE6D-4577-84F1-C616-359203C3D6BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2400";
	rename -uid "F385E990-40D1-A61B-58A1-3A87F96798DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2401";
	rename -uid "82C61053-495A-3752-7E61-B5B68ADAD994";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2402";
	rename -uid "063C4951-4498-AB6A-E6F4-DAB726CD9FA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2403";
	rename -uid "F225D65B-4362-8C8F-7EB9-22920469E99A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2404";
	rename -uid "D9022137-47E0-ABA6-9DC7-CA8D8A59582C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2405";
	rename -uid "6F8B6451-400A-163C-A476-959C8641D53A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2406";
	rename -uid "6AA5C65D-42E9-980A-47B2-4E8096BCBFB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2407";
	rename -uid "97707857-48F2-C9FA-866B-E98990D03718";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2408";
	rename -uid "6C97CC17-4F7A-6F58-5BC6-AEA03CC1D584";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2409";
	rename -uid "8609CB3B-4A3B-51C3-EE52-EA88D02FC410";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2410";
	rename -uid "63DE7A91-4245-F5D7-2336-8C8636232963";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2411";
	rename -uid "5FB7E91F-47C6-E1F2-DC4C-9F8BC038716F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2412";
	rename -uid "06C1CB60-42CA-1037-8CC3-28BEA8D6BCDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2413";
	rename -uid "A74FECEE-49CA-A000-AB0B-90A0BF681C2E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2414";
	rename -uid "7A773400-4BE1-24B4-0D06-0A8D8309408A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2415";
	rename -uid "3083BEC5-4630-C6AA-51AE-19A95A940C61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2416";
	rename -uid "D1C280BB-4F9F-B931-69BA-99BCF5F99E8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2417";
	rename -uid "CBFCF1DE-4D28-460D-606C-B3B490F5888A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2418";
	rename -uid "80AB1B2B-4F8D-462B-E427-B789E706EB62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2419";
	rename -uid "D16CC729-4976-9449-FEAB-36835E1B5548";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2420";
	rename -uid "B7AC49D4-47AC-E91E-50A2-899C044CAB36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2421";
	rename -uid "CCAE7986-4241-4EEA-31D1-07AEC075F23C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2422";
	rename -uid "CC49F90B-409B-AD6D-4844-22865D1C2E24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2423";
	rename -uid "EE72106A-47DD-C3B7-C5F7-4CB94D09405B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2424";
	rename -uid "37DB9C01-42B4-197A-1A52-A2BE71FDED6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2425";
	rename -uid "ED8A0364-469F-ACE7-DD44-E3A51A402996";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2426";
	rename -uid "DA0AA04D-40E5-5B0D-0A0A-4B8FCB43AE1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2427";
	rename -uid "45E0C7DC-4D9D-EAD7-3917-EE9FAEC78383";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2428";
	rename -uid "C0FA4E28-4DD0-2ABA-8C85-67856C354C54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2429";
	rename -uid "257FB2A8-41DD-A36F-C319-49AA29DA2F6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2430";
	rename -uid "DA741995-4D56-BE83-3B93-5583EC9D6F25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2431";
	rename -uid "40156873-44B1-CB75-099D-3FBCBF6031D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2432";
	rename -uid "D73A2819-4C9D-3CB5-3BA9-6C8F79AA5E63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2433";
	rename -uid "F420297B-4D19-781B-9232-7EBF1E5EA6CB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2434";
	rename -uid "2A011F3B-4394-345A-A268-AC93FE494C83";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2435";
	rename -uid "A40E257B-4BA6-6DE3-BE0A-7CA6B6C804B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2436";
	rename -uid "91EBF1EF-49EC-6B68-D7DB-EEA3A7E6E8D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2437";
	rename -uid "ACFD4A96-4C96-6B4D-AAB2-A2AD17682008";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2439";
	rename -uid "016E8316-44CE-398F-0294-D68532F941F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2440";
	rename -uid "31E3DDB6-4092-E93D-D95D-B9BE70C58268";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2441";
	rename -uid "315E3817-4C10-92FE-A69A-56BFDECC5A05";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2442";
	rename -uid "A87B8EA5-464C-7AC5-701D-CD84C0C918C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2443";
	rename -uid "1B1CDB0C-4A11-604C-0052-6E9D9EE39DF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2454";
	rename -uid "A0F26B76-4EF3-69B7-D465-B291C5EE88BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2458";
	rename -uid "EFC5FE0D-4B28-5A91-7508-94B3010E5E97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2459";
	rename -uid "5453718E-4AA3-C2F8-514C-C99C1977E299";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2462";
	rename -uid "0EA95830-4B22-5C17-39E2-FC865A2D6414";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2465";
	rename -uid "685BDD7F-4241-3F76-73F7-3CA0DCB3FDBE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2466";
	rename -uid "AF26BD70-46A9-4539-7150-72A1D744857F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2482";
	rename -uid "B56852E4-4F6A-5E83-0C80-758D1E93634C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2484";
	rename -uid "887EDC6B-43DA-B4C2-4A0B-9BAF344048D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2485";
	rename -uid "856100D0-4064-2E3A-24EB-408ADE9F4284";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2488";
	rename -uid "98019181-4121-2563-7C81-E3A32FB5B4CF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2490";
	rename -uid "29D61355-43F6-7EBC-7DC1-58A327B4F168";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2491";
	rename -uid "6DA53429-4628-6254-87E9-3BAEFD5EC844";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2494";
	rename -uid "641AF471-4AA8-A77F-07FE-6A9DEA38FB81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2495";
	rename -uid "402E8FA4-457C-1388-BE38-0E98F14C9170";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2496";
	rename -uid "ACF11506-4CD0-06E1-582F-5A856D10B855";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2497";
	rename -uid "9FA524F9-4906-C418-B934-9CBA45C55D82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2501";
	rename -uid "F151C9F1-42D2-815D-981E-0D917CA28A2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2502";
	rename -uid "CB9F9918-48B9-A9EA-7F0C-C7AD33C19CD0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2503";
	rename -uid "91F5DE5E-44D4-4547-57C5-32A5570178D7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2505";
	rename -uid "33DF4952-46AF-D73F-F421-92B78B98C2F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2507";
	rename -uid "3E8EB2C9-417B-D2DF-FEFE-5E83F28A3274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2508";
	rename -uid "316BB29F-453C-E533-DD5E-2E95E37B0764";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2511";
	rename -uid "F8E32BEF-4E35-E732-A5DC-0AA889BDD0F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2514";
	rename -uid "6DC6ECDE-4501-8237-8A17-2A940749A2D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2515";
	rename -uid "274F9C4D-4D62-3C9A-F59B-FFB2BE359532";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2516";
	rename -uid "6286670E-4A6F-571A-896C-DDA7AA274428";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2517";
	rename -uid "09A3EC96-4698-BB51-2899-209B48E27C6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2518";
	rename -uid "85493BB0-4FD1-304E-A6EE-C588E4DC6286";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2519";
	rename -uid "20067E54-4658-E096-C2F7-6F8F23C22029";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2520";
	rename -uid "ABE96771-481A-8604-DD01-17910BBC0EF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2524";
	rename -uid "52EB2F1E-43CF-A55F-49B1-8F92576CB346";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2525";
	rename -uid "296DF018-4757-2323-9547-4DB5A4AC7574";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2526";
	rename -uid "7F88E250-4605-E6BF-22A1-D2BDED8132A2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2528";
	rename -uid "7F039054-4B70-789C-650C-39AE826E35CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2530";
	rename -uid "EC783F33-45A6-A23D-0B38-14A58BC66C3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2531";
	rename -uid "A651CBBA-43BE-6F5F-B5D3-CB9F8E212621";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2534";
	rename -uid "5ED88B91-4C3B-DC6C-B024-9D9EFB7D8BC2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2537";
	rename -uid "61F232C9-4456-FE2F-40BB-F29724D55573";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2538";
	rename -uid "E1A072E9-458F-0064-E2E0-B2B0641D339D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2539";
	rename -uid "143DF13E-4F13-6FDA-6ED5-798B60A7B713";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2540";
	rename -uid "E56F894C-47C5-E282-4551-DD8FB1FC0493";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2541";
	rename -uid "670B0600-4F12-2AAB-21ED-62A6FF30CD9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2542";
	rename -uid "77BF072E-4E3B-25E1-9237-6DB77CF76F42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2543";
	rename -uid "D9B4A301-413D-F3D1-C999-6BBB4E2ADB5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2547";
	rename -uid "C6AD8FBD-4EDB-F2E8-85D0-8B8B06D2A158";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2548";
	rename -uid "73B02FC5-4C80-83ED-2B5F-A78A3869988D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2549";
	rename -uid "4E843F1B-41A2-55DA-EBF5-329B72D584DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2551";
	rename -uid "02E006D0-4FFE-EA40-0115-D38D7E3968D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2553";
	rename -uid "5F8C5578-4B86-2F28-63D5-25AC2207083A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2554";
	rename -uid "E0CDD457-4540-B2FF-B507-07BB5927F8A5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2557";
	rename -uid "9244D177-495F-E430-3C32-DB9CDA4719AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2560";
	rename -uid "95E5A375-4680-47A4-6765-549BEC8E39A8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2561";
	rename -uid "0EACE372-47C6-94A2-E939-808DAB4C98D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2562";
	rename -uid "74AFCE55-40A8-7618-A6A1-85A80D6177AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2563";
	rename -uid "2711539D-4A7D-0945-F3C6-939A07CABCD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2564";
	rename -uid "A7A36A6D-4976-13B2-3247-9DA616189543";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2565";
	rename -uid "0869B74A-4357-C06E-52D7-238DB0D1E7D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2566";
	rename -uid "B523570D-4F66-A76D-93E6-8494E70BD9A7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2570";
	rename -uid "9F71D524-4F97-9F02-77E7-A4915EAF286B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2571";
	rename -uid "934D58A1-4314-DC02-EDBA-818539558DA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2572";
	rename -uid "DFEF1CEF-4872-97D6-146E-E89543908641";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2574";
	rename -uid "17442006-44D1-F3C8-67C2-25A7132964C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2576";
	rename -uid "3A5975D1-49E2-638E-3EB4-7C9B766C5EC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2577";
	rename -uid "08E8E313-4F0F-867B-C4FA-7FA0C8AB69B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2580";
	rename -uid "BE24344E-4EAD-30D2-BAE1-21950F736AF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2583";
	rename -uid "51E9DC45-46FE-FFB9-3B5E-4F92BD8534ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2584";
	rename -uid "41119F9A-4B7F-3596-556E-8BBAB755B19A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2585";
	rename -uid "120AD4C6-46C6-AE9D-B825-D7A5A2302870";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2586";
	rename -uid "2FBAB7BC-4293-399A-3930-0C9001BF61B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2587";
	rename -uid "A02452A3-4917-6E60-ED1B-418BCFE4634E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2588";
	rename -uid "63D78832-423F-2AC6-1EA9-2AACAD67F5A4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2589";
	rename -uid "341BA31E-41CC-0EEE-31B1-C092C78E42EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2593";
	rename -uid "B6B0DF44-4E8E-E686-93B0-C1A6F5A91BCB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2594";
	rename -uid "6FF81D32-4904-FC76-B027-D8ABFE715150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2595";
	rename -uid "FEBE7860-4CB4-55BA-A8CD-199CDB5863AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2597";
	rename -uid "6D3819A3-432F-7064-1574-A8AFCB78769A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2600";
	rename -uid "77E7E639-4D7F-4404-C637-C590B90F105D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2603";
	rename -uid "E2FC37B7-4D4C-4819-C90A-69B3D57566A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2605";
	rename -uid "29B77EB6-49F7-89B6-58D1-03AD4D61EAED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2606";
	rename -uid "7696D59D-4DD4-B943-CDC8-79B8A7ED1D5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2607";
	rename -uid "18317444-469C-B5FA-DFB8-408921A9B88F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2608";
	rename -uid "81C28388-43EE-E4B0-FD88-92830DD89CA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2609";
	rename -uid "C395187E-408E-D226-7704-7089A6D5EF15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2610";
	rename -uid "78AC845F-42C2-72F8-0ADF-F7BDE5D24EF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2611";
	rename -uid "0E8A794B-485B-300B-6498-C490AC10CF7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2612";
	rename -uid "4E19B296-479D-4532-79F4-73AB261C1F54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2618";
	rename -uid "A2F9C787-49E3-12D7-3F38-998BC86992E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2620";
	rename -uid "475866D4-4F73-E39A-02DF-BFB2185D543E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2623";
	rename -uid "71BC0103-4FB8-5EC2-30BB-54979216BD55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2626";
	rename -uid "3B9DFC12-438C-8E72-9908-59BC93CF053A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2627";
	rename -uid "F8188B56-4C81-9026-92D5-C0AD3DE68A12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2643";
	rename -uid "0725079D-482E-36C0-0B25-49AD610BE890";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2644";
	rename -uid "3D9D3900-41CA-B5C4-10A4-C3AA14B1C563";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2646";
	rename -uid "B64EF571-4C22-A0CE-5C5E-7BBA4FEAD3C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2647";
	rename -uid "A47EFDDF-4704-CA8B-B101-D480B96AB23F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2648";
	rename -uid "FC768A15-436C-90CC-E49F-6D8739B3F70F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2649";
	rename -uid "C63EBB33-4339-E802-0908-1BBE34DCAFD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2650";
	rename -uid "194B258C-4474-7F1C-1BFD-FD973E5E0832";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2659";
	rename -uid "E090F8C8-414F-7885-9048-68B6DCFD5B91";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2660";
	rename -uid "676CFB51-4D96-D7A2-43E0-BF9816431231";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2661";
	rename -uid "7328BCFF-4A95-DE74-8BDC-2AADF14E35AA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2665";
	rename -uid "A16E59FA-4594-E0A9-1A1A-74B904F5DC67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2666";
	rename -uid "45516F26-45A6-3567-7A0B-BE91416CDBAF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2667";
	rename -uid "45D6410A-4A16-98BD-C1C8-BABBFC794413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2669";
	rename -uid "1D25B4A9-45B7-0C27-5126-428269EC78C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2670";
	rename -uid "D70648E8-4E06-D194-7C6C-5CB620093A1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2671";
	rename -uid "55E0C3E3-477B-EC00-F987-BCA8D020E8D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2672";
	rename -uid "DB51392F-4CC4-0DE8-A9C8-68A4FFE7F900";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2673";
	rename -uid "EAE49BF2-4108-0146-F701-FAAB1E4BCF5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2674";
	rename -uid "2E4E1FC0-45F0-2A01-6615-DCA699588396";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2682";
	rename -uid "20741117-4289-8DEA-DC7B-AE9884461F69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2683";
	rename -uid "6F14D09D-4520-47D7-C0B0-4899BC7BAED7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2684";
	rename -uid "CCE74237-4A3C-661A-3ED9-438EDE73D7C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2688";
	rename -uid "27F27485-4474-1147-48DD-E4B0AE3C49DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2689";
	rename -uid "5727B820-45FB-22DC-87A1-22B197EAFFCA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2690";
	rename -uid "AF13444A-49D1-25D1-8758-C2AADF49C339";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2692";
	rename -uid "575C6437-474E-FC16-6DD7-C09CB81AA68E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2693";
	rename -uid "7640B7B0-4C5A-DDC5-178F-8990DA0E6DFA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2694";
	rename -uid "57DFBF1B-4BA7-DE04-73F9-C5BDFAA7E0B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2695";
	rename -uid "192C3A8C-4FA2-D045-1AFA-8A8DD8A17306";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2696";
	rename -uid "19F167ED-4ACF-03FD-44F7-0AB6A0A328C6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2697";
	rename -uid "25A0704F-4571-CAE7-56FE-F3B6C2D72566";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2701";
	rename -uid "18374DA4-49C3-74A2-E31E-EFA463E73F07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2705";
	rename -uid "606268B4-40B9-7861-AAE3-1A8AB98967D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2706";
	rename -uid "323D7495-4A1B-97E8-CA02-5D8EBF5E166F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2707";
	rename -uid "09580F27-4DE6-037C-5E86-699D3206C51B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2710";
	rename -uid "6273A370-4EBF-8665-0C80-98B8B532505D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2711";
	rename -uid "BBF8560B-42A3-4638-9C90-2FB36B289B4D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2712";
	rename -uid "C7B45794-4247-3EDE-B340-668287A12612";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2753";
	rename -uid "7A40A50A-43BD-9735-D707-54AEBF34D989";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2754";
	rename -uid "2D727B4B-4333-5C60-F07E-5FAD1EFCFFD1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2755";
	rename -uid "BE99826D-43E6-7E1C-B243-8DBF71518460";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2756";
	rename -uid "016CB860-4979-6AE8-D34E-E9BE4DE70AF5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2757";
	rename -uid "8F2A8D35-44B2-A6D2-B196-BD808485D6E2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2758";
	rename -uid "E27D7E0E-40A2-CA22-46F1-3792D43308EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2759";
	rename -uid "D5D215B8-4D0D-5A8E-847F-43A787C0A39E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2760";
	rename -uid "7560DABF-4A06-F63E-98C7-AEAC2347943E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2761";
	rename -uid "5B560893-44EF-B8F9-C9D7-BAB008F1CCDB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2762";
	rename -uid "2DB90BA4-4816-2400-FB11-6A910ACD1BD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2763";
	rename -uid "2B662960-4FAF-978D-575C-E9A34BC60548";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2774";
	rename -uid "9C6BCC7E-4B9A-DA77-79A4-FA9381098A2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2775";
	rename -uid "B2A0F0B3-4ADA-6908-7AAC-3C8647FF57C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2776";
	rename -uid "3CACAA43-4356-BB75-38C5-0BB72A9972C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2848";
	rename -uid "F93168F3-4915-19E9-D6D0-9987165E545A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2849";
	rename -uid "56DE94DC-4A87-E2B3-56F3-0FB5FE362771";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2850";
	rename -uid "1C67EB96-48AD-4C1D-9390-B5BB0B73644A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2851";
	rename -uid "B54B3727-480D-02B5-97A7-CB8A4335B6D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2854";
	rename -uid "3E451340-4FF5-1A92-5F3E-6E9A0B62836D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2855";
	rename -uid "8D63758D-4D1E-BA00-BE1E-F0A5CF5E1C78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2860";
	rename -uid "EC4FAB25-4AA2-3821-4BEF-80917836250F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2864";
	rename -uid "0F4CB169-48A6-AF40-0C5C-FCBC48C1F592";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2865";
	rename -uid "F77F7956-413D-0D8B-9B18-49B3295A472E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2868";
	rename -uid "415608AD-4AD4-C2FD-4208-1DB542F71814";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2879";
	rename -uid "1D591089-45EE-45C9-6D9D-2FB6F4B4D9B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2881";
	rename -uid "2C4C3BBB-4DF3-37BD-6997-16B46EFA5580";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2886";
	rename -uid "18620D82-4149-4F7F-8D46-9CB1BE077595";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2887";
	rename -uid "00E76479-4AC0-480F-58B7-568593A51ADE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2888";
	rename -uid "B8ADB138-4DBF-BA65-F119-C6AD04CB05DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2889";
	rename -uid "A88FE9C4-4624-56C5-0CE4-E7AE607D7803";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2890";
	rename -uid "56B0C02F-4A9A-5C14-9E72-3787DFDC2731";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2891";
	rename -uid "4D4E7889-49E5-C0AD-AF54-8587BC1A98F7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2892";
	rename -uid "D5F8A2E4-4A52-9D08-E58C-47901BB57342";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2893";
	rename -uid "578B476C-4C97-236C-2B27-AABCCC4E987A";
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
	setAttr -s 70 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2287 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId2888.id" "Floor_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Floor_PieceShape.iog.og[0].gco";
connectAttr "groupId7.id" "Cieling_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Cieling_PieceShape.iog.og[0].gco";
connectAttr "groupId2889.id" "T_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "T_PieceShape.iog.og[0].gco";
connectAttr "groupId2890.id" "Diagonal_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Diagonal_PieceShape.iog.og[0].gco";
connectAttr "groupId2891.id" "Straight_PieceShape.iog.og[0].gid";
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
connectAttr "groupId2892.id" "Inside_Corner_Nub_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Inside_Corner_Nub_PieceShape.iog.og[0].gco"
		;
connectAttr "groupId25.id" "Outside_Corner_PieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_Corner_PieceShape.iog.og[0].gco"
		;
connectAttr "groupId2893.id" "Ceiling_Arch_Corner_InsideShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ceiling_Arch_Corner_InsideShape.iog.og[0].gco"
		;
connectAttr "groupId2881.id" "Ceiling_Arch_HalfCapShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ceiling_Arch_HalfCapShape.iog.og[0].gco"
		;
connectAttr "groupId2886.id" "Ceiling_Arch_FourWayShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ceiling_Arch_FourWayShape.iog.og[0].gco"
		;
connectAttr "groupId2887.id" "Ceiling_Arch_HalftopShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ceiling_Arch_HalftopShape.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Quad_PieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_pieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Cieling_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Outside_Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Inside_Corner_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_Corner_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Stub_PieceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_EdgesShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FloorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_FlatShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_longShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCorner_ShortShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCorner_LongShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCorner_ShortShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCorner_LongShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_ShortShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_ArchShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_Arch_CapShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_WindowShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_HShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Window_2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_AShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Window_3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_DestroyedShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Just_WallShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_JutShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Jut_CapShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Jut_TopShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Chipped_RShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_Arch_HalfCapShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ceiling_Arch_FourWayShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Wall_long_HighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall_Short_HighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_Arch_HalfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_Arch_HalftopShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "Wall_Chipped_LShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ceiling_Arch_FulltopShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_FullShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_HalfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Half_TopShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Guard_middleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_GuardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Guard_TopShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_SideFillShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_full_topShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_halfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_Alt_HalfShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Guard_middle2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Guard_middle3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_Guard_Top1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stairs_SideFill_ShortShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ArchwayShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DoorwayShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Corner_InsideShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Corner_OutsideShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Corner_Outside_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Corner_Inside_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCorner_Short_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "InsideCorner_Long_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCorner_Short_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "OutsideCorner_Long_AltShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Floor_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "T_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Diagonal_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Straight_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Inside_Corner_Nub_PieceShape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ceiling_Arch_Corner_InsideShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId587.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId588.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId589.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId590.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId591.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId592.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId593.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId594.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId596.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId597.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId598.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId599.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId600.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId601.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId602.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId603.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId1169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1191.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId1253.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1259.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1266.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1267.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1268.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1269.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1270.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1271.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1275.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1278.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1279.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1281.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1282.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1283.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1284.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1285.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1286.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1288.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1289.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1290.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1291.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1292.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1293.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1295.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1296.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1297.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1298.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1299.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1300.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1301.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1302.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1303.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1310.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1311.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1312.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1349.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1350.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1351.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1352.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1353.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1354.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1355.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1356.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1357.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1358.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1359.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1360.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1361.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1362.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1363.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1364.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1365.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1366.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1367.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1368.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1369.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1370.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1371.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1372.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1373.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1374.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1375.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1376.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1377.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1378.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1379.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1380.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1381.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1382.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1383.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1384.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1385.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1386.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1387.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1388.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1389.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1390.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1391.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1392.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1393.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1394.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1395.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1396.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1397.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1398.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1399.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1400.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1401.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1402.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1403.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1404.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1405.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1417.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1418.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1419.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1420.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1421.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1422.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1423.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1424.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1425.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1426.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1427.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1428.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1429.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1430.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1431.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1432.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1433.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1434.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1435.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1436.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1437.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1438.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1439.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1440.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1441.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1442.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1443.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1444.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1445.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1446.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1447.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1448.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1449.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1450.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1451.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1452.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1453.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1454.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1455.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1456.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1457.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1458.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1459.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1460.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1461.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1462.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1463.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1464.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1465.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1466.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1467.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1468.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1469.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1470.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1471.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1472.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1473.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1474.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1475.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1476.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1477.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1478.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1479.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1480.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1481.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1482.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1483.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1484.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1485.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1486.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1487.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1488.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1489.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1490.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1491.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1492.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1493.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1494.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1495.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1496.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1497.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1498.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1499.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1500.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1501.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1502.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1503.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1504.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1505.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1506.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1507.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1508.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1509.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1510.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1511.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1512.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1513.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1514.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1515.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1516.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1517.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1518.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1519.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1520.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1521.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1522.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1523.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1524.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1525.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1526.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1527.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1528.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1529.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1530.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1531.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1532.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1533.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1534.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1535.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1536.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1537.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1538.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1539.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1540.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1541.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1542.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1543.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1544.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1545.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1546.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1547.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1548.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1549.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1550.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1551.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1552.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1553.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1554.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1555.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1556.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1557.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1558.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1559.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1560.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1561.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1562.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1563.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1564.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1565.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1566.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1567.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1568.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1569.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1570.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1571.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1572.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1573.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1574.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1575.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1576.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1577.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1578.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1579.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1580.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1581.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1582.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1583.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1584.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1585.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1586.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1587.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1588.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1589.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1590.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1591.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1592.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1593.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1594.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1595.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1596.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1597.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1598.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1599.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1600.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1601.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1602.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1603.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1604.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1605.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1606.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1607.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1608.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1609.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1610.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1611.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1612.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1613.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1614.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1615.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1616.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1617.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1618.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1619.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1620.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1621.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1622.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1623.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1624.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1625.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1626.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1627.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1628.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1629.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1630.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1631.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1632.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1633.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1634.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1635.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1636.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1637.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1638.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1639.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1640.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1641.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1642.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1643.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1644.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1645.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1646.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1647.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1648.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1649.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1650.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1651.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1652.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1653.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1654.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1655.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1656.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1657.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1658.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1659.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1660.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1661.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1662.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1663.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1664.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1665.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1666.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1667.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1668.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1669.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1670.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1671.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1672.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1673.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1674.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1675.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1676.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1677.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1678.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1679.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1680.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1681.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1682.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1683.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1684.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1685.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1686.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1687.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1688.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1689.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1690.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1691.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1692.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1693.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1694.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1695.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1696.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1697.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1698.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1699.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1700.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1701.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1702.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1703.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1704.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1705.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1706.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1707.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1708.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1709.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1710.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1711.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1712.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1713.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1714.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1715.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1716.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1717.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1718.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1719.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1720.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1721.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1722.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1723.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1724.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1725.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1726.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1727.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1728.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1729.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1730.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1731.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1732.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1733.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1734.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1735.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1736.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1737.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1738.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1739.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1740.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1741.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1742.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1743.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1744.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1745.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1746.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1747.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1748.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1749.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1750.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1751.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1752.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1753.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1754.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1755.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1756.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1757.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1758.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1759.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1760.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1761.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1762.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1763.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1764.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1765.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1766.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1767.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1768.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1769.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1770.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1771.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1772.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1773.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1774.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1775.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1776.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1777.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1778.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1779.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1780.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1781.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1782.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1783.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1784.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1785.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1786.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1787.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1788.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1789.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1790.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1791.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1792.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1793.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1794.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1795.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1796.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1797.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1798.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1799.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1800.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1801.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1802.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1803.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1804.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1805.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1806.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1807.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1808.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1809.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1810.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1811.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1812.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1813.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1814.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1815.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1816.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1817.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1818.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1819.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1820.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1821.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1822.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1823.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1824.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1825.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1826.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1827.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1828.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1829.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1830.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1831.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1832.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1833.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1834.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1835.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1836.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1837.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1838.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1839.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1840.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1841.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1842.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1843.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1844.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1845.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1846.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1847.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1848.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1849.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1850.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1851.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1852.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1853.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1854.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1855.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1856.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1857.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1858.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1859.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1860.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1861.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1862.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1863.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1864.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1865.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1866.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1867.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1868.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1869.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1870.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1871.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1872.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1873.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1874.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1875.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1876.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1877.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1878.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1879.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1880.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1881.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1882.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1883.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1884.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1885.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1886.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1887.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1888.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1889.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1890.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1891.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1892.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1893.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1894.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1895.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1896.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1897.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1898.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1899.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1900.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1901.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1902.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1903.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1904.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1905.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1906.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1907.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1908.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1909.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1910.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1911.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1912.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1913.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1914.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1915.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1916.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1917.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1918.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1919.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1920.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1921.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1922.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1923.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1924.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1925.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1926.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1927.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1928.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1929.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1930.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1931.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1932.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1933.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1934.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1935.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1936.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1937.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1938.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1939.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1940.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1941.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1942.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1943.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1944.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1945.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1946.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1947.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1948.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1949.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1950.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1951.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1952.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1953.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1954.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1955.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1956.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1957.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1958.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1959.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1960.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1961.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1962.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1963.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1964.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1965.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1966.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1967.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1968.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1969.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1970.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1971.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1972.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1973.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1974.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1975.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1976.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1977.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1978.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1979.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1980.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1981.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1982.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1983.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1984.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1985.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1986.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1987.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1988.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1989.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1990.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1991.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1992.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1993.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1994.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1995.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1996.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1997.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1998.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1999.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2000.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2001.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2002.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2003.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2004.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2005.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2006.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2007.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2008.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2009.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2010.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2011.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2012.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2013.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2014.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2015.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2016.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2017.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2018.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2019.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2020.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2021.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2022.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2023.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2024.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2025.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2026.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2027.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2028.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2029.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2030.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2031.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2032.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2033.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2034.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2035.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2036.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2037.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2038.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2039.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2040.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2041.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2042.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2043.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2044.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2045.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2046.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2047.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2048.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2049.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2050.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2051.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2052.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2053.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2054.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2055.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2056.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2057.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2058.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2059.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2060.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2061.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2062.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2063.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2064.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2065.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2066.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2067.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2068.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2069.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2070.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2071.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2072.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2073.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2074.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2075.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2076.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2077.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2078.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2079.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2080.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2081.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2082.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2083.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2084.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2085.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2086.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2087.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2088.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2089.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2090.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2091.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2092.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2093.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2094.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2095.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2096.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2097.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2098.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2099.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2189.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2204.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2206.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2207.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2208.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2212.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2215.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2216.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2217.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2218.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2219.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2220.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2221.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2222.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2223.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2224.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2225.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2226.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2227.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2228.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2229.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2230.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2231.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2232.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2233.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2234.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2235.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2236.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2237.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2238.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2239.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2240.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2241.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2242.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2243.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2244.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2245.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2246.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2247.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2248.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2249.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2250.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2251.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2252.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2253.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2254.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2255.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2256.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2257.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2259.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2260.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2261.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2262.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2263.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2266.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2267.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2268.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2269.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2270.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2271.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2272.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2273.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2274.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2275.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2276.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2277.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2278.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2279.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2280.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2281.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2282.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2283.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2284.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2285.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2286.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2287.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2288.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2289.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2290.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2291.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2292.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2293.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2294.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2295.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2296.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2297.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2298.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2299.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2300.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2301.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2302.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2303.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2304.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2305.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2306.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2307.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2308.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2309.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2310.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2311.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2312.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2313.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2314.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2315.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2316.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2317.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2318.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2319.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2320.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2321.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2322.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2323.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2324.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2325.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2326.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2327.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2328.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2329.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2330.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2331.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2332.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2333.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2334.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2335.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2336.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2337.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2338.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2339.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2340.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2341.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2342.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2343.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2344.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2345.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2346.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2347.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2348.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2349.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2350.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2351.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2352.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2353.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2354.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2355.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2356.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2357.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2358.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2359.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2360.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2361.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2362.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2363.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2364.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2365.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2366.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2367.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2368.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2369.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2370.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2371.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2372.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2373.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2374.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2375.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2376.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2377.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2378.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2379.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2380.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2381.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2382.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2383.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2384.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2385.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2386.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2387.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2388.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2389.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2390.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2391.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2392.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2393.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2394.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2395.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2396.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2397.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2398.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2399.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2400.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2401.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2402.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2403.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2404.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2405.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2406.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2407.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2408.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2409.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2410.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2411.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2412.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2413.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2414.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2415.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2416.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2417.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2418.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2419.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2420.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2421.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2422.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2423.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2424.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2425.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2426.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2427.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2428.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2429.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2430.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2431.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2432.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2433.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2434.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2435.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2436.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2437.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2439.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2440.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2441.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2442.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2443.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2454.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2458.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2459.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2462.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2465.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2466.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2482.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2484.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2485.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2488.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2490.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2491.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2494.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2495.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2496.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2497.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2501.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2502.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2503.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2505.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2507.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2508.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2511.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2514.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2515.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2516.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2517.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2518.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2519.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2520.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2524.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2525.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2526.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2528.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2530.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2531.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2534.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2537.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2538.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2539.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2540.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2541.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2542.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2543.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2547.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2548.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2549.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2551.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2553.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2554.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2557.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2560.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2561.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2562.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2563.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2564.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2565.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2566.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2570.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2571.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2572.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2574.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2576.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2577.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2580.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2583.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2584.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2585.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2586.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2587.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2588.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2589.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2593.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2594.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2595.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2597.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2600.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2603.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2605.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2606.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2607.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2608.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2609.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2610.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2611.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2612.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2618.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2620.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2623.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2626.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2627.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2643.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2644.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2646.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2647.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2648.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2649.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2650.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2659.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2660.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2661.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2665.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2666.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2667.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2669.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2670.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2671.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2672.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2673.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2674.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2682.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2683.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2684.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2688.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2689.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2690.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2692.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2693.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2694.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2695.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2696.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2697.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2701.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2705.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2706.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2707.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2710.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2711.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2712.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2753.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2754.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2755.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2756.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2757.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2758.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2759.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2760.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2761.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2762.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2763.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2774.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2775.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2776.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2848.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2849.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2850.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2851.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2854.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2855.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2860.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2864.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2865.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2868.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2879.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2881.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2886.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2887.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2888.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2889.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2890.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2891.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2892.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2893.msg" ":initialShadingGroup.gn" -na;
// End of Bergman_Witch_Game_Tile_Set.ma
