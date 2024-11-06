//Maya ASCII 2024 scene
//Name: Table.ma
//Last modified: Tue, Apr 09, 2024 08:16:35 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "MASH_Dynamics" -nodeType "MASH_DynamicsInitialState" "MASH" "450";
requires -nodeType "bifrostAttrNotifier" "bifrostshellnode" "2.7.0.0";
requires -nodeType "bifrostLiquidMaterial" "bifrostvisplugin" "2.7.0.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiStandard" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "09F94C61-4EA4-53BE-3D25-589B3A567B8E";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "9C7EC759-4D6F-DB9F-23D6-909B148C1BFA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.085472401330744 4.8880375542204568 -16.177966026356842 ;
	setAttr ".r" -type "double3" 171.59133480900883 -7.3453873772345712 -180 ;
	setAttr ".rp" -type "double3" 3.1225022567582528e-16 0 0 ;
	setAttr ".rpt" -type "double3" -1.8075302007111358e-14 -2.7380951649891655e-15 -5.9802460983226924e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "60B6CEEB-40D7-FF9C-CA17-568BC862C805";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 15.137000915338835;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.17100590062971532 2.6745139397019067 -1.3265712118409105 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6B412BAE-4442-7592-5116-5C9CEACA557D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "49D57872-4073-C581-AB45-0398CE0709F8";
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
	rename -uid "8B42C1F1-479E-A2CF-8A98-4FAE7CDCA11C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B4E8AE6C-402C-34C4-31DF-6689A62A6226";
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
	rename -uid "32061CC9-40F5-E127-6538-428070707D4B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F8D6DE28-4972-0B1C-9DFA-1186367481BC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "table_group";
	rename -uid "61E1C12D-4F4F-8F8D-66F8-79939163CBEF";
	setAttr ".t" -type "double3" 0 -0.4098264864784511 0 ;
	setAttr ".rp" -type "double3" -2.7510070709080701 1.418727027465883 0.12354260541002993 ;
	setAttr ".sp" -type "double3" -2.7510070709080701 1.418727027465883 0.12354260541002993 ;
createNode transform -n "table_top" -p "table_group";
	rename -uid "1D720BAC-4F26-094B-74F9-19BDD6E2F2C6";
	setAttr ".t" -type "double3" 0.28231794721868697 2.394791866679701 0.064458447615747483 ;
	setAttr ".s" -type "double3" 10.163625945790514 0.64517758233833156 6.2623942251265952 ;
createNode mesh -n "table_topShape" -p "table_top";
	rename -uid "793F0F69-4341-84CB-C3F9-FEB34F2E7DB6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "table_topShapeOrig" -p "table_top";
	rename -uid "2D9B2F35-4BF5-0271-3F75-119DB874E0E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "table_legs" -p "table_group";
	rename -uid "4B9755F4-43B5-6301-DCD0-EE8B3607AA1D";
	setAttr ".rp" -type "double3" -2.7510070709080701 1.418727027465883 0.12354260541002993 ;
	setAttr ".sp" -type "double3" -2.7510070709080701 1.418727027465883 0.12354260541002993 ;
createNode transform -n "table_leg1" -p "table_legs";
	rename -uid "3C38F6CF-41E2-5881-4A92-2FB4CA247748";
	setAttr ".t" -type "double3" -2.7510070005846163 1.4187270274658828 -1.8898725415338178 ;
	setAttr ".s" -type "double3" 0.589915883474594 1.0222937678470392 0.589915883474594 ;
createNode mesh -n "table_legShape1" -p "table_leg1";
	rename -uid "D6121CAA-4E62-3227-033D-979414590637";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "table_legShape1Orig" -p "table_leg1";
	rename -uid "20A928F4-41B2-D678-EDA6-A79C4B10C2C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "table_leg2" -p "table_legs";
	rename -uid "8DF65770-475A-DB61-BE26-05939314D06D";
	setAttr ".t" -type "double3" -2.7510070005846163 1.4187270274658828 2.1369579633242375 ;
	setAttr ".s" -type "double3" 0.589915883474594 1.0222937678470392 0.589915883474594 ;
createNode mesh -n "table_legShape2" -p "table_leg2";
	rename -uid "54FDE05A-47A5-5A68-3283-50B90527859B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "table_legShape2Orig" -p "table_leg2";
	rename -uid "1B104A5D-483B-DC02-779A-BC8E97093861";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "table_leg3" -p "table_legs";
	rename -uid "4D9E3A7C-4CE8-CB9E-B250-E28FB967CF84";
	setAttr ".t" -type "double3" 2.8656800343079745 1.418727027465883 2.1369579633242379 ;
	setAttr ".s" -type "double3" 0.589915883474594 1.0222937678470392 0.589915883474594 ;
createNode mesh -n "table_legShape3" -p "table_leg3";
	rename -uid "7E492B3B-4AFF-EA76-27E0-83990441D228";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "table_legShape3Orig" -p "table_leg3";
	rename -uid "54776147-4270-C7E4-8DB7-D5836D616307";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "table_leg4" -p "table_legs";
	rename -uid "80453E37-4C31-6E6F-DD13-74B6733B64ED";
	setAttr ".t" -type "double3" 2.8656800343079745 1.418727027465883 -1.8898725415338176 ;
	setAttr ".s" -type "double3" 0.589915883474594 1.0222937678470392 0.589915883474594 ;
createNode mesh -n "table_legShape4" -p "table_leg4";
	rename -uid "986E9491-4584-8AF0-1C57-2CB78CBA5968";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "table_legShape4Orig" -p "table_leg4";
	rename -uid "D53B9E69-4CAB-3730-5C99-EF8F039C920F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7D125478-4B0E-8FB2-0249-4EA474DE14DD";
	setAttr -s 26 ".lnk";
	setAttr -s 20 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AB22D582-4EFB-F631-2DDB-F59E9B0FDD9F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9AC4FC00-48F7-683D-EBCA-7CB6F267A060";
createNode displayLayerManager -n "layerManager";
	rename -uid "9B274DCA-410D-A6E1-8B65-53BA4807DA10";
	setAttr -s 7 ".dli[1:6]"  13 3 2 1 4 5;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "710BE276-4888-7815-64BE-93A8EEA5A2FE";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4C2754B0-4FBA-052F-3DA7-F7A7649532D1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7B8D121F-43F7-EFC0-C666-AEA8165309DE";
	setAttr ".g" yes;
createNode script -n "maxformaya_v4_5:uiConfigurationScriptNode";
	rename -uid "3CC62BBA-40C2-3242-D596-C98B3C3313FE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1746\n            -height 1012\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1746\\n    -height 1012\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1746\\n    -height 1012\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 15 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "maxformaya_v4_5:sceneConfigurationScriptNode";
	rename -uid "F54B9E5C-408F-F662-218A-28812D7D7AD5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "maxformaya_v4_5:headMesh";
	rename -uid "8AF539A9-4ED6-0476-52D0-369D324E75E8";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "maxformaya_v4_5:Smooth_Mesh";
	rename -uid "6752FFE3-4F21-BB03-EED3-87A8953FFE86";
	setAttr ".dt" 2;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode clamp -n "maxformaya_v4_5:Narrow_WideBottomRightXClamp";
	rename -uid "2DEAA4D3-4892-4175-82BF-57AC4F8ABEFA";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideBottomRightYClamp";
	rename -uid "E81FD872-4E75-F7E7-D398-85BE9D5EBE9C";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideBottomRightMultDivide";
	rename -uid "8DC67E92-4B87-745C-39A1-22B0E1E42EAC";
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideBottomRightYMultDivide";
	rename -uid "32308F82-4911-5DFA-28BB-0EA8A78962BF";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideBottomLeftXClamp";
	rename -uid "CBEE6CA6-4276-4C78-4953-959404C59451";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideBottomLeftYClamp";
	rename -uid "8EC10718-4F3F-BD38-AD92-2284B397E17B";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:Narrow_WideBottomLeftAdd";
	rename -uid "F57B83BA-4177-5BA3-B45D-A28FA8F49C91";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideBottomLeftMultDivide";
	rename -uid "85A2ECD6-4B29-5557-4EAF-B2BDC679684D";
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideBottomLeftXMultDivide";
	rename -uid "98F0D607-460C-2F8A-F725-88BBEFCD24DB";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideBottomLeftYMultDivide";
	rename -uid "7FAF045E-42E2-4025-AED2-17AEE0019603";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideTopRightXClamp";
	rename -uid "0BF10A09-4A27-5D7A-5B86-5A8FD5495FE9";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideTopRightYClamp";
	rename -uid "0A1EBDBF-470F-134D-CDB6-1CB17865BDB5";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideTopRightMultDivide";
	rename -uid "FD247F8A-4550-45C0-2F92-4087519EACA8";
createNode clamp -n "maxformaya_v4_5:Narrow_WideTopLeftXClamp";
	rename -uid "EEB4F408-44E7-519C-58DD-7081FB9BDE72";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Narrow_WideTopLeftYClamp";
	rename -uid "FE8004AD-4B69-272D-029F-0989C7EAEA9D";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:Narrow_WideTopLeftAdd";
	rename -uid "6E4571E7-47DB-614D-9EF6-259617BDA919";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideTopLeftMultDivide";
	rename -uid "45F21C81-42D4-7466-85BA-3AA8E921A3D2";
createNode multiplyDivide -n "maxformaya_v4_5:Narrow_WideTopLeftXMultDivide";
	rename -uid "4F8B4421-4211-BBAF-0E09-D995737DCDE8";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:GrrLeftTopClamp";
	rename -uid "E1ACD8D1-483E-0BF6-5255-E8A801EDE7B4";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:GrrLeftRightClamp";
	rename -uid "25C68860-4B4A-27CE-E851-08A102332130";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:GrrRightTopClamp";
	rename -uid "EAF37ECD-4E29-EEFA-E837-02AFB2328801";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:GrrRightRightClamp";
	rename -uid "6DF9A6D7-4046-9DF0-D02E-0AAC4A650CC4";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:jawMultiplyDivide";
	rename -uid "7B31FC84-40A1-C8CA-D8A7-C0A0E6E13BC7";
	setAttr ".i2" -type "float3" 25 -40 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:browR3multiplyDivide";
	rename -uid "5F143074-46F9-C217-D4F0-F5907527C817";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:browR2multiplyDivide";
	rename -uid "50206C87-435C-1B33-23E2-62AF3A9B5E54";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:browR1multiplyDivide";
	rename -uid "E5289E3E-494B-63E5-7037-16BD811FE729";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:browL1multiplyDivide";
	rename -uid "80F858D7-44C7-2EFE-71E6-6C9D3752E90E";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:browL2multiplyDivide";
	rename -uid "3B306078-4E07-FBB2-ACE8-369E510A5832";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:browL3multiplyDivide";
	rename -uid "EC35D0C8-4A94-5D57-E3B2-8A857573CA34";
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode multiplyDivide -n "maxformaya_v4_5:jawSquashStretchMultiplyDivide";
	rename -uid "B82F7BB1-43EA-867E-DFE8-E0A3A334E464";
createNode multiplyDivide -n "maxformaya_v4_5:jawRotateMultiplyDivide";
	rename -uid "B5540D57-4814-5BAA-5377-4D9520A46CF2";
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidLMultiplyDivide";
	rename -uid "72D7474E-4C3D-C7A6-D2C1-54BB954072F2";
	setAttr ".i2" -type "float3" 0.5 0.1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidRMultiplyDivide";
	rename -uid "10911CE8-430F-E4BE-2E39-DA945449F07C";
	setAttr ".i2" -type "float3" 0.5 0.2 1 ;
createNode clamp -n "maxformaya_v4_5:PupilLTopClamp";
	rename -uid "7269F390-4814-3E8A-BE91-88889F4CF417";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:PupilLBottomClamp";
	rename -uid "6048BC84-434C-571D-CC72-42900211CD97";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:PupilLBottomMultDivide";
	rename -uid "8E0FD65B-4684-D44C-EC8B-988621DDBD04";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:PupilRTopClamp";
	rename -uid "BDD5D4D4-443E-60D2-73F1-FCB0423B00A2";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:PupilRBottomClamp";
	rename -uid "9F02081E-4EC9-35F2-8690-6DA8F034A725";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:PupilRBottomMultDivide";
	rename -uid "17325834-4687-19F4-9F7C-CCADDD786204";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidTopRMultiplyDivide";
	rename -uid "FEEF5694-4F20-F2BC-AD5D-6E840EB7D956";
	setAttr ".i2" -type "float3" 1 -140 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidTopLMultiplyDivide";
	rename -uid "82B56D1C-4700-A3E4-262E-4EA8C95E56DB";
	setAttr ".i2" -type "float3" 1 -140 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidBottomRMultiplyDivide";
	rename -uid "283D89EC-464D-63AC-10D7-83B00BA67D41";
	setAttr ".i2" -type "float3" 1 -80 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:eyeLidBottomLMultiplyDivide";
	rename -uid "1AA33E4F-46E4-93F8-AA21-3A91AC419309";
	setAttr ".i2" -type "float3" 1 -80 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:armRollRMultiplyDivide";
	rename -uid "C394B5E2-4F5F-42A9-69D4-B1B04F163C57";
	setAttr ".i2" -type "float3" 0.15000001 0.60000002 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKBack_Stretch_Divide";
	rename -uid "1503DA0B-4F04-F62A-C007-3FB932197559";
	setAttr ".op" 2;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_Stretch_Multiply";
	rename -uid "D7C6E0DE-4A49-D986-08FA-9A820DE361BB";
	setAttr ".i2" -type "float3" 4.7435803 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_Stretch_Multiply";
	rename -uid "C8DCE34E-497B-2EA7-B924-6ABECE1DF10A";
	setAttr ".i2" -type "float3" 4.8102388 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_Stretch_Multiply";
	rename -uid "4D71A740-4E5E-7564-1236-20A33C3E4111";
	setAttr ".i2" -type "float3" 5.4920678 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_Stretch_Multiply";
	rename -uid "350DD868-43FC-5D97-D4AD-8780A4075C9D";
	setAttr ".i2" -type "float3" 5.2077742 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_Stretch_Multiply";
	rename -uid "82FBE7E1-4240-DEE1-C33F-60A5D6EB2148";
	setAttr ".i2" -type "float3" 5.3039327 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_Stretch_Multiply";
	rename -uid "BAD35C88-4529-B1A4-9EFF-F0A21193C1DF";
	setAttr ".i2" -type "float3" 5.1188865 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_Stretch_Multiply";
	rename -uid "25DA6330-4579-67A4-3CCF-A197F489931C";
	setAttr ".i2" -type "float3" 4.98283 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_spine8Bind_Joint_Stretch_Multiply";
	rename -uid "4095D8A7-45F0-85AB-422A-699E28990F4B";
	setAttr ".i2" -type "float3" 4.9615808 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:squashStretchIKMultiplyDivide";
	rename -uid "5262CA00-4C4F-823C-133E-3CA99F8C6AD3";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:LowerTorsoStretchMultiplyDivide";
	rename -uid "497E75BD-4359-736A-FE42-31BEE82964FC";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:UpperTorsoStretchMultiplyDivide";
	rename -uid "DE688549-4326-7455-5292-90AB932CEF0C";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:rootFKStretchMultiplyDivide";
	rename -uid "53CB029B-477D-498B-4179-5BA1D14205C2";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:shoulderFKLMultiplyDivide";
	rename -uid "97A53C4D-4AD7-AD83-E008-B985D640693B";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:elbowFKLMultiplyDivide";
	rename -uid "8363B5C9-49D7-C562-9C94-EE886154AA12";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:shoulderFKRMultiplyDivide";
	rename -uid "051DBFFD-489B-DCBD-7B5C-51BF08E0D70A";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:elbowFKRMultiplyDivide";
	rename -uid "D56073E9-4FBD-D7A7-95AA-69947BB6E3D4";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:armRollLMultiplyDivide";
	rename -uid "125922D4-4181-EC26-4324-5999CB5CE7FE";
	setAttr ".i2" -type "float3" 0.15000001 0.60000002 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:legFKRMultiplyDivide";
	rename -uid "961AF1B7-46C8-3D6A-1482-D7908A1D42BD";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:legFKLMultiplyDivide";
	rename -uid "D67BAE6F-415D-4821-C73E-FDBC253BAB71";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:kneeFKRMultiplyDivide";
	rename -uid "47C05A42-4B3D-D81D-7AB3-BCBD8DB0271E";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:kneeFKLMultiplyDivide";
	rename -uid "82FF7569-47A2-977C-953C-C4AF93BFDE0C";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:footFKRMultiplyDivide";
	rename -uid "DD61DF35-45F7-EE47-F600-CD9FF7588E46";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:footFKLMultiplyDivide";
	rename -uid "846F52D8-49BD-46FA-2EF5-9A9B487A0029";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:toeFKRMultiplyDivide";
	rename -uid "D568EA27-41B1-95D6-7264-F49AE388A5E7";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:toetFKLMultiplyDivide";
	rename -uid "A5DE57E2-4EB6-7D92-88EF-B4ACCB24E6C0";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "maxformaya_v4_5:spine0BlendColors";
	rename -uid "C9546AD1-4CBA-40F0-368A-4EB4CBE8037D";
