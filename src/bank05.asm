;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank05", ROMX[$4000], BANK[$05]
; Bank5 seems to contain info about graphics tiles to load.
; First is a list of pointers lists of [tile_count, target, gfx_pointer] closed with a tile count of 0
;@data format=p amount=1
    dw   data_05_4002                                  ;; 05:4000 ..

;@gfxloadtable amount=18
data_05_4002:
    dw   data_05_4026                                  ;; 05:4002 .. $00
    dw   data_05_404b                                  ;; 05:4004 ?? $01
    dw   data_05_4078                                  ;; 05:4006 ?? $02
    dw   data_05_40a1                                  ;; 05:4008 ?? $03
    dw   data_05_40aa                                  ;; 05:400a .. $04
    dw   data_05_40b3                                  ;; 05:400c ?? $05
    dw   data_05_40d0                                  ;; 05:400e ?? $06
    dw   data_05_40ed                                  ;; 05:4010 ?? $07
    dw   data_05_4102                                  ;; 05:4012 ?? $08
    dw   data_05_4123                                  ;; 05:4014 ?? $09
    dw   data_05_4170                                  ;; 05:4016 ?? $0a
    dw   data_05_4191                                  ;; 05:4018 ?? $0b
    dw   data_05_41c2                                  ;; 05:401a ?? $0c
    dw   data_05_420f                                  ;; 05:401c ?? $0d
    dw   data_05_4224                                  ;; 05:401e ?? $0e
    dw   data_05_4269                                  ;; 05:4020 ?? $0f
    dw   data_05_42aa                                  ;; 05:4022 .. $10
    dw   data_05_42df                                  ;; 05:4024 ?? $11

data_05_4026:
    data_bbp $04, $00, data_05_4320                    ;; 05:4026 ..pP $00
    data_bbp $04, $04, data_05_4360                    ;; 05:402a ..pP $01
    data_bbp $02, $08, data_05_43e0                    ;; 05:402e ..pP $02
    data_bbp $02, $0a, data_05_4420                    ;; 05:4032 ..pP $03
    data_bbp $01, $0c, data_05_43a0                    ;; 05:4036 ..pP $04
    data_bbp $10, $0d, data_05_45a0                    ;; 05:403a ..pP $05
    data_bbp $04, $1d, data_05_7510                    ;; 05:403e ..pP $06
    data_bbp $08, $21, data_05_7180                    ;; 05:4042 ..pP $07
    data_bbp $49, $22, data_05_77d0                    ;; 05:4046 ..pP $08
    db   $00                                           ;; 05:404a .

data_05_404b:
    data_bbp $04, $00, data_05_4320                    ;; 05:404b ???? $00
    data_bbp $04, $04, data_05_4560                    ;; 05:404f ???? $01
    data_bbp $0a, $08, data_05_45a0                    ;; 05:4053 ???? $02
    data_bbp $10, $12, data_05_4360                    ;; 05:4057 ???? $03
    data_bbp $08, $22, data_05_5e60                    ;; 05:405b ???? $04
    data_bbp $08, $28, data_05_44e0                    ;; 05:405f ???? $05
    data_bbp $04, $30, data_05_4460                    ;; 05:4063 ???? $06
    data_bbp $07, $34, data_05_7840                    ;; 05:4067 ???? $07
    data_bbp $35, $3b, data_05_7c60                    ;; 05:406b ???? $08
    data_bbp $04, $70, data_05_7510                    ;; 05:406f ???? $09
    data_bbp $06, $74, data_05_4640                    ;; 05:4073 ???? $0a
    db   $00                                           ;; 05:4077 ?

data_05_4078:
    data_bbp $04, $00, data_05_4320                    ;; 05:4078 ???? $00
    data_bbp $3b, $04, data_05_4990                    ;; 05:407c ???? $01
    data_bbp $04, $3f, data_05_4560                    ;; 05:4080 ???? $02
    data_bbp $01, $43, data_05_4610                    ;; 05:4084 ???? $03
    data_bbp $02, $44, data_05_52c0                    ;; 05:4088 ???? $04
    data_bbp $08, $46, data_05_6680                    ;; 05:408c ???? $05
    data_bbp $08, $4e, data_05_67a0                    ;; 05:4090 ???? $06
    data_bbp $04, $56, data_05_6820                    ;; 05:4094 ???? $07
    data_bbp $02, $5a, data_05_6940                    ;; 05:4098 ???? $08
    data_bbp $02, $5c, data_05_7650                    ;; 05:409c ???? $09
    db   $00                                           ;; 05:40a0 ?

