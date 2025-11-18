;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "bank03", ROMX[$4000], BANK[$03]
;@data format=p amount=3
    dw   data_03_792b                                  ;; 03:4000 ?? $00
    dw   data_03_792b                                  ;; 03:4002 ?? $01
    dw   data_03_792b                                  ;; 03:4004 ?? $02

call_03_4006:
    jp   jp_03_78aa                                    ;; 03:4006 $c3 $aa $78
    db   $c3, $a4, $78, $c3, $e2, $6c, $c3, $0a        ;; 03:4009 ????????
    db   $75, $c3, $ca, $6c                            ;; 03:4011 ????

call_03_4015:
    jp   jp_03_7405                                    ;; 03:4015 $c3 $05 $74
    db   $c3, $42, $6b                                 ;; 03:4018 ???
    jp   jp_03_6b6e                                    ;; 03:401b $c3 $6e $6b

call_03_401e:
    jp   jp_03_6bae                                    ;; 03:401e $c3 $ae $6b
    db   $c3, $b1, $6b                                 ;; 03:4021 ???
    jp   jp_03_6bd0                                    ;; 03:4024 $c3 $d0 $6b
    jp   call_03_6d89                                  ;; 03:4027 $c3 $89 $6d
    db   $c3, $6d, $74                                 ;; 03:402a ???
    jp   jp_03_7033                                    ;; 03:402d $c3 $33 $70
    db   $c3, $3c, $68, $c3, $c7, $6c, $c3, $91        ;; 03:4030 ????????
    db   $6c, $c3, $8d, $74, $c3, $dc, $6c, $c3        ;; 03:4038 ????????
    db   $df, $78, $c3, $ff, $78                       ;; 03:4040 ?????
    jp   jp_03_74be                                    ;; 03:4045 $c3 $be $74
    db   $c3                                           ;; 03:4048 ?

;@data format=p amount=1
data_03_4049:
    dw   data_03_74c8                                  ;; 03:4049 ??
;@bc_texts amount=93
    dw   .data_03_4106                                 ;; 03:404b ?? $00
    dw   .data_03_4124                                 ;; 03:404d ?? $01
    dw   .data_03_417c                                 ;; 03:404f ?? $02
    dw   .data_03_4289                                 ;; 03:4051 ?? $03
    dw   .data_03_42cf                                 ;; 03:4053 ?? $04
    dw   .data_03_4310                                 ;; 03:4055 ?? $05
    dw   .data_03_4386                                 ;; 03:4057 ?? $06
    dw   .data_03_43c5                                 ;; 03:4059 ?? $07
    dw   .data_03_441c                                 ;; 03:405b ?? $08
    dw   .data_03_444c                                 ;; 03:405d ?? $09
    dw   .data_03_4498                                 ;; 03:405f ?? $0a
    dw   .data_03_44db                                 ;; 03:4061 ?? $0b
    dw   .data_03_4511                                 ;; 03:4063 ?? $0c
    dw   .data_03_458f                                 ;; 03:4065 ?? $0d
    dw   .data_03_4615                                 ;; 03:4067 ?? $0e
    dw   .data_03_464f                                 ;; 03:4069 ?? $0f
    dw   .data_03_46b9                                 ;; 03:406b ?? $10
    dw   .data_03_4716                                 ;; 03:406d ?? $11
    dw   .data_03_61c4                                 ;; 03:406f ?? $12
    dw   .data_03_4766                                 ;; 03:4071 ?? $13
    dw   .data_03_47ba                                 ;; 03:4073 ?? $14
    dw   .data_03_47f4                                 ;; 03:4075 ?? $15
    dw   .data_03_48bc                                 ;; 03:4077 ?? $16
    dw   .data_03_48e8                                 ;; 03:4079 ?? $17
    dw   .data_03_492a                                 ;; 03:407b ?? $18
    dw   .data_03_496e                                 ;; 03:407d ?? $19
    dw   .data_03_49bc                                 ;; 03:407f ?? $1a
    dw   .data_03_4a32                                 ;; 03:4081 ?? $1b
    dw   .data_03_4acd                                 ;; 03:4083 ?? $1c
    dw   .data_03_4b08                                 ;; 03:4085 ?? $1d
    dw   .data_03_4b83                                 ;; 03:4087 ?? $1e
    dw   .data_03_4bbb                                 ;; 03:4089 ?? $1f
    dw   .data_03_4c0b                                 ;; 03:408b ?? $20
    dw   .data_03_4c8a                                 ;; 03:408d ?? $21
    dw   .data_03_4d1f                                 ;; 03:408f ?? $22
    dw   .data_03_4d57                                 ;; 03:4091 ?? $23
    dw   .data_03_4df3                                 ;; 03:4093 ?? $24
    dw   .data_03_4e5d                                 ;; 03:4095 ?? $25
    dw   .data_03_4ec2                                 ;; 03:4097 ?? $26
    dw   .data_03_4f09                                 ;; 03:4099 ?? $27
    dw   .data_03_4f48                                 ;; 03:409b ?? $28
    dw   .data_03_4faf                                 ;; 03:409d ?? $29
    dw   .data_03_508e                                 ;; 03:409f ?? $2a
    dw   .data_03_61c4                                 ;; 03:40a1 ?? $2b
    dw   .data_03_50da                                 ;; 03:40a3 ?? $2c
    dw   .data_03_5138                                 ;; 03:40a5 ?? $2d
    dw   .data_03_5185                                 ;; 03:40a7 ?? $2e
    dw   .data_03_528c                                 ;; 03:40a9 ?? $2f
    dw   .data_03_531a                                 ;; 03:40ab ?? $30
    dw   .data_03_531b                                 ;; 03:40ad ?? $31
    dw   .data_03_534b                                 ;; 03:40af ?? $32
    dw   .data_03_534c                                 ;; 03:40b1 ?? $33
    dw   .data_03_5417                                 ;; 03:40b3 ?? $34
    dw   .data_03_5418                                 ;; 03:40b5 ?? $35
    dw   .data_03_5419                                 ;; 03:40b7 ?? $36
    dw   .data_03_544e                                 ;; 03:40b9 ?? $37
    dw   .data_03_5493                                 ;; 03:40bb ?? $38
    dw   .data_03_5494                                 ;; 03:40bd ?? $39
    dw   .data_03_5495                                 ;; 03:40bf ?? $3a
    dw   .data_03_552a                                 ;; 03:40c1 ?? $3b
    dw   .data_03_555e                                 ;; 03:40c3 ?? $3c
    dw   .data_03_5587                                 ;; 03:40c5 ?? $3d
    dw   .data_03_55c1                                 ;; 03:40c7 ?? $3e
    dw   .data_03_61c4                                 ;; 03:40c9 ?? $3f
    dw   .data_03_56c5                                 ;; 03:40cb ?? $40
    dw   .data_03_56e9                                 ;; 03:40cd ?? $41
    dw   .data_03_5764                                 ;; 03:40cf ?? $42
    dw   .data_03_57e1                                 ;; 03:40d1 ?? $43
    dw   .data_03_5878                                 ;; 03:40d3 ?? $44
    dw   .data_03_58ef                                 ;; 03:40d5 ?? $45
    dw   .data_03_598e                                 ;; 03:40d7 ?? $46
    dw   .data_03_5a12                                 ;; 03:40d9 ?? $47
    dw   .data_03_5a53                                 ;; 03:40db ?? $48
    dw   .data_03_5cd9                                 ;; 03:40dd ?? $49
    dw   .data_03_5cda                                 ;; 03:40df ?? $4a
    dw   .data_03_5d80                                 ;; 03:40e1 ?? $4b
    dw   .data_03_5dda                                 ;; 03:40e3 ?? $4c
    dw   .data_03_5e1e                                 ;; 03:40e5 ?? $4d
    dw   .data_03_4ce6                                 ;; 03:40e7 ?? $4e
    dw   .data_03_5e4c                                 ;; 03:40e9 ?? $4f
    dw   .data_03_5e80                                 ;; 03:40eb ?? $50
    dw   .data_03_5e4d                                 ;; 03:40ed ?? $51
    dw   .data_03_5e4e                                 ;; 03:40ef ?? $52
    dw   .data_03_5ea1                                 ;; 03:40f1 pP $53
    dw   .data_03_5fc4                                 ;; 03:40f3 ?? $54
    dw   .data_03_5ffc                                 ;; 03:40f5 ?? $55
    dw   .data_03_649f                                 ;; 03:40f7 ?? $56
    dw   .data_03_652e                                 ;; 03:40f9 ?? $57
    dw   .data_03_6576                                 ;; 03:40fb ?? $58
    dw   .data_03_60d0                                 ;; 03:40fd ?? $59
    dw   .data_03_618d                                 ;; 03:40ff ?? $5a
    dw   .data_03_61a7                                 ;; 03:4101 ?? $5b
    dw   .data_03_61a8                                 ;; 03:4103 ?? $5c
    db   $00                                           ;; 03:4105 ?
.data_03_4106:
    db   $fa, $01                                      ;; 03:4106 ??
    TXT  "I've got to geto"                            ;; 03:4108 ????????????????
    TXT  "ut of here![EOT]"                            ;; 03:4118 ????????????
.data_03_4124:
    db   $fa, $01                                      ;; 03:4124 ??
    TXT  "They've stolen\n"                            ;; 03:4126 ???????????????
    TXT  "our escape devi-"                            ;; 03:4135 ????????????????
    TXT  "ce. "                                        ;; 03:4145 ????
    db   $fb, $3c                                      ;; 03:4149 ??
    TXT  "Now there isno w"                            ;; 03:414b ????????????????
    TXT  "ay to go\n"                                  ;; 03:415b ?????????
    TXT  "back to the\n"                               ;; 03:4164 ????????????
    TXT  "helicopter.[EOT]"                            ;; 03:4170 ????????????
.data_03_417c:
    db   $f9, $04                                      ;; 03:417c ??
    TXT  "Don't forget to\n"                           ;; 03:417e ????????????????
    TXT  "contact our sol-"                            ;; 03:418e ????????????????
    TXT  "diers in each\n"                             ;; 03:419e ??????????????
    TXT  "area to obtain\n"                            ;; 03:41ac ???????????????
    TXT  "info. "                                      ;; 03:41bb ??????
    db   $fb, $3c                                      ;; 03:41c1 ??
    TXT  "Use the\n"                                   ;; 03:41c3 ????????
    TXT  "communication\n"                             ;; 03:41cb ??????????????
    TXT  "rooms to open\n"                             ;; 03:41d9 ??????????????
    TXT  "doors to other\n"                            ;; 03:41e7 ???????????????
    TXT  "areas and to\n"                              ;; 03:41f6 ?????????????
    TXT  "contact agents.\n"                           ;; 03:4203 ????????????????
    db   $fb, $3c                                      ;; 03:4213 ??
    TXT  "Tap enemy commu-"                            ;; 03:4215 ????????????????
    TXT  "nications if\n"                              ;; 03:4225 ?????????????
    TXT  "necessary.\n"                                ;; 03:4232 ???????????
    db   $fb, $3c                                      ;; 03:423d ??
    TXT  "But be careful.\n"                           ;; 03:423f ????????????????
    db   $fb, $3c                                      ;; 03:424f ??
    TXT  "If you are\n"                                ;; 03:4251 ???????????
    TXT  "detected tapping"                            ;; 03:425c ????????????????
    TXT  ",enemy soldiers\n"                           ;; 03:426c ????????????????
    TXT  "will attack.[EOT]"                           ;; 03:427c ?????????????
.data_03_4289:
    db   $f9, $10                                      ;; 03:4289 ??
    TXT  "Listen up!\n"                                ;; 03:428b ???????????
    db   $fb, $3c                                      ;; 03:4296 ??
    TXT  "Keep the enemy\n"                            ;; 03:4298 ???????????????
    TXT  "away from this\n"                            ;; 03:42a7 ???????????????
    TXT  "power reactor."                              ;; 03:42b6 ??????????????
    db   $f9, $11                                      ;; 03:42c4 ??
    TXT  "Yes,Sir.[EOT]"                               ;; 03:42c6 ?????????
.data_03_42cf:
    db   $f9, $04                                      ;; 03:42cf ??
    TXT  "Area 2 is a\n"                               ;; 03:42d1 ????????????
    TXT  "neutral area.\r"                             ;; 03:42dd ??????????????
    TXT  "You can obtain\n"                            ;; 03:42eb ???????????????
    TXT  "items as well as"                            ;; 03:42fa ????????????????
    TXT  "info.[EOT]"                                  ;; 03:430a ??????
.data_03_4310:
    db   $f9, $11                                      ;; 03:4310 ??
    TXT  "Captain,intell-i"                            ;; 03:4312 ????????????????
    TXT  "gence says thats"                            ;; 03:4322 ????????????????
    TXT  "omeone has\n"                                ;; 03:4332 ???????????
    TXT  "broken into\n"                               ;; 03:433d ????????????
    TXT  "the base."                                   ;; 03:4349 ?????????
    db   $f9, $10                                      ;; 03:4352 ??
    TXT  "Gather some tr-o"                            ;; 03:4354 ????????????????
    TXT  "ops. "                                       ;; 03:4364 ?????
    db   $fb, $3c                                      ;; 03:4369 ??
    TXT  "Intercept\n"                                 ;; 03:436b ??????????
    TXT  "and defeat them."                            ;; 03:4375 ????????????????
    TXT  "[EOT]"                                       ;; 03:4385 ?
.data_03_4386:
    db   $fa, $10                                      ;; 03:4386 ??
    TXT  "Destroy them!\n"                             ;; 03:4388 ??????????????
    db   $fb, $3c                                      ;; 03:4396 ??
    TXT  "We cannot allow\n"                           ;; 03:4398 ????????????????
    TXT  "them to proceed\n"                           ;; 03:43a8 ????????????????
    TXT  "any further.[EOT]"                           ;; 03:43b8 ?????????????
.data_03_43c5:
    db   $fa, $06                                      ;; 03:43c5 ??
    TXT  "This is a neu-\n"                            ;; 03:43c7 ???????????????
    TXT  "tral area.\n"                                ;; 03:43d6 ???????????
    db   $fb, $3c                                      ;; 03:43e1 ??
    TXT  "Please keep in\n"                            ;; 03:43e3 ???????????????
    TXT  "mind that you\n"                             ;; 03:43f2 ??????????????
    TXT  "are prohibited\n"                            ;; 03:4400 ???????????????
    TXT  "from firing.[EOT]"                           ;; 03:440f ?????????????
.data_03_441c:
    db   $fa, $04                                      ;; 03:441c ??
    TXT  "Super Joe!?\n"                               ;; 03:441e ????????????
    db   $fb, $3c                                      ;; 03:442a ??
    TXT  "What has happen-"                            ;; 03:442c ????????????????
    TXT  "ed to our hero?[EOT]"                        ;; 03:443c ????????????????
.data_03_444c:
    db   $fa, $11                                      ;; 03:444c ??
    TXT  "Why on the\n"                                ;; 03:444e ???????????
    TXT  "earth are\n"                                 ;; 03:4459 ??????????
    TXT  "you here?\r"                                 ;; 03:4463 ??????????
    TXT  "Get out of here\n"                           ;; 03:446d ????????????????
    TXT  "before you're\n"                             ;; 03:447d ??????????????
    TXT  "terminated!![EOT]"                           ;; 03:448b ?????????????
.data_03_4498:
    db   $fa, $04                                      ;; 03:4498 ??
    TXT  "I'm glad you\n"                              ;; 03:449a ?????????????
    TXT  "are here.\r"                                 ;; 03:44a7 ??????????
    TXT  "Press the START\n"                           ;; 03:44b1 ????????????????
    TXT  "button to\n"                                 ;; 03:44c1 ??????????
    TXT  "launch a flare.[EOT]"                        ;; 03:44cb ????????????????
.data_03_44db:
    db   $fa, $04                                      ;; 03:44db ??
    TXT  "It's dark\n"                                 ;; 03:44dd ??????????
    TXT  "inside.\r"                                   ;; 03:44e7 ????????
    TXT  "Flares can\n"                                ;; 03:44ef ???????????
    TXT  "be obtained\n"                               ;; 03:44fa ????????????
    TXT  "in Area 2.[EOT]"                             ;; 03:4506 ???????????
.data_03_4511:
    db   $f9, $05                                      ;; 03:4511 ??
    TXT  "There are 4 ty-p"                            ;; 03:4513 ????????????????
    TXT  "es of video\n"                               ;; 03:4523 ????????????
    TXT  "receivers.\n"                                ;; 03:452f ???????????
    TXT  "The one you're\n"                            ;; 03:453a ???????????????
    TXT  "carrying with\n"                             ;; 03:4549 ??????????????
    TXT  "you is the\n"                                ;; 03:4557 ???????????
    TXT  "[A] type,and you\n"                          ;; 03:4562 ???????????????
    TXT  "can use it in\n"                             ;; 03:4571 ??????????????
    TXT  "Area 1,3 and 4.[EOT]"                        ;; 03:457f ????????????????
.data_03_458f:
    db   $f9, $11                                      ;; 03:458f ??
    TXT  "Captain,could\n"                             ;; 03:4591 ??????????????
    TXT  "you tell me\n"                               ;; 03:459f ????????????
    TXT  "about the\n"                                 ;; 03:45ab ??????????
    TXT  "Albatross\n"                                 ;; 03:45b5 ??????????
    TXT  "project,sir?"                                ;; 03:45bf ????????????
    db   $f9, $0f                                      ;; 03:45cb ??
    TXT  "I don't know\n"                              ;; 03:45cd ?????????????
    TXT  "what you are\n"                              ;; 03:45da ?????????????
    TXT  "talking about.\n"                            ;; 03:45e7 ???????????????
    TXT  "Only the\n"                                  ;; 03:45f6 ?????????
    TXT  "commanders might"                            ;; 03:45ff ????????????????
    TXT  "know.[EOT]"                                  ;; 03:460f ??????
.data_03_4615:
    db   $fa, $0f                                      ;; 03:4615 ??
    TXT  "Curse you,\n"                                ;; 03:4617 ???????????
    TXT  "Bionic Commando!"                            ;; 03:4622 ????????????????
    TXT  "\r"                                          ;; 03:4632 ?
    TXT  "You cannot\n"                                ;; 03:4633 ???????????
    TXT  "compare with me!"                            ;; 03:463e ????????????????
    TXT  "[EOT]"                                       ;; 03:464e ?
.data_03_464f:
    db   $f9, $04                                      ;; 03:464f ??
    TXT  "Information\n"                               ;; 03:4651 ????????????
    TXT  "suggests that\n"                             ;; 03:465d ??????????????
    TXT  "the lab in\n"                                ;; 03:466b ???????????
    TXT  "Area 6 has got a"                            ;; 03:4676 ????????????????
    TXT  "leak and it's\n"                             ;; 03:4686 ??????????????
    TXT  "soaking through\n"                           ;; 03:4694 ????????????????
    TXT  "the wall\n"                                  ;; 03:46a4 ?????????
    TXT  "right here.[EOT]"                            ;; 03:46ad ????????????
.data_03_46b9:
    db   $f9, $11                                      ;; 03:46b9 ??
    TXT  "He is too\n"                                 ;; 03:46bb ??????????
    TXT  "strong to be\n"                              ;; 03:46c5 ?????????????
    TXT  "destroyed.\n"                                ;; 03:46d2 ???????????
    TXT  "Oh no,\n"                                    ;; 03:46dd ???????
    TXT  "General Rile!"                               ;; 03:46e4 ?????????????
    db   $f9, $00                                      ;; 03:46f1 ??
    TXT  "You are a\n"                                 ;; 03:46f3 ??????????
    TXT  "good fighter,\n"                             ;; 03:46fd ??????????????
    TXT  "Super Joe.[EOT]"                             ;; 03:470b ???????????
.data_03_4716:
    db   $fa, $0e                                      ;; 03:4716 ??
    TXT  "The guardian-\n"                             ;; 03:4718 ??????????????
    TXT  "system is\n"                                 ;; 03:4726 ??????????
    TXT  "now operating.\n"                            ;; 03:4730 ???????????????
    TXT  "We will switch\n"                            ;; 03:473f ???????????????
    TXT  "to attack mode\n"                            ;; 03:474e ???????????????
    TXT  "shortly.[EOT]"                               ;; 03:475d ?????????
.data_03_4766:
    db   $fa, $04                                      ;; 03:4766 ??
    TXT  "Please remembert"                            ;; 03:4768 ????????????????
    TXT  "hat you cannot\n"                            ;; 03:4778 ???????????????
    TXT  "get information\n"                           ;; 03:4787 ????????????????
    TXT  "without a\n"                                 ;; 03:4797 ??????????
    TXT  "suitable\n"                                  ;; 03:47a1 ?????????
    TXT  "video receiver.[EOT]"                        ;; 03:47aa ????????????????
.data_03_47ba:
    db   $fa, $11                                      ;; 03:47ba ??
    TXT  "You better turn\n"                           ;; 03:47bc ????????????????
    TXT  "back.\r"                                     ;; 03:47cc ??????
    TXT  "The inner area\n"                            ;; 03:47d2 ???????????????
    TXT  "is very\n"                                   ;; 03:47e1 ????????
    TXT  "dangerous.[EOT]"                             ;; 03:47e9 ???????????
.data_03_47f4:
    db   $fa, $09                                      ;; 03:47f4 ??
    TXT  "I haven't seen\n"                            ;; 03:47f6 ???????????????
    TXT  "you for a\n"                                 ;; 03:4805 ??????????
    TXT  "long time,Rad.\n"                            ;; 03:480f ???????????????
    TXT  "The [B] receiver\n"                          ;; 03:481e ???????????????
    TXT  "is kept inside\n"                            ;; 03:482d ???????????????
    TXT  "this room.\n"                                ;; 03:483c ???????????
    TXT  "Don't forget to\n"                           ;; 03:4847 ????????????????
    TXT  "bring it with\n"                             ;; 03:4857 ??????????????
    TXT  "you when you\n"                              ;; 03:4865 ?????????????
    TXT  "proceed to \n"                               ;; 03:4872 ????????????
    TXT  "Area 6.\n"                                   ;; 03:487e ????????
    db   $fb, $3c                                      ;; 03:4886 ??
    TXT  "You'll find\n"                               ;; 03:4888 ????????????
    TXT  "other soldiers\n"                            ;; 03:4894 ???????????????
    TXT  "from the\n"                                  ;; 03:48a3 ?????????
    TXT  "FF Corps there.[EOT]"                        ;; 03:48ac ????????????????
.data_03_48bc:
    db   $f9, $04                                      ;; 03:48bc ??
    TXT  "They are makingm"                            ;; 03:48be ????????????????
    TXT  "utants from\n"                               ;; 03:48ce ????????????
    TXT  "human beings.[EOT]"                          ;; 03:48da ??????????????
.data_03_48e8:
    db   $f9, $10                                      ;; 03:48e8 ??
    TXT  "We've done it!\n"                            ;; 03:48ea ???????????????
    db   $fb, $3c                                      ;; 03:48f9 ??
    TXT  "The Federal Army"                            ;; 03:48fb ????????????????
    TXT  "is no match for\n"                           ;; 03:490b ????????????????
    TXT  "this creature.[EOT]"                         ;; 03:491b ???????????????
.data_03_492a:
    db   $fa, $0d                                      ;; 03:492a ??
    TXT  "No one can\n"                                ;; 03:492c ???????????
    TXT  "defeat this\n"                               ;; 03:4937 ????????????
    TXT  "creature and\n"                              ;; 03:4943 ?????????????
    TXT  "you will be\n"                               ;; 03:4950 ????????????
    TXT  "its first\n"                                 ;; 03:495c ??????????
    TXT  "victim![EOT]"                                ;; 03:4966 ????????
.data_03_496e:
    db   $fa, $04                                      ;; 03:496e ??
    TXT  "This gate is ino"                            ;; 03:4970 ????????????????
    TXT  "ur way.\n"                                   ;; 03:4980 ????????
    db   $fb, $3c                                      ;; 03:4988 ??
    TXT  "We can blow it\n"                            ;; 03:498a ???????????????
    TXT  "to pieces with\n"                            ;; 03:4999 ???????????????
    TXT  "a grenade\n"                                 ;; 03:49a8 ??????????
    TXT  "launcher.[EOT]"                              ;; 03:49b2 ??????????
.data_03_49bc:
    db   $f9, $05                                      ;; 03:49bc ??
    TXT  "Please keep in\n"                            ;; 03:49be ???????????????
    TXT  "mind that\n"                                 ;; 03:49cd ??????????
    TXT  "General Rile\n"                              ;; 03:49d7 ?????????????
    TXT  "will be waiting\n"                           ;; 03:49e4 ????????????????
    TXT  "for you in\n"                                ;; 03:49f4 ???????????
    TXT  "Area 8.\n"                                   ;; 03:49ff ????????
    TXT  "We believe that\n"                           ;; 03:4a07 ????????????????
    TXT  "he has kidnapped"                            ;; 03:4a17 ????????????????
    TXT  "Super Joe.[EOT]"                             ;; 03:4a27 ???????????
.data_03_4a32:
    db   $f9, $11                                      ;; 03:4a32 ??
    TXT  "Captain,please\n"                            ;; 03:4a34 ???????????????
    TXT  "do not forget to"                            ;; 03:4a43 ????????????????
    TXT  "bring a \n"                                  ;; 03:4a53 ?????????
    TXT  "[Y] receiver with\n"                         ;; 03:4a5c ????????????????
    TXT  "you when you\n"                              ;; 03:4a6c ?????????????
    TXT  "enter Area 10.\n"                            ;; 03:4a79 ???????????????
    TXT  "[B] receiver is\n"                           ;; 03:4a88 ??????????????
    TXT  "effective in\n"                              ;; 03:4a96 ?????????????
    TXT  "Area 6,7 and 8."                             ;; 03:4aa3 ???????????????
    db   $f9, $10                                      ;; 03:4ab2 ??
    TXT  "Oh,I almost\n"                               ;; 03:4ab4 ????????????
    TXT  "forget that.[EOT]"                           ;; 03:4ac0 ?????????????