createNode blendColors -n "maxformaya_v4_5:spine7BlendColors";
	rename -uid "7C91C8F0-41CC-BDBE-5A9F-DB8C6D1B9B17";
createNode blendColors -n "maxformaya_v4_5:spine6BlendColors";
	rename -uid "456F1D4D-4F3E-24FF-D429-3D9AFF67D2D5";
createNode blendColors -n "maxformaya_v4_5:spine5BlendColors";
	rename -uid "1ADD5F8A-4DCB-52A7-DD40-8F86D2D4BB1B";
createNode blendColors -n "maxformaya_v4_5:spine4BlendColors";
	rename -uid "7EEA2A9E-4305-1ECC-9562-93987214B3ED";
createNode blendColors -n "maxformaya_v4_5:spine3BlendColors";
	rename -uid "E0D04BB8-48DE-0D16-7690-71B901E8A469";
createNode blendColors -n "maxformaya_v4_5:spine2BlendColors";
	rename -uid "C654A536-4862-7391-BE33-EBAAB4D4C9C5";
createNode blendColors -n "maxformaya_v4_5:spine1BlendColors";
	rename -uid "D2328F18-42EC-9F28-4BAA-FB8186CD8D79";
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerLMultiplyDivide";
	rename -uid "929C1100-4D3B-B1B6-37CD-15B88F73018D";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerLMultiplyDivide";
	rename -uid "30660421-48C0-C7B6-27C7-DDA3B34D4B42";
	setAttr ".i2" -type "float3" 1.4 2 2.0999999 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerLMultiplyDivide";
	rename -uid "1FD54BD2-4A1F-BAB0-873D-5EA2ADA12786";
	setAttr ".i2" -type "float3" 1.4 2 2.0999999 ;
createNode multiplyDivide -n "maxformaya_v4_5:pinkyFingerLMultiplyDivide";
	rename -uid "9D782F15-498D-0880-8362-DF934D285ECB";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:thumbFingerLMultiplyDivide";
	rename -uid "F257ACED-4E16-1AD6-C9EE-748EA153C186";
	setAttr ".i2" -type "float3" 1 0.15000001 0.15000001 ;
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerLSpreadMultiplyDivide";
	rename -uid "50CF967C-4EDF-AE55-C6AF-34BD6B5C12E5";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerSpreadLMultiplyDivide";
	rename -uid "095BC035-42A6-EC67-6606-6D80623183D0";
	setAttr ".i2" -type "float3" -0.30000001 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerSpreadLMultiplyDivide";
	rename -uid "3DEB32FD-4544-9FEB-AEE8-6DA65AC5E86B";
	setAttr ".i2" -type "float3" 0.30000001 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerLStretchMultiplyDivide";
	rename -uid "7856E54D-44A8-219C-30A1-F1A8C8D9F9D6";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerStretchLMultiplyDivide";
	rename -uid "C84DDCDB-4E84-6087-D9DB-BBB7DF80997D";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerStretchLMultiplyDivide";
	rename -uid "905B6ADB-48F1-CF8F-1E3E-3AB5E81849B7";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:pinkyFingerStretchLMultiplyDivide";
	rename -uid "2C37D9CF-4465-E6B9-880E-BDAD2B5988E7";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:thumbFingerStretchLMultiplyDivide";
	rename -uid "EBF7B0A4-4781-1ADA-9F45-3598F104118E";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:thumbFingerStretchRMultiplyDivide";
	rename -uid "ED1751F0-47E4-F626-8E28-60A2FD4325ED";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:thumbFingerRMultiplyDivide";
	rename -uid "642E252E-4CA3-8AD1-F327-F3B61BE4E01B";
	setAttr ".i2" -type "float3" 1 0.15000001 0.15000001 ;
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerRMultiplyDivide";
	rename -uid "BD7AE737-4942-B236-6934-74A5E0B89DAE";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerRSpreadMultiplyDivide";
	rename -uid "B8A12A93-4016-3B3C-826C-7BB73C801FF9";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:pointFingerRStretchMultiplyDivide";
	rename -uid "D5AC412D-4EE7-BF93-574B-CDAE449F5BF7";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerRMultiplyDivide";
	rename -uid "1D129D51-4084-EC50-CA7E-28922272B025";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerSpreadRMultiplyDivide";
	rename -uid "1AC2EE2A-497F-821F-857A-F8A4CD899E7C";
	setAttr ".i2" -type "float3" -0.30000001 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:middleFingerStretchRMultiplyDivide";
	rename -uid "D9A18B55-4188-9C4E-8511-14BF4930CAED";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerRMultiplyDivide";
	rename -uid "554773A2-45DC-CDEC-E225-91883EEFB4AB";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerSpreadRMultiplyDivide";
	rename -uid "DE10692A-4457-2548-83C5-62B55674BA3C";
	setAttr ".i2" -type "float3" 0.30000001 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:ringFingerStretchRMultiplyDivide";
	rename -uid "FC5DE5AD-43BD-80C2-D35E-E492A2B2C7D8";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:pinkyFingerRMultiplyDivide";
	rename -uid "85E7E4EA-4A2E-EDF1-2390-938D8F432C44";
	setAttr ".i2" -type "float3" 2.0999999 2 1.4 ;
createNode multiplyDivide -n "maxformaya_v4_5:pinkyFingerStretchRMultiplyDivide";
	rename -uid "3CCB3B84-4501-4897-A76A-43A1B5CBDF5F";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "maxformaya_v4_5:shoulderFKRBlendColors";
	rename -uid "3E18BCDD-4631-9CB8-BF28-6B91A3229145";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:elbowFKRBlendColors";
	rename -uid "F74384C0-426E-539C-D6CB-74936088FD8F";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:shoulderFKLBlendColors";
	rename -uid "13FF2739-4C0C-53F2-61A2-C99B3524FA04";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:elbowFKLBlendColors";
	rename -uid "B31CE4F9-47BE-EAFA-932D-3B9D831A05A7";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:shoulderRBlendColors";
	rename -uid "3BB8F1F2-4583-8CF9-809A-34B5A47120D6";
createNode blendColors -n "maxformaya_v4_5:elbowRBlendColors";
	rename -uid "DBC793BD-4EFF-6804-4C85-1A8E94539F3A";
createNode blendColors -n "maxformaya_v4_5:shoulderLBlendColors";
	rename -uid "465606F5-47DC-4C19-9644-77BF8E68FBFE";
createNode blendColors -n "maxformaya_v4_5:elbowLBlendColors";
	rename -uid "BEA71B93-4DD6-738D-8F0C-D9B9A57D5D47";
createNode blendColors -n "maxformaya_v4_5:shoulderLSsAmountBlendColors";
	rename -uid "9993E810-4688-4FD6-4106-A192C166716F";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:elbowLSsAmountBlendColors";
	rename -uid "C63BBFF9-406A-F353-8B06-4D86D9703158";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:shoulderRSsAmountBlendColors";
	rename -uid "2751A336-4129-CBAE-087C-2FB9B0DBFA01";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:elbowRSsAmountBlendColors";
	rename -uid "AC9ED7E8-497B-BF1D-888B-A299C3132800";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:UpperTorsoSsAmountBlendColors";
	rename -uid "79A67AA9-478B-6EB3-C484-D4AAE5A6C9E5";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:LowerTorsoSsAmountBlendColors";
	rename -uid "ECCC5676-4D0E-0C27-56B7-E1B818F90940";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:rootFKSsAmountBlendColors";
	rename -uid "0025BB02-4448-962D-1138-4E972EA5B7F5";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:squashStretchIKSsAmountBlendColors";
	rename -uid "84307CED-44EF-6DAB-9173-0DA16E5E309F";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:hipLBlendColors";
	rename -uid "1DEA3730-4035-2B38-2750-EDB6732EF9A3";
createNode blendColors -n "maxformaya_v4_5:kneeLBlendColors";
	rename -uid "31E2C263-4881-EC60-17F4-F282E1E0B3F2";
createNode blendColors -n "maxformaya_v4_5:hipRBlendColors";
	rename -uid "8DD506D5-4BF5-720D-DCAB-3990396024C9";
createNode blendColors -n "maxformaya_v4_5:kneeRBlendColors";
	rename -uid "34F21C0F-4ABB-20D7-A60F-5CACEDFBA0A2";
createNode blendColors -n "maxformaya_v4_5:hipRIKSsAmountBlendColors";
	rename -uid "DAA742FB-460C-51AD-2BF3-89A9BCDD218F";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:kneeRIKSsAmountBlendColors";
	rename -uid "60C5F6C7-4999-FF1D-9BF5-89A8F51872CE";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:hipLIKSsAmountBlendColors";
	rename -uid "025708EF-4AA3-698B-22E3-BBA862B7E0A6";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:kneeLIKSsAmountBlendColors";
	rename -uid "1F8B6DE3-4704-C03B-7B14-D8A5FCE9DF2B";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:hipLFKSsAmountBlendColors";
	rename -uid "DCC8D35B-44A2-11CD-1D80-878B9668B1E3";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:kneeLSsAmountBlendColors";
	rename -uid "7575E377-4CCE-B043-D07C-76A96AFAE864";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:footFKLSsAmountBlendColors";
	rename -uid "02DEF32A-4AE5-0B65-5151-0E94F312B943";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:toeFKLSsAmountBlendColors";
	rename -uid "831C555C-4EAB-E089-64BA-3C82631CBE78";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:legFKRSsAmountBlendColors";
	rename -uid "0C8B1B34-47BB-AB89-C337-6FA4C13796A3";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:kneeFKRSsAmountBlendColors";
	rename -uid "91FA9DA8-41C7-2A71-F3D3-72BBD7C70AE8";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:footFKRSsAmountBlendColors";
	rename -uid "086675E3-4D19-62C5-FC87-108A72EC9418";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:toeFKRSsAmountBlendColors";
	rename -uid "41556E80-472F-B072-0C29-2FB9AE6C81E7";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:thumbFingerLSsAmoutnBlendColors";
	rename -uid "4F4070AE-4362-CA55-8FD2-52AF35580861";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:pointFingerLSsAmountBlendColors";
	rename -uid "2F6D6116-4CC4-63FC-1AAF-228A2B7ABE16";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:middleFingerLSsAmountBlendColors";
	rename -uid "EA0F7EA8-47A2-AC07-5DCF-4482B0273FBF";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:ringFingerLSsAmountBlendColors";
	rename -uid "0E37AF08-4C51-0A1E-55BF-E7812E845180";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:pinkyLSsAmountBlendColors";
	rename -uid "660E2D10-43D0-4266-42EB-54A5722CD6A9";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:thumbFingerRSsAmountBlendColors";
	rename -uid "4FB88BA9-4415-EA64-433D-248939B61C32";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:pointFingerRSsAmountBlendColors";
	rename -uid "CBCBE497-41E0-2850-2694-86B43A41A262";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:middleFingerRSsAmountBlendColors";
	rename -uid "250C3EAD-410D-E05B-A573-9E9FE67322DD";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:ringFingerRSsAmountBlendColors";
	rename -uid "71384DAD-4D4B-FEDD-60BF-D2AFB1C612DD";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "maxformaya_v4_5:pinkyFingerRSsAmountBlendColors";
	rename -uid "C3FB9B38-4216-DD2D-51FA-CAADA67E21E8";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode condition -n "maxformaya_v4_5:IKLCondition";
	rename -uid "22773F95-497D-AEC4-60F9-C9A1A1BE3336";
	setAttr ".op" 4;
createNode multiplyDivide -n "maxformaya_v4_5:IKLMultiplyDivide";
	rename -uid "78301A26-4D5B-934A-6E5C-F0A9E0EA3879";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1 60.485733 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:IKLMultiplyDivide2";
	rename -uid "15ECAF44-467B-4623-6BE4-FBA952C0A153";
createNode multiplyDivide -n "maxformaya_v4_5:IKLMultiplyDivide3";
	rename -uid "A79BA520-4920-42A2-1876-E18085B4DDE0";
createNode plusMinusAverage -n "maxformaya_v4_5:IKLPlusMinusAverage";
	rename -uid "4759D79A-4573-BDDC-1D38-B59C43AE6B56";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "maxformaya_v4_5:IKLPlusMinusAverage2";
	rename -uid "71D5FC58-4BA2-7E98-B8E1-648299D4933D";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "maxformaya_v4_5:IKLMultiplyDivide4";
	rename -uid "B80B81C0-4711-BED9-8578-E1AA2F0BED5D";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode condition -n "maxformaya_v4_5:IKRCondition";
	rename -uid "D5E8F2C8-410F-461E-2DBC-819351CAB229";
	setAttr ".op" 4;
createNode multiplyDivide -n "maxformaya_v4_5:IKRMultiplyDivide";
	rename -uid "E3D3DB51-46DD-94ED-8CCB-1B8B26868CA9";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1 60.485756 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:IKRMultiplyDivide2";
	rename -uid "2E52F2DA-4E68-6B5D-DF92-62BCD375FBBD";
createNode multiplyDivide -n "maxformaya_v4_5:IKRMultiplyDivide3";
	rename -uid "C1E62D8B-42B7-B849-4098-AAAA0465EEC5";
createNode plusMinusAverage -n "maxformaya_v4_5:IKRPlusMinusAverage";
	rename -uid "C201CBF1-4168-82D1-98C7-F5B9C1BAD1D4";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "maxformaya_v4_5:IKRPlusMinusAverage2";
	rename -uid "FFF65646-44F3-69FC-FAE4-A8BF0C58644A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "maxformaya_v4_5:IKRMultiplyDivide4";
	rename -uid "FFC17F45-4684-A1FE-739D-479ADF47BA03";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode blendColors -n "maxformaya_v4_5:armRollRBlendColors";
	rename -uid "D328D299-42A1-D17F-F350-A8A7A1E7E7B9";
createNode blendColors -n "maxformaya_v4_5:armRollLBlendColors";
	rename -uid "7960B526-47CE-8733-E3F5-EF861E27746F";
createNode multiplyDivide -n "maxformaya_v4_5:thumbSpreadRMultiplyDivide";
	rename -uid "479688E2-4FCE-026A-3406-A28929480A97";
	setAttr ".i2" -type "float3" -0.15000001 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:thumbSpreadLMultiplyDivide";
	rename -uid "1D6DCE6F-46C5-173F-2A0F-0A802E1E5199";
	setAttr ".i2" -type "float3" -0.15000001 1 1 ;