data_05_40a1:
    data_bbp $04, $00, data_05_4320                    ;; 05:40a1 ???? $00
    data_bbp $72, $04, data_05_4d40                    ;; 05:40a5 ???? $01
    db   $00                                           ;; 05:40a9 ?

data_05_40aa:
    data_bbp $04, $00, data_05_4320                    ;; 05:40aa ..pP $00
    data_bbp $4e, $04, data_05_5460                    ;; 05:40ae ..pP $01
    db   $00                                           ;; 05:40b2 .

data_05_40b3:
    data_bbp $04, $00, data_05_4320                    ;; 05:40b3 ???? $00
    data_bbp $10, $04, data_05_4360                    ;; 05:40b7 ???? $01
    data_bbp $30, $14, data_05_5940                    ;; 05:40bb ???? $02
    data_bbp $08, $44, data_05_4910                    ;; 05:40bf ???? $03
    data_bbp $02, $4c, data_05_5c40                    ;; 05:40c3 ???? $04
    data_bbp $02, $4e, data_05_5c60                    ;; 05:40c7 ???? $05
    data_bbp $18, $50, data_05_5c80                    ;; 05:40cb ???? $06
    db   $00                                           ;; 05:40cf ?

data_05_40d0:
    data_bbp $04, $00, data_05_4320                    ;; 05:40d0 ???? $00
    data_bbp $05, $04, data_05_4700                    ;; 05:40d4 ???? $01
    data_bbp $06, $09, data_05_4750                    ;; 05:40d8 ???? $02
    data_bbp $04, $0f, data_05_4560                    ;; 05:40dc ???? $03
    data_bbp $01, $13, data_05_4610                    ;; 05:40e0 ???? $04
    data_bbp $02, $14, data_05_5e00                    ;; 05:40e4 ???? $05
    data_bbp $04, $16, data_05_4850                    ;; 05:40e8 ???? $06
    db   $00                                           ;; 05:40ec ?

data_05_40ed:
    data_bbp $04, $00, data_05_4320                    ;; 05:40ed ???? $00
    data_bbp $06, $04, data_05_4750                    ;; 05:40f1 ???? $01
    data_bbp $04, $0a, data_05_5e20                    ;; 05:40f5 ???? $02
    data_bbp $02, $0e, data_05_5c60                    ;; 05:40f9 ???? $03
    data_bbp $2b, $10, data_05_5e60                    ;; 05:40fd ???? $04
    db   $00                                           ;; 05:4101 ?

data_05_4102:
    data_bbp $04, $00, data_05_4320                    ;; 05:4102 ???? $00
    data_bbp $10, $04, data_05_4360                    ;; 05:4106 ???? $01
    data_bbp $04, $14, data_05_48d0                    ;; 05:410a ???? $02
    data_bbp $02, $18, data_05_5c60                    ;; 05:410e ???? $03
    data_bbp $06, $1a, data_05_6110                    ;; 05:4112 ???? $04
    data_bbp $14, $20, data_05_6170                    ;; 05:4116 ???? $05
    data_bbp $0d, $34, data_05_62b0                    ;; 05:411a ???? $06
    data_bbp $02, $41, data_05_5c40                    ;; 05:411e ???? $07
    db   $00                                           ;; 05:4122 ?