.data_03_4acd:
    db   $fa, $10                                      ;; 03:4acd ??
    TXT  "Hurry up! "                                  ;; 03:4acf ??????????
    db   $fb, $3c                                      ;; 03:4ad9 ??
    TXT  "What\n"                                      ;; 03:4adb ?????
    TXT  "on earth is go-\n"                           ;; 03:4ae0 ????????????????
    TXT  "ing on outside?\n"                           ;; 03:4af0 ????????????????
    TXT  "Charge![EOT]"                                ;; 03:4b00 ????????
.data_03_4b08:
    db   $f9, $04                                      ;; 03:4b08 ??
    TXT  "I was captured\n"                            ;; 03:4b0a ???????????????
    TXT  "and taken to\n"                              ;; 03:4b19 ?????????????
    TXT  "Rile's place,\n"                             ;; 03:4b26 ??????????????
    TXT  "but I don't see\n"                           ;; 03:4b34 ????????????????
    TXT  "Super Joe\n"                                 ;; 03:4b44 ??????????
    TXT  "anywhere.\n"                                 ;; 03:4b4e ??????????
    TXT  "He seems to have"                            ;; 03:4b58 ????????????????
    TXT  "been taken\n"                                ;; 03:4b68 ???????????
    TXT  "somewhere else.[EOT]"                        ;; 03:4b73 ????????????????
.data_03_4b83:
    db   $f9, $00                                      ;; 03:4b83 ??
    TXT  "Hurry up and\n"                              ;; 03:4b85 ?????????????
    TXT  "break the\n"                                 ;; 03:4b92 ??????????
    TXT  "door open!"                                  ;; 03:4b9c ??????????
    db   $f9, $11                                      ;; 03:4ba6 ??
    TXT  "AA......HHH.\n"                              ;; 03:4ba8 ??????????
    TXT  "Yes,Sir.[EOT]"                               ;; 03:4bb2 ?????????
.data_03_4bbb:
    db   $f9, $04                                      ;; 03:4bbb ??
    TXT  "Information\n"                               ;; 03:4bbd ????????????
    TXT  "suggests that\n"                             ;; 03:4bc9 ??????????????
    TXT  "Director Wiseman"                            ;; 03:4bd7 ????????????????
    TXT  "is visiting\n"                               ;; 03:4be7 ????????????
    TXT  "upstairs.\n"                                 ;; 03:4bf3 ??????????
    db   $fb, $3c                                      ;; 03:4bfd ??
    TXT  "Go get him.[EOT]"                            ;; 03:4bff ????????????
.data_03_4c0b:
    db   $f9, $11                                      ;; 03:4c0b ??
    TXT  "Watch out,\n"                                ;; 03:4c0d ???????????
    TXT  "general Rile.\n"                             ;; 03:4c18 ??????????????
    db   $fb, $3c                                      ;; 03:4c26 ??
    TXT  "Soldiers of the\n"                           ;; 03:4c28 ????????????????
    TXT  "FF Corps have\n"                             ;; 03:4c38 ??????????????
    TXT  "sneaked into\n"                              ;; 03:4c46 ?????????????
    TXT  "this tower."                                 ;; 03:4c53 ???????????
    db   $f9, $00                                      ;; 03:4c5e ??
    TXT  "Don't worry.\n"                              ;; 03:4c60 ?????????????
    db   $fb, $3c                                      ;; 03:4c6d ??
    TXT  "The FF Corps are"                            ;; 03:4c6f ????????????????
    TXT  "just kids.[EOT]"                             ;; 03:4c7f ???????????
.data_03_4c8a:
    db   $fa, $0a                                      ;; 03:4c8a ??
    TXT  "Welcome,\n"                                  ;; 03:4c8c ?????????
    TXT  "FF Corps.\r"                                 ;; 03:4c95 ??????????
    TXT  "What on earth\n"                             ;; 03:4c9f ??????????????
    TXT  "are you doing\n"                             ;; 03:4cad ??????????????
    TXT  "here?"                                       ;; 03:4cbb ?????
    db   $fa, $0b                                      ;; 03:4cc0 ??
    TXT  "Director,\n"                                 ;; 03:4cc2 ??????????
    TXT  "please retreat\n"                            ;; 03:4ccc ???????????????
    TXT  "from here.\n"                                ;; 03:4cdb ???????????
.data_03_4ce6:
    TXT  "Rad Spencer,\n"                              ;; 03:4ce6 ?????????????
    TXT  "I'll see if\n"                               ;; 03:4cf3 ????????????
    TXT  "you'll do better"                            ;; 03:4cff ????????????????
    TXT  "than Super Joe.[EOT]"                        ;; 03:4d0f ????????????????
.data_03_4d1f:
    db   $fa, $06                                      ;; 03:4d1f ??
    TXT  "This is Area 9.\r"                           ;; 03:4d21 ????????????????
    TXT  "You need a\n"                                ;; 03:4d31 ???????????
    TXT  "permit to enter\n"                           ;; 03:4d3c ????????????????
    TXT  "this area.[EOT]"                             ;; 03:4d4c ???????????
.data_03_4d57:
    db   $fa, $04                                      ;; 03:4d57 ??
    TXT  "I saw a man whol"                            ;; 03:4d59 ????????????????
    TXT  "ooked like\n"                                ;; 03:4d69 ???????????
    TXT  "Super Joe.\n"                                ;; 03:4d74 ???????????
    TXT  "He seemed to\n"                              ;; 03:4d7f ?????????????
    TXT  "be heading for\n"                            ;; 03:4d8c ???????????????
    TXT  "Area 10.\n"                                  ;; 03:4d9b ?????????
    TXT  "A woman was also"                            ;; 03:4da4 ????????????????
    TXT  "heading for\n"                               ;; 03:4db4 ????????????
    TXT  "Area 10.\n"                                  ;; 03:4dc0 ?????????
    TXT  "She looked like\n"                           ;; 03:4dc9 ????????????????
    TXT  "a member of\n"                               ;; 03:4dd9 ????????????
    TXT  "the FF Corps.[EOT]"                          ;; 03:4de5 ??????????????
.data_03_4df3:
    db   $fa, $11                                      ;; 03:4df3 ??
    TXT  "Area 10 is the\n"                            ;; 03:4df5 ???????????????
    TXT  "capital of our\n"                            ;; 03:4e04 ???????????????
    TXT  "Dukedom. "                                   ;; 03:4e13 ?????????
    db   $fb, $3c                                      ;; 03:4e1c ??
    TXT  "You arethe first"                            ;; 03:4e1e ????????????????
    TXT  " to\n"                                       ;; 03:4e2e ????
    TXT  "have sneaked\n"                              ;; 03:4e32 ?????????????
    TXT  "into the heart\n"                            ;; 03:4e3f ???????????????
    TXT  "of our empire.[EOT]"                         ;; 03:4e4e ???????????????
.data_03_4e5d:
    db   $fa, $04                                      ;; 03:4e5d ??
    TXT  "A [Y] receiver isk"                          ;; 03:4e5f ????????????????
    TXT  "ept in here.\n"                              ;; 03:4e6f ?????????????
    db   $fb, $3c                                      ;; 03:4e7c ??
    TXT  "You won't be\n"                              ;; 03:4e7e ?????????????
    TXT  "able to obtain\n"                            ;; 03:4e8b ???????????????
    TXT  "info in Area 10\n"                           ;; 03:4e9a ????????????????
    TXT  "without the\n"                               ;; 03:4eaa ????????????
    TXT  "[Y] receiver.[EOT]"                          ;; 03:4eb6 ????????????
.data_03_4ec2:
    db   $f9, $04                                      ;; 03:4ec2 ??
    TXT  "[Y] receiver is\n"                           ;; 03:4ec4 ??????????????
    TXT  "effective in\n"                              ;; 03:4ed2 ?????????????
    TXT  "Area 10,12 and\n"                            ;; 03:4edf ???????????????
    TXT  "13.\n"                                       ;; 03:4eee ????
    db   $fb, $3c                                      ;; 03:4ef2 ??
    TXT  "Find the\n"                                  ;; 03:4ef4 ?????????
    TXT  "[Q] receiver.[EOT]"                          ;; 03:4efd ????????????
.data_03_4f09:
    db   $f9, $11                                      ;; 03:4f09 ??
    TXT  "Captain,\n"                                  ;; 03:4f0b ?????????
    TXT  "everyone is in\n"                            ;; 03:4f14 ???????????????
    TXT  "position."                                   ;; 03:4f23 ?????????
    db   $f9, $0f                                      ;; 03:4f2c ??
    TXT  "Why don't you\n"                             ;; 03:4f2e ??????????????
    TXT  "Ambush him?[EOT]"                            ;; 03:4f3c ????????????
.data_03_4f48:
    db   $fa, $0f                                      ;; 03:4f48 ??
    TXT  "I've caught\n"                               ;; 03:4f4a ????????????
    TXT  "him! "                                       ;; 03:4f56 ?????
    db   $fb, $3c                                      ;; 03:4f5b ??
    TXT  "I'm sorry\n"                                 ;; 03:4f5d ??????????
    TXT  "to tell you that"                            ;; 03:4f67 ????????????????
    TXT  "Joe is not here."                            ;; 03:4f77 ????????????????
    db   $fb, $3c                                      ;; 03:4f87 ??
    TXT  "But you will rot"                            ;; 03:4f89 ????????????????
    TXT  "in this cell\n"                              ;; 03:4f99 ?????????????
    TXT  "forever.[EOT]"                               ;; 03:4fa6 ?????????
.data_03_4faf:
    db   $fa, $12                                      ;; 03:4faf ??
    TXT  "Rad,is that\n"                               ;; 03:4fb1 ????????????
    TXT  "really you? \r"                              ;; 03:4fbd ?????????????
    TXT  "I thought you\n"                             ;; 03:4fca ??????????????
    TXT  "could have\n"                                ;; 03:4fd8 ???????????
    TXT  "done better.\n"                              ;; 03:4fe3 ?????????????
    TXT  "You can use my\n"                            ;; 03:4ff0 ???????????????
    TXT  "wire and weapons"                            ;; 03:4fff ????????????????
    TXT  "hidden somewhere"                            ;; 03:500f ????????????????
    TXT  "in this Area.\n"                             ;; 03:501f ??????????????
    db   $fb, $3c                                      ;; 03:502d ??
    TXT  "Use them to get\n"                           ;; 03:502f ????????????????
    TXT  "out of this area"                            ;; 03:503f ????????????????
    TXT  "and head for\n"                              ;; 03:504f ?????????????
    TXT  "Area 11 to help\n"                           ;; 03:505c ????????????????
    TXT  "the resistance\n"                            ;; 03:506c ???????????????
    TXT  "fight the\n"                                 ;; 03:507b ??????????
    TXT  "Doraize.[EOT]"                               ;; 03:5085 ?????????
.data_03_508e:
    db   $fa, $0f                                      ;; 03:508e ??
    TXT  "Super Joe has\n"                             ;; 03:5090 ??????????????
    TXT  "been taken to\n"                             ;; 03:509e ??????????????
    TXT  "Area 13,\n"                                  ;; 03:50ac ?????????
    TXT  "but you will\n"                              ;; 03:50b5 ?????????????
    TXT  "never leave\n"                               ;; 03:50c2 ????????????
    TXT  "here alive.[EOT]"                            ;; 03:50ce ????????????
.data_03_50da:
    db   $fa, $08                                      ;; 03:50da ??
    TXT  "This is the\n"                               ;; 03:50dc ????????????
    TXT  "headquarters of\n"                           ;; 03:50e8 ????????????????
    TXT  "the resistance.\n"                           ;; 03:50f8 ????????????????
    TXT  "Soldiers from\n"                             ;; 03:5108 ??????????????
    TXT  "the Federal Army"                            ;; 03:5116 ????????????????
    TXT  "are\n"                                       ;; 03:5126 ????
    TXT  "welcome here.[EOT]"                          ;; 03:512a ??????????????
.data_03_5138:
    db   $fa, $08                                      ;; 03:5138 ??
    TXT  "A captured\n"                                ;; 03:513a ???????????
    TXT  "Doraize soldier\n"                           ;; 03:5145 ????????????????
    TXT  "is in this room."                            ;; 03:5155 ????????????????
    TXT  "Do you wish\n"                               ;; 03:5165 ????????????
    TXT  "to interrogate\n"                            ;; 03:5171 ???????????????
    TXT  "him?[EOT]"                                   ;; 03:5180 ?????
.data_03_5185:
    db   $fa, $07                                      ;; 03:5185 ??
    TXT  "Are you a\n"                                 ;; 03:5187 ??????????
    TXT  "Bionic Commando?"                            ;; 03:5191 ????????????????
    db   $fb, $3c                                      ;; 03:51a1 ??
    TXT  "I am Mac,\n"                                 ;; 03:51a3 ??????????
    TXT  "a leader of the\n"                           ;; 03:51ad ????????????????
    TXT  "resistance.\n"                               ;; 03:51bd ????????????
    db   $fb, $3c                                      ;; 03:51c9 ??
    TXT  "I need to talk\n"                            ;; 03:51cb ???????????????
    TXT  "to you. "                                    ;; 03:51da ????????
    db   $fb, $3c                                      ;; 03:51e2 ??
    TXT  "There isa launch"                            ;; 03:51e4 ????????????????
    TXT  " pad fornuclear "                            ;; 03:51f4 ????????????????
    TXT  "missilesin Area "                            ;; 03:5204 ????????????????
    TXT  "12.\n"                                       ;; 03:5214 ????
    db   $fb, $3c                                      ;; 03:5218 ??
    TXT  "You must stop\n"                             ;; 03:521a ??????????????
    TXT  "the Doraize from"                            ;; 03:5228 ????????????????
    TXT  "destroying the\n"                            ;; 03:5238 ???????????????
    TXT  "world with these"                            ;; 03:5247 ????????????????
    TXT  "missiles.\n"                                 ;; 03:5257 ??????????
    TXT  "Please return\n"                             ;; 03:5261 ??????????????
    TXT  "here after you\n"                            ;; 03:526f ???????????????
    TXT  "destroy them.[EOT]"                          ;; 03:527e ??????????????
.data_03_528c:
    db   $fa, $07                                      ;; 03:528c ??
    TXT  "Thank you,Rad.\n"                            ;; 03:528e ???????????????
    db   $fb, $3c                                      ;; 03:529d ??
    TXT  "Please take\n"                               ;; 03:529f ????????????
    TXT  "this Armor Med.\n"                           ;; 03:52ab ????????????????
    TXT  "Use the Vulcan\n"                            ;; 03:52bb ???????????????
    TXT  "M274 to destroy\n"                           ;; 03:52ca ????????????????
    TXT  "obstacles which\n"                           ;; 03:52da ????????????????
    TXT  "cannot be\n"                                 ;; 03:52ea ??????????
    TXT  "destroyed with\n"                            ;; 03:52f4 ???????????????
    TXT  "\r"                                          ;; 03:5303 ?
    TXT  "the grenade\n"                               ;; 03:5304 ????????????
    TXT  "launcher.[EOT]"                              ;; 03:5310 ??????????
.data_03_531a:
    TXT  "[EOT]"                                       ;; 03:531a ?
.data_03_531b:
    db   $fa, $11                                      ;; 03:531b ??
    TXT  "I won't tell\n"                              ;; 03:531d ?????????????
    TXT  "you anything!\n"                             ;; 03:532a ??????????????
    db   $fb, $3c                                      ;; 03:5338 ??
    TXT  "Come back later."                            ;; 03:533a ????????????????
    TXT  "[EOT]"                                       ;; 03:534a ?
.data_03_534b:
    TXT  "[EOT]"                                       ;; 03:534b ?
.data_03_534c:
    db   $fa, $11                                      ;; 03:534c ??
    TXT  "This wire......\n"                           ;; 03:534e ?????????????
    db   $fb, $3c                                      ;; 03:535b ??
    TXT  "aaarrr........\n"                            ;; 03:535d ???????????
    db   $fb, $1e                                      ;; 03:5368 ??
    TXT  "Are you a\n"                                 ;; 03:536a ??????????
    TXT  "Bionic Commando?"                            ;; 03:5374 ????????????????
    db   $fb, $3c                                      ;; 03:5384 ??
    TXT  "Oh,I.... I'll ......\n"                      ;; 03:5386 ????????????????
    TXT  "tell you\n"                                  ;; 03:5396 ?????????
    TXT  "everything I\n"                              ;; 03:539f ?????????????
    TXT  "know,so please\n"                            ;; 03:53ac ???????????????
    TXT  "don't hurt me.\n"                            ;; 03:53bb ???????????????
    TXT  "The secret\n"                                ;; 03:53ca ???????????
    TXT  "tunnel is hidden"                            ;; 03:53d5 ????????????????
    TXT  "between Area 9\n"                            ;; 03:53e5 ???????????????
    TXT  "and 11 and\n"                                ;; 03:53f4 ???????????
    TXT  "between Area 14\n"                           ;; 03:53ff ????????????????
    TXT  "and 15.[EOT]"                                ;; 03:540f ????????
.data_03_5417:
    TXT  "[EOT]"                                       ;; 03:5417 ?
.data_03_5418:
    TXT  "[EOT]"                                       ;; 03:5418 ?
.data_03_5419:
    db   $f9, $04                                      ;; 03:5419 ??
    TXT  "What?!\n"                                    ;; 03:541b ???????
    db   $fb, $3c                                      ;; 03:5422 ??
    TXT  "A nuclear\n"                                 ;; 03:5424 ??????????
    TXT  "missile!\n"                                  ;; 03:542e ?????????
    TXT  "Is this the\n"                               ;; 03:5437 ????????????
    TXT  "Albatross?[EOT]"                             ;; 03:5443 ???????????
.data_03_544e:
    db   $f9, $10                                      ;; 03:544e ??
    TXT  "Get ready to\n"                              ;; 03:5450 ?????????????
    TXT  "launch the\n"                                ;; 03:545d ???????????
    TXT  "missile.\n"                                  ;; 03:5468 ?????????
    TXT  "Wipe out the\n"                              ;; 03:5471 ?????????????
    TXT  "entire\n"                                    ;; 03:547e ???????
    TXT  "Federal Army.[EOT]"                          ;; 03:5485 ??????????????
.data_03_5493:
    TXT  "[EOT]"                                       ;; 03:5493 ?
.data_03_5494:
    TXT  "[EOT]"                                       ;; 03:5494 ?
.data_03_5495:
    db   $fa, $10                                      ;; 03:5495 ??
    TXT  "This missile isj"                            ;; 03:5497 ????????????????
    TXT  "ust a toy com-\n"                            ;; 03:54a7 ???????????????
    TXT  "pared with the\n"                            ;; 03:54b6 ???????????????
    TXT  "Albatross. "                                 ;; 03:54c5 ???????????
    db   $fb, $3c                                      ;; 03:54d0 ??
    TXT  "I'm\n"                                       ;; 03:54d2 ????
    TXT  "sorry I can't\n"                             ;; 03:54d6 ??????????????
    TXT  "show you the\n"                              ;; 03:54e4 ?????????????
    TXT  "real Albatross,\n"                           ;; 03:54f1 ????????????????
    TXT  "but instead I'll"                            ;; 03:5501 ????????????????
    TXT  "show you\n"                                  ;; 03:5511 ?????????
    TXT  "my\n"                                        ;; 03:551a ???
    TXT  "machine gun![EOT]"                           ;; 03:551d ?????????????
.data_03_552a:
    db   $f9, $04                                      ;; 03:552a ??
    TXT  "Watch out!\n"                                ;; 03:552c ???????????
    db   $fb, $3c                                      ;; 03:5537 ??
    TXT  "It's a trick!\r"                             ;; 03:5539 ??????????????
    TXT  "They're aiming\n"                            ;; 03:5547 ???????????????
    TXT  "at you![EOT]"                                ;; 03:5556 ????????
.data_03_555e:
    db   $f9, $00                                      ;; 03:555e ??
    TXT  "Rad,come here.\n"                            ;; 03:5560 ???????????????
    db   $fb, $3c                                      ;; 03:556f ??
    TXT  "Super Joe is\n"                              ;; 03:5571 ?????????????
    TXT  "in here.[EOT]"                               ;; 03:557e ?????????
.data_03_5587:
    db   $fa, $0b                                      ;; 03:5587 ??
    TXT  "Rad!!\n"                                     ;; 03:5589 ??????
    db   $fb, $1e                                      ;; 03:558f ??
    TXT  "I've been wait-\n"                           ;; 03:5591 ????????????????
    TXT  "ing for you.\r"                              ;; 03:55a1 ?????????????
    TXT  "I will\n"                                    ;; 03:55ae ???????
    TXT  "crush you!![EOT]"                            ;; 03:55b5 ????????????
.data_03_55c1:
    db   $fa, $01                                      ;; 03:55c1 ??
    TXT  "Joe,I'll get\n"                              ;; 03:55c3 ?????????????
    TXT  "you out of here."                            ;; 03:55d0 ????????????????
    db   $fa, $02                                      ;; 03:55e0 ??
    TXT  "Thanks!\n"                                   ;; 03:55e2 ????????
    db   $fb, $3c                                      ;; 03:55ea ??
    TXT  "I've found out\n"                            ;; 03:55ec ???????????????
    TXT  "about the\n"                                 ;; 03:55fb ??????????
    TXT  "Albatross\n"                                 ;; 03:5605 ??????????
    TXT  "project.\r"                                  ;; 03:560f ?????????
    TXT  "They are\n"                                  ;; 03:5618 ?????????
    TXT  "building a\n"                                ;; 03:5621 ???????????
    TXT  "floating\n"                                  ;; 03:562c ?????????
    TXT  "fortress to con-"                            ;; 03:5635 ????????????????
    TXT  "trol the world.\n"                           ;; 03:5645 ????????????????
    db   $fb, $3c                                      ;; 03:5655 ??
    TXT  "A dock for the\n"                            ;; 03:5657 ???????????????
    TXT  "Albatross\n"                                 ;; 03:5666 ??????????
    TXT  "fortress is in\n"                            ;; 03:5670 ???????????????
    TXT  "Area 16.\n"                                  ;; 03:567f ?????????
    TXT  "A man\n"                                     ;; 03:5688 ??????
    TXT  "named Destroyer\n"                           ;; 03:568e ????????????????
    TXT  "keeps weapons in"                            ;; 03:569e ????????????????
    TXT  "\n"                                          ;; 03:56ae ?
    TXT  "Area 14.\n"                                  ;; 03:56af ?????????
    db   $fb, $3c                                      ;; 03:56b8 ??
    TXT  "Good Luck![EOT]"                             ;; 03:56ba ???????????
.data_03_56c5:
    db   $fa, $06                                      ;; 03:56c5 ??
    TXT  "You might like\n"                            ;; 03:56c7 ???????????????
    TXT  "the stuff\n"                                 ;; 03:56d6 ??????????
    TXT  "in here.[EOT]"                               ;; 03:56e0 ?????????
.data_03_56e9:
    db   $fa, $08                                      ;; 03:56e9 ??
    TXT  "Welcome.\n"                                  ;; 03:56eb ?????????
    db   $fb, $3c                                      ;; 03:56f4 ??
    TXT  "My name is\n"                                ;; 03:56f6 ???????????
    TXT  "Destroyer.\n"                                ;; 03:5701 ???????????
    TXT  "A M83A3\n"                                   ;; 03:570c ????????
    TXT  "machine gun is\n"                            ;; 03:5714 ???????????????
    TXT  "kept in here.\n"                             ;; 03:5723 ??????????????
    TXT  "Super Joe\n"                                 ;; 03:5731 ??????????
    TXT  "told me that a\n"                            ;; 03:573b ???????????????
    TXT  "[Q] receiver is\n"                           ;; 03:574a ??????????????
    TXT  "in Area 15.[EOT]"                            ;; 03:5758 ????????????
.data_03_5764:
    db   $f9, $02                                      ;; 03:5764 ??
    TXT  "Destroy the\n"                               ;; 03:5766 ????????????
    TXT  "Albatross before"                            ;; 03:5772 ????????????????
    TXT  "it takes off.\n"                             ;; 03:5782 ??????????????
    TXT  "Is the fortress\n"                           ;; 03:5790 ????????????????
    TXT  "the entire Alba-"                            ;; 03:57a0 ????????????????
    TXT  "tross project?\n"                            ;; 03:57b0 ???????????????
    TXT  "I think it's\n"                              ;; 03:57bf ?????????????
    TXT  "more than\n"                                 ;; 03:57cc ??????????
    TXT  "just that?[EOT]"                             ;; 03:57d6 ???????????
.data_03_57e1:
    db   $f9, $11                                      ;; 03:57e1 ??
    TXT  "All systems\n"                               ;; 03:57e3 ????????????
    TXT  "have been\n"                                 ;; 03:57ef ??????????
    TXT  "checked.\n"                                  ;; 03:57f9 ?????????
    TXT  "The Albatross\n"                             ;; 03:5802 ??????????????
    TXT  "is ready to\n"                               ;; 03:5810 ????????????
    TXT  "take off."                                   ;; 03:581c ?????????
    db   $f9, $0a                                      ;; 03:5825 ??
    TXT  "Now I've got\n"                              ;; 03:5827 ?????????????
    TXT  "control of the\n"                            ;; 03:5834 ???????????????
    TXT  "whole world.\n"                              ;; 03:5843 ?????????????
    TXT  "The Federal Army"                            ;; 03:5850 ????????????????
    TXT  "is helpless\n"                               ;; 03:5860 ????????????
    TXT  "against me![EOT]"                            ;; 03:586c ????????????