createNode blendColors -n "maxformaya_v4_5:toeIKFKRStretchBlendColors";
	rename -uid "39AE9775-4CE2-316A-BACD-5E98E5658F85";
createNode blendColors -n "maxformaya_v4_5:ankleIKFKRStretchBlendColors";
	rename -uid "4FBF1C77-42CA-ECEC-BB6A-B5A049EA2CFD";
createNode blendColors -n "maxformaya_v4_5:toeIKFKLStretchBlendColors";
	rename -uid "6935DD52-4772-2535-BC23-C1AE1ADAE8EB";
createNode blendColors -n "maxformaya_v4_5:ankleIKFKLStretchBlendColors";
	rename -uid "DC1A8276-43E6-814A-0E64-EAA7647D5C87";
createNode multiplyDivide -n "maxformaya_v4_5:neckMultiplyDivide";
	rename -uid "D33E5F2F-4A2A-7F93-B989-9CB73E0DB951";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 7.415 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:headMultiplyDivide";
	rename -uid "CA78FB99-4F43-93E7-B77A-9681AB8BE638";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "maxformaya_v4_5:headSsAmountBlendColors";
	rename -uid "6A6DC502-4B73-456D-9A4A-19A8AA7C841A";
	setAttr ".c1" -type "float3" 100000 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:headStretchMultiplyDivide";
	rename -uid "E672AD9E-4FC1-A280-21DF-B7B1316AF23D";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "maxformaya_v4_5:headStretchBlendColors";
	rename -uid "0D458446-4A02-EBFA-725F-DE9E7DF564E5";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:toungeMultiplyDivide";
	rename -uid "743E43E9-4886-1146-B343-68938484D125";
	setAttr ".i2" -type "float3" 40 -60 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:toungeStretchMultiplyDivide";
	rename -uid "2CD56A1D-4436-6EB3-FD13-B997DB47D72D";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode blendColors -n "maxformaya_v4_5:toungeBlendColors";
	rename -uid "75B8DAB6-42F4-F137-9984-19BF4B968B44";
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode clamp -n "maxformaya_v4_5:LipsTopLeftXClamp";
	rename -uid "94276280-4709-D0F6-4900-05A2403F6CDA";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:LipsTopLeftYClamp";
	rename -uid "D8387936-469C-2031-9FB2-CBA1D2CE4615";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:LipsTopLeftAdd";
	rename -uid "A9FE89CB-4ED5-E88B-516E-CE9AC103755F";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:LipsTopLeftMultDivide";
	rename -uid "3D8DCC43-4DF2-6A1E-F569-9BB808878707";
createNode multiplyDivide -n "maxformaya_v4_5:LipsTopLeftXMultDivide";
	rename -uid "1F96E2A9-42AF-E1DB-031B-88B2763211FF";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:LipsTopRightXClamp";
	rename -uid "34ED7889-431D-956A-E007-66971DA378D0";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:LipsTopRightYClamp";
	rename -uid "7C414224-4B0A-ECA7-F428-D083C6FCC6A7";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:LipsTopRightMultDivide";
	rename -uid "AE78B6F6-4E45-C641-287A-2D89D43A4CD1";
createNode clamp -n "maxformaya_v4_5:LipsBottomLeftXClamp";
	rename -uid "8082198F-47C9-4EB1-FC1F-CE9AFECBE376";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:LipsBottomLeftYClamp";
	rename -uid "9375AB9C-47E2-E6EC-0F25-26968D09F184";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:LipsBottomLeftAdd";
	rename -uid "7495D14F-4779-F37D-8FB2-F98C17E10774";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:LipsBottomLeftMultDivide";
	rename -uid "0215F206-4F8D-65D0-FA91-D589AC5D233D";
createNode multiplyDivide -n "maxformaya_v4_5:LipsBottomLeftXMultDivide";
	rename -uid "E863DB72-4FF9-5597-612A-7BA26539D042";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:LipsBottomLeftYMultDivide";
	rename -uid "3FDB32CC-4D57-EFBB-F3A7-D7AE58464A0E";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:LipsBottomRightXClamp";
	rename -uid "07C6E8A6-4879-2CFB-C761-28BACD2301AD";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:LipsBottomRightYClamp";
	rename -uid "C04FD1F1-40CB-7F4C-E622-F3980D80432B";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:LipsBottomRightMultDivide";
	rename -uid "B13DCE27-4CB4-D12D-4699-7E91C74B7D13";
createNode multiplyDivide -n "maxformaya_v4_5:LipsBottomRightYMultDivide";
	rename -uid "F00B002F-4BA7-708D-0F9D-24976C33A882";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Lips_UpTopClamp";
	rename -uid "51A1E0B4-43E2-7CCC-CF82-6F88705053AB";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Lips_UpRightClamp";
	rename -uid "6363ACA3-4E01-688C-BE1A-3B9A3675F4B4";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Lips_DownTopClamp";
	rename -uid "DED9057C-4C98-53A7-D3AA-1C88EC638FAB";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Lips_DownRightClamp";
	rename -uid "4400CB2F-4667-67DD-6F4E-E9A3F925283D";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Oo_CheeksTopClamp";
	rename -uid "95E19818-41BC-6A70-8119-9A8D35E3E12D";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Oo_CheeksBottomLClamp";
	rename -uid "C696CD3E-468F-572C-EBE8-D38C41BD9B7B";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Oo_CheeksBottomLMultDivide";
	rename -uid "39CDF5DA-4754-3EA7-585A-93BB3EB9A868";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Oo_CheeksBottomRClamp";
	rename -uid "FB066BC3-4D74-65F3-F8B2-09AD6CA08CC0";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Oo_CheeksBottomRMultDivide";
	rename -uid "83F54E83-4123-A0D4-E9B6-F1A1F75B5041";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Jaw_In_OutTopClamp";
	rename -uid "BBB1DF67-4E09-4F67-50DD-A5A5B25A6C57";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Jaw_In_OutBottomClamp";
	rename -uid "4B696851-48FF-CA07-B4A8-6B939AF28B61";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Jaw_In_OutBottomMultDivide";
	rename -uid "25AB1BAB-4DB2-943D-6F83-8689E65BEB94";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Jaw_Left_RightRightClamp";
	rename -uid "11482481-40E0-B8E9-0683-749EB30F701A";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Jaw_Left_RightLeftClamp";
	rename -uid "3B646EE2-4BB0-B4FD-DB82-4AA4E6D466C7";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Jaw_Left_RightLeftMultDivide";
	rename -uid "F4972A72-4352-F57A-93AD-B19C3152119A";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:tongueMultiplyDivide";
	rename -uid "D3E7679B-451D-0762-5A98-00A4503B02D1";
	setAttr ".i2" -type "float3" 1 2.5 1 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownTopLeftXClamp";
	rename -uid "3C41BE51-40CD-FE74-6953-F687A41C9FED";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownTopLeftYClamp";
	rename -uid "B6F5155F-4A55-C2F5-5E80-1DB5B666C913";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:Smile_FrownTopLeftAdd";
	rename -uid "F48465EE-4A70-6EF7-9A7F-B9A7F0769805";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownTopLeftMultDivide";
	rename -uid "742A4C0C-4445-8A5B-2EDE-1B80F79A2E00";
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownTopLeftXMultDivide";
	rename -uid "864F6D91-4809-66DD-F2AB-FDBBD9357EC7";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownTopRightXClamp";
	rename -uid "9C6B87AE-4DD1-4695-6E16-DBAA9FB705C3";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownTopRightYClamp";
	rename -uid "1D137BA6-449D-62E0-AE7A-BBA8F7948BAF";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownTopRightMultDivide";
	rename -uid "E72C32B0-4B23-86BD-FF04-B1A7E1D06090";
createNode clamp -n "maxformaya_v4_5:Smile_FrownBottomLeftXClamp";
	rename -uid "C187DE1B-4982-1885-7D8F-8D83A72193E6";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownBottomLeftYClamp";
	rename -uid "F59A5F13-4611-D031-31F9-F88DDD77918C";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode addDoubleLinear -n "maxformaya_v4_5:Smile_FrownBottomLeftAdd";
	rename -uid "70DC48C8-42E0-6923-02FF-C2895E7C6ACC";
	setAttr ".ihi" 2;
	setAttr ".i2" 1;
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownBottomLeftMultDivide";
	rename -uid "DEE0A141-4A62-84F0-BFBD-D2B9920D4138";
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownBottomLeftXMultDivide";
	rename -uid "74CD53DD-4439-DCE8-9D00-FFAE51104355";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownBottomLeftYMultDivide";
	rename -uid "1E9EF97A-4F39-B100-58C2-008578D26B0C";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownBottomRightXClamp";
	rename -uid "427ACF4D-4924-EB6A-BE3E-4FACE73DE9C8";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "maxformaya_v4_5:Smile_FrownBottomRightYClamp";
	rename -uid "382434BC-4F37-8863-3BD5-AE88B9D5575E";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownBottomRightMultDivide";
	rename -uid "5BD2876F-4B2E-4171-3653-8C94E0F0AE26";
createNode multiplyDivide -n "maxformaya_v4_5:Smile_FrownBottomRightYMultDivide";
	rename -uid "49D2B4BC-42BC-13BB-7A5A-738117762F4F";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:ikSpineWorldMultiplyDivide";
	rename -uid "0C2474B2-4504-4F26-D559-739BA721949E";
	setAttr ".i2" -type "float3" 40.620998 1 1 ;
createNode blinn -n "maxformaya_v4_5:brow_Mat";
	rename -uid "B5D6C761-4637-A448-5468-C78683C30B45";
	setAttr ".c" -type "float3" 0.15483871 0.12527841 0.10699356 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
createNode shadingEngine -n "maxformaya_v4_5:brow_SG";
	rename -uid "271EAA8A-4784-42A8-4E80-2599490051B6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:lights2_materialInfo3";
	rename -uid "1F9348F1-4F0A-D637-6B18-628245FD4B52";
createNode blinn -n "maxformaya_v4_5:teeth_Mat";
	rename -uid "AEC4A77E-4D03-0766-E287-0E8E6D5DF576";
	setAttr ".dc" 0.61985999345779419;
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "maxformaya_v4_5:teeth_SG";
	rename -uid "2B24921C-4B3E-6D60-65CF-3AAD31825732";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:lights2_materialInfo5";
	rename -uid "D2825C69-42E0-7A7F-056C-AF86FD1F6777";
createNode blinn -n "maxformaya_v4_5:tongue_Mat";
	rename -uid "78F160DC-4FA0-292F-7F75-2DBBB3098230";
	setAttr ".c" -type "float3" 0.70700002 0.33582503 0.33582503 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
createNode shadingEngine -n "maxformaya_v4_5:tounge_SG";
	rename -uid "964CED64-4D9F-A391-2EDA-6486EEFF4E3D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:lights2_materialInfo7";
	rename -uid "B8A91A16-442F-1EA3-ECD4-468018C05006";
createNode blinn -n "maxformaya_v4_5:body_Mat";
	rename -uid "18C3D165-4B81-460F-0F1C-1F988CDFD19C";
	setAttr ".c" -type "float3" 0.56309998 0.7008 0.81809998 ;
	setAttr ".sc" -type "float3" 0.057859998 0.057859998 0.057859998 ;
	setAttr ".rfl" 0;
	setAttr ".sro" 0.51239997148513794;
createNode shadingEngine -n "maxformaya_v4_5:body_SG";
	rename -uid "DA88F9DA-48F2-4D8E-F37D-98AC8BFD8BE6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:materialInfo8";
	rename -uid "88D9D5A5-4DD0-B0D8-C623-5C9155575011";
createNode rampShader -n "maxformaya_v4_5:eye_Mat";
	rename -uid "C85B9F8D-4EA4-E25B-DF99-628865C31268";
	setAttr ".dc" 0.60000002384185791;
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 1 0.96836948 0.96700001 ;
	setAttr ".clr[0].clri" 1;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".ec" 0.7768399715423584;
	setAttr ".spl" 1;
	setAttr ".sro[1]"  0 0.25999999 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0.80714285373687744;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.94285714626312256;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "maxformaya_v4_5:eye_SG";
	rename -uid "A5AC4DC4-409D-8353-D23E-8CB07108609E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:materialInfo11";
	rename -uid "25A3108C-45FE-D45F-D39D-4591A51204F7";
createNode rampShader -n "maxformaya_v4_5:pupil_Mat";
	rename -uid "5E66458B-40A4-4587-0650-5182A9478A71";
	setAttr ".dc" 0.60000002384185791;
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0 0 0 ;
	setAttr ".clr[0].clri" 1;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".ec" 0.7768399715423584;
	setAttr ".spl" 1;
	setAttr ".sro[1]"  0 0.25999999 2;
	setAttr -s 2 ".sc";
	setAttr ".sc[0].scp" 0.80714285373687744;
	setAttr ".sc[0].scc" -type "float3" 0 0 0 ;
	setAttr ".sc[0].sci" 0;
	setAttr ".sc[1].scp" 0.94285714626312256;
	setAttr ".sc[1].scc" -type "float3" 1 1 1 ;
	setAttr ".sc[1].sci" 0;
	setAttr ".rfl[0]"  0 0 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode shadingEngine -n "maxformaya_v4_5:pupil_SG";
	rename -uid "136A8D45-4593-9070-7C20-D28BCE3D8EFD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "maxformaya_v4_5:materialInfo12";
	rename -uid "B7D9F023-4A9C-C7AD-8D0B-DA971DEE29DD";
createNode multiplyDivide -n "maxformaya_v4_5:ikSpineSquashMultiplyDivide";
	rename -uid "C4B40E18-4E7C-4B61-5423-4FAD1BAD0C91";
	setAttr ".i2" -type "float3" 1.7 1 1 ;
createNode addDoubleLinear -n "maxformaya_v4_5:ikSpineAddDoubleLinear";
	rename -uid "4CA095E9-4B52-36FC-70EE-BA9CFFD58571";
	setAttr ".ihi" 2;
	setAttr ".i2" -0.412;
createNode blendColors -n "maxformaya_v4_5:twistRBlendColors";
	rename -uid "83A110CB-43AA-03A7-3DD2-A28DA13DD281";
createNode blendColors -n "maxformaya_v4_5:twistLBlendColors";
	rename -uid "908205E5-4AA4-B32F-854F-E29ED04E082A";
createNode blendColors -n "maxformaya_v4_5:eyeRBlendColors";
	rename -uid "5BD82EEA-43A6-515B-E690-3EA8E9D26A60";
createNode blendColors -n "maxformaya_v4_5:eyeLBlendColors";
	rename -uid "996CCC1C-4077-275C-27FF-7DB78AB00494";
createNode condition -n "maxformaya_v4_5:ankleIKRCondition";
	rename -uid "F190237B-4DAE-9699-906D-44891B0E791D";
	setAttr ".op" 4;
createNode multiplyDivide -n "maxformaya_v4_5:multiplyDivide1";
	rename -uid "FA61C58A-4384-512C-798C-82BC6AA38DBA";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1 87.895958 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKRMultiplyDivide1";
	rename -uid "7222CAFC-49CD-48A4-B361-9089D4040276";
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKRMultiplyDivide2";
	rename -uid "9D44A31C-43D2-869C-87E0-729F180B34E1";
createNode plusMinusAverage -n "maxformaya_v4_5:plusMinusAverage1";
	rename -uid "35CEAA88-432A-2946-E696-FC92DE258AD9";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "maxformaya_v4_5:ankleIKRPlusMinusAverage";
	rename -uid "58A99452-4C42-6D6F-46FF-C599DE94DE43";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode condition -n "maxformaya_v4_5:ankleIKLCondition";
	rename -uid "B8CD33B4-4888-3012-F64C-5D9517C803B7";
	setAttr ".op" 4;