data_05_4123:
    data_bbp $04, $00, data_05_4320                    ;; 05:4123 ???? $00
    data_bbp $10, $04, data_05_4360                    ;; 05:4127 ???? $01
    data_bbp $01, $14, data_05_4610                    ;; 05:412b ???? $02
    data_bbp $02, $15, data_05_4620                    ;; 05:412f ???? $03
    data_bbp $04, $17, data_05_45a0                    ;; 05:4133 ???? $04
    data_bbp $03, $1b, data_05_45e0                    ;; 05:4137 ???? $05
    data_bbp $06, $1e, data_05_4640                    ;; 05:413b ???? $06
    data_bbp $04, $24, data_05_44a0                    ;; 05:413f ???? $07
    data_bbp $06, $28, data_05_6380                    ;; 05:4143 ???? $08
    data_bbp $05, $2e, data_05_63e0                    ;; 05:4147 ???? $09
    data_bbp $03, $33, data_05_6430                    ;; 05:414b ???? $0a
    data_bbp $06, $36, data_05_6460                    ;; 05:414f ???? $0b
    data_bbp $06, $3c, data_05_46a0                    ;; 05:4153 ???? $0c
    data_bbp $08, $42, data_05_44e0                    ;; 05:4157 ???? $0d
    data_bbp $04, $4a, data_05_4460                    ;; 05:415b ???? $0e
    data_bbp $04, $4e, data_05_5980                    ;; 05:415f ???? $0f
    data_bbp $06, $52, data_05_6110                    ;; 05:4163 ???? $10
    data_bbp $18, $58, data_05_5c80                    ;; 05:4167 ???? $11
    data_bbp $02, $70, data_05_5c60                    ;; 05:416b ???? $12
    db   $00                                           ;; 05:416f ?

data_05_4170:
    data_bbp $04, $00, data_05_4320                    ;; 05:4170 ???? $00
    data_bbp $10, $04, data_05_4360                    ;; 05:4174 ???? $01
    data_bbp $08, $14, data_05_4910                    ;; 05:4178 ???? $02
    data_bbp $04, $1c, data_05_5980                    ;; 05:417c ???? $03
    data_bbp $01, $20, data_05_64c0                    ;; 05:4180 ???? $04
    data_bbp $02, $21, data_05_5c40                    ;; 05:4184 ???? $05
    data_bbp $02, $23, data_05_5c60                    ;; 05:4188 ???? $06
    data_bbp $1b, $25, data_05_64d0                    ;; 05:418c ???? $07
    db   $00                                           ;; 05:4190 ?

data_05_4191:
    data_bbp $04, $00, data_05_4320                    ;; 05:4191 ???? $00
    data_bbp $04, $04, data_05_4560                    ;; 05:4195 ???? $01
    data_bbp $10, $08, data_05_45a0                    ;; 05:4199 ???? $02
    data_bbp $08, $18, data_05_6680                    ;; 05:419d ???? $03
    data_bbp $08, $20, data_05_5e60                    ;; 05:41a1 ???? $04
    data_bbp $04, $28, data_05_6700                    ;; 05:41a5 ???? $05
    data_bbp $06, $2c, data_05_6740                    ;; 05:41a9 ???? $06
    data_bbp $08, $32, data_05_67a0                    ;; 05:41ad ???? $07
    data_bbp $06, $3a, data_05_6820                    ;; 05:41b1 ???? $08
    data_bbp $0c, $40, data_05_6880                    ;; 05:41b5 ???? $09
    data_bbp $02, $4c, data_05_6940                    ;; 05:41b9 ???? $0a
    data_bbp $02, $4e, data_05_6960                    ;; 05:41bd ???? $0b
    db   $00                                           ;; 05:41c1 ?

data_05_41c2:
    data_bbp $04, $00, data_05_4320                    ;; 05:41c2 ???? $00
    data_bbp $06, $04, data_05_4750                    ;; 05:41c6 ???? $01
    data_bbp $0a, $0a, data_05_47b0                    ;; 05:41ca ???? $02
    data_bbp $02, $14, data_05_6980                    ;; 05:41ce ???? $03
    data_bbp $08, $16, data_05_5e60                    ;; 05:41d2 ???? $04
    data_bbp $02, $1e, data_05_69a0                    ;; 05:41d6 ???? $05
    data_bbp $04, $20, data_05_5ee0                    ;; 05:41da ???? $06
    data_bbp $08, $24, data_05_69c0                    ;; 05:41de ???? $07
    data_bbp $04, $2c, data_05_4560                    ;; 05:41e2 ???? $08
    data_bbp $04, $30, data_05_45a0                    ;; 05:41e6 ???? $09
    data_bbp $03, $34, data_05_45e0                    ;; 05:41ea ???? $0a
    data_bbp $01, $37, data_05_4610                    ;; 05:41ee ???? $0b
    data_bbp $06, $38, data_05_4640                    ;; 05:41f2 ???? $0c
    data_bbp $06, $3e, data_05_60b0                    ;; 05:41f6 ???? $0d
    data_bbp $04, $44, data_05_4890                    ;; 05:41fa ???? $0e
    data_bbp $04, $48, data_05_6a40                    ;; 05:41fe ???? $0f
    data_bbp $01, $4c, data_05_6a80                    ;; 05:4202 ???? $10
    data_bbp $02, $4d, data_05_6a90                    ;; 05:4206 ???? $11
    data_bbp $08, $4f, data_05_6ab0                    ;; 05:420a ???? $12
    db   $00                                           ;; 05:420e ?

