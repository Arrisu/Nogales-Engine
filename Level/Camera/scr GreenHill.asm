; ---------------------------------------------------------------------------
; Green Hill parallax script
; ---------------------------------------------------------------------------

Scroll_GreenHill:
        moveq   #0,d4      
        move.w  camADiffX.w,d4          ; Get base scroll direction
        ext.l   d4
        asl.l   #5,d4
        move.l  d4,d1 ;$2000
        asl.l   #1,d4
        add.l   d1,d4

        moveq   #0,d5                   ; No Y-draw, Y-scroll is below

        bsr.w   _cameraBMoveDraw        ; Use as cam info inputs
        bsr.w   _cameraCSetX
        
        moveq   #0,d4     
        move.w  camADiffX.w,d4          ; Get base scroll direction
        ext.l   d4
        asl.l   #7,d4
        move.l  d4,d1
        asl.l   #1,d4
        add.l   d1,d4

        bsr.w   _cameraZSetX

        lea     hscroll.w,a1            ; Start calculating new scroll info

        ; Set mountains scroll speed


        move.w  #(176-32)-1,d1               ; Set abs. size of initial scroll
        move.w  cameraAPosX.w,d0                     
        neg.w   d0
        swap    d0
        move.w  cameraBPosX.w,d0
        neg.w   d0

.MtnsWrt:                               
        move.l  d0,(a1)+                ; Write scroll values
        dbf     d1,.MtnsWrt

        ; Set cities scroll speed

        move.w  #32-1,d1
        move.w  cameraCPosX.w,d0
        neg.w   d0

.CitiesWrt:                               
        move.l  d0,(a1)+
        dbf     d1,.CitiesWrt
        rts