.data_03_5878:
    db   $fa, $0d                                      ;; 03:5878 ??
    TXT  "You're late,\n"                              ;; 03:587a ?????????????
    TXT  "the Albatross\n"                             ;; 03:5887 ??????????????
    TXT  "has already\n"                               ;; 03:5895 ????????????
    TXT  "taken off.\n"                                ;; 03:58a1 ???????????
    db   $fb, $3c                                      ;; 03:58ac ??
    TXT  "Now I shall\n"                               ;; 03:58ae ????????????
    TXT  "smash you just\n"                            ;; 03:58ba ???????????????
    TXT  "like I will\n"                               ;; 03:58c9 ????????????
    TXT  "smash the\n"                                 ;; 03:58d5 ??????????
    TXT  "Federal States![EOT]"                        ;; 03:58df ????????????????
.data_03_58ef:
    db   $f9, $03                                      ;; 03:58ef ??
    TXT  "Super Joe and\n"                             ;; 03:58f1 ??????????????
    TXT  "Rad,the only way"                            ;; 03:58ff ????????????????
    TXT  "to destroy the\n"                            ;; 03:590f ???????????????
    TXT  "Albatross is to\n"                           ;; 03:591e ????????????????
    TXT  "enter from the\n"                            ;; 03:592e ???????????????
    TXT  "top and destroy\n"                           ;; 03:593d ????????????????
    TXT  "the power\n"                                 ;; 03:594d ??????????
    TXT  "station."                                    ;; 03:5957 ????????
    db   $f9, $02                                      ;; 03:595f ??
    TXT  "Yes,Sir."                                    ;; 03:5961 ????????
    db   $f9, $01                                      ;; 03:5969 ??
    TXT  "We'll enter\n"                               ;; 03:596b ????????????
    TXT  "the Albatross\n"                             ;; 03:5977 ??????????????
    TXT  "shortly.[EOT]"                               ;; 03:5985 ?????????
.data_03_598e:
    db   $fa, $02                                      ;; 03:598e ??
    TXT  "Leave the\n"                                 ;; 03:5990 ??????????
    TXT  "bridge to me.\r"                             ;; 03:599a ??????????????
    TXT  "You take care of"                            ;; 03:59a8 ????????????????
    TXT  "the power\n"                                 ;; 03:59b8 ??????????
    TXT  "station."                                    ;; 03:59c2 ????????
    db   $fa, $01                                      ;; 03:59ca ??
    TXT  "Yes,Sir."                                    ;; 03:59cc ????????
    db   $fa, $02                                      ;; 03:59d4 ??
    TXT  "This is the\n"                               ;; 03:59d6 ????????????
    TXT  "last area we\n"                              ;; 03:59e2 ?????????????
    TXT  "need to destroy."                            ;; 03:59ef ????????????????
    db   $fa, $01                                      ;; 03:59ff ??
    TXT  "I can\n"                                     ;; 03:5a01 ??????
    TXT  "handle it.[EOT]"                             ;; 03:5a07 ???????????
.data_03_5a12:
    db   $fa, $13                                      ;; 03:5a12 ??
    TXT  "The machine hasr"                            ;; 03:5a14 ????????????????
    TXT  "egenerated me!\r"                            ;; 03:5a24 ???????????????
    TXT  "You will not\n"                              ;; 03:5a33 ?????????????
    TXT  "survive\n"                                   ;; 03:5a40 ????????
    TXT  "my attack![EOT]"                             ;; 03:5a48 ???????????
.data_03_5a53:
    db   $fa, $13                                      ;; 03:5a53 ??
    TXT  "You did it,Rad!"                             ;; 03:5a55 ???????????????
    db   $fb, $3c                                      ;; 03:5a64 ??
    TXT  "But,this float-\n"                           ;; 03:5a66 ????????????????
    TXT  "ing fortress is\n"                           ;; 03:5a76 ????????????????
    TXT  "just a part of \n"                           ;; 03:5a86 ????????????????
    TXT  "the Albatross \n"                            ;; 03:5a96 ???????????????
    TXT  "plan.\n"                                     ;; 03:5aa5 ??????
    TXT  "The secret of\n"                             ;; 03:5aab ??????????????
    TXT  "the Albatross is"                            ;; 03:5ab9 ????????????????
    TXT  "\n"                                          ;; 03:5ac9 ?
    TXT  "the ultimate\n"                              ;; 03:5aca ?????????????
    TXT  "lethal weapon.\n"                            ;; 03:5ad7 ???????????????
    db   $fb, $3c                                      ;; 03:5ae6 ??
    TXT  "It has not been\n"                           ;; 03:5ae8 ????????????????
    TXT  "unveiled yet,but"                            ;; 03:5af8 ????????????????
    TXT  "it'll terminate\n"                           ;; 03:5b08 ????????????????
    TXT  "the whole world\n"                           ;; 03:5b18 ????????????????
    TXT  "once it has been"                            ;; 03:5b28 ????????????????
    TXT  "activated.\n"                                ;; 03:5b38 ???????????
    db   $fb, $3c                                      ;; 03:5b43 ??
    TXT  "Look at this,\n"                             ;; 03:5b45 ??????????????
    TXT  "Rad."                                        ;; 03:5b53 ????
    db   $fa, $01                                      ;; 03:5b57 ??
    TXT  "This is a......\n"                           ;; 03:5b59 ?????????????
    TXT  "FF Corps' badge."                            ;; 03:5b66 ????????????????
    db   $fa, $13                                      ;; 03:5b76 ??
    TXT  "You're right.\n"                             ;; 03:5b78 ??????????????
    db   $fb, $3c                                      ;; 03:5b86 ??
    TXT  "I'm an ex-\n"                                ;; 03:5b88 ???????????
    TXT  "Bionic Commando."                            ;; 03:5b93 ????????????????
    TXT  "I happened to\n"                             ;; 03:5ba3 ??????????????
    TXT  "hear about\n"                                ;; 03:5bb1 ???????????
    TXT  "the Albatross\n"                             ;; 03:5bbc ??????????????
    TXT  "project and I\n"                             ;; 03:5bca ??????????????
    TXT  "decided to\n"                                ;; 03:5bd8 ???????????
    TXT  "become a\n"                                  ;; 03:5be3 ?????????
    TXT  "Wiseman's\n"                                 ;; 03:5bec ??????????
    TXT  "soldier.\n"                                  ;; 03:5bf6 ?????????
    TXT  "\r"                                          ;; 03:5bff ?
    TXT  "I've been \n"                                ;; 03:5c00 ???????????
    TXT  "waiting for a\n"                             ;; 03:5c0b ??????????????
    TXT  "true soldier to\n"                           ;; 03:5c19 ????????????????
    TXT  "come and destroy"                            ;; 03:5c29 ????????????????
    TXT  "\n"                                          ;; 03:5c39 ?
    TXT  "the Albatross.\n"                            ;; 03:5c3a ???????????????
    db   $fb, $3c                                      ;; 03:5c49 ??
    TXT  "Rad Spencer,you\n"                           ;; 03:5c4b ????????????????
    TXT  "are the greatest"                            ;; 03:5c5b ????????????????
    TXT  "soldier\n"                                   ;; 03:5c6b ????????
    TXT  "I've ever seen.\n"                           ;; 03:5c73 ????????????????
    TXT  "Destroy the\n"                               ;; 03:5c83 ????????????
    TXT  "entire project,\n"                           ;; 03:5c8f ????????????????
    TXT  "Rad.\n"                                      ;; 03:5c9f ?????
    TXT  "The fate of the\n"                           ;; 03:5ca4 ????????????????
    TXT  "earth is in\n"                               ;; 03:5cb4 ????????????
    TXT  "your hands."                                 ;; 03:5cc0 ???????????
    db   $fa, $01                                      ;; 03:5ccb ??
    TXT  "Oh,Rile....!![EOT]"                          ;; 03:5ccd ????????????
.data_03_5cd9:
    TXT  "[EOT]"                                       ;; 03:5cd9 ?
.data_03_5cda:
    db   $fa, $02                                      ;; 03:5cda ??
    TXT  "I've wrecked\n"                              ;; 03:5cdc ?????????????
    TXT  "the bridge,\n"                               ;; 03:5ce9 ????????????
    TXT  "\r"                                          ;; 03:5cf5 ?
    TXT  "but I failed\n"                              ;; 03:5cf6 ?????????????
    TXT  "to terminate\n"                              ;; 03:5d03 ?????????????
    TXT  "Wiseman.\n"                                  ;; 03:5d10 ?????????
    TXT  "He's gonna\n"                                ;; 03:5d19 ???????????
    TXT  "take the escape\n"                           ;; 03:5d24 ????????????????
    TXT  "pod to get\n"                                ;; 03:5d34 ???????????
    TXT  "out of here.\n"                              ;; 03:5d3f ?????????????
    db   $fb, $3c                                      ;; 03:5d4c ??
    TXT  "Use this\n"                                  ;; 03:5d4e ?????????
    TXT  "S-APDS gun\n"                                ;; 03:5d57 ???????????
    TXT  "to shoot\n"                                  ;; 03:5d62 ?????????
    TXT  "through the\n"                               ;; 03:5d6b ????????????
    TXT  "cockpit.[EOT]"                               ;; 03:5d77 ?????????
.data_03_5d80:
    db   $fa, $01                                      ;; 03:5d80 ??
    TXT  "Wiseman,\n"                                  ;; 03:5d82 ?????????
    TXT  "this is\n"                                   ;; 03:5d8b ????????
    TXT  "the end of\n"                                ;; 03:5d93 ???????????
    TXT  "your plans and\n"                            ;; 03:5d9e ???????????????
    TXT  "your life!!"                                 ;; 03:5dad ???????????
    db   $f8, $03                                      ;; 03:5db8 ??
    db   $fa, $0a                                      ;; 03:5dba ??
    db   $f8, $01                                      ;; 03:5dbc ??
    TXT  "Uhhh....!!\n"                                ;; 03:5dbe ?????????
    db   $fb, $3c                                      ;; 03:5dc7 ??
    TXT  "My....dream......!!"                         ;; 03:5dc9 ??????????????
    db   $fb, $5a                                      ;; 03:5dd7 ??
    TXT  "[EOT]"                                       ;; 03:5dd9 ?
.data_03_5dda:
    db   $fa, $00                                      ;; 03:5dda ??
    TXT  "The Albatross\n"                             ;; 03:5ddc ??????????????
    TXT  "is now out of\n"                             ;; 03:5dea ??????????????
    TXT  "control.\n"                                  ;; 03:5df8 ?????????
    TXT  "60 seconds\n"                                ;; 03:5e01 ???????????
    TXT  "before\n"                                    ;; 03:5e0c ???????
    TXT  "explosion.[EOT]"                             ;; 03:5e13 ???????????
.data_03_5e1e:
    db   $fa, $0d                                      ;; 03:5e1e ??
    TXT  "The director isw"                            ;; 03:5e20 ????????????????
    TXT  "aiting for us.\n"                            ;; 03:5e30 ???????????????
    db   $fb, $3c                                      ;; 03:5e3f ??
    TXT  "Follow me![EOT]"                             ;; 03:5e41 ???????????
.data_03_5e4c:
    TXT  "[EOT]"                                       ;; 03:5e4c ?
.data_03_5e4d:
    TXT  "[EOT]"                                       ;; 03:5e4d ?
.data_03_5e4e:
    db   $fa, $10                                      ;; 03:5e4e ??
    TXT  "Stop him!!\n"                                ;; 03:5e50 ???????????
    TXT  "\r"                                          ;; 03:5e5b ?
    TXT  "Defend the\n"                                ;; 03:5e5c ???????????
    TXT  "director from\n"                             ;; 03:5e67 ??????????????
    TXT  "the enemy![EOT]"                             ;; 03:5e75 ???????????
.data_03_5e80:
    db   $fa, $01                                      ;; 03:5e80 ??
    TXT  "We've gotten\n"                              ;; 03:5e82 ?????????????
    TXT  "back the\n"                                  ;; 03:5e8f ?????????
    TXT  "weapons.[EOT]"                               ;; 03:5e98 ?????????
.data_03_5ea1:
    db   $f9, $04                                      ;; 03:5ea1 ..
    db   $fb, $1e                                      ;; 03:5ea3 ..
    TXT  "Chief,\n"                                    ;; 03:5ea5 .......
    TXT  "headquarters is\n"                           ;; 03:5eac ................
    TXT  "contacting us."                              ;; 03:5ebc .......???????
    db   $f9, $03                                      ;; 03:5eca ??
    TXT  "Rad,as you wellk"                            ;; 03:5ecc ????????????????
    TXT  "now,Super Joe\n"                             ;; 03:5edc ??????????????
    TXT  "is missing.\n"                               ;; 03:5eea ????????????
    TXT  "Your mission is\n"                           ;; 03:5ef6 ????????????????
    TXT  "to sneak into\n"                             ;; 03:5f06 ??????????????
    TXT  "the Doraize base"                            ;; 03:5f14 ????????????????
    TXT  "to rescue\n"                                 ;; 03:5f24 ??????????
    TXT  "Super Joe and\n"                             ;; 03:5f2e ??????????????
    TXT  "destroy the\n"                               ;; 03:5f3c ????????????
    TXT  "Albatross\n"                                 ;; 03:5f48 ??????????
    TXT  "project. "                                   ;; 03:5f52 ?????????
    db   $fb, $3c                                      ;; 03:5f5b ??
    TXT  "Our\n"                                       ;; 03:5f5d ????
    TXT  "special forces\n"                            ;; 03:5f61 ???????????????
    TXT  "unit has already"                            ;; 03:5f70 ????????????????
    TXT  "been deployed in"                            ;; 03:5f80 ????????????????
    TXT  "Area 0 to assist"                            ;; 03:5f90 ????????????????
    TXT  "you with\n"                                  ;; 03:5fa0 ?????????
    TXT  "your mission.\n"                             ;; 03:5fa9 ??????????????
    db   $fb, $3c                                      ;; 03:5fb7 ??
    TXT  "Good luck![EOT]"                             ;; 03:5fb9 ???????????
.data_03_5fc4:
    db   $f9, $04                                      ;; 03:5fc4 ??
    TXT  "Look at this!\r"                             ;; 03:5fc6 ??????????????
    TXT  "The Doraize Army"                            ;; 03:5fd4 ????????????????
    TXT  "destroyed\n"                                 ;; 03:5fe4 ??????????
    TXT  "the elevator.[EOT]"                          ;; 03:5fee ??????????????
.data_03_5ffc:
    db   $f9, $11                                      ;; 03:5ffc ??
    TXT  "Captain,\n"                                  ;; 03:5ffe ?????????
    TXT  "can you tell me\n"                           ;; 03:6007 ????????????????
    TXT  "how to\n"                                    ;; 03:6017 ???????
    TXT  "operate the\n"                               ;; 03:601e ????????????
    TXT  "elevators?"                                  ;; 03:602a ??????????
    db   $f9, $10                                      ;; 03:6034 ??
    TXT  "Jump onto the\n"                             ;; 03:6036 ??????????????
    TXT  "elevator and\n"                              ;; 03:6044 ?????????????
    TXT  "push either\n"                               ;; 03:6051 ????????????
    TXT  "up or down."                                 ;; 03:605d ???????????
    db   $f9, $11                                      ;; 03:6068 ??
    TXT  "Yes,Sir!\n"                                  ;; 03:606a ?????????
    db   $fb, $3c                                      ;; 03:6073 ??
    db   $f8, $03                                      ;; 03:6075 ??
    TXT  "Oh....No!?"                                  ;; 03:6077 ????????
    db   $f9, $10                                      ;; 03:607f ??
    db   $f8, $01                                      ;; 03:6081 ??
    TXT  "I forgot to\n"                               ;; 03:6083 ????????????
    TXT  "tell you that\n"                             ;; 03:608f ??????????????
    TXT  "one of the\n"                                ;; 03:609d ???????????
    TXT  "elevators will\n"                            ;; 03:60a8 ???????????????
    TXT  "crash if you\n"                              ;; 03:60b7 ?????????????
    TXT  "step on it.[EOT]"                            ;; 03:60c4 ????????????
.data_03_60d0:
    db   $fa, $01                                      ;; 03:60d0 ??
    TXT  "You're......\n"                              ;; 03:60d2 ??????????
    TXT  "Wiseman!!!"                                  ;; 03:60dc ??????????
    db   $fa, $0a                                      ;; 03:60e6 ??
    TXT  "Humm......\n"                                ;; 03:60e8 ????????
    TXT  "you got this far"                            ;; 03:60f0 ????????????????
    TXT  "kid,but you'll\n"                            ;; 03:6100 ???????????????
    TXT  "go no further!\n"                            ;; 03:610f ???????????????
    db   $fb, $3c                                      ;; 03:611e ??
    TXT  "You are nothing\n"                           ;; 03:6120 ????????????????
    TXT  "but an infant\n"                             ;; 03:6130 ??????????????
    TXT  "compared to the\n"                           ;; 03:613e ????????????????
    TXT  "power of the\n"                              ;; 03:614e ?????????????
    TXT  "Albatross.\n"                                ;; 03:615b ???????????
    TXT  "Now is\n"                                    ;; 03:6166 ???????
    TXT  "the time for you"                            ;; 03:616d ????????????????
    TXT  "to be punished.[EOT]"                        ;; 03:617d ????????????????
.data_03_618d:
    db   $fa, $01                                      ;; 03:618d ??
    TXT  "You cannot\n"                                ;; 03:618f ???????????
    TXT  "escape,wimp![EOT]"                           ;; 03:619a ?????????????
.data_03_61a7:
    TXT  "[EOT]"                                       ;; 03:61a7 ?
.data_03_61a8:
    db   $fa, $10                                      ;; 03:61a8 ??
    TXT  "Stop now or be\n"                            ;; 03:61aa ???????????????
    TXT  "destroyed.[EOT]"                             ;; 03:61b9 ???????????
.data_03_61c4:
    db   $fa, $06                                      ;; 03:61c4 ??
    TXT  "This is a\n"                                 ;; 03:61c6 ??????????
    TXT  "neutral area.\r"                             ;; 03:61d0 ??????????????
    TXT  "Please refrain\n"                            ;; 03:61de ???????????????
    TXT  "from firing\n"                               ;; 03:61ed ????????????
    TXT  "here.[EOT]"                                  ;; 03:61f9 ??????
;@data format=p amount=27
    dw   .data_03_6258                                 ;; 03:61ff ?? $00
    dw   .data_03_6235                                 ;; 03:6201 ?? $01
    dw   .data_03_6259                                 ;; 03:6203 ?? $02
    dw   .data_03_625a                                 ;; 03:6205 ?? $03
    dw   .data_03_625b                                 ;; 03:6207 ?? $04
    dw   .data_03_6279                                 ;; 03:6209 ?? $05
    dw   .data_03_629a                                 ;; 03:620b ?? $06
    dw   .data_03_62de                                 ;; 03:620d ?? $07
    dw   .data_03_6356                                 ;; 03:620f ?? $08
    dw   .data_03_6378                                 ;; 03:6211 ?? $09
    dw   .data_03_6379                                 ;; 03:6213 ?? $0a
    dw   .data_03_637a                                 ;; 03:6215 ?? $0b
    dw   .data_03_63f9                                 ;; 03:6217 ?? $0c
    dw   .data_03_63fa                                 ;; 03:6219 ?? $0d
    dw   .data_03_649c                                 ;; 03:621b ?? $0e
    dw   .data_03_649d                                 ;; 03:621d ?? $0f
    dw   .data_03_649e                                 ;; 03:621f ?? $10
    dw   .data_03_65e4                                 ;; 03:6221 ?? $11
    dw   .data_03_665f                                 ;; 03:6223 ?? $12
    dw   .data_03_6660                                 ;; 03:6225 ?? $13
    dw   .data_03_6661                                 ;; 03:6227 ?? $14
    dw   .data_03_6662                                 ;; 03:6229 ?? $15
    dw   .data_03_66c7                                 ;; 03:622b ?? $16
    dw   .data_03_6725                                 ;; 03:622d ?? $17
    dw   .data_03_6731                                 ;; 03:622f ?? $18
    dw   .data_03_6732                                 ;; 03:6231 ?? $19
    dw   .data_03_6733                                 ;; 03:6233 ?? $1a
.data_03_6235:
    db   $1f, $47, $44, $01, $10, $40, $51, $53        ;; 03:6235 ????????
    db   $47, $fe, $48, $52, $01, $4f, $44, $40        ;; 03:623d ????????
    db   $42, $44, $45, $54, $4b, $fb, $1e, $fe        ;; 03:6245 ????????
    db   $2e, $2e, $01, $45, $4e, $51, $01, $4d        ;; 03:624d ????????
    db   $4e, $56, $26                                 ;; 03:6255 ???
.data_03_6258:
    db   $00                                           ;; 03:6258 ?
.data_03_6259:
    db   $00                                           ;; 03:6259 ?
.data_03_625a:
    db   $00                                           ;; 03:625a ?
;@bc_text
.data_03_625b:
    TXT  "The Doraize Army"                            ;; 03:625b ????????????????
    TXT  ",commanded by[EOT]"                          ;; 03:626b ??????????????
;@bc_text
.data_03_6279:
    TXT  "Director Wiseman"                            ;; 03:6279 ????????????????
    TXT  ",has begun raids"                            ;; 03:6289 ????????????????
    TXT  "[EOT]"                                       ;; 03:6299 ?
;@bc_text
.data_03_629a:
    TXT  "throughout the\n"                            ;; 03:629a ???????????????
    TXT  "world."                                      ;; 03:62a9 ??????
    db   $fb, $1e                                      ;; 03:62af ??
    TXT  "\n"                                          ;; 03:62b1 ?
    TXT  "This is part of "                            ;; 03:62b2 ????????????????
    TXT  "his ...."                                    ;; 03:62c2 ??????
    db   $fb, $1e                                      ;; 03:62c8 ??
    TXT  "\n"                                          ;; 03:62ca ?
    TXT  "Albatross\n"                                 ;; 03:62cb ??????????
    TXT  "project.[EOT]"                               ;; 03:62d5 ?????????
;@bc_text
.data_03_62de:
    TXT  "Our agent,Super "                            ;; 03:62de ????????????????
    TXT  "Joe,was"                                     ;; 03:62ee ???????
    db   $fb, $1e                                      ;; 03:62f5 ??
    TXT  "\r"                                          ;; 03:62f7 ?
    TXT  "sent to the\n"                               ;; 03:62f8 ????????????
    TXT  "Doraize Dukedom"                             ;; 03:6304 ???????????????
    db   $fb, $1e                                      ;; 03:6313 ??
    TXT  "\r"                                          ;; 03:6315 ?
    TXT  "by the Federal\n"                            ;; 03:6316 ???????????????
    TXT  "States"                                      ;; 03:6325 ??????
    db   $fb, $1e                                      ;; 03:632b ??
    TXT  "\r"                                          ;; 03:632d ?
    TXT  "to investigate\n"                            ;; 03:632e ???????????????
    TXT  "the Albatross"                               ;; 03:633d ?????????????
    db   $fb, $1e                                      ;; 03:634a ??
    TXT  "\r"                                          ;; 03:634c ?
    TXT  "project,[EOT]"                               ;; 03:634d ?????????
;@bc_text
.data_03_6356:
    TXT  "but we have lost"                            ;; 03:6356 ????????????????
    TXT  "contact with him"                            ;; 03:6366 ????????????????
    TXT  "<F7>[EOT]"                                   ;; 03:6376 ??
.data_03_6378:
    db   $00                                           ;; 03:6378 ?
.data_03_6379:
    db   $00                                           ;; 03:6379 ?
;@bc_text
.data_03_637a:
    db   $fb, $28                                      ;; 03:637a ??
    TXT  "Now the Bionic\n"                            ;; 03:637c ???????????????
    TXT  "Commandos"                                   ;; 03:638b ?????????
    db   $fb, $32                                      ;; 03:6394 ??
    TXT  "\r"                                          ;; 03:6396 ?
    TXT  "and their\n"                                 ;; 03:6397 ??????????
    TXT  "special corps,"                              ;; 03:63a1 ??????????????
    db   $fb, $32                                      ;; 03:63af ??
    TXT  "\r"                                          ;; 03:63b1 ?
    TXT  "the FF Corps,\n"                             ;; 03:63b2 ??????????????
    TXT  "have been"                                   ;; 03:63c0 ?????????
    db   $fb, $32                                      ;; 03:63c9 ??
    TXT  "\r"                                          ;; 03:63cb ?
    TXT  "ordered\n"                                   ;; 03:63cc ????????
    TXT  "to complete"                                 ;; 03:63d4 ???????????
    db   $fb, $32                                      ;; 03:63df ??
    TXT  "\r"                                          ;; 03:63e1 ?
    TXT  "Super Joe's\n"                               ;; 03:63e2 ????????????
    TXT  "mission."                                    ;; 03:63ee ????????
    db   $fb, $1e                                      ;; 03:63f6 ??
    TXT  "[EOT]"                                       ;; 03:63f8 ?
.data_03_63f9:
    db   $00                                           ;; 03:63f9 ?
