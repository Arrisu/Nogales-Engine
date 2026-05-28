; ---------------------------------------------------------------------------
; The player obj likely did not have its own anim. handler in this build
; It has been omitted. Animations now use a new format. See "_objectAnimate"
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Animation table
; ---------------------------------------------------------------------------

AniSpr_Sonic:
        dc.w AnimSonic_Walk-AniSpr_Sonic
        dc.w AnimSonic_Run-AniSpr_Sonic
        dc.w AnimSonic_Spin-AniSpr_Sonic
        dc.w AnimSonic_Unk2-AniSpr_Sonic
        dc.w AnimSonic_Idle-AniSpr_Sonic

; ---------------------------------------------------------------------------

AnimSonic_Walk:
        dc.b    -1
        dc.b    2,3,4,5,6,7
        dc.b    -1 
        even

AnimSonic_Run: 
        dc.b    -1
        dc.b    8,9,$A,$B
        dc.b    -1
        even

AnimSonic_Spin: 
        dc.b    -1
        dc.b    $C,$D,$E,$F,$10
        dc.b    -1
        even

;AnimSonic_Spin2: 
        dc.b    -1
        dc.b    $C,$D,$E,$F,$10
        dc.b    -1
        even

AnimSonic_Idle:  
        dc.b    4
        dc.b    1 
        dc.b    -1
        even

; i'm keeping this here because it's really funny
; it's the shrinking animation

AnimSonic_Unk2:  
        dc.b    3
        dc.b    $11,$12,$13,$14,$15,0
        dc.b    $FE, 1
        even    