data_05_420f:
    data_bbp $04, $00, data_05_4320                    ;; 05:420f ???? $00
    data_bbp $2a, $04, data_05_6b30                    ;; 05:4213 ???? $01
    data_bbp $04, $2e, data_05_4560                    ;; 05:4217 ???? $02
    data_bbp $35, $32, data_05_6dd0                    ;; 05:421b ???? $03
    data_bbp $01, $67, data_05_4610                    ;; 05:421f ???? $04
    db   $00                                           ;; 05:4223 ?

data_05_4224:
    data_bbp $04, $00, data_05_4320                    ;; 05:4224 ???? $00
    data_bbp $17, $04, data_05_7120                    ;; 05:4228 ???? $01
    data_bbp $14, $1b, data_05_7290                    ;; 05:422c ???? $02
    data_bbp $04, $2f, data_05_4560                    ;; 05:4230 ???? $03
    data_bbp $04, $33, data_05_45a0                    ;; 05:4234 ???? $04
    data_bbp $03, $37, data_05_45e0                    ;; 05:4238 ???? $05
    data_bbp $01, $3a, data_05_4610                    ;; 05:423c ???? $06
    data_bbp $08, $3b, data_05_67a0                    ;; 05:4240 ???? $07
    data_bbp $04, $43, data_05_73d0                    ;; 05:4244 ???? $08
    data_bbp $08, $47, data_05_7410                    ;; 05:4248 ???? $09
    data_bbp $02, $4f, data_05_6940                    ;; 05:424c ???? $0a
    data_bbp $04, $51, data_05_7490                    ;; 05:4250 ???? $0b
    data_bbp $04, $55, data_05_5940                    ;; 05:4254 ???? $0c
    data_bbp $04, $59, data_05_74d0                    ;; 05:4258 ???? $0d
    data_bbp $04, $5d, data_05_7510                    ;; 05:425c ???? $0e
    data_bbp $06, $61, data_05_4640                    ;; 05:4260 ???? $0f
    data_bbp $02, $67, data_05_7550                    ;; 05:4264 ???? $10
    db   $00                                           ;; 05:4268 ?

data_05_4269:
    data_bbp $04, $00, data_05_4320                    ;; 05:4269 ???? $00
    data_bbp $04, $04, data_05_4560                    ;; 05:426d ???? $01
    data_bbp $01, $08, data_05_4610                    ;; 05:4271 ???? $02
    data_bbp $08, $09, data_05_67a0                    ;; 05:4275 ???? $03
    data_bbp $04, $11, data_05_73d0                    ;; 05:4279 ???? $04
    data_bbp $04, $15, data_05_5940                    ;; 05:427d ???? $05
    data_bbp $04, $19, data_05_7490                    ;; 05:4281 ???? $06
    data_bbp $06, $1d, data_05_46a0                    ;; 05:4285 ???? $07
    data_bbp $14, $23, data_05_7290                    ;; 05:4289 ???? $08
    data_bbp $17, $37, data_05_7120                    ;; 05:428d ???? $09
    data_bbp $07, $4e, data_05_7570                    ;; 05:4291 ???? $0a
    data_bbp $02, $55, data_05_77b0                    ;; 05:4295 ???? $0b
    data_bbp $07, $57, data_05_75e0                    ;; 05:4299 ???? $0c
    data_bbp $02, $5e, data_05_6940                    ;; 05:429d ???? $0d
    data_bbp $0a, $60, data_05_7650                    ;; 05:42a1 ???? $0e
    data_bbp $0c, $6a, data_05_76f0                    ;; 05:42a5 ???? $0f
    db   $00                                           ;; 05:42a9 ?

