;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank0a", ROMX[$4000], BANK[$0a]
    jp   jp_0a_432e                                    ;; 0a:4000 $c3 $2e $43
    jp   jp_0a_431b                                    ;; 0a:4003 $c3 $1b $43
    jp   call_0a_424f                                  ;; 0a:4006 $c3 $4f $42
    jp   call_0a_4211                                  ;; 0a:4009 $c3 $11 $42
    jp   jp_0a_4202                                    ;; 0a:400c $c3 $02 $42
    jp   jp_0a_4135                                    ;; 0a:400f $c3 $35 $41

call_0a_4012:
    jp   jp_0a_5e6e                                    ;; 0a:4012 $c3 $6e $5e

call_0a_4015:
    jp   jp_0a_7d83                                    ;; 0a:4015 $c3 $83 $7d
    db   $c3, $1b, $40, $78, $b7, $21, $85, $73        ;; 0a:4018 ????????
    db   $28, $03, $21, $ab, $73, $c3, $d3, $5e        ;; 0a:4020 ????????

call_0a_4028:
    ld   DE, wC101                                     ;; 0a:4028 $11 $01 $c1
    ld   A, [DE]                                       ;; 0a:402b $1a
    cp   A, $21                                        ;; 0a:402c $fe $21
    ret  NC                                            ;; 0a:402e $d0
    inc  E                                             ;; 0a:402f $1c
    ld   B, A                                          ;; 0a:4030 $47
    ld   A, [DE]                                       ;; 0a:4031 $1a
    inc  E                                             ;; 0a:4032 $1c
    ld   H, A                                          ;; 0a:4033 $67
.jr_0a_4034:
    ld   A, [DE]                                       ;; 0a:4034 $1a
    inc  E                                             ;; 0a:4035 $1c
    ld   L, A                                          ;; 0a:4036 $6f
    ld   A, [DE]                                       ;; 0a:4037 $1a
    inc  E                                             ;; 0a:4038 $1c
    call call_00_015c                                  ;; 0a:4039 $cd $5c $01
    dec  B                                             ;; 0a:403c $05
    jr   NZ, .jr_0a_4034                               ;; 0a:403d $20 $f5
    ret                                                ;; 0a:403f $c9

call_0a_4040:
    ldh  A, [rLY]                                      ;; 0a:4040 $f0 $44
    cp   A, $91                                        ;; 0a:4042 $fe $91
    jr   NC, call_0a_4040                              ;; 0a:4044 $30 $fa
    ei                                                 ;; 0a:4046 $fb
    xor  A, A                                          ;; 0a:4047 $af
    ld   [wC0C8], A                                    ;; 0a:4048 $ea $c8 $c0
.jr_0a_404b:
    halt                                               ;; 0a:404b $76
    ld   A, [wC0C8]                                    ;; 0a:404c $fa $c8 $c0
    or   A, A                                          ;; 0a:404f $b7
    jr   Z, .jr_0a_404b                                ;; 0a:4050 $28 $f9

call_0a_4052:
    ld   A, [wCD7D]                                    ;; 0a:4052 $fa $7d $cd
    ld   L, A                                          ;; 0a:4055 $6f
    ld   H, $c0                                        ;; 0a:4056 $26 $c0
    ld   C, $a0                                        ;; 0a:4058 $0e $a0
    ld   DE, $04                                       ;; 0a:405a $11 $04 $00
.jr_0a_405d:
    ld   [HL], C                                       ;; 0a:405d $71
    add  HL, DE                                        ;; 0a:405e $19
    ld   A, L                                          ;; 0a:405f $7d
    cp   A, $28                                        ;; 0a:4060 $fe $28
    jr   C, .jr_0a_405d                                ;; 0a:4062 $38 $f9
    xor  A, A                                          ;; 0a:4064 $af
    ld   [wCD7D], A                                    ;; 0a:4065 $ea $7d $cd
    ret                                                ;; 0a:4068 $c9

call_0a_4069:
    ldh  A, [hFF9A]                                    ;; 0a:4069 $f0 $9a
    add  A, [HL]                                       ;; 0a:406b $86
    add  A, $08                                        ;; 0a:406c $c6 $08
    ldh  [hFF9C], A                                    ;; 0a:406e $e0 $9c
    inc  HL                                            ;; 0a:4070 $23
    ldh  A, [hFF9B]                                    ;; 0a:4071 $f0 $9b
    add  A, [HL]                                       ;; 0a:4073 $86
    add  A, $10                                        ;; 0a:4074 $c6 $10
    ldh  [hFF9D], A                                    ;; 0a:4076 $e0 $9d
    ldh  [hFF8C], A                                    ;; 0a:4078 $e0 $8c
    inc  HL                                            ;; 0a:407a $23
    ld   A, [HL+]                                      ;; 0a:407b $2a
    ld   E, L                                          ;; 0a:407c $5d
    ld   D, H                                          ;; 0a:407d $54
    or   A, A                                          ;; 0a:407e $b7
    jr   Z, .jr_0a_40c9                                ;; 0a:407f $28 $48
    ld   B, A                                          ;; 0a:4081 $47
    swap A                                             ;; 0a:4082 $cb $37
    and  A, $0f                                        ;; 0a:4084 $e6 $0f
    ld   C, A                                          ;; 0a:4086 $4f
    ld   A, B                                          ;; 0a:4087 $78
    and  A, $0f                                        ;; 0a:4088 $e6 $0f
    ld   B, A                                          ;; 0a:408a $47
    ld   H, $c0                                        ;; 0a:408b $26 $c0
.jr_0a_408d:
    push BC                                            ;; 0a:408d $c5
    ldh  A, [hFF9C]                                    ;; 0a:408e $f0 $9c
    ld   B, A                                          ;; 0a:4090 $47
.jr_0a_4091:
    ld   A, [DE]                                       ;; 0a:4091 $1a
    or   A, A                                          ;; 0a:4092 $b7
    jr   Z, .jr_0a_40b7                                ;; 0a:4093 $28 $22
    push DE                                            ;; 0a:4095 $d5
    ld   D, A                                          ;; 0a:4096 $57
    ld   A, [wCD7D]                                    ;; 0a:4097 $fa $7d $cd
    ld   L, A                                          ;; 0a:409a $6f
    add  A, $04                                        ;; 0a:409b $c6 $04
    ld   [wCD7D], A                                    ;; 0a:409d $ea $7d $cd
    ldh  A, [hFF8C]                                    ;; 0a:40a0 $f0 $8c
    ld   [HL+], A                                      ;; 0a:40a2 $22
    ld   A, B                                          ;; 0a:40a3 $78
    ld   [HL+], A                                      ;; 0a:40a4 $22
    ld   A, D                                          ;; 0a:40a5 $7a
    and  A, $7f                                        ;; 0a:40a6 $e6 $7f
    ld   E, A                                          ;; 0a:40a8 $5f
    ldh  A, [hFFAB]                                    ;; 0a:40a9 $f0 $ab
    add  A, E                                          ;; 0a:40ab $83
    ld   [HL+], A                                      ;; 0a:40ac $22
    ldh  A, [hFF9E]                                    ;; 0a:40ad $f0 $9e
    bit  7, D                                          ;; 0a:40af $cb $7a
    jr   Z, .jr_0a_40b5                                ;; 0a:40b1 $28 $02
    set  5, A                                          ;; 0a:40b3 $cb $ef
.jr_0a_40b5:
    ld   [HL+], A                                      ;; 0a:40b5 $22
    pop  DE                                            ;; 0a:40b6 $d1
.jr_0a_40b7:
    inc  DE                                            ;; 0a:40b7 $13
    ld   A, B                                          ;; 0a:40b8 $78
    add  A, $08                                        ;; 0a:40b9 $c6 $08
    ld   B, A                                          ;; 0a:40bb $47
    dec  C                                             ;; 0a:40bc $0d
    jr   NZ, .jr_0a_4091                               ;; 0a:40bd $20 $d2
    ldh  A, [hFF8C]                                    ;; 0a:40bf $f0 $8c
    add  A, $08                                        ;; 0a:40c1 $c6 $08
    ldh  [hFF8C], A                                    ;; 0a:40c3 $e0 $8c
    pop  BC                                            ;; 0a:40c5 $c1
    dec  B                                             ;; 0a:40c6 $05
    jr   NZ, .jr_0a_408d                               ;; 0a:40c7 $20 $c4
.jr_0a_40c9:
    ld   H, $c0                                        ;; 0a:40c9 $26 $c0
.jr_0a_40cb:
    ld   A, [DE]                                       ;; 0a:40cb $1a
    cp   A, $80                                        ;; 0a:40cc $fe $80
    jr   Z, .jr_0a_40fe                                ;; 0a:40ce $28 $2e
    inc  DE                                            ;; 0a:40d0 $13
    ld   C, A                                          ;; 0a:40d1 $4f
    ld   A, [DE]                                       ;; 0a:40d2 $1a
    inc  DE                                            ;; 0a:40d3 $13
    ld   B, A                                          ;; 0a:40d4 $47
    ld   A, [DE]                                       ;; 0a:40d5 $1a
    inc  DE                                            ;; 0a:40d6 $13
    push DE                                            ;; 0a:40d7 $d5
    ld   D, A                                          ;; 0a:40d8 $57
    ld   A, [wCD7D]                                    ;; 0a:40d9 $fa $7d $cd
    ld   L, A                                          ;; 0a:40dc $6f
    add  A, $04                                        ;; 0a:40dd $c6 $04
    ld   [wCD7D], A                                    ;; 0a:40df $ea $7d $cd
    ldh  A, [hFF9D]                                    ;; 0a:40e2 $f0 $9d
    add  A, B                                          ;; 0a:40e4 $80
    ld   [HL+], A                                      ;; 0a:40e5 $22
    ldh  A, [hFF9C]                                    ;; 0a:40e6 $f0 $9c
    add  A, C                                          ;; 0a:40e8 $81
    ld   [HL+], A                                      ;; 0a:40e9 $22
    ld   A, D                                          ;; 0a:40ea $7a
    and  A, $7f                                        ;; 0a:40eb $e6 $7f
    ld   E, A                                          ;; 0a:40ed $5f
    ldh  A, [hFFAB]                                    ;; 0a:40ee $f0 $ab
    add  A, E                                          ;; 0a:40f0 $83
    ld   [HL+], A                                      ;; 0a:40f1 $22
    ldh  A, [hFF9E]                                    ;; 0a:40f2 $f0 $9e
    bit  7, D                                          ;; 0a:40f4 $cb $7a
    jr   Z, .jr_0a_40fa                                ;; 0a:40f6 $28 $02
    set  5, A                                          ;; 0a:40f8 $cb $ef
.jr_0a_40fa:
    ld   [HL+], A                                      ;; 0a:40fa $22
    pop  DE                                            ;; 0a:40fb $d1
    jr   .jr_0a_40cb                                   ;; 0a:40fc $18 $cd
.jr_0a_40fe:
    ret                                                ;; 0a:40fe $c9

call_0a_40ff:
    xor  A, A                                          ;; 0a:40ff $af
    ld   [wCD78], A                                    ;; 0a:4100 $ea $78 $cd
    ld   A, $64                                        ;; 0a:4103 $3e $64
    ld   [wCD77], A                                    ;; 0a:4105 $ea $77 $cd
    ret                                                ;; 0a:4108 $c9

call_0a_4109:
    ld   HL, wCD78                                     ;; 0a:4109 $21 $78 $cd
    call call_0a_411c                                  ;; 0a:410c $cd $1c $41
    ret  NZ                                            ;; 0a:410f $c0
    ld   A, $01                                        ;; 0a:4110 $3e $01
    xor  A, [HL]                                       ;; 0a:4112 $ae
    ld   [HL], A                                       ;; 0a:4113 $77
    call call_0a_411c                                  ;; 0a:4114 $cd $1c $41
    ret  NZ                                            ;; 0a:4117 $c0
    ld   [wCD76], A                                    ;; 0a:4118 $ea $76 $cd
    ret                                                ;; 0a:411b $c9

call_0a_411c:
    bit  0, [HL]                                       ;; 0a:411c $cb $46
    jr   NZ, .jr_0a_412a                               ;; 0a:411e $20 $0a
    ld   A, [wCD79]                                    ;; 0a:4120 $fa $79 $cd
    ld   E, A                                          ;; 0a:4123 $5f
    ld   A, [wCD7A]                                    ;; 0a:4124 $fa $7a $cd
    ld   D, A                                          ;; 0a:4127 $57
    jr   .jr_0a_4132                                   ;; 0a:4128 $18 $08
.jr_0a_412a:
    ld   A, [wCD7B]                                    ;; 0a:412a $fa $7b $cd
    ld   E, A                                          ;; 0a:412d $5f
    ld   A, [wCD7C]                                    ;; 0a:412e $fa $7c $cd
    ld   D, A                                          ;; 0a:4131 $57
.jr_0a_4132:
    ld   A, D                                          ;; 0a:4132 $7a
    or   A, E                                          ;; 0a:4133 $b3
    ret                                                ;; 0a:4134 $c9

jp_0a_4135:
    ld   A, B                                          ;; 0a:4135 $78
    ld   [wCD75], A                                    ;; 0a:4136 $ea $75 $cd
    call call_0a_424f                                  ;; 0a:4139 $cd $4f $42
    ld   A, $00                                        ;; 0a:413c $3e $00
    ldh  [hFF8B], A                                    ;; 0a:413e $e0 $8b
    ld   A, $8d                                        ;; 0a:4140 $3e $8d
    ldh  [hFF8C], A                                    ;; 0a:4142 $e0 $8c
    ld   A, [wCD75]                                    ;; 0a:4144 $fa $75 $cd
    or   A, A                                          ;; 0a:4147 $b7
    jr   NZ, .jr_0a_416a                               ;; 0a:4148 $20 $20
    ld   HL, $8d00                                     ;; 0a:414a $21 $00 $8d
    ld   BC, $140                                      ;; 0a:414d $01 $40 $01
    ld   A, $ff                                        ;; 0a:4150 $3e $ff
    call memsetVRAM_                                   ;; 0a:4152 $cd $62 $01
    xor  A, A                                          ;; 0a:4155 $af
    ld   HL, wCD79                                     ;; 0a:4156 $21 $79 $cd
    ld   [HL+], A                                      ;; 0a:4159 $22
    ld   [HL+], A                                      ;; 0a:415a $22
    ld   [HL+], A                                      ;; 0a:415b $22
    ld   [HL+], A                                      ;; 0a:415c $22
    ld   [wCD78], A                                    ;; 0a:415d $ea $78 $cd
    ld   [wCD76], A                                    ;; 0a:4160 $ea $76 $cd
    ld   [wCD7D], A                                    ;; 0a:4163 $ea $7d $cd
    call call_0a_4052                                  ;; 0a:4166 $cd $52 $40
    ret                                                ;; 0a:4169 $c9
.jr_0a_416a:
    ld   L, A                                          ;; 0a:416a $6f
    ld   H, $00                                        ;; 0a:416b $26 $00
    add  HL, HL                                        ;; 0a:416d $29
    add  HL, HL                                        ;; 0a:416e $29
    add  HL, HL                                        ;; 0a:416f $29
    ld   DE, $432f                                     ;; 0a:4170 $11 $2f $43
    add  HL, DE                                        ;; 0a:4173 $19
    ld   B, $05                                        ;; 0a:4174 $06 $05
.jr_0a_4176:
    ld   A, [HL+]                                      ;; 0a:4176 $2a
    push HL                                            ;; 0a:4177 $e5
    ld   HL, data_0a_425e                              ;; 0a:4178 $21 $5e $42
    ld   DE, data_0a_43cb                              ;; 0a:417b $11 $cb $43
    cp   A, $30                                        ;; 0a:417e $fe $30
    jr   C, .jr_0a_418a                                ;; 0a:4180 $38 $08
    ld   HL, data_0a_4d9e                              ;; 0a:4182 $21 $9e $4d
    ld   DE, data_0a_447f                              ;; 0a:4185 $11 $7f $44
    sub  A, $30                                        ;; 0a:4188 $d6 $30
.jr_0a_418a:
    ld   C, A                                          ;; 0a:418a $4f
    ld   A, L                                          ;; 0a:418b $7d
    ldh  [hFFA7], A                                    ;; 0a:418c $e0 $a7
    ld   A, H                                          ;; 0a:418e $7c
    ldh  [hFFA8], A                                    ;; 0a:418f $e0 $a8
    ld   A, C                                          ;; 0a:4191 $79
    add  A, A                                          ;; 0a:4192 $87
    add  A, A                                          ;; 0a:4193 $87
    ld   L, A                                          ;; 0a:4194 $6f
    ld   H, $00                                        ;; 0a:4195 $26 $00
    add  HL, DE                                        ;; 0a:4197 $19
    ld   C, $04                                        ;; 0a:4198 $0e $04
.jr_0a_419a:
    push BC                                            ;; 0a:419a $c5
    ld   A, [HL+]                                      ;; 0a:419b $2a
    push HL                                            ;; 0a:419c $e5
    ld   L, A                                          ;; 0a:419d $6f
    ld   H, $00                                        ;; 0a:419e $26 $00
    add  HL, HL                                        ;; 0a:41a0 $29
    add  HL, HL                                        ;; 0a:41a1 $29
    add  HL, HL                                        ;; 0a:41a2 $29
    add  HL, HL                                        ;; 0a:41a3 $29
    ldh  A, [hFFA7]                                    ;; 0a:41a4 $f0 $a7
    ld   E, A                                          ;; 0a:41a6 $5f
    ldh  A, [hFFA8]                                    ;; 0a:41a7 $f0 $a8
    ld   D, A                                          ;; 0a:41a9 $57
    add  HL, DE                                        ;; 0a:41aa $19
    ldh  A, [hFF8B]                                    ;; 0a:41ab $f0 $8b
    ld   E, A                                          ;; 0a:41ad $5f
    ldh  A, [hFF8C]                                    ;; 0a:41ae $f0 $8c
    ld   D, A                                          ;; 0a:41b0 $57
    ld   BC, $10                                       ;; 0a:41b1 $01 $10 $00
    call memcpyVRAM_                                   ;; 0a:41b4 $cd $5f $01
    ld   A, E                                          ;; 0a:41b7 $7b
    ldh  [hFF8B], A                                    ;; 0a:41b8 $e0 $8b
    ld   A, D                                          ;; 0a:41ba $7a
    ldh  [hFF8C], A                                    ;; 0a:41bb $e0 $8c
    pop  HL                                            ;; 0a:41bd $e1
    pop  BC                                            ;; 0a:41be $c1
    dec  C                                             ;; 0a:41bf $0d
    jr   NZ, .jr_0a_419a                               ;; 0a:41c0 $20 $d8
    pop  HL                                            ;; 0a:41c2 $e1
    dec  B                                             ;; 0a:41c3 $05
    jr   NZ, .jr_0a_4176                               ;; 0a:41c4 $20 $b0
    xor  A, A                                          ;; 0a:41c6 $af
    ldh  [hFF8B], A                                    ;; 0a:41c7 $e0 $8b
    ld   DE, wCD79                                     ;; 0a:41c9 $11 $79 $cd
    ld   B, $02                                        ;; 0a:41cc $06 $02
.jr_0a_41ce:
    ld   A, [HL+]                                      ;; 0a:41ce $2a
    push HL                                            ;; 0a:41cf $e5
    push BC                                            ;; 0a:41d0 $c5
    or   A, A                                          ;; 0a:41d1 $b7
    jr   Z, .jr_0a_41e6                                ;; 0a:41d2 $28 $12
    ld   L, A                                          ;; 0a:41d4 $6f
    ld   H, $00                                        ;; 0a:41d5 $26 $00
    add  HL, HL                                        ;; 0a:41d7 $29
    ld   BC, data_0a_4539                              ;; 0a:41d8 $01 $39 $45
    add  HL, BC                                        ;; 0a:41db $09
    ld   C, [HL]                                       ;; 0a:41dc $4e
    inc  HL                                            ;; 0a:41dd $23
    ld   B, [HL]                                       ;; 0a:41de $46
    ldh  A, [hFF8B]                                    ;; 0a:41df $f0 $8b
    inc  A                                             ;; 0a:41e1 $3c
    ldh  [hFF8B], A                                    ;; 0a:41e2 $e0 $8b
    jr   .jr_0a_41e9                                   ;; 0a:41e4 $18 $03
.jr_0a_41e6:
    ld   BC, $00                                       ;; 0a:41e6 $01 $00 $00
.jr_0a_41e9:
    ld   A, C                                          ;; 0a:41e9 $79
    ld   [DE], A                                       ;; 0a:41ea $12
    inc  DE                                            ;; 0a:41eb $13
    ld   A, B                                          ;; 0a:41ec $78
    ld   [DE], A                                       ;; 0a:41ed $12
    inc  DE                                            ;; 0a:41ee $13
    pop  BC                                            ;; 0a:41ef $c1
    pop  HL                                            ;; 0a:41f0 $e1
    dec  B                                             ;; 0a:41f1 $05
    jr   NZ, .jr_0a_41ce                               ;; 0a:41f2 $20 $da
    ldh  A, [hFF8B]                                    ;; 0a:41f4 $f0 $8b
    cp   A, $02                                        ;; 0a:41f6 $fe $02
    ld   A, $00                                        ;; 0a:41f8 $3e $00
    jr   NZ, .jr_0a_41fe                               ;; 0a:41fa $20 $02
    ld   A, $01                                        ;; 0a:41fc $3e $01
.jr_0a_41fe:
    ld   [wCD76], A                                    ;; 0a:41fe $ea $76 $cd
    ret                                                ;; 0a:4201 $c9

jp_0a_4202:
    call call_0a_4241                                  ;; 0a:4202 $cd $41 $42
    call call_0a_40ff                                  ;; 0a:4205 $cd $ff $40
    call call_0a_4211                                  ;; 0a:4208 $cd $11 $42
    ld   B, $1e                                        ;; 0a:420b $06 $1e
    call call_00_01bf                                  ;; 0a:420d $cd $bf $01
    ret                                                ;; 0a:4210 $c9

call_0a_4211:
    call call_0a_4109                                  ;; 0a:4211 $cd $09 $41
    jr   Z, .jr_0a_423d                                ;; 0a:4214 $28 $27
    ld   L, E                                          ;; 0a:4216 $6b
    ld   H, D                                          ;; 0a:4217 $62
    ld   A, [wC2E0]                                    ;; 0a:4218 $fa $e0 $c2
    ld   E, A                                          ;; 0a:421b $5f
    ld   A, [wC2E1]                                    ;; 0a:421c $fa $e1 $c2
    ld   D, A                                          ;; 0a:421f $57
    ld   A, [wCD62]                                    ;; 0a:4220 $fa $62 $cd
    sub  A, E                                          ;; 0a:4223 $93
    ldh  [hFF9A], A                                    ;; 0a:4224 $e0 $9a
    ld   A, [wCD63]                                    ;; 0a:4226 $fa $63 $cd
    ld   B, A                                          ;; 0a:4229 $47
    ld   A, [wC152]                                    ;; 0a:422a $fa $52 $c1
    and  A, $07                                        ;; 0a:422d $e6 $07
    cpl                                                ;; 0a:422f $2f
    inc  A                                             ;; 0a:4230 $3c
    add  A, B                                          ;; 0a:4231 $80
    sub  A, D                                          ;; 0a:4232 $92
    ldh  [hFF9B], A                                    ;; 0a:4233 $e0 $9b
    xor  A, A                                          ;; 0a:4235 $af
    ldh  [hFFAB], A                                    ;; 0a:4236 $e0 $ab
    ldh  [hFF9E], A                                    ;; 0a:4238 $e0 $9e
    call call_0a_4069                                  ;; 0a:423a $cd $69 $40
.jr_0a_423d:
    call call_0a_4040                                  ;; 0a:423d $cd $40 $40
    ret                                                ;; 0a:4240 $c9

call_0a_4241:
    ld   A, $d5                                        ;; 0a:4241 $3e $d5
    ld   [wLevelDecodePointerLow], A                   ;; 0a:4243 $ea $db $d2
    ld   A, $42                                        ;; 0a:4246 $3e $42
    ld   [wLevelDecodePointerHigh], A                  ;; 0a:4248 $ea $dc $d2

jp_0a_424b:
    ld   B, $c4                                        ;; 0a:424b $06 $c4
    jr   call_0a_4265                                  ;; 0a:424d $18 $16

call_0a_424f:
    ld   B, $ff                                        ;; 0a:424f $06 $ff
    ld   A, $e9                                        ;; 0a:4251 $3e $e9
    ld   [wLevelDecodePointerLow], A                   ;; 0a:4253 $ea $db $d2
    ld   A, $42                                        ;; 0a:4256 $3e $42
    ld   [wLevelDecodePointerHigh], A                  ;; 0a:4258 $ea $dc $d2
    call call_0a_4265                                  ;; 0a:425b $cd $65 $42

data_0a_425e:
    xor  A, A                                          ;; 0a:425e $af
    ld   [wCD7D], A                                    ;; 0a:425f $ea $7d $cd
    jp   call_0a_4052                                  ;; 0a:4262 $c3 $52 $40

call_0a_4265:
    ldh  A, [rLY]                                      ;; 0a:4265 $f0 $44
    cp   A, $40                                        ;; 0a:4267 $fe $40
    jr   NZ, call_0a_4265                              ;; 0a:4269 $20 $fa
    ld   A, B                                          ;; 0a:426b $78
    ldh  [rOBP0], A                                    ;; 0a:426c $e0 $48
    ld   A, [wCD62]                                    ;; 0a:426e $fa $62 $cd
    srl  A                                             ;; 0a:4271 $cb $3f
    srl  A                                             ;; 0a:4273 $cb $3f
    srl  A                                             ;; 0a:4275 $cb $3f
    ld   E, A                                          ;; 0a:4277 $5f
    ld   A, [wCD63]                                    ;; 0a:4278 $fa $63 $cd
    srl  A                                             ;; 0a:427b $cb $3f
    srl  A                                             ;; 0a:427d $cb $3f
    srl  A                                             ;; 0a:427f $cb $3f
    ld   D, A                                          ;; 0a:4281 $57
.jr_0a_4282:
    ldh  A, [rLY]                                      ;; 0a:4282 $f0 $44
    cp   A, $28                                        ;; 0a:4284 $fe $28
    jr   NZ, .jr_0a_4282                               ;; 0a:4286 $20 $fa
    ld   BC, $504                                      ;; 0a:4288 $01 $04 $05
.jr_0a_428b:
    push BC                                            ;; 0a:428b $c5
    push DE                                            ;; 0a:428c $d5
    call call_00_02e8                                  ;; 0a:428d $cd $e8 $02
    ld   A, [wLevelDecodePointerLow]                   ;; 0a:4290 $fa $db $d2
    ld   L, A                                          ;; 0a:4293 $6f
    ld   A, [wLevelDecodePointerHigh]                  ;; 0a:4294 $fa $dc $d2
    ld   H, A                                          ;; 0a:4297 $67
    inc  HL                                            ;; 0a:4298 $23
    inc  HL                                            ;; 0a:4299 $23
    inc  HL                                            ;; 0a:429a $23
    inc  HL                                            ;; 0a:429b $23
    ld   A, L                                          ;; 0a:429c $7d
    ld   [wLevelDecodePointerLow], A                   ;; 0a:429d $ea $db $d2
    ld   A, H                                          ;; 0a:42a0 $7c
    ld   [wLevelDecodePointerHigh], A                  ;; 0a:42a1 $ea $dc $d2
    call call_00_0168                                  ;; 0a:42a4 $cd $68 $01
    call call_0a_4028                                  ;; 0a:42a7 $cd $28 $40
    pop  DE                                            ;; 0a:42aa $d1
    pop  BC                                            ;; 0a:42ab $c1
    inc  D                                             ;; 0a:42ac $14
    dec  B                                             ;; 0a:42ad $05
    jr   NZ, .jr_0a_428b                               ;; 0a:42ae $20 $db
    ret                                                ;; 0a:42b0 $c9
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 0a:42b1 ........
    db   $03, $88, $89, $03, $03, $03, $03, $03        ;; 0a:42b9 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 0a:42c1 ........
    db   $03, $03, $03, $03, $8a, $8a, $8a, $8a        ;; 0a:42c9 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 0a:42d1 ........
    db   $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7        ;; 0a:42d9 ........
    db   $d8, $d9, $da, $db, $dc, $dd, $de, $df        ;; 0a:42e1 ........
    db   $e0, $e1, $e2, $e3, $03, $03, $03, $03        ;; 0a:42e9 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 0a:42f1 ........
    db   $03, $03, $03, $03, $03, $03, $03, $03        ;; 0a:42f9 ........
    db   $86, $86, $86, $86, $87, $87, $87, $87        ;; 0a:4301 ????????
    db   $86, $86, $86, $86, $87, $87, $87, $87        ;; 0a:4309 ????????
    db   $86, $86, $86, $86                            ;; 0a:4311 ????

data_0a_4315:
    dw   $42ad                                         ;; 0a:4315 wW
    dw   $42c1                                         ;; 0a:4317 wW
    db   $fd, $42                                      ;; 0a:4319 ??

jp_0a_431b:
    ld   E, B                                          ;; 0a:431b $58
    ld   D, $00                                        ;; 0a:431c $16 $00
    ld   HL, data_0a_4315                              ;; 0a:431e $21 $15 $43
    add  HL, DE                                        ;; 0a:4321 $19
    add  HL, DE                                        ;; 0a:4322 $19
    ld   A, [HL+]                                      ;; 0a:4323 $2a
    ld   [wLevelDecodePointerLow], A                   ;; 0a:4324 $ea $db $d2
    ld   A, [HL+]                                      ;; 0a:4327 $2a
    ld   [wLevelDecodePointerHigh], A                  ;; 0a:4328 $ea $dc $d2
    jp   jp_0a_424b                                    ;; 0a:432b $c3 $4b $42

jp_0a_432e:
    ld   HL, data_0a_5cde                              ;; 0a:432e $21 $de $5c
    ld   BC, $190                                      ;; 0a:4331 $01 $90 $01
    jp   memcpyVRAM_                                   ;; 0a:4334 $c3 $5f $01
    db   $01, $02, $03, $04, $05, $01, $02, $00        ;; 0a:4337 ????????
    db   $06, $07, $08, $09, $0a, $03, $04, $00        ;; 0a:433f ????????
    db   $0b, $0c, $0d, $0e, $0f, $05, $06, $00        ;; 0a:4347 ????????
    db   $10, $11, $12, $13, $14, $07, $08, $00        ;; 0a:434f .......?
    db   $15, $16, $17, $18, $19, $09, $0a, $00        ;; 0a:4357 ????????
    db   $1a, $1b, $1c, $1d, $1e, $0b, $0c, $00        ;; 0a:435f ????????
    db   $1f, $20, $21, $22, $23, $0d, $0e, $00        ;; 0a:4367 ????????
    db   $24, $25, $26, $27, $28, $0f, $10, $00        ;; 0a:436f ????????
    db   $29, $2a, $2b, $2c, $2d, $11, $12, $00        ;; 0a:4377 ????????
    db   $31, $32, $33, $34, $35, $13, $14, $00        ;; 0a:437f ????????
    db   $36, $37, $38, $39, $3a, $15, $16, $00        ;; 0a:4387 ????????
    db   $3b, $3c, $3d, $3e, $3f, $21, $17, $00        ;; 0a:438f ????????
    db   $40, $41, $42, $43, $44, $21, $18, $00        ;; 0a:4397 ????????
    db   $45, $46, $47, $48, $49, $00, $00, $00        ;; 0a:439f ????????
    db   $4a, $4b, $4c, $4d, $4e, $19, $1a, $00        ;; 0a:43a7 ????????
    db   $4f, $50, $51, $52, $53, $1b, $1c, $00        ;; 0a:43af ????????
    db   $54, $55, $56, $57, $58, $1d, $1e, $00        ;; 0a:43b7 ????????
    db   $59, $5a, $5b, $5c, $5d, $1f, $20, $00        ;; 0a:43bf ????????
    db   $36, $37, $38, $39                            ;; 0a:43c7 ????

data_0a_43cb:
    db   $3a, $22, $23, $00, $40, $41, $42, $43        ;; 0a:43cb ????????
    db   $44, $45, $46, $47, $48, $49, $4a, $4b        ;; 0a:43d3 ????????
    db   $4c, $4d, $4e, $4f, $50, $51, $52, $53        ;; 0a:43db ????????
    db   $54, $55, $56, $57, $58, $59, $5a, $5b        ;; 0a:43e3 ????????
    db   $5c, $5d, $5e, $5f, $60, $61, $62, $63        ;; 0a:43eb ????????
    db   $64, $65, $66, $67, $68, $69, $6a, $6b        ;; 0a:43f3 ????????
    db   $6c, $6d, $6e, $6f, $70, $71, $72, $73        ;; 0a:43fb ????????
    db   $74, $75, $76, $77, $78, $79, $7a, $7b        ;; 0a:4403 ????????
    db   $7c, $7d, $7e, $7f, $80, $81, $82, $83        ;; 0a:440b wwwwwwww
    db   $84, $85, $86, $87, $88, $89, $8a, $8b        ;; 0a:4413 wwwwwwww
    db   $8c, $8d, $8e, $8f, $90, $91, $92, $93        ;; 0a:441b wwww????
    db   $94, $95, $96, $97, $98, $99, $9a, $9b        ;; 0a:4423 ????????
    db   $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3        ;; 0a:442b ????????
    db   $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab        ;; 0a:4433 ????????
    db   $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3        ;; 0a:443b ????????
    db   $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb        ;; 0a:4443 ????????
    db   $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3        ;; 0a:444b ????????
    db   $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb        ;; 0a:4453 ????????
    db   $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3        ;; 0a:445b ????????
    db   $d4, $d5, $d6, $d7, $d8, $d9, $da, $db        ;; 0a:4463 ????????
    db   $dc, $dd, $de, $df, $e0, $e1, $e2, $e3        ;; 0a:446b ????????
    db   $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb        ;; 0a:4473 ????????
    db   $ec, $ed, $ee, $ef                            ;; 0a:447b ????

data_0a_447f:
    db   $f0, $f1, $f2, $f3, $40, $41, $42, $43        ;; 0a:447f ????????
    db   $44, $45, $46, $47, $48, $49, $4a, $4b        ;; 0a:4487 ????????
    db   $4c, $4d, $4e, $4f, $50, $51, $52, $53        ;; 0a:448f ????????
    db   $54, $55, $56, $57, $58, $59, $5a, $5b        ;; 0a:4497 ????????
    db   $5c, $5d, $5e, $5f, $60, $61, $62, $63        ;; 0a:449f ????????
    db   $64, $65, $66, $67, $68, $69, $6a, $6b        ;; 0a:44a7 ????????
    db   $6c, $6d, $6e, $6f, $70, $71, $72, $73        ;; 0a:44af ????????
    db   $74, $75, $76, $77, $78, $79, $7a, $7b        ;; 0a:44b7 ????????
    db   $7c, $7d, $7e, $7f, $80, $81, $82, $83        ;; 0a:44bf ????????
    db   $84, $85, $86, $87, $88, $89, $8a, $8b        ;; 0a:44c7 ????????
    db   $8c, $8d, $8e, $8f, $90, $91, $92, $93        ;; 0a:44cf ????????
    db   $94, $95, $96, $97, $98, $99, $9a, $9b        ;; 0a:44d7 ????????
    db   $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3        ;; 0a:44df ????????
    db   $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab        ;; 0a:44e7 ????????
    db   $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3        ;; 0a:44ef ????????
    db   $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb        ;; 0a:44f7 ????????
    db   $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3        ;; 0a:44ff ????????
    db   $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb        ;; 0a:4507 ????????
    db   $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3        ;; 0a:450f ????????
    db   $d4, $d5, $d6, $d7, $d8, $d9, $da, $db        ;; 0a:4517 ????????
    db   $dc, $dd, $de, $df, $e0, $e1, $e2, $e3        ;; 0a:451f ????????
    db   $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb        ;; 0a:4527 ????????
    db   $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3        ;; 0a:452f ????????
    db   $03, $03                                      ;; 0a:4537 ??

data_0a_4539:
    db   $03, $03, $81, $45, $86, $45, $8b, $45        ;; 0a:4539 ????????
    db   $90, $45, $95, $45, $9a, $45                  ;; 0a:4541 ??????
    dw   .data_0a_459f                                 ;; 0a:4547 pP
    dw   .data_0a_45a4                                 ;; 0a:4549 pP
    db   $a9, $45, $ae, $45, $b3, $45, $b8, $45        ;; 0a:454b ????????
    db   $bd, $45, $c2, $45, $c7, $45, $cc, $45        ;; 0a:4553 ????????
    db   $d1, $45, $d6, $45, $db, $45, $e0, $45        ;; 0a:455b ????????
    db   $e5, $45, $ea, $45, $ef, $45, $f7, $45        ;; 0a:4563 ????????
    db   $fd, $45, $02, $46, $07, $46, $0c, $46        ;; 0a:456b ????????
    db   $11, $46, $16, $46, $1b, $46, $20, $46        ;; 0a:4573 ????????
    db   $25, $46, $2a, $46, $44, $46, $0f, $1a        ;; 0a:457b ????????
    db   $11, $07, $80, $0f, $1a, $11, $08, $80        ;; 0a:4583 ????????
    db   $0e, $16, $11, $10, $80, $0e, $16, $11        ;; 0a:458b ????????
    db   $11, $80, $0c, $18, $11, $05, $80, $0c        ;; 0a:4593 ????????
    db   $18, $11, $06, $80                            ;; 0a:459b ????
.data_0a_459f:
    db   $0e, $18, $11, $07, $80                       ;; 0a:459f ??...
