		ALIGN   $18000
ArtNem_LOGO:
	incbin  "Logo/LOGO_ART.nem"
MapScr_LOGO:
	incbin  "Logo/LOGO_SCR.eni"

MapScr_TITLE:
	incbin  "Title/TITLE_SCR_A.bin"
ArtNem_TitleBanner:
	incbin  "Title/TITLE_BANNER_ART.nem"
ArtNem_TitleSonic:
	incbin  "Title/TITLE_SONIC_ART.nem"

		ALIGN   $C000

ArtNem_Temp:
	dc.b   0,$10,$80,  5,$18,$14,  7,$25 
	dc.b $17,$35,$19,$47,$7A,$56,$3B,$67
	dc.b $7C,$73,  1,$86,  4,  8,$15,$16
	dc.b $26,$37,$37,$7B,$87,  3,  0,$14
	dc.b  $A,$25,$1A,$38,$FA,$88,  3,  2
	dc.b $14,  6,$26,$36,$36,$3A,$48,$FB
	dc.b $89,  4,  9,$15,$1C,$26,$3C,$FF
	dc.b $27,$E0,$EC,$47,$76,$CD,$5A,$E3
	dc.b $DD,$FD,$87,$1B,$D3,$8B,$69,$D0
	dc.b $B5,$3C,$AA,$67,$9F,$BB,$CF,$59
	dc.b $FD,$CF,$7C,$24,$92,$49,$26,$D5
	dc.b $9D,$C2,$71,$6D,$30,$B6,$B6,$DC
	dc.b $75,$A6,$FA,$D8,$46,$98,$6E,$36
	dc.b $1B,$FD,$EB,$FF,$1D, $B,$53, $F
	dc.b $62,$50,$F6,$25,$85,$82,$96,$D3
	dc.b $73,$FB,$18,$9E,$B8,$FF,$D9,$24
	dc.b $92,$60,$77,$B8,$C8,$B5,$5E,$A2
	dc.b $AF,$51,$57,$FA,$CB,$6A,$EC,$20
	dc.b $5D,$85,$83,$B0,$B0,$58,$DA,$29
	dc.b $63,$FD,$18,$FE,$C4,$E3,$AE,$3A
	dc.b $F3,$33,$F2,$49,$24,$9B,$A1,$6B
	dc.b $A1,$BD,$D7,$D5,$DA,$96,$50,$6B
	dc.b $8D,$83,$88,$61, $F,$60,$A9,$EC
	dc.b $36,$74,$3A,$79,$FB,$BF,$1A,$7D
	dc.b $70,$93,$81,$F3,$51,$96,$A8,$BB
	dc.b   8,$A7,$5F,$C7,$70,$C2,$13,$C0
	dc.b $55, $F,$48,$58,$60,$30,$80,$B0
	dc.b $D2,$83,$61,$78,$B9,$89,$7F,  9
	dc.b $3E,$90,$F4,$AA,$1D,$40,$42,  6
	dc.b $2C,$16,$9A,$A5,  5,$CD,$BC,$79
	dc.b $69,$CF,$87,$E3,$7A,$56,$59,$56
	dc.b $59,$96,$9F,$5C,$24,$93,$DC,$2E
	dc.b $D4,$92,$6E,  0
	even

SprPat_PlaySonic:
	include "Objects/Player/Data/PLAYER_PAT.asm"
DynGfx_PlaySonic:
	include "Objects/Player/Data/PLAYER_DGFX.asm"
ArtUnc_Sonic:
	incbin "Objects/Player/Data/PLAYER_ART.bin"        

		align	$10000
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