data_05_42aa:
    data_bbp $04, $00, data_05_4320                    ;; 05:42aa ..pP $00
    data_bbp $04, $04, data_05_4360                    ;; 05:42ae ..pP $01
    data_bbp $02, $08, data_05_43e0                    ;; 05:42b2 ..pP $02
    data_bbp $04, $0a, data_05_4560                    ;; 05:42b6 ..pP $03
    data_bbp $03, $0e, data_05_45e0                    ;; 05:42ba ..pP $04
    data_bbp $01, $11, data_05_4610                    ;; 05:42be ..pP $05
    data_bbp $06, $12, data_05_4640                    ;; 05:42c2 ..pP $06
    data_bbp $02, $18, data_05_5c60                    ;; 05:42c6 ..pP $07
    data_bbp $06, $1a, data_05_6110                    ;; 05:42ca ..pP $08
    data_bbp $08, $20, data_05_7180                    ;; 05:42ce ..pP $09
    data_bbp $07, $28, data_05_7840                    ;; 05:42d2 ..pP $0a
    data_bbp $16, $2f, data_05_78b0                    ;; 05:42d6 ..pP $0b
    data_bbp $02, $45, data_05_5c40                    ;; 05:42da ..pP $0c
    db   $00                                           ;; 05:42de .

data_05_42df:
    data_bbp $04, $00, data_05_4320                    ;; 05:42df ???? $00
    data_bbp $04, $04, data_05_4360                    ;; 05:42e3 ???? $01
    data_bbp $02, $08, data_05_43e0                    ;; 05:42e7 ???? $02
    data_bbp $02, $0a, data_05_4420                    ;; 05:42eb ???? $03
    data_bbp $01, $0c, data_05_43a0                    ;; 05:42ef ???? $04
    data_bbp $04, $0d, data_05_4560                    ;; 05:42f3 ???? $05
    data_bbp $03, $11, data_05_45e0                    ;; 05:42f7 ???? $06
    data_bbp $01, $14, data_05_4610                    ;; 05:42fb ???? $07
    data_bbp $02, $15, data_05_4620                    ;; 05:42ff ???? $08
    data_bbp $06, $17, data_05_4640                    ;; 05:4303 ???? $09
    data_bbp $04, $1d, data_05_7510                    ;; 05:4307 ???? $0a
    data_bbp $08, $21, data_05_7180                    ;; 05:430b ???? $0b
    data_bbp $24, $22, data_05_77d0                    ;; 05:430f ???? $0c
    data_bbp $02, $46, data_05_6a90                    ;; 05:4313 ???? $0d
    data_bbp $1a, $48, data_05_5c60                    ;; 05:4317 ???? $0e
    data_bbp $04, $62, data_05_4460                    ;; 05:431b ???? $0f
    db   $00                                           ;; 05:431f ?

data_05_4320:
    INCBIN "tiles/05/4320.bin"                         ;; 05:4320

data_05_4360:
    INCBIN "tiles/05/4360.bin"                         ;; 05:4360

data_05_43a0:
    INCBIN "tiles/05/43a0.bin"                         ;; 05:43a0

data_05_43e0:
    INCBIN "tiles/05/43e0.bin"                         ;; 05:43e0

data_05_4420:
    INCBIN "tiles/05/4420.bin"                         ;; 05:4420

data_05_4460:
    INCBIN "tiles/05/4460.bin"                         ;; 05:4460

data_05_44a0:
    INCBIN "tiles/05/44a0.bin"                         ;; 05:44a0

data_05_44e0:
    INCBIN "tiles/05/44e0.bin"                         ;; 05:44e0

data_05_4560:
    INCBIN "tiles/05/4560.bin"                         ;; 05:4560

data_05_45a0:
    INCBIN "tiles/05/45a0.bin"                         ;; 05:45a0

data_05_45e0:
    INCBIN "tiles/05/45e0.bin"                         ;; 05:45e0

data_05_4610:
    INCBIN "tiles/05/4610.bin"                         ;; 05:4610

data_05_4620:
    INCBIN "tiles/05/4620.bin"                         ;; 05:4620

data_05_4640:
    INCBIN "tiles/05/4640.bin"                         ;; 05:4640

data_05_46a0:
    INCBIN "tiles/05/46a0.bin"                         ;; 05:46a0

data_05_4700:
    INCBIN "tiles/05/4700.bin"                         ;; 05:4700

data_05_4750:
    INCBIN "tiles/05/4750.bin"                         ;; 05:4750

data_05_47b0:
    INCBIN "tiles/05/47b0.bin"                         ;; 05:47b0

data_05_4850:
    INCBIN "tiles/05/4850.bin"                         ;; 05:4850

data_05_4890:
    INCBIN "tiles/05/4890.bin"                         ;; 05:4890