createNode multiplyDivide -n "maxformaya_v4_5:multiplyDivide4";
	rename -uid "D7790EC2-41DA-87D3-5987-768CF47C0587";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 1 87.895912 1 ;
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKLMultiplyDivide1";
	rename -uid "BE1C881E-4534-10C7-9466-CCB0F0BE2C9D";
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKLMultiplyDivide2";
	rename -uid "D8D2E0A3-46DC-1B66-1682-21AD4B6E47C6";
createNode plusMinusAverage -n "maxformaya_v4_5:plusMinusAverage3";
	rename -uid "31261F98-4AEA-32D2-EFC9-3E83C8D65D80";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "maxformaya_v4_5:ankleIKLPlusMinusAverage";
	rename -uid "0D7397E8-43FE-9C0D-4FE3-A8B71878C307";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKRMultiplyDivide3";
	rename -uid "F0F5D72D-4C68-16C3-361C-15BF3D0C70D5";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode multiplyDivide -n "maxformaya_v4_5:ankleIKLMultiplyDivide3";
	rename -uid "2284F4E8-4828-B639-C9C8-3AB51C56013C";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 0 1 0 ;
createNode blendColors -n "maxformaya_v4_5:shoulderDummyLScaleBlendColors";
	rename -uid "4FD40E60-4072-604F-F69E-C0A6B8095D25";
createNode blendColors -n "maxformaya_v4_5:elbowDummyLScaleBlendColors";
	rename -uid "DC919CFE-42F2-EBA3-8910-8AB38B29D052";
createNode blendColors -n "maxformaya_v4_5:elbowDummyRScaleBlendColors";
	rename -uid "98EABFB3-4F24-C01D-2000-5D96F4783591";
createNode blendColors -n "maxformaya_v4_5:shoulderDummyRScaleBlendColors";
	rename -uid "9BD61882-4B76-3FC0-182C-FE996D02C95F";
createNode blendColors -n "maxformaya_v4_5:dummySpine2BlendColors";
	rename -uid "DC1A6093-4DAA-2A1D-7AA7-74B38A13EA37";
createNode script -n "maxformaya_v4_5:max_for_maya_script";
	rename -uid "0A41520D-494D-AB16-AE9E-A4A63960C2C1";
	setAttr ".b" -type "string" (
		"global proc max_for_maya_script_select()\r\n{\r\n\tstring $rigs[]={\t\t\t         };\r\n\tstring $name[]=`namespaceInfo -listOnlyNamespaces`;\r\n\tstring $currna=`namespaceInfo -currentNamespace  `;\r\n\r\n\tnamespace -set \":\";\r\n\t\r\n\tfor($s in $name)\r\n\t{\r\n\t\tif($s==\"UI\"||$s==\"shared\")\r\n\t\t{\r\n\t\t\tcontinue;\r\n\t\t}\r\n\r\n\t\tstring $node[]=`ls ($s+\":*\")`;\r\n\t\t\r\n\t\tfor($n in $node)\r\n\t\t{\r\n\t\t\tif(`gmatch  $n \"*abc123Null\"`)\r\n\t\t\t{\t\t\t\r\n\t\t\t\t$rigs[size($rigs)]=$s;\r\n\t\t\t\t\r\n\t\t\t\t\r\n\t\t\t}\r\n\t\t}\t\t\r\n\t}\r\n\r\n\tnamespace -set $currna;\r\n\t\r\n\tglobal string  $max_for_maya_script_str;\r\n\tglobal int     $max_for_maya_script_rig;\r\n\r\n\tif(size($rigs)>$max_for_maya_script_rig+1)\r\n\t{\r\n\t\t$max_for_maya_script_rig+=1;\r\n\t}\r\n\t\r\n\telse\r\n\t{\r\n\t\t$max_for_maya_script_rig=0;\r\n\t}\r\n\t\r\n\tselect \t\t    ($rigs[$max_for_maya_script_rig]+\":*Ctrl\");\r\n\t$max_for_maya_script_str=($rigs[$max_for_maya_script_rig]+\":\"     );\r\n\t\r\n\t\r\n}\r\n\r\nglobal proc max_for_maya_script_check()\r\n{\r\n\tglobal string  $max_for_maya_script_str;\r\n\r\n\tstring    $node[]=`ls ($max_for_maya_script_str+\"*\")`;\r\n\tfor($n in $node)\r\n\t{\r\n\t\tif(`gmatch  $n \"*abc123Null\"`)\r\n"
		+ "\t\t{\t\t\t\r\n\t\t\treturn;\r\n\t\t}\r\n\t}\r\n\t\r\n\tmax_for_maya_script_select();\r\n\tselect -cl;\r\n}");
	setAttr ".st" 1;
createNode polySmoothFace -n "maxformaya_v4_5:polySmoothFace17";
	rename -uid "CE91F93C-4AC3-6FD3-ED93-8E8D716E8256";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ost" yes;
	setAttr ".suv" yes;
	setAttr ".bnr" 0;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".ovf" yes;
createNode blendColors -n "maxformaya_v4_5:eyeScaleLBlend";
	rename -uid "6D3CEAD2-465E-35C2-E402-79B476A6FF55";
createNode blendColors -n "maxformaya_v4_5:eyeScaleRBlend";
	rename -uid "41686DFE-4488-1922-7763-76BF42F13366";
createNode displayLayer -n "maxformaya_v4_5:Body_Controls";
	rename -uid "38394C5C-453C-FF83-D951-1CA8CE8CE70D";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 5;
createNode displayLayer -n "maxformaya_v4_5:Facial_Controls";
	rename -uid "DB43DF85-408A-E069-60E9-0AB6EAEC9969";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 4;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AA0D4671-44E2-284E-FA63-F7BAF0F8789C";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.0.3";
createNode displayLayer -n "maxformaya_v4_5:Super_Mover";
	rename -uid "588EAF17-4EEA-C129-28A1-8282B7F94041";
	setAttr ".c" 12;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode nodeGraphEditorInfo -n "maxformaya_v4_5:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "234C2E1D-408B-CF11-CCC7-618A1BE8EA3D";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1924.2643447522462 -1342.4893001192318 ;
	setAttr ".tgi[0].vh" -type "double2" -390.93107234810242 1350.1935197124349 ;
createNode displayLayer -n "oceanBeach:geo";
	rename -uid "B9B0AB29-47EE-E380-9141-31990C9E5D42";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode ramp -n "oceanBeach:ramp1";
	rename -uid "AFAA0144-4CA8-71B1-3CC2-61AAB375E43F";
	setAttr ".t" 1;
	setAttr ".in" 6;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[2].ep" 0.5;
	setAttr ".cel[2].ec" -type "float3" 2 2 2 ;
	setAttr ".uw" 0.052631579339504242;
	setAttr ".n" 0.10000000149011612;
	setAttr ".vnf" 5;
createNode place2dTexture -n "oceanBeach:place2dTexture3";
	rename -uid "E9D663B7-4E4D-799D-A9D3-3FAD25285378";
	setAttr ".re" -type "float2" 7 1 ;
	setAttr ".of" -type "float2" 0.74000001 0 ;
createNode expression -n "oceanBeach:expression4";
	rename -uid "A9B2F525-4CA2-D230-5E2D-4DBCAFFF98BD";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=time*.045";
createNode layeredTexture -n "oceanBeach:layeredTexture1";
	rename -uid "6024F25D-443A-A21E-FE00-C2AC8E4EA076";
	setAttr -s 2 ".cs";
	setAttr ".cs[4].a" 1;
	setAttr ".cs[4].bm" 4;
	setAttr ".cs[4].iv" yes;
	setAttr ".cs[5].a" 1;
	setAttr ".cs[5].bm" 0;
	setAttr ".cs[5].iv" yes;
createNode noise -n "oceanBeach:noise1";
	rename -uid "DAA770D1-44CD-9FEF-10F8-D4B0A634B8A2";
	setAttr ".fq" 5;
	setAttr ".nty" 2;
	setAttr ".nw" 20;
	setAttr ".imc" -type "float2" 0 0 ;
createNode place2dTexture -n "oceanBeach:place2dTexture5";
	rename -uid "714FD97A-4B08-0EC1-5C43-B1B1E87EF98E";
createNode expression -n "oceanBeach:expression5";
	rename -uid "D2A433DA-49D0-5016-9BC1-A7A87B20698C";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=time*.4";
createNode shadingEngine -n "oceanBeach:bifrostLiquidMaterial3SG";
	rename -uid "A61479A2-4DCD-D5C1-D7AE-459BF31B006A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "oceanBeach:materialInfo1";
	rename -uid "BAD6B220-4455-ECB7-02C3-C8AA167E2F38";
createNode shadingEngine -n "oceanBeach:bifrostLiquidMaterial4SG";
	rename -uid "B20221FF-41A1-4059-042B-6B8E5DCAE578";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "oceanBeach:bifrostLiquidMaterial5SG";
	rename -uid "2B2A857E-47EE-0319-1CDB-6BBBDC6AC2C8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "oceanBeach:aiStandardSurface1";
	rename -uid "BA7D4924-4775-3A7D-C0EE-1BA04A367CD3";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".base" 0;
	setAttr ".base_color" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".specular_roughness" 0.11999999731779099;
	setAttr ".specular_IOR" 1.3329999446868896;
	setAttr ".transmission" 1;
	setAttr ".transmission_color" -type "float3" 0.74399996 0.94008321 1 ;
	setAttr ".transmission_depth" 10;
	setAttr ".transmission_scatter" -type "float3" 0.067499995 0.13404015 0.5 ;
	setAttr ".transmission_scatter_anisotropy" 0.75;
	setAttr ".nts" -type "string" "The look of the material depends on the actual thickness of geometry. If render does not look right, try change 'Depth' parameter in \"Transmission' section. Try values: 0, 1, 10, 50, 100";
createNode groupId -n "bridgeFall:groupId5";
	rename -uid "C267ED53-428A-5519-83BF-06AECD0A086E";
	setAttr ".ihi" 0;
createNode groupId -n "bridgeFall:groupId6";
	rename -uid "0A927BE7-4C1C-5F71-34F4-9F876390EF2D";
	setAttr ".ihi" 0;
createNode lambert -n "bridgeFall:span_geo_shardMat";
	rename -uid "37BFDAC1-4959-E126-E88B-FC8EDDA1852D";
	setAttr ".c" -type "float3" 0.69999999 0.69999999 0.69999999 ;
createNode shadingEngine -n "bridgeFall:span_geo_shardMatSG";
	rename -uid "9A86CC9A-419F-2F64-029B-F893D3D22B19";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "bridgeFall:materialInfo1";
	rename -uid "1FE9284C-4ED2-7BB1-9F9A-CCA77333AC10";
createNode ocean -n "bridgeFall:ocean1";
	rename -uid "58277ACB-4732-4C7F-E053-71A7F3BD6B85";
	setAttr ".cg" -type "float3" 10 10 10 ;
	setAttr ".wi" -type "float2" 0 1 ;
	setAttr ".nf" 8;
	setAttr ".wlx" 3;
	setAttr -s 2 ".wh[0:1]"  0 0.51999998 1 0.9217391 1 1;
	setAttr ".wtb[0]"  0 0.75999999 1;
	setAttr -s 2 ".wp[0:1]"  0 0 1 0.2 1 1;
	setAttr ".fmt" 0;
createNode place2dTexture -n "bridgeFall:place2dTexture1";
	rename -uid "C9130BBD-404F-B52E-DF54-1093AA55E6FD";
createNode bifrostAttrNotifier -n "bridgeFall:bifrostKillplane1AttrNotif";
	rename -uid "FA09816D-42A3-FA4D-14B1-A28B9C7ADB24";
createNode expression -n "bridgeFall:expression1";
	rename -uid "1CCC0611-4E12-6153-90D9-6BA49813FE54";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=time/5;";
createNode remapValue -n "bridgeFall:vel_vort_remap";
	rename -uid "D1A90F25-4EC8-511C-662C-CB877FB38F72";
	setAttr ".imx" 30;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode lambert -n "bridgeFall:lambert2";
	rename -uid "4F26B1BD-4870-2346-B243-3391B06DC536";
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".mom" 0;
createNode shadingEngine -n "bridgeFall:lambert2SG";
	rename -uid "1B1246C7-4FBE-7255-86FF-BD8066B7B765";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "bridgeFall:materialInfo5";
	rename -uid "E6385FA3-48EE-6536-35C0-8087B6601764";
createNode renderPass -n "bridgeFall:AO";
	rename -uid "793719B9-4EA1-13DA-9FD2-BAA533198AF8";
	addAttr -ci true -sn "ust" -ln "useShadingEngineThreshold" -nn "Use Shading Engine Threshold" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tth" -ln "transparencyThreshold" -nn "Transparency Threshold" 
		-min -3.4028234663852886e+38 -max 3.4028234600000001e+38 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "ugpu" -ln "useGpu" -nn "Use GPU" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locs" -ln "useLocalSettings" -nn "Use Local AO Settings" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "rays" -ln "rays" -nn "Rays" -dv 64 -min 0 -max 2147483647 
		-smn 0 -smx 1024 -at "long";
	addAttr -ci true -uac -sn "brt" -ln "brightColor" -nn "Bright Color" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "brtR" -ln "brightColorR" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -sn "brtG" -ln "brightColorG" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -sn "brtB" -ln "brightColorB" -dv 1 -at "float" -p "brightColor";
	addAttr -ci true -uac -sn "drk" -ln "darkColor" -nn "Dark Color" -at "float3" -nc 
		3;
	addAttr -ci true -sn "drkR" -ln "darkColorR" -at "float" -p "darkColor";
	addAttr -ci true -sn "drkG" -ln "darkColorG" -at "float" -p "darkColor";
	addAttr -ci true -sn "drkB" -ln "darkColorB" -at "float" -p "darkColor";
	addAttr -ci true -sn "sprd" -ln "spread" -nn "Spread" -min 0 -max 1 -smn 0 -smx 
		1 -at "float";
	addAttr -ci true -sn "spex" -ln "spreadExponent" -nn "Spread Exponent" -dv 1 -min 
		0 -max 3.4028234600000001e+38 -smn 0 -smx 3 -at "float";
	addAttr -ci true -sn "maxd" -ln "maxDistance" -nn "Maximum Distance" -min 0 -max 
		3.4028234600000001e+38 -smn 0 -smx 1000 -at "float";
	addAttr -ci true -sn "refl" -ln "reflective" -nn "Reflective" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cacp" -ln "cachePoints" -nn "Cache Points" -min 0 -max 2147483647 
		-smn 0 -smx 256 -at "long";
	addAttr -ci true -sn "oina" -ln "occInAlpha" -nn "Occlusion In Alpha" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "opm" -ln "outputMode" -nn "Output Mode" -min 0 -max 4 -en 
		"Occlusion:Sampled Environment:Bent Normals (world):Bent Normals (camera):Bent Normals (object)" 
		-at "enum";
	setAttr ".pid" -type "string" "AO";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "bridgeFall:diffuse";
	rename -uid "2015E5DA-4BEB-9AD4-0B82-23B599F5A03D";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "DIFF";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "bridgeFall:reflection";
	rename -uid "1837EB9D-4C41-09D5-30A8-FD8481324562";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFL";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "bridgeFall:refraction";
	rename -uid "ED953CDB-4CC8-55FF-1F25-26B9357971F8";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "REFR";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "bridgeFall:shadow";
	rename -uid "3FB0C34E-41C3-68A0-2EDA-61BD48938DD3";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ta" -ln "transparentAttenuation" -nn "Attenuate According to Transparency" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-dv 10 -min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SHD";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode renderPass -n "bridgeFall:specular";
	rename -uid "47201CE7-4891-CB0C-31E3-A181DA7D4C8F";
	addAttr -ci true -sn "cs" -ln "computeShadows" -nn "Shadows" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "hs" -ln "hiddenShadows" -nn "Hidden Geometries Cast Shadows" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ut" -ln "useTransparency" -nn "Use Transparency" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "ho" -ln "holdout" -nn "Hold-Out" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rflh" -ln "reflectHidden" -nn "Hidden Geometries Visible in Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rfrh" -ln "refractHidden" -nn "Hidden Geometries Visible in Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfl" -ln "hiddenReflect" -nn "Hidden Geometries Produce Reflections" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hrfr" -ln "hiddenRefract" -nn "Hidden Geometries Produce Refractions" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "minrfl" -ln "minReflectionLevel" -nn "Minimum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfl" -ln "maxReflectionLevel" -nn "Maximum Reflection Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "minrfr" -ln "minRefractionLevel" -nn "Minimum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	addAttr -ci true -sn "maxrfr" -ln "maxRefractionLevel" -nn "Maximum Refraction Level" 
		-min 0 -max 10 -smn 0 -smx 10 -at "long";
	setAttr ".pid" -type "string" "SPEC";
	setAttr ".fbt" 256;
	setAttr ".pgn" -type "string" "Illumination";