.data_0a_45a4:
    db   $0e, $18, $11, $08, $80, $08, $18, $11        ;; 0a:45a4 ??...???
    db   $09, $80, $08, $18, $11, $0a, $80, $0d        ;; 0a:45ac ????????
    db   $15, $11, $03, $80, $0d, $15, $11, $04        ;; 0a:45b4 ????????
    db   $80, $0d, $15, $11, $05, $80, $0d, $15        ;; 0a:45bc ????????
    db   $11, $06, $80, $0b, $16, $11, $05, $80        ;; 0a:45c4 ????????
    db   $0b, $16, $11, $06, $80, $0c, $15, $11        ;; 0a:45cc ????????
    db   $10, $80, $0c, $15, $11, $11, $80, $0b        ;; 0a:45d4 ????????
    db   $17, $11, $05, $80, $0b, $17, $11, $06        ;; 0a:45dc ????????
    db   $80, $0b, $1a, $11, $87, $80, $0b, $1a        ;; 0a:45e4 ????????
    db   $11, $88, $80, $08, $0c, $22, $0b, $0c        ;; 0a:45ec ????????
    db   $0d, $0e, $80, $08, $10, $21, $0f, $8f        ;; 0a:45f4 ????????
    db   $80, $0d, $1a, $11, $05, $80, $0d, $1a        ;; 0a:45fc ????????
    db   $11, $06, $80, $0e, $16, $11, $03, $80        ;; 0a:4604 ????????
    db   $0e, $16, $11, $04, $80, $0e, $1e, $11        ;; 0a:460c ????????
    db   $07, $80, $0e, $1e, $11, $08, $80, $0d        ;; 0a:4614 ????????
    db   $18, $11, $01, $80, $0d, $18, $11, $02        ;; 0a:461c ????????
    db   $80, $00, $00, $11, $00, $80, $0b, $1a        ;; 0a:4624 ????????
    db   $11, $87, $f5, $f6, $16, $f5, $fe, $17        ;; 0a:462c ????????
    db   $f5, $06, $12, $fd, $06, $13, $05, $06        ;; 0a:4634 ????????
    db   $14, $0d, $06, $15, $05, $f6, $18, $80        ;; 0a:463c ????????
    db   $0b, $1a, $11, $88, $f5, $f6, $16, $f5        ;; 0a:4644 ????????
    db   $fe, $17, $f5, $06, $12, $fd, $06, $13        ;; 0a:464c ????????
    db   $05, $06, $14, $0d, $06, $15, $05, $f6        ;; 0a:4654 ????????
    db   $19, $80, $27, $e3, $47, $c1, $43, $c0        ;; 0a:465c ????????
    db   $20, $e0, $10, $f0, $20, $e0, $40, $c0        ;; 0a:4664 ????????
    db   $81, $80, $cf, $c1, $9f, $81, $9f, $80        ;; 0a:466c ????????
    db   $9b, $08, $33, $10, $67, $20, $c7, $40        ;; 0a:4674 ????????
    db   $87, $80, $ff, $81, $ff, $01, $ff, $00        ;; 0a:467c ????????
    db   $ff, $00, $ff, $00, $ff, $1f, $b4, $98        ;; 0a:4684 ????????
    db   $9f, $8f, $f9, $87, $f9, $07, $f3, $0f        ;; 0a:468c ????????
    db   $f3, $0f, $f7, $0f, $f9, $f9, $07, $01        ;; 0a:4694 ????????
    db   $ff, $c1, $03, $00, $07, $01, $0f, $01        ;; 0a:469c ????????
    db   $1f, $01, $1f, $03, $1f, $03, $1f, $03        ;; 0a:46a4 ????????
    db   $1f, $03, $8f, $81, $0f, $01, $0f, $01        ;; 0a:46ac ????????
    db   $0f, $01, $0f, $01, $07, $01, $87, $81        ;; 0a:46b4 ????????
    db   $c7, $c0, $db, $cc, $bb, $ec, $7d, $96        ;; 0a:46bc ????????
    db   $7f, $8f, $fe, $ff, $7e, $87, $0f, $ff        ;; 0a:46c4 ????????
    db   $ff, $ff, $ff, $21, $fd, $23, $fb, $47        ;; 0a:46cc ????????
    db   $e7, $9f, $1f, $ff, $fd, $fc, $fa, $f9        ;; 0a:46d4 ????????
    db   $f5, $f3, $9f, $83, $9f, $83, $cf, $c3        ;; 0a:46dc ????????
    db   $cf, $c1, $a7, $e1, $d3, $b0, $e9, $58        ;; 0a:46e4 ????????
    db   $ee, $5e, $e3, $e0, $f3, $f0, $f9, $f8        ;; 0a:46ec ????????
    db   $dd, $fc, $ae, $de, $f7, $8f, $e7, $83        ;; 0a:46f4 ????????
    db   $c3, $43, $ff, $ff, $ff, $ff, $f3, $fb        ;; 0a:46fc ????????
    db   $e1, $64, $d7, $6f, $6f, $40, $c0, $c0        ;; 0a:4704 ????????
    db   $40, $40, $f7, $f3, $f7, $f3, $d6, $53        ;; 0a:470c ????????
    db   $b3, $b2, $f5, $d1, $f9, $10, $fa, $19        ;; 0a:4714 ????????
    db   $7c, $1b, $ff, $ab, $ff, $db, $ff, $cb        ;; 0a:471c ????????
    db   $ff, $42, $ff, $02, $ff, $07, $ff, $fb        ;; 0a:4724 ????????
    db   $7b, $17, $67, $23, $ff, $f1, $ff, $60        ;; 0a:472c ????????
    db   $fe, $70, $ff, $70, $ff, $b8, $ff, $fc        ;; 0a:4734 ????????
    db   $ff, $7e, $00, $00, $80, $80, $00, $00        ;; 0a:473c ????????
    db   $00, $00, $01, $00, $03, $01, $c6, $03        ;; 0a:4744 ????????
    db   $9d, $06, $79, $3f, $7e, $3f, $fd, $7e        ;; 0a:474c ????????
    db   $fb, $7c, $ff, $e0, $7f, $fc, $77, $7b        ;; 0a:4754 ????????
    db   $7f, $7d, $b7, $6e, $6f, $df, $de, $bc        ;; 0a:475c ????????
    db   $bd, $78, $fb, $70, $7e, $ff, $fb, $e1        ;; 0a:4764 ????????
    db   $f2, $c1, $7f, $3f, $bf, $ef, $ef, $77        ;; 0a:476c ????????
    db   $a7, $78, $33, $ff, $7c, $fc, $f4, $f8        ;; 0a:4774 ????????
    db   $e8, $f0, $fa, $1c, $f5, $f9, $fe, $fe        ;; 0a:477c ????????
    db   $81, $00, $ff, $f8, $b7, $0e, $59, $07        ;; 0a:4784 ????????
    db   $dc, $03, $f6, $ee, $4b, $47, $ef, $4f        ;; 0a:478c ????????
    db   $f5, $73, $e2, $61, $f7, $e7, $fa, $f9        ;; 0a:4794 ????????
    db   $f9, $f0, $fc, $00, $e0, $00, $80, $00        ;; 0a:479c ????????
    db   $20, $00, $e0, $20, $c1, $40, $83, $81        ;; 0a:47a4 ????????
    db   $07, $02, $07, $00, $03, $00, $3f, $00        ;; 0a:47ac ????????
    db   $0f, $00, $c3, $40, $c7, $80, $8f, $01        ;; 0a:47b4 ????????
    db   $1f, $03, $fe, $01, $ff, $00, $ff, $00        ;; 0a:47bc ????????
    db   $ff, $00, $ff, $00, $ff, $1c, $ff, $aa        ;; 0a:47c4 ????????
    db   $ff, $ff, $00, $ff, $e0, $1f, $f8, $07        ;; 0a:47cc ????????
    db   $fc, $43, $f2, $2d, $f8, $17, $fc, $13        ;; 0a:47d4 ????????
    db   $fe, $09, $0a, $06, $1e, $04, $1c, $04        ;; 0a:47dc ????????
    db   $3c, $04, $3e, $04, $3e, $02, $3f, $02        ;; 0a:47e4 ????????
    db   $1f, $03, $3f, $02, $3e, $07, $7f, $07        ;; 0a:47ec ????????
    db   $7d, $06, $7f, $04, $3f, $07, $3f, $03        ;; 0a:47f4 ????????
    db   $9f, $02, $5f, $3f, $5f, $bf, $ff, $ff        ;; 0a:47fc ????????
    db   $ff, $00, $ff, $ff, $ff, $f8, $ff, $7f        ;; 0a:4804 ????????
    db   $cb, $ca, $3e, $09, $9e, $85, $9e, $85        ;; 0a:480c ????????
    db   $cf, $47, $cf, $ce, $ee, $4e, $df, $ce        ;; 0a:4814 ????????
    db   $da, $db, $1f, $01, $8f, $81, $cf, $41        ;; 0a:481c ????????
    db   $e7, $61, $f3, $70, $f9, $68, $ec, $64        ;; 0a:4824 ????????
    db   $ef, $23, $cf, $82, $e7, $c2, $f3, $e1        ;; 0a:482c ????????
    db   $f9, $f9, $df, $ef, $ff, $cc, $ff, $47        ;; 0a:4834 ????????
    db   $7f, $23, $81, $85, $ee, $1f, $8d, $02        ;; 0a:483c ????????
    db   $00, $02, $80, $82, $00, $02, $00, $04        ;; 0a:4844 ????????
    db   $00, $04, $bf, $fa, $fe, $3f, $f6, $1f        ;; 0a:484c ????????
    db   $ef, $26, $6d, $24, $5b, $49, $5f, $4b        ;; 0a:4854 ????????
    db   $be, $9f, $77, $33, $b7, $b1, $fb, $69        ;; 0a:485c ????????
    db   $ff, $25, $ff, $03, $ff, $01, $ff, $df        ;; 0a:4864 ????????
    db   $b7, $63, $fe, $f0, $bc, $60, $fe, $20        ;; 0a:486c ????????
    db   $df, $31, $ff, $11, $ee, $1a, $fc, $cc        ;; 0a:4874 ????????
    db   $fe, $fc, $00, $00, $01, $01, $00, $00        ;; 0a:487c ????????
    db   $c1, $c2, $43, $41, $6f, $2b, $7f, $3f        ;; 0a:4884 ????????
    db   $fe, $17, $fb, $dc, $fa, $7c, $bd, $f9        ;; 0a:488c ????????
    db   $dd, $f9, $bb, $da, $bb, $da, $5f, $8e        ;; 0a:4894 ????????
    db   $9f, $0e, $65, $c3, $eb, $e7, $fe, $fe        ;; 0a:489c ????????
    db   $cc, $8c, $96, $0e, $3f, $0f, $ee, $fe        ;; 0a:48a4 ????????
    db   $fc, $fc, $ef, $dd, $5f, $3f, $3f, $3f        ;; 0a:48ac ????????
    db   $00, $00, $00, $00, $e3, $e0, $7f, $7f        ;; 0a:48b4 ????????
    db   $ff, $1f, $fd, $2e, $fb, $7c, $ff, $ff        ;; 0a:48bc ????????
    db   $00, $00, $3f, $00, $77, $f8, $e7, $e0        ;; 0a:48c4 ????????
    db   $8e, $81, $1f, $0e, $3b, $3f, $fd, $c3        ;; 0a:48cc ????????
    db   $79, $07, $f3, $0f, $ef, $1f, $db, $39        ;; 0a:48d4 ????????
    db   $24, $e3, $fd, $08, $f2, $10, $f5, $20        ;; 0a:48dc ????????
    db   $cb, $40, $d7, $43, $ec, $44, $df, $4b        ;; 0a:48e4 ????????
    db   $ff, $2f, $bf, $bd, $df, $5a, $ef, $24        ;; 0a:48ec ????????
    db   $ff, $ff, $1f, $00, $ff, $ff, $ff, $ff        ;; 0a:48f4 ????????
    db   $ff, $ff, $ff, $00, $ff, $00, $ff, $00        ;; 0a:48fc ????????
    db   $ff, $e0, $ff, $18, $ff, $e6, $ff, $f9        ;; 0a:4904 ????????
    db   $ff, $fe, $bf, $5c, $43, $be, $a9, $57        ;; 0a:490c ????????
    db   $d0, $2f, $e8, $17, $f4, $0b, $e8, $17        ;; 0a:4914 ????????
    db   $f4, $8b, $ff, $2e, $ff, $1d, $ff, $1f        ;; 0a:491c ????????
    db   $ff, $0f, $fc, $1f, $f9, $3e, $ff, $7f        ;; 0a:4924 ????????
    db   $c0, $c0, $1f, $00, $ff, $ff, $a5, $c3        ;; 0a:492c ????????
    db   $4d, $83, $c9, $07, $99, $07, $fd, $ff        ;; 0a:4934 ????????
    db   $3f, $03, $ff, $7f, $e7, $9f, $f9, $ff        ;; 0a:493c ????????
    db   $fe, $ff, $ff, $ff, $fd, $ff, $fb, $ff        ;; 0a:4944 ????????
    db   $f7, $cf, $28, $d7, $b4, $eb, $d8, $f7        ;; 0a:494c ????????
    db   $f4, $fb, $f8, $ff, $f8, $ff, $fc, $ef        ;; 0a:4954 ????????
    db   $ec, $e7, $ff, $bf, $ff, $73, $ff, $03        ;; 0a:495c ????????
    db   $ff, $03, $ff, $01, $ff, $01, $ff, $01        ;; 0a:4964 ????????
    db   $ff, $01, $ff, $fc, $ff, $ff, $ff, $f8        ;; 0a:496c ????????
    db   $fa, $f8, $f4, $f0, $d4, $f0, $b8, $d0        ;; 0a:4974 ????????
    db   $fc, $9c, $ff, $3f, $cd, $d5, $c1, $48        ;; 0a:497c ????????
    db   $7f, $00, $0f, $01, $0f, $02, $03, $02        ;; 0a:4984 ????????
    db   $e2, $e2, $fd, $f7, $ff, $f7, $df, $d6        ;; 0a:498c ????????
    db   $2f, $26, $0f, $04, $7f, $2c, $7f, $3c        ;; 0a:4994 ????????
    db   $7f, $38, $ff, $00, $ff, $00, $ff, $00        ;; 0a:499c ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:49a4 ????????
    db   $ff, $00, $fc, $a4, $f0, $a0, $f0, $e0        ;; 0a:49ac ????????
    db   $f8, $e0, $fc, $60, $fe, $60, $fc, $60        ;; 0a:49b4 ????????
    db   $fe, $e0, $30, $10, $18, $08, $18, $08        ;; 0a:49bc ????????
    db   $09, $08, $01, $00, $03, $01, $07, $02        ;; 0a:49c4 ????????
    db   $3f, $0d, $7f, $78, $ff, $50, $ff, $50        ;; 0a:49cc ????????
    db   $df, $cc, $db, $ce, $d7, $de, $bf, $af        ;; 0a:49d4 ????????
    db   $7b, $5f, $3f, $ff, $c3, $c3, $3d, $03        ;; 0a:49dc ????????
    db   $79, $07, $e1, $1f, $c3, $3f, $83, $7f        ;; 0a:49e4 ????????
    db   $03, $ff, $ff, $d0, $af, $af, $97, $97        ;; 0a:49ec ????????
    db   $9f, $8b, $b7, $8d, $f7, $cd, $e7, $dd        ;; 0a:49f4 ????????
    db   $e7, $fd, $f7, $3b, $ee, $f6, $f9, $f9        ;; 0a:49fc ????????
    db   $e7, $e7, $b8, $98, $60, $20, $c0, $40        ;; 0a:4a04 ????????
    db   $c3, $40, $f2, $be, $f4, $4c, $ad, $9c        ;; 0a:4a0c ????????
    db   $2b, $18, $7a, $19, $f6, $11, $fc, $33        ;; 0a:4a14 ????????
    db   $f8, $77                                      ;; 0a:4a1c ??
    dw   `11111111                                     ;; 0a:4a1e $ff $00
    dw   `11111111                                     ;; 0a:4a20 $ff $00
    dw   `11111113                                     ;; 0a:4a22 $ff $01
    dw   `11111131                                     ;; 0a:4a24 $ff $02
    dw   `11111331                                     ;; 0a:4a26 $ff $06
    dw   `11113331                                     ;; 0a:4a28 $ff $0e
    dw   `11130331                                     ;; 0a:4a2a $f7 $16
    dw   `11130331                                     ;; 0a:4a2c $f7 $16

    dw   `13110000                                     ;; 0a:4a2e $f0 $40
    dw   `31100101                                     ;; 0a:4a30 $e5 $80
    dw   `11000101                                     ;; 0a:4a32 $c5 $00
    dw   `10001011                                     ;; 0a:4a34 $8b $00
    dw   `10001011                                     ;; 0a:4a36 $8b $00
    dw   `10001011                                     ;; 0a:4a38 $8b $00
    dw   `10001011                                     ;; 0a:4a3a $8b $00
    dw   `10001011                                     ;; 0a:4a3c $8b $00

    dw   `11112231                                     ;; 0a:4a3e $f3 $0e
    dw   `11111213                                     ;; 0a:4a40 $fb $05
    dw   `11111221                                     ;; 0a:4a42 $f9 $06
    dw   `11111122                                     ;; 0a:4a44 $fc $03
    dw   `11111112                                     ;; 0a:4a46 $fe $01
    dw   `11111112                                     ;; 0a:4a48 $fe $01
    dw   `11111112                                     ;; 0a:4a4a $fe $01
    dw   `11111112                                     ;; 0a:4a4c $fe $01

    dw   `11111111                                     ;; 0a:4a4e $ff $00
    dw   `11111111                                     ;; 0a:4a50 $ff $00
    dw   `31111111                                     ;; 0a:4a52 $ff $80
    dw   `13111111                                     ;; 0a:4a54 $ff $40
    dw   `13311111                                     ;; 0a:4a56 $ff $60
    dw   `13331111                                     ;; 0a:4a58 $ff $70
    dw   `13313111                                     ;; 0a:4a5a $ff $68
    dw   `13313111                                     ;; 0a:4a5c $ff $68

    dw   `11301331                                     ;; 0a:4a5e $ef $26
    dw   `11312333                                     ;; 0a:4a60 $f7 $2f
    dw   `13023333                                     ;; 0a:4a62 $cf $5f
    dw   `13133333                                     ;; 0a:4a64 $ff $5f
    dw   `13321333                                     ;; 0a:4a66 $ef $77
    dw   `33211133                                     ;; 0a:4a68 $df $e3
    dw   `33311033                                     ;; 0a:4a6a $fb $e3
    dw   `32330133                                     ;; 0a:4a6c $b7 $f3

    dw   `10001011                                     ;; 0a:4a6e $8b $00
    dw   `10001011                                     ;; 0a:4a70 $8b $00
    dw   `10001033                                     ;; 0a:4a72 $8b $03
    dw   `11001300                                     ;; 0a:4a74 $cc $04
    dw   `31003033                                     ;; 0a:4a76 $cb $8b
    dw   `31100303                                     ;; 0a:4a78 $e5 $85
    dw   `33110031                                     ;; 0a:4a7a $f3 $c2
    dw   `33311003                                     ;; 0a:4a7c $f9 $e1

    dw   `11111122                                     ;; 0a:4a7e $fc $03
    dw   `11111121                                     ;; 0a:4a80 $fd $02
    dw   `33111121                                     ;; 0a:4a82 $fd $c2
    dw   `11311221                                     ;; 0a:4a84 $f9 $26
    dw   `33131213                                     ;; 0a:4a86 $fb $d5
    dw   `31312213                                     ;; 0a:4a88 $f3 $ad
    dw   `13122133                                     ;; 0a:4a8a $e7 $5b
    dw   `31211333                                     ;; 0a:4a8c $df $a7

    dw   `13311311                                     ;; 0a:4a8e $ff $64
    dw   `33311311                                     ;; 0a:4a90 $ff $e4
    dw   `33332131                                     ;; 0a:4a92 $f7 $fa
    dw   `33333231                                     ;; 0a:4a94 $fb $fe
    dw   `33312331                                     ;; 0a:4a96 $f7 $ee
    dw   `33111233                                     ;; 0a:4a98 $fb $c7
    dw   `33011333                                     ;; 0a:4a9a $df $c7
    dw   `33103323                                     ;; 0a:4a9c $ed $cf

    dw   `31331033                                     ;; 0a:4a9e $fb $b3
    dw   `30330033                                     ;; 0a:4aa0 $b3 $b3
    dw   `30330033                                     ;; 0a:4aa2 $b3 $b3
    dw   `31330033                                     ;; 0a:4aa4 $f3 $b3
    dw   `32130033                                     ;; 0a:4aa6 $b3 $d3
    dw   `33230033                                     ;; 0a:4aa8 $d3 $f3
    dw   `13331032                                     ;; 0a:4aaa $fa $73
    dw   `13311131                                     ;; 0a:4aac $ff $62

    dw   `33333100                                     ;; 0a:4aae $fc $f8
    dw   `33333333                                     ;; 0a:4ab0 $ff $ff
    dw   `30213033                                     ;; 0a:4ab2 $9b $ab
    dw   `23020133                                     ;; 0a:4ab4 $47 $d3
    dw   `31111133                                     ;; 0a:4ab6 $ff $83
    dw   `31000133                                     ;; 0a:4ab8 $c7 $83
    dw   `31000113                                     ;; 0a:4aba $c7 $81
    dw   `33001113                                     ;; 0a:4abc $cf $c1

    dw   `01133333                                     ;; 0a:4abe $7f $1f

    db   $ff, $ff, $cd, $d5                            ;; 0a:4ac0 ....
    dw   `01102033                                     ;; 0a:4ac4 $63 $0b
    dw   `01111111                                     ;; 0a:4ac6 $7f $00
    dw   `01000113                                     ;; 0a:4ac8 $47 $01
    dw   `00000013                                     ;; 0a:4aca $03 $01
    dw   `30000033                                     ;; 0a:4acc $83 $83
    dw   `33013313                                     ;; 0a:4ace $df $cd
    dw   `33003303                                     ;; 0a:4ad0 $cd $cd
    dw   `33003303                                     ;; 0a:4ad2 $cd $cd

    dw   `33003313                                     ;; 0a:4ad4 $cf $cd
    dw   `33003123                                     ;; 0a:4ad6 $cd $cb
    dw   `33003233                                     ;; 0a:4ad8 $cb $cf
    dw   `13013331                                     ;; 0a:4ada $df $4e
    dw   `13111331                                     ;; 0a:4adc $ff $46
    dw   `11321133                                     ;; 0a:4ade $ef $33
    dw   `11132333                                     ;; 0a:4ae0 $f7 $1f
    dw   `11113333                                     ;; 0a:4ae2 $ff $0f

    dw   `11111333                                     ;; 0a:4ae4 $ff $07
    dw   `11113001                                     ;; 0a:4ae6 $f9 $08
    dw   `11130113                                     ;; 0a:4ae8 $f7 $11
    dw   `11130333                                     ;; 0a:4aea $f7 $17
    dw   `11301003                                     ;; 0a:4aec $e9 $21
    dw   `13101110                                     ;; 0a:4aee $ee $40
    dw   `13111100                                     ;; 0a:4af0 $fc $40
    dw   `30311110                                     ;; 0a:4af2 $be $a0

    dw   `30331110                                     ;; 0a:4af4 $be $b0
    dw   `33033111                                     ;; 0a:4af6 $df $d8
    dw   `33303333                                     ;; 0a:4af8 $ef $ef
    dw   `33331301                                     ;; 0a:4afa $fd $f4
    dw   `33333331                                     ;; 0a:4afc $ff $fe
    dw   `00000131                                     ;; 0a:4afe $07 $02
    dw   `00000131                                     ;; 0a:4b00 $07 $02
    dw   `00001313                                     ;; 0a:4b02 $0f $05

    dw   `00013313                                     ;; 0a:4b04 $1f $0d
    dw   `11133133                                     ;; 0a:4b06 $ff $1b
    dw   `33331333                                     ;; 0a:4b08 $ff $f7
    dw   `12313123                                     ;; 0a:4b0a $bd $6b
    dw   `23330133                                     ;; 0a:4b0c $77 $f3
    dw   `33112311                                     ;; 0a:4b0e $f7 $cc
    dw   `33323111                                     ;; 0a:4b10 $ef $f8
    dw   `33331111                                     ;; 0a:4b12 $ff $f0

    dw   `33311111                                     ;; 0a:4b14 $ff $e0
    dw   `11231111                                     ;; 0a:4b16 $df $30
    dw   `31123111                                     ;; 0a:4b18 $ef $98
    dw   `33312311                                     ;; 0a:4b1a $f7 $ec
    dw   `30012311                                     ;; 0a:4b1c $97 $8c
    dw   `13301110                                     ;; 0a:4b1e $ee $60
    dw   `33301111                                     ;; 0a:4b20 $ef $e0
    dw   `00301111                                     ;; 0a:4b22 $2f $20

    dw   `11331111                                     ;; 0a:4b24 $ff $30
    dw   `11233111                                     ;; 0a:4b26 $df $38
    dw   `11233311                                     ;; 0a:4b28 $df $3c
    dw   `12233333                                     ;; 0a:4b2a $9f $7f
    dw   `22223333                                     ;; 0a:4b2c $0f $ff
    dw   `03333333                                     ;; 0a:4b2e $7f $7f
    dw   `10233332                                     ;; 0a:4b30 $9e $3f
    dw   `11123321                                     ;; 0a:4b32 $ed $1e

    dw   `11123333                                     ;; 0a:4b34 $ef $1f
    dw   `11123332                                     ;; 0a:4b36 $ee $1f
    dw   `11112333                                     ;; 0a:4b38 $f7 $0f
    dw   `11111233                                     ;; 0a:4b3a $fb $07
    dw   `33111111                                     ;; 0a:4b3c $ff $c0
    dw   `33300330                                     ;; 0a:4b3e $e6 $e6
    dw   `11033001                                     ;; 0a:4b40 $d9 $18
    dw   `10330111                                     ;; 0a:4b42 $b7 $30

    dw   `33330111                                     ;; 0a:4b44 $f7 $f0
    dw   `11130111                                     ;; 0a:4b46 $f7 $10
    dw   `21301111                                     ;; 0a:4b48 $6f $a0
    dw   `33011111                                     ;; 0a:4b4a $df $c0
    dw   `11111133                                     ;; 0a:4b4c $ff $03
    dw   `01112331                                     ;; 0a:4b4e $77 $0e
    dw   `11122333                                     ;; 0a:4b50 $e7 $1f
    dw   `11122300                                     ;; 0a:4b52 $e4 $1c

    dw   `11223301                                     ;; 0a:4b54 $cd $3c
    dw   `11233011                                     ;; 0a:4b56 $db $38
    dw   `12333012                                     ;; 0a:4b58 $ba $79
    dw   `33333012                                     ;; 0a:4b5a $fa $f9
    dw   `33330122                                     ;; 0a:4b5c $f4 $f3

    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:4b5e ????????
    db   $ff, $00, $ff, $01, $ff, $02, $ff, $04        ;; 0a:4b66 ????????
    db   $ff, $00, $ff, $03, $fc, $1c, $ff, $3f        ;; 0a:4b6e ????????
    db   $ff, $c0, $e3, $00, $cb, $00, $97, $00        ;; 0a:4b76 ????????
    db   $ff, $00, $ff, $f8, $07, $06, $f3, $f1        ;; 0a:4b7e ????????
    db   $ff, $0c, $ef, $12, $f7, $09, $fb, $04        ;; 0a:4b86 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $c0        ;; 0a:4b8e ????????
    db   $ff, $78, $ff, $14, $ef, $1a, $f7, $8d        ;; 0a:4b96 ????????
    db   $ff, $08, $fe, $08, $fe, $10, $fc, $10        ;; 0a:4b9e ????????
    db   $fc, $20, $f8, $20, $f8, $20, $f8, $20        ;; 0a:4ba6 ????????
    db   $2f, $00, $2f, $00, $5f, $00, $5f, $00        ;; 0a:4bae ????????
    db   $5f, $00, $bf, $00, $bf, $00, $bf, $00        ;; 0a:4bb6 ????????
    db   $f9, $06, $f9, $06, $f9, $06, $f9, $06        ;; 0a:4bbe ????????
    db   $f9, $06, $f9, $06, $f9, $06, $f9, $06        ;; 0a:4bc6 ????????
    db   $f7, $8c, $fb, $46, $fb, $46, $fb, $46        ;; 0a:4bce ????????
    db   $f3, $6e, $f3, $6e, $e7, $7e, $d7, $5e        ;; 0a:4bd6 ????????
    db   $f8, $20, $fb, $23, $fc, $24, $fd, $25        ;; 0a:4bde ????????
    db   $fd, $35, $fe, $32, $fd, $29, $fe, $28        ;; 0a:4be6 ????????
    db   $bf, $00, $ff, $fc, $1f, $02, $ff, $fa        ;; 0a:4bee ????????
    db   $ff, $f4, $ff, $e8, $7f, $10, $fe, $e1        ;; 0a:4bf6 ????????
    db   $f1, $0e, $f3, $0c, $e3, $1c, $e7, $19        ;; 0a:4bfe ????????
    db   $cf, $33, $9e, $66, $3e, $ce, $fe, $1e        ;; 0a:4c06 ????????
    db   $de, $4d, $be, $8d, $b6, $9d, $7c, $37        ;; 0a:4c0e ????????
    db   $74, $37, $f4, $37, $f5, $37, $ef, $26        ;; 0a:4c16 ????????
    db   $ff, $24, $ef, $33, $f7, $1b, $f6, $1b        ;; 0a:4c1e ????????
    db   $fb, $0e, $fe, $06, $ff, $7f, $83, $83        ;; 0a:4c26 ????????
    db   $fd, $02, $ff, $01, $ff, $fe, $b0, $d0        ;; 0a:4c2e ????????
    db   $e0, $80, $e0, $80, $70, $40, $71, $60        ;; 0a:4c36 ????????
    db   $fe, $3e, $ee, $de, $f5, $0c, $3d, $0c        ;; 0a:4c3e ????????
    db   $1b, $08, $37, $11, $6f, $27, $ff, $5b        ;; 0a:4c46 ????????
    db   $f7, $2e, $ef, $3c, $df, $38, $9f, $70        ;; 0a:4c4e ????????
    db   $3f, $e0, $ff, $c0, $ff, $8f, $f8, $f8        ;; 0a:4c56 ????????
    db   $1f, $07, $2f, $1f, $5f, $3f, $de, $3e        ;; 0a:4c5e ????????
    db   $bc, $7c, $bd, $7c, $39, $f8, $1b, $f8        ;; 0a:4c66 ????????
    db   $ff, $b1, $fe, $de, $67, $60, $ff, $3f        ;; 0a:4c6e ????????
    db   $bd, $7e, $77, $f8, $7e, $f1, $3f, $ff        ;; 0a:4c76 ????????
    db   $ef, $a1, $e7, $41, $a7, $c3, $47, $83        ;; 0a:4c7e ????????
    db   $8d, $07, $1d, $3b, $ea, $e6, $16, $0e        ;; 0a:4c86 ????????
    db   $e3, $e0, $c7, $c0, $8e, $81, $9e, $81        ;; 0a:4c8e ????????
    db   $3c, $03, $78, $07, $70, $0f, $c0, $3f        ;; 0a:4c96 ????????
    db   $fd, $04, $fa, $08, $f5, $10, $fb, $11        ;; 0a:4c9e ????????
    db   $e7, $23, $ef, $27, $de, $4e, $dc, $4c        ;; 0a:4ca6 ????????
    db   $5f, $00, $ff, $3f, $ff, $ff, $ff, $ff        ;; 0a:4cae ????????
    db   $e0, $e0, $80, $80, $05, $00, $00, $00        ;; 0a:4cb6 ????????
    db   $ff, $00, $ff, $fc, $ff, $ff, $ff, $ff        ;; 0a:4cbe ????????
    db   $0f, $0f, $03, $03, $40, $00, $aa, $00        ;; 0a:4cc6 ????????
    db   $ff, $20, $ff, $10, $ff, $08, $ff, $88        ;; 0a:4cce ????????
    db   $ff, $c4, $ff, $e4, $ff, $f2, $3f, $32        ;; 0a:4cd6 ????????
    db   $fb, $5b, $f2, $53, $f0, $70, $fb, $79        ;; 0a:4cde ????????
    db   $cd, $cd, $b7, $84, $de, $c5, $dd, $c7        ;; 0a:4ce6 ????????
    db   $0f, $0f, $2e, $06, $57, $03, $ff, $81        ;; 0a:4cee ????????
    db   $60, $9f, $9f, $7f, $7f, $ff, $ff, $ff        ;; 0a:4cf6 ????????
    db   $f5, $e0, $ea, $c0, $ff, $80, $ff, $01        ;; 0a:4cfe ????????
    db   $0f, $f1, $f1, $fe, $fe, $ff, $ff, $ff        ;; 0a:4d06 ????????
    db   $df, $da, $af, $ca, $ff, $0e, $ff, $9e        ;; 0a:4d0e ????????
    db   $73, $b2, $e7, $21, $6f, $a1, $af, $e3        ;; 0a:4d16 ????????
    db   $df, $c7, $df, $c7, $df, $c7, $df, $c7        ;; 0a:4d1e ????????
    db   $df, $c7, $9f, $87, $b7, $8f, $e7, $df        ;; 0a:4d26 ????????
    db   $ff, $ff, $fe, $ff, $b6, $ce, $7e, $86        ;; 0a:4d2e ????????
    db   $ce, $06, $86, $06, $8f, $03, $dc, $80        ;; 0a:4d36 ????????
    db   $46, $d2, $c5, $0c, $ff, $00, $c3, $00        ;; 0a:4d3e ????????
    db   $81, $00, $01, $00, $01, $00, $03, $00        ;; 0a:4d46 ????????
    db   $6f, $e3, $ef, $23, $ef, $23, $ef, $63        ;; 0a:4d4e ????????
    db   $ef, $61, $ed, $e3, $fb, $e6, $e3, $fe        ;; 0a:4d56 ????????
    db   $ef, $7f, $ff, $3f, $ff, $1f, $ff, $0f        ;; 0a:4d5e ????????
    db   $ff, $0f, $f9, $09, $f9, $19, $f2, $30        ;; 0a:4d66 ????????
    db   $f8, $80, $fc, $c0, $fe, $c0, $ff, $e0        ;; 0a:4d6e ????????
    db   $fe, $e0, $ff, $f0, $ff, $f8, $ff, $ff        ;; 0a:4d76 ????????
    db   $03, $01, $03, $01, $07, $03, $c7, $03        ;; 0a:4d7e ????????
    db   $0e, $06, $1c, $0c, $f9, $11, $f3, $e3        ;; 0a:4d86 ????????
    db   $f7, $fc, $ff, $f8, $ff, $f0, $ff, $e0        ;; 0a:4d8e ????????
    db   $ff, $e0, $ff, $90, $bf, $98, $7f, $0c        ;; 0a:4d96 ????????