data_05_48d0:
    INCBIN "tiles/05/48d0.bin"                         ;; 05:48d0

data_05_4910:
    INCBIN "tiles/05/4910.bin"                         ;; 05:4910

data_05_4990:
    INCBIN "tiles/05/4990.bin"                         ;; 05:4990

data_05_4d40:
    INCBIN "tiles/05/4d40.bin"                         ;; 05:4d40

data_05_52c0:
    INCBIN "tiles/05/52c0.bin"                         ;; 05:52c0
    db   $ff, $00, $80, $00, $bf, $00, $a0, $00        ;; 05:52e0 ????????
    db   $a0, $1f, $bf, $00, $bf, $00, $80, $7f        ;; 05:52e8 ????????
    db   $fe, $01, $00, $01, $fe, $01, $06, $01        ;; 05:52f0 ????????
    db   $06, $f9, $fe, $01, $fe, $01, $00, $ff        ;; 05:52f8 ????????
    db   $55, $aa, $aa, $55, $d5, $2a, $ea, $15        ;; 05:5300 ????????
    db   $f5, $0a, $fa, $05, $fd, $02, $fe, $01        ;; 05:5308 ????????
    db   $7f, $80, $bf, $40, $5f, $a0, $af, $50        ;; 05:5310 ????????
    db   $57, $a8, $ab, $54, $55, $aa, $aa, $55        ;; 05:5318 ????????
    db   $55, $aa, $aa, $55, $95, $2a, $aa, $15        ;; 05:5320 ????????
    db   $b5, $0a, $b2, $0d, $b1, $0a, $b2, $09        ;; 05:5328 ????????
    db   $0f, $c0, $c3, $30, $f0, $0c, $fc, $03        ;; 05:5330 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 05:5338 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $3f, $00        ;; 05:5340 ????????
    db   $0f, $c0, $c3, $30, $f0, $0c, $fc, $03        ;; 05:5348 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 05:5350 ????????
    db   $fc, $03, $f0, $0c, $c3, $30, $0f, $c0        ;; 05:5358 ????????
    db   $fc, $03, $f0, $0c, $c3, $30, $0f, $c0        ;; 05:5360 ????????
    db   $3f, $00, $ff, $00, $ff, $00, $ff, $00        ;; 05:5368 ????????
    db   $fc, $03, $fa, $05, $fc, $03, $fa, $05        ;; 05:5370 ????????
    db   $fc, $03, $fa, $05, $fc, $03, $fa, $05        ;; 05:5378 ????????
    db   $bf, $00, $bf, $00, $bf, $00, $bf, $00        ;; 05:5380 ????????
    db   $bf, $00, $bf, $00, $bf, $00, $bf, $00        ;; 05:5388 ????????
    db   $fc, $03, $0a, $f5, $0c, $93, $2a, $95        ;; 05:5390 ????????
    db   $2c, $93, $2a, $95, $2c, $93, $2a, $95        ;; 05:5398 ????????
    db   $2c, $93, $2a, $95, $2c, $93, $2a, $95        ;; 05:53a0 ????????
    db   $2c, $93, $6a, $95, $0c, $f3, $fa, $05        ;; 05:53a8 ????????
    db   $bf, $00, $b0, $0f, $b0, $09, $b2, $09        ;; 05:53b0 ????????
    db   $b2, $09, $b2, $09, $b2, $09, $b2, $09        ;; 05:53b8 ????????
    db   $b2, $09, $b2, $09, $b2, $09, $b2, $09        ;; 05:53c0 ????????
    db   $b2, $09, $b6, $09, $b0, $0f, $bf, $00        ;; 05:53c8 ????????
    db   $ff, $00, $80, $7f, $80, $40, $9f, $40        ;; 05:53d0 ????????
    db   $9f, $40, $9f, $40, $80, $7f, $80, $00        ;; 05:53d8 ????????
    db   $fe, $00, $00, $fe, $00, $02, $fc, $02        ;; 05:53e0 ????????
    db   $fc, $02, $fc, $02, $00, $fe, $00, $00        ;; 05:53e8 ????????
    db   $55, $aa, $aa, $55, $55, $aa, $aa, $55        ;; 05:53f0 ????????
    db   $55, $aa, $aa, $55, $55, $aa, $aa, $55        ;; 05:53f8 ????????
    db   $ff, $00, $c0, $00, $bf, $00, $bf, $00        ;; 05:5400 ????????
    db   $bf, $00, $bf, $00, $bf, $00, $bf, $00        ;; 05:5408 ????????
    db   $ff, $00, $00, $00, $ff, $00, $ff, $00        ;; 05:5410 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 05:5418 ????????
    db   $fe, $01, $0a, $05, $fc, $03, $fa, $05        ;; 05:5420 ????????
    db   $fc, $03, $fa, $05, $fc, $03, $fa, $05        ;; 05:5428 ????????
    db   $bf, $00, $bf, $00, $bf, $00, $bf, $00        ;; 05:5430 ????????
    db   $bf, $00, $aa, $15, $95, $2a, $c0, $3f        ;; 05:5438 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 05:5440 ????????
    db   $ff, $00, $aa, $55, $55, $aa, $00, $ff        ;; 05:5448 ????????
    db   $fc, $03, $fa, $05, $fc, $03, $fa, $05        ;; 05:5450 ????????
    db   $fc, $03, $aa, $55, $54, $ab, $00, $ff        ;; 05:5458 ????????