createNode surfaceShader -n "bridgeFall:surfaceShader1";
	rename -uid "735544FC-45AE-27F8-C424-369534667A2D";
	setAttr ".oc" -type "float3" 1 0 0 ;
createNode shadingEngine -n "bridgeFall:surfaceShader1SG";
	rename -uid "287BBCF7-4812-69EB-9FC9-3C9C940CF8DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "bridgeFall:materialInfo6";
	rename -uid "11C01FB2-4E63-95A5-EC97-849E989F802F";
createNode surfaceShader -n "bridgeFall:surfaceShader2";
	rename -uid "403B4CFD-47E4-B27E-47B8-A0BF5869F2FC";
	setAttr ".oc" -type "float3" 0 1 0 ;
createNode shadingEngine -n "bridgeFall:surfaceShader2SG";
	rename -uid "6D9E364D-465E-8543-7601-1F8C82DB2133";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "bridgeFall:materialInfo7";
	rename -uid "F58CC8D4-4397-1226-03C2-369A5F30FFB0";
createNode nodeGraphEditorInfo -n "bridgeFall:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "52950D1B-400D-2F38-A67A-66B304D4ADE4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -328.57141551517361 -327.38093937200273 ;
	setAttr ".tgi[0].vh" -type "double2" 315.4761779402935 330.95236780151544 ;
createNode shadingEngine -n "bridgeFall:bifrostLiquidMaterial1SG";
	rename -uid "EB024161-4D3E-5164-B437-9B835B26A3BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "bridgeFall:aiStandardSurface1";
	rename -uid "AEF0774F-4420-EE0D-A92E-2BAAE588F2AF";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".base" 0;
	setAttr ".base_color" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".specular_roughness" 0.11999999731779099;
	setAttr ".specular_IOR" 1.3329999446868896;
	setAttr ".transmission" 1;
	setAttr ".transmission_color" -type "float3" 0.74399996 0.94008321 1 ;
	setAttr ".transmission_depth" 10;
	setAttr ".transmission_scatter" -type "float3" 0.067499995 0.13404015 0.5 ;
	setAttr ".transmission_scatter_anisotropy" 0.75;
	setAttr ".nts" -type "string" "The look of the material depends on the actual thickness of geometry. If render does not look right, try change 'Depth' parameter in \"Transmission' section. Try values: 0, 1, 10, 50, 100";
createNode aiStandard -n "speedBoat:aiStandard1";
	rename -uid "6D8C172F-4B56-CB27-5C71-A1B5587F9777";
	setAttr ".Kd_color" -type "float3" 1 0.26923335 0 ;
createNode shadingEngine -n "speedBoat:aiStandard1SG";
	rename -uid "C4AEBC57-452D-5C18-306B-4883B1D9C6B9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".ai_surface_shader" -type "float3" -3302936 0 1.9307848e-37 ;
	setAttr ".ai_volume_shader" -type "float3" -3302936 0 1.9307848e-37 ;
createNode materialInfo -n "speedBoat:materialInfo1";
	rename -uid "9B571F26-4438-94F5-F269-2BA768287A83";
createNode bifrostLiquidMaterial -n "speedBoat:bifrostLiquidMaterial1";
	rename -uid "0EAA56C5-4212-34B4-4868-88AD0625A0F7";
	setAttr -s 2 ".dcrm";
	setAttr ".dcrm[0].dcrmp" 0;
	setAttr ".dcrm[0].dcrmcv" -type "float3" 0 0.36500001 1 ;
	setAttr ".dcrm[0].dcrmi" 1;
	setAttr ".dcrm[1].dcrmp" 1;
	setAttr ".dcrm[1].dcrmcv" -type "float3" 0 1 0.64499998 ;
	setAttr ".dcrm[1].dcrmi" 1;
	setAttr -s 2 ".dcvrm[0:1]"  0 0 1 1 1 1;
	setAttr ".fcrm[0].fcrmp" 1;
	setAttr ".fcrm[0].fcrmcv" -type "float3" 1 1 1 ;
	setAttr ".fcrm[0].fcrmi" 1;
	setAttr -s 2 ".fcvrm[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".fwrm[0:1]"  0 0 1 1 0.2 1;
	setAttr -s 2 ".rlcrm";
	setAttr ".rlcrm[0].rlcrmp" 0;
	setAttr ".rlcrm[0].rlcrmcv" -type "float3" 1 1 1 ;
	setAttr ".rlcrm[0].rlcrmi" 1;
	setAttr ".rlcrm[1].rlcrmp" 1;
	setAttr ".rlcrm[1].rlcrmcv" -type "float3" 0 0 0 ;
	setAttr ".rlcrm[1].rlcrmi" 1;
	setAttr -s 2 ".rlcvrm[0:1]"  0 0 1 1 1 1;
	setAttr ".rlwrm[0]"  0 1 1;
	setAttr -s 2 ".rrcrm";
	setAttr ".rrcrm[0].rrcrmp" 0;
	setAttr ".rrcrm[0].rrcrmcv" -type "float3" 1 1 1 ;
	setAttr ".rrcrm[0].rrcrmi" 1;
	setAttr ".rrcrm[1].rrcrmp" 1;
	setAttr ".rrcrm[1].rrcrmcv" -type "float3" 0 0 0 ;
	setAttr ".rrcrm[1].rrcrmi" 1;
	setAttr -s 2 ".rrcvrm[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".trm[0:1]"  0 1 1 1 0.5 1;
createNode shadingEngine -n "speedBoat:bifrostLiquidMaterial1SG";
	rename -uid "90097FFA-47EF-AF34-221F-5C90240E2B65";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".ai_surface_shader" -type "float3" -3302936 0 1.9307848e-37 ;
	setAttr ".ai_volume_shader" -type "float3" -3302936 0 1.9307848e-37 ;
createNode phong -n "speedBoat:phong1";
	rename -uid "A837044A-429D-B159-4E21-74B9F3393BF1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.011666656 0 ;
	setAttr ".sc" -type "float3" 0.52700001 0.169167 0.169167 ;
	setAttr ".cp" 12.181818008422852;
createNode shadingEngine -n "speedBoat:phong1SG";
	rename -uid "21918F6A-4198-A973-7794-F5982289DCF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".ai_surface_shader" -type "float3" -3302936 0 1.9307848e-37 ;
	setAttr ".ai_volume_shader" -type "float3" -3302936 0 1.9307848e-37 ;
createNode materialInfo -n "speedBoat:materialInfo2";
	rename -uid "2A0EB992-408F-6D35-5721-C08C74434F2D";
createNode phong -n "speedBoat:phong2";
	rename -uid "68D0D4FC-4BC7-E43D-3E15-4B9746BC1D5A";
	setAttr ".c" -type "float3" 0 0.30768323 1 ;
	setAttr ".ic" -type "float3" 0 0.044999488 0.13 ;
	setAttr ".sc" -type "float3" 0.220935 0.28879535 0.51499999 ;
	setAttr ".cp" 40;
createNode shadingEngine -n "speedBoat:phong2SG";
	rename -uid "0A6C3076-4428-F99F-F4DC-7B8F241A78F6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".ai_surface_shader" -type "float3" -3302936 0 1.9307848e-37 ;
	setAttr ".ai_volume_shader" -type "float3" -3302936 0 1.9307848e-37 ;
createNode materialInfo -n "speedBoat:materialInfo3";
	rename -uid "3FBE8210-4B68-64A2-47E1-46A69B2F79AF";
createNode bifrostLiquidMaterial -n "speedBoat:bifrostLiquidMaterial2";
	rename -uid "5370D1EA-41AF-71DF-9B7F-45B5305ADF14";
	setAttr -s 2 ".dcrm";
	setAttr ".dcrm[0].dcrmp" 0;
	setAttr ".dcrm[0].dcrmcv" -type "float3" 0 0.36500001 1 ;
	setAttr ".dcrm[0].dcrmi" 1;
	setAttr ".dcrm[1].dcrmp" 1;
	setAttr ".dcrm[1].dcrmcv" -type "float3" 0 1 0.64499998 ;
	setAttr ".dcrm[1].dcrmi" 1;
	setAttr -s 2 ".dcvrm[0:1]"  0 0 1 1 1 1;
	setAttr ".fcrm[0].fcrmp" 1;
	setAttr ".fcrm[0].fcrmcv" -type "float3" 1 1 1 ;
	setAttr ".fcrm[0].fcrmi" 1;
	setAttr -s 2 ".fcvrm[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".fwrm[0:1]"  0 0 1 1 0.2 1;
	setAttr -s 2 ".rlcrm";
	setAttr ".rlcrm[0].rlcrmp" 0;
	setAttr ".rlcrm[0].rlcrmcv" -type "float3" 1 1 1 ;
	setAttr ".rlcrm[0].rlcrmi" 1;
	setAttr ".rlcrm[1].rlcrmp" 1;
	setAttr ".rlcrm[1].rlcrmcv" -type "float3" 0 0 0 ;
	setAttr ".rlcrm[1].rlcrmi" 1;
	setAttr -s 2 ".rlcvrm[0:1]"  0 0 1 1 1 1;
	setAttr ".rlwrm[0]"  0 1 1;
	setAttr -s 2 ".rrcrm";
	setAttr ".rrcrm[0].rrcrmp" 0;
	setAttr ".rrcrm[0].rrcrmcv" -type "float3" 1 1 1 ;
	setAttr ".rrcrm[0].rrcrmi" 1;
	setAttr ".rrcrm[1].rrcrmp" 1;
	setAttr ".rrcrm[1].rrcrmcv" -type "float3" 0 0 0 ;
	setAttr ".rrcrm[1].rrcrmi" 1;
	setAttr -s 2 ".rrcvrm[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".trm[0:1]"  0 1 1 1 0.5 1;
createNode shadingEngine -n "speedBoat:bifrostLiquidMaterial2SG";
	rename -uid "D914614A-4E55-961A-2CE3-76AFAEA3BDC7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode rampShader -n "speedBoat:rampshader:rampShader1";
	rename -uid "D643C0B0-4F90-066D-F2E2-18BF841937B0";
	setAttr ".dc" 1;
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0 0.032184526 0.104 ;
	setAttr ".clr[0].clri" 1;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0.0040230658 0.013 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ambc" -type "float3" 0.3019608 0.30980393 0.3019608 ;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0.004513816 0.013 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".tc" 0.13594000041484833;
	setAttr ".trsd" 0;
	setAttr ".ec" 0.3495199978351593;
	setAttr ".spl" 1;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.55000001 0.62 2;
	setAttr -s 4 ".sc";
	setAttr ".sc[0].scp" 0.83749997615814209;
	setAttr ".sc[0].scc" -type "float3" 0.21952212 0.28744602 0.51490778 ;
	setAttr ".sc[0].sci" 1;
	setAttr ".sc[1].scp" 1;
	setAttr ".sc[1].scc" -type "float3" 1 0.88110751 0.71500003 ;
	setAttr ".sc[1].sci" 1;
	setAttr ".sc[2].scp" 0.91250002384185791;
	setAttr ".sc[2].scc" -type "float3" 0.25816798 0.28120804 0.347 ;
	setAttr ".sc[2].sci" 1;
	setAttr ".sc[3].scp" 0.96875;
	setAttr ".sc[3].scc" -type "float3" 1 0.60512799 0.611709 ;
	setAttr ".sc[3].sci" 1;
	setAttr -s 2 ".rfl[0:1]"  0 0.66000003 2 1 0.30000001 2;
	setAttr -s 4 ".env";
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0.090000004 0.080871306 0.05274 ;
	setAttr ".env[0].envi" 1;
	setAttr ".env[1].envp" 0.35624998807907104;
	setAttr ".env[1].envc" -type "float3" 0.233522 0.23104399 0.236 ;
	setAttr ".env[1].envi" 1;
	setAttr ".env[2].envp" 0.58125001192092896;
	setAttr ".env[2].envc" -type "float3" 0 0 0 ;
	setAttr ".env[2].envi" 1;
	setAttr ".env[3].envp" 1;
	setAttr ".env[3].envc" -type "float3" 0.23587202 0.34681186 0.62400001 ;
	setAttr ".env[3].envi" 1;
createNode shadingEngine -n "speedBoat:rampshader:rampShader1SG";
	rename -uid "32A7AE95-4971-D494-5DA8-09AEC05E4EEB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "speedBoat:materialInfo4";
	rename -uid "9C2752CA-4DEE-D6F1-A7A1-51B2E7F00AE2";
createNode nodeGraphEditorInfo -n "speedBoat:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "EC2EA578-4EAB-0BF0-C8D2-EEA42CA1AC28";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -344.04760537639555 -335.71427237419914 ;
	setAttr ".tgi[0].vh" -type "double2" 328.57141551517361 351.19046223542108 ;
	setAttr ".tgi[0].ni[0].x" -100;
	setAttr ".tgi[0].ni[0].y" 82.857139587402344;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode shadingEngine -n "speedBoat:bifrostLiquidMaterial3SG";
	rename -uid "5A9F6D73-41DE-C0D3-1D01-63A763212ECC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "speedBoat:aiStandardSurface1";
	rename -uid "F6B2738A-48BF-EB3C-8190-ECBBE14540B2";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".base" 0;
	setAttr ".base_color" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".specular_roughness" 0.11999999731779099;
	setAttr ".specular_IOR" 1.3329999446868896;
	setAttr ".transmission" 1;
	setAttr ".transmission_color" -type "float3" 0.74399996 0.94008321 1 ;
	setAttr ".transmission_depth" 10;
	setAttr ".transmission_scatter" -type "float3" 0.067499995 0.13404015 0.5 ;
	setAttr ".transmission_scatter_anisotropy" 0.75;
	setAttr ".nts" -type "string" "The look of the material depends on the actual thickness of geometry. If render does not look right, try change 'Depth' parameter in \"Transmission' section. Try values: 0, 1, 10, 50, 100";
createNode shadingEngine -n "RocketLauncher:RocketLauncherSG";
	rename -uid "B573C4D2-4C62-C186-EADE-0C9AAF9088C7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "RocketLauncher:materialInfo1";
	rename -uid "738F16C0-42A1-1459-E2CC-3FBF6B81A312";
createNode file -n "RocketLauncher:RocketLauncher_Flattened_Diffuse";
	rename -uid "E376FC92-45B5-D2F0-CCBA-4B90994E1FF2";
	setAttr ".ftn" -type "string" "C:/Users/adamst/Documents/Mudbox/2015-x64/data/Channel_RocketLauncher_Diffuse.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "RocketLauncher:place2dTexture1";
	rename -uid "FF597F1B-457E-26DE-B84E-E78185B9DCA2";