data_0a_4d9e:
    db   $f5, $70, $f2, $f0, $35, $30, $1b, $10        ;; 0a:4d9e ????????
    db   $5b, $1c, $ad, $1e, $5e, $0f, $f7, $0f        ;; 0a:4da6 ????????
    db   $7f, $7f, $be, $3f, $7d, $3e, $ff, $1f        ;; 0a:4dae ????????
    db   $ff, $17, $f7, $18, $ff, $1f, $be, $df        ;; 0a:4db6 ????????
    db   $a6, $c6, $4d, $8c, $bc, $3c, $f9, $f8        ;; 0a:4dbe ????????
    db   $ea, $f8, $e9, $18, $bb, $d8, $ca, $39        ;; 0a:4dc6 ????????
    db   $ff, $0f, $7e, $0e, $bc, $0c, $6a, $18        ;; 0a:4dce ????????
    db   $f9, $18, $5a, $38, $bb, $78, $f7, $f0        ;; 0a:4dd6 ????????
    db   $cf, $01, $cf, $41, $8f, $81, $86, $81        ;; 0a:4dde ????????
    db   $83, $80, $89, $88, $d3, $d1, $e7, $e3        ;; 0a:4de6 ????????
    db   $1b, $07, $1b, $07, $8f, $83, $c7, $c1        ;; 0a:4dee ????????
    db   $b2, $72, $fc, $fc, $fd, $fc, $3b, $d9        ;; 0a:4df6 ????????
    db   $2e, $1e, $78, $18, $71, $10, $03, $00        ;; 0a:4dfe ????????
    db   $62, $61, $fd, $ff, $db, $e7, $7f, $81        ;; 0a:4e06 ????????
    db   $3f, $00, $ef, $1e, $91, $70, $63, $e1        ;; 0a:4e0e ????????
    db   $c7, $c3, $8e, $82, $9d, $84, $da, $d9        ;; 0a:4e16 ????????
    db   $ea, $67, $dd, $46, $dd, $47, $df, $47        ;; 0a:4e1e ????????
    db   $df, $46, $5d, $46, $6f, $25, $ab, $a7        ;; 0a:4e26 ????????
    db   $fb, $09, $fa, $0b, $db, $ea, $fb, $fa        ;; 0a:4e2e ????????
    db   $fb, $1a, $fb, $fb, $ff, $fa, $1f, $5d        ;; 0a:4e36 ????????
    db   $ff, $00, $ff, $00, $ef, $1f, $bf, $7f        ;; 0a:4e3e ????????
    db   $7f, $c0, $ff, $bf, $df, $df, $98, $92        ;; 0a:4e46 ????????
    db   $65, $e3, $ef, $6e, $a7, $f0, $fe, $ef        ;; 0a:4e4e ????????
    db   $ff, $df, $ff, $57, $d7, $d3, $da, $db        ;; 0a:4e56 ????????
    db   $a6, $a2, $d7, $52, $f1, $33, $fb, $09        ;; 0a:4e5e ????????
    db   $ff, $06, $ff, $03, $ff, $01, $ff, $00        ;; 0a:4e66 ????????
    db   $3b, $3b, $fb, $19, $19, $18, $18, $0c        ;; 0a:4e6e ????????
    db   $bf, $8f, $fe, $46, $fc, $e0, $b8, $c0        ;; 0a:4e76 ????????
    db   $c9, $4d, $ff, $00, $83, $00, $01, $00        ;; 0a:4e7e ????????
    db   $01, $00, $01, $00, $03, $00, $03, $00        ;; 0a:4e86 ????????
    db   $d2, $53, $de, $5b, $fe, $5b, $ff, $56        ;; 0a:4e8e ????????
    db   $fd, $57, $fd, $3f, $fd, $bf, $f7, $7d        ;; 0a:4e96 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:4e9e ????????
    db   $ff, $07, $f9, $18, $f5, $f3, $ff, $ff        ;; 0a:4ea6 ????????
    db   $fc, $c0, $fc, $c0, $fe, $50, $fc, $60        ;; 0a:4eae ????????
    db   $fe, $e8, $7f, $f0, $bf, $ba, $7f, $7f        ;; 0a:4eb6 ????????
    db   $03, $01, $03, $00, $0f, $0a, $07, $01        ;; 0a:4ebe ????????
    db   $1e, $0a, $fe, $2c, $fd, $b9, $fd, $f3        ;; 0a:4ec6 ????????
    db   $ff, $75, $ff, $f6, $ff, $dc, $ff, $ce        ;; 0a:4ece ????????
    db   $dd, $cf, $99, $97, $33, $6f, $e7, $df        ;; 0a:4ed6 ????????
    db   $ca, $c6, $ac, $9c, $fd, $fc, $8f, $84        ;; 0a:4ede ????????
    db   $76, $0f, $ef, $9f, $ff, $ff, $2d, $1c        ;; 0a:4ee6 ????????
    db   $ff, $ff, $7f, $7f, $3f, $3f, $80, $00        ;; 0a:4eee ????????
    db   $c1, $00, $bf, $c7, $ff, $fe, $ff, $f8        ;; 0a:4ef6 ????????
    db   $b6, $ce, $79, $f8, $87, $80, $3f, $00        ;; 0a:4efe ????????
    db   $ff, $01, $fe, $06, $81, $00, $fc, $03        ;; 0a:4f06 ????????
    db   $6f, $1f, $df, $3e, $bf, $7c, $77, $f1        ;; 0a:4f0e ????????
    db   $cb, $c7, $37, $0e, $cf, $3c, $1f, $f8        ;; 0a:4f16 ????????
    db   $f9, $09, $fe, $0e, $f8, $09, $f6, $11        ;; 0a:4f1e ????????
    db   $f4, $10, $f4, $10, $f7, $10, $fb, $0b        ;; 0a:4f26 ????????
    db   $ff, $ff, $ff, $00, $00, $ff, $00, $01        ;; 0a:4f2e ????????
    db   $00, $7c, $00, $ff, $7e, $ff, $f9, $87        ;; 0a:4f36 ????????
    db   $fc, $03, $ff, $f0, $ff, $0c, $0f, $f2        ;; 0a:4f3e ????????
    db   $03, $1d, $03, $1d, $01, $fe, $c1, $fe        ;; 0a:4f46 ????????
    db   $07, $fc, $03, $fe, $9f, $7e, $a3, $63        ;; 0a:4f4e ????????
    db   $cd, $43, $5c, $c3, $de, $c5, $da, $cb        ;; 0a:4f56 ????????
    db   $fd, $0c, $f3, $10, $ef, $20, $df, $40        ;; 0a:4f5e ????????
    db   $d0, $40, $ef, $6f, $ff, $37, $ff, $07        ;; 0a:4f66 ????????
    db   $fe, $01, $ff, $00, $ff, $00, $ff, $00        ;; 0a:4f6e ????????
    db   $07, $00, $fb, $f8, $fc, $fc, $ff, $ff        ;; 0a:4f76 ????????
    db   $30, $ff, $88, $7f, $c4, $3f, $c2, $3f        ;; 0a:4f7e ????????
    db   $87, $79, $1f, $e7, $ff, $1f, $ff, $ff        ;; 0a:4f86 ????????
    db   $db, $c9, $df, $cd, $db, $cb, $fb, $e9        ;; 0a:4f8e ????????
    db   $ff, $fd, $fb, $fb, $ff, $db, $7f, $ee        ;; 0a:4f96 ????????
    db   $ff, $07, $fe, $03, $ff, $02, $ff, $02        ;; 0a:4f9e ????????
    db   $ff, $02, $ff, $01, $ff, $01, $ff, $01        ;; 0a:4fa6 ????????
    db   $f7, $ef, $6d, $a3, $e7, $20, $20, $20        ;; 0a:4fae ????????
    db   $20, $20, $78, $38, $f0, $10, $f0, $00        ;; 0a:4fb6 ????????
    db   $fe, $ff, $fb, $fc, $ff, $00, $7f, $00        ;; 0a:4fbe ????????
    db   $0f, $00, $07, $00, $07, $01, $0f, $01        ;; 0a:4fc6 ????????
    db   $ff, $4e, $ff, $6c, $df, $68, $df, $48        ;; 0a:4fce ????????
    db   $bf, $90, $ff, $b0, $ff, $f0, $ff, $f0        ;; 0a:4fd6 ????????
    db   $ff, $00, $ff, $00, $ff, $01, $ff, $06        ;; 0a:4fde ????????
    db   $f8, $19, $ff, $f4, $e7, $62, $db, $59        ;; 0a:4fe6 ????????
    db   $e0, $80, $e0, $80, $f0, $c0, $fc, $60        ;; 0a:4fee ????????
    db   $78, $e0, $3c, $f0, $bf, $70, $df, $3f        ;; 0a:4ff6 ????????
    db   $1f, $03, $1f, $03, $1e, $07, $3b, $0a        ;; 0a:4ffe ????????
    db   $36, $14, $74, $24, $c5, $65, $aa, $ca        ;; 0a:5006 ????????
    db   $ef, $d8, $f7, $6c, $f3, $6e, $f3, $6f        ;; 0a:500e ????????
    db   $d3, $4f, $b7, $8d, $67, $1d, $ef, $1a        ;; 0a:5016 ????????
    db   $bd, $9c, $be, $be, $ba, $be, $f9, $b7        ;; 0a:501e ????????
    db   $f1, $ef, $f3, $cc, $f7, $4b, $fe, $4e        ;; 0a:5026 ????????
    db   $ff, $9f, $fd, $5e, $f6, $78, $79, $71        ;; 0a:502e ????????
    db   $b3, $b3, $af, $af, $50, $50, $9f, $9f        ;; 0a:5036 ????????
    db   $4d, $8c, $9b, $1a, $33, $31, $e9, $e8        ;; 0a:503e ????????
    db   $d4, $dc, $52, $5e, $a3, $bd, $d7, $d8        ;; 0a:5046 ????????
    db   $ee, $1a, $df, $37, $df, $34, $bf, $ef        ;; 0a:504e ????????
    db   $eb, $6c, $6b, $2c, $37, $18, $97, $98        ;; 0a:5056 ????????
    db   $fe, $3e, $fd, $7c, $fd, $7c, $fb, $78        ;; 0a:505e ????????
    db   $fb, $78, $f6, $32, $f6, $b6, $ff, $d7        ;; 0a:5066 ????????
    db   $ed, $43, $a5, $c3, $a5, $c3, $a5, $c3        ;; 0a:506e ????????
    db   $ab, $c7, $ab, $c7, $db, $67, $57, $6e        ;; 0a:5076 ????????
    db   $9f, $7f, $e7, $9f, $f9, $87, $fe, $81        ;; 0a:507e ????????
    db   $ff, $80, $f3, $00, $cc, $3c, $bf, $73        ;; 0a:5086 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:508e ????????
    db   $7f, $ff, $bf, $7f, $df, $3f, $6f, $1f        ;; 0a:5096 ????????
    db   $ff, $f5, $f7, $fd, $ff, $fd, $ff, $7d        ;; 0a:509e ????????
    db   $ff, $7d, $ff, $3d, $ff, $1c, $ff, $06        ;; 0a:50a6 ????????
    db   $6f, $3e, $be, $bd, $bd, $9b, $fb, $c6        ;; 0a:50ae ????????
    db   $ff, $ff, $ff, $bb, $ff, $bd, $ff, $9d        ;; 0a:50b6 ????????
    db   $7f, $c0, $ff, $80, $ff, $00, $ff, $ff        ;; 0a:50be ????????
    db   $ff, $c0, $ff, $ff, $c7, $96, $07, $0b        ;; 0a:50c6 ????????
    db   $bf, $8f, $df, $5f, $f3, $7f, $ff, $a7        ;; 0a:50ce ????????
    db   $fd, $6f, $ff, $ed, $ef, $ed, $cd, $4d        ;; 0a:50d6 ????????
    db   $ff, $02, $ff, $02, $ff, $02, $ff, $02        ;; 0a:50de ????????
    db   $ff, $01, $ff, $01, $ff, $c1, $3f, $38        ;; 0a:50e6 ????????
    db   $ff, $56, $77, $76, $37, $33, $34, $30        ;; 0a:50ee ????????
    db   $70, $10, $fc, $1c, $fc, $0c, $f8, $80        ;; 0a:50f6 ????????
    db   $ff, $7c, $ff, $00, $07, $00, $83, $80        ;; 0a:50fe ????????
    db   $03, $00, $07, $01, $07, $01, $0e, $02        ;; 0a:5106 ????????
    db   $cd, $49, $db, $4f, $ef, $4f, $cf, $87        ;; 0a:510e ????????
    db   $9b, $86, $f7, $cf, $ef, $7e, $bf, $7c        ;; 0a:5116 ????????
    db   $67, $1f, $99, $79, $66, $e1, $9b, $87        ;; 0a:511e ????????
    db   $6f, $1f, $bf, $78, $7e, $fc, $fb, $e3        ;; 0a:5126 ????????
    db   $f0, $80, $f8, $c0, $f8, $c0, $fe, $e0        ;; 0a:512e ????????
    db   $fc, $e0, $f8, $30, $3f, $10, $cf, $3f        ;; 0a:5136 ????????
    db   $0e, $02, $1d, $04, $1b, $0b, $3e, $1c        ;; 0a:513e ????????
    db   $74, $38, $ef, $73, $fd, $fc, $e3, $80        ;; 0a:5146 ????????
    db   $7f, $ff, $ff, $fe, $ff, $7c, $ff, $60        ;; 0a:514e ????????
    db   $ff, $a0, $9f, $70, $3f, $ff, $7d, $f1        ;; 0a:5156 ????????
    db   $e3, $81, $85, $03, $0b, $07, $f7, $ee        ;; 0a:515e ????????
    db   $3e, $3c, $3c, $18, $58, $30, $b0, $60        ;; 0a:5166 ????????
    db   $bf, $ff, $fe, $ff, $cc, $8f, $86, $03        ;; 0a:516e ????????
    db   $07, $01, $0e, $01, $1c, $03, $f0, $0f        ;; 0a:5176 ????????
    db   $1f, $e0, $3e, $c1, $7d, $83, $f3, $0e        ;; 0a:517e ????????
    db   $0f, $fe, $ff, $ff, $7e, $f8, $3c, $f0        ;; 0a:5186 ????????
    db   $71, $c0, $fa, $f9, $cd, $8f, $8f, $07        ;; 0a:518e ????????
    db   $1b, $07, $36, $0e, $ed, $dc, $ba, $79        ;; 0a:5196 ????????
    db   $fd, $0d, $fb, $09, $f3, $11, $f3, $11        ;; 0a:519e ????????
    db   $f7, $13, $f7, $13, $f7, $12, $f7, $13        ;; 0a:51a6 ????????
    db   $18, $08, $39, $08, $39, $18, $7b, $18        ;; 0a:51ae ????????
    db   $fb, $99, $fb, $59, $ff, $3d, $ff, $3f        ;; 0a:51b6 ????????
    db   $a7, $62, $cf, $42, $cf, $c6, $dd, $c7        ;; 0a:51be ????????
    db   $db, $4c, $f7, $58, $ef, $70, $df, $67        ;; 0a:51c6 ????????
    db   $e0, $1f, $f1, $0f, $f9, $07, $f9, $87        ;; 0a:51ce ????????
    db   $ff, $66, $ff, $7e, $bd, $9c, $bd, $9c        ;; 0a:51d6 ????????
    db   $fe, $0a, $ff, $0a, $ff, $06, $ff, $07        ;; 0a:51de ????????
    db   $ff, $0e, $fb, $0a, $fb, $1b, $fb, $1b        ;; 0a:51e6 ????????
    db   $f3, $f3, $b3, $91, $b3, $91, $f7, $91        ;; 0a:51ee ????????
    db   $ff, $73, $ff, $0c, $f3, $e1, $57, $33        ;; 0a:51f6 ????????
    db   $fd, $fc, $6f, $24, $7f, $27, $ff, $3e        ;; 0a:51fe ????????
    db   $ff, $e0, $f9, $c7, $ff, $ff, $af, $ad        ;; 0a:5206 ????????
    db   $f9, $b8, $eb, $e8, $ef, $ac, $ab, $6a        ;; 0a:520e ????????
    db   $6f, $ea, $ef, $ea, $ef, $ee, $ef, $ea        ;; 0a:5216 ????????
    db   $fb, $1b, $eb, $2a, $eb, $2a, $db, $4a        ;; 0a:521e ????????
    db   $d3, $52, $97, $93, $b7, $93, $37, $13        ;; 0a:5226 ????????
    db   $b7, $73, $f7, $f2, $f6, $30, $f4, $50        ;; 0a:522e ????????
    db   $f0, $10, $f0, $10, $fe, $1e, $fc, $8c        ;; 0a:5236 ????????
    db   $13, $12, $ff, $fc, $ff, $c0, $6f, $31        ;; 0a:523e ????????
    db   $17, $09, $0f, $03, $0f, $07, $0f, $07        ;; 0a:5246 ????????
    db   $cd, $cc, $dd, $cc, $dd, $cc, $db, $c9        ;; 0a:524e ????????
    db   $df, $cb, $de, $cf, $9c, $8f, $9c, $8f        ;; 0a:5256 ????????
    db   $67, $23, $67, $23, $6f, $23, $ef, $23        ;; 0a:525e ????????
    db   $cf, $43, $cf, $47, $cf, $47, $9f, $87        ;; 0a:5266 ????????
    db   $f8, $80, $e0, $80, $f8, $80, $f8, $c0        ;; 0a:526e ????????
    db   $fe, $c0, $e8, $d4, $c9, $f4, $69, $f6        ;; 0a:5276 ????????
    db   $0f, $07, $0f, $0f, $1d, $0f, $1b, $0d        ;; 0a:527e ????????
    db   $1d, $09, $33, $9b, $3d, $df, $37, $f3        ;; 0a:5286 ????????
    db   $9c, $8b, $3c, $0b, $3e, $09, $2e, $19        ;; 0a:528e ????????
    db   $3e, $19, $3f, $18, $3f, $1c, $37, $17        ;; 0a:5296 ????????
    db   $9f, $87, $9f, $85, $1d, $05, $3b, $0d        ;; 0a:529e ????????
    db   $39, $0f, $39, $0f, $3a, $0f, $3b, $0f        ;; 0a:52a6 ????????
    db   $e9, $b6, $df, $df, $6f, $6f, $da, $5f        ;; 0a:52ae ????????
    db   $ff, $5a, $ba, $ba, $fa, $ba, $7f, $da        ;; 0a:52b6 ????????
    db   $6f, $ed, $fa, $fa, $be, $ba, $f6, $d6        ;; 0a:52be ????????
    db   $de, $d6, $fc, $ec, $fc, $ec, $d8, $dc        ;; 0a:52c6 ????????
    db   $7f, $14, $7c, $14, $76, $1c, $7b, $1c        ;; 0a:52ce ????????
    db   $f9, $1e, $fc, $1f, $fe, $1f, $ff, $1f        ;; 0a:52d6 ????????
    db   $00, $00, $08, $00, $38, $08, $f3, $10        ;; 0a:52de ????????
    db   $e4, $60, $c0, $c0, $c0, $c0, $80, $80        ;; 0a:52e6 ????????
    db   $0f, $00, $01, $00, $7e, $00, $87, $00        ;; 0a:52ee ????????
    db   $0f, $00, $3f, $0f, $75, $3e, $ff, $72        ;; 0a:52f6 ????????
    db   $7f, $fe, $bf, $7c, $5e, $38, $ad, $18        ;; 0a:52fe ????????
    db   $db, $0c, $f4, $0e, $fd, $87, $fe, $47        ;; 0a:5306 ????????
    db   $ff, $1e, $ff, $03, $7f, $01, $9f, $00        ;; 0a:530e ????????
    db   $0f, $00, $c7, $00, $b7, $80, $63, $c0        ;; 0a:5316 ????????
    db   $81, $80, $83, $80, $87, $81, $87, $81        ;; 0a:531e ????????
    db   $8f, $83, $8f, $83, $8f, $86, $9f, $84        ;; 0a:5326 ????????
    db   $df, $69, $bf, $e5, $ff, $f4, $9f, $ff        ;; 0a:532e ????????
    db   $e7, $f8, $ff, $ff, $ff, $7f, $ff, $3f        ;; 0a:5336 ????????
    db   $fe, $25, $f7, $2c, $f7, $9d, $ff, $9d        ;; 0a:533e ????????
    db   $ff, $ff, $cc, $03, $ff, $ff, $ff, $ff        ;; 0a:5346 ????????
    db   $b3, $e0, $b3, $e0, $f3, $60, $d3, $70        ;; 0a:534e ????????
    db   $f3, $f0, $f3, $f0, $f3, $f0, $f3, $f0        ;; 0a:5356 ????????
    db   $9f, $87, $9f, $85, $9f, $84, $9f, $84        ;; 0a:535e ????????
    db   $9f, $84, $9f, $84, $df, $44, $df, $44        ;; 0a:5366 ????????
    db   $ff, $ff, $ff, $b5, $e0, $c8, $fc, $3f        ;; 0a:536e ????????
    db   $81, $00, $00, $00, $00, $00, $80, $00        ;; 0a:5376 ????????
    db   $ff, $8f, $f7, $9a, $d5, $95, $df, $1f        ;; 0a:537e ????????
    db   $9a, $1d, $99, $18, $19, $18, $1d, $18        ;; 0a:5386 ????????
    db   $d3, $f0, $d3, $f0, $d3, $f0, $d3, $f0        ;; 0a:538e ????????
    db   $d3, $f0, $a7, $e0, $a7, $e0, $a7, $e1        ;; 0a:5396 ????????
    db   $df, $46, $cf, $46, $ef, $27, $ef, $23        ;; 0a:539e ????????
    db   $e6, $23, $b7, $72, $b6, $72, $3e, $fa        ;; 0a:53a6 ????????
    db   $80, $00, $80, $00, $c0, $00, $c0, $00        ;; 0a:53ae ????????
    db   $e0, $80, $70, $c0, $b8, $60, $5c, $30        ;; 0a:53b6 ????????
    db   $7f, $71, $7f, $61, $3f, $01, $1e, $03        ;; 0a:53be ????????
    db   $3f, $02, $3f, $04, $7f, $0c, $7f, $0f        ;; 0a:53c6 ????????
    db   $2f, $e1, $2f, $e1, $2e, $e3, $6f, $c2        ;; 0a:53ce ????????
    db   $6d, $c6, $ef, $44, $fb, $4c, $ff, $df        ;; 0a:53d6 ????????
    db   $3f, $fb, $bd, $fe, $7f, $7d, $1f, $1d        ;; 0a:53de ????????
    db   $8f, $0d, $c5, $87, $e3, $82, $fd, $41        ;; 0a:53e6 ????????
    db   $2e, $18, $f7, $ce, $3f, $3f, $c7, $c7        ;; 0a:53ee ????????
    db   $f8, $f8, $f7, $f3, $fe, $f6, $ff, $36        ;; 0a:53f6 ????????
    db   $ff, $1f, $ff, $3e, $f6, $fc, $fe, $cc        ;; 0a:53fe ????????
    db   $7f, $3e, $fd, $ff, $ff, $fd, $7f, $7b        ;; 0a:5406 ????????
    db   $f0, $90, $f0, $a0, $d8, $e0, $ef, $b0        ;; 0a:540e ????????
    db   $33, $1c, $98, $0f, $cc, $87, $e6, $c3        ;; 0a:5416 ????????
    db   $bf, $7f, $ff, $ff, $bd, $7c, $5d, $3c        ;; 0a:541e ????????
    db   $ff, $7f, $df, $ce, $b7, $8f, $ed, $dc        ;; 0a:5426 ????????
    db   $af, $9c, $dd, $ff, $ff, $ff, $76, $f6        ;; 0a:542e ????????
    db   $f7, $fe, $7f, $ff, $fb, $fb, $fb, $ff        ;; 0a:5436 ????????
    db   $79, $f8, $fa, $f9, $7d, $3f, $b7, $77        ;; 0a:543e ????????
    db   $f7, $f1, $bd, $93, $5a, $3e, $bf, $fe        ;; 0a:5446 ????????
    db   $ff, $f7, $ef, $ef, $d7, $cf, $ef, $ff        ;; 0a:544e ????????
    db   $bf, $9f, $df, $bf, $fe, $7e, $7d, $fd        ;; 0a:5456 ????????
    db   $ea, $f9, $fd, $fb, $ff, $ff, $7e, $3e        ;; 0a:545e ????????
    db   $ef, $af, $f7, $e7, $fa, $fb, $f7, $f3        ;; 0a:5466 ????????
    db   $cf, $df, $b7, $8f, $ef, $df, $f8, $78        ;; 0a:546e ????????
    db   $a7, $63, $5c, $cf, $b7, $98, $68, $30        ;; 0a:5476 ????????
    db   $fb, $f9, $9f, $8f, $fe, $fe, $7c, $1c        ;; 0a:547e ????????
    db   $cf, $c6, $37, $f3, $cb, $39, $65, $1c        ;; 0a:5486 ????????
    db   $ea, $e9, $55, $4f, $6f, $3e, $de, $3f        ;; 0a:548e ????????
    db   $bb, $7b, $75, $f3, $fb, $ff, $bf, $9f        ;; 0a:5496 ????????
    db   $f7, $f3, $7e, $7e, $76, $32, $fe, $fe        ;; 0a:549e ????????
    db   $be, $be, $a6, $a2, $de, $d2, $fd, $db        ;; 0a:54a6 ????????
    db   $50, $60, $d0, $60, $b0, $c0, $b0, $c0        ;; 0a:54ae ????????
    db   $b8, $c0, $9f, $e0, $5f, $60, $47, $78        ;; 0a:54b6 ????????
    db   $32, $0e, $3a, $06, $39, $07, $39, $07        ;; 0a:54be ????????
    db   $79, $07, $f1, $0f, $e2, $1e, $c3, $3e        ;; 0a:54c6 ????????
    db   $af, $df, $df, $7f, $f7, $71, $ea, $66        ;; 0a:54ce ????????
    db   $f5, $7c, $ff, $7d, $ff, $7f, $ff, $ff        ;; 0a:54d6 ????????
    db   $fb, $ff, $fa, $ff, $df, $cf, $97, $8f        ;; 0a:54de ????????
    db   $3b, $09, $6f, $1f, $da, $b1, $ba, $f1        ;; 0a:54e6 ????????
    db   $20, $3f, $90, $9f, $6c, $cf, $b3, $e3        ;; 0a:54ee ????????
    db   $ff, $f8, $bf, $bf, $dc, $bc, $bd, $fc        ;; 0a:54f6 ????????
    db   $05, $fc, $0b, $f9, $36, $f2, $cd, $c4        ;; 0a:54fe ????????
    db   $ff, $1e, $ff, $ff, $f0, $70, $69, $e6        ;; 0a:5506 ????????
    db   $ff, $e8, $68, $68, $bf, $68, $68, $ff        ;; 0a:550e ????????
    db   $bf, $bf, $5f, $1f, $bf, $cf, $db, $7b        ;; 0a:5516 ????????
    db   $fa, $71, $fa, $f1, $ff, $ff, $da, $d1        ;; 0a:551e ????????
    db   $bf, $8f, $67, $7f, $7f, $3f, $df, $3f        ;; 0a:5526 ????????
    db   $fe, $fd, $ff, $bf, $ff, $fe, $ff, $df        ;; 0a:552e ????????
    db   $7e, $3e, $f3, $f7, $eb, $e7, $fd, $fc        ;; 0a:5536 ????????
    db   $65, $eb, $e1, $ef, $7f, $e6, $ff, $f0        ;; 0a:553e ????????
    db   $7f, $7f, $be, $7e, $ff, $ff, $df, $bf        ;; 0a:5546 ????????
    db   $f5, $71, $ef, $73, $f6, $7e, $bf, $bc        ;; 0a:554e ????????
    db   $5d, $3f, $df, $3f, $ae, $6e, $d7, $ce        ;; 0a:5556 ????????
    db   $7f, $10, $6f, $18, $6f, $18, $6f, $18        ;; 0a:555e ????????
    db   $ef, $f8, $ff, $f0, $7f, $18, $6f, $18        ;; 0a:5566 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:556e ????????
    db   $ff, $0f, $ff, $3f, $f8, $78, $e7, $e0        ;; 0a:5576 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:557e ????????
    db   $ff, $f0, $ff, $ff, $fc, $1c, $ff, $06        ;; 0a:5586 ????????
    db   $bf, $a0, $ff, $e0, $bf, $a0, $ff, $a0        ;; 0a:558e ????????
    db   $ff, $f0, $bf, $98, $b7, $94, $fb, $92        ;; 0a:5596 ????????
    db   $ef, $f9, $7f, $1b, $6e, $1e, $6d, $1c        ;; 0a:559e ????????
    db   $6f, $1d, $4f, $3a, $db, $3e, $9e, $7c        ;; 0a:55a6 ????????
    db   $9f, $87, $7f, $18, $f3, $60, $e4, $83        ;; 0a:55ae ????????
    db   $df, $03, $91, $0f, $0f, $1f, $2f, $19        ;; 0a:55b6 ????????
    db   $e7, $f9, $f9, $1e, $e6, $1f, $71, $ef        ;; 0a:55be ????????
    db   $f8, $e7, $fa, $e7, $e7, $9f, $fe, $bf        ;; 0a:55c6 ????????
    db   $b5, $d9, $da, $fc, $5d, $ff, $3e, $fe        ;; 0a:55ce ????????
    db   $9c, $fc, $5e, $f8, $5b, $fc, $3b, $fc        ;; 0a:55d6 ????????
    db   $ae, $6c, $5c, $c8, $ac, $98, $bc, $98        ;; 0a:55de ????????
    db   $9c, $b8, $bc, $ac, $ac, $ac, $ac, $a4        ;; 0a:55e6 ????????
    db   $7f, $3f, $4c, $33, $9f, $77, $b7, $7c        ;; 0a:55ee ????????
    db   $b4, $7f, $bf, $7f, $ff, $03, $bf, $41        ;; 0a:55f6 ????????
    db   $8e, $ff, $bf, $ff, $df, $bd, $bc, $fb        ;; 0a:55fe ????????
    db   $ff, $f7, $ff, $ff, $ff, $c0, $ff, $83        ;; 0a:5606 ????????
    db   $b9, $7e, $5d, $be, $dc, $bf, $1e, $ff        ;; 0a:560e ????????
    db   $9e, $ff, $96, $ff, $96, $ff, $a6, $ef        ;; 0a:5616 ????????
    db   $ac, $a4, $ae, $a4, $9b, $92, $dd, $91        ;; 0a:561e ????????
    db   $ee, $88, $b7, $c4, $5b, $63, $ba, $20        ;; 0a:5626 ????????
    db   $bf, $7f, $bf, $7f, $9c, $7c, $9b, $78        ;; 0a:562e ????????
    db   $f7, $f3, $0f, $00, $ff, $07, $ff, $e0        ;; 0a:5636 ????????
    db   $ff, $ff, $ff, $ff, $3e, $7f, $df, $3f        ;; 0a:563e ????????
    db   $ef, $df, $f8, $00, $fe, $e1, $e7, $1f        ;; 0a:5646 ????????
    db   $a6, $ef, $76, $ef, $da, $cf, $aa, $9f        ;; 0a:564e ????????
    db   $52, $3f, $a2, $6f, $da, $c7, $3d, $05        ;; 0a:5656 ????????
    db   $ae, $34, $df, $15, $57, $99, $ab, $cc        ;; 0a:565e ????????
    db   $a9, $ce, $d8, $ef, $d0, $ff, $e0, $ff        ;; 0a:5666 ????????
    db   $1f, $1f, $e7, $47, $f0, $40, $ff, $47        ;; 0a:566e ????????
    db   $df, $3f, $38, $f8, $77, $f5, $f7, $d5        ;; 0a:5676 ????????
    db   $f8, $f8, $e7, $e2, $1f, $02, $ff, $e2        ;; 0a:567e ????????
    db   $ff, $f8, $5d, $3e, $ee, $bf, $ef, $bb        ;; 0a:5686 ????????
    db   $f5, $2c, $fa, $a9, $ea, $99, $f5, $13        ;; 0a:568e ????????
    db   $d5, $33, $d3, $37, $8b, $7f, $07, $ff        ;; 0a:5696 ????????
    db   $ff, $01, $ff, $07, $fe, $0f, $fd, $1e        ;; 0a:569e ????????
    db   $fd, $7e, $e9, $de, $35, $0e, $fc, $3f        ;; 0a:56a6 ????????
    db   $c1, $80, $41, $80, $82, $00, $85, $00        ;; 0a:56ae ????????
    db   $85, $00, $8b, $00, $89, $02, $cb, $06        ;; 0a:56b6 ????????
    db   $39, $07, $7c, $03, $fe, $01, $fe, $01        ;; 0a:56be ????????
    db   $fe, $01, $fe, $01, $be, $41, $dc, $63        ;; 0a:56c6 ????????
    db   $ff, $80, $ff, $e0, $7f, $f0, $3f, $f8        ;; 0a:56ce ????????
    db   $3f, $fe, $1d, $f3, $3e, $e1, $3c, $ff        ;; 0a:56d6 ????????
    db   $ce, $c3, $3e, $3f, $ff, $ff, $7f, $ff        ;; 0a:56de ????????
    db   $bf, $7f, $c7, $3f, $7f, $0e, $8b, $8a        ;; 0a:56e6 ????????
    db   $c7, $0e, $ef, $0e, $6f, $8e, $6f, $9f        ;; 0a:56ee ????????
    db   $d8, $b8, $b3, $f0, $ef, $e3, $ec, $c4        ;; 0a:56f6 ????????
    db   $ec, $73, $fc, $73, $f8, $77, $f0, $ff        ;; 0a:56fe ????????
    db   $19, $1f, $fd, $0f, $ed, $d7, $27, $3b        ;; 0a:5706 ????????
    db   $47, $c3, $7f, $fc, $ff, $ff, $fe, $ff        ;; 0a:570e ????????
    db   $fd, $fe, $e3, $fc, $fe, $70, $f1, $51        ;; 0a:5716 ????????
    db   $7a, $7a, $b7, $33, $f6, $b2, $ed, $e5        ;; 0a:571e ????????
    db   $ed, $e5, $ed, $e5, $ef, $e2, $7f, $73        ;; 0a:5726 ????????
    db   $ed, $c5, $ed, $c5, $75, $25, $f7, $e5        ;; 0a:572e ????????
    db   $fb, $d2, $db, $f1, $bd, $78, $fd, $f8        ;; 0a:5736 ????????
    db   $a3, $bf, $e3, $bf, $e4, $bc, $e7, $bf        ;; 0a:573e ????????
    db   $eb, $5b, $eb, $9b, $df, $3c, $df, $3f        ;; 0a:5746 ????????
    db   $5e, $5e, $dd, $cc, $df, $4d, $ff, $a7        ;; 0a:574e ????????
    db   $ff, $a7, $bf, $e7, $57, $cf, $ff, $cf        ;; 0a:5756 ????????
    db   $76, $7a, $bb, $7a, $db, $3e, $be, $ff        ;; 0a:575e ????????
    db   $7f, $ff, $7f, $df, $f5, $d3, $f5, $93        ;; 0a:5766 ????????
    db   $ff, $fc, $df, $df, $e7, $c7, $f8, $e0        ;; 0a:576e ????????
    db   $ff, $f8, $5f, $4f, $7a, $37, $fb, $06        ;; 0a:5776 ????????
    db   $b7, $73, $f7, $f3, $f7, $f3, $5f, $3f        ;; 0a:577e ????????
    db   $df, $3f, $f7, $f3, $bf, $7f, $bf, $77        ;; 0a:5786 ????????
    db   $6f, $5f, $fd, $5b, $da, $71, $79, $f8        ;; 0a:578e ????????
    db   $fc, $fc, $ff, $fe, $af, $9b, $af, $9a        ;; 0a:5796 ????????
    db   $f5, $13, $f5, $13, $ff, $1f, $ff, $1f        ;; 0a:579e ????????
    db   $f5, $13, $ff, $0e, $ff, $00, $ff, $00        ;; 0a:57a6 ????????
    db   $c3, $be, $ff, $fc, $fa, $69, $ff, $4f        ;; 0a:57ae ????????
    db   $ff, $47, $ff, $43, $ff, $03, $ff, $03        ;; 0a:57b6 ????????
    db   $bf, $77, $bf, $67, $ff, $62, $ff, $e2        ;; 0a:57be ????????
    db   $ff, $c2, $ff, $02, $ff, $02, $ff, $00        ;; 0a:57c6 ????????
    db   $af, $9a, $af, $9a, $ff, $fa, $ff, $fa        ;; 0a:57ce ????????
    db   $af, $98, $ff, $70, $ff, $00, $ff, $00        ;; 0a:57d6 ????????
    db   $ff, $00, $ff, $01, $ff, $03, $ff, $0e        ;; 0a:57de ????????
    db   $f7, $32, $ce, $c5, $3e, $0d, $de, $3d        ;; 0a:57e6 ????????
    db   $cd, $f0, $db, $a0, $b3, $40, $33, $c0        ;; 0a:57ee ????????
    db   $67, $80, $67, $80, $67, $80, $67, $80        ;; 0a:57f6 ????????
    db   $43, $bf, $a1, $5f, $a0, $5f, $90, $6f        ;; 0a:57fe ????????
    db   $d0, $2f, $d0, $2f, $c8, $37, $c8, $37        ;; 0a:5806 ????????
    db   $ff, $00, $ff, $80, $ff, $c0, $7f, $f0        ;; 0a:580e ????????
    db   $4f, $cc, $33, $e3, $3c, $f0, $3b, $fc        ;; 0a:5816 ????????
    db   $b6, $75, $6e, $e5, $5e, $c5, $d6, $cd        ;; 0a:581e ????????
    db   $b6, $8d, $b7, $8e, $b7, $8e, $a7, $9e        ;; 0a:5826 ????????
    db   $67, $80, $67, $80, $67, $80, $67, $81        ;; 0a:582e ????????
    db   $76, $82, $75, $85, $35, $c5, $35, $c5        ;; 0a:5836 ????????
    db   $c8, $37, $c8, $37, $88, $77, $88, $f7        ;; 0a:583e ????????
    db   $48, $77, $a8, $b7, $a8, $b7, $b0, $af        ;; 0a:5846 ????????
    db   $3d, $ee, $26, $f7, $2a, $f3, $2b, $f3        ;; 0a:584e ????????
    db   $2d, $f1, $6d, $f1, $67, $f9, $67, $f9        ;; 0a:5856 ????????
    db   $a7, $9e, $a7, $9f, $c7, $bf, $cb, $bb        ;; 0a:585e ????????
    db   $d5, $73, $ed, $63, $ed, $63, $ed, $63        ;; 0a:5866 ????????
    db   $b5, $45, $9d, $65, $cf, $b5, $e3, $de        ;; 0a:586e ????????
    db   $f1, $ef, $f8, $f7, $cc, $ff, $b7, $cf        ;; 0a:5876 ????????
    db   $f0, $af, $f0, $af, $e1, $bf, $c3, $7f        ;; 0a:587e ????????
    db   $87, $ff, $0f, $ff, $33, $ff, $ed, $f3        ;; 0a:5886 ????????
    db   $e3, $fd, $e3, $fd, $e1, $ff, $f1, $df        ;; 0a:588e ????????
    db   $da, $8e, $b6, $8e, $b6, $8e, $b6, $8e        ;; 0a:5896 ????????
    db   $ed, $63, $79, $37, $79, $37, $b1, $bf        ;; 0a:589e ????????
    db   $b9, $9f, $b9, $9f, $5f, $4f, $5f, $4f        ;; 0a:58a6 ????????
    db   $fe, $80, $fe, $e4, $ff, $c3, $fe, $a0        ;; 0a:58ae ????????
    db   $f8, $e0, $fc, $e0, $fe, $f0, $ff, $f0        ;; 0a:58b6 ????????
    db   $07, $01, $67, $27, $c3, $c3, $05, $05        ;; 0a:58be ????????
    db   $07, $07, $0f, $07, $0f, $0f, $1f, $0f        ;; 0a:58c6 ????????
    db   $a6, $9e, $ed, $9c, $ed, $9c, $cd, $bd        ;; 0a:58ce ????????
    db   $db, $b9, $9b, $f9, $f7, $f3, $f7, $f3        ;; 0a:58d6 ????????
    db   $6f, $27, $6f, $27, $f7, $33, $db, $39        ;; 0a:58de ????????
    db   $9b, $79, $37, $f3, $6f, $e6, $df, $cc        ;; 0a:58e6 ????????
    db   $ff, $fb, $ff, $bf, $7f, $ff, $df, $df        ;; 0a:58ee ????????
    db   $8f, $87, $f4, $8c, $6b, $f8, $9b, $78        ;; 0a:58f6 ????????
    db   $ff, $5f, $fe, $fe, $ff, $fe, $fb, $fb        ;; 0a:58fe ????????
    db   $e5, $e3, $a9, $67, $df, $36, $1e, $f9        ;; 0a:5906 ????????
    db   $ef, $e7, $ed, $e7, $d9, $cb, $b5, $93        ;; 0a:590e ????????
    db   $b9, $97, $db, $cf, $6f, $e7, $37, $f3        ;; 0a:5916 ????????
    db   $ff, $00, $ff, $00, $ff, $01, $fe, $02        ;; 0a:591e ????????
    db   $fc, $04, $f8, $08, $f1, $10, $f2, $10        ;; 0a:5926 ????????
    db   $f8, $38, $e0, $60, $95, $80, $2a, $00        ;; 0a:592e ????????
    db   $57, $00, $bf, $00, $71, $0f, $cf, $3f        ;; 0a:5936 ????????
    db   $17, $00, $af, $00, $56, $01, $ff, $03        ;; 0a:593e ????????
    db   $fc, $07, $fd, $02, $d6, $c1, $6b, $80        ;; 0a:5946 ????????
    db   $e7, $1e, $0f, $fc, $ff, $f8, $3f, $f8        ;; 0a:594e ????????
    db   $9f, $78, $4f, $bc, $af, $5c, $d7, $2e        ;; 0a:5956 ????????
    db   $e5, $20, $ee, $21, $cd, $43, $db, $47        ;; 0a:595e ????????
    db   $d6, $4f, $9d, $8f, $a9, $9f, $b1, $9f        ;; 0a:5966 ????????
    db   $3f, $ff, $ed, $f3, $d5, $e3, $a5, $c3        ;; 0a:596e ????????
    db   $ad, $c3, $59, $87, $71, $8f, $7f, $ff        ;; 0a:5976 ????????
    db   $c0, $c0, $fc, $fc, $bb, $87, $bc, $83        ;; 0a:597e ????????
    db   $be, $81, $df, $bf, $a1, $e0, $df, $ce        ;; 0a:5986 ????????
    db   $e7, $1e, $33, $0e, $9b, $86, $ed, $e3        ;; 0a:598e ????????
    db   $75, $f3, $75, $f3, $bf, $f9, $ff, $79        ;; 0a:5996 ????????
    db   $a1, $9f, $b3, $8f, $b3, $8f, $b7, $8f        ;; 0a:599e ????????
    db   $b7, $8f, $e6, $9e, $ed, $9c, $ef, $9e        ;; 0a:59a6 ????????
    db   $80, $80, $3f, $31, $6f, $58, $5d, $7b        ;; 0a:59ae ????????
    db   $7b, $37, $f7, $8e, $ff, $7b, $ff, $e1        ;; 0a:59b6 ????????
    db   $37, $13, $fd, $93, $fb, $1f, $ff, $ce        ;; 0a:59be ????????
    db   $7e, $61, $3f, $3f, $bd, $05, $c6, $c2        ;; 0a:59c6 ????????
    db   $ff, $59, $f7, $5c, $ff, $54, $7f, $d4        ;; 0a:59ce ????????
    db   $f7, $90, $f6, $11, $d6, $31, $94, $f3        ;; 0a:59d6 ????????
    db   $ef, $5f, $f7, $6e, $f6, $3e, $fa, $3e        ;; 0a:59de ????????
    db   $ed, $6f, $9f, $86, $33, $0f, $67, $1f        ;; 0a:59e6 ????????
    db   $ff, $d8, $fc, $70, $fe, $70, $ff, $60        ;; 0a:59ee ????????
    db   $ff, $72, $ff, $f7, $bf, $bf, $bf, $9f        ;; 0a:59f6 ????????
    db   $07, $07, $07, $03, $03, $01, $07, $01        ;; 0a:59fe ????????
    db   $bf, $2b, $ff, $6f, $fe, $fe, $fd, $fc        ;; 0a:5a06 ????????
    db   $d4, $73, $ed, $a3, $eb, $e7, $fb, $e7        ;; 0a:5a0e ????????
    db   $f7, $cf, $f7, $8f, $ee, $1e, $dd, $3c        ;; 0a:5a16 ????????
    db   $6f, $1f, $cf, $3f, $df, $3f, $9f, $7f        ;; 0a:5a1e ????????
    db   $9f, $7f, $c0, $30, $e1, $00, $ff, $00        ;; 0a:5a26 ????????
    db   $af, $9f, $d7, $cf, $ff, $ff, $f8, $f8        ;; 0a:5a2e ????????
    db   $01, $00, $aa, $00, $57, $00, $fe, $01        ;; 0a:5a36 ????????
    db   $f3, $f0, $ce, $c1, $3d, $03, $7e, $0e        ;; 0a:5a3e ????????
    db   $71, $30, $ff, $00, $fa, $05, $00, $ff        ;; 0a:5a46 ????????
    db   $b3, $70, $66, $e1, $ce, $c1, $14, $0b        ;; 0a:5a4e ????????
    db   $e8, $17, $50, $af, $a0, $5f, $00, $ff        ;; 0a:5a56 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $01        ;; 0a:5a5e ????????
    db   $fe, $02, $fd, $04, $fb, $09, $fa, $1b        ;; 0a:5a66 ????????
    db   $ff, $1f, $e0, $60, $9f, $8f, $7a, $35        ;; 0a:5a6e ????????
    db   $da, $61, $b6, $c1, $67, $80, $67, $80        ;; 0a:5a76 ????????
    db   $ff, $f8, $ff, $06, $fd, $f3, $0e, $fd        ;; 0a:5a7e ????????
    db   $83, $7e, $41, $bf, $40, $bf, $20, $df        ;; 0a:5a86 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $80        ;; 0a:5a8e ????????
    db   $7f, $c0, $bf, $60, $df, $b0, $5f, $f8        ;; 0a:5a96 ????????
    db   $f6, $33, $f4, $57, $ec, $a7, $2c, $67        ;; 0a:5a9e ????????
    db   $dc, $47, $54, $cf, $d4, $cf, $d4, $cf        ;; 0a:5aa6 ????????
    db   $c7, $00, $c7, $00, $c7, $00, $c7, $00        ;; 0a:5aae ????????
    db   $c7, $07, $cf, $0d, $df, $19, $dd, $19        ;; 0a:5ab6 ????????
    db   $20, $df, $20, $df, $20, $df, $e0, $1f        ;; 0a:5abe ????????
    db   $f0, $ef, $f8, $b7, $fc, $9b, $bc, $9b        ;; 0a:5ac6 ????????
    db   $6f, $dc, $2f, $fa, $37, $ed, $34, $ef        ;; 0a:5ace ????????
    db   $3a, $e7, $3a, $e7, $3b, $e7, $3b, $e7        ;; 0a:5ad6 ????????
    db   $d6, $cf, $d6, $cf, $b7, $af, $b3, $af        ;; 0a:5ade ????????
    db   $a3, $bf, $b5, $9d, $bb, $99, $eb, $99        ;; 0a:5ae6 ????????
    db   $fd, $3d, $ff, $3f, $7f, $b7, $5d, $99        ;; 0a:5aee ????????
    db   $bf, $dd, $af, $cf, $d7, $e7, $ef, $f0        ;; 0a:5af6 ????????
    db   $be, $bd, $fe, $fd, $fe, $ed, $bc, $9b        ;; 0a:5afe ????????
    db   $fd, $bb, $f9, $f7, $f3, $ef, $e7, $1f        ;; 0a:5b06 ????????
    db   $73, $ef, $73, $ef, $f7, $ed, $c7, $fd        ;; 0a:5b0e ????????
    db   $c7, $fd, $ad, $fb, $dd, $bb, $b9, $97        ;; 0a:5b16 ????????
    db   $eb, $d9, $6f, $59, $4f, $79, $6d, $3b        ;; 0a:5b1e ????????
    db   $6d, $3b, $7d, $1b, $dd, $3b, $dd, $3b        ;; 0a:5b26 ????????
    db   $f8, $ff, $ff, $ff, $eb, $f7, $d3, $e3        ;; 0a:5b2e ????????
    db   $e3, $c1, $f7, $c1, $ff, $e0, $fc, $60        ;; 0a:5b36 ????????
    db   $1f, $ff, $ff, $ff, $7b, $07, $4d, $03        ;; 0a:5b3e ????????
    db   $07, $01, $87, $81, $0f, $03, $0e, $03        ;; 0a:5b46 ????????
    db   $bb, $97, $b3, $9e, $b3, $9e, $b5, $9c        ;; 0a:5b4e ????????
    db   $f5, $9c, $db, $b8, $da, $b9, $9a, $f9        ;; 0a:5b56 ????????
    db   $95, $77, $13, $f3, $37, $f3, $6f, $e7        ;; 0a:5b5e ????????
    db   $ef, $e7, $dd, $cf, $b9, $8e, $73, $1c        ;; 0a:5b66 ????????
    db   $fe, $70, $fe, $70, $bf, $38, $bf, $3c        ;; 0a:5b6e ????????
    db   $df, $9f, $ef, $8f, $f0, $c0, $ff, $70        ;; 0a:5b76 ????????
    db   $1e, $07, $1f, $0e, $3f, $16, $f6, $25        ;; 0a:5b7e ????????
    db   $ef, $c9, $fd, $f3, $1b, $07, $fe, $0f        ;; 0a:5b86 ????????
    db   $ba, $e9, $de, $c9, $dc, $cb, $ed, $e7        ;; 0a:5b8e ????????
    db   $ef, $e7, $b7, $f3, $33, $d1, $79, $88        ;; 0a:5b96 ????????
    db   $e0, $20, $c0, $40, $80, $80, $01, $00        ;; 0a:5b9e ????????
    db   $60, $20, $c0, $40, $80, $80, $00, $00        ;; 0a:5ba6 ????????
    db   $1f, $00, $7f, $00, $c1, $00, $0f, $00        ;; 0a:5bae ????????
    db   $1f, $00, $23, $01, $07, $03, $05, $06        ;; 0a:5bb6 ????????
    db   $ff, $03, $ff, $01, $ff, $00, $ff, $00        ;; 0a:5bbe ????????
    db   $ff, $c0, $ff, $e0, $ff, $ff, $03, $01        ;; 0a:5bc6 ????????
    db   $87, $fc, $c3, $3e, $e1, $1f, $f1, $0f        ;; 0a:5bce ????????
    db   $b0, $4f, $d8, $27, $c8, $37, $e1, $9f        ;; 0a:5bd6 ????????
    db   $08, $08, $30, $10, $70, $10, $60, $20        ;; 0a:5bde ????????
    db   $e1, $20, $c3, $41, $c3, $41, $c7, $41        ;; 0a:5be6 ????????
    db   $0f, $07, $0d, $06, $4f, $47, $9c, $8f        ;; 0a:5bee ????????
    db   $9f, $8f, $1f, $0c, $3f, $09, $3f, $0b        ;; 0a:5bf6 ????????
    db   $fe, $f9, $fe, $05, $ff, $f8, $00, $ff        ;; 0a:5bfe ????????
    db   $ff, $ff, $ff, $00, $ff, $ff, $ff, $80        ;; 0a:5c06 ????????
    db   $e2, $9e, $e7, $de, $69, $d9, $72, $f1        ;; 0a:5c0e ????????
    db   $fd, $fb, $e6, $7f, $ee, $df, $da, $ff        ;; 0a:5c16 ????????
    db   $c6, $42, $8e, $82, $8e, $82, $9e, $82        ;; 0a:5c1e ????????
    db   $9e, $82, $9e, $82, $de, $42, $ff, $21        ;; 0a:5c26 ????????
    db   $3f, $10, $7f, $10, $7f, $11, $7c, $18        ;; 0a:5c2e ????????
    db   $fc, $18, $f8, $18, $f8, $18, $f8, $98        ;; 0a:5c36 ????????
    db   $ff, $7f, $ff, $ff, $a5, $27, $1f, $1b        ;; 0a:5c3e ????????
    db   $0f, $0e, $7f, $7c, $ff, $00, $07, $00        ;; 0a:5c46 ????????
    db   $fe, $db, $fa, $db, $da, $db, $de, $4f        ;; 0a:5c4e ????????
    db   $ec, $47, $d4, $4f, $a8, $bf, $d1, $bf        ;; 0a:5c56 ????????
    db   $ff, $99, $ff, $47, $ff, $32, $ff, $0e        ;; 0a:5c5e ????????
    db   $ff, $02, $ff, $00, $ff, $00, $ff, $00        ;; 0a:5c66 ????????
    db   $f8, $f8, $cc, $0c, $d8, $80, $f8, $80        ;; 0a:5c6e ????????
    db   $fc, $40, $fc, $40, $fe, $20, $fc, $10        ;; 0a:5c76 ????????
    db   $03, $00, $03, $01, $03, $01, $03, $03        ;; 0a:5c7e ????????
    db   $07, $03, $0f, $06, $1e, $0c, $3c, $18        ;; 0a:5c86 ????????
    db   $a3, $ff, $cf, $ff, $dd, $ff, $83, $fe        ;; 0a:5c8e ????????
    db   $8f, $fc, $ff, $f0, $ff, $c0, $ff, $e0        ;; 0a:5c96 ????????
    db   $ff, $00, $ff, $00, $ff, $3e, $cb, $c7        ;; 0a:5c9e ????????
    db   $d6, $ce, $b6, $8e, $af, $9f, $ff, $ff        ;; 0a:5ca6 ????????
    db   $ff, $08, $ff, $3f, $df, $cf, $1f, $07        ;; 0a:5cae ????????
    db   $3f, $0f, $7f, $1f, $60, $00, $ff, $f8        ;; 0a:5cb6 ????????
    db   $f8, $70, $f9, $e1, $d3, $e3, $b6, $c6        ;; 0a:5cbe ????????
    db   $7c, $fc, $f1, $f0, $0e, $01, $f9, $07        ;; 0a:5cc6 ????????
    db   $ff, $90, $af, $9f, $28, $18, $5a, $39        ;; 0a:5cce ????????
    db   $b5, $73, $6d, $e3, $db, $c7, $bb, $87        ;; 0a:5cd6 ????????