data_05_5460:
    INCBIN "tiles/05/5460.bin"                         ;; 05:5460

data_05_5940:
    INCBIN "tiles/05/5940.bin"                         ;; 05:5940

data_05_5980:
    INCBIN "tiles/05/5980.bin"                         ;; 05:5980

data_05_5c40:
    INCBIN "tiles/05/5c40.bin"                         ;; 05:5c40

data_05_5c60:
    INCBIN "tiles/05/5c60.bin"                         ;; 05:5c60

data_05_5c80:
    INCBIN "tiles/05/5c80.bin"                         ;; 05:5c80

data_05_5e00:
    INCBIN "tiles/05/5e00.bin"                         ;; 05:5e00

data_05_5e20:
    INCBIN "tiles/05/5e20.bin"                         ;; 05:5e20

data_05_5e60:
    INCBIN "tiles/05/5e60.bin"                         ;; 05:5e60

data_05_5ee0:
    INCBIN "tiles/05/5ee0.bin"                         ;; 05:5ee0

data_05_60b0:
    INCBIN "tiles/05/60b0.bin"                         ;; 05:60b0

data_05_6110:
    INCBIN "tiles/05/6110.bin"                         ;; 05:6110

data_05_6170:
    INCBIN "tiles/05/6170.bin"                         ;; 05:6170

data_05_62b0:
    INCBIN "tiles/05/62b0.bin"                         ;; 05:62b0

data_05_6380:
    INCBIN "tiles/05/6380.bin"                         ;; 05:6380

data_05_63e0:
    INCBIN "tiles/05/63e0.bin"                         ;; 05:63e0

data_05_6430:
    INCBIN "tiles/05/6430.bin"                         ;; 05:6430

data_05_6460:
    INCBIN "tiles/05/6460.bin"                         ;; 05:6460

data_05_64c0:
    INCBIN "tiles/05/64c0.bin"                         ;; 05:64c0

data_05_64d0:
    INCBIN "tiles/05/64d0.bin"                         ;; 05:64d0

data_05_6680:
    INCBIN "tiles/05/6680.bin"                         ;; 05:6680

data_05_6700:
    INCBIN "tiles/05/6700.bin"                         ;; 05:6700

data_05_6740:
    INCBIN "tiles/05/6740.bin"                         ;; 05:6740

data_05_67a0:
    INCBIN "tiles/05/67a0.bin"                         ;; 05:67a0

data_05_6820:
    INCBIN "tiles/05/6820.bin"                         ;; 05:6820

data_05_6880:
    INCBIN "tiles/05/6880.bin"                         ;; 05:6880

data_05_6940:
    INCBIN "tiles/05/6940.bin"                         ;; 05:6940

data_05_6960:
    INCBIN "tiles/05/6960.bin"                         ;; 05:6960

data_05_6980:
    INCBIN "tiles/05/6980.bin"                         ;; 05:6980

data_05_69a0:
    INCBIN "tiles/05/69a0.bin"                         ;; 05:69a0

data_05_69c0:
    INCBIN "tiles/05/69c0.bin"                         ;; 05:69c0

data_05_6a40:
    INCBIN "tiles/05/6a40.bin"                         ;; 05:6a40

