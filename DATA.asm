		ALIGN   $18000
ArtNem_LOGO:
	incbin  "Logo/LOGO_ART.nem"
MapScr_LOGO:
	incbin  "Logo/LOGO_SCR.eni"

MapScr_TITLEA:
	incbin  "Title/TITLE_SCR_A.map"
	even
MapScr_TITLEB:
	incbin  "Title/TITLE_SCR_B.map"
	even
ArtNem_TitleBanner:
	incbin  "Title/TITLE_BANNER_ART.nem"
	even
ArtNem_TitleSonic:
	incbin  "Title/TITLE_SONIC_ART.nem"
	even

		ALIGN   $1000
SprPat_PlaySonic:
	include "Objects/Player/Data/PLAYER_PAT.asm"
DynGfx_PlaySonic:
	include "Objects/Player/Data/PLAYER_DGFX.asm"
ArtUnc_Sonic:
	incbin "Objects/Player/Data/PLAYER_ART.bin"        

		align	$1000
MapBlks_GreenHill:    
		incbin  "Level/Data/Blocks/GHZ.bin"
		even
ArtNem_GreenHill:    
		incbin  "Level/Data/Art/GHZ1.nem" 
		even
ArtNem_GreenHill2:    
		incbin  "Level/Data/Art/GHZ2.nem" 
		even
MapChnks_GHZ:   
		incbin  "Level/Data/Chunks/GHZ.kos" 
		even
ArtNem_Enemy:
		incbin	"Objects/Enemy/ENEMY_ART.nem"
		even
MapBlk_Labyrinth:

ArtNem_Labyrinth:
MapChnks_LZ:
MapBlk_Marble:
ArtNem_Marble:
MapChunks_Marble:
	;incbin  "Level/Data/Chunks/MZ.bin"
MapChunks_UnkLeftover:
MapBlk_StarLight:
ArtNem_StarLight:
MapChnks_SLZ:
MapBlk_Sparkling:
ArtNem_Sparkling:
MapChnks_SZ:
MapBlk_ClockWork:    
ArtNem_ClockWork:
MapChnks_CWZ:
		align   $1000
SprPat_SSBlockWalls:
ArtNem_SpecialStgWalls:
MapScr_SpecialStgBG1:
ArtNem_SpecialStgBG2:
MapScr_SpecialStgBG2:
ArtNem_SpecialStgBG1:
ArtNem_SpecialStgGoal:
ArtNem_SpecialStgR:
ArtNem_SpecialStgSkull:
ArtNem_SpecialStgMagnet:
ArtNem_SpecialStg1Up:
ArtNem_SpecialStgStars:
ArtNem_SpecialStgStriped:
ArtNem_SpecialStgZone1:
ArtNem_SpecialStgZone2:
ArtNem_SpecialStgZone3:
ArtNem_SpecialStgZone4:
ArtNem_SpecialStgZone5:
ArtNem_SpecialStgZone6:
ArtNem_SpecialStgUpDown:
ArtNem_SpecialStgEmerald:    

		align  $8000
AngleMap:       
		incbin	"Level/Data/AngleTbl.bin"
BlkColHeights:  
		incbin	"Level/Data/BlkColHeights.bin"
BlkColWidths:   
		incbin	"Level/Data/BlkColWidths.bin"
LvlCol_GreenHill:
	incbin  "Level/Data/Collision/GHZ.bin"
	even
	include "Level/Layout/Layout Table.asm"
	include "Level/Objects/Layout/Object Lists Table.asm"
		dcb.b $1C26,  $FF