data_0a_5cde:
    dw   `00000000                                     ;; 0a:5cde $00 $00
    dw   `00000000                                     ;; 0a:5ce0 $00 $00
    dw   `00000000                                     ;; 0a:5ce2 $00 $00
    dw   `30330000                                     ;; 0a:5ce4 $b0 $b0
    dw   `00000000                                     ;; 0a:5ce6 $00 $00
    dw   `03100000                                     ;; 0a:5ce8 $60 $40
    dw   `01000000                                     ;; 0a:5cea $40 $00
    dw   `00000000                                     ;; 0a:5cec $00 $00

    dw   `00000000                                     ;; 0a:5cee $00 $00
    dw   `00000000                                     ;; 0a:5cf0 $00 $00
    dw   `00000000                                     ;; 0a:5cf2 $00 $00
    dw   `33300000                                     ;; 0a:5cf4 $e0 $e0
    dw   `32130000                                     ;; 0a:5cf6 $b0 $d0
    dw   `03300000                                     ;; 0a:5cf8 $60 $60
    dw   `00000000                                     ;; 0a:5cfa $00 $00
    dw   `00000000                                     ;; 0a:5cfc $00 $00

    dw   `00000000                                     ;; 0a:5cfe $00 $00
    dw   `00000000                                     ;; 0a:5d00 $00 $00
    dw   `00000000                                     ;; 0a:5d02 $00 $00
    dw   `33033300                                     ;; 0a:5d04 $dc $dc
    dw   `00000000                                     ;; 0a:5d06 $00 $00
    dw   `00330000                                     ;; 0a:5d08 $30 $30
    dw   `00011000                                     ;; 0a:5d0a $18 $00
    dw   `00000000                                     ;; 0a:5d0c $00 $00

    dw   `00000000                                     ;; 0a:5d0e $00 $00
    dw   `00000000                                     ;; 0a:5d10 $00 $00
    dw   `00000000                                     ;; 0a:5d12 $00 $00
    dw   `03233000                                     ;; 0a:5d14 $58 $78
    dw   `32211300                                     ;; 0a:5d16 $9c $e4
    dw   `03333000                                     ;; 0a:5d18 $78 $78
    dw   `00000000                                     ;; 0a:5d1a $00 $00
    dw   `00000000                                     ;; 0a:5d1c $00 $00

    dw   `00000000                                     ;; 0a:5d1e $00 $00
    dw   `00000000                                     ;; 0a:5d20 $00 $00
    dw   `30333330                                     ;; 0a:5d22 $be $be
    dw   `00000000                                     ;; 0a:5d24 $00 $00
    dw   `00330000                                     ;; 0a:5d26 $30 $30
    dw   `00000000                                     ;; 0a:5d28 $00 $00
    dw   `00000000                                     ;; 0a:5d2a $00 $00
    dw   `00000000                                     ;; 0a:5d2c $00 $00

    dw   `00000000                                     ;; 0a:5d2e $00 $00
    dw   `00000000                                     ;; 0a:5d30 $00 $00
    dw   `32333300                                     ;; 0a:5d32 $bc $fc
    dw   `32221130                                     ;; 0a:5d34 $8e $f2
    dw   `03333300                                     ;; 0a:5d36 $7c $7c
    dw   `00000000                                     ;; 0a:5d38 $00 $00
    dw   `00000000                                     ;; 0a:5d3a $00 $00
    dw   `00000000                                     ;; 0a:5d3c $00 $00

    dw   `00000000                                     ;; 0a:5d3e $00 $00
    dw   `30333000                                     ;; 0a:5d40 $b8 $b8
    dw   `00000000                                     ;; 0a:5d42 $00 $00
    dw   `03300000                                     ;; 0a:5d44 $60 $60
    dw   `00000000                                     ;; 0a:5d46 $00 $00
    dw   `00000000                                     ;; 0a:5d48 $00 $00
    dw   `00000000                                     ;; 0a:5d4a $00 $00
    dw   `00000000                                     ;; 0a:5d4c $00 $00

    dw   `00000000                                     ;; 0a:5d4e $00 $00
    dw   `32330000                                     ;; 0a:5d50 $b0 $f0
    dw   `32113000                                     ;; 0a:5d52 $b8 $c8
    dw   `03330000                                     ;; 0a:5d54 $70 $70
    dw   `00000000                                     ;; 0a:5d56 $00 $00
    dw   `00000000                                     ;; 0a:5d58 $00 $00
    dw   `00000000                                     ;; 0a:5d5a $00 $00
    dw   `00000000                                     ;; 0a:5d5c $00 $00

    dw   `00000000                                     ;; 0a:5d5e $00 $00
    dw   `00000000                                     ;; 0a:5d60 $00 $00
    dw   `00000000                                     ;; 0a:5d62 $00 $00
    dw   `00000000                                     ;; 0a:5d64 $00 $00
    dw   `00000000                                     ;; 0a:5d66 $00 $00
    dw   `00030300                                     ;; 0a:5d68 $14 $14
    dw   `00000000                                     ;; 0a:5d6a $00 $00
    dw   `00003000                                     ;; 0a:5d6c $08 $08

    dw   `00000000                                     ;; 0a:5d6e $00 $00
    dw   `00000000                                     ;; 0a:5d70 $00 $00
    dw   `00000000                                     ;; 0a:5d72 $00 $00
    dw   `00000000                                     ;; 0a:5d74 $00 $00
    dw   `00000000                                     ;; 0a:5d76 $00 $00
    dw   `00033000                                     ;; 0a:5d78 $18 $18
    dw   `00032300                                     ;; 0a:5d7a $14 $1c
    dw   `00003000                                     ;; 0a:5d7c $08 $08

    dw   `00000000                                     ;; 0a:5d7e $00 $00
    dw   `00000011                                     ;; 0a:5d80 $03 $00
    dw   `00001111                                     ;; 0a:5d82 $0f $00
    dw   `00011222                                     ;; 0a:5d84 $18 $07
    dw   `00112222                                     ;; 0a:5d86 $30 $0f
    dw   `00122222                                     ;; 0a:5d88 $20 $1f
    dw   `01122222                                     ;; 0a:5d8a $60 $1f
    dw   `01122222                                     ;; 0a:5d8c $60 $1f

    dw   `00000000                                     ;; 0a:5d8e $00 $00
    dw   `11000000                                     ;; 0a:5d90 $c0 $00
    dw   `11110000                                     ;; 0a:5d92 $f0 $00
    dw   `21111000                                     ;; 0a:5d94 $78 $80
    dw   `22111100                                     ;; 0a:5d96 $3c $c0
    dw   `22211100                                     ;; 0a:5d98 $1c $e0
    dw   `22211110                                     ;; 0a:5d9a $1e $e0
    dw   `22211110                                     ;; 0a:5d9c $1e $e0

    dw   `01122222                                     ;; 0a:5d9e $60 $1f
    dw   `01112222                                     ;; 0a:5da0 $70 $0f
    dw   `00111222                                     ;; 0a:5da2 $38 $07
    dw   `00111111                                     ;; 0a:5da4 $3f $00
    dw   `00011111                                     ;; 0a:5da6 $1f $00
    dw   `00001111                                     ;; 0a:5da8 $0f $00
    dw   `00000011                                     ;; 0a:5daa $03 $00
    dw   `00000000                                     ;; 0a:5dac $00 $00

    dw   `22211110                                     ;; 0a:5dae $1e $e0
    dw   `22111110                                     ;; 0a:5db0 $3e $c0
    dw   `21111100                                     ;; 0a:5db2 $7c $80
    dw   `11111100                                     ;; 0a:5db4 $fc $00
    dw   `11111000                                     ;; 0a:5db6 $f8 $00
    dw   `11110000                                     ;; 0a:5db8 $f0 $00
    dw   `11000000                                     ;; 0a:5dba $c0 $00
    dw   `00000000                                     ;; 0a:5dbc $00 $00

    dw   `00000000                                     ;; 0a:5dbe $00 $00
    dw   `00000000                                     ;; 0a:5dc0 $00 $00
    dw   `00000000                                     ;; 0a:5dc2 $00 $00
    dw   `00000000                                     ;; 0a:5dc4 $00 $00
    dw   `00000000                                     ;; 0a:5dc6 $00 $00
    dw   `00000000                                     ;; 0a:5dc8 $00 $00
    dw   `02222200                                     ;; 0a:5dca $00 $7c
    dw   `00222220                                     ;; 0a:5dcc $00 $3e

    dw   `00000000                                     ;; 0a:5dce $00 $00
    dw   `00000000                                     ;; 0a:5dd0 $00 $00
    dw   `00000000                                     ;; 0a:5dd2 $00 $00
    dw   `30333300                                     ;; 0a:5dd4 $bc $bc
    dw   `00000000                                     ;; 0a:5dd6 $00 $00
    dw   `03330000                                     ;; 0a:5dd8 $70 $70
    dw   `01100000                                     ;; 0a:5dda $60 $00
    dw   `00000000                                     ;; 0a:5ddc $00 $00

    dw   `00000000                                     ;; 0a:5dde $00 $00
    dw   `00000000                                     ;; 0a:5de0 $00 $00
    dw   `00000000                                     ;; 0a:5de2 $00 $00
    dw   `32333000                                     ;; 0a:5de4 $b8 $f8
    dw   `32211300                                     ;; 0a:5de6 $9c $e4
    dw   `03333000                                     ;; 0a:5de8 $78 $78
    dw   `00000000                                     ;; 0a:5dea $00 $00
    dw   `00000000                                     ;; 0a:5dec $00 $00

    dw   `33333333                                     ;; 0a:5dee $ff $ff
    dw   `22133321                                     ;; 0a:5df0 $3d $de
    dw   `33211332                                     ;; 0a:5df2 $de $e7
    dw   `23322133                                     ;; 0a:5df4 $67 $fb
    dw   `23333313                                     ;; 0a:5df6 $7f $fd
    dw   `33211133                                     ;; 0a:5df8 $df $e3
    dw   `32133311                                     ;; 0a:5dfa $bf $dc
    dw   `21321331                                     ;; 0a:5dfc $6f $b6

    dw   `33000000                                     ;; 0a:5dfe $c0 $c0
    dw   `33333330                                     ;; 0a:5e00 $fe $fe
    dw   `22333333                                     ;; 0a:5e02 $3f $ff
    dw   `21111333                                     ;; 0a:5e04 $7f $87
    dw   `11333331                                     ;; 0a:5e06 $ff $3e
    dw   `33333313                                     ;; 0a:5e08 $ff $fd
    dw   `33111133                                     ;; 0a:5e0a $ff $c3
    dw   `13333333                                     ;; 0a:5e0c $ff $7f

    dw   `00033333                                     ;; 0a:5e0e $1f $1f
    dw   `00333333                                     ;; 0a:5e10 $3f $3f
    dw   `33322222                                     ;; 0a:5e12 $e0 $ff
    dw   `31113333                                     ;; 0a:5e14 $ff $8f
    dw   `11331111                                     ;; 0a:5e16 $ff $30
    dw   `33311111                                     ;; 0a:5e18 $ff $e0
    dw   `33331111                                     ;; 0a:5e1a $ff $f0
    dw   `33333111                                     ;; 0a:5e1c $ff $f8

    dw   `31132233                                     ;; 0a:5e1e $f3 $9f
    dw   `33311223                                     ;; 0a:5e20 $f9 $e7
    dw   `22233122                                     ;; 0a:5e22 $1c $fb
    dw   `33321312                                     ;; 0a:5e24 $ee $f5
    dw   `22133131                                     ;; 0a:5e26 $3f $da
    dw   `12211313                                     ;; 0a:5e28 $9f $65
    dw   `11222133                                     ;; 0a:5e2a $c7 $3b
    dw   `11122213                                     ;; 0a:5e2c $e3 $1d

    dw   `33330000                                     ;; 0a:5e2e $f0 $f0
    dw   `31233000                                     ;; 0a:5e30 $d8 $b8
    dw   `11223300                                     ;; 0a:5e32 $cc $3c
    dw   `11122300                                     ;; 0a:5e34 $e4 $1c
    dw   `11122230                                     ;; 0a:5e36 $e2 $1e
    dw   `33112230                                     ;; 0a:5e38 $f2 $ce
    dw   `31311230                                     ;; 0a:5e3a $fa $a6
    dw   `31231130                                     ;; 0a:5e3c $de $b2

    dw   `33231330                                     ;; 0a:5e3e $de $f6
    dw   `31223330                                     ;; 0a:5e40 $ce $be
    dw   `33323230                                     ;; 0a:5e42 $ea $fe
    dw   `33323230                                     ;; 0a:5e44 $ea $fe
    dw   `31123130                                     ;; 0a:5e46 $ee $9a
    dw   `31113130                                     ;; 0a:5e48 $fe $8a
    dw   `33113330                                     ;; 0a:5e4a $fe $ce
    dw   `33333333                                     ;; 0a:5e4c $ff $ff

    dw   `00003333                                     ;; 0a:5e4e $0f $0f
    dw   `00003111                                     ;; 0a:5e50 $0f $08
    dw   `00001113                                     ;; 0a:5e52 $0f $01
    dw   `00003333                                     ;; 0a:5e54 $0f $0f
    dw   `00003333                                     ;; 0a:5e56 $0f $0f
    dw   `00003133                                     ;; 0a:5e58 $0f $0b
    dw   `00003113                                     ;; 0a:5e5a $0f $09
    dw   `00003111                                     ;; 0a:5e5c $0f $08

    dw   `00003333                                     ;; 0a:5e5e $0f $0f
    dw   `00003222                                     ;; 0a:5e60 $08 $0f
    dw   `00002223                                     ;; 0a:5e62 $01 $0f
    dw   `00003333                                     ;; 0a:5e64 $0f $0f
    dw   `00003333                                     ;; 0a:5e66 $0f $0f
    dw   `00003133                                     ;; 0a:5e68 $0f $0b
    dw   `00003113                                     ;; 0a:5e6a $0f $09
    dw   `00003111                                     ;; 0a:5e6c $0f $08


jp_0a_5e6e:
    ldh  A, [rLCDC]                                    ;; 0a:5e6e $f0 $40
    bit  7, A                                          ;; 0a:5e70 $cb $7f
    jr   Z, .jr_0a_5e7c                                ;; 0a:5e72 $28 $08
    call call_00_01b3                                  ;; 0a:5e74 $cd $b3 $01
    ld   B, $01                                        ;; 0a:5e77 $06 $01
    call call_0a_5fe2                                  ;; 0a:5e79 $cd $e2 $5f
.jr_0a_5e7c:
    rst  rst_00_0008                                   ;; 0a:5e7c $cf
    db   $00                                           ;; 0a:5e7d .
    di                                                 ;; 0a:5e7e $f3
    ld   HL, wC100                                     ;; 0a:5e7f $21 $00 $c1
    ld   BC, $100                                      ;; 0a:5e82 $01 $00 $01
    xor  A, A                                          ;; 0a:5e85 $af
    call memset_                                       ;; 0a:5e86 $cd $8c $01
    ei                                                 ;; 0a:5e89 $fb
    ld   A, $06                                        ;; 0a:5e8a $3e $06
    ld   [wC16E], A                                    ;; 0a:5e8c $ea $6e $c1
    ld   A, $18                                        ;; 0a:5e8f $3e $18
    ldh  [rLYC], A                                     ;; 0a:5e91 $e0 $45
    ld   A, $40                                        ;; 0a:5e93 $3e $40
    ldh  [rSTAT], A                                    ;; 0a:5e95 $e0 $41
    xor  A, A                                          ;; 0a:5e97 $af
    ld   [wC2E9], A                                    ;; 0a:5e98 $ea $e9 $c2
    ld   [wC2EA], A                                    ;; 0a:5e9b $ea $ea $c2
    inc  A                                             ;; 0a:5e9e $3c
    ld   [wC2E8], A                                    ;; 0a:5e9f $ea $e8 $c2
    call call_0a_7797                                  ;; 0a:5ea2 $cd $97 $77
    call call_0a_7c3d                                  ;; 0a:5ea5 $cd $3d $7c
    call call_0a_7c6a                                  ;; 0a:5ea8 $cd $6a $7c
    call call_0a_7d23                                  ;; 0a:5eab $cd $23 $7d
    call call_0a_7dfe                                  ;; 0a:5eae $cd $fe $7d
    ret                                                ;; 0a:5eb1 $c9

call_0a_5eb2:
    ld   E, $00                                        ;; 0a:5eb2 $1e $00
    ld   D, $01                                        ;; 0a:5eb4 $16 $01
    ld   A, E                                          ;; 0a:5eb6 $7b
    ld   HL, wC2E2                                     ;; 0a:5eb7 $21 $e2 $c2
    ld   [HL+], A                                      ;; 0a:5eba $22
    ld   [HL+], A                                      ;; 0a:5ebb $22
    ld   A, D                                          ;; 0a:5ebc $7a
    ld   [HL+], A                                      ;; 0a:5ebd $22
    ld   [HL+], A                                      ;; 0a:5ebe $22
    ret                                                ;; 0a:5ebf $c9

call_0a_5ec0:
    xor  A, A                                          ;; 0a:5ec0 $af
    ld   HL, wC2E2                                     ;; 0a:5ec1 $21 $e2 $c2
    ld   [HL+], A                                      ;; 0a:5ec4 $22
    ld   [HL+], A                                      ;; 0a:5ec5 $22
    ld   [HL+], A                                      ;; 0a:5ec6 $22
    ld   [HL+], A                                      ;; 0a:5ec7 $22
    ret                                                ;; 0a:5ec8 $c9

call_0a_5ec9:
    ld   B, $78                                        ;; 0a:5ec9 $06 $78

call_0a_5ecb:
    push BC                                            ;; 0a:5ecb $c5
    call call_00_0399                                  ;; 0a:5ecc $cd $99 $03
    pop  BC                                            ;; 0a:5ecf $c1
    jp   jp_0a_5f09                                    ;; 0a:5ed0 $c3 $09 $5f

call_0a_5ed3:
    push HL                                            ;; 0a:5ed3 $e5
    call call_0a_5f14                                  ;; 0a:5ed4 $cd $14 $5f
    pop  HL                                            ;; 0a:5ed7 $e1
    call call_0a_5eea                                  ;; 0a:5ed8 $cd $ea $5e
    ld   E, [HL]                                       ;; 0a:5edb $5e
    inc  HL                                            ;; 0a:5edc $23
    ld   D, [HL]                                       ;; 0a:5edd $56
    inc  HL                                            ;; 0a:5ede $23
    push HL                                            ;; 0a:5edf $e5
    push DE                                            ;; 0a:5ee0 $d5
    pop  HL                                            ;; 0a:5ee1 $e1
    call call_00_02c4                                  ;; 0a:5ee2 $cd $c4 $02
    pop  HL                                            ;; 0a:5ee5 $e1
    call call_0a_5eea                                  ;; 0a:5ee6 $cd $ea $5e
    ret                                                ;; 0a:5ee9 $c9

call_0a_5eea:
    ld   A, [HL+]                                      ;; 0a:5eea $2a
    ldh  [hFF8B], A                                    ;; 0a:5eeb $e0 $8b
    ld   C, A                                          ;; 0a:5eed $4f
    ld   A, [HL+]                                      ;; 0a:5eee $2a
    ldh  [hFF8C], A                                    ;; 0a:5eef $e0 $8c
    or   A, A                                          ;; 0a:5ef1 $b7
    ret  Z                                             ;; 0a:5ef2 $c8
    ld   C, [HL]                                       ;; 0a:5ef3 $4e
    inc  HL                                            ;; 0a:5ef4 $23
    ld   B, [HL]                                       ;; 0a:5ef5 $46
    inc  HL                                            ;; 0a:5ef6 $23
    ld   E, [HL]                                       ;; 0a:5ef7 $5e
    inc  HL                                            ;; 0a:5ef8 $23
    ld   D, [HL]                                       ;; 0a:5ef9 $56
    inc  HL                                            ;; 0a:5efa $23
    push HL                                            ;; 0a:5efb $e5
    ldh  A, [hFF8B]                                    ;; 0a:5efc $f0 $8b
    ld   L, A                                          ;; 0a:5efe $6f
    ldh  A, [hFF8C]                                    ;; 0a:5eff $f0 $8c
    ld   H, A                                          ;; 0a:5f01 $67
    call memcpyVRAM_                                   ;; 0a:5f02 $cd $5f $01
    pop  HL                                            ;; 0a:5f05 $e1
    ret                                                ;; 0a:5f06 $c9

call_0a_5f07:
    ld   B, $01                                        ;; 0a:5f07 $06 $01

jp_0a_5f09:
    push BC                                            ;; 0a:5f09 $c5
    ld   B, $01                                        ;; 0a:5f0a $06 $01
    call call_00_01bf                                  ;; 0a:5f0c $cd $bf $01
    pop  BC                                            ;; 0a:5f0f $c1
    dec  B                                             ;; 0a:5f10 $05
    jr   NZ, jp_0a_5f09                                ;; 0a:5f11 $20 $f6
    ret                                                ;; 0a:5f13 $c9

call_0a_5f14:
    xor  A, A                                          ;; 0a:5f14 $af
    ldh  [rIF], A                                      ;; 0a:5f15 $e0 $0f
    ld   A, $03                                        ;; 0a:5f17 $3e $03
    ldh  [rIE], A                                      ;; 0a:5f19 $e0 $ff
    call call_00_01b9                                  ;; 0a:5f1b $cd $b9 $01
    call call_00_01b3                                  ;; 0a:5f1e $cd $b3 $01
    call call_00_01b9                                  ;; 0a:5f21 $cd $b9 $01
    di                                                 ;; 0a:5f24 $f3
    ld   A, $ff                                        ;; 0a:5f25 $3e $ff
    ldh  [rOBP1], A                                    ;; 0a:5f27 $e0 $49
    ldh  [rOBP0], A                                    ;; 0a:5f29 $e0 $48
    ldh  [rBGP], A                                     ;; 0a:5f2b $e0 $47
    ld   [wBGP], A                                     ;; 0a:5f2d $ea $d9 $c0
    call call_0a_5fab                                  ;; 0a:5f30 $cd $ab $5f
    xor  A, A                                          ;; 0a:5f33 $af
    ldh  [rIF], A                                      ;; 0a:5f34 $e0 $0f
    ld   A, $03                                        ;; 0a:5f36 $3e $03
    ldh  [rIE], A                                      ;; 0a:5f38 $e0 $ff
    call call_00_01b9                                  ;; 0a:5f3a $cd $b9 $01
    ld   HL, data_0a_7355                              ;; 0a:5f3d $21 $55 $73
    ld   BC, $30                                       ;; 0a:5f40 $01 $30 $00
    ld   DE, $9010                                     ;; 0a:5f43 $11 $10 $90
    call memcpyVRAM_                                   ;; 0a:5f46 $cd $5f $01
    ld   HL, $9800                                     ;; 0a:5f49 $21 $00 $98
    ld   BC, $400                                      ;; 0a:5f4c $01 $00 $04
    xor  A, A                                          ;; 0a:5f4f $af
    call memsetVRAM_                                   ;; 0a:5f50 $cd $62 $01
    xor  A, A                                          ;; 0a:5f53 $af
    ld   [wC151], A                                    ;; 0a:5f54 $ea $51 $c1
    ldh  [rSCX], A                                     ;; 0a:5f57 $e0 $43
    ld   [wC152], A                                    ;; 0a:5f59 $ea $52 $c1
    ldh  [rSCY], A                                     ;; 0a:5f5c $e0 $42
    ld   HL, wC15B                                     ;; 0a:5f5e $21 $5b $c1
    ld   [HL+], A                                      ;; 0a:5f61 $22
    ld   [HL+], A                                      ;; 0a:5f62 $22
    ld   [HL+], A                                      ;; 0a:5f63 $22
    ld   [HL+], A                                      ;; 0a:5f64 $22
    ld   A, $90                                        ;; 0a:5f65 $3e $90
    ldh  [rWY], A                                      ;; 0a:5f67 $e0 $4a
    call call_00_0195                                  ;; 0a:5f69 $cd $95 $01
    call call_00_039c                                  ;; 0a:5f6c $cd $9c $03
    call call_00_0177                                  ;; 0a:5f6f $cd $77 $01
    ret                                                ;; 0a:5f72 $c9

call_0a_5f73:
    ld   A, E                                          ;; 0a:5f73 $7b
    ldh  [hFF8D], A                                    ;; 0a:5f74 $e0 $8d
    ld   A, D                                          ;; 0a:5f76 $7a
    ldh  [hFF8E], A                                    ;; 0a:5f77 $e0 $8e
    ld   HL, wC540                                     ;; 0a:5f79 $21 $40 $c5
    ld   A, [HL]                                       ;; 0a:5f7c $7e
    cp   A, $18                                        ;; 0a:5f7d $fe $18
    ccf                                                ;; 0a:5f7f $3f
    ret  C                                             ;; 0a:5f80 $d8
    inc  [HL]                                          ;; 0a:5f81 $34
    call call_00_0177                                  ;; 0a:5f82 $cd $77 $01
    ld   DE, wC540                                     ;; 0a:5f85 $11 $40 $c5
    ld   A, [DE]                                       ;; 0a:5f88 $1a
    add  A, $40                                        ;; 0a:5f89 $c6 $40
    ld   E, A                                          ;; 0a:5f8b $5f
    ld   A, B                                          ;; 0a:5f8c $78
    ld   [DE], A                                       ;; 0a:5f8d $12
    ldh  A, [hFF8B]                                    ;; 0a:5f8e $f0 $8b
    ld   E, A                                          ;; 0a:5f90 $5f
    ldh  A, [hFF8C]                                    ;; 0a:5f91 $f0 $8c
    ld   D, A                                          ;; 0a:5f93 $57
    ld   A, $0b                                        ;; 0a:5f94 $3e $0b
    add  A, C                                          ;; 0a:5f96 $81
    ld   L, A                                          ;; 0a:5f97 $6f
    call copy_de_hl_11_                                ;; 0a:5f98 $cd $86 $01
    call copy_de_hl_11_                                ;; 0a:5f9b $cd $86 $01
    ldh  A, [hFF8D]                                    ;; 0a:5f9e $f0 $8d
    ld   E, A                                          ;; 0a:5fa0 $5f
    ldh  A, [hFF8E]                                    ;; 0a:5fa1 $f0 $8e
    ld   D, A                                          ;; 0a:5fa3 $57
    ld   L, C                                          ;; 0a:5fa4 $69
    inc  L                                             ;; 0a:5fa5 $2c
    call copy_de_hl_4_                                 ;; 0a:5fa6 $cd $83 $01
    or   A, A                                          ;; 0a:5fa9 $b7
    ret                                                ;; 0a:5faa $c9