;@bc_text
.data_03_63fa:
    TXT  "Rad Spencer,\n"                              ;; 03:63fa ?????????????
    TXT  "the strongest"                               ;; 03:6407 ?????????????
    db   $fb, $1e                                      ;; 03:6414 ??
    TXT  "\r"                                          ;; 03:6416 ?
    TXT  "commando in the\n"                           ;; 03:6417 ????????????????
    TXT  "FF Corps"                                    ;; 03:6427 ????????
    db   $fb, $1e                                      ;; 03:642f ??
    TXT  "\r"                                          ;; 03:6431 ?
    TXT  "has managed\n"                               ;; 03:6432 ????????????
    TXT  "to sneak"                                    ;; 03:643e ????????
    db   $fb, $1e                                      ;; 03:6446 ??
    TXT  "\r"                                          ;; 03:6448 ?
    TXT  "into the Doraize"                            ;; 03:6449 ????????????????
    TXT  "Dukedom"                                     ;; 03:6459 ???????
    db   $fb, $1e                                      ;; 03:6460 ??
    TXT  "\r"                                          ;; 03:6462 ?
    TXT  "to rescue\n"                                 ;; 03:6463 ??????????
    TXT  "Super Joe."                                  ;; 03:646d ??????????
    db   $fb, $1e                                      ;; 03:6477 ??
    TXT  "\r"                                          ;; 03:6479 ?
    TXT  "The final battle"                            ;; 03:647a ????????????????
    db   $fb, $3c                                      ;; 03:648a ??
    TXT  "has just begun.[EOT]"                        ;; 03:648c ????????????????
.data_03_649c:
    db   $00                                           ;; 03:649c ?
.data_03_649d:
    db   $00                                           ;; 03:649d ?
.data_03_649e:
    db   $00                                           ;; 03:649e ?
.data_03_649f:
    db   $f9, $03                                      ;; 03:649f ??
    TXT  "Get out of thisp"                            ;; 03:64a1 ????????????????
    TXT  "lace immediate-l"                            ;; 03:64b1 ????????????????
    TXT  "y!"                                          ;; 03:64c1 ??
    db   $f9, $12                                      ;; 03:64c3 ??
    TXT  "Rad and Super\n"                             ;; 03:64c5 ??????????????
    TXT  "Joe are still\n"                             ;; 03:64d3 ??????????????
    TXT  "inside the\n"                                ;; 03:64e1 ???????????
    TXT  "Albatross.\n"                                ;; 03:64ec ???????????
    db   $fb, $3c                                      ;; 03:64f7 ??
    TXT  "Will you wait\n"                             ;; 03:64f9 ??????????????
    TXT  ",Sir?"                                       ;; 03:6507 ?????
    db   $f9, $09                                      ;; 03:650c ??
    TXT  "I don't care!\n"                             ;; 03:650e ??????????????
    TXT  "I'll go find\n"                              ;; 03:651c ?????????????
    TXT  "Rad![EOT]"                                   ;; 03:6529 ?????
.data_03_652e:
    db   $fa, $02                                      ;; 03:652e ??
    TXT  "You did it!\n"                               ;; 03:6530 ????????????
    TXT  "You've saved the"                            ;; 03:653c ????????????????
    TXT  "whole world!"                                ;; 03:654c ????????????
    db   $fa, $01                                      ;; 03:6558 ??
    TXT  "We've won the\n"                             ;; 03:655a ??????????????
    TXT  "final battle.[EOT]"                          ;; 03:6568 ??????????????
.data_03_6576:
    db   $f9, $09                                      ;; 03:6576 ??
    TXT  "Can you hear me,"                            ;; 03:6578 ????????????????
    TXT  "Rad?\r"                                      ;; 03:6588 ?????
    TXT  " Our helicopter "                            ;; 03:658d ????????????????
    TXT  "is approaching\n"                            ;; 03:659d ???????????????
    TXT  "you."                                        ;; 03:65ac ????
    db   $fb, $1e                                      ;; 03:65b0 ??
    TXT  "\r"                                          ;; 03:65b2 ?
    TXT  " Get a hold of\n"                            ;; 03:65b3 ???????????????
    TXT  "the helicopter\n"                            ;; 03:65c2 ???????????????
    db   $fb, $1e                                      ;; 03:65d1 ??
    TXT  "as it passes by."                            ;; 03:65d3 ????????????????
    TXT  "[EOT]"                                       ;; 03:65e3 ?
;@bc_text
.data_03_65e4:
    TXT  "The battle has\n"                            ;; 03:65e4 ???????????????
    TXT  "ended"                                       ;; 03:65f3 ?????
    db   $fb, $2d                                      ;; 03:65f8 ??
    TXT  "\r"                                          ;; 03:65fa ?
    TXT  "with the\n"                                  ;; 03:65fb ?????????
    TXT  "destruction of"                              ;; 03:6604 ??????????????
    db   $fb, $1e                                      ;; 03:6612 ??
    TXT  "\r"                                          ;; 03:6614 ?
    TXT  "the Albatross\n"                             ;; 03:6615 ??????????????
    TXT  "project."                                    ;; 03:6623 ????????
    db   $fb, $1e                                      ;; 03:662b ??
    TXT  "\r"                                          ;; 03:662d ?
    TXT  "and the Doraize\n"                           ;; 03:662e ????????????????
    TXT  "Dukedom will"                                ;; 03:663e ????????????
    db   $fb, $1e                                      ;; 03:664a ??
    TXT  "\r"                                          ;; 03:664c ?
    TXT  "surely crumble."                             ;; 03:664d ???????????????
    db   $fb, $1e                                      ;; 03:665c ??
    TXT  "[EOT]"                                       ;; 03:665e ?
.data_03_665f:
    db   $00                                           ;; 03:665f ?
.data_03_6660:
    db   $00                                           ;; 03:6660 ?
.data_03_6661:
    db   $00                                           ;; 03:6661 ?
;@bc_text
.data_03_6662:
    db   $fb, $5a                                      ;; 03:6662 ??
    TXT  "Out of the\n"                                ;; 03:6664 ???????????
    TXT  "rubble,"                                     ;; 03:666f ???????
    db   $fb, $3c                                      ;; 03:6676 ??
    TXT  "\r"                                          ;; 03:6678 ?
    TXT  "a new hero has\n"                            ;; 03:6679 ???????????????
    TXT  "emerged to lead"                             ;; 03:6688 ???????????????
    db   $fb, $3c                                      ;; 03:6697 ??
    TXT  "\r"                                          ;; 03:6699 ?
    TXT  "the FF Corps."                               ;; 03:669a ?????????????
    db   $fb, $3c                                      ;; 03:66a7 ??
    TXT  "\r"                                          ;; 03:66a9 ?
    TXT  "Rad Spencer,\n"                              ;; 03:66aa ?????????????
    TXT  "Super Joe and"                               ;; 03:66b7 ?????????????
    db   $fb, $96                                      ;; 03:66c4 ??
    TXT  "[EOT]"                                       ;; 03:66c6 ?
;@bc_text
.data_03_66c7:
    TXT  "the rest of the\n"                           ;; 03:66c7 ????????????????
    TXT  "Bionic Commandos"                            ;; 03:66d7 ????????????????
    TXT  "will continue"                               ;; 03:66e7 ?????????????
    db   $fb, $3c                                      ;; 03:66f4 ??
    TXT  "\r"                                          ;; 03:66f6 ?
    TXT  "their eternal\n"                             ;; 03:66f7 ??????????????
    TXT  "vigil in the"                                ;; 03:6705 ????????????
    db   $fb, $3c                                      ;; 03:6711 ??
    TXT  "\r"                                          ;; 03:6713 ?
    TXT  "name of peace."                              ;; 03:6714 ??????????????
    db   $fb, $3c                                      ;; 03:6722 ??
    TXT  "[EOT]"                                       ;; 03:6724 ?
;@bc_text
.data_03_6725:
    db   $fb, $f0                                      ;; 03:6725 ??
    db   $fb, $f0                                      ;; 03:6727 ??
    db   $fb, $78                                      ;; 03:6729 ??
    TXT  "<FC>4END[EOT]"                               ;; 03:672b ??????
.data_03_6731:
    db   $00                                           ;; 03:6731 ?
.data_03_6732:
    db   $00                                           ;; 03:6732 ?
.data_03_6733:
    db   $00                                           ;; 03:6733 ?

;@bc_texts amount=9
data_03_6734:
    dw   data_03_6778                                  ;; 03:6734 pP $00
    dw   data_03_6746                                  ;; 03:6736 ?? $01
    dw   data_03_6746                                  ;; 03:6738 ?? $02
    dw   data_03_6746                                  ;; 03:673a ?? $03
    dw   data_03_6746                                  ;; 03:673c ?? $04
    dw   data_03_6746                                  ;; 03:673e ?? $05
    dw   data_03_6746                                  ;; 03:6740 ?? $06
    dw   data_03_6757                                  ;; 03:6742 pP $07
    dw   data_03_6767                                  ;; 03:6744 pP $08

data_03_6746:
    TXT  "You can't go now"                            ;; 03:6746 ????????????????
    TXT  "[EOT]"                                       ;; 03:6756 ?

data_03_6757:
    TXT  "Please instruct[EOT]"                        ;; 03:6757 ................

data_03_6767:
    TXT  "Descend Transfer"                            ;; 03:6767 ................
    TXT  "[EOT]"                                       ;; 03:6777 .

data_03_6778:
    TXT  " Area [EOT]"                                 ;; 03:6778 .......

;@bc_text
data_03_677f:
    TXT  "Enemies !![EOT]"                             ;; 03:677f ???????????
    db   $01, $01, $0e, $4e, $4c, $26, $01, $01        ;; 03:678a ????????
    db   $1f, $40, $4f, $26, $fe, $01, $01, $1e        ;; 03:6792 ????????
    db   $44, $4b, $44, $42, $53, $fe, $01, $01        ;; 03:679a ????????
    db   $10, $4d, $43, $00, $0d, $48, $4e, $2f        ;; 03:67a2 ????????
    db   $1b, $51, $4e, $53, $44, $48, $4d, $00        ;; 03:67aa ????????
    db   $22, $48, $43, $44, $01, $1d, $40, $4d        ;; 03:67b2 ????????
    db   $46, $44, $01, $1d, $48, $45, $4b, $44        ;; 03:67ba ????????
    db   $00, $1e, $47, $48, $44, $4b, $43, $01        ;; 03:67c2 ????????
    db   $12, $4e, $46, $46, $4b, $44, $52, $00        ;; 03:67ca ????????
    db   $12, $51, $44, $4d, $40, $43, $44, $01        ;; 03:67d2 ????????
    db   $17, $40, $54, $4d, $42, $47, $44, $51        ;; 03:67da ????????
    db   $00, $13, $58, $4f, $44, $51, $2f, $0d        ;; 03:67e2 ????????
    db   $40, $51, $51, $44, $4b, $00, $1b, $44        ;; 03:67ea ????????
    db   $51, $4c, $48, $53, $00, $17, $44, $46        ;; 03:67f2 ????????
    db   $01, $0c, $51, $4c, $4e, $51, $00, $21        ;; 03:67fa ????????
    db   $54, $4b, $42, $40, $4d, $01, $18, $04        ;; 03:6802 ????????
    db   $09, $06, $00, $1b, $51, $4e, $53, $44        ;; 03:680a ????????
    db   $42, $53, $01, $1e, $54, $48, $53, $00        ;; 03:6812 ????????
    db   $22, $44, $28, $55, $44, $01, $4e, $41        ;; 03:681a ????????
    db   $53, $40, $48, $4d, $44, $43, $fe, $00        ;; 03:6822 ????????
    db   $a6, $67, $b2, $67, $c3, $67, $d2, $67        ;; 03:682a ????????
    db   $e3, $67, $f0, $67, $f7, $67, $01, $68        ;; 03:6832 ????????
    db   $0d, $68                                      ;; 03:683a ??

call_03_683c:
    ld   A, [wCD74]                                    ;; 03:683c $fa $74 $cd
    call call_03_6845                                  ;; 03:683f $cd $45 $68
    jp   call_03_6ffa                                  ;; 03:6842 $c3 $fa $6f

call_03_6845:
    or   A, A                                          ;; 03:6845 $b7
    ret  Z                                             ;; 03:6846 $c8
    ldh  [hFF8B], A                                    ;; 03:6847 $e0 $8b
    ld   L, A                                          ;; 03:6849 $6f
    xor  A, A                                          ;; 03:684a $af
    ldh  [hFF8C], A                                    ;; 03:684b $e0 $8c
    ld   A, L                                          ;; 03:684d $7d
    cp   A, $c0                                        ;; 03:684e $fe $c0
    jr   C, .jr_03_6858                                ;; 03:6850 $38 $06
    call call_03_688c                                  ;; 03:6852 $cd $8c $68
    ld   L, A                                          ;; 03:6855 $6f
    ldh  [hFF8B], A                                    ;; 03:6856 $e0 $8b
.jr_03_6858:
    call call_03_6b7c                                  ;; 03:6858 $cd $7c $6b
    ld   A, [wCD6F]                                    ;; 03:685b $fa $6f $cd
    swap A                                             ;; 03:685e $cb $37
    and  A, $f0                                        ;; 03:6860 $e6 $f0
    ld   E, A                                          ;; 03:6862 $5f
    ld   A, [wCD70]                                    ;; 03:6863 $fa $70 $cd
    and  A, $03                                        ;; 03:6866 $e6 $03
    add  A, $89                                        ;; 03:6868 $c6 $89
    ld   D, A                                          ;; 03:686a $57
    ld   HL, wD206                                     ;; 03:686b $21 $06 $d2
    ld   BC, $10                                       ;; 03:686e $01 $10 $00
    call call_00_015f                                  ;; 03:6871 $cd $5f $01
    ldh  A, [hFF8C]                                    ;; 03:6874 $f0 $8c
    or   A, A                                          ;; 03:6876 $b7
    ret  Z                                             ;; 03:6877 $c8
    ld   HL, wCD5E                                     ;; 03:6878 $21 $5e $cd
    ld   A, [wCD6F]                                    ;; 03:687b $fa $6f $cd
    add  A, [HL]                                       ;; 03:687e $86
    ld   E, A                                          ;; 03:687f $5f
    inc  HL                                            ;; 03:6880 $23
    ld   A, [wCD70]                                    ;; 03:6881 $fa $70 $cd
    add  A, A                                          ;; 03:6884 $87
    add  A, [HL]                                       ;; 03:6885 $86
    ld   D, A                                          ;; 03:6886 $57
    ldh  A, [hFF8C]                                    ;; 03:6887 $f0 $8c
    jp   call_03_6b3a                                  ;; 03:6889 $c3 $3a $6b

call_03_688c:
    ldh  A, [hFF8B]                                    ;; 03:688c $f0 $8b
    cp   A, $d4                                        ;; 03:688e $fe $d4
    jr   C, .jr_03_689e                                ;; 03:6890 $38 $0c
    cp   A, $d9                                        ;; 03:6892 $fe $d9
    jr   C, .jr_03_689a                                ;; 03:6894 $38 $04
    cp   A, $ed                                        ;; 03:6896 $fe $ed
    jr   C, .jr_03_689e                                ;; 03:6898 $38 $04
.jr_03_689a:
    ld   A, $84                                        ;; 03:689a $3e $84
    jr   .jr_03_68a0                                   ;; 03:689c $18 $02
.jr_03_689e:
    ld   A, $83                                        ;; 03:689e $3e $83
.jr_03_68a0:
    ldh  [hFF8C], A                                    ;; 03:68a0 $e0 $8c
    ldh  A, [hFF8B]                                    ;; 03:68a2 $f0 $8b
    sub  A, $c0                                        ;; 03:68a4 $d6 $c0
    ld   E, A                                          ;; 03:68a6 $5f
    ld   B, $00                                        ;; 03:68a7 $06 $00
    sub  A, $19                                        ;; 03:68a9 $d6 $19
    jr   C, .jr_03_68b0                                ;; 03:68ab $38 $03
    ld   E, A                                          ;; 03:68ad $5f
    ld   B, $40                                        ;; 03:68ae $06 $40
.jr_03_68b0:
    ld   D, $00                                        ;; 03:68b0 $16 $00
    ld   HL, .data_03_68b9                             ;; 03:68b2 $21 $b9 $68
    add  HL, DE                                        ;; 03:68b5 $19
    ld   A, [HL]                                       ;; 03:68b6 $7e
    add  A, B                                          ;; 03:68b7 $80
    ret                                                ;; 03:68b8 $c9
.data_03_68b9:
    db   $45, $46, $47, $48, $49, $4a, $4b, $4c        ;; 03:68b9 ????????
    db   $4d, $4e, $4f, $50, $51, $52, $53, $59        ;; 03:68c1 ????????
    db   $5a                                           ;; 03:68c9 ?

data_03_68ca:
    db   $5b, $5c, $5d, $59, $5a, $5b, $5c, $5d        ;; 03:68ca ????????

data_03_68d2:
    db   %00000000                                     ;; 03:68d2 $00
    db   %00000000                                     ;; 03:68d3 $00
    db   %00000000                                     ;; 03:68d4 $00
    db   %00000000                                     ;; 03:68d5 $00
    db   %00000000                                     ;; 03:68d6 $00
    db   %00000000                                     ;; 03:68d7 $00
    db   %00000000                                     ;; 03:68d8 $00
    db   %00000000                                     ;; 03:68d9 $00

    db   %00111110                                     ;; 03:68da $3e
    db   %01100011                                     ;; 03:68db $63
    db   %01100111                                     ;; 03:68dc $67
    db   %01101011                                     ;; 03:68dd $6b
    db   %01110011                                     ;; 03:68de $73
    db   %01100011                                     ;; 03:68df $63
    db   %00111110                                     ;; 03:68e0 $3e
    db   %00000000                                     ;; 03:68e1 $00

    db   %00011000                                     ;; 03:68e2 $18
    db   %00111000                                     ;; 03:68e3 $38
    db   %00011000                                     ;; 03:68e4 $18
    db   %00011000                                     ;; 03:68e5 $18
    db   %00011000                                     ;; 03:68e6 $18
    db   %00011000                                     ;; 03:68e7 $18
    db   %00111100                                     ;; 03:68e8 $3c
    db   %00000000                                     ;; 03:68e9 $00

    db   %00111110                                     ;; 03:68ea $3e
    db   %01100011                                     ;; 03:68eb $63
    db   %01100011                                     ;; 03:68ec $63
    db   %00001110                                     ;; 03:68ed $0e
    db   %00011000                                     ;; 03:68ee $18
    db   %00110000                                     ;; 03:68ef $30
    db   %01111111                                     ;; 03:68f0 $7f
    db   %00000000                                     ;; 03:68f1 $00

    db   %00111110                                     ;; 03:68f2 $3e
    db   %01100011                                     ;; 03:68f3 $63
    db   %00000011                                     ;; 03:68f4 $03
    db   %00011110                                     ;; 03:68f5 $1e
    db   %00000011                                     ;; 03:68f6 $03
    db   %01100011                                     ;; 03:68f7 $63
    db   %00111110                                     ;; 03:68f8 $3e
    db   %00000000                                     ;; 03:68f9 $00

    db   %00000110                                     ;; 03:68fa $06
    db   %00001110                                     ;; 03:68fb $0e
    db   %00010110                                     ;; 03:68fc $16
    db   %00100110                                     ;; 03:68fd $26
    db   %01111111                                     ;; 03:68fe $7f
    db   %00000110                                     ;; 03:68ff $06
    db   %00001111                                     ;; 03:6900 $0f
    db   %00000000                                     ;; 03:6901 $00

    db   %01111111                                     ;; 03:6902 $7f
    db   %01100000                                     ;; 03:6903 $60
    db   %01111110                                     ;; 03:6904 $7e
    db   %00000011                                     ;; 03:6905 $03
    db   %01100011                                     ;; 03:6906 $63
    db   %01100011                                     ;; 03:6907 $63
    db   %00111110                                     ;; 03:6908 $3e
    db   %00000000                                     ;; 03:6909 $00

    db   %00111110                                     ;; 03:690a $3e
    db   %01100011                                     ;; 03:690b $63
    db   %01100000                                     ;; 03:690c $60
    db   %01111110                                     ;; 03:690d $7e
    db   %01100011                                     ;; 03:690e $63
    db   %01100011                                     ;; 03:690f $63
    db   %00111110                                     ;; 03:6910 $3e
    db   %00000000                                     ;; 03:6911 $00

    db   %01111111                                     ;; 03:6912 $7f
    db   %01100011                                     ;; 03:6913 $63
    db   %01100110                                     ;; 03:6914 $66
    db   %00001100                                     ;; 03:6915 $0c
    db   %00011000                                     ;; 03:6916 $18
    db   %00011000                                     ;; 03:6917 $18
    db   %00011000                                     ;; 03:6918 $18
    db   %00000000                                     ;; 03:6919 $00

    db   %00111110                                     ;; 03:691a $3e
    db   %01100011                                     ;; 03:691b $63
    db   %01100011                                     ;; 03:691c $63
    db   %00111110                                     ;; 03:691d $3e
    db   %01100011                                     ;; 03:691e $63
    db   %01100011                                     ;; 03:691f $63
    db   %00111110                                     ;; 03:6920 $3e
    db   %00000000                                     ;; 03:6921 $00

    db   %00111110                                     ;; 03:6922 $3e
    db   %01100011                                     ;; 03:6923 $63
    db   %01100011                                     ;; 03:6924 $63
    db   %00111111                                     ;; 03:6925 $3f
    db   %00000011                                     ;; 03:6926 $03
    db   %00000110                                     ;; 03:6927 $06
    db   %00111100                                     ;; 03:6928 $3c
    db   %00000000                                     ;; 03:6929 $00

    db   %00011100                                     ;; 03:692a $1c
    db   %00111110                                     ;; 03:692b $3e
    db   %01100011                                     ;; 03:692c $63
    db   %01100011                                     ;; 03:692d $63
    db   %01111111                                     ;; 03:692e $7f
    db   %01100011                                     ;; 03:692f $63
    db   %01100011                                     ;; 03:6930 $63
    db   %00000000                                     ;; 03:6931 $00

    db   %01111110                                     ;; 03:6932 $7e
    db   %01100011                                     ;; 03:6933 $63
    db   %01100011                                     ;; 03:6934 $63
    db   %01111110                                     ;; 03:6935 $7e
    db   %01100011                                     ;; 03:6936 $63
    db   %01100011                                     ;; 03:6937 $63
    db   %01111110                                     ;; 03:6938 $7e
    db   %00000000                                     ;; 03:6939 $00

    db   %00111110                                     ;; 03:693a $3e
    db   %01100011                                     ;; 03:693b $63
    db   %01100011                                     ;; 03:693c $63
    db   %01100000                                     ;; 03:693d $60
    db   %01100011                                     ;; 03:693e $63
    db   %01100011                                     ;; 03:693f $63
    db   %00111110                                     ;; 03:6940 $3e
    db   %00000000                                     ;; 03:6941 $00

    db   %01111110                                     ;; 03:6942 $7e
    db   %00110111                                     ;; 03:6943 $37
    db   %00110011                                     ;; 03:6944 $33
    db   %00110011                                     ;; 03:6945 $33
    db   %00110011                                     ;; 03:6946 $33
    db   %00110111                                     ;; 03:6947 $37
    db   %01111110                                     ;; 03:6948 $7e
    db   %00000000                                     ;; 03:6949 $00

    db   %01111111                                     ;; 03:694a $7f
    db   %00110011                                     ;; 03:694b $33
    db   %00110101                                     ;; 03:694c $35
    db   %00111100                                     ;; 03:694d $3c
    db   %00110101                                     ;; 03:694e $35
    db   %00110011                                     ;; 03:694f $33
    db   %01111111                                     ;; 03:6950 $7f
    db   %00000000                                     ;; 03:6951 $00

    db   %01111111                                     ;; 03:6952 $7f
    db   %00110011                                     ;; 03:6953 $33
    db   %00110101                                     ;; 03:6954 $35
    db   %00111100                                     ;; 03:6955 $3c
    db   %00110100                                     ;; 03:6956 $34
    db   %00110000                                     ;; 03:6957 $30
    db   %01111000                                     ;; 03:6958 $78
    db   %00000000                                     ;; 03:6959 $00

    db   %00111110                                     ;; 03:695a $3e
    db   %01100011                                     ;; 03:695b $63
    db   %01100000                                     ;; 03:695c $60
    db   %01101111                                     ;; 03:695d $6f
    db   %01100011                                     ;; 03:695e $63
    db   %01100011                                     ;; 03:695f $63
    db   %00111110                                     ;; 03:6960 $3e
    db   %00000000                                     ;; 03:6961 $00

    db   %01100011                                     ;; 03:6962 $63
    db   %01100011                                     ;; 03:6963 $63
    db   %01100011                                     ;; 03:6964 $63
    db   %01111111                                     ;; 03:6965 $7f
    db   %01100011                                     ;; 03:6966 $63
    db   %01100011                                     ;; 03:6967 $63
    db   %01100011                                     ;; 03:6968 $63
    db   %00000000                                     ;; 03:6969 $00

    db   %00011110                                     ;; 03:696a $1e
    db   %00001100                                     ;; 03:696b $0c
    db   %00001100                                     ;; 03:696c $0c
    db   %00001100                                     ;; 03:696d $0c
    db   %00001100                                     ;; 03:696e $0c
    db   %00001100                                     ;; 03:696f $0c
    db   %00011110                                     ;; 03:6970 $1e
    db   %00000000                                     ;; 03:6971 $00

    db   %00001111                                     ;; 03:6972 $0f
    db   %00000110                                     ;; 03:6973 $06
    db   %00000110                                     ;; 03:6974 $06
    db   %01100110                                     ;; 03:6975 $66
    db   %01100110                                     ;; 03:6976 $66
    db   %01100110                                     ;; 03:6977 $66
    db   %00111100                                     ;; 03:6978 $3c
    db   %00000000                                     ;; 03:6979 $00

    db   %01100110                                     ;; 03:697a $66
    db   %01101100                                     ;; 03:697b $6c
    db   %01111000                                     ;; 03:697c $78
    db   %01111000                                     ;; 03:697d $78
    db   %01111100                                     ;; 03:697e $7c
    db   %01101110                                     ;; 03:697f $6e
    db   %01100111                                     ;; 03:6980 $67
    db   %00000000                                     ;; 03:6981 $00

    db   %01111100                                     ;; 03:6982 $7c
    db   %00110000                                     ;; 03:6983 $30
    db   %00110000                                     ;; 03:6984 $30
    db   %00110000                                     ;; 03:6985 $30
    db   %00110001                                     ;; 03:6986 $31
    db   %00110011                                     ;; 03:6987 $33
    db   %01111111                                     ;; 03:6988 $7f
    db   %00000000                                     ;; 03:6989 $00

    db   %01100011                                     ;; 03:698a $63
    db   %01110111                                     ;; 03:698b $77
    db   %01111111                                     ;; 03:698c $7f
    db   %01111111                                     ;; 03:698d $7f
    db   %01101011                                     ;; 03:698e $6b
    db   %01100011                                     ;; 03:698f $63
    db   %01100011                                     ;; 03:6990 $63
    db   %00000000                                     ;; 03:6991 $00

    db   %01100011                                     ;; 03:6992 $63
    db   %01100011                                     ;; 03:6993 $63
    db   %01110011                                     ;; 03:6994 $73
    db   %01111011                                     ;; 03:6995 $7b
    db   %01101111                                     ;; 03:6996 $6f
    db   %01100111                                     ;; 03:6997 $67
    db   %01100011                                     ;; 03:6998 $63
    db   %00000000                                     ;; 03:6999 $00

    db   %00111110                                     ;; 03:699a $3e
    db   %01100011                                     ;; 03:699b $63
    db   %01100011                                     ;; 03:699c $63
    db   %01100011                                     ;; 03:699d $63
    db   %01100011                                     ;; 03:699e $63
    db   %01100011                                     ;; 03:699f $63
    db   %00111110                                     ;; 03:69a0 $3e
    db   %00000000                                     ;; 03:69a1 $00

    db   %01111110                                     ;; 03:69a2 $7e
    db   %01100111                                     ;; 03:69a3 $67
    db   %01100111                                     ;; 03:69a4 $67
    db   %01100111                                     ;; 03:69a5 $67
    db   %01111110                                     ;; 03:69a6 $7e
    db   %01100000                                     ;; 03:69a7 $60
    db   %01100000                                     ;; 03:69a8 $60
    db   %00000000                                     ;; 03:69a9 $00

    db   %00111100                                     ;; 03:69aa $3c
    db   %01100110                                     ;; 03:69ab $66
    db   %01100110                                     ;; 03:69ac $66
    db   %01100110                                     ;; 03:69ad $66
    db   %01111110                                     ;; 03:69ae $7e
    db   %01101110                                     ;; 03:69af $6e
    db   %00111111                                     ;; 03:69b0 $3f
    db   %00000000                                     ;; 03:69b1 $00

    db   %01111110                                     ;; 03:69b2 $7e
    db   %01100111                                     ;; 03:69b3 $67
    db   %01100111                                     ;; 03:69b4 $67
    db   %01111110                                     ;; 03:69b5 $7e
    db   %01111100                                     ;; 03:69b6 $7c
    db   %01101110                                     ;; 03:69b7 $6e
    db   %01100111                                     ;; 03:69b8 $67
    db   %00000000                                     ;; 03:69b9 $00

    db   %00111110                                     ;; 03:69ba $3e
    db   %01110011                                     ;; 03:69bb $73
    db   %01110000                                     ;; 03:69bc $70
    db   %00111110                                     ;; 03:69bd $3e
    db   %00000111                                     ;; 03:69be $07
    db   %01100111                                     ;; 03:69bf $67
    db   %00111110                                     ;; 03:69c0 $3e
    db   %00000000                                     ;; 03:69c1 $00

    db   %01111111                                     ;; 03:69c2 $7f
    db   %01011011                                     ;; 03:69c3 $5b
    db   %01011001                                     ;; 03:69c4 $59
    db   %00011000                                     ;; 03:69c5 $18
    db   %00011000                                     ;; 03:69c6 $18
    db   %00011000                                     ;; 03:69c7 $18
    db   %00111100                                     ;; 03:69c8 $3c
    db   %00000000                                     ;; 03:69c9 $00

    db   %00100011                                     ;; 03:69ca $23
    db   %00100011                                     ;; 03:69cb $23
    db   %00100011                                     ;; 03:69cc $23
    db   %00100011                                     ;; 03:69cd $23
    db   %00100011                                     ;; 03:69ce $23
    db   %00110111                                     ;; 03:69cf $37
    db   %00011110                                     ;; 03:69d0 $1e
    db   %00000000                                     ;; 03:69d1 $00

    db   %01100011                                     ;; 03:69d2 $63
    db   %01100011                                     ;; 03:69d3 $63
    db   %01100011                                     ;; 03:69d4 $63
    db   %01110111                                     ;; 03:69d5 $77
    db   %00111110                                     ;; 03:69d6 $3e
    db   %00011100                                     ;; 03:69d7 $1c
    db   %00001000                                     ;; 03:69d8 $08
    db   %00000000                                     ;; 03:69d9 $00

    db   %01000011                                     ;; 03:69da $43
    db   %01000011                                     ;; 03:69db $43
    db   %01010011                                     ;; 03:69dc $53
    db   %01111011                                     ;; 03:69dd $7b
    db   %01111111                                     ;; 03:69de $7f
    db   %01100111                                     ;; 03:69df $67
    db   %01000011                                     ;; 03:69e0 $43
    db   %00000000                                     ;; 03:69e1 $00

    db   %01100011                                     ;; 03:69e2 $63
    db   %01100111                                     ;; 03:69e3 $67
    db   %00111110                                     ;; 03:69e4 $3e
    db   %00011100                                     ;; 03:69e5 $1c
    db   %00111100                                     ;; 03:69e6 $3c
    db   %01110111                                     ;; 03:69e7 $77
    db   %01100011                                     ;; 03:69e8 $63
    db   %00000000                                     ;; 03:69e9 $00

    db   %01100110                                     ;; 03:69ea $66
    db   %01100110                                     ;; 03:69eb $66
    db   %01100110                                     ;; 03:69ec $66
    db   %00111100                                     ;; 03:69ed $3c
    db   %00011000                                     ;; 03:69ee $18
    db   %00011000                                     ;; 03:69ef $18
    db   %00011000                                     ;; 03:69f0 $18
    db   %00000000                                     ;; 03:69f1 $00

    db   $7f, $67, $0e, $1c, $38, $73, $7f, $00        ;; 03:69f2 ????????
    db   $00, $00, $00, $00, $00, $18, $18, $00        ;; 03:69fa ????????
    db   %00000000                                     ;; 03:6a02 $00
    db   %00000000                                     ;; 03:6a03 $00
    db   %00000000                                     ;; 03:6a04 $00
    db   %00000000                                     ;; 03:6a05 $00
    db   %00011000                                     ;; 03:6a06 $18
    db   %00011000                                     ;; 03:6a07 $18
    db   %00001000                                     ;; 03:6a08 $08
    db   %00010000                                     ;; 03:6a09 $10

    db   $18, $18, $08, $10, $00, $00, $00, $00        ;; 03:6a0a ????????
    db   $18, $18, $18, $10, $00, $18, $18, $00        ;; 03:6a12 ????????
    db   $3c, $66, $66, $0c, $18, $00, $18, $00        ;; 03:6a1a ????????
    db   $30, $48, $48, $32, $4c, $4c, $73, $00        ;; 03:6a22 ????????
    db   $18, $30, $30, $30, $30, $30, $18, $00        ;; 03:6a2a ????????
    db   $18, $0c, $0c, $0c, $0c, $0c, $18, $00        ;; 03:6a32 ????????
    db   $00, $00, $00, $33, $33, $00, $00, $00        ;; 03:6a3a ????????
    db   $00, $00, $00, $7e, $00, $00, $00, $00        ;; 03:6a42 ????????
    db   $01, $1d, $36, $66, $64, $6e, $33, $00        ;; 03:6a4a ????????
    db   $0e, $1b, $1b, $36, $33, $6b, $66, $00        ;; 03:6a52 ????????
    db   $36, $5d, $19, $18, $30, $30, $30, $00        ;; 03:6a5a ????????
    db   $0c, $1a, $08, $34, $66, $4e, $3c, $00        ;; 03:6a62 ????????