createNode file -n "RocketLauncher:RocketLauncher_Flattened_Specular";
	rename -uid "77C5EF52-4595-18F8-B6A9-0D9E28187907";
	setAttr ".ftn" -type "string" "C:/Users/adamst/Documents/Mudbox/2015-x64/data/Channel_RocketLauncher_Specular.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "RocketLauncher:place2dTexture2";
	rename -uid "9CE98888-4E36-A0A0-1A75-64AD5D44402F";
createNode bump2d -n "RocketLauncher:bump2d1";
	rename -uid "9D5F2841-48B2-B624-854E-43B1F547A260";
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value";
	rename -uid "7A270359-478F-27BE-58CA-1E822622DCAD";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/adamst/Documents/Mudbox/2015-x64/data/Channel_RocketLauncher_Bump Value.tif";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "RocketLauncher:place2dTexture3";
	rename -uid "8B7E1868-487E-5699-E4BE-57BCA7D6B0BE";
createNode file -n "RocketLauncher:ReflectionMap";
	rename -uid "885CCB02-44B3-972B-0F12-0F9D9439D3F2";
	setAttr ".ftn" -type "string" "C:/Program Files/Autodesk/Mudbox 2015/textures/Lightprobes/horizon.exr";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "RocketLauncher:place2dTexture4";
	rename -uid "BC092EB2-4087-A954-1227-8BBEDC39A1BF";
createNode shadingEngine -n "RocketLauncher:blinn1SG";
	rename -uid "2F4628CF-4247-EC9E-180C-F888DA7A393A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "RocketLauncher:materialInfo2";
	rename -uid "9843DCE8-4A65-979C-58A8-FD9160EE688B";
createNode standardSurface -n "RocketLauncher:standardSurface2";
	rename -uid "B5B78859-4DDE-8CB3-738D-E49E516BBD68";
	setAttr ".bc" -type "float3" 0.56999999 0.33838999 0.26790002 ;
	setAttr ".dr" 0.34999999403953552;
	setAttr ".sc" -type "float3" 0.85000002 0.85000002 0.85000002 ;
	setAttr ".sr" 0.40000000596046448;
	setAttr ".sior" 1.5139999389648438;
	setAttr ".td" 0.69999998807907104;
	setAttr ".subc" -type "float3" 0.51663351 0.3347947 0.3095915 ;
	setAttr ".subr" -type "float3" 0.41363636 0.41363636 0.41363636 ;
	setAttr ".ctr" 0.37999999523162842;
	setAttr ".ctior" 1.1499999761581421;
	setAttr ".ctar" 0.69999998807907104;
createNode polyCube -n "polyCube1";
	rename -uid "CA61B609-48E6-B72E-86C1-0BAA15605A9A";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "7F01EDDB-4DFF-30E5-F428-E6A408D67727";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder1";
	rename -uid "236BB087-43ED-3EF0-B624-B5B066892BF8";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__polyCylinder2";
	rename -uid "C2FC5801-4DE5-0CBB-314D-7D94F3DEA8B2";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	rename -uid "46737FB3-48DC-62A1-57A9-4DAB6A01E02E";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "C596DDB7-4711-C249-3755-CE9176FDD163";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "15A48AA2-40F1-2D65-1D38-6395DAA067DC";
createNode phong -n "phong1";
	rename -uid "260F9A03-4370-A118-E67A-3EA323084164";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.11680911 0.079401657 0.051980063 ;
	setAttr ".ambc" -type "float3" 0.69515669 0.69515669 0.69515669 ;
	setAttr ".tcf" 0.34757834672927856;
	setAttr ".trsd" 1.196581244468689;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 100;
createNode blendShape -n "blendShape1";
	rename -uid "81B520F2-4D17-D479-82A2-C38F52C3CFD0";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".og";
	setAttr -s 5 ".orggeom";
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
createNode blendShape -n "blendShape2";
	rename -uid "98E735AF-4D74-F712-2556-24A1E3C633DB";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".og";
	setAttr -s 5 ".orggeom";
	setAttr ".mlid" 1;
	setAttr ".mlpr" 0;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "49E52E04-4FBC-5792-427B-B4A615077514";
createNode MASH_Dynamics -n "MASH1_Dynamics";
	rename -uid "3C9A17E4-4C51-07A5-3EB2-53947389FBAC";
	addAttr -s false -ci true -h true -sn "waiterMessage" -ln "waiterMessage" -at "message";
	addAttr -s false -ci true -sn "initialStateMessage" -ln "initialStateMessage" -at "message";
createNode MASH_DynamicsInitialState -n "MASH1_DynamicsInitialState1";
	rename -uid "2A9C03C0-48C9-0475-F56A-CC9D1E4AE0A7";
	addAttr -s false -ci true -sn "initialStateMessage" -ln "initialStateMessage" -at "message";
	setAttr ".initialStateJSON" -type "string" "{\"positions\":[[0.0,6.908224105834961,0.0]],\"rotations\":[[0.0,0.0,0.0]]}";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 26 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 26 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 265 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :defaultTextureList1;
	setAttr -s 8 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "blendShape1.og[0]" "table_topShape.i";
connectAttr "polyCube1.out" "table_topShapeOrig.i";
connectAttr "blendShape1.og[1]" "table_legShape1.i";
connectAttr "polyCylinder1.out" "table_legShape1Orig.i";
connectAttr "blendShape1.og[2]" "table_legShape2.i";
connectAttr "pasted__polyCylinder1.out" "table_legShape2Orig.i";
connectAttr "blendShape1.og[3]" "table_legShape3.i";
connectAttr "pasted__pasted__polyCylinder1.out" "table_legShape3Orig.i";
connectAttr "blendShape1.og[4]" "table_legShape4.i";
connectAttr "pasted__polyCylinder2.out" "table_legShape4Orig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:brow_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:teeth_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:body_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:tounge_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:eye_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "maxformaya_v4_5:pupil_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFall:span_geo_shardMatSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFall:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFall:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFall:surfaceShader2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "bridgeFall:bifrostLiquidMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:aiStandard1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:bifrostLiquidMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:bifrostLiquidMaterial2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:rampshader:rampShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "speedBoat:bifrostLiquidMaterial3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RocketLauncher:RocketLauncherSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RocketLauncher:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "oceanBeach:bifrostLiquidMaterial5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFall:span_geo_shardMatSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFall:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFall:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFall:surfaceShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "bridgeFall:bifrostLiquidMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:aiStandard1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:bifrostLiquidMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:bifrostLiquidMaterial2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:rampshader:rampShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "speedBoat:bifrostLiquidMaterial3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RocketLauncher:RocketLauncherSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RocketLauncher:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
connectAttr "blendShape1.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "blendShape2.mlpr" "shapeEditorManager.bspr[1]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[2]" "maxformaya_v4_5:headMesh.id";
connectAttr "layerManager.dli[3]" "maxformaya_v4_5:Smooth_Mesh.id";
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightYMultDivide.ox" "maxformaya_v4_5:Narrow_WideBottomRightYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightXClamp.opr" "maxformaya_v4_5:Narrow_WideBottomRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightYClamp.opr" "maxformaya_v4_5:Narrow_WideBottomRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftAdd.o" "maxformaya_v4_5:Narrow_WideBottomLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftYMultDivide.ox" "maxformaya_v4_5:Narrow_WideBottomLeftYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftXMultDivide.ox" "maxformaya_v4_5:Narrow_WideBottomLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftXClamp.opr" "maxformaya_v4_5:Narrow_WideBottomLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftYClamp.opr" "maxformaya_v4_5:Narrow_WideBottomLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopRightXClamp.opr" "maxformaya_v4_5:Narrow_WideTopRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopRightYClamp.opr" "maxformaya_v4_5:Narrow_WideTopRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftAdd.o" "maxformaya_v4_5:Narrow_WideTopLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftXMultDivide.ox" "maxformaya_v4_5:Narrow_WideTopLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftXClamp.opr" "maxformaya_v4_5:Narrow_WideTopLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftYClamp.opr" "maxformaya_v4_5:Narrow_WideTopLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:eyeLBlendColors.opr" "maxformaya_v4_5:eyeLidLMultiplyDivide.i1x"
		;
connectAttr "maxformaya_v4_5:eyeLBlendColors.opg" "maxformaya_v4_5:eyeLidLMultiplyDivide.i1y"
		;
connectAttr "maxformaya_v4_5:eyeRBlendColors.opr" "maxformaya_v4_5:eyeLidRMultiplyDivide.i1x"
		;
connectAttr "maxformaya_v4_5:eyeRBlendColors.opg" "maxformaya_v4_5:eyeLidRMultiplyDivide.i1y"
		;
connectAttr "maxformaya_v4_5:PupilLBottomMultDivide.ox" "maxformaya_v4_5:PupilLBottomClamp.ipr"
		;
connectAttr "maxformaya_v4_5:PupilRBottomMultDivide.ox" "maxformaya_v4_5:PupilRBottomClamp.ipr"
		;
connectAttr "maxformaya_v4_5:twistRBlendColors.opr" "maxformaya_v4_5:armRollRMultiplyDivide.i1x"
		;
connectAttr "maxformaya_v4_5:twistRBlendColors.opg" "maxformaya_v4_5:armRollRMultiplyDivide.i1y"
		;
connectAttr "maxformaya_v4_5:ikSpineWorldMultiplyDivide.ox" "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.i2x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_spine8Bind_Joint_Stretch_Multiply.i1x"
		;
connectAttr "maxformaya_v4_5:squashStretchIKSsAmountBlendColors.opr" "maxformaya_v4_5:squashStretchIKMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:LowerTorsoSsAmountBlendColors.opr" "maxformaya_v4_5:LowerTorsoStretchMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:UpperTorsoSsAmountBlendColors.opr" "maxformaya_v4_5:UpperTorsoStretchMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:rootFKSsAmountBlendColors.opr" "maxformaya_v4_5:rootFKStretchMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:shoulderFKLBlendColors.opr" "maxformaya_v4_5:shoulderFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:elbowFKLBlendColors.opr" "maxformaya_v4_5:elbowFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:shoulderFKRBlendColors.opr" "maxformaya_v4_5:shoulderFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:elbowFKRBlendColors.opr" "maxformaya_v4_5:elbowFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:twistLBlendColors.opr" "maxformaya_v4_5:armRollLMultiplyDivide.i1x"
		;
connectAttr "maxformaya_v4_5:twistLBlendColors.opg" "maxformaya_v4_5:armRollLMultiplyDivide.i1y"
		;
connectAttr "maxformaya_v4_5:legFKRSsAmountBlendColors.opr" "maxformaya_v4_5:legFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:hipLFKSsAmountBlendColors.opr" "maxformaya_v4_5:legFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:kneeFKRSsAmountBlendColors.opr" "maxformaya_v4_5:kneeFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:kneeLSsAmountBlendColors.opr" "maxformaya_v4_5:kneeFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:footFKRSsAmountBlendColors.opr" "maxformaya_v4_5:footFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:footFKLSsAmountBlendColors.opr" "maxformaya_v4_5:footFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:toeFKRSsAmountBlendColors.opr" "maxformaya_v4_5:toeFKRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:toeFKLSsAmountBlendColors.opr" "maxformaya_v4_5:toetFKLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:pointFingerLSsAmountBlendColors.opr" "maxformaya_v4_5:pointFingerLStretchMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:middleFingerLSsAmountBlendColors.opr" "maxformaya_v4_5:middleFingerStretchLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:ringFingerLSsAmountBlendColors.opr" "maxformaya_v4_5:ringFingerStretchLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:pinkyLSsAmountBlendColors.opr" "maxformaya_v4_5:pinkyFingerStretchLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:thumbFingerLSsAmoutnBlendColors.opr" "maxformaya_v4_5:thumbFingerStretchLMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:thumbFingerRSsAmountBlendColors.opr" "maxformaya_v4_5:thumbFingerStretchRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:pointFingerRSsAmountBlendColors.opr" "maxformaya_v4_5:pointFingerRStretchMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:middleFingerRSsAmountBlendColors.opr" "maxformaya_v4_5:middleFingerStretchRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:ringFingerRSsAmountBlendColors.opr" "maxformaya_v4_5:ringFingerStretchRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:pinkyFingerRSsAmountBlendColors.opr" "maxformaya_v4_5:pinkyFingerStretchRMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:shoulderRSsAmountBlendColors.opg" "maxformaya_v4_5:shoulderRBlendColors.c1g"
		;
connectAttr "maxformaya_v4_5:shoulderRSsAmountBlendColors.opb" "maxformaya_v4_5:shoulderRBlendColors.c1b"
		;
connectAttr "maxformaya_v4_5:shoulderRSsAmountBlendColors.opr" "maxformaya_v4_5:shoulderRBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:elbowRSsAmountBlendColors.op" "maxformaya_v4_5:elbowRBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:shoulderLSsAmountBlendColors.op" "maxformaya_v4_5:shoulderLBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:elbowLSsAmountBlendColors.op" "maxformaya_v4_5:elbowLBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:squashStretchIKSsAmountBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:hipLIKSsAmountBlendColors.op" "maxformaya_v4_5:hipLBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:kneeLIKSsAmountBlendColors.op" "maxformaya_v4_5:kneeLBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:hipRIKSsAmountBlendColors.op" "maxformaya_v4_5:hipRBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:kneeRIKSsAmountBlendColors.op" "maxformaya_v4_5:kneeRBlendColors.c1"
		;
connectAttr "maxformaya_v4_5:IKLPlusMinusAverage2.o1" "maxformaya_v4_5:IKLCondition.cfg"
		;
connectAttr "maxformaya_v4_5:IKLPlusMinusAverage2.o1" "maxformaya_v4_5:IKLCondition.ft"
		;
connectAttr "maxformaya_v4_5:IKLPlusMinusAverage.o1" "maxformaya_v4_5:IKLMultiplyDivide2.i2y"
		;
connectAttr "maxformaya_v4_5:IKLCondition.ocg" "maxformaya_v4_5:IKLMultiplyDivide3.i1y"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide.oy" "maxformaya_v4_5:IKLPlusMinusAverage.i1[0]"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide.i2z" "maxformaya_v4_5:IKLPlusMinusAverage.i1[1]"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide2.oy" "maxformaya_v4_5:IKLPlusMinusAverage2.i1[0]"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide2.i2z" "maxformaya_v4_5:IKLPlusMinusAverage2.i1[1]"
		;
connectAttr "maxformaya_v4_5:IKLCondition.ocg" "maxformaya_v4_5:IKLMultiplyDivide4.i2y"
		;
connectAttr "maxformaya_v4_5:IKRPlusMinusAverage2.o1" "maxformaya_v4_5:IKRCondition.cfg"
		;
connectAttr "maxformaya_v4_5:IKRPlusMinusAverage2.o1" "maxformaya_v4_5:IKRCondition.ft"
		;
connectAttr "maxformaya_v4_5:IKRPlusMinusAverage.o1" "maxformaya_v4_5:IKRMultiplyDivide2.i2y"
		;
connectAttr "maxformaya_v4_5:IKRCondition.ocg" "maxformaya_v4_5:IKRMultiplyDivide3.i1y"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide.oy" "maxformaya_v4_5:IKRPlusMinusAverage.i1[0]"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide.i2z" "maxformaya_v4_5:IKRPlusMinusAverage.i1[1]"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide2.oy" "maxformaya_v4_5:IKRPlusMinusAverage2.i1[0]"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide2.i2z" "maxformaya_v4_5:IKRPlusMinusAverage2.i1[1]"
		;
connectAttr "maxformaya_v4_5:IKRCondition.ocg" "maxformaya_v4_5:IKRMultiplyDivide4.i2y"
		;
connectAttr "maxformaya_v4_5:neckMultiplyDivide.ox" "maxformaya_v4_5:headMultiplyDivide.i2x"
		;
