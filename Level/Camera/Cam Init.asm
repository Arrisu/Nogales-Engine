; ---------------------------------------------------------------------------
; Camera System level initialize routines
; Player start position is updated here, for some reason.
; Note: This routine has been massively simplified and culled for the remake
; There's no additional zones
; ---------------------------------------------------------------------------

CameraInit:                       
        moveq   #0,d0
        move.b  d0,autoscrollX.w
        move.b  d0,autoscrollY.w
        move.b  d0,redrawUnk1.w
        move.b  d0,redrawUnk2.w
        move.b  d0,eventRoutine.w
        ; fall into

InitPlayerInfo:                    
        move.w  #$80,objSlot00+obj.X.w
        move.w  #$B0,objSlot00+obj.Y.w
        bsr.w   InitBgCams
        move.w  #$2000,limitARight.w
        move.w  #$2000,eventLimARight.w

        ; fall into

InitScrollBlocks:                       
        moveq   #0,d0
        move.b  zone.w,d0
        lsl.w   #3,d0
        lea     .Limits(pc,d0.w),a1
        lea     camASizeY.w,a2
        move.l  (a1)+,(a2)+
        move.l  (a1)+,(a2)+
        rts

; ---------------------------------------------------------------------------
.Limits:                               
        dc.w 176
        dc.w 64
        dc.w 64
        dc.w 16*32
; ---------------------------------------------------------------------------
; Initialize all background cameras (B, C, and Z)
; ---------------------------------------------------------------------------


InitBgCams:                             
        move.w  d0,cameraBPosY.w
        move.w  d0,cameraCPosY.w                         
        move.w  #36-16,cameraAPosY.w
        move.w  #30,cameraBPosY.w
        move.w  #32,cameraZPosY.w
        move.w  d0,cameraAPosX.w
        move.w  d0,cameraBPosX.w
        move.w  d0,cameraCPosX.w
        move.w  d0,camADiffX.w
        rts