data_03_6a6a:
    db   %00000000                                     ;; 03:6a6a $00
    db   %00000000                                     ;; 03:6a6b $00
    db   %00111110                                     ;; 03:6a6c $3e
    db   %01100110                                     ;; 03:6a6d $66
    db   %01100110                                     ;; 03:6a6e $66
    db   %01100110                                     ;; 03:6a6f $66
    db   %00111011                                     ;; 03:6a70 $3b
    db   %00000000                                     ;; 03:6a71 $00

    db   $60, $60, $7c, $66, $66, $66, $5c, $00        ;; 03:6a72 ????????
    db   %00000000                                     ;; 03:6a7a $00
    db   %00000000                                     ;; 03:6a7b $00
    db   %00111100                                     ;; 03:6a7c $3c
    db   %01100110                                     ;; 03:6a7d $66
    db   %01100000                                     ;; 03:6a7e $60
    db   %01100110                                     ;; 03:6a7f $66
    db   %00111100                                     ;; 03:6a80 $3c
    db   %00000000                                     ;; 03:6a81 $00

    db   %00000110                                     ;; 03:6a82 $06
    db   %00000110                                     ;; 03:6a83 $06
    db   %00111110                                     ;; 03:6a84 $3e
    db   %01100110                                     ;; 03:6a85 $66
    db   %01100110                                     ;; 03:6a86 $66
    db   %01100110                                     ;; 03:6a87 $66
    db   %00111011                                     ;; 03:6a88 $3b
    db   %00000000                                     ;; 03:6a89 $00

    db   %00000000                                     ;; 03:6a8a $00
    db   %00000000                                     ;; 03:6a8b $00
    db   %00111100                                     ;; 03:6a8c $3c
    db   %01100110                                     ;; 03:6a8d $66
    db   %01111110                                     ;; 03:6a8e $7e
    db   %01100000                                     ;; 03:6a8f $60
    db   %00111110                                     ;; 03:6a90 $3e
    db   %00000000                                     ;; 03:6a91 $00

    db   %00001110                                     ;; 03:6a92 $0e
    db   %00011000                                     ;; 03:6a93 $18
    db   %01111110                                     ;; 03:6a94 $7e
    db   %00011000                                     ;; 03:6a95 $18
    db   %00011000                                     ;; 03:6a96 $18
    db   %00011000                                     ;; 03:6a97 $18
    db   %00011000                                     ;; 03:6a98 $18
    db   %00000000                                     ;; 03:6a99 $00

    db   $00, $00, $3e, $66, $66, $3f, $46, $3c        ;; 03:6a9a ????????
    db   %01100000                                     ;; 03:6aa2 $60
    db   %01100000                                     ;; 03:6aa3 $60
    db   %01101100                                     ;; 03:6aa4 $6c
    db   %01111110                                     ;; 03:6aa5 $7e
    db   %01110110                                     ;; 03:6aa6 $76
    db   %01100110                                     ;; 03:6aa7 $66
    db   %01100110                                     ;; 03:6aa8 $66
    db   %00000000                                     ;; 03:6aa9 $00

    db   %00011000                                     ;; 03:6aaa $18
    db   %00000000                                     ;; 03:6aab $00
    db   %00011000                                     ;; 03:6aac $18
    db   %00011000                                     ;; 03:6aad $18
    db   %00011000                                     ;; 03:6aae $18
    db   %00011000                                     ;; 03:6aaf $18
    db   %00011000                                     ;; 03:6ab0 $18
    db   %00000000                                     ;; 03:6ab1 $00

    db   $0c, $00, $0c, $0c, $0c, $6c, $6c, $38        ;; 03:6ab2 ????????
    db   $60, $60, $64, $68, $78, $7c, $6e, $00        ;; 03:6aba ????????
    db   %00011000                                     ;; 03:6ac2 $18
    db   %00011000                                     ;; 03:6ac3 $18
    db   %00011000                                     ;; 03:6ac4 $18
    db   %00011000                                     ;; 03:6ac5 $18
    db   %00011000                                     ;; 03:6ac6 $18
    db   %00011000                                     ;; 03:6ac7 $18
    db   %00011100                                     ;; 03:6ac8 $1c
    db   %00000000                                     ;; 03:6ac9 $00

    db   $00, $00, $7c, $56, $56, $56, $56, $00        ;; 03:6aca ????????
    db   %00000000                                     ;; 03:6ad2 $00
    db   %00000000                                     ;; 03:6ad3 $00
    db   %01011100                                     ;; 03:6ad4 $5c
    db   %01100110                                     ;; 03:6ad5 $66
    db   %01100110                                     ;; 03:6ad6 $66
    db   %01100110                                     ;; 03:6ad7 $66
    db   %01100110                                     ;; 03:6ad8 $66
    db   %00000000                                     ;; 03:6ad9 $00

    db   %00000000                                     ;; 03:6ada $00
    db   %00000000                                     ;; 03:6adb $00
    db   %00111100                                     ;; 03:6adc $3c
    db   %01100110                                     ;; 03:6add $66
    db   %01100110                                     ;; 03:6ade $66
    db   %01100110                                     ;; 03:6adf $66
    db   %00111100                                     ;; 03:6ae0 $3c
    db   %00000000                                     ;; 03:6ae1 $00

    db   $00, $00, $5c, $66, $66, $7e, $6c, $60        ;; 03:6ae2 ????????
    db   %00000000                                     ;; 03:6aea $00
    db   %00000000                                     ;; 03:6aeb $00
    db   %00111010                                     ;; 03:6aec $3a
    db   %01100110                                     ;; 03:6aed $66
    db   %01100110                                     ;; 03:6aee $66
    db   %01111110                                     ;; 03:6aef $7e
    db   %00110110                                     ;; 03:6af0 $36
    db   %00000110                                     ;; 03:6af1 $06

    db   %00000000                                     ;; 03:6af2 $00
    db   %00000000                                     ;; 03:6af3 $00
    db   %01011100                                     ;; 03:6af4 $5c
    db   %01100110                                     ;; 03:6af5 $66
    db   %01100110                                     ;; 03:6af6 $66
    db   %01100000                                     ;; 03:6af7 $60
    db   %01100000                                     ;; 03:6af8 $60
    db   %00000000                                     ;; 03:6af9 $00

    db   %00000000                                     ;; 03:6afa $00
    db   %00000000                                     ;; 03:6afb $00
    db   %00111100                                     ;; 03:6afc $3c
    db   %01110010                                     ;; 03:6afd $72
    db   %00111100                                     ;; 03:6afe $3c
    db   %01001110                                     ;; 03:6aff $4e
    db   %00111100                                     ;; 03:6b00 $3c
    db   %00000000                                     ;; 03:6b01 $00

    db   %00110000                                     ;; 03:6b02 $30
    db   %00110000                                     ;; 03:6b03 $30
    db   %01111110                                     ;; 03:6b04 $7e
    db   %00110000                                     ;; 03:6b05 $30
    db   %00110110                                     ;; 03:6b06 $36
    db   %00110110                                     ;; 03:6b07 $36
    db   %00011100                                     ;; 03:6b08 $1c
    db   %00000000                                     ;; 03:6b09 $00

    db   %00000000                                     ;; 03:6b0a $00
    db   %00000000                                     ;; 03:6b0b $00
    db   %01100110                                     ;; 03:6b0c $66
    db   %01100110                                     ;; 03:6b0d $66
    db   %01100110                                     ;; 03:6b0e $66
    db   %01101110                                     ;; 03:6b0f $6e
    db   %00110110                                     ;; 03:6b10 $36
    db   %00000000                                     ;; 03:6b11 $00

    db   $00, $00, $46, $46, $46, $2c, $18, $00        ;; 03:6b12 ????????
    db   $00, $00, $56, $56, $56, $7e, $2c, $00        ;; 03:6b1a ????????
    db   $00, $00, $66, $3c, $18, $3c, $66, $00        ;; 03:6b22 ????????
    db   $00, $00, $66, $66, $36, $1c, $38, $70        ;; 03:6b2a ????????
    db   $00, $00, $7e, $6c, $18, $36, $7e, $00        ;; 03:6b32 ????????

call_03_6b3a:
    push AF                                            ;; 03:6b3a $f5
    call call_00_02e8                                  ;; 03:6b3b $cd $e8 $02
    pop  AF                                            ;; 03:6b3e $f1
    jp   call_00_015c                                  ;; 03:6b3f $c3 $5c $01
    db   $2a, $b7, $c8, $e5, $d5, $d6, $41, $6f        ;; 03:6b42 ????????
    db   $26, $00, $29, $29, $29, $29, $01, $2a        ;; 03:6b4a ????????
    db   $69, $09, $11, $06, $d2, $06, $08, $2a        ;; 03:6b52 ????????
    db   $12, $13, $12, $13, $05, $20, $f8, $d1        ;; 03:6b5a ????????
    db   $21, $06, $d2, $01, $10, $00, $cd, $5f        ;; 03:6b62 ????????
    db   $01, $e1, $18, $d4                            ;; 03:6b6a ????

jp_03_6b6e:
    push DE                                            ;; 03:6b6e $d5
    call call_03_6b7c                                  ;; 03:6b6f $cd $7c $6b
    pop  DE                                            ;; 03:6b72 $d1
    ld   HL, wD206                                     ;; 03:6b73 $21 $06 $d2
    ld   BC, $10                                       ;; 03:6b76 $01 $10 $00
    jp   call_00_015f                                  ;; 03:6b79 $c3 $5f $01

call_03_6b7c:
    call call_03_6b8c                                  ;; 03:6b7c $cd $8c $6b
    ld   HL, wD206                                     ;; 03:6b7f $21 $06 $d2
    ld   B, $08                                        ;; 03:6b82 $06 $08
.jr_03_6b84:
    ld   A, [DE]                                       ;; 03:6b84 $1a
    inc  DE                                            ;; 03:6b85 $13
    ld   [HL+], A                                      ;; 03:6b86 $22
    ld   [HL+], A                                      ;; 03:6b87 $22
    dec  B                                             ;; 03:6b88 $05
    jr   NZ, .jr_03_6b84                               ;; 03:6b89 $20 $f9
    ret                                                ;; 03:6b8b $c9

call_03_6b8c:
    ld   A, L                                          ;; 03:6b8c $7d
    sub  A, $40                                        ;; 03:6b8d $d6 $40
    ld   DE, data_03_68ca                              ;; 03:6b8f $11 $ca $68
    jr   C, .jr_03_6ba5                                ;; 03:6b92 $38 $11
    ld   L, A                                          ;; 03:6b94 $6f
    sub  A, $40                                        ;; 03:6b95 $d6 $40
    ld   DE, data_03_6a6a                              ;; 03:6b97 $11 $6a $6a
    jr   C, .jr_03_6ba5                                ;; 03:6b9a $38 $09
    ld   L, A                                          ;; 03:6b9c $6f
    sub  A, $40                                        ;; 03:6b9d $d6 $40
    ld   DE, call_03_6b3a                              ;; 03:6b9f $11 $3a $6b
    jr   C, .jr_03_6ba5                                ;; 03:6ba2 $38 $01
    ld   L, A                                          ;; 03:6ba4 $6f
.jr_03_6ba5:
    ld   H, $00                                        ;; 03:6ba5 $26 $00
    add  HL, HL                                        ;; 03:6ba7 $29
    add  HL, HL                                        ;; 03:6ba8 $29
    add  HL, HL                                        ;; 03:6ba9 $29
    add  HL, DE                                        ;; 03:6baa $19
    ld   E, L                                          ;; 03:6bab $5d
    ld   D, H                                          ;; 03:6bac $54
    ret                                                ;; 03:6bad $c9

jp_03_6bae:
    ld   HL, $8800                                     ;; 03:6bae $21 $00 $88
    xor  A, A                                          ;; 03:6bb1 $af
    ld   BC, $10                                       ;; 03:6bb2 $01 $10 $00
    call call_00_0162                                  ;; 03:6bb5 $cd $62 $01
    ld   B, $24                                        ;; 03:6bb8 $06 $24
    ld   DE, data_03_68d2                              ;; 03:6bba $11 $d2 $68
.jr_03_6bbd:
    ld   C, $08                                        ;; 03:6bbd $0e $08
.jr_03_6bbf:
    ld   A, [DE]                                       ;; 03:6bbf $1a
    inc  DE                                            ;; 03:6bc0 $13
    push BC                                            ;; 03:6bc1 $c5
    ld   BC, $02                                       ;; 03:6bc2 $01 $02 $00
    call call_00_0162                                  ;; 03:6bc5 $cd $62 $01
    pop  BC                                            ;; 03:6bc8 $c1
    dec  C                                             ;; 03:6bc9 $0d
    jr   NZ, .jr_03_6bbf                               ;; 03:6bca $20 $f3
    dec  B                                             ;; 03:6bcc $05
    jr   NZ, .jr_03_6bbd                               ;; 03:6bcd $20 $ee
    ret                                                ;; 03:6bcf $c9

jp_03_6bd0:
    ld   A, E                                          ;; 03:6bd0 $7b
    ld   [wCD5E], A                                    ;; 03:6bd1 $ea $5e $cd
    ld   A, D                                          ;; 03:6bd4 $7a
    ld   [wCD5F], A                                    ;; 03:6bd5 $ea $5f $cd
    ld   A, C                                          ;; 03:6bd8 $79
    ld   [wCD60], A                                    ;; 03:6bd9 $ea $60 $cd
    ld   A, B                                          ;; 03:6bdc $78
    ld   [wCD61], A                                    ;; 03:6bdd $ea $61 $cd
    call call_03_74ac                                  ;; 03:6be0 $cd $ac $74
    call call_00_02fa                                  ;; 03:6be3 $cd $fa $02
    xor  A, A                                          ;; 03:6be6 $af
    ld   [wCD70], A                                    ;; 03:6be7 $ea $70 $cd
    ld   A, [wCD60]                                    ;; 03:6bea $fa $60 $cd
    ld   C, A                                          ;; 03:6bed $4f
    ld   A, [wCD61]                                    ;; 03:6bee $fa $61 $cd
    ld   B, A                                          ;; 03:6bf1 $47
    ld   A, [wCD5E]                                    ;; 03:6bf2 $fa $5e $cd
    ld   E, A                                          ;; 03:6bf5 $5f
    ld   A, [wCD5F]                                    ;; 03:6bf6 $fa $5f $cd
    ld   D, A                                          ;; 03:6bf9 $57
    call call_03_74ac                                  ;; 03:6bfa $cd $ac $74
.jr_03_6bfd:
    push BC                                            ;; 03:6bfd $c5
    push DE                                            ;; 03:6bfe $d5
    call call_00_02e8                                  ;; 03:6bff $cd $e8 $02
    xor  A, A                                          ;; 03:6c02 $af
    ld   B, A                                          ;; 03:6c03 $47
    call call_00_0162                                  ;; 03:6c04 $cd $62 $01
    pop  DE                                            ;; 03:6c07 $d1
    pop  BC                                            ;; 03:6c08 $c1
    inc  D                                             ;; 03:6c09 $14
    push BC                                            ;; 03:6c0a $c5
    push DE                                            ;; 03:6c0b $d5
    call call_00_02e8                                  ;; 03:6c0c $cd $e8 $02
    xor  A, A                                          ;; 03:6c0f $af
    ld   B, A                                          ;; 03:6c10 $47
    call call_00_0162                                  ;; 03:6c11 $cd $62 $01
    pop  DE                                            ;; 03:6c14 $d1
    pop  BC                                            ;; 03:6c15 $c1
    inc  D                                             ;; 03:6c16 $14
    dec  B                                             ;; 03:6c17 $05
    jr   NZ, .jr_03_6bfd                               ;; 03:6c18 $20 $e3
    xor  A, A                                          ;; 03:6c1a $af
    ld   HL, $8900                                     ;; 03:6c1b $21 $00 $89
    ld   BC, $300                                      ;; 03:6c1e $01 $00 $03
    call call_00_0162                                  ;; 03:6c21 $cd $62 $01
    ld   A, [wCD60]                                    ;; 03:6c24 $fa $60 $cd
    ld   C, A                                          ;; 03:6c27 $4f
    ld   A, [wCD61]                                    ;; 03:6c28 $fa $61 $cd
    ld   B, A                                          ;; 03:6c2b $47
    ld   A, [wCD5E]                                    ;; 03:6c2c $fa $5e $cd
    ld   E, A                                          ;; 03:6c2f $5f
    ld   A, [wCD5F]                                    ;; 03:6c30 $fa $5f $cd
    ld   D, A                                          ;; 03:6c33 $57
    xor  A, A                                          ;; 03:6c34 $af
    ld   [wCD70], A                                    ;; 03:6c35 $ea $70 $cd
    call call_03_74ac                                  ;; 03:6c38 $cd $ac $74
.jr_03_6c3b:
    inc  D                                             ;; 03:6c3b $14
    push BC                                            ;; 03:6c3c $c5
    push DE                                            ;; 03:6c3d $d5
    call call_00_02e8                                  ;; 03:6c3e $cd $e8 $02
    ld   A, [wCD70]                                    ;; 03:6c41 $fa $70 $cd
    swap A                                             ;; 03:6c44 $cb $37
    add  A, $90                                        ;; 03:6c46 $c6 $90
    ld   D, A                                          ;; 03:6c48 $57