connectAttr "maxformaya_v4_5:headMultiplyDivide.ox" "maxformaya_v4_5:headSsAmountBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:headStretchMultiplyDivide.ox" "maxformaya_v4_5:headStretchBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:toungeStretchMultiplyDivide.ox" "maxformaya_v4_5:toungeBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:LipsTopLeftAdd.o" "maxformaya_v4_5:LipsTopLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:LipsTopLeftXMultDivide.ox" "maxformaya_v4_5:LipsTopLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:LipsTopLeftXClamp.opr" "maxformaya_v4_5:LipsTopLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:LipsTopLeftYClamp.opr" "maxformaya_v4_5:LipsTopLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:LipsTopRightXClamp.opr" "maxformaya_v4_5:LipsTopRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:LipsTopRightYClamp.opr" "maxformaya_v4_5:LipsTopRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:LipsBottomLeftAdd.o" "maxformaya_v4_5:LipsBottomLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:LipsBottomLeftYMultDivide.ox" "maxformaya_v4_5:LipsBottomLeftYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:LipsBottomLeftXMultDivide.ox" "maxformaya_v4_5:LipsBottomLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:LipsBottomLeftXClamp.opr" "maxformaya_v4_5:LipsBottomLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:LipsBottomLeftYClamp.opr" "maxformaya_v4_5:LipsBottomLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:LipsBottomRightYMultDivide.ox" "maxformaya_v4_5:LipsBottomRightYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:LipsBottomRightXClamp.opr" "maxformaya_v4_5:LipsBottomRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:LipsBottomRightYClamp.opr" "maxformaya_v4_5:LipsBottomRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomLMultDivide.ox" "maxformaya_v4_5:Oo_CheeksBottomLClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomRMultDivide.ox" "maxformaya_v4_5:Oo_CheeksBottomRClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Jaw_In_OutBottomMultDivide.ox" "maxformaya_v4_5:Jaw_In_OutBottomClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Jaw_Left_RightLeftMultDivide.ox" "maxformaya_v4_5:Jaw_Left_RightLeftClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftAdd.o" "maxformaya_v4_5:Smile_FrownTopLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftXMultDivide.ox" "maxformaya_v4_5:Smile_FrownTopLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftXClamp.opr" "maxformaya_v4_5:Smile_FrownTopLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftYClamp.opr" "maxformaya_v4_5:Smile_FrownTopLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopRightXClamp.opr" "maxformaya_v4_5:Smile_FrownTopRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownTopRightYClamp.opr" "maxformaya_v4_5:Smile_FrownTopRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftAdd.o" "maxformaya_v4_5:Smile_FrownBottomLeftXClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftYMultDivide.ox" "maxformaya_v4_5:Smile_FrownBottomLeftYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftXMultDivide.ox" "maxformaya_v4_5:Smile_FrownBottomLeftAdd.i1"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftXClamp.opr" "maxformaya_v4_5:Smile_FrownBottomLeftMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftYClamp.opr" "maxformaya_v4_5:Smile_FrownBottomLeftMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightYMultDivide.ox" "maxformaya_v4_5:Smile_FrownBottomRightYClamp.ipr"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightXClamp.opr" "maxformaya_v4_5:Smile_FrownBottomRightMultDivide.i1x"
		;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightYClamp.opr" "maxformaya_v4_5:Smile_FrownBottomRightMultDivide.i2x"
		;
connectAttr "maxformaya_v4_5:brow_Mat.oc" "maxformaya_v4_5:brow_SG.ss";
connectAttr "maxformaya_v4_5:brow_SG.msg" "maxformaya_v4_5:lights2_materialInfo3.sg"
		;
connectAttr "maxformaya_v4_5:brow_Mat.msg" "maxformaya_v4_5:lights2_materialInfo3.m"
		;
connectAttr "maxformaya_v4_5:teeth_Mat.oc" "maxformaya_v4_5:teeth_SG.ss";
connectAttr "maxformaya_v4_5:teeth_SG.msg" "maxformaya_v4_5:lights2_materialInfo5.sg"
		;
connectAttr "maxformaya_v4_5:teeth_Mat.msg" "maxformaya_v4_5:lights2_materialInfo5.m"
		;
connectAttr "maxformaya_v4_5:tongue_Mat.oc" "maxformaya_v4_5:tounge_SG.ss";
connectAttr "maxformaya_v4_5:tounge_SG.msg" "maxformaya_v4_5:lights2_materialInfo7.sg"
		;
connectAttr "maxformaya_v4_5:tongue_Mat.msg" "maxformaya_v4_5:lights2_materialInfo7.m"
		;
connectAttr "maxformaya_v4_5:body_Mat.oc" "maxformaya_v4_5:body_SG.ss";
connectAttr "maxformaya_v4_5:body_SG.msg" "maxformaya_v4_5:materialInfo8.sg";
connectAttr "maxformaya_v4_5:body_Mat.msg" "maxformaya_v4_5:materialInfo8.m";
connectAttr "maxformaya_v4_5:eye_Mat.oc" "maxformaya_v4_5:eye_SG.ss";
connectAttr "maxformaya_v4_5:eye_SG.msg" "maxformaya_v4_5:materialInfo11.sg";
connectAttr "maxformaya_v4_5:eye_Mat.msg" "maxformaya_v4_5:materialInfo11.m";
connectAttr "maxformaya_v4_5:eye_Mat.msg" "maxformaya_v4_5:materialInfo11.t" -na
		;
connectAttr "maxformaya_v4_5:pupil_Mat.oc" "maxformaya_v4_5:pupil_SG.ss";
connectAttr "maxformaya_v4_5:pupil_SG.msg" "maxformaya_v4_5:materialInfo12.sg";
connectAttr "maxformaya_v4_5:pupil_Mat.msg" "maxformaya_v4_5:materialInfo12.m";
connectAttr "maxformaya_v4_5:pupil_Mat.msg" "maxformaya_v4_5:materialInfo12.t" -na
		;
connectAttr "maxformaya_v4_5:ikSpineAddDoubleLinear.o" "maxformaya_v4_5:ikSpineSquashMultiplyDivide.i1x"
		;
connectAttr "maxformaya_v4_5:squashStretchIKMultiplyDivide.ox" "maxformaya_v4_5:ikSpineAddDoubleLinear.i1"
		;
connectAttr "maxformaya_v4_5:armRollRBlendColors.opr" "maxformaya_v4_5:twistRBlendColors.c2r"
		;
connectAttr "maxformaya_v4_5:armRollRBlendColors.opg" "maxformaya_v4_5:twistRBlendColors.c2g"
		;
connectAttr "maxformaya_v4_5:armRollLBlendColors.opr" "maxformaya_v4_5:twistLBlendColors.c2r"
		;
connectAttr "maxformaya_v4_5:armRollLBlendColors.opg" "maxformaya_v4_5:twistLBlendColors.c2g"
		;
connectAttr "maxformaya_v4_5:ankleIKRPlusMinusAverage.o1" "maxformaya_v4_5:ankleIKRCondition.cfg"
		;
connectAttr "maxformaya_v4_5:ankleIKRPlusMinusAverage.o1" "maxformaya_v4_5:ankleIKRCondition.ft"
		;
connectAttr "maxformaya_v4_5:plusMinusAverage1.o1" "maxformaya_v4_5:ankleIKRMultiplyDivide1.i2y"
		;
connectAttr "maxformaya_v4_5:ankleIKRCondition.ocg" "maxformaya_v4_5:ankleIKRMultiplyDivide2.i1y"
		;
connectAttr "maxformaya_v4_5:multiplyDivide1.oy" "maxformaya_v4_5:plusMinusAverage1.i1[0]"
		;
connectAttr "maxformaya_v4_5:multiplyDivide1.i2z" "maxformaya_v4_5:plusMinusAverage1.i1[1]"
		;
connectAttr "maxformaya_v4_5:ankleIKRMultiplyDivide1.oy" "maxformaya_v4_5:ankleIKRPlusMinusAverage.i1[0]"
		;
connectAttr "maxformaya_v4_5:ankleIKRMultiplyDivide1.i2z" "maxformaya_v4_5:ankleIKRPlusMinusAverage.i1[1]"
		;
connectAttr "maxformaya_v4_5:ankleIKLPlusMinusAverage.o1" "maxformaya_v4_5:ankleIKLCondition.cfg"
		;
connectAttr "maxformaya_v4_5:ankleIKLPlusMinusAverage.o1" "maxformaya_v4_5:ankleIKLCondition.ft"
		;
connectAttr "maxformaya_v4_5:plusMinusAverage3.o1" "maxformaya_v4_5:ankleIKLMultiplyDivide1.i2y"
		;
connectAttr "maxformaya_v4_5:ankleIKLCondition.ocg" "maxformaya_v4_5:ankleIKLMultiplyDivide2.i1y"
		;
connectAttr "maxformaya_v4_5:multiplyDivide4.oy" "maxformaya_v4_5:plusMinusAverage3.i1[0]"
		;
connectAttr "maxformaya_v4_5:multiplyDivide4.i2z" "maxformaya_v4_5:plusMinusAverage3.i1[1]"
		;
connectAttr "maxformaya_v4_5:ankleIKLMultiplyDivide1.oy" "maxformaya_v4_5:ankleIKLPlusMinusAverage.i1[0]"
		;
connectAttr "maxformaya_v4_5:ankleIKLMultiplyDivide1.i2z" "maxformaya_v4_5:ankleIKLPlusMinusAverage.i1[1]"
		;
connectAttr "maxformaya_v4_5:ankleIKRCondition.ocg" "maxformaya_v4_5:ankleIKRMultiplyDivide3.i2y"
		;
connectAttr "maxformaya_v4_5:ankleIKLCondition.ocg" "maxformaya_v4_5:ankleIKLMultiplyDivide3.i2y"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide3.oy" "maxformaya_v4_5:shoulderDummyLScaleBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide3.oy" "maxformaya_v4_5:elbowDummyLScaleBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide3.oy" "maxformaya_v4_5:elbowDummyRScaleBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide3.oy" "maxformaya_v4_5:shoulderDummyRScaleBlendColors.c1r"
		;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.ox" "maxformaya_v4_5:dummySpine2BlendColors.c1r"
		;
connectAttr "layerManager.dli[1]" "maxformaya_v4_5:Body_Controls.id";
connectAttr "layerManager.dli[4]" "maxformaya_v4_5:Facial_Controls.id";
connectAttr "layerManager.dli[5]" "maxformaya_v4_5:Super_Mover.id";
connectAttr "layerManager.dli[6]" "oceanBeach:geo.id";
connectAttr "oceanBeach:place2dTexture3.o" "oceanBeach:ramp1.uv";
connectAttr "oceanBeach:place2dTexture3.ofs" "oceanBeach:ramp1.fs";
connectAttr "oceanBeach:expression4.out[0]" "oceanBeach:place2dTexture3.tfu";
connectAttr ":time1.o" "oceanBeach:expression4.tim";
connectAttr "oceanBeach:ramp1.oc" "oceanBeach:layeredTexture1.cs[4].c";
connectAttr "oceanBeach:noise1.oc" "oceanBeach:layeredTexture1.cs[5].c";
connectAttr "oceanBeach:place2dTexture5.o" "oceanBeach:noise1.uv";
connectAttr "oceanBeach:place2dTexture5.ofs" "oceanBeach:noise1.fs";
connectAttr "oceanBeach:expression5.out[0]" "oceanBeach:noise1.ti";
connectAttr ":time1.o" "oceanBeach:expression5.tim";
connectAttr "oceanBeach:bifrostLiquidMaterial3SG.msg" "oceanBeach:materialInfo1.sg"
		;
connectAttr "oceanBeach:aiStandardSurface1.out" "oceanBeach:bifrostLiquidMaterial5SG.ss"
		;
connectAttr "bridgeFall:span_geo_shardMat.oc" "bridgeFall:span_geo_shardMatSG.ss"
		;
connectAttr "bridgeFall:span_geo_shardMatSG.msg" "bridgeFall:materialInfo1.sg";
connectAttr "bridgeFall:span_geo_shardMat.msg" "bridgeFall:materialInfo1.m";
connectAttr "bridgeFall:place2dTexture1.o" "bridgeFall:ocean1.uv";
connectAttr "bridgeFall:place2dTexture1.ofs" "bridgeFall:ocean1.fs";
connectAttr "bridgeFall:expression1.out[0]" "bridgeFall:ocean1.ti";
connectAttr ":time1.o" "bridgeFall:expression1.tim";
connectAttr "bridgeFall:lambert2.oc" "bridgeFall:lambert2SG.ss";
connectAttr "bridgeFall:lambert2SG.msg" "bridgeFall:materialInfo5.sg";
connectAttr "bridgeFall:lambert2.msg" "bridgeFall:materialInfo5.m";
connectAttr "bridgeFall:surfaceShader1.oc" "bridgeFall:surfaceShader1SG.ss";
connectAttr "bridgeFall:surfaceShader1SG.msg" "bridgeFall:materialInfo6.sg";
connectAttr "bridgeFall:surfaceShader1.msg" "bridgeFall:materialInfo6.m";
connectAttr "bridgeFall:surfaceShader1.msg" "bridgeFall:materialInfo6.t" -na;
connectAttr "bridgeFall:surfaceShader2.oc" "bridgeFall:surfaceShader2SG.ss";
connectAttr "bridgeFall:surfaceShader2SG.msg" "bridgeFall:materialInfo7.sg";
connectAttr "bridgeFall:surfaceShader2.msg" "bridgeFall:materialInfo7.m";
connectAttr "bridgeFall:surfaceShader2.msg" "bridgeFall:materialInfo7.t" -na;
connectAttr "bridgeFall:aiStandardSurface1.out" "bridgeFall:bifrostLiquidMaterial1SG.ss"
		;
connectAttr "speedBoat:aiStandard1.out" "speedBoat:aiStandard1SG.ss";
connectAttr "speedBoat:aiStandard1SG.msg" "speedBoat:materialInfo1.sg";
connectAttr "speedBoat:aiStandard1.msg" "speedBoat:materialInfo1.m";
connectAttr "speedBoat:aiStandard1.msg" "speedBoat:materialInfo1.t" -na;
connectAttr "speedBoat:bifrostLiquidMaterial1.oc" "speedBoat:bifrostLiquidMaterial1SG.ss"
		;
connectAttr "speedBoat:phong1.oc" "speedBoat:phong1SG.ss";
connectAttr "speedBoat:phong1SG.msg" "speedBoat:materialInfo2.sg";
connectAttr "speedBoat:phong1.msg" "speedBoat:materialInfo2.m";
connectAttr "speedBoat:phong2.oc" "speedBoat:phong2SG.ss";
connectAttr "speedBoat:phong2SG.msg" "speedBoat:materialInfo3.sg";
connectAttr "speedBoat:phong2.msg" "speedBoat:materialInfo3.m";
connectAttr "speedBoat:bifrostLiquidMaterial2.oc" "speedBoat:bifrostLiquidMaterial2SG.ss"
		;
connectAttr "speedBoat:rampshader:rampShader1.oc" "speedBoat:rampshader:rampShader1SG.ss"
		;
connectAttr "speedBoat:rampshader:rampShader1SG.msg" "speedBoat:materialInfo4.sg"
		;
connectAttr "speedBoat:rampshader:rampShader1.msg" "speedBoat:materialInfo4.m";
connectAttr "speedBoat:rampshader:rampShader1.msg" "speedBoat:materialInfo4.t" -na
		;
connectAttr "speedBoat:rampshader:rampShader1SG.msg" "speedBoat:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "speedBoat:aiStandardSurface1.out" "speedBoat:bifrostLiquidMaterial3SG.ss"
		;
connectAttr "RocketLauncher:RocketLauncherSG.msg" "RocketLauncher:materialInfo1.sg"
		;
connectAttr "RocketLauncher:place2dTexture1.o" "RocketLauncher:RocketLauncher_Flattened_Diffuse.uv"
		;