call_0a_5fab:
    ld   A, $e3                                        ;; 0a:5fab $3e $e3
    ld   [wLCDC], A                                    ;; 0a:5fad $ea $da $c0
    ld   B, A                                          ;; 0a:5fb0 $47
    ldh  A, [rLCDC]                                    ;; 0a:5fb1 $f0 $40
    and  A, $80                                        ;; 0a:5fb3 $e6 $80
    jr   Z, .jr_0a_5fc1                                ;; 0a:5fb5 $28 $0a
.jr_0a_5fb7:
    ldh  A, [rLY]                                      ;; 0a:5fb7 $f0 $44
    cp   A, $91                                        ;; 0a:5fb9 $fe $91
    jr   C, .jr_0a_5fb7                                ;; 0a:5fbb $38 $fa
    cp   A, $97                                        ;; 0a:5fbd $fe $97
    jr   NC, .jr_0a_5fb7                               ;; 0a:5fbf $30 $f6
.jr_0a_5fc1:
    ld   A, B                                          ;; 0a:5fc1 $78
    ldh  [rLCDC], A                                    ;; 0a:5fc2 $e0 $40
    ret                                                ;; 0a:5fc4 $c9

call_0a_5fc5:
    ld   [wBGP], A                                     ;; 0a:5fc5 $ea $d9 $c0
    push BC                                            ;; 0a:5fc8 $c5
    call call_00_01bf                                  ;; 0a:5fc9 $cd $bf $01
    pop  BC                                            ;; 0a:5fcc $c1
    ret                                                ;; 0a:5fcd $c9

call_0a_5fce:
    ld   B, $06                                        ;; 0a:5fce $06 $06

call_0a_5fd0:
    ld   A, $bf                                        ;; 0a:5fd0 $3e $bf
    call call_0a_5fc5                                  ;; 0a:5fd2 $cd $c5 $5f
    ld   A, $7b                                        ;; 0a:5fd5 $3e $7b
    call call_0a_5fc5                                  ;; 0a:5fd7 $cd $c5 $5f
    ld   A, $27                                        ;; 0a:5fda $3e $27
    call call_0a_5fc5                                  ;; 0a:5fdc $cd $c5 $5f
    ret                                                ;; 0a:5fdf $c9

call_0a_5fe0:
    ld   B, $06                                        ;; 0a:5fe0 $06 $06

call_0a_5fe2:
    ld   A, $27                                        ;; 0a:5fe2 $3e $27
    call call_0a_5fc5                                  ;; 0a:5fe4 $cd $c5 $5f
    ld   A, $7b                                        ;; 0a:5fe7 $3e $7b
    call call_0a_5fc5                                  ;; 0a:5fe9 $cd $c5 $5f
    ld   A, $bf                                        ;; 0a:5fec $3e $bf
    call call_0a_5fc5                                  ;; 0a:5fee $cd $c5 $5f
    ld   A, $ff                                        ;; 0a:5ff1 $3e $ff
    call call_0a_5fc5                                  ;; 0a:5ff3 $cd $c5 $5f
    ret                                                ;; 0a:5ff6 $c9
    db   $cd, $d3, $5e, $3e, $d0, $e0, $49, $e0        ;; 0a:5ff7 ????????
    db   $48, $3e, $27, $e0, $47, $ea, $d9, $c0        ;; 0a:5fff ????????
    db   $cd, $07, $5f, $fa, $c1, $c0, $e6, $ff        ;; 0a:6007 ????????
    db   $28, $f6, $c9                                 ;; 0a:600f ???

call_0a_6012:
    xor  A, A                                          ;; 0a:6012 $af
    ld   [wDF9A], A                                    ;; 0a:6013 $ea $9a $df
    ld   A, L                                          ;; 0a:6016 $7d
    ld   [wDF9B], A                                    ;; 0a:6017 $ea $9b $df
    ld   A, H                                          ;; 0a:601a $7c
    ld   [wDF9C], A                                    ;; 0a:601b $ea $9c $df
    ld   A, E                                          ;; 0a:601e $7b
    ld   [wDF9D], A                                    ;; 0a:601f $ea $9d $df
    ld   A, D                                          ;; 0a:6022 $7a
    ld   [wDF9E], A                                    ;; 0a:6023 $ea $9e $df
    ret                                                ;; 0a:6026 $c9

call_0a_6027:
    ld   HL, wDF9A                                     ;; 0a:6027 $21 $9a $df
    ld   A, [HL]                                       ;; 0a:602a $7e
    or   A, A                                          ;; 0a:602b $b7
    jr   Z, .jr_0a_6030                                ;; 0a:602c $28 $02
    dec  [HL]                                          ;; 0a:602e $35
    ret                                                ;; 0a:602f $c9
.jr_0a_6030:
    inc  HL                                            ;; 0a:6030 $23
    ld   E, [HL]                                       ;; 0a:6031 $5e
    inc  HL                                            ;; 0a:6032 $23
    ld   D, [HL]                                       ;; 0a:6033 $56
    ld   A, [DE]                                       ;; 0a:6034 $1a
    inc  DE                                            ;; 0a:6035 $13
    cp   A, $ff                                        ;; 0a:6036 $fe $ff
    scf                                                ;; 0a:6038 $37
    ret  Z                                             ;; 0a:6039 $c8
    ld   [wDF9A], A                                    ;; 0a:603a $ea $9a $df
    push DE                                            ;; 0a:603d $d5
    inc  HL                                            ;; 0a:603e $23
    ld   E, [HL]                                       ;; 0a:603f $5e
    inc  HL                                            ;; 0a:6040 $23
    ld   D, [HL]                                       ;; 0a:6041 $56
    pop  HL                                            ;; 0a:6042 $e1
    call call_0a_6050                                  ;; 0a:6043 $cd $50 $60
    ld   A, L                                          ;; 0a:6046 $7d
    ld   [wDF9B], A                                    ;; 0a:6047 $ea $9b $df
    ld   A, H                                          ;; 0a:604a $7c
    ld   [wDF9C], A                                    ;; 0a:604b $ea $9c $df
    jr   call_0a_6027                                  ;; 0a:604e $18 $d7

call_0a_6050:
    push DE                                            ;; 0a:6050 $d5
    ret                                                ;; 0a:6051 $c9
    db   $cb, $7b, $16, $00, $28, $01, $15, $69        ;; 0a:6052 ????????
    db   $2c, $18, $0b, $cb, $7b, $16, $00, $28        ;; 0a:605a ????????
    db   $01, $15, $3e, $03, $81, $6f, $7e, $83        ;; 0a:6062 ????????
    db   $22, $7e, $8a, $77, $c9, $06, $05, $20        ;; 0a:606a ?????...
    db   $3c, $84, $80, $80, $c3, $e3, $48, $79        ;; 0a:6072 ........
    db   $21, $e4, $87, $92, $1e, $48, $7a, $23        ;; 0a:607a ........
    db   $e4, $8f, $92, $3e, $48, $fa, $25, $e4        ;; 0a:6082 ........
    db   $97, $92, $5e, $49, $7a, $27, $e4, $9f        ;; 0a:608a ........
    db   $92, $7e, $49, $fa, $29, $e4, $a7, $92        ;; 0a:6092 ........
    db   $9e, $4a, $79, $20, $20, $20, $20, $24        ;; 0a:609a ........

