MACRO TXT
SETCHARMAP BASIC
db \#
ENDM
MACRO data_bbp
db \1
shift
db \1
shift
dw \1
shift
ENDM
MACRO ld_long_load
db $FA
dw \2
ENDM
MACRO ld_long_store
db $EA
dw \1
ENDM
MACRO short_stop
db $10
ENDM