connectAttr "RocketLauncher:place2dTexture1.ofu" "RocketLauncher:RocketLauncher_Flattened_Diffuse.ofu"
		;
connectAttr "RocketLauncher:place2dTexture1.ofv" "RocketLauncher:RocketLauncher_Flattened_Diffuse.ofv"
		;
connectAttr "RocketLauncher:place2dTexture1.rf" "RocketLauncher:RocketLauncher_Flattened_Diffuse.rf"
		;
connectAttr "RocketLauncher:place2dTexture1.reu" "RocketLauncher:RocketLauncher_Flattened_Diffuse.reu"
		;
connectAttr "RocketLauncher:place2dTexture1.rev" "RocketLauncher:RocketLauncher_Flattened_Diffuse.rev"
		;
connectAttr "RocketLauncher:place2dTexture1.vt1" "RocketLauncher:RocketLauncher_Flattened_Diffuse.vt1"
		;
connectAttr "RocketLauncher:place2dTexture1.vt2" "RocketLauncher:RocketLauncher_Flattened_Diffuse.vt2"
		;
connectAttr "RocketLauncher:place2dTexture1.vt3" "RocketLauncher:RocketLauncher_Flattened_Diffuse.vt3"
		;
connectAttr "RocketLauncher:place2dTexture1.vc1" "RocketLauncher:RocketLauncher_Flattened_Diffuse.vc1"
		;
connectAttr "RocketLauncher:place2dTexture1.ofs" "RocketLauncher:RocketLauncher_Flattened_Diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "RocketLauncher:RocketLauncher_Flattened_Diffuse.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "RocketLauncher:RocketLauncher_Flattened_Diffuse.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "RocketLauncher:RocketLauncher_Flattened_Diffuse.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "RocketLauncher:RocketLauncher_Flattened_Diffuse.ws"
		;
connectAttr "RocketLauncher:place2dTexture2.o" "RocketLauncher:RocketLauncher_Flattened_Specular.uv"
		;
connectAttr "RocketLauncher:place2dTexture2.ofu" "RocketLauncher:RocketLauncher_Flattened_Specular.ofu"
		;
connectAttr "RocketLauncher:place2dTexture2.ofv" "RocketLauncher:RocketLauncher_Flattened_Specular.ofv"
		;
connectAttr "RocketLauncher:place2dTexture2.rf" "RocketLauncher:RocketLauncher_Flattened_Specular.rf"
		;
connectAttr "RocketLauncher:place2dTexture2.reu" "RocketLauncher:RocketLauncher_Flattened_Specular.reu"
		;
connectAttr "RocketLauncher:place2dTexture2.rev" "RocketLauncher:RocketLauncher_Flattened_Specular.rev"
		;
connectAttr "RocketLauncher:place2dTexture2.vt1" "RocketLauncher:RocketLauncher_Flattened_Specular.vt1"
		;
connectAttr "RocketLauncher:place2dTexture2.vt2" "RocketLauncher:RocketLauncher_Flattened_Specular.vt2"
		;
connectAttr "RocketLauncher:place2dTexture2.vt3" "RocketLauncher:RocketLauncher_Flattened_Specular.vt3"
		;
connectAttr "RocketLauncher:place2dTexture2.vc1" "RocketLauncher:RocketLauncher_Flattened_Specular.vc1"
		;
connectAttr "RocketLauncher:place2dTexture2.ofs" "RocketLauncher:RocketLauncher_Flattened_Specular.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "RocketLauncher:RocketLauncher_Flattened_Specular.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "RocketLauncher:RocketLauncher_Flattened_Specular.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "RocketLauncher:RocketLauncher_Flattened_Specular.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "RocketLauncher:RocketLauncher_Flattened_Specular.ws"
		;
connectAttr "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.oa" "RocketLauncher:bump2d1.bv"
		;
connectAttr "RocketLauncher:place2dTexture3.o" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.uv"
		;
connectAttr "RocketLauncher:place2dTexture3.ofu" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.ofu"
		;
connectAttr "RocketLauncher:place2dTexture3.ofv" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.ofv"
		;
connectAttr "RocketLauncher:place2dTexture3.rf" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.rf"
		;
connectAttr "RocketLauncher:place2dTexture3.reu" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.reu"
		;
connectAttr "RocketLauncher:place2dTexture3.rev" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.rev"
		;
connectAttr "RocketLauncher:place2dTexture3.vt1" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.vt1"
		;
connectAttr "RocketLauncher:place2dTexture3.vt2" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.vt2"
		;
connectAttr "RocketLauncher:place2dTexture3.vt3" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.vt3"
		;
connectAttr "RocketLauncher:place2dTexture3.vc1" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.vc1"
		;
connectAttr "RocketLauncher:place2dTexture3.ofs" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.ws"
		;
connectAttr "RocketLauncher:place2dTexture4.o" "RocketLauncher:ReflectionMap.uv"
		;
connectAttr "RocketLauncher:place2dTexture4.ofu" "RocketLauncher:ReflectionMap.ofu"
		;
connectAttr "RocketLauncher:place2dTexture4.ofv" "RocketLauncher:ReflectionMap.ofv"
		;
connectAttr "RocketLauncher:place2dTexture4.rf" "RocketLauncher:ReflectionMap.rf"
		;
connectAttr "RocketLauncher:place2dTexture4.reu" "RocketLauncher:ReflectionMap.reu"
		;
connectAttr "RocketLauncher:place2dTexture4.rev" "RocketLauncher:ReflectionMap.rev"
		;
connectAttr "RocketLauncher:place2dTexture4.vt1" "RocketLauncher:ReflectionMap.vt1"
		;
connectAttr "RocketLauncher:place2dTexture4.vt2" "RocketLauncher:ReflectionMap.vt2"
		;
connectAttr "RocketLauncher:place2dTexture4.vt3" "RocketLauncher:ReflectionMap.vt3"
		;
connectAttr "RocketLauncher:place2dTexture4.vc1" "RocketLauncher:ReflectionMap.vc1"
		;
connectAttr "RocketLauncher:place2dTexture4.ofs" "RocketLauncher:ReflectionMap.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "RocketLauncher:ReflectionMap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "RocketLauncher:ReflectionMap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "RocketLauncher:ReflectionMap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "RocketLauncher:ReflectionMap.ws";
connectAttr "RocketLauncher:standardSurface2.oc" "RocketLauncher:blinn1SG.ss";
connectAttr "RocketLauncher:blinn1SG.msg" "RocketLauncher:materialInfo2.sg";
connectAttr "RocketLauncher:standardSurface2.msg" "RocketLauncher:materialInfo2.m"
		;
connectAttr "RocketLauncher:standardSurface2.msg" "RocketLauncher:materialInfo2.t"
		 -na;
connectAttr "phong1.oc" "standardSurface2SG.ss";
connectAttr "table_legShape4.iog" "standardSurface2SG.dsm" -na;
connectAttr "table_legShape3.iog" "standardSurface2SG.dsm" -na;
connectAttr "table_legShape2.iog" "standardSurface2SG.dsm" -na;
connectAttr "table_legShape1.iog" "standardSurface2SG.dsm" -na;
connectAttr "table_topShape.iog" "standardSurface2SG.dsm" -na;
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "blendShape2.og[0]" "blendShape1.ip[0].ig";
connectAttr "blendShape2.og[1]" "blendShape1.ip[1].ig";
connectAttr "blendShape2.og[2]" "blendShape1.ip[2].ig";
connectAttr "blendShape2.og[3]" "blendShape1.ip[3].ig";
connectAttr "blendShape2.og[4]" "blendShape1.ip[4].ig";
connectAttr "table_topShapeOrig.o" "blendShape1.orggeom[0]";
connectAttr "table_legShape1Orig.o" "blendShape1.orggeom[1]";
connectAttr "table_legShape2Orig.o" "blendShape1.orggeom[2]";
connectAttr "table_legShape3Orig.o" "blendShape1.orggeom[3]";
connectAttr "table_legShape4Orig.o" "blendShape1.orggeom[4]";
connectAttr "shapeEditorManager.obsv[0]" "blendShape1.tgdt[0].dpvs";
connectAttr "table_topShapeOrig.w" "blendShape2.ip[0].ig";
connectAttr "table_legShape1Orig.w" "blendShape2.ip[1].ig";
connectAttr "table_legShape2Orig.w" "blendShape2.ip[2].ig";
connectAttr "table_legShape3Orig.w" "blendShape2.ip[3].ig";
connectAttr "table_legShape4Orig.w" "blendShape2.ip[4].ig";
connectAttr "table_topShapeOrig.o" "blendShape2.orggeom[0]";
connectAttr "table_legShape1Orig.o" "blendShape2.orggeom[1]";
connectAttr "table_legShape2Orig.o" "blendShape2.orggeom[2]";
connectAttr "table_legShape3Orig.o" "blendShape2.orggeom[3]";
connectAttr "table_legShape4Orig.o" "blendShape2.orggeom[4]";
connectAttr "shapeEditorManager.obsv[1]" "blendShape2.tgdt[0].dpvs";
connectAttr ":time1.o" "MASH1_Dynamics.time";
connectAttr "MASH1_DynamicsInitialState1.outputPoints" "MASH1_Dynamics.inputPoints"
		;
connectAttr "MASH1_DynamicsInitialState1.initialStateMessage" "MASH1_Dynamics.initialStateMessage"
		;
connectAttr "maxformaya_v4_5:brow_SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:teeth_SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:tounge_SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:body_SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:eye_SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:pupil_SG.pa" ":renderPartition.st" -na;
connectAttr "oceanBeach:bifrostLiquidMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "oceanBeach:bifrostLiquidMaterial4SG.pa" ":renderPartition.st" -na;
connectAttr "oceanBeach:bifrostLiquidMaterial5SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFall:span_geo_shardMatSG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFall:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFall:surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFall:surfaceShader2SG.pa" ":renderPartition.st" -na;
connectAttr "bridgeFall:bifrostLiquidMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:aiStandard1SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:bifrostLiquidMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:phong2SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:bifrostLiquidMaterial2SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:rampshader:rampShader1SG.pa" ":renderPartition.st" -na;
connectAttr "speedBoat:bifrostLiquidMaterial3SG.pa" ":renderPartition.st" -na;
connectAttr "RocketLauncher:RocketLauncherSG.pa" ":renderPartition.st" -na;
connectAttr "RocketLauncher:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "maxformaya_v4_5:brow_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:teeth_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:tongue_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:body_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:eye_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:pupil_Mat.msg" ":defaultShaderList1.s" -na;
connectAttr "oceanBeach:aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "bridgeFall:span_geo_shardMat.msg" ":defaultShaderList1.s" -na;
connectAttr "bridgeFall:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "bridgeFall:surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "bridgeFall:surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "bridgeFall:aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:aiStandard1.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:bifrostLiquidMaterial1.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:phong2.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:bifrostLiquidMaterial2.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:rampshader:rampShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "speedBoat:aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "RocketLauncher:standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomRightYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideBottomLeftYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Narrow_WideTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:GrrLeftTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:GrrLeftRightClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:GrrRightTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:GrrRightRightClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:jawMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browR3multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browR2multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browR1multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browL1multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browL2multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:browL3multiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:jawSquashStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:jawRotateMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:PupilLTopClamp.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "maxformaya_v4_5:PupilLBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:PupilLBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:PupilRTopClamp.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "maxformaya_v4_5:PupilRBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:PupilRBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidTopRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidTopLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidBottomRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLidBottomLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:armRollRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKBack_Stretch_Divide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:stretchyIKrootIK_Joint_spine0Bind_Joint_spine1Bind_Joint_spine2Bind_Joint_spine3Bind_Joint_spine4Bind_Joint_spine5Bind_Joint_spine6Bind_Joint_spine7Bind_Joint_spine8Bind_Joint_Stretch_Multiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:squashStretchIKMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LowerTorsoStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:UpperTorsoStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:rootFKStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:armRollLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:legFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:legFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:footFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:footFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toeFKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toetFKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine0BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine7BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine6BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine5BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine4BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine3BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine2BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:spine1BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyFingerLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerLSpreadMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerSpreadLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerSpreadLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerLStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerStretchLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerStretchLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyFingerStretchLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerStretchLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerStretchRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerRSpreadMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerRStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerSpreadRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerStretchRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerSpreadRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerStretchRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyFingerRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyFingerStretchRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderFKRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowFKRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderFKLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowFKLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:UpperTorsoSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LowerTorsoSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:rootFKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:squashStretchIKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:hipLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:hipRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:hipRIKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeRIKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:hipLIKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeLIKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:hipLFKSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:footFKLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toeFKLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:legFKRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:kneeFKRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:footFKRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toeFKRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerLSsAmoutnBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyLSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbFingerRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pointFingerRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:middleFingerRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ringFingerRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:pinkyFingerRSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLCondition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLPlusMinusAverage.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLPlusMinusAverage2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKLMultiplyDivide4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRCondition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRPlusMinusAverage.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRPlusMinusAverage2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:IKRMultiplyDivide4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:armRollRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:armRollLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbSpreadRMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:thumbSpreadLMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toeIKFKRStretchBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKFKRStretchBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toeIKFKLStretchBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKFKLStretchBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:neckMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:headMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:headSsAmountBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:headStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:headStretchBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toungeMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toungeStretchMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:toungeBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopLeftAdd.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "maxformaya_v4_5:LipsTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsTopRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomLeftYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:LipsBottomRightYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Lips_UpTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Lips_UpRightClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Lips_DownTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Lips_DownRightClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Oo_CheeksTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomLClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomLMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomRClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Oo_CheeksBottomRMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_In_OutTopClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_In_OutBottomClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_In_OutBottomMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_Left_RightRightClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_Left_RightLeftClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Jaw_Left_RightLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:tongueMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownTopRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftAdd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftXMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomLeftYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightXClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightYClamp.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:Smile_FrownBottomRightYMultDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ikSpineWorldMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ikSpineSquashMultiplyDivide.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ikSpineAddDoubleLinear.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:twistRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:twistLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeRBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeLBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKRCondition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:multiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKRMultiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKRMultiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:plusMinusAverage1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKRPlusMinusAverage.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKLCondition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:multiplyDivide4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKLMultiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKLMultiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:plusMinusAverage3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKLPlusMinusAverage.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKRMultiplyDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:ankleIKLMultiplyDivide3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderDummyLScaleBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowDummyLScaleBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:elbowDummyRScaleBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:shoulderDummyRScaleBlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:dummySpine2BlendColors.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "maxformaya_v4_5:eyeScaleLBlend.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "maxformaya_v4_5:eyeScaleRBlend.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "oceanBeach:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "oceanBeach:place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bridgeFall:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bridgeFall:vel_vort_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RocketLauncher:place2dTexture1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RocketLauncher:place2dTexture2.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RocketLauncher:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "RocketLauncher:place2dTexture3.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "RocketLauncher:place2dTexture4.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:AO.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:diffuse.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:reflection.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:refraction.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:shadow.msg" ":defaultRenderingList1.r" -na;
connectAttr "bridgeFall:specular.msg" ":defaultRenderingList1.r" -na;
connectAttr "oceanBeach:ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "oceanBeach:layeredTexture1.msg" ":defaultTextureList1.tx" -na;
connectAttr "oceanBeach:noise1.msg" ":defaultTextureList1.tx" -na;
connectAttr "bridgeFall:ocean1.msg" ":defaultTextureList1.tx" -na;
connectAttr "RocketLauncher:RocketLauncher_Flattened_Diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "RocketLauncher:RocketLauncher_Flattened_Specular.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "RocketLauncher:RocketLauncher_Flattened_BumpFBXASC032Value.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "RocketLauncher:ReflectionMap.msg" ":defaultTextureList1.tx" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of Table.ma