data_0a_60a2:
    dw   `33333333                                     ;; 0a:60a2 $ff $ff
    dw   `00000030                                     ;; 0a:60a4 $02 $02
    dw   `00000030                                     ;; 0a:60a6 $02 $02
    dw   `02222000                                     ;; 0a:60a8 $00 $78
    dw   `02000000                                     ;; 0a:60aa $00 $40
    dw   `02000000                                     ;; 0a:60ac $00 $40
    dw   `02003100                                     ;; 0a:60ae $0c $48
    dw   `02000000                                     ;; 0a:60b0 $00 $40

    dw   `33333300                                     ;; 0a:60b2 $fc $fc
    dw   `00003301                                     ;; 0a:60b4 $0d $0c
    dw   `22220000                                     ;; 0a:60b6 $00 $f0
    dw   `20000000                                     ;; 0a:60b8 $00 $80
    dw   `20100302                                     ;; 0a:60ba $24 $85
    dw   `00000002                                     ;; 0a:60bc $00 $01
    dw   `02222002                                     ;; 0a:60be $00 $79
    dw   `02000002                                     ;; 0a:60c0 $00 $41

    dw   `03000000                                     ;; 0a:60c2 $40 $40
    dw   `03022222                                     ;; 0a:60c4 $40 $5f
    dw   `03020000                                     ;; 0a:60c6 $40 $50
    dw   `00000000                                     ;; 0a:60c8 $00 $00
    dw   `22222010                                     ;; 0a:60ca $02 $f8
    dw   `00000000                                     ;; 0a:60cc $00 $00
    dw   `01000030                                     ;; 0a:60ce $42 $02
    dw   `00031000                                     ;; 0a:60d0 $18 $10

    dw   `03333333                                     ;; 0a:60d2 $7f $7f
    dw   `03000003                                     ;; 0a:60d4 $41 $41
    dw   `03000303                                     ;; 0a:60d6 $45 $45
    dw   `00000003                                     ;; 0a:60d8 $01 $01
    dw   `22222200                                     ;; 0a:60da $00 $fc
    dw   `20000000                                     ;; 0a:60dc $00 $80
    dw   `20000000                                     ;; 0a:60de $00 $80
    dw   `20031000                                     ;; 0a:60e0 $18 $90

    dw   `02000030                                     ;; 0a:60e2 $02 $42
    dw   `02031000                                     ;; 0a:60e4 $18 $50
    dw   `00000000                                     ;; 0a:60e6 $00 $00
    dw   `01111003                                     ;; 0a:60e8 $79 $01
    dw   `01222000                                     ;; 0a:60ea $40 $38
    dw   `01212000                                     ;; 0a:60ec $50 $28
    dw   `01222000                                     ;; 0a:60ee $40 $38
    dw   `01232000                                     ;; 0a:60f0 $50 $38

    dw   `02000000                                     ;; 0a:60f2 $00 $40
    dw   `02003000                                     ;; 0a:60f4 $08 $48
    dw   `00000000                                     ;; 0a:60f6 $00 $00
    dw   `00000000                                     ;; 0a:60f8 $00 $00
    dw   `01111110                                     ;; 0a:60fa $7e $00
    dw   `01222220                                     ;; 0a:60fc $40 $3e
    dw   `01222220                                     ;; 0a:60fe $40 $3e
    dw   `01231220                                     ;; 0a:6100 $58 $36

    dw   `00000000                                     ;; 0a:6102 $00 $00
    dw   `11110000                                     ;; 0a:6104 $f0 $00
    dw   `12220030                                     ;; 0a:6106 $82 $72
    dw   `12220000                                     ;; 0a:6108 $80 $70
    dw   `12220000                                     ;; 0a:610a $80 $70
    dw   `22120111                                     ;; 0a:610c $27 $d0
    dw   `21220122                                     ;; 0a:610e $44 $b3
    dw   `22230132                                     ;; 0a:6110 $16 $f3

    dw   `20000003                                     ;; 0a:6112 $01 $81
    dw   `20000000                                     ;; 0a:6114 $00 $80
    dw   `20111100                                     ;; 0a:6116 $3c $80
    dw   `20122200                                     ;; 0a:6118 $20 $9c
    dw   `00022201                                     ;; 0a:611a $01 $1c
    dw   `11023202                                     ;; 0a:611c $c8 $1d
    dw   `22022202                                     ;; 0a:611e $00 $dd
    dw   `12032101                                     ;; 0a:6120 $95 $58

    dw   `01200000                                     ;; 0a:6122 $40 $20
    dw   `00001111                                     ;; 0a:6124 $0f $00
    dw   `11101222                                     ;; 0a:6126 $e8 $07
    dw   `22201222                                     ;; 0a:6128 $08 $e7
    dw   `23201223                                     ;; 0a:612a $49 $e7
    dw   `22201222                                     ;; 0a:612c $08 $e7
    dw   `22201222                                     ;; 0a:612e $08 $e7
    dw   `22201232                                     ;; 0a:6130 $0a $e7

    dw   `00022220                                     ;; 0a:6132 $00 $1e
    dw   `11022220                                     ;; 0a:6134 $c0 $1e
    dw   `22023000                                     ;; 0a:6136 $08 $d8
    dw   `22022011                                     ;; 0a:6138 $03 $d8
    dw   `22022012                                     ;; 0a:613a $02 $d9
    dw   `22022012                                     ;; 0a:613c $02 $d9
    dw   `12022012                                     ;; 0a:613e $82 $59
    dw   `22022012                                     ;; 0a:6140 $02 $d9

    dw   `22000000                                     ;; 0a:6142 $00 $c0
    dw   `22011111                                     ;; 0a:6144 $1f $c0
    dw   `00002222                                     ;; 0a:6146 $00 $0f
    dw   `11103232                                     ;; 0a:6148 $ea $0f
    dw   `22202222                                     ;; 0a:614a $00 $ef
    dw   `32202322                                     ;; 0a:614c $84 $ef
    dw   `22202200                                     ;; 0a:614e $00 $ec
    dw   `32202201                                     ;; 0a:6150 $81 $ec

    dw   `02022202                                     ;; 0a:6152 $00 $5d
    dw   `02020000                                     ;; 0a:6154 $00 $50
    dw   `02020111                                     ;; 0a:6156 $07 $50
    dw   `00000002                                     ;; 0a:6158 $00 $01
    dw   `01111102                                     ;; 0a:615a $7c $01
    dw   `01222202                                     ;; 0a:615c $40 $3d
    dw   `00000202                                     ;; 0a:615e $00 $05
    dw   `11110202                                     ;; 0a:6160 $f0 $05

    dw   `23201222                                     ;; 0a:6162 $48 $e7
    dw   `22201232                                     ;; 0a:6164 $0a $e7
    dw   `00000222                                     ;; 0a:6166 $00 $07
    dw   `03330222                                     ;; 0a:6168 $70 $77
    dw   `03100000                                     ;; 0a:616a $60 $40
    dw   `03103333                                     ;; 0a:616c $6f $4f
    dw   `03103111                                     ;; 0a:616e $6f $48
    dw   `03103111                                     ;; 0a:6170 $6f $48

    dw   `00000000                                     ;; 0a:6172 $00 $00
    dw   `03333330                                     ;; 0a:6174 $7e $7e
    dw   `03111110                                     ;; 0a:6176 $7e $40
    dw   `03111110                                     ;; 0a:6178 $7e $40
    dw   `03131310                                     ;; 0a:617a $7e $54
    dw   `03111110                                     ;; 0a:617c $7e $40
    dw   `03111110                                     ;; 0a:617e $7e $40
    dw   `03131310                                     ;; 0a:6180 $7e $54

    dw   `22302201                                     ;; 0a:6182 $21 $ec
    dw   `22000000                                     ;; 0a:6184 $00 $c0
    dw   `22033333                                     ;; 0a:6186 $1f $df
    dw   `22031111                                     ;; 0a:6188 $1f $d0
    dw   `22031111                                     ;; 0a:618a $1f $d0
    dw   `00000011                                     ;; 0a:618c $03 $00
    dw   `33333031                                     ;; 0a:618e $fb $fa
    dw   `31111011                                     ;; 0a:6190 $fb $80

    dw   `22220202                                     ;; 0a:6192 $00 $f5
    dw   `02320202                                     ;; 0a:6194 $20 $75
    dw   `02220202                                     ;; 0a:6196 $00 $75
    dw   `02200000                                     ;; 0a:6198 $00 $60
    dw   `02203330                                     ;; 0a:619a $0e $6e
    dw   `03203110                                     ;; 0a:619c $4e $68
    dw   `02203130                                     ;; 0a:619e $0e $6a
    dw   `02203110                                     ;; 0a:61a0 $0e $68

    dw   `03103133                                     ;; 0a:61a2 $6f $4b

    db   $6f, $48, $6f                                 ;; 0a:61a4 ...
    db   %01001000                                     ;; 0a:61a7 $48

    dw   `03103111                                     ;; 0a:61a8 $6f $48
    dw   `00000001                                     ;; 0a:61aa $01 $00
    dw   `03333301                                     ;; 0a:61ac $7d $7c
    dw   `03111101                                     ;; 0a:61ae $7d $40
    dw   `03113101                                     ;; 0a:61b0 $7d $48
    dw   `03111110                                     ;; 0a:61b2 $7e $40
    dw   `03110000                                     ;; 0a:61b4 $70 $40
    dw   `03110333                                     ;; 0a:61b6 $77 $47

    dw   `03130311                                     ;; 0a:61b8 $77 $54
    dw   `03110311                                     ;; 0a:61ba $77 $44
    dw   `03110311                                     ;; 0a:61bc $77 $44
    dw   `03130311                                     ;; 0a:61be $77 $54
    dw   `03110311                                     ;; 0a:61c0 $77 $44
    dw   `31131011                                     ;; 0a:61c2 $fb $90
    dw   `00001031                                     ;; 0a:61c4 $0b $02
    dw   `33301011                                     ;; 0a:61c6 $eb $e0

    dw   `11100000                                     ;; 0a:61c8 $e0 $00
    dw   `13103333                                     ;; 0a:61ca $ef $4f
    dw   `31103111                                     ;; 0a:61cc $ef $88
    dw   `11103311                                     ;; 0a:61ce $ef $0c
    dw   `11103111                                     ;; 0a:61d0 $ef $08
    dw   `00000010                                     ;; 0a:61d2 $02 $00
    dw   `03333010                                     ;; 0a:61d4 $7a $78
    dw   `01111010                                     ;; 0a:61d6 $7a $00

    dw   `00131010                                     ;; 0a:61d8 $3a $10
    dw   `30000000                                     ;; 0a:61da $80 $80
    dw   `10333300                                     ;; 0a:61dc $bc $3c
    dw   `10311100                                     ;; 0a:61de $bc $20
    dw   `10331100                                     ;; 0a:61e0 $bc $30
    dw   `33333333                                     ;; 0a:61e2 $ff $ff
    dw   `33333333                                     ;; 0a:61e4 $ff $ff
    dw   `22233333                                     ;; 0a:61e6 $1f $ff

    dw   `01323333                                     ;; 0a:61e8 $6f $3f
    dw   `02103332                                     ;; 0a:61ea $2e $4f
    dw   `30033323                                     ;; 0a:61ec $9d $9f
    dw   `33333231                                     ;; 0a:61ee $fb $fe
    dw   `33330100                                     ;; 0a:61f0 $f4 $f0
    dw   `33333333                                     ;; 0a:61f2 $ff $ff
    dw   `33323333                                     ;; 0a:61f4 $ef $ff
    dw   `33330333                                     ;; 0a:61f6 $f7 $f7

    dw   `33333332                                     ;; 0a:61f8 $fe $ff
    dw   `20033330                                     ;; 0a:61fa $1e $9e
    dw   `10333323                                     ;; 0a:61fc $bd $3f
    dw   `20323330                                     ;; 0a:61fe $2e $be
    dw   `03033333                                     ;; 0a:6200 $5f $5f
    dw   `33333333                                     ;; 0a:6202 $ff $ff
    dw   `32000333                                     ;; 0a:6204 $87 $c7
    dw   `23120033                                     ;; 0a:6206 $63 $d3

    dw   `11200033                                     ;; 0a:6208 $c3 $23
    dw   `00003333                                     ;; 0a:620a $0f $0f
    dw   `33330003                                     ;; 0a:620c $f1 $f1
    dw   `33300333                                     ;; 0a:620e $e7 $e7
    dw   `33333330                                     ;; 0a:6210 $fe $fe
    dw   `33333333                                     ;; 0a:6212 $ff $ff
    dw   `03333333                                     ;; 0a:6214 $7f $7f
    dw   `30333333                                     ;; 0a:6216 $bf $bf

    dw   `33333333                                     ;; 0a:6218 $ff $ff
    dw   `33000330                                     ;; 0a:621a $c6 $c6
    dw   `30331033                                     ;; 0a:621c $bb $b3
    dw   `03312033                                     ;; 0a:621e $73 $6b
    dw   `31120033                                     ;; 0a:6220 $e3 $93
    dw   `33330003                                     ;; 0a:6222 $f1 $f1
    dw   `03003333                                     ;; 0a:6224 $4f $4f
    dw   `00000033                                     ;; 0a:6226 $03 $03

    dw   `01111000                                     ;; 0a:6228 $78 $00
    dw   `01222000                                     ;; 0a:622a $40 $38
    dw   `01212000                                     ;; 0a:622c $50 $28
    dw   `01222000                                     ;; 0a:622e $40 $38
    dw   `01232000                                     ;; 0a:6230 $50 $38
    dw   `33333333                                     ;; 0a:6232 $ff $ff
    dw   `30333000                                     ;; 0a:6234 $b8 $b8
    dw   `30033300                                     ;; 0a:6236 $9c $9c

    dw   `00000000                                     ;; 0a:6238 $00 $00
    dw   `01111110                                     ;; 0a:623a $7e $00
    dw   `01222220                                     ;; 0a:623c $40 $3e
    dw   `01222220                                     ;; 0a:623e $40 $3e
    dw   `01231220                                     ;; 0a:6240 $58 $36
    dw   `00003330                                     ;; 0a:6242 $0e $0e
    dw   `11110330                                     ;; 0a:6244 $f6 $06
    dw   `12220000                                     ;; 0a:6246 $80 $70

    dw   `12220000                                     ;; 0a:6248 $80 $70
    dw   `12220000                                     ;; 0a:624a $80 $70
    dw   `22120111                                     ;; 0a:624c $27 $d0
    dw   `21220122                                     ;; 0a:624e $44 $b3
    dw   `22230132                                     ;; 0a:6250 $16 $f3
    dw   `10000333                                     ;; 0a:6252 $87 $07
    dw   `00000000                                     ;; 0a:6254 $00 $00
    dw   `00111100                                     ;; 0a:6256 $3c $00

    dw   `00122200                                     ;; 0a:6258 $20 $1c
    dw   `00022201                                     ;; 0a:625a $01 $1c
    dw   `11023202                                     ;; 0a:625c $c8 $1d
    dw   `22022202                                     ;; 0a:625e $00 $dd
    dw   `12032101                                     ;; 0a:6260 $95 $58
    dw   `33203333                                     ;; 0a:6262 $cf $ef
    dw   `32103333                                     ;; 0a:6264 $af $cf
    dw   `30033033                                     ;; 0a:6266 $9b $9b

    dw   `33333003                                     ;; 0a:6268 $f9 $f9
    dw   `33333333                                     ;; 0a:626a $ff $ff
    dw   `33033003                                     ;; 0a:626c $d9 $d9
    dw   `33333300                                     ;; 0a:626e $fc $fc
    dw   `00330003                                     ;; 0a:6270 $31 $31
    dw   `33233333                                     ;; 0a:6272 $df $ff
    dw   `33333332                                     ;; 0a:6274 $fe $ff
    dw   `32233300                                     ;; 0a:6276 $9c $fc

    dw   `23100330                                     ;; 0a:6278 $66 $c6
    dw   `23111033                                     ;; 0a:627a $7b $c3
    dw   `02212033                                     ;; 0a:627c $13 $6b
    dw   `30020033                                     ;; 0a:627e $83 $93
    dw   `33000330                                     ;; 0a:6280 $c6 $c6
    dw   `20330333                                     ;; 0a:6282 $37 $b7
    dw   `10330033                                     ;; 0a:6284 $b3 $33
    dw   `20333320                                     ;; 0a:6286 $3c $be

    dw   `03333233                                     ;; 0a:6288 $7b $7f
    dw   `30032331                                     ;; 0a:628a $97 $9e
    dw   `00330312                                     ;; 0a:628c $36 $35
    dw   `33330220                                     ;; 0a:628e $f0 $f6
    dw   `30333000                                     ;; 0a:6290 $b8 $b8
    dw   `33320333                                     ;; 0a:6292 $e7 $f7
    dw   `33231033                                     ;; 0a:6294 $db $f3
    dw   `33011203                                     ;; 0a:6296 $d9 $c5

    dw   `03012203                                     ;; 0a:6298 $51 $4d
    dw   `03002003                                     ;; 0a:629a $41 $49
    dw   `03330030                                     ;; 0a:629c $72 $72
    dw   `33303303                                     ;; 0a:629e $ed $ed
    dw   `00333000                                     ;; 0a:62a0 $38 $38
    dw   `03300000                                     ;; 0a:62a2 $60 $60
    dw   `00001111                                     ;; 0a:62a4 $0f $00
    dw   `11101222                                     ;; 0a:62a6 $e8 $07

    dw   `22201222                                     ;; 0a:62a8 $08 $e7
    dw   `23201223                                     ;; 0a:62aa $49 $e7
    dw   `22201222                                     ;; 0a:62ac $08 $e7
    dw   `22201222                                     ;; 0a:62ae $08 $e7
    dw   `22201232                                     ;; 0a:62b0 $0a $e7
    dw   `00033000                                     ;; 0a:62b2 $18 $18
    dw   `11003300                                     ;; 0a:62b4 $cc $0c
    dw   `22003000                                     ;; 0a:62b6 $08 $c8

    dw   `22000011                                     ;; 0a:62b8 $03 $c0
    dw   `22000012                                     ;; 0a:62ba $02 $c1
    dw   `22000012                                     ;; 0a:62bc $02 $c1
    dw   `12000012                                     ;; 0a:62be $82 $41
    dw   `22000012                                     ;; 0a:62c0 $02 $c1
    dw   `03000000                                     ;; 0a:62c2 $40 $40
    dw   `00011111                                     ;; 0a:62c4 $1f $00
    dw   `00002222                                     ;; 0a:62c6 $00 $0f

    dw   `11103232                                     ;; 0a:62c8 $ea $0f
    dw   `22202222                                     ;; 0a:62ca $00 $ef
    dw   `32202322                                     ;; 0a:62cc $84 $ef
    dw   `22202200                                     ;; 0a:62ce $00 $ec
    dw   `32202201                                     ;; 0a:62d0 $81 $ec
    dw   `03303300                                     ;; 0a:62d2 $6c $6c
    dw   `03300000                                     ;; 0a:62d4 $60 $60
    dw   `00000111                                     ;; 0a:62d6 $07 $00

    dw   `00000002                                     ;; 0a:62d8 $00 $01
    dw   `01111102                                     ;; 0a:62da $7c $01
    dw   `01222202                                     ;; 0a:62dc $40 $3d
    dw   `00000202                                     ;; 0a:62de $00 $05
    dw   `11110202                                     ;; 0a:62e0 $f0 $05
    dw   `33033333                                     ;; 0a:62e2 $df $df
    dw   `30333333                                     ;; 0a:62e4 $bf $bf
    dw   `33332233                                     ;; 0a:62e6 $f3 $ff

    dw   `33323033                                     ;; 0a:62e8 $eb $fb
    dw   `33031033                                     ;; 0a:62ea $db $d3
    dw   `03300333                                     ;; 0a:62ec $67 $67
    dw   `33333300                                     ;; 0a:62ee $fc $fc
    dw   `33333333                                     ;; 0a:62f0 $ff $ff
    dw   `33333300                                     ;; 0a:62f2 $fc $fc
    dw   `30333330                                     ;; 0a:62f4 $be $be
    dw   `33333003                                     ;; 0a:62f6 $f9 $f9

    dw   `00220003                                     ;; 0a:62f8 $01 $31
    dw   `02331033                                     ;; 0a:62fa $3b $73
    dw   `30112200                                     ;; 0a:62fc $b0 $8c
    dw   `33022003                                     ;; 0a:62fe $c1 $d9
    dw   `03000330                                     ;; 0a:6300 $46 $46
    dw   `33033320                                     ;; 0a:6302 $dc $de
    dw   `33333231                                     ;; 0a:6304 $fb $fe
    dw   `03333300                                     ;; 0a:6306 $7c $7c

    dw   `33200333                                     ;; 0a:6308 $c7 $e7
    dw   `02310033                                     ;; 0a:630a $33 $63
    dw   `32310030                                     ;; 0a:630c $b2 $e2
    dw   `30122033                                     ;; 0a:630e $a3 $9b
    dw   `30020033                                     ;; 0a:6310 $83 $93
    dw   `33333203                                     ;; 0a:6312 $f9 $fd
    dw   `03332310                                     ;; 0a:6314 $76 $7c
    dw   `33323120                                     ;; 0a:6316 $ec $fa

    dw   `33031203                                     ;; 0a:6318 $d9 $d5
    dw   `03002003                                     ;; 0a:631a $41 $49
    dw   `33300332                                     ;; 0a:631c $e6 $e7
    dw   `03333330                                     ;; 0a:631e $7e $7e
    dw   `33200033                                     ;; 0a:6320 $c3 $e3
    dw   `03333300                                     ;; 0a:6322 $7c $7c
    dw   `03000030                                     ;; 0a:6324 $42 $42
    dw   `00000300                                     ;; 0a:6326 $04 $04

    dw   `03330000                                     ;; 0a:6328 $70 $70
    dw   `03100000                                     ;; 0a:632a $60 $40
    dw   `03103333                                     ;; 0a:632c $6f $4f
    dw   `03103111                                     ;; 0a:632e $6f $48
    dw   `03103111                                     ;; 0a:6330 $6f $48

    db   $81, $81, $7e, $7e                            ;; 0a:6332 ....
    dw   `03111110                                     ;; 0a:6336 $7e $40
    dw   `03111110                                     ;; 0a:6338 $7e $40
    dw   `03131310                                     ;; 0a:633a $7e $54
    dw   `03111110                                     ;; 0a:633c $7e $40
    dw   `03111110                                     ;; 0a:633e $7e $40
    dw   `03131310                                     ;; 0a:6340 $7e $54
    dw   `30000003                                     ;; 0a:6342 $81 $81
    dw   `33000000                                     ;; 0a:6344 $c0 $c0

    dw   `30033333                                     ;; 0a:6346 $9f $9f
    dw   `30031111                                     ;; 0a:6348 $9f $90
    dw   `00031111                                     ;; 0a:634a $1f $10
    dw   `00000011                                     ;; 0a:634c $03 $00
    dw   `33333031                                     ;; 0a:634e $fb $fa
    dw   `31111011                                     ;; 0a:6350 $fb $80
    dw   `32031000                                     ;; 0a:6352 $98 $d0
    dw   `00311203                                     ;; 0a:6354 $39 $25

    dw   `00002000                                     ;; 0a:6356 $00 $08
    dw   `00000000                                     ;; 0a:6358 $00 $00
    dw   `00203330                                     ;; 0a:635a $0e $2e
    dw   `00203110                                     ;; 0a:635c $0e $28
    dw   `02203130                                     ;; 0a:635e $0e $6a
    dw   `02203110                                     ;; 0a:6360 $0e $68
    dw   `33203333                                     ;; 0a:6362 $cf $ef
    dw   `32310333                                     ;; 0a:6364 $b7 $e7

    dw   `30320333                                     ;; 0a:6366 $a7 $b7
    dw   `30122030                                     ;; 0a:6368 $a2 $9a
    dw   `30100000                                     ;; 0a:636a $a0 $80
    dw   `33003333                                     ;; 0a:636c $cf $cf
    dw   `33003111                                     ;; 0a:636e $cf $c8
    dw   `00003111                                     ;; 0a:6370 $0f $08
    dw   `03333333                                     ;; 0a:6372 $7f $7f
    dw   `00333303                                     ;; 0a:6374 $3d $3d

    dw   `33333033                                     ;; 0a:6376 $fb $fb
    dw   `03332033                                     ;; 0a:6378 $73 $7b
    dw   `00323103                                     ;; 0a:637a $2d $39
    dw   `03330203                                     ;; 0a:637c $71 $75
    dw   `00000000                                     ;; 0a:637e $00 $00
    dw   `00000003                                     ;; 0a:6380 $01 $01
    dw   `33323333                                     ;; 0a:6382 $ef $ff
    dw   `33330320                                     ;; 0a:6384 $f4 $f6

    dw   `32333301                                     ;; 0a:6386 $bd $fc
    dw   `00333330                                     ;; 0a:6388 $3e $3e
    dw   `33320033                                     ;; 0a:638a $e3 $f3
    dw   `32231003                                     ;; 0a:638c $99 $f1
    dw   `03112030                                     ;; 0a:638e $72 $4a
    dw   `01200330                                     ;; 0a:6390 $46 $26
    dw   `33333333                                     ;; 0a:6392 $ff $ff
    dw   `33333033                                     ;; 0a:6394 $fb $fb

    dw   `03330033                                     ;; 0a:6396 $73 $73
    dw   `03000000                                     ;; 0a:6398 $40 $40
    dw   `33303330                                     ;; 0a:639a $ee $ee
    dw   `30303110                                     ;; 0a:639c $ae $a8
    dw   `03303130                                     ;; 0a:639e $6e $6a
    dw   `00303110                                     ;; 0a:63a0 $2e $28
    dw   `03103133                                     ;; 0a:63a2 $6f $4b
    dw   `03103111                                     ;; 0a:63a4 $6f $48

    dw   `03103111                                     ;; 0a:63a6 $6f $48
    dw   `03103111                                     ;; 0a:63a8 $6f $48
    dw   `00000001                                     ;; 0a:63aa $01 $00
    dw   `03333301                                     ;; 0a:63ac $7d $7c
    dw   `03111101                                     ;; 0a:63ae $7d $40
    dw   `03113101                                     ;; 0a:63b0 $7d $48
    dw   `03111110                                     ;; 0a:63b2 $7e $40
    dw   `03110000                                     ;; 0a:63b4 $70 $40

    dw   `03110333                                     ;; 0a:63b6 $77 $47
    dw   `03130311                                     ;; 0a:63b8 $77 $54
    dw   `03110311                                     ;; 0a:63ba $77 $44
    dw   `03110311                                     ;; 0a:63bc $77 $44
    dw   `03130311                                     ;; 0a:63be $77 $54
    dw   `03110311                                     ;; 0a:63c0 $77 $44
    dw   `00003000                                     ;; 0a:63c2 $08 $08
    dw   `00003033                                     ;; 0a:63c4 $0b $0b

    dw   `33300000                                     ;; 0a:63c6 $e0 $e0
    dw   `11100000                                     ;; 0a:63c8 $e0 $00
    dw   `13103333                                     ;; 0a:63ca $ef $4f
    dw   `31103111                                     ;; 0a:63cc $ef $88
    dw   `11103311                                     ;; 0a:63ce $ef $0c
    dw   `11103111                                     ;; 0a:63d0 $ef $08
    dw   `00000010                                     ;; 0a:63d2 $02 $00
    dw   `03333010                                     ;; 0a:63d4 $7a $78

    dw   `01111010                                     ;; 0a:63d6 $7a $00
    dw   `00131010                                     ;; 0a:63d8 $3a $10
    dw   `30000000                                     ;; 0a:63da $80 $80
    dw   `10333300                                     ;; 0a:63dc $bc $3c
    dw   `10311100                                     ;; 0a:63de $bc $20
    dw   `10331100                                     ;; 0a:63e0 $bc $30
    dw   `33200333                                     ;; 0a:63e2 $c7 $e7
    dw   `32120333                                     ;; 0a:63e4 $a7 $d7

    dw   `30203303                                     ;; 0a:63e6 $8d $ad
    dw   `33033333                                     ;; 0a:63e8 $df $df
    dw   `03333303                                     ;; 0a:63ea $7d $7d
    dw   `30333003                                     ;; 0a:63ec $b9 $b9
    dw   `33330033                                     ;; 0a:63ee $f3 $f3
    dw   `00000000                                     ;; 0a:63f0 $00 $00
    dw   `33033323                                     ;; 0a:63f2 $dd $df
    dw   `33333210                                     ;; 0a:63f4 $fa $fc

    dw   `30303300                                     ;; 0a:63f6 $ac $ac
    dw   `30333333                                     ;; 0a:63f8 $bf $bf
    dw   `33030333                                     ;; 0a:63fa $d7 $d7
    dw   `33303332                                     ;; 0a:63fc $ee $ef
    dw   `33003323                                     ;; 0a:63fe $cd $cf
    dw   `30000000                                     ;; 0a:6400 $80 $80
    dw   `33333333                                     ;; 0a:6402 $ff $ff
    dw   `33333330                                     ;; 0a:6404 $fe $fe

    dw   `33303330                                     ;; 0a:6406 $ee $ee
    dw   `33333203                                     ;; 0a:6408 $f9 $fd
    dw   `20332103                                     ;; 0a:640a $35 $b9
    dw   `31030033                                     ;; 0a:640c $d3 $93
    dw   `12033330                                     ;; 0a:640e $9e $5e
    dw   `22000000                                     ;; 0a:6410 $00 $c0
    dw   `33333333                                     ;; 0a:6412 $ff $ff
    dw   `33333303                                     ;; 0a:6414 $fd $fd

    dw   `30303333                                     ;; 0a:6416 $af $af
    dw   `30003333                                     ;; 0a:6418 $8f $8f
    dw   `30333303                                     ;; 0a:641a $bd $bd
    dw   `00033010                                     ;; 0a:641c $1a $18
    dw   `00333020                                     ;; 0a:641e $38 $3a
    dw   `00000000                                     ;; 0a:6420 $00 $00
    dw   `21212121                                     ;; 0a:6422 $55 $aa
    dw   `12121212                                     ;; 0a:6424 $aa $55

    dw   `21212121                                     ;; 0a:6426 $55 $aa
    dw   `11111111                                     ;; 0a:6428 $ff $00
    dw   `11111111                                     ;; 0a:642a $ff $00
    dw   `13131313                                     ;; 0a:642c $ff $55
    dw   `31313131                                     ;; 0a:642e $ff $aa
    dw   `13131313                                     ;; 0a:6430 $ff $55

    db   $06, $04, $20, $40, $81, $c8, $6c, $b3        ;; 0a:6432 ????????
    db   $86, $80, $8d, $a4, $34, $25, $67, $0d        ;; 0a:643a ????????
    db   $d9, $ba, $c0, $4a, $99, $0d, $da, $79        ;; 0a:6442 ????????
    db   $40, $52, $ae, $50, $dc, $af, $94, $05        ;; 0a:644a ????????
    db   $ad, $10, $db, $b6, $40, $5e, $e1, $0d        ;; 0a:6452 ????????
    db   $ab, $99, $40, $5e, $f6, $50, $d9, $c1        ;; 0a:645a ????????
    db   $94, $06, $71, $90, $d8, $c7, $94, $05        ;; 0a:6462 ????????
    db   $f2, $e5, $0d, $48, $08, $10, $20, $40        ;; 0a:646a ????????
    db   $81, $02, $80, $ff, $ff, $ff, $ff, $ff        ;; 0a:6472 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:647a ????????
    db   $fe, $fe, $fc, $fe, $fe, $fc, $f8, $f8        ;; 0a:6482 ????????
    db   $f2, $f0, $e4, $e0, $cc, $88, $10, $50        ;; 0a:648a ????????
    db   $08, $b0, $28, $ff, $ff, $ff, $ff, $ff        ;; 0a:6492 ????????
    db   $df, $df, $df, $df, $9f, $9f, $1f, $1f        ;; 0a:649a ????????
    db   $1f, $1f, $1f, $fd, $fd, $fd, $f9, $fb        ;; 0a:64a2 ????????
    db   $fa, $fb, $f2, $f5, $f0, $f1, $f4, $f0        ;; 0a:64aa ????????
    db   $f1, $f0, $f1, $20, $90, $60, $50, $40        ;; 0a:64b2 ????????
    db   $a0, $00, $c0, $00, $c0, $00, $80, $00        ;; 0a:64ba ????????
    db   $80, $00, $00, $1f, $1f, $1f, $0f, $0f        ;; 0a:64c2 ????????
    db   $0e, $0e, $04, $04, $00, $00, $00, $00        ;; 0a:64ca ????????
    db   $00, $00, $00, $ff, $bf, $bf, $3f, $3f        ;; 0a:64d2 ????????
    db   $3f, $3f, $3f, $3f, $3f, $7f, $3f, $7f        ;; 0a:64da ????????
    db   $7f, $7f, $7f, $f0, $f1, $f0, $f0, $f0        ;; 0a:64e2 ????????
    db   $e0, $e0, $e8, $e8, $e0, $e8, $c0, $d0        ;; 0a:64ea ????????
    db   $90, $90, $00, $00, $00, $00, $00, $00        ;; 0a:64f2 ????????
    db   $00, $00, $00, $07, $07, $03, $03, $00        ;; 0a:64fa ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:6502 ????????
    db   $00, $01, $00, $c1, $a1, $81, $41, $01        ;; 0a:650a ????????
    db   $00, $00, $00, $ff, $ff, $ff, $ff, $fe        ;; 0a:6512 ????????
    db   $fc, $f1, $e1, $c0, $cf, $f0, $e0, $fe        ;; 0a:651a ????????
    db   $fc, $ff, $fe, $ff, $ff, $fe, $fc, $00        ;; 0a:6522 ????????
    db   $00, $ff, $fe, $7e, $81, $1c, $63, $00        ;; 0a:652a ????????
    db   $1f, $00, $0e, $ff, $fe, $02, $00, $70        ;; 0a:6532 ????????
    db   $80, $20, $58, $20, $94, $10, $88, $00        ;; 0a:653a ????????
    db   $08, $00, $04, $07, $04, $70, $50, $70        ;; 0a:6542 ????????
    db   $a8, $60, $d4, $20, $48, $20, $50, $00        ;; 0a:654a ????????
    db   $38, $00, $08, $20, $30, $60, $40, $c0        ;; 0a:6552 ????????
    db   $a0, $40, $80, $00, $40, $00, $00, $00        ;; 0a:655a ????????
    db   $00, $00, $00, $ff, $7f, $7f, $3f, $3f        ;; 0a:6562 ????????
    db   $1f, $0f, $07, $07, $03, $03, $01, $09        ;; 0a:656a ????????
    db   $00, $04, $04, $80, $00, $c0, $80, $c0        ;; 0a:6572 ????????
    db   $c0, $e0, $c0, $e0, $e0, $f0, $e0, $f0        ;; 0a:657a ????????
    db   $f0, $f8, $f0, $00, $00, $00, $00, $00        ;; 0a:6582 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:658a ????????
    db   $80, $80, $80, $06, $02, $03, $01, $01        ;; 0a:6592 ????????
    db   $01, $01, $00, $00, $00, $00, $00, $00        ;; 0a:659a ????????
    db   $00, $00, $00, $7f, $7f, $7f, $3f, $bf        ;; 0a:65a2 ????????
    db   $bf, $bf, $9f, $df, $df, $df, $5f, $5f        ;; 0a:65aa ????????
    db   $1f, $07, $03, $f8, $f8, $fd, $f8, $fd        ;; 0a:65b2 ????????
    db   $fd, $fd, $fd, $fd, $f9, $fb, $fa, $fb        ;; 0a:65ba ????????
    db   $fa, $fb, $f2, $80, $80, $80, $80, $80        ;; 0a:65c2 ????????
    db   $00, $80, $00, $80, $00, $00, $80, $00        ;; 0a:65ca ????????
    db   $80, $00, $80, $ff, $7f, $3f, $1f, $0f        ;; 0a:65d2 ????????
    db   $07, $03, $01, $00, $00, $01, $00, $03        ;; 0a:65da ????????
    db   $01, $0f, $07, $f7, $f2, $f6, $f5, $f6        ;; 0a:65e2 ????????
    db   $e5, $ee, $e5, $ec, $ea, $ec, $ca, $d8        ;; 0a:65ea ????????
    db   $86, $b8, $14, $3f, $1f, $7f, $3f, $ff        ;; 0a:65f2 ????????
    db   $7f, $7f, $7f, $7f, $3f, $3f, $1f, $1f        ;; 0a:65fa ????????
    db   $0f, $0f, $07, $ff, $fe, $fe, $fe, $fe        ;; 0a:6602 ????????
    db   $fc, $fd, $fc, $fd, $f9, $fb, $f9, $fb        ;; 0a:660a ????????
    db   $f2, $f6, $f3, $70, $28, $e0, $58, $c0        ;; 0a:6612 ????????
    db   $b0, $a0, $c0, $40, $90, $80, $60, $00        ;; 0a:661a ????????
    db   $c0, $80, $20, $07, $03, $03, $01, $01        ;; 0a:6622 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:662a ????????
    db   $00, $00, $00, $ff, $ff, $ff, $ff, $ff        ;; 0a:6632 ????????
    db   $ff, $ff, $7f, $3f, $1f, $0f, $07, $03        ;; 0a:663a ????????
    db   $01, $01, $00, $f7, $e4, $ee, $e5, $ed        ;; 0a:6642 ????????
    db   $ea, $ee, $c9, $dc, $cb, $da, $d5, $dc        ;; 0a:664a ????????
    db   $d3, $da, $95, $00, $c0, $00, $a0, $00        ;; 0a:6652 ????????
    db   $40, $00, $80, $00, $40, $00, $80, $00        ;; 0a:665a ????????
    db   $40, $00, $80, $7f, $3f, $1f, $0f, $07        ;; 0a:6662 ????????
    db   $03, $03, $01, $01, $01, $01, $00, $00        ;; 0a:666a ????????
    db   $00, $fe, $7c, $bc, $93, $b8, $a6, $b4        ;; 0a:6672 ????????
    db   $ab, $b8, $26, $74, $2b, $78, $46, $74        ;; 0a:667a ????????
    db   $4b, $78, $46, $00, $40, $00, $80, $00        ;; 0a:6682 ????????
    db   $40, $00, $80, $00, $40, $00, $80, $00        ;; 0a:668a ????????
    db   $40, $00, $80, $00, $00, $00, $00, $00        ;; 0a:6692 ????????
    db   $00, $00, $00, $00, $00, $01, $00, $03        ;; 0a:669a ????????
    db   $01, $0f, $07, $07, $03, $1f, $0f, $3f        ;; 0a:66a2 ????????
    db   $1f, $7f, $3f, $ff, $7f, $ff, $ff, $ff        ;; 0a:66aa ????????
    db   $ff, $ff, $ff, $06, $04, $20, $40, $81        ;; 0a:66b2 ????????
    db   $c8, $4e, $50, $21, $20, $4a, $86, $70        ;; 0a:66ba ????????
    db   $96, $c6, $d5, $4d, $31, $ad, $05, $9c        ;; 0a:66c2 ????????
    db   $24, $12, $c6, $50, $48, $84, $15, $62        ;; 0a:66ca ????????
    db   $10, $55, $88, $41, $4b, $11, $27, $3b        ;; 0a:66d2 ????????
    db   $64, $52, $0a, $b1, $48, $2a, $c5, $20        ;; 0a:66da ????????
    db   $97, $48, $f9, $4d, $27, $97, $08, $a5        ;; 0a:66e2 ????????
    db   $ec, $a0, $a5, $0f, $28, $29, $61, $4a        ;; 0a:66ea ????????
    db   $09, $14, $82, $5e, $27, $93, $49, $e4        ;; 0a:66f2 ????????
    db   $7c, $b2, $67, $6c, $c2, $45, $4a, $f6        ;; 0a:66fa ????????
    db   $58, $92, $be, $45, $24, $e7, $38, $c9        ;; 0a:6702 ????????
    db   $95, $b3, $3e, $77, $0c, $44, $4c, $a3        ;; 0a:670a ????????
    db   $e5, $19, $28, $f9, $46, $4a, $3e, $51        ;; 0a:6712 ????????
    db   $d2, $65, $1d, $26, $51, $cc, $88, $14        ;; 0a:671a ????????
    db   $80, $81, $02, $04, $08, $10, $28, $fd        ;; 0a:6722 ????????
    db   $02, $fd, $00, $ed, $12, $e8, $00, $c0        ;; 0a:672a ????????
    db   $3e, $be, $7f, $7c, $c2, $60, $9e, $41        ;; 0a:6732 ????????
    db   $00, $15, $14, $81, $00, $00, $f0, $76        ;; 0a:673a ????????
    db   $c4, $04, $92, $41, $f0, $4d, $88, $00        ;; 0a:6742 ????????
    db   $e1, $08, $0c, $d8, $51, $d0, $19, $b1        ;; 0a:674a ????????
    db   $22, $a1, $32, $63, $44, $40, $67, $00        ;; 0a:6752 ????????
    db   $87, $30, $20, $91, $9a, $99, $12, $c8        ;; 0a:675a ????????
    db   $0d, $cc, $09, $e4, $06, $06, $e4, $00        ;; 0a:6762 ????????
    db   $80, $39, $39, $79, $41, $7f, $40, $70        ;; 0a:676a ????????
    db   $0f, $20, $50, $00, $20, $00, $00, $00        ;; 0a:6772 ????????
    db   $01, $38, $3c, $3c, $02, $80, $00, $0c        ;; 0a:677a ????????
    db   $f2, $04, $0a, $00, $04, $00, $00, $f0        ;; 0a:6782 ????????
    db   $00, $cf, $0f, $bf, $30, $60, $58, $47        ;; 0a:678a ????????
    db   $27, $8f, $0f, $c7, $00, $00, $00, $00        ;; 0a:6792 ????????
    db   $00, $fc, $fc, $fe, $00, $06, $00, $90        ;; 0a:679a ????????
    db   $13, $d0, $90, $91, $01, $03, $03, $00        ;; 0a:67a2 ????????
    db   $00, $9c, $98, $4c, $02, $4c, $02, $00        ;; 0a:67aa ????????
    db   $fe, $00, $00, $e0, $90, $f0, $08, $01        ;; 0a:67b2 ????????
    db   $00, $3c, $3c, $7c, $42, $60, $40, $6a        ;; 0a:67ba ????????
    db   $42, $60, $40, $7c, $42, $70, $40, $0c        ;; 0a:67c2 ????????
    db   $02, $7c, $42, $04, $02, $54, $12, $04        ;; 0a:67ca ????????
    db   $02, $78, $46, $00, $3c, $00, $00, $00        ;; 0a:67d2 ????????
    db   $00, $02, $00, $58, $50, $00, $00, $0a        ;; 0a:67da ????????
    db   $02, $60, $40, $0c, $08, $00, $00, $02        ;; 0a:67e2 ????????
    db   $fd, $0a, $f5, $00, $01, $7c, $7e, $70        ;; 0a:67ea ????????
    db   $40, $0c, $82, $00, $00, $60, $15, $00        ;; 0a:67f2 ????????
    db   $c0, $3f, $bf, $7f, $40, $01, $00, $03        ;; 0a:67fa ????????
    db   $00, $7f, $40, $00, $3f, $00, $80, $00        ;; 0a:6802 ????????
    db   $00, $ff, $ff, $ff, $00, $f0, $0f, $c0        ;; 0a:680a ????????
    db   $30, $00, $c0, $00, $00, $24, $24, $00        ;; 0a:6812 ????????
    db   $3d, $82, $0a, $84, $41, $08, $e0, $03        ;; 0a:681a ????????
    db   $12, $04, $02, $10, $10, $38, $24, $00        ;; 0a:6822 ????????
    db   $ff, $00, $cf, $30, $27, $c0, $a7, $00        ;; 0a:682a ????????
    db   $9f, $00, $7f, $00, $ff, $00, $ff, $00        ;; 0a:6832 ????????
    db   $80, $2f, $8c, $00, $80, $aa, $54, $55        ;; 0a:683a ????????
    db   $a8, $ba, $42, $f9, $00, $ff, $00, $1c        ;; 0a:6842 ????????
    db   $13, $ae, $29, $60, $50, $02, $21, $00        ;; 0a:684a ????????
    db   $00, $a6, $25, $a6, $05, $a6, $05, $64        ;; 0a:6852 ????????
    db   $42, $78, $06, $00, $3c, $02, $00, $4c        ;; 0a:685a ????????
    db   $4a, $60, $00, $49, $28, $03, $00, $10        ;; 0a:6862 ????????
    db   $0b, $02, $05, $d5, $8a, $8a, $55, $15        ;; 0a:686a ????????
    db   $0a, $5b, $04, $1f, $40, $3f, $00, $c0        ;; 0a:6872 ????????
    db   $00, $bc, $22, $a0, $1e, $80, $00, $eb        ;; 0a:687a ????????
    db   $0a, $02, $01, $72, $49, $00, $00, $01        ;; 0a:6882 ????????
    db   $00, $3c, $3c, $7c, $42, $70, $4e, $60        ;; 0a:688a ????????
    db   $50, $41, $60, $15, $44, $01, $00, $01        ;; 0a:6892 ????????
    db   $00, $38, $3c, $7c, $42, $60, $40, $7c        ;; 0a:689a ????????
    db   $42, $60, $40, $6a, $4a, $60, $40, $7c        ;; 0a:68a2 ????????
    db   $42, $7c, $42, $00, $3c, $00, $00, $5d        ;; 0a:68aa ????????
    db   $58, $01, $00, $69, $48, $01, $00, $80        ;; 0a:68b2 ????????
    db   $00, $1c, $3c, $3e, $42, $06, $02, $3e        ;; 0a:68ba ????????
    db   $42, $06, $02, $56, $52, $06, $02, $3e        ;; 0a:68c2 ????????
    db   $42, $3e, $42, $00, $3c, $00, $00, $ba        ;; 0a:68ca ????????
    db   $1a, $80, $00, $96, $12, $80, $00, $ff        ;; 0a:68d2 ????????
    db   $02, $fd, $0a, $01, $00, $7c, $7e, $70        ;; 0a:68da ????????
    db   $40, $0c, $82, $00, $00, $61, $14, $ff        ;; 0a:68e2 ????????
    db   $00, $cf, $00, $37, $20, $c7, $a0, $1f        ;; 0a:68ea ????????
    db   $80, $7f, $00, $ff, $00, $ff, $00, $ef        ;; 0a:68f2 ????????
    db   $00, $ef, $00, $c7, $28, $d7, $10, $d7        ;; 0a:68fa ????????
    db   $00, $c7, $00, $d7, $00, $83, $00, $b3        ;; 0a:6902 ????????
    db   $28, $b3, $28, $83, $00, $b3, $28, $83        ;; 0a:690a ????????
    db   $00, $c7, $00, $b3, $28, $01, $00, $00        ;; 0a:6912 ????????
    db   $ff, $22, $dd, $55, $aa, $aa, $55, $55        ;; 0a:691a ????????
    db   $aa, $bb, $44, $ff, $00, $ff, $00, $00        ;; 0a:6922 ????????
    db   $ff, $ff, $ff, $ff, $55, $ff, $aa, $ff        ;; 0a:692a ????????
    db   $00, $aa, $55, $55, $aa, $00, $ff, $00        ;; 0a:6932 ????????
    db   $00, $3e, $3e, $7e, $40, $7f, $40, $40        ;; 0a:693a ????????
    db   $3f, $00, $00, $00, $00, $0b, $0b, $00        ;; 0a:6942 ????????
    db   $00, $4f, $4f, $4f, $00, $ff, $00, $00        ;; 0a:694a ????????
    db   $ff, $00, $00, $00, $00, $3e, $3e, $0f        ;; 0a:6952 ????????
    db   $00, $03, $80, $81, $70, $f0, $0c, $7c        ;; 0a:695a ????????
    db   $82, $7c, $42, $3c, $22, $00, $1e, $0b        ;; 0a:6962 ????????
    db   $0b, $0b, $02, $41, $60, $60, $50, $70        ;; 0a:696a ????????
    db   $48, $3f, $23, $1f, $00, $00, $00, $7f        ;; 0a:6972 ????????
    db   $7e, $7f, $7c, $3e, $00, $00, $00, $01        ;; 0a:697a ????????
    db   $01, $ff, $fe, $fc, $03, $00, $00, $00        ;; 0a:6982 ????????
    db   $00, $00, $00, $7c, $42, $e0, $9c, $80        ;; 0a:698a ????????
    db   $60, $08, $8c, $3c, $32, $00, $00, $06        ;; 0a:6992 ????????
    db   $06, $3e, $42, $5d, $87, $8d, $09, $32        ;; 0a:699a ????????
    db   $4e, $3c, $24, $da, $19, $10, $93, $2c        ;; 0a:69a2 ????????
    db   $63, $42, $4d, $bd, $8d, $09, $3b, $26        ;; 0a:69aa ????????
    db   $34, $24, $ed, $58, $b0, $94, $37, $e1        ;; 0a:69b2 ????????
    db   $42, $5f, $80, $80, $64, $00, $ff, $00        ;; 0a:69ba ????????
    db   $ff, $00, $ff, $00, $ff, $00, $fc, $03        ;; 0a:69c2 ????????
    db   $f3, $0e, $cd, $3c, $32, $00, $ff, $00        ;; 0a:69ca ????????
    db   $f3, $00, $c7, $20, $2c, $80, $d0, $00        ;; 0a:69d2 ????????
    db   $80, $00, $00, $00, $00, $00, $ff, $00        ;; 0a:69da ????????
    db   $c7, $00, $0f, $00, $1f, $00, $3f, $00        ;; 0a:69e2 ????????
    db   $7c, $03, $c3, $3f, $3c, $00, $ff, $00        ;; 0a:69ea ????????
    db   $ff, $00, $ff, $00, $fc, $03, $c3, $3f        ;; 0a:69f2 ????????
    db   $3c, $fc, $c3, $f0, $0c, $00, $ff, $00        ;; 0a:69fa ????????
    db   $fc, $03, $c3, $3c, $3c, $e0, $d0, $80        ;; 0a:6a02 ????????
    db   $40, $00, $00, $00, $03, $00, $ff, $00        ;; 0a:6a0a ????????
    db   $0f, $00, $3f, $00, $03, $00, $0f, $00        ;; 0a:6a12 ????????
    db   $3f, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6a1a ????????
    db   $ff, $00, $ff, $00, $ff, $00, $fe, $01        ;; 0a:6a22 ????????
    db   $fd, $01, $fd, $03, $fa, $00, $fc, $03        ;; 0a:6a2a ????????
    db   $f3, $0f, $cc, $3f, $30, $ff, $c0, $ff        ;; 0a:6a32 ????????
    db   $00, $ff, $00, $ff, $00, $f8, $c4, $f0        ;; 0a:6a3a ????????
    db   $08, $e3, $13, $cf, $2c, $ff, $00, $ff        ;; 0a:6a42 ????????
    db   $00, $ff, $00, $ff, $00, $03, $03, $3f        ;; 0a:6a4a ????????
    db   $3c, $ff, $c0, $ff, $00, $ff, $00, $ff        ;; 0a:6a52 ????????
    db   $00, $ff, $00, $f1, $0e, $ff, $c0, $ff        ;; 0a:6a5a ????????
    db   $00, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 0a:6a62 ????????
    db   $00, $fe, $01, $fe, $01, $e0, $10, $c0        ;; 0a:6a6a ????????
    db   $20, $80, $40, $80, $40, $00, $80, $00        ;; 0a:6a72 ????????
    db   $80, $00, $01, $00, $01, $00, $0f, $00        ;; 0a:6a7a ????????
    db   $3f, $00, $7f, $00, $7f, $00, $ff, $00        ;; 0a:6a82 ????????
    db   $ff, $00, $ff, $00, $81, $03, $fa, $07        ;; 0a:6a8a ????????
    db   $f4, $07, $f4, $0f, $e8, $0f, $e8, $1f        ;; 0a:6a92 ????????
    db   $d0, $1c, $d3, $38, $a4, $ff, $00, $fc        ;; 0a:6a9a ????????
    db   $02, $f0, $0c, $e1, $11, $81, $61, $03        ;; 0a:6aa2 ????????
    db   $82, $03, $02, $07, $04, $ff, $00, $ff        ;; 0a:6aaa ????????
    db   $80, $fc, $83, $f0, $0c, $e0, $10, $e0        ;; 0a:6ab2 ????????
    db   $10, $c0, $20, $c0, $20, $c1, $31, $03        ;; 0a:6aba ????????
    db   $c2, $07, $04, $0f, $08, $1f, $10, $37        ;; 0a:6ac2 ????????
    db   $24, $67, $44, $c7, $a4, $fc, $02, $fc        ;; 0a:6aca ????????
    db   $02, $fc, $00, $fd, $01, $ff, $00, $ff        ;; 0a:6ad2 ????????
    db   $00, $ff, $00, $ff, $00, $00, $00, $07        ;; 0a:6ada ????????
    db   $07, $7f, $78, $fc, $82, $f0, $0c, $e0        ;; 0a:6ae2 ????????
    db   $10, $80, $60, $00, $80, $70, $70, $c0        ;; 0a:6aea ????????
    db   $80, $00, $80, $00, $01, $00, $07, $00        ;; 0a:6af2 ????????
    db   $0f, $00, $3f, $00, $7f, $00, $1f, $00        ;; 0a:6afa ????????
    db   $3f, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6b02 ????????
    db   $ff, $00, $ff, $00, $ff, $20, $ba, $40        ;; 0a:6b0a ????????
    db   $64, $40, $1c, $00, $38, $00, $7b, $00        ;; 0a:6b12 ????????
    db   $ff, $00, $ff, $00, $ff, $07, $04, $0f        ;; 0a:6b1a ????????
    db   $08, $0f, $68, $1f, $d0, $1e, $d1, $3e        ;; 0a:6b22 ????????
    db   $a1, $3e, $a1, $7f, $40, $81, $41, $83        ;; 0a:6b2a ????????
    db   $42, $07, $84, $0e, $89, $1e, $11, $3c        ;; 0a:6b32 ????????
    db   $22, $78, $44, $f8, $84, $8f, $48, $8f        ;; 0a:6b3a ????????
    db   $48, $0f, $88, $0f, $08, $1f, $10, $1f        ;; 0a:6b42 ????????
    db   $10, $1e, $11, $1e, $11, $fc, $03, $f8        ;; 0a:6b4a ????????
    db   $04, $e0, $18, $c0, $20, $80, $40, $00        ;; 0a:6b52 ????????
    db   $80, $00, $01, $00, $01, $00, $01, $00        ;; 0a:6b5a ????????
    db   $03, $00, $0f, $00, $1f, $00, $7f, $00        ;; 0a:6b62 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6b6a ????????
    db   $ff, $00, $ff, $00, $bf, $00, $9e, $20        ;; 0a:6b72 ????????
    db   $a6, $38, $a0, $1e, $d0, $00, $ff, $00        ;; 0a:6b7a ????????
    db   $fe, $00, $fe, $01, $fd, $01, $fd, $03        ;; 0a:6b82 ????????
    db   $3a, $03, $0a, $07, $04, $7f, $40, $ff        ;; 0a:6b8a ????????
    db   $80, $ff, $80, $ff, $00, $ff, $00, $ff        ;; 0a:6b92 ????????
    db   $00, $ff, $00, $ff, $00, $f0, $08, $e0        ;; 0a:6b9a ????????
    db   $10, $e0, $10, $c0, $20, $80, $40, $80        ;; 0a:6ba2 ????????
    db   $40, $00, $80, $00, $80, $3c, $22, $3c        ;; 0a:6baa ????????
    db   $22, $38, $24, $38, $24, $70, $48, $70        ;; 0a:6bb2 ????????
    db   $48, $60, $54, $60, $54, $00, $03, $00        ;; 0a:6bba ????????
    db   $03, $00, $07, $00, $07, $00, $0f, $00        ;; 0a:6bc2 ????????
    db   $0f, $00, $1f, $00, $1f, $1f, $d0, $1f        ;; 0a:6bca ????????
    db   $d0, $0f, $e8, $0f, $e8, $0f, $e8, $07        ;; 0a:6bd2 ????????
    db   $f4, $07, $f4, $07, $f4, $87, $04, $ef        ;; 0a:6bda ????????
    db   $08, $ff, $08, $ff, $00, $ff, $00, $ff        ;; 0a:6be2 ????????
    db   $00, $ff, $00, $ff, $00, $fe, $01, $fc        ;; 0a:6bea ????????
    db   $02, $fc, $02, $f8, $04, $f0, $08, $f0        ;; 0a:6bf2 ????????
    db   $08, $e0, $10, $e0, $10, $00, $00, $00        ;; 0a:6bfa ????????
    db   $02, $00, $02, $00, $06, $01, $0d, $01        ;; 0a:6c02 ????????
    db   $0d, $01, $1d, $01, $1c, $c0, $a8, $c0        ;; 0a:6c0a ????????
    db   $a8, $c0, $98, $80, $d8, $80, $30, $00        ;; 0a:6c12 ????????
    db   $b0, $00, $71, $00, $71, $00, $3f, $00        ;; 0a:6c1a ????????
    db   $3f, $00, $7f, $00, $7f, $00, $ff, $00        ;; 0a:6c22 ????????
    db   $ff, $00, $ff, $00, $ff, $03, $fa, $03        ;; 0a:6c2a ????????
    db   $fa, $03, $fa, $01, $fd, $01, $fd, $01        ;; 0a:6c32 ????????
    db   $fd, $00, $fe, $00, $fe, $ff, $00, $ff        ;; 0a:6c3a ????????
    db   $00, $ff, $00, $ff, $00, $fe, $01, $fe        ;; 0a:6c42 ????????
    db   $01, $fc, $82, $f8, $84, $c0, $20, $80        ;; 0a:6c4a ????????
    db   $40, $80, $40, $00, $80, $00, $01, $00        ;; 0a:6c52 ????????
    db   $01, $00, $03, $00, $07, $02, $3a, $02        ;; 0a:6c5a ????????
    db   $78, $00, $79, $00, $f9, $00, $fb, $00        ;; 0a:6c62 ????????
    db   $fb, $00, $ff, $00, $ff, $00, $e3, $00        ;; 0a:6c6a ????????
    db   $e3, $00, $e7, $00, $e7, $00, $ef, $00        ;; 0a:6c72 ????????
    db   $ef, $00, $ff, $00, $ff, $78, $44, $70        ;; 0a:6c7a ????????
    db   $48, $60, $54, $20, $b6, $20, $8e, $20        ;; 0a:6c82 ????????
    db   $8e, $00, $df, $00, $df, $00, $07, $00        ;; 0a:6c8a ????????
    db   $0f, $00, $1f, $00, $1f, $00, $3f, $00        ;; 0a:6c92 ????????
    db   $3f, $00, $7f, $00, $7f, $07, $04, $20        ;; 0a:6c9a ????????
    db   $40, $81, $c8, $26, $60, $f7, $82, $76        ;; 0a:6ca2 ????????
    db   $2b, $78, $27, $64, $77, $82, $6a, $63        ;; 0a:6caa ????????
    db   $a8, $25, $3a, $96, $a2, $eb, $a9, $44        ;; 0a:6cb2 ????????
    db   $56, $b3, $ce, $b4, $a0, $96, $b8, $f6        ;; 0a:6cba ????????
    db   $09, $7c, $5f, $60, $97, $d2, $f2, $09        ;; 0a:6cc2 ????????
    db   $8d, $ee, $e0, $93, $80, $40, $81, $02        ;; 0a:6cca ????????
    db   $04, $08, $14, $00, $ff, $00, $ff, $00        ;; 0a:6cd2 ????????
    db   $ff, $00, $fd, $00, $f9, $00, $f9, $00        ;; 0a:6cda ????????
    db   $f5, $04, $f1, $00, $fc, $03, $f0, $0e        ;; 0a:6ce2 ????????
    db   $e1, $1c, $c2, $38, $86, $30, $8e, $70        ;; 0a:6cea ????????
    db   $0f, $60, $1f, $03, $14, $06, $a9, $0c        ;; 0a:6cf2 ????????
    db   $53, $18, $c6, $30, $8c, $20, $98, $01        ;; 0a:6cfa ????????
    db   $73, $07, $ef, $80, $78, $00, $e1, $00        ;; 0a:6d02 ????????
    db   $83, $00, $03, $00, $04, $20, $70, $c0        ;; 0a:6d0a ????????
    db   $e0, $80, $c1, $00, $f8, $00, $e0, $00        ;; 0a:6d12 ????????
    db   $80, $00, $01, $01, $02, $07, $0c, $1f        ;; 0a:6d1a ????????
    db   $38, $ff, $f0, $00, $07, $00, $03, $00        ;; 0a:6d22 ????????
    db   $83, $80, $02, $80, $02, $80, $00, $80        ;; 0a:6d2a ????????
    db   $00, $80, $20, $00, $1f, $00, $1f, $00        ;; 0a:6d32 ????????
    db   $0f, $00, $0f, $00, $07, $00, $07, $00        ;; 0a:6d3a ????????
    db   $07, $00, $03, $04, $e9, $08, $e5, $08        ;; 0a:6d42 ????????
    db   $e5, $08, $d5, $18, $c5, $18, $c6, $18        ;; 0a:6d4a ????????
    db   $c7, $18, $c7, $64, $1f, $48, $3f, $58        ;; 0a:6d52 ????????
    db   $3f, $18, $7f, $38, $bf, $3c, $bb, $3c        ;; 0a:6d5a ????????
    db   $3f, $1e, $bf, $0f, $ff, $1e, $ff, $3e        ;; 0a:6d62 ????????
    db   $fc, $7d, $ff, $7f, $f7, $7f, $f7, $7f        ;; 0a:6d6a ????????
    db   $f1, $3f, $f0, $0f, $9e, $3f, $79, $7f        ;; 0a:6d72 ????????
    db   $f3, $ff, $e7, $ff, $c6, $ff, $c6, $ff        ;; 0a:6d7a ????????
    db   $84, $ff, $80, $ff, $e0, $ff, $c0, $ff        ;; 0a:6d82 ????????
    db   $80, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 0a:6d8a ????????
    db   $00, $ff, $00, $20, $80, $20, $50, $70        ;; 0a:6d92 ????????
    db   $00, $70, $00, $70, $80, $f0, $00, $f0        ;; 0a:6d9a ????????
    db   $04, $f4, $00, $00, $03, $00, $03, $00        ;; 0a:6da2 ????????
    db   $03, $00, $03, $00, $03, $00, $07, $00        ;; 0a:6daa ????????
    db   $07, $00, $07, $18, $c7, $1c, $c3, $0c        ;; 0a:6db2 ????????
    db   $d3, $0c, $e3, $06, $e9, $03, $f4, $03        ;; 0a:6dba ????????
    db   $f8, $00, $f1, $1f, $ff, $0f, $ff, $47        ;; 0a:6dc2 ????????
    db   $ff, $61, $ff, $3f, $ff, $1f, $ff, $87        ;; 0a:6dca ????????
    db   $7f, $e1, $1f, $1f, $f8, $ff, $f8, $ff        ;; 0a:6dd2 ????????
    db   $fc, $ff, $e2, $ff, $c0, $ff, $80, $ff        ;; 0a:6dda ????????
    db   $70, $fd, $e2, $ff, $00, $ff, $00, $ff        ;; 0a:6de2 ????????
    db   $00, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 0a:6dea ????????
    db   $00, $ff, $80, $ff, $00, $ff, $00, $ff        ;; 0a:6df2 ????????
    db   $00, $ff, $00, $ff, $00, $ff, $00, $ff        ;; 0a:6dfa ????????
    db   $00, $be, $01, $e4, $12, $e6, $00, $c6        ;; 0a:6e02 ????????
    db   $20, $ce, $00, $9e, $40, $fe, $00, $fe        ;; 0a:6e0a ????????
    db   $00, $3c, $02, $00, $0b, $00, $0b, $00        ;; 0a:6e12 ????????
    db   $17, $00, $05, $00, $0d, $00, $09, $00        ;; 0a:6e1a ????????
    db   $11, $00, $21, $00, $ff, $00, $ff, $00        ;; 0a:6e22 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6e2a ????????
    db   $fc, $03, $f1, $00, $ff, $00, $ff, $00        ;; 0a:6e32 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6e3a ????????
    db   $00, $f1, $8a, $00, $ff, $00, $ff, $00        ;; 0a:6e42 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:6e4a ????????
    db   $00, $ff, $00, $0f, $e0, $19, $c6, $31        ;; 0a:6e52 ????????
    db   $8c, $21, $9a, $23, $90, $03, $d0, $03        ;; 0a:6e5a ????????
    db   $08, $c3, $08, $c3, $3f, $87, $7f, $8f        ;; 0a:6e62 ????????
    db   $7f, $1f, $fe, $1f, $fe, $3f, $fc, $3f        ;; 0a:6e6a ????????
    db   $fc, $3f, $f8, $f9, $c5, $f3, $8b, $e7        ;; 0a:6e72 ????????
    db   $16, $cf, $2e, $cf, $1c, $9f, $5c, $9f        ;; 0a:6e7a ????????
    db   $1c, $1f, $9c, $ff, $00, $f7, $08, $e6        ;; 0a:6e82 ????????
    db   $11, $c6, $20, $c6, $10, $86, $40, $92        ;; 0a:6e8a ????????
    db   $24, $92, $28, $b0, $08, $83, $47, $df        ;; 0a:6e92 ????????
    db   $1e, $c7, $20, $e3, $08, $61, $92, $70        ;; 0a:6e9a ????????
    db   $03, $30, $4b, $1c, $80, $98, $c4, $d0        ;; 0a:6ea2 ????????
    db   $09, $d1, $02, $83, $54, $8e, $01, $26        ;; 0a:6eaa ????????
    db   $90, $76, $40, $00, $01, $00, $03, $00        ;; 0a:6eb2 ????????
    db   $03, $00, $07, $00, $05, $00, $0d, $00        ;; 0a:6eba ????????
    db   $19, $00, $31, $8e, $66, $4c, $aa, $ec        ;; 0a:6ec2 ????????
    db   $0a, $ec, $0b, $ee, $45, $f6, $a5, $f6        ;; 0a:6eca ????????
    db   $53, $fb, $fa, $38, $35, $1c, $1a, $0e        ;; 0a:6ed2 ????????
    db   $0d, $06, $04, $04, $04, $01, $01, $01        ;; 0a:6eda ????????
    db   $81, $02, $82, $ff, $3f, $1f, $8f, $4f        ;; 0a:6ee2 ????????
    db   $67, $e7, $d7, $e7, $d3, $93, $88, $61        ;; 0a:6eea ????????
    db   $48, $e1, $d4, $e3, $00, $e9, $c2, $fd        ;; 0a:6ef2 ????????
    db   $f8, $fc, $fd, $fe, $fe, $ff, $fe, $ff        ;; 0a:6efa ????????
    db   $3c, $ff, $00, $3f, $f8, $3e, $f9, $9e        ;; 0a:6f02 ????????
    db   $78, $8e, $7c, $4e, $ac, $06, $6c, $86        ;; 0a:6f0a ????????
    db   $24, $82, $04, $1f, $1c, $1f, $1c, $0f        ;; 0a:6f12 ????????
    db   $1c, $0f, $0e, $07, $ae, $47, $06, $33        ;; 0a:6f1a ????????
    db   $36, $03, $03, $18, $a2, $00, $00, $1e        ;; 0a:6f22 ????????
    db   $60, $00, $00, $00, $00, $05, $00, $0e        ;; 0a:6f2a ????????
    db   $26, $07, $b7, $18, $a4, $04, $c8, $00        ;; 0a:6f32 ????????
    db   $02, $00, $00, $00, $01, $20, $0b, $c1        ;; 0a:6f3a ????????
    db   $ca, $0b, $10, $10, $04, $00, $20, $00        ;; 0a:6f42 ????????
    db   $00, $20, $00, $00, $00, $20, $20, $00        ;; 0a:6f4a ????????
    db   $00, $80, $10, $00, $43, $01, $02, $07        ;; 0a:6f52 ????????
    db   $00, $07, $00, $0f, $05, $1f, $0a, $3f        ;; 0a:6f5a ????????
    db   $15, $7f, $7f, $fb, $f9, $fd, $55, $fd        ;; 0a:6f62 ????????
    db   $a9, $fd, $54, $fc, $00, $fc, $00, $54        ;; 0a:6f6a ????????
    db   $a9, $a9, $52, $02, $82, $03, $c3, $85        ;; 0a:6f72 ????????
    db   $49, $8e, $54, $1f, $2e, $0f, $07, $f1        ;; 0a:6f7a ????????
    db   $60, $fc, $fa, $e0, $d4, $48, $65, $90        ;; 0a:6f82 ????????
    db   $8b, $e2, $d5, $67, $48, $8c, $10, $f1        ;; 0a:6f8a ????????
    db   $c2, $07, $08, $7f, $00, $3e, $81, $00        ;; 0a:6f92 ????????
    db   $df, $00, $ef, $00, $0f, $00, $f7, $e0        ;; 0a:6f9a ????????
    db   $5b, $f0, $2c, $00, $82, $04, $c0, $04        ;; 0a:6fa2 ????????
    db   $d0, $12, $c0, $12, $c2, $18, $d0, $18        ;; 0a:6faa ????????
    db   $b4, $38, $64, $01, $63, $10, $e1, $30        ;; 0a:6fb2 ????????
    db   $d0, $60, $a7, $07, $44, $31, $01, $79        ;; 0a:6fba ????????
    db   $01, $3f, $43, $80, $38, $80, $df, $40        ;; 0a:6fc2 ????????
    db   $af, $20, $17, $83, $00, $c7, $d9, $e0        ;; 0a:6fca ????????
    db   $ee, $f1, $f0, $1b, $68, $33, $d1, $63        ;; 0a:6fd2 ????????
    db   $b3, $c1, $61, $90, $c0, $20, $81, $61        ;; 0a:6fda ????????
    db   $12, $c1, $02, $e0, $c0, $e0, $c2, $c2        ;; 0a:6fe2 ????????
    db   $c5, $83, $80, $21, $12, $f1, $68, $f9        ;; 0a:6fea ????????
    db   $34, $01, $8c, $00, $00, $7f, $80, $3f        ;; 0a:6ff2 ????????
    db   $5e, $3f, $8f, $1f, $a7, $1f, $a3, $1f        ;; 0a:6ffa ????????
    db   $a1, $1f, $a0, $ff, $ff, $1f, $15, $e3        ;; 0a:7002 ????????
    db   $02, $fc, $e0, $ff, $fc, $ff, $ff, $ff        ;; 0a:700a ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $55, $ff        ;; 0a:7012 ????????
    db   $aa, $ff, $55, $3f, $00, $cf, $00, $f1        ;; 0a:701a ????????
    db   $c2, $fc, $f0, $03, $f5, $07, $eb, $0f        ;; 0a:7022 ????????
    db   $d7, $1f, $ac, $3f, $90, $30, $4f, $60        ;; 0a:702a ????????
    db   $10, $6c, $4a, $ff, $ff, $ff, $ff, $ff        ;; 0a:7032 ????????
    db   $f0, $f8, $07, $00, $f8, $00, $00, $00        ;; 0a:703a ????????
    db   $00, $00, $00, $ff, $f8, $ff, $ff, $ff        ;; 0a:7042 ????????
    db   $00, $00, $ff, $00, $00, $00, $00, $00        ;; 0a:704a ????????
    db   $00, $00, $00, $f8, $16, $fc, $0b, $fe        ;; 0a:7052 ????????
    db   $01, $ff, $00, $0f, $f0, $00, $0f, $00        ;; 0a:705a ????????
    db   $00, $03, $05, $70, $cc, $00, $38, $00        ;; 0a:7062 ????????
    db   $80, $00, $80, $80, $40, $c6, $25, $40        ;; 0a:706a ????????
    db   $a0, $4c, $6a, $3a, $02, $1f, $23, $1c        ;; 0a:7072 ????????
    db   $00, $0f, $10, $07, $09, $03, $04, $41        ;; 0a:707a ????????
    db   $02, $20, $00, $3f, $3c, $ff, $f8, $7e        ;; 0a:7082 ????????
    db   $79, $fc, $f2, $f8, $e4, $f0, $c8, $c0        ;; 0a:708a ????????
    db   $20, $00, $00, $80, $41, $10, $90, $30        ;; 0a:7092 ????????
    db   $11, $24, $25, $4c, $08, $3c, $31, $38        ;; 0a:709a ????????
    db   $c5, $00, $3d, $71, $22, $f3, $2a, $63        ;; 0a:70a2 ????????
    db   $96, $06, $0d, $6e, $ec, $ce, $18, $5c        ;; 0a:70aa ????????
    db   $8a, $5c, $89, $0f, $70, $0f, $70, $07        ;; 0a:70b2 ????????
    db   $78, $03, $7c, $00, $ff, $00, $ff, $00        ;; 0a:70ba ????????
    db   $ff, $00, $f8, $ff, $7f, $ff, $1f, $ff        ;; 0a:70c2 ????????
    db   $07, $ff, $00, $7f, $80, $00, $ff, $00        ;; 0a:70ca ????????
    db   $c0, $3f, $1f, $ff, $fc, $ff, $fe, $ff        ;; 0a:70d2 ????????
    db   $ff, $ff, $70, $fc, $00, $03, $81, $7f        ;; 0a:70da ????????
    db   $3e, $ff, $f0, $00, $7f, $80, $3f, $c0        ;; 0a:70e2 ????????
    db   $1f, $e0, $0f, $00, $07, $e0, $c3, $f8        ;; 0a:70ea ????????
    db   $31, $fc, $00, $68, $44, $6e, $48, $75        ;; 0a:70f2 ????????
    db   $06, $37, $62, $3b, $a3, $3c, $90, $1f        ;; 0a:70fa ????????
    db   $af, $07, $88, $00, $01, $01, $1c, $1d        ;; 0a:7102 ????????
    db   $c3, $b8, $58, $87, $83, $7f, $7c, $f8        ;; 0a:710a ????????
    db   $c4, $80, $40, $00, $b8, $b8, $43, $fb        ;; 0a:7112 ????????
    db   $bc, $03, $01, $fc, $f8, $ff, $07, $03        ;; 0a:711a ????????
    db   $04, $c8, $10, $01, $02, $07, $09, $86        ;; 0a:7122 ????????
    db   $3a, $de, $a2, $3d, $2c, $c3, $81, $ff        ;; 0a:712a ????????
    db   $7f, $3e, $43, $49, $65, $43, $63, $4f        ;; 0a:7132 ????????
    db   $e6, $c6, $61, $80, $c0, $80, $c3, $00        ;; 0a:713a ????????
    db   $89, $0c, $04, $8f, $80, $cf, $a7, $8f        ;; 0a:7142 ????????
    db   $57, $1f, $23, $3f, $c1, $3f, $c0, $1f        ;; 0a:714a ????????
    db   $e0, $07, $f8, $01, $00, $e3, $00, $fc        ;; 0a:7152 ????????
    db   $e0, $ff, $fc, $ff, $ff, $ff, $ff, $ff        ;; 0a:715a ????????
    db   $3f, $ff, $0f, $c0, $08, $a0, $51, $41        ;; 0a:7162 ????????
    db   $3a, $01, $12, $c0, $00, $e0, $c1, $f0        ;; 0a:716a ????????
    db   $e3, $f8, $f0, $1c, $09, $de, $c8, $cf        ;; 0a:7172 ????????
    db   $5c, $0f, $07, $07, $08, $e0, $67, $c0        ;; 0a:717a ????????
    db   $40, $40, $83, $07, $c3, $3f, $18, $ff        ;; 0a:7182 ????????
    db   $00, $f0, $0f, $80, $70, $07, $80, $0f        ;; 0a:718a ????????
    db   $13, $1f, $e7, $ff, $f0, $f0, $0f, $00        ;; 0a:7192 ????????
    db   $f0, $00, $00, $c0, $30, $e0, $18, $f0        ;; 0a:719a ????????
    db   $cc, $f8, $e4, $f0, $0f, $00, $f0, $00        ;; 0a:71a2 ????????
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 0a:71aa ????????
    db   $06, $06, $19, $04, $fa, $06, $18, $0c        ;; 0a:71b2 ????????
    db   $02, $08, $15, $10, $6b, $60, $97, $80        ;; 0a:71ba ????????
    db   $4f, $00, $3f, $00, $c0, $0f, $d0, $07        ;; 0a:71c2 ????????
    db   $c9, $07, $c3, $0f, $e7, $0e, $e6, $0f        ;; 0a:71ca ????????
    db   $e6, $0f, $e7, $0f, $30, $8f, $17, $cf        ;; 0a:71d2 ????????
    db   $c7, $ef, $e6, $fe, $f8, $7f, $3c, $3f        ;; 0a:71da ????????
    db   $1c, $bf, $1c, $c7, $08, $e7, $e3, $f7        ;; 0a:71e2 ????????
    db   $fb, $ff, $7f, $1f, $1f, $3f, $18, $bf        ;; 0a:71ea ????????
    db   $1c, $bf, $1c, $80, $02, $c8, $90, $dc        ;; 0a:71f2 ????????
    db   $fc, $fe, $fc, $fe, $3c, $1e, $9c, $3e        ;; 0a:71fa ????????
    db   $18, $7c, $38, $1e, $07, $0f, $13, $07        ;; 0a:7202 ????????
    db   $19, $03, $0c, $01, $86, $80, $43, $c0        ;; 0a:720a ????????
    db   $01, $c8, $00, $01, $3e, $80, $4f, $c0        ;; 0a:7212 ????????
    db   $b1, $e0, $d0, $c7, $60, $c7, $68, $47        ;; 0a:721a ????????
    db   $a8, $03, $cc, $ff, $01, $0f, $f0, $00        ;; 0a:7222 ????????
    db   $e0, $1f, $00, $ff, $0f, $ff, $3f, $ff        ;; 0a:722a ????????
    db   $0f, $ff, $03, $fc, $f8, $fe, $00, $00        ;; 0a:7232 ????????
    db   $00, $f8, $00, $ff, $f8, $ff, $ff, $ff        ;; 0a:723a ????????
    db   $ff, $ff, $ff, $00, $00, $00, $00, $20        ;; 0a:7242 ????????
    db   $01, $70, $00, $f8, $60, $fc, $f0, $fc        ;; 0a:724a ????????
    db   $fa, $fe, $fd, $3f, $cf, $7f, $8f, $7f        ;; 0a:7252 ????????
    db   $8f, $7f, $8f, $7f, $0f, $3f, $07, $df        ;; 0a:725a ????????
    db   $07, $6f, $43, $f8, $e4, $f8, $c1, $e1        ;; 0a:7262 ????????
    db   $82, $c2, $01, $f0, $e0, $f0, $e0, $e0        ;; 0a:726a ????????
    db   $c0, $e0, $83, $18, $64, $60, $93, $80        ;; 0a:7272 ????????
    db   $4f, $00, $3f, $00, $ff, $00, $ff, $00        ;; 0a:727a ????????
    db   $ff, $00, $ff, $0f, $e7, $0f, $e7, $07        ;; 0a:7282 ????????
    db   $f3, $07, $f2, $07, $f0, $02, $f9, $00        ;; 0a:728a ????????
    db   $f9, $00, $fc, $bf, $1c, $bf, $1c, $bf        ;; 0a:7292 ????????
    db   $1c, $be, $1d, $1e, $89, $0c, $c3, $00        ;; 0a:729a ????????
    db   $86, $00, $00, $3f, $9c, $3e, $9d, $3e        ;; 0a:72a2 ????????
    db   $1d, $3e, $19, $3c, $02, $18, $06, $00        ;; 0a:72aa ????????
    db   $0c, $00, $00, $7c, $38, $78, $34, $70        ;; 0a:72b2 ????????
    db   $28, $70, $0a, $61, $12, $62, $15, $00        ;; 0a:72ba ????????
    db   $26, $00, $00, $ce, $20, $ef, $04, $cf        ;; 0a:72c2 ????????
    db   $26, $8f, $47, $0f, $a7, $67, $53, $33        ;; 0a:72ca ????????
    db   $28, $18, $14, $01, $46, $00, $87, $80        ;; 0a:72d2 ????????
    db   $43, $c0, $33, $e0, $1d, $e0, $90, $ce        ;; 0a:72da ????????
    db   $09, $3f, $3c, $ff, $00, $ff, $00, $7f        ;; 0a:72e2 ????????
    db   $80, $1f, $e0, $07, $f8, $00, $ff, $00        ;; 0a:72ea ????????
    db   $7f, $00, $3f, $ff, $ff, $ff, $1f, $ff        ;; 0a:72f2 ????????
    db   $07, $ff, $00, $ff, $00, $7f, $80, $00        ;; 0a:72fa ????????
    db   $ff, $00, $ff, $fe, $fd, $ff, $fc, $ff        ;; 0a:7302 ????????
    db   $f8, $ff, $00, $fe, $01, $fc, $03, $00        ;; 0a:730a ????????
    db   $fc, $00, $80, $77, $21, $3b, $90, $3d        ;; 0a:7312 ????????
    db   $98, $1e, $cc, $1f, $c7, $0f, $90, $03        ;; 0a:731a ????????
    db   $3c, $00, $7f, $c0, $8f, $c0, $1f, $80        ;; 0a:7322 ????????
    db   $1f, $00, $1f, $80, $0f, $e0, $c7, $f0        ;; 0a:732a ????????
    db   $63, $f0, $0d, $aa, $55, $55, $aa, $ff        ;; 0a:7332 ????????
    db   $00, $ff, $00, $ff, $55, $ff, $aa, $ff        ;; 0a:733a ????????
    db   $55, $ff, $ff, $ff, $ff, $ff, $55, $ff        ;; 0a:7342 ????????
    db   $aa, $ff, $55, $ff, $00, $ff, $00, $55        ;; 0a:734a ????????
    db   $aa, $aa, $55                                 ;; 0a:7352 ???