.jr_03_6c49:
    ld   A, D                                          ;; 03:6c49 $7a
    call call_00_015c                                  ;; 03:6c4a $cd $5c $01
    inc  HL                                            ;; 03:6c4d $23
    inc  D                                             ;; 03:6c4e $14
    dec  C                                             ;; 03:6c4f $0d
    jr   NZ, .jr_03_6c49                               ;; 03:6c50 $20 $f7
    xor  A, A                                          ;; 03:6c52 $af
    call call_00_015c                                  ;; 03:6c53 $cd $5c $01
    pop  DE                                            ;; 03:6c56 $d1
    pop  BC                                            ;; 03:6c57 $c1
    ld   HL, wCD70                                     ;; 03:6c58 $21 $70 $cd
    inc  [HL]                                          ;; 03:6c5b $34
    inc  D                                             ;; 03:6c5c $14
    dec  B                                             ;; 03:6c5d $05
    jr   NZ, .jr_03_6c3b                               ;; 03:6c5e $20 $db
    ld   HL, data_03_70fc                              ;; 03:6c60 $21 $fc $70
    ld   DE, $8830                                     ;; 03:6c63 $11 $30 $88
    ld   BC, $30                                       ;; 03:6c66 $01 $30 $00
    call call_00_015f                                  ;; 03:6c69 $cd $5f $01
    ld   HL, data_03_717c                              ;; 03:6c6c $21 $7c $71
    ld   DE, $88b0                                     ;; 03:6c6f $11 $b0 $88
    ld   BC, $10                                       ;; 03:6c72 $01 $10 $00
    call call_00_015f                                  ;; 03:6c75 $cd $5f $01
    ld   HL, wCD6B                                     ;; 03:6c78 $21 $6b $cd
    ld   BC, $16                                       ;; 03:6c7b $01 $16 $00
    xor  A, A                                          ;; 03:6c7e $af
    call memset_                                       ;; 03:6c7f $cd $8c $01
    xor  A, A                                          ;; 03:6c82 $af
    ld   [wCD5D], A                                    ;; 03:6c83 $ea $5d $cd
    ld   A, $01                                        ;; 03:6c86 $3e $01
    ld   [wCD72], A                                    ;; 03:6c88 $ea $72 $cd
    ld   A, $85                                        ;; 03:6c8b $3e $85
    ld   [wCD68], A                                    ;; 03:6c8d $ea $68 $cd
    ret                                                ;; 03:6c90 $c9
    db   $af, $ea, $db, $d2, $78, $b7, $c8, $ea        ;; 03:6c91 ????????
    db   $5c, $cd, $cd, $59, $70, $cd, $90, $70        ;; 03:6c99 ????????
    db   $3e, $02, $ea, $5e, $cd, $3e, $09, $ea        ;; 03:6ca1 ????????
    db   $5f, $cd, $3e, $68, $ea, $62, $cd, $3e        ;; 03:6ca9 ????????
    db   $10, $ea, $63, $cd, $fa, $db, $d2, $ea        ;; 03:6cb1 ????????
    db   $72, $cd, $3e, $02, $ea, $5d, $cd, $cd        ;; 03:6cb9 ????????
    db   $52, $6d, $cd, $bc, $01, $c9, $06, $79        ;; 03:6cc1 ????????
    db   $c9, $fa, $5c, $cd, $3c, $fe, $5e, $38        ;; 03:6cc9 ????????
    db   $02, $3e, $01, $ea, $5c, $cd, $47, $cd        ;; 03:6cd1 ????????
    db   $dc, $6c, $c9, $af, $ea, $db, $d2, $18        ;; 03:6cd9 ????????
    db   $05, $3e, $01, $ea, $db, $d2, $78, $b7        ;; 03:6ce1 ????????
    db   $c8, $ea, $5c, $cd, $fa, $d9, $c0, $ea        ;; 03:6ce9 ????????
    db   $b7, $df, $3e, $e4, $ea, $d9, $c0, $cd        ;; 03:6cf1 ????????
    db   $59, $70, $cd, $90, $70, $3e, $02, $ea        ;; 03:6cf9 ????????
    db   $5e, $cd, $3e, $09, $ea, $5f, $cd, $3e        ;; 03:6d01 ????????
    db   $68, $ea, $62, $cd, $3e, $10, $ea, $63        ;; 03:6d09 ????????
    db   $cd, $fa, $db, $d2, $ea, $72, $cd, $21        ;; 03:6d11 ????????
    db   $e2, $c2, $af, $5e, $22, $56, $22, $d5        ;; 03:6d19 ????????
    db   $5e, $22, $56, $22, $d5, $cd, $52, $6d        ;; 03:6d21 ????????
    db   $21, $e5, $c2, $d1, $72, $2b, $73, $2b        ;; 03:6d29 ????????
    db   $d1, $72, $2b, $73, $cd, $5c, $72, $cd        ;; 03:6d31 ????????
    db   $6b, $72, $fa, $64, $cd, $e0, $48, $fa        ;; 03:6d39 ????????
    db   $b7, $df, $ea, $d9, $c0, $fa, $4e, $df        ;; 03:6d41 ????????
    db   $fe, $06, $cc, $90, $03, $cd, $bc, $01        ;; 03:6d49 ????????
    db   $c9                                           ;; 03:6d51 ?

call_03_6d52:
    ld   A, $0e                                        ;; 03:6d52 $3e $0e
    ld   [wCD69], A                                    ;; 03:6d54 $ea $69 $cd
    ld   A, $06                                        ;; 03:6d57 $3e $06
    ld   [wCD6A], A                                    ;; 03:6d59 $ea $6a $cd
    ld   A, $01                                        ;; 03:6d5c $3e $01
    ld   [wCD7F], A                                    ;; 03:6d5e $ea $7f $cd
    ld   HL, data_03_4049                              ;; 03:6d61 $21 $49 $40
    ld   A, [wCD5C]                                    ;; 03:6d64 $fa $5c $cd
    cp   A, $5e                                        ;; 03:6d67 $fe $5e
    jr   C, .jr_03_6d70                                ;; 03:6d69 $38 $05
    sub  A, $5e                                        ;; 03:6d6b $d6 $5e
    ld   HL, $61fd ;@=value hex=true                   ;; 03:6d6d $21 $fd $61
.jr_03_6d70:
    call call_00_018f                                  ;; 03:6d70 $cd $8f $01
    call call_03_6d89                                  ;; 03:6d73 $cd $89 $6d
    call call_03_6ddf                                  ;; 03:6d76 $cd $df $6d
    jr   NZ, .jr_03_6d85                               ;; 03:6d79 $20 $0a
    ld   A, [wCD7E]                                    ;; 03:6d7b $fa $7e $cd
    and  A, $05                                        ;; 03:6d7e $e6 $05
    jr   NZ, .jr_03_6d85                               ;; 03:6d80 $20 $03
    call call_03_6e36                                  ;; 03:6d82 $cd $36 $6e
.jr_03_6d85:
    call call_03_73d8                                  ;; 03:6d85 $cd $d8 $73
    ret                                                ;; 03:6d88 $c9

call_03_6d89:
    ld   A, L                                          ;; 03:6d89 $7d
    ld   [wCD6B], A                                    ;; 03:6d8a $ea $6b $cd
    ld   A, H                                          ;; 03:6d8d $7c
    ld   [wCD6C], A                                    ;; 03:6d8e $ea $6c $cd
.jr_03_6d91:
    call call_03_6dfc                                  ;; 03:6d91 $cd $fc $6d
    or   A, A                                          ;; 03:6d94 $b7
    ret  Z                                             ;; 03:6d95 $c8
    cp   A, $f3                                        ;; 03:6d96 $fe $f3
    jr   C, .jr_03_6da4                                ;; 03:6d98 $38 $0a
    call call_03_6e10                                  ;; 03:6d9a $cd $10 $6e
    ld   HL, wCD7E                                     ;; 03:6d9d $21 $7e $cd
    set  0, [HL]                                       ;; 03:6da0 $cb $c6
    jr   .jr_03_6dd9                                   ;; 03:6da2 $18 $35
.jr_03_6da4:
    ld   [wCD74], A                                    ;; 03:6da4 $ea $74 $cd
    ld   HL, wCD7F                                     ;; 03:6da7 $21 $7f $cd
    bit  0, [HL]                                       ;; 03:6daa $cb $46
    jr   Z, .jr_03_6db6                                ;; 03:6dac $28 $08
    inc  HL                                            ;; 03:6dae $23
    inc  [HL]                                          ;; 03:6daf $34
    bit  0, [HL]                                       ;; 03:6db0 $cb $46
    jr   Z, .jr_03_6db6                                ;; 03:6db2 $28 $02
    rst  rst_00_0008                                   ;; 03:6db4 $cf
    dec  D                                             ;; 03:6db5 $15
.jr_03_6db6:
    ld   HL, wCD7E                                     ;; 03:6db6 $21 $7e $cd
    res  0, [HL]                                       ;; 03:6db9 $cb $86
    res  2, [HL]                                       ;; 03:6dbb $cb $96
    res  3, [HL]                                       ;; 03:6dbd $cb $9e
    ld   A, [wCD74]                                    ;; 03:6dbf $fa $74 $cd
    call call_03_6845                                  ;; 03:6dc2 $cd $45 $68
    call call_03_6ffa                                  ;; 03:6dc5 $cd $fa $6f
    call call_03_6f8e                                  ;; 03:6dc8 $cd $8e $6f
    ld   A, [wDF9F]                                    ;; 03:6dcb $fa $9f $df
    or   A, A                                          ;; 03:6dce $b7
    jr   NZ, .jr_03_6dd9                               ;; 03:6dcf $20 $08
    ld   A, [wCD5D]                                    ;; 03:6dd1 $fa $5d $cd
    ld   B, A                                          ;; 03:6dd4 $47
    or   A, A                                          ;; 03:6dd5 $b7
    call NZ, call_00_01bf                              ;; 03:6dd6 $c4 $bf $01
.jr_03_6dd9:
    call call_03_6ddf                                  ;; 03:6dd9 $cd $df $6d
    ret  NZ                                            ;; 03:6ddc $c0
    jr   .jr_03_6d91                                   ;; 03:6ddd $18 $b2

call_03_6ddf:
    ld   A, [wCD72]                                    ;; 03:6ddf $fa $72 $cd
    or   A, A                                          ;; 03:6de2 $b7
    jr   Z, .jr_03_6de7                                ;; 03:6de3 $28 $02
    xor  A, A                                          ;; 03:6de5 $af
    ret                                                ;; 03:6de6 $c9
.jr_03_6de7:
    ld   A, [wCD71]                                    ;; 03:6de7 $fa $71 $cd
    ld   B, A                                          ;; 03:6dea $47
    ld   A, [wC0C0]                                    ;; 03:6deb $fa $c0 $c0
    or   A, B                                          ;; 03:6dee $b0
    bit  1, A                                          ;; 03:6def $cb $4f
    ret                                                ;; 03:6df1 $c9

call_03_6df2:
    ld   A, [wCD6B]                                    ;; 03:6df2 $fa $6b $cd
    ld   L, A                                          ;; 03:6df5 $6f
    ld   A, [wCD6C]                                    ;; 03:6df6 $fa $6c $cd
    ld   H, A                                          ;; 03:6df9 $67
    ld   A, [HL]                                       ;; 03:6dfa $7e
    ret                                                ;; 03:6dfb $c9

call_03_6dfc:
    ld   A, [wCD6B]                                    ;; 03:6dfc $fa $6b $cd
    ld   L, A                                          ;; 03:6dff $6f
    ld   A, [wCD6C]                                    ;; 03:6e00 $fa $6c $cd
    ld   H, A                                          ;; 03:6e03 $67
    ld   B, [HL]                                       ;; 03:6e04 $46
    inc  HL                                            ;; 03:6e05 $23
    ld   A, L                                          ;; 03:6e06 $7d
    ld   [wCD6B], A                                    ;; 03:6e07 $ea $6b $cd
    ld   A, H                                          ;; 03:6e0a $7c
    ld   [wCD6C], A                                    ;; 03:6e0b $ea $6c $cd
    ld   A, B                                          ;; 03:6e0e $78
    ret                                                ;; 03:6e0f $c9

call_03_6e10:
    cpl                                                ;; 03:6e10 $2f
    add  A, A                                          ;; 03:6e11 $87
    ld   E, A                                          ;; 03:6e12 $5f
    ld   D, $00                                        ;; 03:6e13 $16 $00
    ld   HL, .data_03_6e1d                             ;; 03:6e15 $21 $1d $6e
    add  HL, DE                                        ;; 03:6e18 $19
    ld   A, [HL+]                                      ;; 03:6e19 $2a
    ld   H, [HL]                                       ;; 03:6e1a $66
    ld   L, A                                          ;; 03:6e1b $6f
    jp   HL                                            ;; 03:6e1c $e9
.data_03_6e1d:
    db   $36, $6e                                      ;; 03:6e1d ??
    dw   data_03_6ead                                  ;; 03:6e1f pP
    db   $d0, $6e, $c4, $6e                            ;; 03:6e21 ????
    dw   data_03_6f2c                                  ;; 03:6e25 pP
    db   $66, $6f                                      ;; 03:6e27 ??
    dw   data_03_6f3f                                  ;; 03:6e29 pP
    db   $85, $6f, $35, $6e                            ;; 03:6e2b ????

call_03_6e2f:
    call call_03_6ff0                                  ;; 03:6e2f $cd $f0 $6f
    jp   jp_00_0366                                    ;; 03:6e32 $c3 $66 $03
    db   $c9                                           ;; 03:6e35 ?

call_03_6e36:
    ld   A, [wCD76]                                    ;; 03:6e36 $fa $76 $cd
    cp   A, $03                                        ;; 03:6e39 $fe $03
    call NZ, call_03_6e2f                              ;; 03:6e3b $c4 $2f $6e
    xor  A, A                                          ;; 03:6e3e $af
    ld   [wCD6D], A                                    ;; 03:6e3f $ea $6d $cd
    ld   [wCD6E], A                                    ;; 03:6e42 $ea $6e $cd
    ld   HL, wCD7E                                     ;; 03:6e45 $21 $7e $cd
    bit  3, [HL]                                       ;; 03:6e48 $cb $5e
    ret  NZ                                            ;; 03:6e4a $c0
    set  3, [HL]                                       ;; 03:6e4b $cb $de
    ld   A, [wDFA3]                                    ;; 03:6e4d $fa $a3 $df
    or   A, A                                          ;; 03:6e50 $b7
    ld   B, $5a                                        ;; 03:6e51 $06 $5a
    jr   NZ, .jr_03_6e5d                               ;; 03:6e53 $20 $08
    ld   A, [wDF98]                                    ;; 03:6e55 $fa $98 $df
    or   A, A                                          ;; 03:6e58 $b7
    jr   Z, .jr_03_6e66                                ;; 03:6e59 $28 $0b
    ld   B, $1e                                        ;; 03:6e5b $06 $1e
.jr_03_6e5d:
    call call_00_01bf                                  ;; 03:6e5d $cd $bf $01
    ld   A, $01                                        ;; 03:6e60 $3e $01
    ld   [wCD71], A                                    ;; 03:6e62 $ea $71 $cd
    ret                                                ;; 03:6e65 $c9
.jr_03_6e66:
    call call_03_6e7c                                  ;; 03:6e66 $cd $7c $6e
    call call_00_01b9                                  ;; 03:6e69 $cd $b9 $01
    call call_00_01bc                                  ;; 03:6e6c $cd $bc $01
    ld   A, [wC0C1]                                    ;; 03:6e6f $fa $c1 $c0
    and  A, $03                                        ;; 03:6e72 $e6 $03
    jr   Z, .jr_03_6e66                                ;; 03:6e74 $28 $f0
    ld   [wCD71], A                                    ;; 03:6e76 $ea $71 $cd
    jp   jp_03_6ea4                                    ;; 03:6e79 $c3 $a4 $6e

call_03_6e7c:
    ld   HL, wCD6D                                     ;; 03:6e7c $21 $6d $cd
    ld   A, [HL]                                       ;; 03:6e7f $7e
    dec  [HL]                                          ;; 03:6e80 $35
    or   A, A                                          ;; 03:6e81 $b7
    ret  NZ                                            ;; 03:6e82 $c0
    inc  HL                                            ;; 03:6e83 $23
    inc  [HL]                                          ;; 03:6e84 $34
    bit  0, [HL]                                       ;; 03:6e85 $cb $46
    jr   Z, jp_03_6ea4                                 ;; 03:6e87 $28 $1b
    ld   HL, wCD6D                                     ;; 03:6e89 $21 $6d $cd
    ld   [HL], $0c                                     ;; 03:6e8c $36 $0c
    ld   A, [wCD68]                                    ;; 03:6e8e $fa $68 $cd
    ld   B, A                                          ;; 03:6e91 $47

jr_03_6e92:
    ld   HL, wCD5E                                     ;; 03:6e92 $21 $5e $cd
    ld   A, [wCD69]                                    ;; 03:6e95 $fa $69 $cd
    add  A, [HL]                                       ;; 03:6e98 $86
    inc  HL                                            ;; 03:6e99 $23
    ld   E, A                                          ;; 03:6e9a $5f
    ld   A, [wCD6A]                                    ;; 03:6e9b $fa $6a $cd
    add  A, [HL]                                       ;; 03:6e9e $86
    ld   D, A                                          ;; 03:6e9f $57
    ld   A, B                                          ;; 03:6ea0 $78
    jp   call_03_6b3a                                  ;; 03:6ea1 $c3 $3a $6b

jp_03_6ea4:
    ld   HL, wCD6D                                     ;; 03:6ea4 $21 $6d $cd
    ld   [HL], $06                                     ;; 03:6ea7 $36 $06
    ld   B, $00                                        ;; 03:6ea9 $06 $00
    jr   jr_03_6e92                                    ;; 03:6eab $18 $e5

data_03_6ead:
    ld   HL, wCD6F                                     ;; 03:6ead $21 $6f $cd
    ld   A, [HL]                                       ;; 03:6eb0 $7e
    or   A, A                                          ;; 03:6eb1 $b7
    ret  Z                                             ;; 03:6eb2 $c8

jp_03_6eb3:
    ld   HL, wCD6F                                     ;; 03:6eb3 $21 $6f $cd
    ld   [HL], $00                                     ;; 03:6eb6 $36 $00
    inc  HL                                            ;; 03:6eb8 $23
    inc  [HL]                                          ;; 03:6eb9 $34
    ld   A, [wCD61]                                    ;; 03:6eba $fa $61 $cd
    ld   B, A                                          ;; 03:6ebd $47
    ld   A, [HL]                                       ;; 03:6ebe $7e
    cp   A, B                                          ;; 03:6ebf $b8
    ret  C                                             ;; 03:6ec0 $d8
    jp   .jp_03_6ed0                                   ;; 03:6ec1 $c3 $d0 $6e
    db   $cd, $fc, $6d, $c5, $cd, $fa, $6f, $c1        ;; 03:6ec4 ????????
    db   $05, $20, $f8, $c9                            ;; 03:6ecc ????
.jp_03_6ed0:
    call call_03_6e36                                  ;; 03:6ed0 $cd $36 $6e

call_03_6ed3:
    ld   HL, wCD7E                                     ;; 03:6ed3 $21 $7e $cd
    set  2, [HL]                                       ;; 03:6ed6 $cb $d6
    ld   HL, wCD5E                                     ;; 03:6ed8 $21 $5e $cd
    ld   E, [HL]                                       ;; 03:6edb $5e
    inc  HL                                            ;; 03:6edc $23
    ld   D, [HL]                                       ;; 03:6edd $56
    ld   HL, $8900                                     ;; 03:6ede $21 $00 $89
    call call_03_6ef9                                  ;; 03:6ee1 $cd $f9 $6e
    ld   HL, $8a00                                     ;; 03:6ee4 $21 $00 $8a
    call call_03_6ef9                                  ;; 03:6ee7 $cd $f9 $6e
    ld   HL, $8b00                                     ;; 03:6eea $21 $00 $8b
    call call_03_6ef9                                  ;; 03:6eed $cd $f9 $6e
    xor  A, A                                          ;; 03:6ef0 $af
    ld   [wCD6F], A                                    ;; 03:6ef1 $ea $6f $cd
    ld   [wCD70], A                                    ;; 03:6ef4 $ea $70 $cd
    ret                                                ;; 03:6ef7 $c9

data_03_6ef8:
    db   $00                                           ;; 03:6ef8 .

call_03_6ef9:
    push HL                                            ;; 03:6ef9 $e5
    push DE                                            ;; 03:6efa $d5
    call call_00_02e8                                  ;; 03:6efb $cd $e8 $02
    ld   HL, data_03_71d0                              ;; 03:6efe $21 $d0 $71
    ld   C, $10                                        ;; 03:6f01 $0e $10
    call call_00_0168                                  ;; 03:6f03 $cd $68 $01
    call call_03_7455                                  ;; 03:6f06 $cd $55 $74
    pop  DE                                            ;; 03:6f09 $d1
    push DE                                            ;; 03:6f0a $d5
    ld   A, $10                                        ;; 03:6f0b $3e $10
    add  A, E                                          ;; 03:6f0d $83
    ld   E, A                                          ;; 03:6f0e $5f
    inc  D                                             ;; 03:6f0f $14
    call call_00_02e8                                  ;; 03:6f10 $cd $e8 $02
    ld   HL, data_03_6ef8                              ;; 03:6f13 $21 $f8 $6e
    ld   C, $01                                        ;; 03:6f16 $0e $01
    call call_00_0168                                  ;; 03:6f18 $cd $68 $01
    call call_03_7455                                  ;; 03:6f1b $cd $55 $74
    pop  DE                                            ;; 03:6f1e $d1
    inc  D                                             ;; 03:6f1f $14
    inc  D                                             ;; 03:6f20 $14
    pop  HL                                            ;; 03:6f21 $e1
    push DE                                            ;; 03:6f22 $d5
    ld   BC, $100                                      ;; 03:6f23 $01 $00 $01
    xor  A, A                                          ;; 03:6f26 $af
    call call_00_0162                                  ;; 03:6f27 $cd $62 $01
    pop  DE                                            ;; 03:6f2a $d1
    ret                                                ;; 03:6f2b $c9

data_03_6f2c:
    call call_03_6e2f                                  ;; 03:6f2c $cd $2f $6e
    call call_03_6dfc                                  ;; 03:6f2f $cd $fc $6d
    or   A, A                                          ;; 03:6f32 $b7
    ret  Z                                             ;; 03:6f33 $c8
    dec  A                                             ;; 03:6f34 $3d
    ret  Z                                             ;; 03:6f35 $c8
    ld   B, A                                          ;; 03:6f36 $47
    ld   A, [wDF9F]                                    ;; 03:6f37 $fa $9f $df
    or   A, A                                          ;; 03:6f3a $b7
    ret  NZ                                            ;; 03:6f3b $c0
    jp   call_00_01bf                                  ;; 03:6f3c $c3 $bf $01

data_03_6f3f:
    call call_03_6f74                                  ;; 03:6f3f $cd $74 $6f
    call call_03_6ed3                                  ;; 03:6f42 $cd $d3 $6e
    ld   A, $01                                        ;; 03:6f45 $3e $01
    ld   [wCD6F], A                                    ;; 03:6f47 $ea $6f $cd
    rst  rst_00_0008                                   ;; 03:6f4a $cf
    ld   A, [DE]                                       ;; 03:6f4b $1a
    call call_00_01b6                                  ;; 03:6f4c $cd $b6 $01
    ld   B, $00                                        ;; 03:6f4f $06 $00
    call call_00_0360                                  ;; 03:6f51 $cd $60 $03
    ld   B, $03                                        ;; 03:6f54 $06 $03
    call call_00_01bf                                  ;; 03:6f56 $cd $bf $01
    ld   B, $01                                        ;; 03:6f59 $06 $01
    call call_00_0360                                  ;; 03:6f5b $cd $60 $03
    ld   B, $03                                        ;; 03:6f5e $06 $03
    call call_00_01bf                                  ;; 03:6f60 $cd $bf $01
    jp   jp_00_0369                                    ;; 03:6f63 $c3 $69 $03
    db   $cd, $74, $6f, $cd, $d3, $6e, $3e, $01        ;; 03:6f66 ????????
    db   $ea, $6f, $cd, $c3, $69, $03                  ;; 03:6f6e ??????

call_03_6f74:
    ld   HL, wCD7E                                     ;; 03:6f74 $21 $7e $cd
    bit  1, [HL]                                       ;; 03:6f77 $cb $4e
    set  1, [HL]                                       ;; 03:6f79 $cb $ce
    call NZ, call_03_6e36                              ;; 03:6f7b $c4 $36 $6e
    call call_03_6dfc                                  ;; 03:6f7e $cd $fc $6d
    ld   B, A                                          ;; 03:6f81 $47
    jp   jp_00_036c                                    ;; 03:6f82 $c3 $6c $03
    db   $cd, $fc, $6d, $e6, $03, $ea, $76, $cd        ;; 03:6f85 ????????
    db   $c9                                           ;; 03:6f8d ?

call_03_6f8e:
    ld   HL, wCD78                                     ;; 03:6f8e $21 $78 $cd
    ld   A, [wCD76]                                    ;; 03:6f91 $fa $76 $cd
    or   A, A                                          ;; 03:6f94 $b7
    ret  Z                                             ;; 03:6f95 $c8
    dec  A                                             ;; 03:6f96 $3d
    jr   Z, .jr_03_6f9e                                ;; 03:6f97 $28 $05
    dec  A                                             ;; 03:6f99 $3d
    jr   Z, .jr_03_6fe0                                ;; 03:6f9a $28 $44
    jr   .jr_03_6fdc                                   ;; 03:6f9c $18 $3e