data_05_6a80:
    INCBIN "tiles/05/6a80.bin"                         ;; 05:6a80

data_05_6a90:
    INCBIN "tiles/05/6a90.bin"                         ;; 05:6a90

data_05_6ab0:
    INCBIN "tiles/05/6ab0.bin"                         ;; 05:6ab0

data_05_6b30:
    INCBIN "tiles/05/6b30.bin"                         ;; 05:6b30

data_05_6dd0:
    INCBIN "tiles/05/6dd0.bin"                         ;; 05:6dd0

data_05_7120:
    INCBIN "tiles/05/7120.bin"                         ;; 05:7120

data_05_7180:
    INCBIN "tiles/05/7180.bin"                         ;; 05:7180
    db   $55, $00, $33, $00, $55, $00, $33, $00        ;; 05:7200 ????????
    db   $55, $00, $33, $00, $55, $00, $33, $00        ;; 05:7208 ????????
    db   $55, $00, $33, $00, $55, $00, $33, $00        ;; 05:7210 ????????
    db   $55, $00, $bb, $00, $55, $00, $ff, $00        ;; 05:7218 ????????
    db   $00, $00, $aa, $00, $55, $00, $ff, $00        ;; 05:7220 ????????
    db   $00, $00, $aa, $00, $55, $00, $ff, $00        ;; 05:7228 ????????
    db   $05, $00, $ab, $00, $55, $00, $ff, $00        ;; 05:7230 ????????
    db   $05, $00, $ab, $00, $55, $00, $ff, $00        ;; 05:7238 ????????
    db   $ff, $00, $69, $00, $3f, $00, $1f, $00        ;; 05:7240 ????????
    db   $0c, $00, $06, $00, $03, $00, $01, $00        ;; 05:7248 ????????
    db   $ff, $00, $19, $00, $ff, $00, $ff, $00        ;; 05:7250 ????????
    db   $05, $00, $03, $00, $05, $00, $83, $00        ;; 05:7258 ????????
    db   $c5, $00, $63, $00, $35, $00, $1b, $00        ;; 05:7260 ????????
    db   $0d, $00, $a7, $00, $53, $00, $ff, $00        ;; 05:7268 ????????
    db   $ff, $00, $1e, $00, $3c, $00, $78, $00        ;; 05:7270 ????????
    db   $f0, $00, $e1, $00, $ff, $00, $ff, $00        ;; 05:7278 ????????
    db   $ff, $00, $1f, $00, $3f, $00, $7b, $00        ;; 05:7280 ????????
    db   $f3, $00, $e3, $00, $ff, $00, $ff, $00        ;; 05:7288 ????????

data_05_7290:
    INCBIN "tiles/05/7290.bin"                         ;; 05:7290

data_05_73d0:
    INCBIN "tiles/05/73d0.bin"                         ;; 05:73d0

data_05_7410:
    INCBIN "tiles/05/7410.bin"                         ;; 05:7410

data_05_7490:
    INCBIN "tiles/05/7490.bin"                         ;; 05:7490

data_05_74d0:
    INCBIN "tiles/05/74d0.bin"                         ;; 05:74d0

data_05_7510:
    INCBIN "tiles/05/7510.bin"                         ;; 05:7510

data_05_7550:
    INCBIN "tiles/05/7550.bin"                         ;; 05:7550

data_05_7570:
    INCBIN "tiles/05/7570.bin"                         ;; 05:7570

data_05_75e0:
    INCBIN "tiles/05/75e0.bin"                         ;; 05:75e0

data_05_7650:
    INCBIN "tiles/05/7650.bin"                         ;; 05:7650

data_05_76f0:
    INCBIN "tiles/05/76f0.bin"                         ;; 05:76f0

data_05_77b0:
    INCBIN "tiles/05/77b0.bin"                         ;; 05:77b0

data_05_77d0:
    INCBIN "tiles/05/77d0.bin"                         ;; 05:77d0

data_05_7840:
    INCBIN "tiles/05/7840.bin"                         ;; 05:7840

data_05_78b0:
    INCBIN "tiles/05/78b0.bin"                         ;; 05:78b0

data_05_7c60:
    INCBIN "tiles/05/7c60.bin"                         ;; 05:7c60
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fb0 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fb8 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fc0 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fc8 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fd0 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fd8 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fe0 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7fe8 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7ff0 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 05:7ff8 ????????