data_0a_7355:
    dw   `11111111                                     ;; 0a:7355 $ff $00
    dw   `11111111                                     ;; 0a:7357 $ff $00
    dw   `11111111                                     ;; 0a:7359 $ff $00
    dw   `11111111                                     ;; 0a:735b $ff $00
    dw   `11111111                                     ;; 0a:735d $ff $00
    dw   `11111111                                     ;; 0a:735f $ff $00
    dw   `11111111                                     ;; 0a:7361 $ff $00
    dw   `11111111                                     ;; 0a:7363 $ff $00

    dw   `22222222                                     ;; 0a:7365 $00 $ff
    dw   `22222222                                     ;; 0a:7367 $00 $ff
    dw   `22222222                                     ;; 0a:7369 $00 $ff
    dw   `22222222                                     ;; 0a:736b $00 $ff
    dw   `22222222                                     ;; 0a:736d $00 $ff
    dw   `22222222                                     ;; 0a:736f $00 $ff
    dw   `22222222                                     ;; 0a:7371 $00 $ff
    dw   `22222222                                     ;; 0a:7373 $00 $ff

    dw   `33333333                                     ;; 0a:7375 $ff $ff
    dw   `33333333                                     ;; 0a:7377 $ff $ff
    dw   `33333333                                     ;; 0a:7379 $ff $ff
    dw   `33333333                                     ;; 0a:737b $ff $ff
    dw   `33333333                                     ;; 0a:737d $ff $ff
    dw   `33333333                                     ;; 0a:737f $ff $ff
    dw   `33333333                                     ;; 0a:7381 $ff $ff
    dw   `33333333                                     ;; 0a:7383 $ff $ff


data_0a_7385:
    dw   data_0a_60a2                                  ;; 0a:7385 pP
    db   $90, $03                                      ;; 0a:7387 ..
    dw   $9040                                         ;; 0a:7389 pP
    db   $6f, $60                                      ;; 0a:738b ..
    dw   data_0a_73c7                                  ;; 0a:738d pP
    db   $00, $01                                      ;; 0a:738f ..
    dw   $8000                                         ;; 0a:7391 pP

data_0a_7393:
    db   $75, $64, $40, $02, $40, $90, $32, $64        ;; 0a:7393 ????????
    db   $00, $00                                      ;; 0a:739b ??

data_0a_739d:
    db   $29, $67, $70, $02, $40, $90, $b5, $66        ;; 0a:739d ????????
    db   $c7, $74, $e0, $01, $00, $80                  ;; 0a:73a5 ??????

data_0a_73ab:
    db   $bf, $69, $e0, $02, $40, $90, $99, $69        ;; 0a:73ab ????????
    db   $a7, $76, $40, $00, $00, $80                  ;; 0a:73b3 ??????

data_0a_73b9:
    db   $d5, $6c, $80, $06, $40, $90, $9f, $6c        ;; 0a:73b9 ????????
    db   $e7, $76, $b0, $00, $00, $80                  ;; 0a:73c1 ??????