.jr_03_6f9e:
    ld   A, [wCD74]                                    ;; 03:6f9e $fa $74 $cd
    cp   A, $02                                        ;; 03:6fa1 $fe $02
    jr   C, .jr_03_6fe4                                ;; 03:6fa3 $38 $3f
    cp   A, $26                                        ;; 03:6fa5 $fe $26
    jr   C, .jr_03_6fc1                                ;; 03:6fa7 $38 $18
    cp   A, $28                                        ;; 03:6fa9 $fe $28
    jr   C, .jr_03_6fe0                                ;; 03:6fab $38 $33
    cp   A, $2c                                        ;; 03:6fad $fe $2c
    jr   C, .jr_03_6fdc                                ;; 03:6faf $38 $2b
    cp   A, $40                                        ;; 03:6fb1 $fe $40
    jr   C, .jr_03_6fe4                                ;; 03:6fb3 $38 $2f
    cp   A, $77                                        ;; 03:6fb5 $fe $77
    jr   C, .jr_03_6fc1                                ;; 03:6fb7 $38 $08
    cp   A, $80                                        ;; 03:6fb9 $fe $80
    jr   C, .jr_03_6fe0                                ;; 03:6fbb $38 $23
    cp   A, $f2                                        ;; 03:6fbd $fe $f2
    jr   NC, .jr_03_6fe0                               ;; 03:6fbf $30 $1f
.jr_03_6fc1:
    ld   A, [wCD77]                                    ;; 03:6fc1 $fa $77 $cd
    inc  A                                             ;; 03:6fc4 $3c
    ld   [wCD77], A                                    ;; 03:6fc5 $ea $77 $cd
    cp   A, $03                                        ;; 03:6fc8 $fe $03
    jr   C, .jr_03_6fed                                ;; 03:6fca $38 $21
    xor  A, A                                          ;; 03:6fcc $af
    ld   [wCD77], A                                    ;; 03:6fcd $ea $77 $cd
    bit  0, [HL]                                       ;; 03:6fd0 $cb $46
    jr   NZ, .jr_03_6fd8                               ;; 03:6fd2 $20 $04
    ld   [HL], $01                                     ;; 03:6fd4 $36 $01
    jr   .jr_03_6fed                                   ;; 03:6fd6 $18 $15
.jr_03_6fd8:
    ld   [HL], $00                                     ;; 03:6fd8 $36 $00
    jr   .jr_03_6fed                                   ;; 03:6fda $18 $11
.jr_03_6fdc:
    ld   [HL], $01                                     ;; 03:6fdc $36 $01
    jr   .jr_03_6fe6                                   ;; 03:6fde $18 $06
.jr_03_6fe0:
    ld   [HL], $00                                     ;; 03:6fe0 $36 $00
    jr   .jr_03_6fe6                                   ;; 03:6fe2 $18 $02
.jr_03_6fe4:
    ld   [HL], $00                                     ;; 03:6fe4 $36 $00
.jr_03_6fe6:
    ld   A, $64                                        ;; 03:6fe6 $3e $64
    ld   [wCD77], A                                    ;; 03:6fe8 $ea $77 $cd
    jr   .jr_03_6fed                                   ;; 03:6feb $18 $00
.jr_03_6fed:
    jp   jp_00_0366                                    ;; 03:6fed $c3 $66 $03

call_03_6ff0:
    xor  A, A                                          ;; 03:6ff0 $af
    ld   [wCD78], A                                    ;; 03:6ff1 $ea $78 $cd
    ld   A, $64                                        ;; 03:6ff4 $3e $64
    ld   [wCD77], A                                    ;; 03:6ff6 $ea $77 $cd
    ret                                                ;; 03:6ff9 $c9

call_03_6ffa:
    call call_03_6df2                                  ;; 03:6ffa $cd $f2 $6d
    or   A, A                                          ;; 03:6ffd $b7
    ret  Z                                             ;; 03:6ffe $c8
    ld   A, [wCD60]                                    ;; 03:6fff $fa $60 $cd
    ld   B, A                                          ;; 03:7002 $47
    ld   HL, wCD6F                                     ;; 03:7003 $21 $6f $cd
    inc  [HL]                                          ;; 03:7006 $34
    ld   A, [HL]                                       ;; 03:7007 $7e
    cp   A, B                                          ;; 03:7008 $b8
    ret  C                                             ;; 03:7009 $d8
    call call_03_6df2                                  ;; 03:700a $cd $f2 $6d
    cp   A, $f7                                        ;; 03:700d $fe $f7
    jr   Z, .jr_03_7014                                ;; 03:700f $28 $03
.jr_03_7011:
    jp   jp_03_6eb3                                    ;; 03:7011 $c3 $b3 $6e
.jr_03_7014:
    call call_03_6dfc                                  ;; 03:7014 $cd $fc $6d
    ld   HL, wCD5E                                     ;; 03:7017 $21 $5e $cd
    ld   A, [wCD60]                                    ;; 03:701a $fa $60 $cd
    add  A, [HL]                                       ;; 03:701d $86
    ld   E, A                                          ;; 03:701e $5f
    inc  HL                                            ;; 03:701f $23
    ld   A, [wCD70]                                    ;; 03:7020 $fa $70 $cd
    add  A, A                                          ;; 03:7023 $87
    add  A, [HL]                                       ;; 03:7024 $86
    inc  A                                             ;; 03:7025 $3c
    ld   D, A                                          ;; 03:7026 $57
    ld   A, $8b                                        ;; 03:7027 $3e $8b
    call call_03_6b3a                                  ;; 03:7029 $cd $3a $6b
    call call_03_6df2                                  ;; 03:702c $cd $f2 $6d
    or   A, A                                          ;; 03:702f $b7
    ret  Z                                             ;; 03:7030 $c8
    jr   .jr_03_7011                                   ;; 03:7031 $18 $de

jp_03_7033:
    ld   A, E                                          ;; 03:7033 $7b
    ld   [wCD69], A                                    ;; 03:7034 $ea $69 $cd
    ld   A, D                                          ;; 03:7037 $7a
    ld   [wCD6A], A                                    ;; 03:7038 $ea $6a $cd
    xor  A, A                                          ;; 03:703b $af
    ld   [wCD6D], A                                    ;; 03:703c $ea $6d $cd
    ld   [wCD6E], A                                    ;; 03:703f $ea $6e $cd
.jr_03_7042:
    push BC                                            ;; 03:7042 $c5
    call call_03_6e7c                                  ;; 03:7043 $cd $7c $6e
    call call_00_01b9                                  ;; 03:7046 $cd $b9 $01
    call call_00_01bc                                  ;; 03:7049 $cd $bc $01
    pop  BC                                            ;; 03:704c $c1
    ld   A, [wC0C1]                                    ;; 03:704d $fa $c1 $c0
    and  A, B                                          ;; 03:7050 $a0
    jr   Z, .jr_03_7042                                ;; 03:7051 $28 $ef
    ld   [wCD71], A                                    ;; 03:7053 $ea $71 $cd
    jp   jp_03_6ea4                                    ;; 03:7056 $c3 $a4 $6e

call_03_7059:
    call call_00_01b3                                  ;; 03:7059 $cd $b3 $01
    call call_00_01b9                                  ;; 03:705c $cd $b9 $01
    ldh  A, [rOBP0]                                    ;; 03:705f $f0 $48
    ld   [wCD64], A                                    ;; 03:7061 $ea $64 $cd
    ld   A, $c4                                        ;; 03:7064 $3e $c4
    ldh  [rOBP0], A                                    ;; 03:7066 $e0 $48
    ld   HL, wCD6B                                     ;; 03:7068 $21 $6b $cd
    ld   BC, $16                                       ;; 03:706b $01 $16 $00
    xor  A, A                                          ;; 03:706e $af
    call memset_                                       ;; 03:706f $cd $8c $01
    ld   DE, $8010                                     ;; 03:7072 $11 $10 $80
    call call_00_035d                                  ;; 03:7075 $cd $5d $03
    call call_03_70bc                                  ;; 03:7078 $cd $bc $70
    ld   A, $85                                        ;; 03:707b $3e $85
    ld   [wCD68], A                                    ;; 03:707d $ea $68 $cd
    ld   A, $10                                        ;; 03:7080 $3e $10
    ld   [wCD60], A                                    ;; 03:7082 $ea $60 $cd
    ld   A, $03                                        ;; 03:7085 $3e $03
    ld   [wCD61], A                                    ;; 03:7087 $ea $61 $cd
    ld   A, $02                                        ;; 03:708a $3e $02
    ld   [wCD5D], A                                    ;; 03:708c $ea $5d $cd
    ret                                                ;; 03:708f $c9
    db   $fa, $5b, $c1, $ea, $58, $cd, $6f, $fa        ;; 03:7090 ????????
    db   $5c, $c1, $ea, $59, $cd, $67, $11, $04        ;; 03:7098 ????????
    db   $00, $19, $7d, $e6, $f8, $ea, $5b, $c1        ;; 03:70a0 ????????
    db   $ea, $51, $c1, $7c, $ea, $5c, $c1, $c3        ;; 03:70a8 ????????
    db   $8c, $71                                      ;; 03:70b0 ??

call_03_70b2:
    ld   HL, $8900                                     ;; 03:70b2 $21 $00 $89
    ld   BC, $300                                      ;; 03:70b5 $01 $00 $03
    xor  A, A                                          ;; 03:70b8 $af
    jp   call_00_0162                                  ;; 03:70b9 $c3 $62 $01

call_03_70bc:
    ld   HL, .data_03_70cc                             ;; 03:70bc $21 $cc $70
    ld   DE, $8800                                     ;; 03:70bf $11 $00 $88
    ld   BC, $c0                                       ;; 03:70c2 $01 $c0 $00
    call call_00_015f                                  ;; 03:70c5 $cd $5f $01
    call call_03_70b2                                  ;; 03:70c8 $cd $b2 $70
    ret                                                ;; 03:70cb $c9
.data_03_70cc:
    dw   `11111113                                     ;; 03:70cc $ff $01

    db   $83, $01, $bf, $3d                            ;; 03:70ce ....
    dw   `10311113                                     ;; 03:70d2 $bf $21
    dw   `10310113                                     ;; 03:70d4 $b7 $21
    dw   `10311113                                     ;; 03:70d6 $bf $21
    dw   `11111113                                     ;; 03:70d8 $ff $01
    dw   `33333333                                     ;; 03:70da $ff $ff
    dw   `33333333                                     ;; 03:70dc $ff $ff
    dw   `33333333                                     ;; 03:70de $ff $ff
    dw   `11111111                                     ;; 03:70e0 $ff $00

    dw   `00000000                                     ;; 03:70e2 $00 $00
    dw   `11111111                                     ;; 03:70e4 $ff $00
    dw   `11111111                                     ;; 03:70e6 $ff $00
    dw   `33333333                                     ;; 03:70e8 $ff $ff
    dw   `33333333                                     ;; 03:70ea $ff $ff
    dw   `33101133                                     ;; 03:70ec $ef $c3
    dw   `33101133                                     ;; 03:70ee $ef $c3
    dw   `33101133                                     ;; 03:70f0 $ef $c3

    dw   `33101133                                     ;; 03:70f2 $ef $c3
    dw   `33101133                                     ;; 03:70f4 $ef $c3
    dw   `33101133                                     ;; 03:70f6 $ef $c3
    dw   `33101133                                     ;; 03:70f8 $ef $c3
    dw   `33101133                                     ;; 03:70fa $ef $c3

data_03_70fc:
    dw   `00000000                                     ;; 03:70fc $00 $00
    dw   `00000000                                     ;; 03:70fe $00 $00
    dw   `00000000                                     ;; 03:7100 $00 $00

    dw   `00000000                                     ;; 03:7102 $00 $00
    dw   `00000000                                     ;; 03:7104 $00 $00
    dw   `00000303                                     ;; 03:7106 $05 $05
    dw   `00000303                                     ;; 03:7108 $05 $05
    dw   `00000303                                     ;; 03:710a $05 $05
    dw   `00000000                                     ;; 03:710c $00 $00
    dw   `00000000                                     ;; 03:710e $00 $00
    dw   `00000000                                     ;; 03:7110 $00 $00

    dw   `00000000                                     ;; 03:7112 $00 $00
    dw   `00000000                                     ;; 03:7114 $00 $00
    dw   `00000030                                     ;; 03:7116 $02 $02
    dw   `00000303                                     ;; 03:7118 $05 $05
    dw   `00000030                                     ;; 03:711a $02 $02
    dw   `00000000                                     ;; 03:711c $00 $00
    dw   `00000000                                     ;; 03:711e $00 $00
    dw   `00000000                                     ;; 03:7120 $00 $00

    dw   `03333333                                     ;; 03:7122 $7f $7f
    dw   `00333330                                     ;; 03:7124 $3e $3e
    dw   `00033300                                     ;; 03:7126 $1c $1c
    dw   `00003000                                     ;; 03:7128 $08 $08
    dw   `00000000                                     ;; 03:712a $00 $00
    dw   `10010000                                     ;; 03:712c $90 $00
    dw   `03000302                                     ;; 03:712e $44 $45
    dw   `00010010                                     ;; 03:7130 $12 $00

    dw   `20110101                                     ;; 03:7132 $35 $80
    dw   `11003000                                     ;; 03:7134 $c8 $08
    dw   `01000200                                     ;; 03:7136 $40 $04
    dw   `10101010                                     ;; 03:7138 $aa $00
    dw   `11000000                                     ;; 03:713a $c0 $00
    dw   `10100011                                     ;; 03:713c $a3 $00
    dw   `00010010                                     ;; 03:713e $12 $00
    dw   `01021030                                     ;; 03:7140 $4a $12

    dw   `00111000                                     ;; 03:7142 $38 $00
    dw   `01000001                                     ;; 03:7144 $41 $00
    dw   `00010310                                     ;; 03:7146 $16 $04
    dw   `02100000                                     ;; 03:7148 $20 $40
    dw   `00000120                                     ;; 03:714a $04 $02
    dw   `33333330                                     ;; 03:714c $fe $fe
    dw   `33333330                                     ;; 03:714e $fe $fe
    dw   `33333030                                     ;; 03:7150 $fa $fa

    dw   `33333300                                     ;; 03:7152 $fc $fc
    dw   `00000000                                     ;; 03:7154 $00 $00
    dw   `33333300                                     ;; 03:7156 $fc $fc
    dw   `33333030                                     ;; 03:7158 $fa $fa
    dw   `33330330                                     ;; 03:715a $f6 $f6
    dw   `33333333                                     ;; 03:715c $ff $ff
    dw   `33033333                                     ;; 03:715e $df $df
    dw   `30333333                                     ;; 03:7160 $bf $bf

    dw   `03333333                                     ;; 03:7162 $7f $7f
    dw   `00000003                                     ;; 03:7164 $01 $01
    dw   `03333333                                     ;; 03:7166 $7f $7f
    dw   `30333333                                     ;; 03:7168 $bf $bf
    dw   `33333333                                     ;; 03:716a $ff $ff
    dw   `33333333                                     ;; 03:716c $ff $ff
    dw   `33333333                                     ;; 03:716e $ff $ff
    dw   `33333333                                     ;; 03:7170 $ff $ff

    dw   `00000000                                     ;; 03:7172 $00 $00
    dw   `00000000                                     ;; 03:7174 $00 $00
    dw   `00000000                                     ;; 03:7176 $00 $00
    dw   `33333333                                     ;; 03:7178 $ff $ff
    dw   `33333333                                     ;; 03:717a $ff $ff

data_03_717c:
    dw   `00000000                                     ;; 03:717c $00 $00
    dw   `00000000                                     ;; 03:717e $00 $00
    dw   `00000000                                     ;; 03:7180 $00 $00

    dw   `00000000                                     ;; 03:7182 $00 $00
    dw   `00000000                                     ;; 03:7184 $00 $00
    dw   `00000000                                     ;; 03:7186 $00 $00
    dw   `00033000                                     ;; 03:7188 $18 $18
    dw   `00033000                                     ;; 03:718a $18 $18

    db   $cd, $1e, $72, $1e, $00, $16, $08, $21        ;; 03:718c ????????
    db   $a8, $71, $06, $09, $e5, $2a, $66, $6f        ;; 03:7194 ????????
    db   $c5, $cd, $3b, $72, $c1, $e1, $23, $23        ;; 03:719c ????????
    db   $05, $20, $f1, $c9, $ba, $71, $ce, $71        ;; 03:71a4 ????????
    db   $e2, $71, $ce, $71, $f6, $71, $ce, $71        ;; 03:71ac ????????
    db   $0a, $72, $ce, $71, $ba, $71, $80, $81        ;; 03:71b4 ????????
    db   $81, $81, $81, $81, $81, $81, $81, $81        ;; 03:71bc ????????
    db   $81, $81, $81, $81, $81, $81, $81, $81        ;; 03:71c4 ????????
    db   $81, $80, $82, $00                            ;; 03:71cc ????

data_03_71d0:
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:71d0 ........
    db   $00, $00, $00, $00, $00, $00, $00, $00        ;; 03:71d8 ........
    db   $00, $82, $82, $00, $90, $91, $92, $93        ;; 03:71e0 ????????
    db   $94, $95, $96, $97, $98, $99, $9a, $9b        ;; 03:71e8 ????????
    db   $9c, $9d, $9e, $9f, $00, $82, $82, $00        ;; 03:71f0 ????????
    db   $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7        ;; 03:71f8 ????????
    db   $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af        ;; 03:7200 ????????
    db   $00, $82, $82, $00, $b0, $b1, $b2, $b3        ;; 03:7208 ????????
    db   $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb        ;; 03:7210 ????????
    db   $bc, $bd, $be, $bf, $00, $82, $1e, $0c        ;; 03:7218 ????????
    db   $16, $01, $21, $50, $72, $cd, $3f, $72        ;; 03:7220 ????????
    db   $06, $05, $c5, $21, $56, $72, $cd, $3f        ;; 03:7228 ????????
    db   $72, $c1, $05, $20, $f5, $21, $50, $72        ;; 03:7230 ????????
    db   $c3, $3f, $72, $0e, $14, $18, $02, $0e        ;; 03:7238 ????????
    db   $06, $d5, $e5, $cd, $e8, $02, $e1, $cd        ;; 03:7240 ????????
    db   $65, $01, $cd, $b9, $01, $d1, $14, $c9        ;; 03:7248 ????????
    db   $80, $81, $81, $81, $81, $80, $82, $03        ;; 03:7250 ????????
    db   $03, $03, $03, $82, $cd, $63, $03, $cd        ;; 03:7258 ????????
    db   $b3, $01, $cd, $b9, $01, $fa, $64, $cd        ;; 03:7260 ????????
    db   $e0, $48, $c9, $cd, $87, $72, $cd, $bb        ;; 03:7268 ????????
    db   $02, $cd, $54, $03, $cd, $ca, $02, $fa        ;; 03:7270 ????????
    db   $58, $cd, $ea, $5b, $c1, $ea, $51, $c1        ;; 03:7278 ????????
    db   $fa, $59, $cd, $ea, $5c, $c1, $c9, $fa        ;; 03:7280 ????????
    db   $5b, $c1, $c6, $f8, $ea, $3b, $c1, $fa        ;; 03:7288 ????????
    db   $5c, $c1, $ce, $ff, $ea, $3c, $c1, $fa        ;; 03:7290 ????????
    db   $5d, $c1, $ea, $3d, $c1, $fa, $5e, $c1        ;; 03:7298 ????????
    db   $ea, $3e, $c1, $06, $12, $c5, $cd, $c7        ;; 03:72a0 ????????
    db   $02, $cd, $b9, $01, $21, $3d, $c1, $3e        ;; 03:72a8 ????????
    db   $08, $86, $22, $3e, $00, $8e, $77, $c1        ;; 03:72b0 ????????
    db   $05, $20, $ea, $c9                            ;; 03:72b8 ????

data_03_72bc:
    db   $03, $01, $0d, $01, $42, $01, $34, $0b        ;; 03:72bc .?.?.?.?
    db   $07, $08, $3b, $08, $5d, $08, $0f, $08        ;; 03:72c4 .?.?.?.?
    db   $10, $01, $12, $08, $19, $08, $1d, $08        ;; 03:72cc .?.?.?.?
    db   $22, $08, $2a, $01, $2b, $08, $51, $07        ;; 03:72d4 .?.?.?.?
    db   $51, $02, $47, $07, $17, $01, $37, $01        ;; 03:72dc .?.?.?.?
    db   $1b, $01, $43, $01, $48, $08, $49, $0d        ;; 03:72e4 .?.?.?.?
    db   $4a, $02, $56, $01, $3d, $01, $44, $01        ;; 03:72ec .?.?.?.?
    db   $1f, $01, $28, $03, $05, $02, $20, $02        ;; 03:72f4 .?.?.?.?
    db   $ff                                           ;; 03:72fc .

data_03_72fd:
    db   $00, $01, $01, $01, $11, $02, $12, $02        ;; 03:72fd .w.?.?.?
    db   $19, $03, $1a, $03, $58, $04, $67, $04        ;; 03:7305 .?.?.?.?
    db   $68, $04, $6a, $04, $6b, $04, $6c, $04        ;; 03:730d .?.?.?.?
    db   $6d, $04, $a0, $05, $a1, $05, $a2, $05        ;; 03:7315 .?.?.?.?
    db   $a3, $05, $a4, $05, $a7, $05, $a9, $06        ;; 03:731d .?.?.?.?
    db   $aa, $06, $ab, $06, $ac, $06, $ad, $06        ;; 03:7325 .?.?.?.?
    db   $ae, $06, $af, $06, $b0, $06, $b1, $06        ;; 03:732d .?.?.?.?
    db   $a9, $09, $aa, $09, $ab, $09, $ac, $09        ;; 03:7335 .?.?.?.?
    db   $ad, $09, $ae, $09, $af, $09, $b0, $09        ;; 03:733d .?.?.?.?
    db   $b1, $09, $a9, $0a, $aa, $0a, $ab, $0a        ;; 03:7345 .?.?.?.?
    db   $ac, $0a, $ad, $0a, $ae, $0a, $af, $0a        ;; 03:734d .?.?.?.?
    db   $b0, $0a, $b1, $0a, $b7, $07, $b8, $07        ;; 03:7355 .?.?.?.?
    db   $22, $08, $23, $08, $24, $08, $cd, $0b        ;; 03:735d .w.?.?.?
    db   $ce, $0b, $cf, $0b, $d0, $0b, $c2, $0c        ;; 03:7365 .?.?.?.?
    db   $c3, $0c, $c4, $0c, $77, $0d, $78, $0d        ;; 03:736d .?.?.?.?
    db   $79, $0d, $52, $0e, $53, $0e, $54, $0e        ;; 03:7375 .?.?.?.?
    db   $03, $0f, $04, $0f, $05, $0f                  ;; 03:737d .?.?.?

data_03_7383:
    db   $15, $10, $16, $10, $ff, $01, $02, $02        ;; 03:7383 .?.?..??
    db   $24, $06, $01, $27, $02, $27, $07, $01        ;; 03:738b ????????
    db   $02, $06, $05, $12, $02, $02, $02, $0b        ;; 03:7393 ????????
    db   $05, $01, $02, $0e, $05, $04, $01, $02        ;; 03:739b ????????
    db   $0c, $05, $10, $01, $02, $10, $03, $05        ;; 03:73a3 ????????
    db   $01, $02, $02, $0a, $09, $01, $02, $0c        ;; 03:73ab .???????
    db   $18, $0a, $01, $02, $0c, $31, $0c, $01        ;; 03:73b3 ????????
    db   $02, $07, $06, $03, $01, $0d, $0c, $17        ;; 03:73bb ????????
    db   $07, $01, $02, $03, $0b, $06, $03, $02        ;; 03:73c3 ????????
    db   $03, $26, $05, $02, $02, $0b, $04, $06        ;; 03:73cb ????????
    db   $02, $10, $07, $0b, $05                       ;; 03:73d3 ?????

call_03_73d8:
    ld   A, [wCD5C]                                    ;; 03:73d8 $fa $5c $cd
    cp   A, $ff                                        ;; 03:73db $fe $ff
    ret  Z                                             ;; 03:73dd $c8
    ld   B, A                                          ;; 03:73de $47
    ld   HL, data_03_72bc                              ;; 03:73df $21 $bc $72
.jr_03_73e2:
    ld   A, [HL+]                                      ;; 03:73e2 $2a
    cp   A, $ff                                        ;; 03:73e3 $fe $ff
    jr   Z, .jr_03_73f3                                ;; 03:73e5 $28 $0c
    cp   A, B                                          ;; 03:73e7 $b8
    jr   Z, .jr_03_73ed                                ;; 03:73e8 $28 $03
    inc  HL                                            ;; 03:73ea $23
    jr   .jr_03_73e2                                   ;; 03:73eb $18 $f5
.jr_03_73ed:
    ld   A, [HL+]                                      ;; 03:73ed $2a
    call call_00_02d9                                  ;; 03:73ee $cd $d9 $02
    jr   .jr_03_73e2                                   ;; 03:73f1 $18 $ef
.jr_03_73f3:
    ld   A, [wCD5C]                                    ;; 03:73f3 $fa $5c $cd
    cp   A, $51                                        ;; 03:73f6 $fe $51
    jr   NZ, .jr_03_7404                               ;; 03:73f8 $20 $0a
    ld   A, [wC2AA]                                    ;; 03:73fa $fa $aa $c2
    ld   [wDF4E], A                                    ;; 03:73fd $ea $4e $df
    xor  A, A                                          ;; 03:7400 $af
    ld   [wDF5C], A                                    ;; 03:7401 $ea $5c $df
.jr_03_7404:
    ret                                                ;; 03:7404 $c9

jp_03_7405:
    ld   A, [wGlobalLevelEntryNumber]                  ;; 03:7405 $fa $a2 $df
    ld   B, A                                          ;; 03:7408 $47
    ld   HL, data_03_72fd                              ;; 03:7409 $21 $fd $72
.jr_03_740c:
    ld   A, [HL+]                                      ;; 03:740c $2a
    cp   A, $ff                                        ;; 03:740d $fe $ff
    ret  Z                                             ;; 03:740f $c8
    cp   A, B                                          ;; 03:7410 $b8
    jr   Z, .jr_03_7416                                ;; 03:7411 $28 $03