data_0a_73c7:
    dw   `00000000                                     ;; 0a:73c7 $00 $00
    dw   `00000000                                     ;; 0a:73c9 $00 $00
    dw   `00330000                                     ;; 0a:73cb $30 $30
    dw   `00323000                                     ;; 0a:73cd $28 $38
    dw   `00031300                                     ;; 0a:73cf $1c $14
    dw   `00003130                                     ;; 0a:73d1 $0e $0a
    dw   `00000313                                     ;; 0a:73d3 $07 $05
    dw   `00000031                                     ;; 0a:73d5 $03 $02

    dw   `00000000                                     ;; 0a:73d7 $00 $00
    dw   `00000000                                     ;; 0a:73d9 $00 $00
    dw   `00000000                                     ;; 0a:73db $00 $00
    dw   `00000000                                     ;; 0a:73dd $00 $00
    dw   `00000000                                     ;; 0a:73df $00 $00
    dw   `00000000                                     ;; 0a:73e1 $00 $00
    dw   `00000000                                     ;; 0a:73e3 $00 $00
    dw   `30000000                                     ;; 0a:73e5 $80 $80

    dw   `00000000                                     ;; 0a:73e7 $00 $00
    dw   `00330000                                     ;; 0a:73e9 $30 $30
    dw   `03223000                                     ;; 0a:73eb $48 $78
    dw   `03212300                                     ;; 0a:73ed $54 $6c
    dw   `00321230                                     ;; 0a:73ef $2a $36
    dw   `00032123                                     ;; 0a:73f1 $15 $1b
    dw   `00003212                                     ;; 0a:73f3 $0a $0d
    dw   `00000321                                     ;; 0a:73f5 $05 $06

    dw   `00000000                                     ;; 0a:73f7 $00 $00
    dw   `00000000                                     ;; 0a:73f9 $00 $00
    dw   `00000000                                     ;; 0a:73fb $00 $00
    dw   `00000000                                     ;; 0a:73fd $00 $00
    dw   `00000000                                     ;; 0a:73ff $00 $00
    dw   `00000000                                     ;; 0a:7401 $00 $00
    dw   `30000000                                     ;; 0a:7403 $80 $80
    dw   `23000000                                     ;; 0a:7405 $40 $c0

    dw   `03330000                                     ;; 0a:7407 $70 $70
    dw   `32223000                                     ;; 0a:7409 $88 $f8
    dw   `32112300                                     ;; 0a:740b $b4 $cc
    dw   `32111230                                     ;; 0a:740d $ba $c6
    dw   `03211123                                     ;; 0a:740f $5d $63
    dw   `00321112                                     ;; 0a:7411 $2e $31
    dw   `00032111                                     ;; 0a:7413 $17 $18
    dw   `00003211                                     ;; 0a:7415 $0b $0c

    dw   `00000000                                     ;; 0a:7417 $00 $00
    dw   `00000000                                     ;; 0a:7419 $00 $00
    dw   `00000000                                     ;; 0a:741b $00 $00
    dw   `00000000                                     ;; 0a:741d $00 $00
    dw   `00000000                                     ;; 0a:741f $00 $00
    dw   `30000000                                     ;; 0a:7421 $80 $80
    dw   `23000000                                     ;; 0a:7423 $40 $c0
    dw   `12300000                                     ;; 0a:7425 $a0 $60

    dw   `00000000                                     ;; 0a:7427 $00 $00
    dw   `00000033                                     ;; 0a:7429 $03 $03
    dw   `00000331                                     ;; 0a:742b $07 $06
    dw   `00003311                                     ;; 0a:742d $0f $0c
    dw   `00331112                                     ;; 0a:742f $3e $31
    dw   `03311111                                     ;; 0a:7431 $7f $60
    dw   `03111112                                     ;; 0a:7433 $7e $41
    dw   `03112121                                     ;; 0a:7435 $75 $4a

    dw   `00033330                                     ;; 0a:7437 $1e $1e
    dw   `33322330                                     ;; 0a:7439 $e6 $fe
    dw   `12123323                                     ;; 0a:743b $ad $5f
    dw   `21223223                                     ;; 0a:743d $49 $bf
    dw   `12232223                                     ;; 0a:743f $91 $7f
    dw   `22332223                                     ;; 0a:7441 $31 $ff
    dw   `12322233                                     ;; 0a:7443 $a3 $7f
    dw   `22322230                                     ;; 0a:7445 $22 $fe

    dw   `03311112                                     ;; 0a:7447 $7e $61
    dw   `33312121                                     ;; 0a:7449 $f5 $ea
    dw   `31331212                                     ;; 0a:744b $fa $b5
    dw   `31232223                                     ;; 0a:744d $d1 $bf
    dw   `32233333                                     ;; 0a:744f $9f $ff
    dw   `33223333                                     ;; 0a:7451 $cf $ff
    dw   `33333333                                     ;; 0a:7453 $ff $ff
    dw   `03333330                                     ;; 0a:7455 $7e $7e

    dw   `23232230                                     ;; 0a:7457 $52 $fe
    dw   `23233330                                     ;; 0a:7459 $5e $fe
    dw   `32233300                                     ;; 0a:745b $9c $fc
    dw   `22333000                                     ;; 0a:745d $38 $f8
    dw   `33333000                                     ;; 0a:745f $f8 $f8
    dw   `33330000                                     ;; 0a:7461 $f0 $f0
    dw   `33300000                                     ;; 0a:7463 $e0 $e0
    dw   `00000000                                     ;; 0a:7465 $00 $00

    dw   `03333000                                     ;; 0a:7467 $78 $78
    dw   `31133330                                     ;; 0a:7469 $fe $9e
    dw   `31113333                                     ;; 0a:746b $ff $8f
    dw   `31112333                                     ;; 0a:746d $f7 $8f
    dw   `03122312                                     ;; 0a:746f $66 $5d
    dw   `00322311                                     ;; 0a:7471 $27 $3c
    dw   `00032232                                     ;; 0a:7473 $12 $1f
    dw   `00033333                                     ;; 0a:7475 $1f $1f

    dw   `00000000                                     ;; 0a:7477 $00 $00
    dw   `00000000                                     ;; 0a:7479 $00 $00
    dw   `00000000                                     ;; 0a:747b $00 $00
    dw   `30000000                                     ;; 0a:747d $80 $80
    dw   `33000033                                     ;; 0a:747f $c3 $c3
    dw   `23000333                                     ;; 0a:7481 $47 $c7
    dw   `33300330                                     ;; 0a:7483 $e6 $e6
    dw   `23300000                                     ;; 0a:7485 $60 $e0

    dw   `00033311                                     ;; 0a:7487 $1f $1c
    dw   `00003122                                     ;; 0a:7489 $0c $0b
    dw   `00000323                                     ;; 0a:748b $05 $07
    dw   `00030033                                     ;; 0a:748d $13 $13
    dw   `00313000                                     ;; 0a:748f $38 $28
    dw   `00323000                                     ;; 0a:7491 $28 $38
    dw   `00033300                                     ;; 0a:7493 $1c $1c
    dw   `00000000                                     ;; 0a:7495 $00 $00

    dw   `23300000                                     ;; 0a:7497 $60 $e0
    dw   `33300000                                     ;; 0a:7499 $e0 $e0
    dw   `33000300                                     ;; 0a:749b $c4 $c4
    dw   `30003300                                     ;; 0a:749d $8c $8c
    dw   `00033000                                     ;; 0a:749f $18 $18
    dw   `00330000                                     ;; 0a:74a1 $30 $30
    dw   `00000000                                     ;; 0a:74a3 $00 $00
    dw   `00000000                                     ;; 0a:74a5 $00 $00

    dw   `00033000                                     ;; 0a:74a7 $18 $18
    dw   `00311300                                     ;; 0a:74a9 $3c $24
    dw   `03131230                                     ;; 0a:74ab $7a $56
    dw   `03113330                                     ;; 0a:74ad $7e $4e
    dw   `00322330                                     ;; 0a:74af $26 $3e
    dw   `00323300                                     ;; 0a:74b1 $2c $3c
    dw   `00033300                                     ;; 0a:74b3 $1c $1c
    dw   `00003300                                     ;; 0a:74b5 $0c $0c

    dw   `00003000                                     ;; 0a:74b7 $08 $08
    dw   `00003300                                     ;; 0a:74b9 $0c $0c
    dw   `00000330                                     ;; 0a:74bb $06 $06
    dw   `00030033                                     ;; 0a:74bd $13 $13
    dw   `00300033                                     ;; 0a:74bf $23 $23
    dw   `00000003                                     ;; 0a:74c1 $01 $01
    dw   `00033000                                     ;; 0a:74c3 $18 $18

    db   $0c, $0c, $0f, $0f, $01, $01, $00, $00        ;; 0a:74c5 ..??????
    db   $00, $00, $00, $00, $f8, $f8, $76, $4e        ;; 0a:74cd ????????
    db   $39, $27, $e0, $e0, $d0, $30, $e8, $98        ;; 0a:74d5 ????????
    db   $74, $4c, $7a, $46, $3a, $26, $3d, $23        ;; 0a:74dd ????????
    db   $b5, $ab, $00, $00, $00, $00, $00, $00        ;; 0a:74e5 ????????
    db   $00, $00, $00, $00, $00, $00, $1c, $1c        ;; 0a:74ed ????????
    db   $28, $38, $1e, $11, $1f, $10, $0e, $09        ;; 0a:74f5 ????????
    db   $07, $04, $0f, $0e, $1f, $17, $1e, $15        ;; 0a:74fd ????????
    db   $1d, $17, $75, $eb, $b5, $6b, $d5, $3b        ;; 0a:7505 ????????
    db   $51, $bf, $a9, $5f, $89, $7f, $8b, $ff        ;; 0a:750d ????????
    db   $eb, $ff, $50, $70, $df, $ff, $df, $70        ;; 0a:7515 ????????
    db   $f0, $0f, $ff, $07, $9f, $61, $c0, $3f        ;; 0a:751d ????????
    db   $e0, $1f, $00, $00, $00, $00, $80, $80        ;; 0a:7525 ????????
    db   $40, $c0, $c0, $c0, $40, $40, $80, $80        ;; 0a:752d ????????
    db   $40, $c0, $03, $03, $07, $07, $0f, $09        ;; 0a:7535 ????????
    db   $1e, $11, $1e, $11, $3f, $20, $3f, $20        ;; 0a:753d ????????
    db   $3e, $21, $ff, $fb, $fd, $8f, $fe, $c7        ;; 0a:7545 ????????
    db   $fb, $c7, $fd, $c3, $58, $e7, $60, $ff        ;; 0a:754d ????????
    db   $79, $ff, $df, $bf, $be, $71, $ff, $e0        ;; 0a:7555 ????????
    db   $7f, $e0, $ff, $e0, $ef, $f0, $f7, $98        ;; 0a:755d ????????
    db   $e9, $9e, $32, $cf, $c3, $ff, $31, $ff        ;; 0a:7565 ????????
    db   $cd, $3f, $e3, $1f, $f1, $0f, $e1, $1f        ;; 0a:756d ????????
    db   $c3, $3f, $40, $c0, $41, $c1, $c3, $c3        ;; 0a:7575 ????????
    db   $43, $42, $03, $03, $c1, $c1, $f3, $f3        ;; 0a:757d ????????
    db   $df, $3e, $e0, $e0, $d0, $30, $f8, $f8        ;; 0a:7585 ????????
    db   $78, $e8, $64, $dc, $e4, $fc, $d4, $3c        ;; 0a:758d ????????
    db   $d4, $3c, $3e, $21, $1c, $13, $11, $1f        ;; 0a:7595 ????????
    db   $1f, $1f, $0f, $0f, $0d, $0b, $0e, $09        ;; 0a:759d ????????
    db   $06, $05, $47, $c7, $81, $81, $c0, $c0        ;; 0a:75a5 ????????
    db   $a0, $e0, $30, $f0, $f0, $f0, $90, $f0        ;; 0a:75ad ????????
    db   $a0, $e0, $fe, $bf, $e7, $ff, $ff, $c0        ;; 0a:75b5 ????????
    db   $ff, $de, $79, $67, $7e, $41, $7f, $7f        ;; 0a:75bd ????????
    db   $ff, $c0, $1f, $ff, $ff, $fe, $63, $fe        ;; 0a:75c5 ????????
    db   $93, $7f, $cb, $bf, $4f, $ff, $2b, $fb        ;; 0a:75cd ????????
    db   $d1, $f1, $bd, $73, $fb, $e7, $bf, $7e        ;; 0a:75d5 ????????
    db   $42, $bf, $ff, $ff, $9c, $e3, $3e, $c1        ;; 0a:75dd ????????
    db   $9c, $e3, $c8, $38, $88, $f8, $48, $f8        ;; 0a:75e5 ????????
    db   $d8, $f8, $90, $f0, $f0, $f0, $40, $c0        ;; 0a:75ed ????????
    db   $80, $80, $c8, $b8, $70, $70, $00, $00        ;; 0a:75f5 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:75fd ????????
    db   $00, $00, $ff, $80, $bf, $c0, $c1, $fe        ;; 0a:7605 ????????
    db   $7f, $7e, $7f, $78, $3f, $30, $3f, $30        ;; 0a:760d ????????
    db   $ff, $e0, $70, $f0, $b0, $70, $d8, $38        ;; 0a:7615 ????????
    db   $dc, $3c, $de, $3a, $96, $7a, $93, $7d        ;; 0a:761d ????????
    db   $3b, $fd, $63, $7f, $1c, $1c, $00, $00        ;; 0a:7625 ????????
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 0a:762d ????????
    db   $00, $00, $03, $03, $0e, $0d, $1d, $13        ;; 0a:7635 ????????
    db   $3b, $27, $37, $2f, $1f, $1e, $0f, $0e        ;; 0a:763d ????????
    db   $07, $04, $fe, $e1, $c0, $ff, $fc, $ff        ;; 0a:7645 ????????
    db   $ee, $1f, $f3, $ff, $d9, $3f, $ed, $1f        ;; 0a:764d ????????
    db   $e7, $1f, $39, $ff, $2e, $fe, $4e, $f6        ;; 0a:7655 ????????
    db   $7c, $ec, $b8, $f8, $e0, $e0, $80, $80        ;; 0a:765d ????????
    db   $00, $00, $0f, $0c, $1f, $1b, $3f, $30        ;; 0a:7665 ????????
    db   $7f, $60, $7f, $7c, $e7, $de, $fe, $ff        ;; 0a:766d ????????
    db   $eb, $9f, $ce, $3e, $94, $7c, $e4, $fc        ;; 0a:7675 ????????
    db   $88, $78, $88, $78, $10, $f0, $30, $f0        ;; 0a:767d ????????
    db   $30, $f0, $e5, $9f, $c7, $bf, $7f, $7f        ;; 0a:7685 ????????
    db   $1f, $1f, $1f, $1b, $0c, $0b, $0f, $0c        ;; 0a:768d ????????
    db   $07, $07, $90, $f0, $90, $f0, $c8, $f8        ;; 0a:7695 ????????
    db   $c8, $f8, $c4, $fc, $62, $fe, $32, $fe        ;; 0a:769d ????????
    db   $fc, $fc, $00, $10, $00, $10, $10, $28        ;; 0a:76a5 ????????
    db   $38, $c6, $10, $28, $00, $10, $00, $10        ;; 0a:76ad ????????
    db   $00, $00, $00, $82, $00, $6c, $28, $54        ;; 0a:76b5 ????????
    db   $10, $28, $28, $54, $00, $6c, $00, $82        ;; 0a:76bd ????????
    db   $00, $00, $00, $01, $00, $01, $00, $01        ;; 0a:76c5 ????????
    db   $01, $02, $01, $02, $03, $04, $07, $18        ;; 0a:76cd ????????
    db   $1f, $e0, $00, $00, $00, $40, $00, $20        ;; 0a:76d5 ????????
    db   $00, $18, $08, $16, $06, $09, $07, $08        ;; 0a:76dd ????????
    db   $03, $04, $ff, $00, $ff, $00, $ff, $00        ;; 0a:76e5 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:76ed ????????
    db   $ff, $00, $07, $07, $1f, $1f, $38, $3f        ;; 0a:76f5 ????????
    db   $60, $7f, $67, $78, $cf, $f0, $cf, $f0        ;; 0a:76fd ????????
    db   $cf, $f0, $00, $00, $00, $00, $01, $01        ;; 0a:7705 ????????
    db   $03, $03, $06, $07, $0c, $0f, $18, $1f        ;; 0a:770d ????????
    db   $31, $3e, $0f, $0f, $7f, $7f, $f0, $ff        ;; 0a:7715 ????????
    db   $80, $ff, $0f, $f0, $3f, $c0, $ff, $00        ;; 0a:771d ????????
    db   $ff, $00, $33, $3c, $63, $7c, $67, $78        ;; 0a:7725 ????????
    db   $67, $78, $cf, $f0, $cf, $f0, $cf, $f0        ;; 0a:772d ????????
    db   $cf, $f0, $00, $00, $00, $00, $00, $00        ;; 0a:7735 ????????
    db   $00, $00, $00, $00, $00, $00, $01, $01        ;; 0a:773d ????????
    db   $03, $03, $00, $00, $01, $01, $07, $07        ;; 0a:7745 ????????
    db   $1e, $1f, $38, $3f, $e0, $ff, $c3, $fc        ;; 0a:774d ????????
    db   $8f, $f0, $1f, $1f, $ff, $ff, $e0, $ff        ;; 0a:7755 ????????
    db   $00, $ff, $1f, $e0, $ff, $00, $ff, $00        ;; 0a:775d ????????
    db   $ff, $00, $07, $07, $06, $07, $0c, $0f        ;; 0a:7765 ????????
    db   $18, $1f, $19, $1e, $31, $3e, $33, $3c        ;; 0a:776d ????????
    db   $63, $7c, $1f, $e0, $3f, $c0, $7f, $80        ;; 0a:7775 ????????
    db   $ff, $00, $ff, $00, $ff, $00, $ff, $00        ;; 0a:777d ????????
    db   $ff, $00, $67, $78, $67, $78, $67, $78        ;; 0a:7785 ????????
    db   $cf, $f0, $cf, $f0, $cf, $f0, $cf, $f0        ;; 0a:778d ????????
    db   $cf, $f0                                      ;; 0a:7795 ??

call_0a_7797:
    ld   HL, data_0a_7385                              ;; 0a:7797 $21 $85 $73
    call call_0a_5ed3                                  ;; 0a:779a $cd $d3 $5e
    ld   B, $30                                        ;; 0a:779d $06 $30
    call call_00_01bf                                  ;; 0a:779f $cd $bf $01
    ld   B, $06                                        ;; 0a:77a2 $06 $06
    call call_0a_5fd0                                  ;; 0a:77a4 $cd $d0 $5f
    ld   B, $60                                        ;; 0a:77a7 $06 $60
    call call_00_01bf                                  ;; 0a:77a9 $cd $bf $01
    ld   A, $01                                        ;; 0a:77ac $3e $01
    call call_0a_5ec9                                  ;; 0a:77ae $cd $c9 $5e
    ld   B, $3c                                        ;; 0a:77b1 $06 $3c
    call call_00_01bf                                  ;; 0a:77b3 $cd $bf $01
    xor  A, A                                          ;; 0a:77b6 $af
    call call_00_0399                                  ;; 0a:77b7 $cd $99 $03
    ld   B, $d2                                        ;; 0a:77ba $06 $d2
    call call_00_01bf                                  ;; 0a:77bc $cd $bf $01
    ld   A, [wLCDC]                                    ;; 0a:77bf $fa $da $c0
    res  1, A                                          ;; 0a:77c2 $cb $8f
    ld   [wLCDC], A                                    ;; 0a:77c4 $ea $da $c0
    ld   A, $18                                        ;; 0a:77c7 $3e $18
    ldh  [rLYC], A                                     ;; 0a:77c9 $e0 $45
    ld   A, $06                                        ;; 0a:77cb $3e $06
    ld   [wC16E], A                                    ;; 0a:77cd $ea $6e $c1
    ld   HL, data_0a_786b                              ;; 0a:77d0 $21 $6b $78
    ld   BC, $03                                       ;; 0a:77d3 $01 $03 $00
    ld   DE, wC541                                     ;; 0a:77d6 $11 $41 $c5
    call memcpy_                                       ;; 0a:77d9 $cd $7d $01
    ld   HL, data_0a_78dd                              ;; 0a:77dc $21 $dd $78
    ld   DE, data_0a_786e                              ;; 0a:77df $11 $6e $78
    call call_0a_6012                                  ;; 0a:77e2 $cd $12 $60
    call call_0a_5f07                                  ;; 0a:77e5 $cd $07 $5f
    ld   A, $d0                                        ;; 0a:77e8 $3e $d0
    ldh  [rOBP0], A                                    ;; 0a:77ea $e0 $48
    ldh  [rOBP1], A                                    ;; 0a:77ec $e0 $49
    xor  A, A                                          ;; 0a:77ee $af
    ld   [wC600], A                                    ;; 0a:77ef $ea $00 $c6
    ld   [wC602], A                                    ;; 0a:77f2 $ea $02 $c6
.jr_0a_77f5:
    call call_0a_6027                                  ;; 0a:77f5 $cd $27 $60
    call call_00_039f                                  ;; 0a:77f8 $cd $9f $03
    ld   A, [wC600]                                    ;; 0a:77fb $fa $00 $c6
    or   A, A                                          ;; 0a:77fe $b7
    jr   Z, .jr_0a_77f5                                ;; 0a:77ff $28 $f4
    ld   B, $78                                        ;; 0a:7801 $06 $78
    call call_00_01bf                                  ;; 0a:7803 $cd $bf $01
    xor  A, A                                          ;; 0a:7806 $af
    call call_00_03b4                                  ;; 0a:7807 $cd $b4 $03
    xor  A, A                                          ;; 0a:780a $af
    ld   [wC601], A                                    ;; 0a:780b $ea $01 $c6
    ld   B, $3c                                        ;; 0a:780e $06 $3c
.jr_0a_7810:
    push BC                                            ;; 0a:7810 $c5
    call call_0a_7840                                  ;; 0a:7811 $cd $40 $78
    call call_00_039f                                  ;; 0a:7814 $cd $9f $03
    pop  BC                                            ;; 0a:7817 $c1
    dec  B                                             ;; 0a:7818 $05
    jr   NZ, .jr_0a_7810                               ;; 0a:7819 $20 $f5
    ld   A, $01                                        ;; 0a:781b $3e $01
    ld   [wC601], A                                    ;; 0a:781d $ea $01 $c6
    ld   HL, data_0a_795c                              ;; 0a:7820 $21 $5c $79
    ld   DE, data_0a_786e                              ;; 0a:7823 $11 $6e $78
    call call_0a_6012                                  ;; 0a:7826 $cd $12 $60
    rst  rst_00_0008                                   ;; 0a:7829 $cf
    db   $12                                           ;; 0a:782a ?
.jr_0a_782b:
    call call_0a_7840                                  ;; 0a:782b $cd $40 $78
    call call_00_039f                                  ;; 0a:782e $cd $9f $03
    call call_0a_6027                                  ;; 0a:7831 $cd $27 $60
    jr   NC, .jr_0a_782b                               ;; 0a:7834 $30 $f5
    call call_00_01b3                                  ;; 0a:7836 $cd $b3 $01
    call call_0a_5f07                                  ;; 0a:7839 $cd $07 $5f
    call call_0a_5fe0                                  ;; 0a:783c $cd $e0 $5f
    ret                                                ;; 0a:783f $c9

call_0a_7840:
    ld   A, [wC540]                                    ;; 0a:7840 $fa $40 $c5
    cp   A, $16                                        ;; 0a:7843 $fe $16
    ret  NC                                            ;; 0a:7845 $d0
    ld   B, A                                          ;; 0a:7846 $47
    ld   A, [wFrameCount]                              ;; 0a:7847 $fa $c4 $c0
    xor  A, B                                          ;; 0a:784a $a8
    ld   HL, wC640                                     ;; 0a:784b $21 $40 $c6
    and  A, $0f                                        ;; 0a:784e $e6 $0f
    cp   A, $0a                                        ;; 0a:7850 $fe $0a
    jr   C, .jr_0a_785b                                ;; 0a:7852 $38 $07
    sub  A, $0a                                        ;; 0a:7854 $d6 $0a
    add  A, A                                          ;; 0a:7856 $87
    cp   A, $0a                                        ;; 0a:7857 $fe $0a
    jr   NC, .jr_0a_786a                               ;; 0a:7859 $30 $0f
.jr_0a_785b:
    ld   [HL+], A                                      ;; 0a:785b $22
    call call_00_022b                                  ;; 0a:785c $cd $2b $02
    ld   B, A                                          ;; 0a:785f $47
    and  A, $03                                        ;; 0a:7860 $e6 $03
    ld   [HL+], A                                      ;; 0a:7862 $22
    ld   [HL+], A                                      ;; 0a:7863 $22
    ld   DE, wC640                                     ;; 0a:7864 $11 $40 $c6
    call call_0a_7b5b                                  ;; 0a:7867 $cd $5b $7b
.jr_0a_786a:
    ret                                                ;; 0a:786a $c9

data_0a_786b:
    db   $23, $81, $00                                 ;; 0a:786b ???

data_0a_786e:
    db   $2a, $b7, $c8, $fe, $04, $20, $3d, $5d        ;; 0a:786e ????????
    db   $54, $e5, $3e, $67, $e0, $8b, $3e, $7a        ;; 0a:7876 ????????
    db   $e0, $8c, $cd, $73, $5f, $38, $27, $54        ;; 0a:787e ????????
    db   $3e, $05, $81, $5f, $e1, $23, $23, $23        ;; 0a:7886 ????????
    db   $23, $2a, $12, $e6, $7f, $06, $02, $fe        ;; 0a:788e ????????
    db   $48, $38, $06, $05, $fe, $58, $38, $01        ;; 0a:7896 ????????
    db   $05, $3e, $19, $81, $5f, $78, $12, $e5        ;; 0a:789e ????????
    db   $62, $cd, $03, $7a, $e1, $c9, $e1, $01        ;; 0a:78a6 ????????
    db   $05, $00, $09, $c9, $fe, $01, $28, $23        ;; 0a:78ae ????????
    db   $4e, $23, $06, $00, $5e, $23, $56, $23        ;; 0a:78b6 ????????
    db   $fe, $03, $20, $09, $2a, $e5, $6b, $62        ;; 0a:78be ????????
    db   $cd, $62, $01, $e1, $c9, $2a, $e0, $8b        ;; 0a:78c6 ????????
    db   $2a, $e5, $67, $f0, $8b, $6f, $cd, $5f        ;; 0a:78ce ????????
    db   $01, $e1, $c9, $2a, $e0, $49, $c9             ;; 0a:78d6 ???????

data_0a_78dd:
    db   $08, $04, $b0, $ff, $f0, $ff, $58, $08        ;; 0a:78dd ????????
    db   $04, $b8, $ff, $f0, $ff, $4c, $08, $04        ;; 0a:78e5 ????????
    db   $c0, $ff, $f0, $ff, $40, $08, $04, $c8        ;; 0a:78ed ????????
    db   $ff, $f0, $ff, $58, $08, $04, $d0, $ff        ;; 0a:78f5 ????????
    db   $f0, $ff, $4c, $08, $04, $d8, $ff, $f0        ;; 0a:78fd ????????
    db   $ff, $40, $08, $04, $e0, $ff, $f0, $ff        ;; 0a:7905 ????????
    db   $58, $08, $04, $e8, $ff, $f0, $ff, $4c        ;; 0a:790d ????????
    db   $08, $04, $f0, $ff, $f0, $ff, $40, $08        ;; 0a:7915 ????????
    db   $04, $f8, $ff, $f0, $ff, $58, $08, $04        ;; 0a:791d ????????
    db   $00, $00, $f0, $ff, $4c, $08, $04, $08        ;; 0a:7925 ????????
    db   $00, $f0, $ff, $40, $08, $04, $10, $00        ;; 0a:792d ????????
    db   $f0, $ff, $58, $08, $04, $18, $00, $f0        ;; 0a:7935 ????????
    db   $ff, $4c, $08, $04, $20, $00, $f0, $ff        ;; 0a:793d ????????
    db   $40, $08, $04, $28, $00, $f0, $ff, $58        ;; 0a:7945 ????????
    db   $08, $04, $30, $00, $f0, $ff, $4c, $00        ;; 0a:794d ????????
    db   $04, $38, $00, $f0, $ff, $c0, $ff             ;; 0a:7955 ???????

data_0a_795c:
    db   $00, $02, $14, $00, $99, $a7, $7a, $00        ;; 0a:795c ????????
    db   $02, $14, $20, $99, $bb, $7a, $00, $03        ;; 0a:7964 ????????
    db   $14, $c0, $98, $3c, $08, $03, $14, $e0        ;; 0a:796c ????????
    db   $98, $03, $00, $02, $14, $20, $99, $cf        ;; 0a:7974 ????????
    db   $7a, $00, $02, $14, $40, $99, $e3, $7a        ;; 0a:797c ????????
    db   $00, $03, $14, $a0, $98, $3c, $00, $03        ;; 0a:7984 ????????
    db   $14, $c0, $98, $03, $08, $03, $14, $00        ;; 0a:798c ????????
    db   $99, $03, $00, $02, $14, $40, $99, $f7        ;; 0a:7994 ????????
    db   $7a, $00, $02, $14, $60, $99, $0b, $7b        ;; 0a:799c ????????
    db   $00, $03, $14, $80, $98, $3c, $00, $03        ;; 0a:79a4 ????????
    db   $14, $a0, $98, $03, $08, $03, $14, $20        ;; 0a:79ac ????????
    db   $99, $03, $00, $02, $14, $60, $99, $1f        ;; 0a:79b4 ????????
    db   $7b, $00, $02, $14, $80, $99, $33, $7b        ;; 0a:79bc ????????
    db   $00, $03, $14, $60, $98, $3c, $00, $03        ;; 0a:79c4 ????????
    db   $14, $80, $98, $03, $08, $03, $14, $40        ;; 0a:79cc ????????
    db   $99, $03, $00, $02, $14, $80, $99, $47        ;; 0a:79d4 ????????
    db   $7b, $00, $03, $14, $60, $98, $03, $08        ;; 0a:79dc ????????
    db   $03, $14, $60, $99, $03, $00, $03, $14        ;; 0a:79e4 ????????
    db   $80, $99, $03, $3c, $00, $14, $01, $6f        ;; 0a:79ec ????????
    db   $14, $01, $0a, $14, $01, $01, $00, $01        ;; 0a:79f4 ????????
    db   $00, $ff, $05, $28, $23, $05, $c8, $3e        ;; 0a:79fc ????????
    db   $0f, $81, $6f, $36, $ff, $3e, $19, $81        ;; 0a:7a04 ????????
    db   $6f, $7e, $b7, $11, $5b, $7a, $28, $09        ;; 0a:7a0c ????????
    db   $3d, $11, $5f, $7a, $28, $03, $11, $63        ;; 0a:7a14 ????????
    db   $7a, $3e, $21, $81, $6f, $c3, $83, $01        ;; 0a:7a1c ????????
    db   $cd, $d4, $01, $3e, $05, $81, $6f, $7e        ;; 0a:7a24 ????????
    db   $e6, $7f, $47, $3e, $04, $81, $6f, $3a        ;; 0a:7a2c ????????
    db   $b7, $20, $21, $7e, $b8, $38, $1d, $3e        ;; 0a:7a34 ????????
    db   $05, $81, $6f, $cb, $7e, $28, $05, $3e        ;; 0a:7a3c ????????
    db   $ff, $ea, $00, $c6, $fa, $02, $c6, $3c        ;; 0a:7a44 ????????
    db   $ea, $02, $c6, $e6, $01, $28, $02, $cf        ;; 0a:7a4c ????????
    db   $13, $06, $00, $c9, $06, $01, $c9, $00        ;; 0a:7a54 ????????
    db   $04, $00, $04, $00, $03, $00, $03, $00        ;; 0a:7a5c ????????
    db   $02, $00, $02, $0a, $fe, $79, $04, $00        ;; 0a:7a64 ????????
    db   $00, $40, $0b, $10, $00, $fe, $02, $7d        ;; 0a:7a6c ????????
    db   $7a, $00, $00, $00, $00, $00, $00, $00        ;; 0a:7a74 ????????
    db   $00, $83, $7a, $8f, $7a, $9b, $7a, $00        ;; 0a:7a7c ????????
    db   $00, $00, $00, $00, $00, $22, $05, $06        ;; 0a:7a84 ????????
    db   $c6, $c5, $80, $00, $00, $00, $00, $00        ;; 0a:7a8c ????????
    db   $00, $22, $03, $04, $c4, $c3, $80, $00        ;; 0a:7a94 ????????
    db   $00, $00, $00, $00, $00, $22, $01, $02        ;; 0a:7a9c ????????
    db   $c2, $c1, $80, $18, $19, $1a, $1b, $18        ;; 0a:7aa4 ????????
    db   $19, $1a, $1b, $18, $19, $1a, $1b, $18        ;; 0a:7aac ????????
    db   $19, $1a, $1b, $18, $19, $1a, $1b, $1c        ;; 0a:7ab4 ????????
    db   $1d, $1e, $1f, $1c, $1d, $1e, $1f, $1c        ;; 0a:7abc ????????
    db   $1d, $1e, $1f, $1c, $1d, $1e, $1f, $1c        ;; 0a:7ac4 ????????
    db   $1d, $1e, $1f, $20, $21, $22, $23, $20        ;; 0a:7acc ????????
    db   $21, $22, $23, $20, $21, $22, $23, $20        ;; 0a:7ad4 ????????
    db   $21, $22, $23, $20, $21, $22, $23, $24        ;; 0a:7adc ????????
    db   $25, $26, $27, $24, $25, $26, $27, $24        ;; 0a:7ae4 ????????
    db   $25, $26, $27, $24, $25, $26, $27, $24        ;; 0a:7aec ????????
    db   $25, $26, $27, $28, $29, $2a, $2b, $28        ;; 0a:7af4 ????????
    db   $29, $2a, $2b, $28, $29, $2a, $2b, $28        ;; 0a:7afc ????????
    db   $29, $2a, $2b, $28, $29, $2a, $2b, $2c        ;; 0a:7b04 ????????
    db   $2d, $2e, $2f, $2c, $2d, $2e, $2f, $2c        ;; 0a:7b0c ????????
    db   $2d, $2e, $2f, $2c, $2d, $2e, $2f, $2c        ;; 0a:7b14 ????????
    db   $2d, $2e, $2f, $30, $31, $32, $33, $30        ;; 0a:7b1c ????????
    db   $31, $32, $33, $30, $31, $32, $33, $30        ;; 0a:7b24 ????????
    db   $31, $32, $33, $30, $31, $32, $33, $34        ;; 0a:7b2c ????????
    db   $35, $36, $37, $34, $35, $36, $37, $34        ;; 0a:7b34 ????????
    db   $35, $36, $37, $34, $35, $36, $37, $34        ;; 0a:7b3c ????????
    db   $35, $36, $37, $38, $39, $3a, $3b, $38        ;; 0a:7b44 ????????
    db   $39, $3a, $3b, $38, $39, $3a, $3b, $38        ;; 0a:7b4c ????????
    db   $39, $3a, $3b, $38, $39, $3a, $3b             ;; 0a:7b54 ???????

call_0a_7b5b:
    push DE                                            ;; 0a:7b5b $d5
    ld   A, $cc                                        ;; 0a:7b5c $3e $cc
    ldh  [hFF8B], A                                    ;; 0a:7b5e $e0 $8b
    ld   A, $7b                                        ;; 0a:7b60 $3e $7b
    ldh  [hFF8C], A                                    ;; 0a:7b62 $e0 $8c
    call call_0a_5f73                                  ;; 0a:7b64 $cd $73 $5f
    pop  DE                                            ;; 0a:7b67 $d1
    ret  C                                             ;; 0a:7b68 $d8
    ld   A, $0f                                        ;; 0a:7b69 $3e $0f
    add  A, C                                          ;; 0a:7b6b $81
    ld   L, A                                          ;; 0a:7b6c $6f
    ld   [HL], $05                                     ;; 0a:7b6d $36 $05
    ld   L, C                                          ;; 0a:7b6f $69
    inc  L                                             ;; 0a:7b70 $2c
    ld   A, [DE]                                       ;; 0a:7b71 $1a
    inc  DE                                            ;; 0a:7b72 $13
    swap A                                             ;; 0a:7b73 $cb $37
    ld   B, A                                          ;; 0a:7b75 $47
    and  A, $f0                                        ;; 0a:7b76 $e6 $f0
    ldh  [hFF8B], A                                    ;; 0a:7b78 $e0 $8b
    ld   A, B                                          ;; 0a:7b7a $78
    and  A, $01                                        ;; 0a:7b7b $e6 $01
    ldh  [hFF8C], A                                    ;; 0a:7b7d $e0 $8c
    call call_00_022b                                  ;; 0a:7b7f $cd $2b $02
    and  A, $0f                                        ;; 0a:7b82 $e6 $0f
    ld   B, A                                          ;; 0a:7b84 $47
    ldh  A, [hFF8B]                                    ;; 0a:7b85 $f0 $8b
    add  A, B                                          ;; 0a:7b87 $80
    ld   [HL+], A                                      ;; 0a:7b88 $22
    ldh  A, [hFF8C]                                    ;; 0a:7b89 $f0 $8c
    adc  A, $00                                        ;; 0a:7b8b $ce $00
    ld   [HL+], A                                      ;; 0a:7b8d $22
    ld   [HL], $70                                     ;; 0a:7b8e $36 $70
    inc  L                                             ;; 0a:7b90 $2c
    ld   [HL], $00                                     ;; 0a:7b91 $36 $00
    ld   A, $19                                        ;; 0a:7b93 $3e $19
    add  A, C                                          ;; 0a:7b95 $81
    ld   L, A                                          ;; 0a:7b96 $6f
    ld   A, [DE]                                       ;; 0a:7b97 $1a
    inc  DE                                            ;; 0a:7b98 $13
    and  A, $03                                        ;; 0a:7b99 $e6 $03
    ld   [HL], A                                       ;; 0a:7b9b $77
    add  A, $07                                        ;; 0a:7b9c $c6 $07
    push HL                                            ;; 0a:7b9e $e5
    ld   L, A                                          ;; 0a:7b9f $6f
    ld   A, $00                                        ;; 0a:7ba0 $3e $00
    adc  A, $7c                                        ;; 0a:7ba2 $ce $7c
    ld   H, A                                          ;; 0a:7ba4 $67
    ld   B, [HL]                                       ;; 0a:7ba5 $46
    pop  HL                                            ;; 0a:7ba6 $e1
    ld   A, $0e                                        ;; 0a:7ba7 $3e $0e
    add  A, C                                          ;; 0a:7ba9 $81
    ld   L, A                                          ;; 0a:7baa $6f
    ld   [HL], B                                       ;; 0a:7bab $70
    ld   A, [DE]                                       ;; 0a:7bac $1a
    and  A, $03                                        ;; 0a:7bad $e6 $03
    push AF                                            ;; 0a:7baf $f5
    ld   A, [wC601]                                    ;; 0a:7bb0 $fa $01 $c6
    or   A, A                                          ;; 0a:7bb3 $b7
    ld   DE, .data_0a_7bf7                             ;; 0a:7bb4 $11 $f7 $7b
    jr   Z, .jr_0a_7bbc                                ;; 0a:7bb7 $28 $03
    ld   DE, .data_0a_7bff                             ;; 0a:7bb9 $11 $ff $7b
.jr_0a_7bbc:
    pop  AF                                            ;; 0a:7bbc $f1
    call call_00_0192                                  ;; 0a:7bbd $cd $92 $01
    ld   A, $21                                        ;; 0a:7bc0 $3e $21
    add  A, C                                          ;; 0a:7bc2 $81
    ld   L, A                                          ;; 0a:7bc3 $6f
    xor  A, A                                          ;; 0a:7bc4 $af
    ld   [HL+], A                                      ;; 0a:7bc5 $22
    ld   [HL+], A                                      ;; 0a:7bc6 $22
    ld   A, E                                          ;; 0a:7bc7 $7b
    ld   [HL+], A                                      ;; 0a:7bc8 $22
    ld   A, D                                          ;; 0a:7bc9 $7a
    ld   [HL+], A                                      ;; 0a:7bca $22
    ret                                                ;; 0a:7bcb $c9
    db   $0a, $e2, $7b, $01, $01, $00, $40, $0b        ;; 0a:7bcc ????????
    db   $12, $00, $fe, $01, $0b, $7c, $00, $00        ;; 0a:7bd4 ????????
    db   $00, $00, $00, $00, $00, $00, $05, $28        ;; 0a:7bdc ????????
    db   $03, $05, $c8, $c9, $cd, $d4, $01, $3e        ;; 0a:7be4 ????????
    db   $0a, $81, $6f, $7e, $fe, $08, $06, $00        ;; 0a:7bec ????????
    db   $d8, $04, $c9                                 ;; 0a:7bf4 ???
.data_0a_7bf7:
    db   $00, $fc, $00, $fd, $00, $fe, $00, $ff        ;; 0a:7bf7 ????????
.data_0a_7bff:
    db   $00, $f8, $00, $fa, $00, $fb, $00, $fc        ;; 0a:7bff ????????
    db   $04, $04, $01, $01, $13, $7c, $1f, $7c        ;; 0a:7c07 ????????
    db   $2b, $7c, $34, $7c, $00, $00, $00, $00        ;; 0a:7c0f ????????
    db   $00, $00, $22, $01, $02, $03, $04, $80        ;; 0a:7c17 ????????
    db   $00, $00, $00, $00, $00, $00, $22, $05        ;; 0a:7c1f ????????
    db   $06, $07, $08, $80, $00, $00, $00, $00        ;; 0a:7c27 ????????
    db   $00, $00, $11, $09, $80, $00, $00, $00        ;; 0a:7c2f ????????
    db   $00, $00, $00, $11, $0a, $80                  ;; 0a:7c37 ??????

call_0a_7c3d:
    ld   HL, data_0a_7393                              ;; 0a:7c3d $21 $93 $73
    call call_0a_5ed3                                  ;; 0a:7c40 $cd $d3 $5e
    rst  rst_00_0008                                   ;; 0a:7c43 $cf
    db   $34                                           ;; 0a:7c44 ?
    ld   B, $3c                                        ;; 0a:7c45 $06 $3c
    call call_00_01bf                                  ;; 0a:7c47 $cd $bf $01
    call call_0a_5fce                                  ;; 0a:7c4a $cd $ce $5f
    ld   B, $3c                                        ;; 0a:7c4d $06 $3c
    call call_00_01bf                                  ;; 0a:7c4f $cd $bf $01
    ld   A, $04                                        ;; 0a:7c52 $3e $04
    call call_0a_7c65                                  ;; 0a:7c54 $cd $65 $7c
    ld   A, $05                                        ;; 0a:7c57 $3e $05
    call call_0a_7c65                                  ;; 0a:7c59 $cd $65 $7c
    ld   A, $06                                        ;; 0a:7c5c $3e $06
    call call_0a_7c65                                  ;; 0a:7c5e $cd $65 $7c
    call call_0a_5fe0                                  ;; 0a:7c61 $cd $e0 $5f
    ret                                                ;; 0a:7c64 $c9

call_0a_7c65:
    ld   B, $3c                                        ;; 0a:7c65 $06 $3c
    jp   call_0a_5ecb                                  ;; 0a:7c67 $c3 $cb $5e

call_0a_7c6a:
    ld   HL, data_0a_739d                              ;; 0a:7c6a $21 $9d $73
    call call_0a_5ed3                                  ;; 0a:7c6d $cd $d3 $5e
    call call_0a_5eb2                                  ;; 0a:7c70 $cd $b2 $5e
    call call_0a_5fce                                  ;; 0a:7c73 $cd $ce $5f
    call call_0a_7cca                                  ;; 0a:7c76 $cd $ca $7c
    ld   A, $fa                                        ;; 0a:7c79 $3e $fa
    call call_0a_7cbe                                  ;; 0a:7c7b $cd $be $7c
    ld   A, $e5                                        ;; 0a:7c7e $3e $e5
    call call_0a_7cbe                                  ;; 0a:7c80 $cd $be $7c
    ld   A, $d0                                        ;; 0a:7c83 $3e $d0
    call call_0a_7cbe                                  ;; 0a:7c85 $cd $be $7c
    ld   B, $1e                                        ;; 0a:7c88 $06 $1e
    call call_00_01bf                                  ;; 0a:7c8a $cd $bf $01
    ld   A, $07                                        ;; 0a:7c8d $3e $07
    ld   B, $1e                                        ;; 0a:7c8f $06 $1e
    call call_0a_5ecb                                  ;; 0a:7c91 $cd $cb $5e
    call call_0a_7cae                                  ;; 0a:7c94 $cd $ae $7c
    ld   A, $08                                        ;; 0a:7c97 $3e $08
    call call_0a_5ec9                                  ;; 0a:7c99 $cd $c9 $5e
    ld   HL, $9a12                                     ;; 0a:7c9c $21 $12 $9a
    xor  A, A                                          ;; 0a:7c9f $af
    call call_00_015c                                  ;; 0a:7ca0 $cd $5c $01
    xor  A, A                                          ;; 0a:7ca3 $af
    call call_00_0399                                  ;; 0a:7ca4 $cd $99 $03
    call call_0a_5fe0                                  ;; 0a:7ca7 $cd $e0 $5f
    call call_0a_5ec0                                  ;; 0a:7caa $cd $c0 $5e
    ret                                                ;; 0a:7cad $c9

call_0a_7cae:
    ld   A, $e5                                        ;; 0a:7cae $3e $e5
    call call_0a_7cbe                                  ;; 0a:7cb0 $cd $be $7c
    ld   A, $fa                                        ;; 0a:7cb3 $3e $fa
    call call_0a_7cbe                                  ;; 0a:7cb5 $cd $be $7c
    ld   A, $ff                                        ;; 0a:7cb8 $3e $ff
    call call_0a_7cbe                                  ;; 0a:7cba $cd $be $7c
    ret                                                ;; 0a:7cbd $c9

call_0a_7cbe:
    push AF                                            ;; 0a:7cbe $f5
    call call_0a_5f07                                  ;; 0a:7cbf $cd $07 $5f
    pop  AF                                            ;; 0a:7cc2 $f1
    ldh  [rOBP0], A                                    ;; 0a:7cc3 $e0 $48
    ld   B, $06                                        ;; 0a:7cc5 $06 $06
    jp   jp_0a_5f09                                    ;; 0a:7cc7 $c3 $09 $5f

call_0a_7cca:
    ld   A, $ff                                        ;; 0a:7cca $3e $ff
    ldh  [hFFAB], A                                    ;; 0a:7ccc $e0 $ab
    ld   [wCD55], A                                    ;; 0a:7cce $ea $55 $cd
    xor  A, A                                          ;; 0a:7cd1 $af
    ldh  [hFF9E], A                                    ;; 0a:7cd2 $e0 $9e
    ld   A, $20                                        ;; 0a:7cd4 $3e $20
    ldh  [hFF9A], A                                    ;; 0a:7cd6 $e0 $9a
    ld   A, $30                                        ;; 0a:7cd8 $3e $30
    ldh  [hFF9B], A                                    ;; 0a:7cda $e0 $9b
    ld   A, $1e                                        ;; 0a:7cdc $3e $1e
    call call_00_0198                                  ;; 0a:7cde $cd $98 $01
    ld   [wC601], A                                    ;; 0a:7ce1 $ea $01 $c6
    ld   HL, .data_0a_7cea                             ;; 0a:7ce4 $21 $ea $7c
    jp   call_00_019b                                  ;; 0a:7ce7 $c3 $9b $01
.data_0a_7cea:
    db   $00, $00, $57, $04, $05, $06, $07, $00        ;; 0a:7cea ????????
    db   $09, $0a, $0b, $0c, $0d, $0f, $10, $11        ;; 0a:7cf2 ????????
    db   $12, $13, $00, $15, $16, $17, $00, $18        ;; 0a:7cfa ????????
    db   $19, $1a, $00, $00, $1b, $1c, $00, $00        ;; 0a:7d02 ????????
    db   $00, $1d, $1e, $00, $00, $00, $00, $f8        ;; 0a:7d0a ????????
    db   $01, $08, $f8, $02, $10, $f8, $03, $f8        ;; 0a:7d12 ????????
    db   $08, $08, $f8, $10, $0e, $fd, $18, $14        ;; 0a:7d1a ????????
    db   $80                                           ;; 0a:7d22 ?

call_0a_7d23:
    ld   HL, data_0a_73ab                              ;; 0a:7d23 $21 $ab $73
    call call_0a_5ed3                                  ;; 0a:7d26 $cd $d3 $5e
    ld   B, $3c                                        ;; 0a:7d29 $06 $3c
    call call_00_01bf                                  ;; 0a:7d2b $cd $bf $01
    xor  A, A                                          ;; 0a:7d2e $af
    ld   [wC602], A                                    ;; 0a:7d2f $ea $02 $c6
    ld   [wC603], A                                    ;; 0a:7d32 $ea $03 $c6
    ld   A, $d0                                        ;; 0a:7d35 $3e $d0
    ldh  [rOBP0], A                                    ;; 0a:7d37 $e0 $48
    ld   A, $4f                                        ;; 0a:7d39 $3e $4f
    ld   [wDF99], A                                    ;; 0a:7d3b $ea $99 $df
    ld   A, $03                                        ;; 0a:7d3e $3e $03
    ld   [wC16E], A                                    ;; 0a:7d40 $ea $6e $c1
    ld   A, $64                                        ;; 0a:7d43 $3e $64
    ldh  [rLYC], A                                     ;; 0a:7d45 $e0 $45
    ld   A, $40                                        ;; 0a:7d47 $3e $40
    ldh  [rSTAT], A                                    ;; 0a:7d49 $e0 $41
    ld   B, $b4                                        ;; 0a:7d4b $06 $b4
    call call_00_01bf                                  ;; 0a:7d4d $cd $bf $01
    ld   A, $02                                        ;; 0a:7d50 $3e $02
    ld   [wC603], A                                    ;; 0a:7d52 $ea $03 $c6
    ld   B, $0c                                        ;; 0a:7d55 $06 $0c
    ld   A, $ab                                        ;; 0a:7d57 $3e $ab
    call call_0a_5fc5                                  ;; 0a:7d59 $cd $c5 $5f
    ld   A, $67                                        ;; 0a:7d5c $3e $67
    call call_0a_5fc5                                  ;; 0a:7d5e $cd $c5 $5f
    ld   A, $27                                        ;; 0a:7d61 $3e $27
    call call_0a_5fc5                                  ;; 0a:7d63 $cd $c5 $5f
    ld   B, $1e                                        ;; 0a:7d66 $06 $1e
    call call_00_01bf                                  ;; 0a:7d68 $cd $bf $01
    ld   A, $0b                                        ;; 0a:7d6b $3e $0b
    call call_0a_5ec9                                  ;; 0a:7d6d $cd $c9 $5e
    ld   B, $1e                                        ;; 0a:7d70 $06 $1e
    call call_00_01bf                                  ;; 0a:7d72 $cd $bf $01
    xor  A, A                                          ;; 0a:7d75 $af
    call call_00_0399                                  ;; 0a:7d76 $cd $99 $03
    call call_00_01b3                                  ;; 0a:7d79 $cd $b3 $01
    xor  A, A                                          ;; 0a:7d7c $af
    ld   [wDF99], A                                    ;; 0a:7d7d $ea $99 $df
    jp   call_0a_5fe0                                  ;; 0a:7d80 $c3 $e0 $5f

jp_0a_7d83:
    ld   HL, wC602                                     ;; 0a:7d83 $21 $02 $c6
    ld   A, [HL]                                       ;; 0a:7d86 $7e
    or   A, A                                          ;; 0a:7d87 $b7
    jr   Z, .jr_0a_7d8d                                ;; 0a:7d88 $28 $03
    dec  [HL]                                          ;; 0a:7d8a $35
    jr   .jr_0a_7d9b                                   ;; 0a:7d8b $18 $0e
.jr_0a_7d8d:
    inc  L                                             ;; 0a:7d8d $2c
    ld   A, [HL]                                       ;; 0a:7d8e $7e
    xor  A, $01                                        ;; 0a:7d8f $ee $01
    ld   [HL-], A                                      ;; 0a:7d91 $32
    bit  1, A                                          ;; 0a:7d92 $cb $4f
    ld   A, $05                                        ;; 0a:7d94 $3e $05
    jr   Z, .jr_0a_7d9a                                ;; 0a:7d96 $28 $02
    ld   A, $05                                        ;; 0a:7d98 $3e $05
.jr_0a_7d9a:
    ld   [HL], A                                       ;; 0a:7d9a $77
.jr_0a_7d9b:
    ld   A, [wC603]                                    ;; 0a:7d9b $fa $03 $c6
    and  A, $03                                        ;; 0a:7d9e $e6 $03
    jr   Z, .jr_0a_7dba                                ;; 0a:7da0 $28 $18
    dec  A                                             ;; 0a:7da2 $3d
    jr   Z, .jr_0a_7dad                                ;; 0a:7da3 $28 $08
    dec  A                                             ;; 0a:7da5 $3d
    jr   Z, .jr_0a_7db2                                ;; 0a:7da6 $28 $0a
    ld   HL, .data_0a_7dee                             ;; 0a:7da8 $21 $ee $7d
    jr   .jr_0a_7db5                                   ;; 0a:7dab $18 $08
.jr_0a_7dad:
    ld   HL, .data_0a_7dda                             ;; 0a:7dad $21 $da $7d
    jr   .jr_0a_7dbd                                   ;; 0a:7db0 $18 $0b
.jr_0a_7db2:
    ld   HL, .data_0a_7dde                             ;; 0a:7db2 $21 $de $7d
.jr_0a_7db5:
    ld   BC, $10                                       ;; 0a:7db5 $01 $10 $00
    jr   .jr_0a_7dc0                                   ;; 0a:7db8 $18 $06
.jr_0a_7dba:
    ld   HL, .data_0a_7dd6                             ;; 0a:7dba $21 $d6 $7d
.jr_0a_7dbd:
    ld   BC, $04                                       ;; 0a:7dbd $01 $04 $00
.jr_0a_7dc0:
    ld   DE, wOAMBuffer                                ;; 0a:7dc0 $11 $00 $c0
    call memcpy_                                       ;; 0a:7dc3 $cd $7d $01
    ld   DE, $04                                       ;; 0a:7dc6 $11 $04 $00
    ld   B, $03                                        ;; 0a:7dc9 $06 $03
.jr_0a_7dcb:
    ld   [HL], $a0                                     ;; 0a:7dcb $36 $a0
    add  HL, DE                                        ;; 0a:7dcd $19
    dec  B                                             ;; 0a:7dce $05
    jr   NZ, .jr_0a_7dcb                               ;; 0a:7dcf $20 $fa
    xor  A, A                                          ;; 0a:7dd1 $af
    ld   [wC0C8], A                                    ;; 0a:7dd2 $ea $c8 $c0
    ret                                                ;; 0a:7dd5 $c9
.data_0a_7dd6:
    db   $39, $44, $00, $00                            ;; 0a:7dd6 ????
.data_0a_7dda:
    db   $39, $44, $01, $00                            ;; 0a:7dda ????
.data_0a_7dde:
    db   $35, $40, $02, $00, $35, $47, $02, $20        ;; 0a:7dde ????????
    db   $3c, $40, $02, $40, $3c, $47, $02, $60        ;; 0a:7de6 ????????
.data_0a_7dee:
    db   $35, $40, $03, $00, $35, $47, $03, $20        ;; 0a:7dee ????????
    db   $3c, $40, $03, $40, $3c, $47, $03, $60        ;; 0a:7df6 ????????

call_0a_7dfe:
    ld   HL, data_0a_73b9                              ;; 0a:7dfe $21 $b9 $73
    call call_0a_5ed3                                  ;; 0a:7e01 $cd $d3 $5e
    ld   A, $01                                        ;; 0a:7e04 $3e $01
    ld   [wCD56], A                                    ;; 0a:7e06 $ea $56 $cd
    ld   A, $28                                        ;; 0a:7e09 $3e $28
    ld   [wCD50], A                                    ;; 0a:7e0b $ea $50 $cd
    ld   A, $24                                        ;; 0a:7e0e $3e $24
    call call_00_0198                                  ;; 0a:7e10 $cd $98 $01
    ld   [wC601], A                                    ;; 0a:7e13 $ea $01 $c6
    call call_0a_5fce                                  ;; 0a:7e16 $cd $ce $5f
    ld   A, $d0                                        ;; 0a:7e19 $3e $d0
    ldh  [rOBP0], A                                    ;; 0a:7e1b $e0 $48
    ld   A, $0d                                        ;; 0a:7e1d $3e $0d
    call call_0a_5ec9                                  ;; 0a:7e1f $cd $c9 $5e
    ld   B, $78                                        ;; 0a:7e22 $06 $78
    call call_00_01bf                                  ;; 0a:7e24 $cd $bf $01
    xor  A, A                                          ;; 0a:7e27 $af
    call call_00_0399                                  ;; 0a:7e28 $cd $99 $03
    ld   B, $1e                                        ;; 0a:7e2b $06 $1e
    call call_00_01bf                                  ;; 0a:7e2d $cd $bf $01
    ld   HL, .data_0a_7e7e                             ;; 0a:7e30 $21 $7e $7e
    ld   DE, .data_0a_7e57                             ;; 0a:7e33 $11 $57 $7e
    call call_0a_6012                                  ;; 0a:7e36 $cd $12 $60
    rst  rst_00_0008                                   ;; 0a:7e39 $cf
    db   $28                                           ;; 0a:7e3a ?
.jr_0a_7e3b:
    call call_0a_5f07                                  ;; 0a:7e3b $cd $07 $5f
    call call_0a_6027                                  ;; 0a:7e3e $cd $27 $60
    jr   NC, .jr_0a_7e3b                               ;; 0a:7e41 $30 $f8
    ld   A, $11                                        ;; 0a:7e43 $3e $11
    ld   [wBGP], A                                     ;; 0a:7e45 $ea $d9 $c0
    ld   B, $10                                        ;; 0a:7e48 $06 $10
    call call_00_01bf                                  ;; 0a:7e4a $cd $bf $01
    xor  A, A                                          ;; 0a:7e4d $af
    ld   [wBGP], A                                     ;; 0a:7e4e $ea $d9 $c0
    ld   B, $28                                        ;; 0a:7e51 $06 $28
    call call_00_01bf                                  ;; 0a:7e53 $cd $bf $01
    ret                                                ;; 0a:7e56 $c9
.data_0a_7e57:
    db   $5e, $23, $56, $23, $e5, $d5, $cd, $b3        ;; 0a:7e57 ????????
    db   $01, $3e, $ff, $e0, $ab, $af, $e0, $9e        ;; 0a:7e5f ????????
    db   $ea, $55, $cd, $e0, $9a, $e0, $9b, $e1        ;; 0a:7e67 ????????
    db   $7c, $b5, $fa, $01, $c6, $c4, $9b, $01        ;; 0a:7e6f ????????
    db   $e1, $3e, $12, $ea, $d9, $c0, $c9             ;; 0a:7e77 ???????
.data_0a_7e7e:
    db   $06, $8b, $7e, $06, $93, $7e, $04, $a7        ;; 0a:7e7e ????????
    db   $7e, $00, $00, $00, $ff, $35, $44, $22        ;; 0a:7e86 ????????
    db   $02, $82, $42, $c2, $80, $2d, $3c, $44        ;; 0a:7e8e ????????
    db   $03, $04, $84, $83, $05, $06, $86, $85        ;; 0a:7e96 ????????
    db   $45, $46, $c6, $c5, $43, $44, $c4, $c3        ;; 0a:7e9e ????????
    db   $80, $25, $34, $66, $06, $07, $08, $88        ;; 0a:7ea6 ????????
    db   $87, $86, $09, $0a, $01, $81, $8a, $89        ;; 0a:7eae ????????
    db   $0b, $01, $01, $81, $81, $8b, $4b, $41        ;; 0a:7eb6 ????????
    db   $41, $c1, $c1, $cb, $49, $4a, $41, $c1        ;; 0a:7ebe ????????
    db   $ca, $c9, $46, $47, $48, $c8, $c7, $c6        ;; 0a:7ec6 ????????
    db   $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ece ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ed6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ede ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ee6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7eee ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ef6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7efe ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f06 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f0e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f16 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f1e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f26 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f2e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f36 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f3e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f46 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f4e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f56 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f5e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f66 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f6e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f76 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f7e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f86 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f8e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f96 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7f9e ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fa6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fae ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fb6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fbe ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fc6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fce ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fd6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fde ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fe6 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7fee ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 0a:7ff6 ????????
    db   $ff, $ff                                      ;; 0a:7ffe ??