.jr_03_7413:
    inc  HL                                            ;; 03:7413 $23
    jr   .jr_03_740c                                   ;; 03:7414 $18 $f6
.jr_03_7416:
    ld   E, [HL]                                       ;; 03:7416 $5e
    push HL                                            ;; 03:7417 $e5
    call call_03_7422                                  ;; 03:7418 $cd $22 $74
    pop  HL                                            ;; 03:741b $e1
    ld   A, [wGlobalLevelEntryNumber]                  ;; 03:741c $fa $a2 $df
    ld   B, A                                          ;; 03:741f $47
    jr   .jr_03_7413                                   ;; 03:7420 $18 $f1

call_03_7422:
    ld   D, $00                                        ;; 03:7422 $16 $00
    ld   HL, data_03_7383                              ;; 03:7424 $21 $83 $73
    add  HL, DE                                        ;; 03:7427 $19
    add  HL, DE                                        ;; 03:7428 $19
    add  HL, DE                                        ;; 03:7429 $19
    add  HL, DE                                        ;; 03:742a $19
    add  HL, DE                                        ;; 03:742b $19
    ld   A, [HL+]                                      ;; 03:742c $2a
    or   A, A                                          ;; 03:742d $b7
    ret  Z                                             ;; 03:742e $c8
    call call_00_02d6                                  ;; 03:742f $cd $d6 $02
    ret  Z                                             ;; 03:7432 $c8
    ld   E, [HL]                                       ;; 03:7433 $5e
    inc  HL                                            ;; 03:7434 $23
    ld   D, [HL]                                       ;; 03:7435 $56
    inc  HL                                            ;; 03:7436 $23
    ld   C, [HL]                                       ;; 03:7437 $4e
    inc  HL                                            ;; 03:7438 $23
    ld   B, [HL]                                       ;; 03:7439 $46
    push BC                                            ;; 03:743a $c5
    call call_03_7445                                  ;; 03:743b $cd $45 $74
    ld   A, [HL]                                       ;; 03:743e $7e
    pop  DE                                            ;; 03:743f $d1
    call call_03_7445                                  ;; 03:7440 $cd $45 $74
    ld   [HL], A                                       ;; 03:7443 $77
    ret                                                ;; 03:7444 $c9

call_03_7445:
    ld   C, D                                          ;; 03:7445 $4a
    ld   B, $00                                        ;; 03:7446 $06 $00
    ld   HL, wDBE0                                     ;; 03:7448 $21 $e0 $db
    add  HL, BC                                        ;; 03:744b $09
    add  HL, BC                                        ;; 03:744c $09
    ld   C, [HL]                                       ;; 03:744d $4e
    inc  HL                                            ;; 03:744e $23
    ld   B, [HL]                                       ;; 03:744f $46
    ld   L, E                                          ;; 03:7450 $6b
    ld   H, $00                                        ;; 03:7451 $26 $00
    add  HL, BC                                        ;; 03:7453 $09
    ret                                                ;; 03:7454 $c9

call_03_7455:
    ld   DE, wC101                                     ;; 03:7455 $11 $01 $c1
    ld   A, [DE]                                       ;; 03:7458 $1a
    cp   A, $21                                        ;; 03:7459 $fe $21
    ret  NC                                            ;; 03:745b $d0
    inc  E                                             ;; 03:745c $1c
    ld   B, A                                          ;; 03:745d $47
    ld   A, [DE]                                       ;; 03:745e $1a
    inc  E                                             ;; 03:745f $1c
    ld   H, A                                          ;; 03:7460 $67
.jr_03_7461:
    ld   A, [DE]                                       ;; 03:7461 $1a
    inc  E                                             ;; 03:7462 $1c
    ld   L, A                                          ;; 03:7463 $6f
    ld   A, [DE]                                       ;; 03:7464 $1a
    inc  E                                             ;; 03:7465 $1c
    call call_00_015c                                  ;; 03:7466 $cd $5c $01
    dec  B                                             ;; 03:7469 $05
    jr   NZ, .jr_03_7461                               ;; 03:746a $20 $f5
    ret                                                ;; 03:746c $c9
    db   $fa, $00, $cc, $b7, $c8, $11, $02, $0d        ;; 03:746d ????????
    db   $01, $10, $02, $cd, $d0, $6b, $21, $1a        ;; 03:7475 ????????
    db   $68, $cd, $89, $6d, $fa, $00, $cc, $21        ;; 03:747d ????????
    db   $28, $68, $cd, $8f, $01, $c3, $89, $6d        ;; 03:7485 ????????
    db   $11, $02, $0d, $01, $10, $02, $cd, $d0        ;; 03:748d ????????
    db   $6b, $3e, $01, $ea, $7f, $cd, $3e, $03        ;; 03:7495 ????????
    db   $ea, $5d, $cd, $fa, $97, $df, $21, $ff        ;; 03:749d ????????
    db   $61, $cd, $8f, $01, $c3, $89, $6d             ;; 03:74a5 ???????

call_03_74ac:
    ldh  A, [rLCDC]                                    ;; 03:74ac $f0 $40
    bit  7, A                                          ;; 03:74ae $cb $7f
    ret  Z                                             ;; 03:74b0 $c8
.jr_03_74b1:
    ldh  A, [rLY]                                      ;; 03:74b1 $f0 $44
    cp   A, $88                                        ;; 03:74b3 $fe $88
    jr   NC, .jr_03_74b1                               ;; 03:74b5 $30 $fa
.jr_03_74b7:
    ldh  A, [rLY]                                      ;; 03:74b7 $f0 $44
    cp   A, $88                                        ;; 03:74b9 $fe $88
    jr   C, .jr_03_74b7                                ;; 03:74bb $38 $fa
    ret                                                ;; 03:74bd $c9

jp_03_74be:
    ld   A, L                                          ;; 03:74be $7d
    ld   HL, data_03_6734                              ;; 03:74bf $21 $34 $67
    call call_00_018f                                  ;; 03:74c2 $cd $8f $01
    jp   call_03_6d89                                  ;; 03:74c5 $c3 $89 $6d

;@code
data_03_74c8:
    ld   A, [wDFB8]                                    ;; 03:74c8 $fa $b8 $df
    ld   E, A                                          ;; 03:74cb $5f
    ld   D, $00                                        ;; 03:74cc $16 $00
    ld   HL, data_03_677f                              ;; 03:74ce $21 $7f $67
    add  HL, DE                                        ;; 03:74d1 $19
    ld   A, [HL]                                       ;; 03:74d2 $7e
    or   A, A                                          ;; 03:74d3 $b7
    jr   NZ, .jr_03_74d8                               ;; 03:74d4 $20 $02
    ld   L, A                                          ;; 03:74d6 $6f
    ret                                                ;; 03:74d7 $c9
.jr_03_74d8:
    ld   [wCD74], A                                    ;; 03:74d8 $ea $74 $cd
    ld   A, E                                          ;; 03:74db $7b
    inc  A                                             ;; 03:74dc $3c
    ld   [wDFB8], A                                    ;; 03:74dd $ea $b8 $df
    call call_03_683c                                  ;; 03:74e0 $cd $3c $68
    ld   L, $01                                        ;; 03:74e3 $2e $01
    ret                                                ;; 03:74e5 $c9
    db   $01, $01, $01, $01, $01, $01, $02, $02        ;; 03:74e6 ????????
    db   $02, $04, $04, $04, $04, $04, $08, $08        ;; 03:74ee ????????
    db   $08, $08, $00, $00, $00, $00, $10, $10        ;; 03:74f6 ????????
    db   $10, $30, $30, $30, $50, $50, $50, $60        ;; 03:74fe ????????
    db   $70, $80, $a0, $f0, $cd, $51, $77, $d8        ;; 03:7506 ????????
    db   $cd, $b3, $01, $cd, $c9, $78, $31, $fe        ;; 03:750e ????????
    db   $ff, $cf, $00, $cd, $b4, $75, $fa, $1d        ;; 03:7516 ????????
    db   $d3, $fe, $02, $28, $01, $af, $ea, $67        ;; 03:751e ????????
    db   $cd, $cd, $a8, $75, $af, $ea, $71, $cd        ;; 03:7526 ????????
    db   $ea, $76, $cd, $3c, $ea, $7f, $cd, $ea        ;; 03:752e ????????
    db   $72, $cd, $21, $8a, $67, $cd, $89, $6d        ;; 03:7536 ????????
    db   $cd, $92, $76, $38, $39, $cd, $a8, $75        ;; 03:753e ????????
    db   $cd, $25, $77, $cd, $76, $77, $da, $01        ;; 03:7546 ????????
    db   $76, $fa, $67, $cd, $e6, $01, $fa, $65        ;; 03:754e ????????
    db   $cd, $28, $08, $21, $15, $df, $cb, $d6        ;; 03:7556 ????????
    db   $fa, $66, $cd, $ea, $5c, $cd, $af, $ea        ;; 03:755e ????????
    db   $72, $cd, $3c, $ea, $7f, $cd, $cd, $52        ;; 03:7566 ????????
    db   $6d, $cd, $63, $03, $cd, $a8, $75, $06        ;; 03:756e ????????
    db   $1e, $cd, $bf, $01, $18, $ae, $cd, $5c        ;; 03:7576 ????????
    db   $72, $cd, $c9, $78, $fa, $15, $df, $cb        ;; 03:757e ????????
    db   $cf, $ea, $15, $df, $cd, $2b, $02, $47        ;; 03:7586 ????????
    db   $fa, $5d, $df, $c6, $f8, $6f, $3e, $00        ;; 03:758e ????????
    db   $ce, $74, $67, $7e, $b8, $38, $08, $fa        ;; 03:7596 ????????
    db   $53, $df, $cb, $ff, $ea, $53, $df, $c3        ;; 03:759e ????????
    db   $b5, $02, $af, $ea, $7e, $cd, $cd, $d3        ;; 03:75a6 ????????
    db   $6e, $af, $ea, $7e, $cd, $c9                  ;; 03:75ae ??????

call_03_75b4:
    xor  A, A                                          ;; 03:75b4 $af
    ld   [wC151], A                                    ;; 03:75b5 $ea $51 $c1
    ld   [wC152], A                                    ;; 03:75b8 $ea $52 $c1
    ld   HL, wC15B                                     ;; 03:75bb $21 $5b $c1
    ld   [HL+], A                                      ;; 03:75be $22
    ld   [HL+], A                                      ;; 03:75bf $22
    ld   [HL+], A                                      ;; 03:75c0 $22
    ld   [HL+], A                                      ;; 03:75c1 $22
    ld   [wC16E], A                                    ;; 03:75c2 $ea $6e $c1
    ld   HL, wC2E0                                     ;; 03:75c5 $21 $e0 $c2
    ld   [HL+], A                                      ;; 03:75c8 $22
    ld   [HL+], A                                      ;; 03:75c9 $22
    ld   [HL+], A                                      ;; 03:75ca $22
    ld   [HL+], A                                      ;; 03:75cb $22
    ld   [HL+], A                                      ;; 03:75cc $22
    ld   [HL+], A                                      ;; 03:75cd $22
    ld   A, $90                                        ;; 03:75ce $3e $90
    ldh  [rWY], A                                      ;; 03:75d0 $e0 $4a
    call call_00_03cf                                  ;; 03:75d2 $cd $cf $03
    ld   A, $04                                        ;; 03:75d5 $3e $04
    ld   [wLevelGraphicsIndex], A                      ;; 03:75d7 $ea $ed $d2
    call call_00_02be                                  ;; 03:75da $cd $be $02
    ld   HL, .data_03_7799                             ;; 03:75dd $21 $99 $77
    call call_00_02c4                                  ;; 03:75e0 $cd $c4 $02
    call call_03_70b2                                  ;; 03:75e3 $cd $b2 $70
    call call_00_03d2                                  ;; 03:75e6 $cd $d2 $03
    call call_03_7059                                  ;; 03:75e9 $cd $59 $70
    ld   A, $02                                        ;; 03:75ec $3e $02
    ld   [wCD5E], A                                    ;; 03:75ee $ea $5e $cd
    ld   A, $0a                                        ;; 03:75f1 $3e $0a
    ld   [wCD5F], A                                    ;; 03:75f3 $ea $5f $cd
    ld   A, $60                                        ;; 03:75f6 $3e $60
    ld   [wCD62], A                                    ;; 03:75f8 $ea $62 $cd
    ld   A, $10                                        ;; 03:75fb $3e $10
    ld   [wCD63], A                                    ;; 03:75fd $ea $63 $cd
    ret                                                ;; 03:7600 $c9
    db   $cd, $58, $78, $cd, $d3, $6e, $11, $03        ;; 03:7601 ????????
    db   $0b, $cd, $e8, $02, $6b, $62, $3e, $84        ;; 03:7609 ????????
    db   $01, $02, $00, $cd, $62, $01, $06, $00        ;; 03:7611 ????????
    db   $cd, $60, $03, $06, $03, $cd, $bf, $01        ;; 03:7619 ????????
    db   $06, $01, $cd, $60, $03, $06, $03, $cd        ;; 03:7621 ????????
    db   $bf, $01, $06, $02, $cd, $60, $03, $af        ;; 03:7629 ????????
    db   $ea, $6d, $cd, $ea, $6e, $cd, $3e, $0e        ;; 03:7631 ????????
    db   $ea, $69, $cd, $3e, $06, $ea, $6a, $cd        ;; 03:7639 ????????
    db   $cd, $58, $78, $cd, $7c, $6e, $cd, $b9        ;; 03:7641 ????????
    db   $01, $cd, $bc, $01, $fa, $c1, $c0, $e6        ;; 03:7649 ????????
    db   $03, $28, $ed, $cd, $63, $03, $cd, $a4        ;; 03:7651 ????????
    db   $6e, $11, $03, $0b, $cd, $e8, $02, $6b        ;; 03:7659 ????????
    db   $62, $3e, $91, $f5, $cd, $5c, $01, $f1        ;; 03:7661 ????????
    db   $23, $3c, $fe, $93, $38, $f5, $c3, $2a        ;; 03:7669 ????????
    db   $75, $00, $00, $20, $20, $30, $30, $38        ;; 03:7671 ????????
    db   $38, $3c, $3c, $38, $38, $30, $30, $20        ;; 03:7679 ????????
    db   $20, $02, $03, $03, $01, $02, $03, $00        ;; 03:7681 ????????
    db   $02, $03, $00, $01, $03, $00, $02, $02        ;; 03:7689 ????????
    db   $00, $21, $72, $76, $cd, $48, $77, $af        ;; 03:7691 ????????
    db   $ea, $6d, $cd, $ea, $6e, $cd, $cd, $11        ;; 03:7699 ????????
    db   $77, $cd, $b9, $01, $cd, $bc, $01, $fa        ;; 03:76a1 ????????
    db   $c1, $c0, $e6, $f3, $28, $f0, $cd, $a4        ;; 03:76a9 ????????
    db   $6e, $fa, $c1, $c0, $e6, $f0, $28, $23        ;; 03:76b1 ????????
    db   $fa, $67, $cd, $6f, $26, $00, $29, $29        ;; 03:76b9 ????????
    db   $11, $82, $76, $19, $fa, $c1, $c0, $07        ;; 03:76c1 ????????
    db   $38, $09, $23, $07, $38, $05, $23, $07        ;; 03:76c9 ????????
    db   $38, $01, $23, $7e, $ea, $67, $cd, $cf        ;; 03:76d1 ????????
    db   $1b, $18, $b6, $fa, $c1, $c0, $cb, $47        ;; 03:76d9 ????????
    db   $28, $22, $fa, $67, $cd, $fe, $03, $28        ;; 03:76e1 ????????
    db   $0e, $fe, $02, $28, $02, $b7, $c9, $3e        ;; 03:76e9 ????????
    db   $02, $ea, $1d, $d3, $c3, $d5, $03, $af        ;; 03:76f1 ????????
    db   $ea, $1d, $d3, $cf, $1c, $06, $3c, $cd        ;; 03:76f9 ????????
    db   $bf, $01, $37, $c9, $3e, $03, $18, $cc        ;; 03:7701 ????????
    db   $01, $01, $07, $01, $01, $03, $01, $05        ;; 03:7709 ????????
    db   $fa, $67, $cd, $11, $09, $77, $cd, $92        ;; 03:7711 ????????
    db   $01, $7b, $ea, $69, $cd, $7a, $ea, $6a        ;; 03:7719 ????????
    db   $cd, $c3, $7c, $6e, $21, $63, $99, $3e        ;; 03:7721 ????????
    db   $91, $cd, $5c, $01, $21, $69, $99, $3e        ;; 03:7729 ????????
    db   $97, $cd, $5c, $01, $21, $a3, $99, $3e        ;; 03:7731 ????????
    db   $a1, $cd, $5c, $01, $21, $e3, $99, $3e        ;; 03:7739 ????????
    db   $b1, $cd, $5c, $01, $21, $1c, $71, $11        ;; 03:7741 ????????
    db   $50, $88, $01, $10, $00, $c3, $5f, $01        ;; 03:7749 ????????
    db   $af, $ea, $65, $cd, $ea, $66, $cd, $fa        ;; 03:7751 ????????
    db   $a2, $df, $47, $21, $03, $79, $2a, $fe        ;; 03:7759 ????????
    db   $ff, $20, $02, $37, $c9, $b8, $28, $04        ;; 03:7761 ????????
    db   $23, $23, $18, $f2, $2a, $ea, $65, $cd        ;; 03:7769 ????????
    db   $2a, $ea, $66, $cd, $c9, $fa, $5d, $df        ;; 03:7771 ????????
    db   $5f, $16, $00, $21, $e6, $74, $19, $46        ;; 03:7779 ????????
    db   $fa, $51, $df, $b7, $28, $08, $5f, $21        ;; 03:7781 ????????
    db   $90, $77, $19, $7e, $a0, $c0, $37, $c9        ;; 03:7789 ????????
    db   $01, $02, $04, $08, $10, $20, $40, $80        ;; 03:7791 ????????
.data_03_7799:
    db   $08, $03, $81, $aa, $3f, $a2, $d4, $0d        ;; 03:7799 ........
    db   $51, $fd, $1a, $a0, $6a, $98, $ea, $46        ;; 03:77a1 ........
    db   $45, $34, $14, $90, $93, $ea, $46, $40        ;; 03:77a9 ........
    db   $f6, $1a, $92, $13, $5d, $4c, $f5, $23        ;; 03:77b1 ........
    db   $22, $fa, $0a, $48, $49, $f5, $23, $21        ;; 03:77b9 ........
    db   $24, $0d, $90, $a2, $48, $4d, $f5, $2b        ;; 03:77c1 ........
    db   $d4, $8c, $8d, $68, $29, $21, $39, $d4        ;; 03:77c9 ........
    db   $8c, $85, $90, $36, $43, $09, $39, $3b        ;; 03:77d1 ........
    db   $d4, $b7, $52, $32, $02, $c9, $21, $29        ;; 03:77d9 ........
    db   $d4, $8c, $85, $90, $36, $43, $08, $f1        ;; 03:77e1 ........
    db   $3b, $d4, $b7, $52, $32, $28, $c9, $21        ;; 03:77e9 ........
    db   $29, $d4, $8c, $85, $90, $36, $43, $08        ;; 03:77f1 ........
    db   $f9, $39, $d4, $bf, $52, $32, $28, $c9        ;; 03:77f9 ........
    db   $21, $39, $d4, $8c, $86, $90, $36, $43        ;; 03:7801 ........
    db   $89, $21, $39, $e4, $8c, $8a, $32, $48        ;; 03:7809 ........
    db   $49, $f5, $23, $21, $db, $0d, $49, $09        ;; 03:7811 ........
    db   $de, $a7, $7a, $92, $68, $b6, $e4, $9a        ;; 03:7819 ........
    db   $35, $4e, $f5, $03, $d9, $07, $b7, $00        ;; 03:7821 ........
    db   $41, $05, $42, $75, $00, $31, $f8, $62        ;; 03:7829 ........
    db   $00, $43, $08, $59, $00, $41, $05, $43        ;; 03:7831 ........
    db   $08, $59, $00, $33, $f8, $62, $00, $43        ;; 03:7839 ........
    db   $08, $59, $00, $41, $05, $43, $08, $59        ;; 03:7841 ........
    db   $00, $35, $f8, $62, $00, $42, $f5, $00        ;; 03:7849 ........
    db   $41, $05, $43, $78, $41, $ed, $00, $21        ;; 03:7851 .......?
    db   $00, $cc, $0e, $02, $06, $08, $cd, $7e        ;; 03:7859 ????????
    db   $78, $22, $cd, $7e, $78, $5f, $cd, $7e        ;; 03:7861 ????????
    db   $78, $a3, $22, $05, $20, $f0, $0d, $20        ;; 03:7869 ????????
    db   $eb, $11, $60, $88, $21, $00, $cc, $01        ;; 03:7871 ????????
    db   $20, $00, $c3, $5f, $01, $e5, $fa, $c4        ;; 03:7879 ????????
    db   $c0, $e6, $07, $c6, $9c, $6f, $3e, $78        ;; 03:7881 ????????
    db   $ce, $00, $67, $7e, $21, $3c, $cc, $8e        ;; 03:7889 ????????
    db   $ce, $db, $77, $e6, $01, $28, $02, $3e        ;; 03:7891 ????????
    db   $ff, $e1, $c9, $4b, $92, $31, $19, $4a        ;; 03:7899 ????????
    db   $0d, $a9, $74, $cf, $00, $3e, $46, $18        ;; 03:78a1 ????????
    db   $08                                           ;; 03:78a9 ?

jp_03_78aa:
    xor  A, A                                          ;; 03:78aa $af
    ld   [wDFA3], A                                    ;; 03:78ab $ea $a3 $df
    rst  rst_00_0008                                   ;; 03:78ae $cf
    nop                                                ;; 03:78af $00
    ld   A, $54                                        ;; 03:78b0 $3e $54
    ld   B, $00                                        ;; 03:78b2 $06 $00
    ld   [wCD5C], A                                    ;; 03:78b4 $ea $5c $cd
    push BC                                            ;; 03:78b7 $c5
    call call_03_75b4                                  ;; 03:78b8 $cd $b4 $75
    pop  BC                                            ;; 03:78bb $c1
    ld   A, B                                          ;; 03:78bc $78
    ld   [wCD72], A                                    ;; 03:78bd $ea $72 $cd
    ld   [wCD7F], A                                    ;; 03:78c0 $ea $7f $cd
    call call_03_6d52                                  ;; 03:78c3 $cd $52 $6d
    call call_00_0363                                  ;; 03:78c6 $cd $63 $03
    ld   A, $03                                        ;; 03:78c9 $3e $03
    ld   [wC0DC], A                                    ;; 03:78cb $ea $dc $c0
    ld   B, $03                                        ;; 03:78ce $06 $03
.jr_03_78d0:
    push BC                                            ;; 03:78d0 $c5
    call call_00_01bf                                  ;; 03:78d1 $cd $bf $01
    call call_00_0306                                  ;; 03:78d4 $cd $06 $03
    pop  BC                                            ;; 03:78d7 $c1
    jr   C, .jr_03_78d0                                ;; 03:78d8 $38 $f6
    ret                                                ;; 03:78da $c9
    db   $06, $01, $18, $d5, $3e, $01, $ea, $a3        ;; 03:78db ????????
    db   $df, $06, $5a, $cd, $bf, $01, $cd, $b3        ;; 03:78e3 ????????
    db   $01, $3e, $03, $ea, $dc, $c0, $06, $05        ;; 03:78eb ????????
    db   $cd, $d0, $78, $06, $3c, $cd, $bf, $01        ;; 03:78f3 ????????
    db   $3e, $57, $18, $dc, $3e, $59, $18, $d8        ;; 03:78fb ????????
    db   $06, $03, $04, $07, $05, $06, $13, $0d        ;; 03:7903 ????????
    db   $0e, $17, $20, $21, $1b, $10, $11, $55        ;; 03:790b ????????
    db   $27, $28, $a8, $17, $18, $b3, $37, $38        ;; 03:7913 ????????
    db   $bb, $1b, $1c, $cc, $43, $44, $25, $55        ;; 03:791b ????????
    db   $56, $d1, $3c, $3d, $7a, $1e, $1f, $ff        ;; 03:7923 ????????

data_03_792b:
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:792b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7933 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:793b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7943 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:794b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7953 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:795b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7963 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:796b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7973 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:797b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7983 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:798b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7993 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:799b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79a3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79ab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79b3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79bb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79c3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79cb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79d3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79db ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79e3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79eb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79f3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:79fb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7a9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7aa3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7aab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ab3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7abb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ac3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7acb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ad3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7adb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ae3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7aeb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7af3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7afb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7b9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ba3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bb3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bbb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bc3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bcb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bd3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bdb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7be3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7beb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bf3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7bfb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7c9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ca3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cb3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cbb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cc3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ccb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cd3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cdb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ce3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ceb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cf3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7cfb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7d9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7da3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7db3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dbb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dc3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dcb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dd3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ddb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7de3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7deb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7df3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7dfb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7e9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ea3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7eab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7eb3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ebb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ec3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ecb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ed3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7edb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ee3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7eeb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ef3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7efb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f03 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f0b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f13 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f1b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f23 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f2b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f33 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f3b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f43 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f4b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f53 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f5b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f63 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f6b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f73 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f7b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f83 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f8b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f93 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7f9b ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fa3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fab ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fb3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fbb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fc3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fcb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fd3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fdb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7fe3 ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7feb ????????
    db   $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff        ;; 03:7ff3 ????????
    db   $ff, $ff, $ff, $ff, $ff                       ;; 03:7ffb ?????
