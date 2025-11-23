;; Disassembled with BadBoy Disassembler: https://github.com/daid/BadBoy

INCLUDE "include/hardware.inc"
INCLUDE "include/macros.inc"
INCLUDE "include/charmaps.inc"
INCLUDE "include/constants.inc"

SECTION "wram0", WRAM0[$c000]

wOAMBuffer:
    ds 40                                              ;; c000
.28:
    ds 124                                             ;; c028

wC0A4:
    ds 28                                              ;; c0a4

wJoypadDown:
    ds 1                                               ;; c0c0

wJoypadPressed:
    ds 1                                               ;; c0c1

wC0C2:
    ds 2                                               ;; c0c2

wFrameCount:
    ds 1                                               ;; c0c4

wC0C5:
    ds 2                                               ;; c0c5

wC0C7:
    ds 1                                               ;; c0c7

wC0C8:
    ds 10                                              ;; c0c8

wC0D2:
    ds 1                                               ;; c0d2

wActiveRomBank:
    ds 2                                               ;; c0d3

wLevelLayoutRomBank:
    ds 3                                               ;; c0d5

wLevelEntryRomBank:
    ds 1                                               ;; c0d8

wBGP:
    ds 1                                               ;; c0d9

wLCDC:
    ds 1                                               ;; c0da

wC0DB:
    ds 1                                               ;; c0db

wC0DC:
    ds 1                                               ;; c0dc

wC0DD:
    ds 1                                               ;; c0dd

wC0DE:
    ds 2                                               ;; c0de

wC0E0:
    ds 32                                              ;; c0e0

wC100:
    ds 1                                               ;; c100

wC101:
    ds 1                                               ;; c101

wC102:
    ds 1                                               ;; c102

wC103:
    ds 56                                              ;; c103

wC13B:
    ds 1                                               ;; c13b

wC13C:
    ds 1                                               ;; c13c

wC13D:
    ds 1                                               ;; c13d

wC13E:
    ds 1                                               ;; c13e

wC13F:
    ds 1                                               ;; c13f

wC140:
    ds 1                                               ;; c140

wC141:
    ds 1                                               ;; c141

wC142:
    ds 1                                               ;; c142

wC143:
    ds 1                                               ;; c143

wC144:
    ds 1                                               ;; c144

wC145:
    ds 1                                               ;; c145

wC146:
    ds 3                                               ;; c146

wC149:
    ds 1                                               ;; c149

wC14A:
    ds 1                                               ;; c14a

wC14B:
    ds 1                                               ;; c14b

wC14C:
    ds 1                                               ;; c14c

wC14D:
    ds 1                                               ;; c14d

wC14E:
    ds 1                                               ;; c14e

wC14F:
    ds 1                                               ;; c14f

wC150:
    ds 1                                               ;; c150

wC151:
    ds 1                                               ;; c151

wC152:
    ds 1                                               ;; c152

wC153:
    ds 1                                               ;; c153

wC154:
    ds 1                                               ;; c154

wC155:
    ds 1                                               ;; c155

wC156:
    ds 1                                               ;; c156

wC157:
    ds 1                                               ;; c157

wC158:
    ds 1                                               ;; c158

wC159:
    ds 1                                               ;; c159

wC15A:
    ds 1                                               ;; c15a

wC15B:
    ds 1                                               ;; c15b

wC15C:
    ds 1                                               ;; c15c

wC15D:
    ds 1                                               ;; c15d

wC15E:
    ds 1                                               ;; c15e

wC15F:
    ds 2                                               ;; c15f

wC161:
    ds 2                                               ;; c161

wC163:
    ds 1                                               ;; c163

wC164:
    ds 1                                               ;; c164

wC165:
    ds 1                                               ;; c165

wC166:
    ds 1                                               ;; c166

wC167:
    ds 1                                               ;; c167

wC168:
    ds 1                                               ;; c168

wC169:
    ds 2                                               ;; c169

wC16B:
    ds 3                                               ;; c16b

wC16E:
    ds 2                                               ;; c16e

wC170:
    ds 2                                               ;; c170

wC172:
    ds 4                                               ;; c172

wC176:
    ds 1                                               ;; c176

wC177:
    ds 1                                               ;; c177

wC178:
    ds 2                                               ;; c178

wC17A:
    ds 134                                             ;; c17a

wC200:
    ds 1                                               ;; c200

wC201:
    ds 1                                               ;; c201

wC202:
    ds 1                                               ;; c202

wC203:
    ds 1                                               ;; c203

wC204:
    ds 1                                               ;; c204

wC205:
    ds 1                                               ;; c205

wC206:
    ds 1                                               ;; c206

wC207:
    ds 1                                               ;; c207

wC208:
    ds 1                                               ;; c208

wC209:
    ds 1                                               ;; c209

wC20A:
    ds 1                                               ;; c20a

wC20B:
    ds 1                                               ;; c20b

wC20C:
    ds 1                                               ;; c20c

wC20D:
    ds 1                                               ;; c20d

wC20E:
    ds 1                                               ;; c20e

wC20F:
    ds 1                                               ;; c20f

wC210:
    ds 1                                               ;; c210

wC211:
    ds 1                                               ;; c211

wC212:
    ds 1                                               ;; c212

wC213:
    ds 1                                               ;; c213

wC214:
    ds 1                                               ;; c214

wC215:
    ds 1                                               ;; c215

wC216:
    ds 5                                               ;; c216

wC21B:
    ds 1                                               ;; c21b

wC21C:
    ds 1                                               ;; c21c

wC21D:
    ds 1                                               ;; c21d

wC21E:
    ds 1                                               ;; c21e

wC21F:
    ds 1                                               ;; c21f

wC220:
    ds 1                                               ;; c220

wC221:
    ds 1                                               ;; c221

wC222:
    ds 1                                               ;; c222

wC223:
    ds 1                                               ;; c223

wC224:
    ds 1                                               ;; c224

wC225:
    ds 1                                               ;; c225

wC226:
    ds 1                                               ;; c226

wC227:
    ds 4                                               ;; c227

wC22B:
    ds 1                                               ;; c22b

wC22C:
    ds 1                                               ;; c22c

wC22D:
    ds 1                                               ;; c22d

wC22E:
    ds 2                                               ;; c22e

wC230:
    ds 1                                               ;; c230

wC231:
    ds 1                                               ;; c231

wC232:
    ds 1                                               ;; c232

wC233:
    ds 1                                               ;; c233

wC234:
    ds 2                                               ;; c234

wC236:
    ds 1                                               ;; c236

; Flags that influence how the level start happens:
; bit 0: looking left
; bit 1: parachute
; bit 2: no music
wLevelStartFlags:
    ds 1                                               ;; c237

wC238:
    ds 1                                               ;; c238

wC239:
    ds 1                                               ;; c239

wC23A:
    ds 1                                               ;; c23a

wC23B:
    ds 1                                               ;; c23b

wC23C:
    ds 1                                               ;; c23c

wC23D:
    ds 1                                               ;; c23d

wC23E:
    ds 1                                               ;; c23e

wC23F:
    ds 1                                               ;; c23f

wC240:
    ds 1                                               ;; c240

wC241:
    ds 1                                               ;; c241

wC242:
    ds 1                                               ;; c242

wC243:
    ds 1                                               ;; c243

wC244:
    ds 1                                               ;; c244

wC245:
    ds 1                                               ;; c245

wC246:
    ds 1                                               ;; c246

wC247:
    ds 1                                               ;; c247

wC248:
    ds 1                                               ;; c248

wC249:
    ds 1                                               ;; c249

wC24A:
    ds 1                                               ;; c24a

wC24B:
    ds 1                                               ;; c24b

wC24C:
    ds 1                                               ;; c24c

wC24D:
    ds 1                                               ;; c24d

wC24E:
    ds 1                                               ;; c24e

wC24F:
    ds 1                                               ;; c24f

wC250:
    ds 1                                               ;; c250

wC251:
    ds 1                                               ;; c251

wC252:
    ds 1                                               ;; c252

wC253:
    ds 1                                               ;; c253

wC254:
    ds 1                                               ;; c254

wC255:
    ds 1                                               ;; c255

wC256:
    ds 1                                               ;; c256

wC257:
    ds 1                                               ;; c257

wC258:
    ds 1                                               ;; c258

wC259:
    ds 1                                               ;; c259

wC25A:
    ds 1                                               ;; c25a

wC25B:
    ds 1                                               ;; c25b

wC25C:
    ds 1                                               ;; c25c

wC25D:
    ds 6                                               ;; c25d

wC263:
    ds 1                                               ;; c263

wC264:
    ds 1                                               ;; c264

wC265:
    ds 3                                               ;; c265

wC268:
    ds 7                                               ;; c268

wC26F:
    ds 11                                              ;; c26f

wC27A:
    ds 43                                              ;; c27a

wC2A5:
    ds 1                                               ;; c2a5

wC2A6:
    ds 1                                               ;; c2a6

wC2A7:
    ds 1                                               ;; c2a7

wC2A8:
    ds 1                                               ;; c2a8

wC2A9:
    ds 1                                               ;; c2a9

wC2AA:
    ds 1                                               ;; c2aa

wC2AB:
    ds 1                                               ;; c2ab

wC2AC:
    ds 41                                              ;; c2ac

wC2D5:
    ds 1                                               ;; c2d5

wC2D6:
    ds 1                                               ;; c2d6

wC2D7:
    ds 1                                               ;; c2d7

wC2D8:
    ds 8                                               ;; c2d8

wC2E0:
    ds 1                                               ;; c2e0

wC2E1:
    ds 1                                               ;; c2e1

wC2E2:
    ds 1                                               ;; c2e2

wC2E3:
    ds 1                                               ;; c2e3

wC2E4:
    ds 1                                               ;; c2e4

wC2E5:
    ds 2                                               ;; c2e5

wC2E7:
    ds 1                                               ;; c2e7

wC2E8:
    ds 1                                               ;; c2e8

wC2E9:
    ds 1                                               ;; c2e9

wC2EA:
    ds 1                                               ;; c2ea

wC2EB:
    ds 23                                              ;; c2eb

wC302:
    ds 1                                               ;; c302

wC303:
    ds 1                                               ;; c303

wC304:
    ds 1                                               ;; c304

wC305:
    ds 1                                               ;; c305

wC306:
    ds 1                                               ;; c306

wC307:
    ds 1                                               ;; c307

wC308:
    ds 1                                               ;; c308

wC309:
    ds 1                                               ;; c309

wC30A:
    ds 1                                               ;; c30a

wC30B:
    ds 1                                               ;; c30b

wC30C:
    ds 1                                               ;; c30c

wC30D:
    ds 8                                               ;; c30d

wC315:
    ds 168                                             ;; c315

wC3BD:
    ds 44                                              ;; c3bd

wC3E9:
    ds 44                                              ;; c3e9

wC415:
    ds 88                                              ;; c415

wC46D:
    ds 1                                               ;; c46d

wC46E:
    ds 1                                               ;; c46e

wC46F:
    ds 1                                               ;; c46f

wC470:
    ds 1                                               ;; c470

wC471:
    ds 1                                               ;; c471

wC472:
    ds 1                                               ;; c472

wC473:
    ds 1                                               ;; c473

wC474:
    ds 1                                               ;; c474

wC475:
    ds 1                                               ;; c475

wC476:
    ds 2                                               ;; c476

wC478:
    ds 2                                               ;; c478

wC47A:
    ds 1                                               ;; c47a

wC47B:
    ds 1                                               ;; c47b

wC47C:
    ds 1                                               ;; c47c

wC47D:
    ds 1                                               ;; c47d

wC47E:
    ds 1                                               ;; c47e

wC47F:
    ds 1                                               ;; c47f

wC480:
    ds 2                                               ;; c480

wC482:
    ds 21                                              ;; c482

wC497:
    ds 1                                               ;; c497

wC498:
    ds 2                                               ;; c498

wC49A:
    ds 102                                             ;; c49a

wC500:
    ds 64                                              ;; c500

wC540:
    ds 1                                               ;; c540

wC541:
    ds 24                                              ;; c541

wC559:
    ds 1                                               ;; c559

wC55A:
    ds 24                                              ;; c55a

wC572:
    ds 5                                               ;; c572

wC577:
    ds 25                                              ;; c577

wC590:
    ds 1                                               ;; c590

wC591:
    ds 1                                               ;; c591

wC592:
    ds 1                                               ;; c592

wC593:
    ds 1                                               ;; c593

wC594:
    ds 3                                               ;; c594

wC597:
    ds 2                                               ;; c597

wC599:
    ds 1                                               ;; c599

wC59A:
    ds 1                                               ;; c59a

wC59B:
    ds 1                                               ;; c59b

wC59C:
    ds 1                                               ;; c59c

wC59D:
    ds 6                                               ;; c59d

wC5A3:
    ds 1                                               ;; c5a3

wC5A4:
    ds 1                                               ;; c5a4

wC5A5:
    ds 1                                               ;; c5a5

wC5A6:
    ds 1                                               ;; c5a6

wC5A7:
    ds 1                                               ;; c5a7

wC5A8:
    ds 7                                               ;; c5a8

wC5AF:
    ds 1                                               ;; c5af

wC5B0:
    ds 1                                               ;; c5b0

wC5B1:
    ds 1                                               ;; c5b1

wC5B2:
    ds 1                                               ;; c5b2

wC5B3:
    ds 1                                               ;; c5b3

wC5B4:
    ds 64                                              ;; c5b4

wC5F4:
    ds 1                                               ;; c5f4

wC5F5:
    ds 1                                               ;; c5f5

wC5F6:
    ds 1                                               ;; c5f6

wC5F7:
    ds 1                                               ;; c5f7

wC5F8:
    ds 1                                               ;; c5f8

wC5F9:
    ds 1                                               ;; c5f9

wC5FA:
    ds 1                                               ;; c5fa

wC5FB:
    ds 1                                               ;; c5fb

wC5FC:
    ds 1                                               ;; c5fc

wC5FD:
    ds 1                                               ;; c5fd

wC5FE:
    ds 1                                               ;; c5fe

wC5FF:
    ds 1                                               ;; c5ff

wC600:
    ds 1                                               ;; c600

wC601:
    ds 1                                               ;; c601

wC602:
    ds 1                                               ;; c602

wC603:
    ds 2                                               ;; c603

wC605:
    ds 1                                               ;; c605

wC606:
    ds 3                                               ;; c606

wC609:
    ds 55                                              ;; c609

wC640:
    ds 192                                             ;; c640

wC700:
    ds 1                                               ;; c700

wC701:
    ds 1                                               ;; c701

wC702:
    ds 1                                               ;; c702

wC703:
    ds 1                                               ;; c703

wC704:
    ds 1                                               ;; c704

wC705:
    ds 1                                               ;; c705

wC706:
    ds 1                                               ;; c706

wC707:
    ds 1                                               ;; c707

wC708:
    ds 1                                               ;; c708

wC709:
    ds 1                                               ;; c709

wC70A:
    ds 5                                               ;; c70a

wC70F:
    ds 1                                               ;; c70f

wC710:
    ds 1                                               ;; c710

wC711:
    ds 1                                               ;; c711

wC712:
    ds 1                                               ;; c712

wC713:
    ds 1                                               ;; c713

wC714:
    ds 2                                               ;; c714

wC716:
    ds 16                                              ;; c716

wC726:
    ds 1                                               ;; c726

wC727:
    ds 1                                               ;; c727

wC728:
    ds 3                                               ;; c728

wC72B:
    ds 213                                             ;; c72b

wC800:
    ds 1024                                            ;; c800

wCC00:
    ds 1                                               ;; cc00

wCC01:
    ds 1                                               ;; cc01

wCC02:
    ds 1                                               ;; cc02

wCC03:
    ds 1                                               ;; cc03

wCC04:
    ds 1                                               ;; cc04

wCC05:
    ds 1                                               ;; cc05

wCC06:
    ds 5                                               ;; cc06

wCC0B:
    ds 1                                               ;; cc0b

wCC0C:
    ds 1                                               ;; cc0c

wCC0D:
    ds 1                                               ;; cc0d

wCC0E:
    ds 1                                               ;; cc0e

wCC0F:
    ds 1                                               ;; cc0f

wCC10:
    ds 1                                               ;; cc10

wCC11:
    ds 1                                               ;; cc11

wCC12:
    ds 1                                               ;; cc12

wCC13:
    ds 1                                               ;; cc13

wCC14:
    ds 1                                               ;; cc14

wCC15:
    ds 1                                               ;; cc15

wCC16:
    ds 1                                               ;; cc16

wCC17:
    ds 1                                               ;; cc17

wCC18:
    ds 1                                               ;; cc18

wCC19:
    ds 1                                               ;; cc19

wCC1A:
    ds 1                                               ;; cc1a

wCC1B:
    ds 3                                               ;; cc1b

wCC1E:
    ds 1                                               ;; cc1e

wCC1F:
    ds 3                                               ;; cc1f

wCC22:
    ds 1                                               ;; cc22

wCC23:
    ds 1                                               ;; cc23

wCC24:
    ds 1                                               ;; cc24

wCC25:
    ds 8                                               ;; cc25

wCC2D:
    ds 1                                               ;; cc2d

wCC2E:
    ds 1                                               ;; cc2e

wCC2F:
    ds 13                                              ;; cc2f

wCC3C:
    ds 4                                               ;; cc3c

wCC40:
    ds 1                                               ;; cc40

wCC41:
    ds 1                                               ;; cc41

wCC42:
    ds 1                                               ;; cc42

wCC43:
    ds 1                                               ;; cc43

wCC44:
    ds 2                                               ;; cc44

wCC46:
    ds 1                                               ;; cc46

wCC47:
    ds 2                                               ;; cc47

wCC49:
    ds 1                                               ;; cc49

wCC4A:
    ds 1                                               ;; cc4a

wCC4B:
    ds 53                                              ;; cc4b

wCC80:
    ds 168                                             ;; cc80

wCD28:
    ds 40                                              ;; cd28

wCD50:
    ds 1                                               ;; cd50

wCD51:
    ds 2                                               ;; cd51

wCD53:
    ds 1                                               ;; cd53

wCD54:
    ds 1                                               ;; cd54

wCD55:
    ds 1                                               ;; cd55

wCD56:
    ds 1                                               ;; cd56

wCD57:
    ds 1                                               ;; cd57

wCD58:
    ds 1                                               ;; cd58

wCD59:
    ds 3                                               ;; cd59

wCD5C:
    ds 1                                               ;; cd5c

wCD5D:
    ds 1                                               ;; cd5d

wCD5E:
    ds 1                                               ;; cd5e

wCD5F:
    ds 1                                               ;; cd5f

wCD60:
    ds 1                                               ;; cd60

wCD61:
    ds 1                                               ;; cd61

wCD62:
    ds 1                                               ;; cd62

wCD63:
    ds 1                                               ;; cd63

wCD64:
    ds 1                                               ;; cd64

wCD65:
    ds 1                                               ;; cd65

wCD66:
    ds 1                                               ;; cd66

wCD67:
    ds 1                                               ;; cd67

wCD68:
    ds 1                                               ;; cd68

wCD69:
    ds 1                                               ;; cd69

wCD6A:
    ds 1                                               ;; cd6a

wCD6B:
    ds 1                                               ;; cd6b

wCD6C:
    ds 1                                               ;; cd6c

wCD6D:
    ds 1                                               ;; cd6d

wCD6E:
    ds 1                                               ;; cd6e

wCD6F:
    ds 1                                               ;; cd6f

wCD70:
    ds 1                                               ;; cd70

wCD71:
    ds 1                                               ;; cd71

wCD72:
    ds 2                                               ;; cd72

wCD74:
    ds 1                                               ;; cd74

wCD75:
    ds 1                                               ;; cd75

wCD76:
    ds 1                                               ;; cd76

wCD77:
    ds 1                                               ;; cd77

wCD78:
    ds 1                                               ;; cd78

wCD79:
    ds 1                                               ;; cd79

wCD7A:
    ds 1                                               ;; cd7a

wCD7B:
    ds 1                                               ;; cd7b

wCD7C:
    ds 1                                               ;; cd7c

wCD7D:
    ds 1                                               ;; cd7d

wCD7E:
    ds 1                                               ;; cd7e

wCD7F:
    ds 127                                             ;; cd7f

wCDFE:
    ds 2                                               ;; cdfe

wCE00:
    ds 10                                              ;; ce00

wCE0A:
    ds 30                                              ;; ce0a

wCE28:
    ds 10                                              ;; ce28

wCE32:
    ds 30                                              ;; ce32

wCE50:
    ds 10                                              ;; ce50

wCE5A:
    ds 29                                              ;; ce5a

wCE77:
    ds 1                                               ;; ce77

wCE78:
    ds 134                                             ;; ce78

wCEFE:
    ds 258                                             ;; cefe

wD000:
    ds 320                                             ;; d000

wD140:
    ds 64                                              ;; d140

wD180:
    ds 1                                               ;; d180

wD181:
    ds 1                                               ;; d181

wD182:
    ds 2                                               ;; d182

wD184:
    ds 1                                               ;; d184

wD185:
    ds 1                                               ;; d185

wD186:
    ds 4                                               ;; d186

wD18A:
    ds 1                                               ;; d18a

wD18B:
    ds 117                                             ;; d18b

wD200:
    ds 1                                               ;; d200

wD201:
    ds 3                                               ;; d201

wD204:
    ds 1                                               ;; d204

wD205:
    ds 1                                               ;; d205

wD206:
    ds 1                                               ;; d206

wD207:
    ds 1                                               ;; d207

wD208:
    ds 1                                               ;; d208

wD209:
    ds 1                                               ;; d209

wD20A:
    ds 1                                               ;; d20a

wD20B:
    ds 1                                               ;; d20b

wD20C:
    ds 1                                               ;; d20c

wD20D:
    ds 1                                               ;; d20d

wD20E:
    ds 1                                               ;; d20e

wD20F:
    ds 1                                               ;; d20f

wD210:
    ds 1                                               ;; d210

wD211:
    ds 1                                               ;; d211

wD212:
    ds 1                                               ;; d212

wD213:
    ds 1                                               ;; d213

wD214:
    ds 1                                               ;; d214

wD215:
    ds 1                                               ;; d215

wD216:
    ds 1                                               ;; d216

wD217:
    ds 1                                               ;; d217

wD218:
    ds 1                                               ;; d218

wD219:
    ds 13                                              ;; d219

wD226:
    ds 96                                              ;; d226

wD286:
    ds 2                                               ;; d286

wD288:
    ds 1                                               ;; d288

wD289:
    ds 1                                               ;; d289

wD28A:
    ds 3                                               ;; d28a

wD28D:
    ds 4                                               ;; d28d

wD291:
    ds 1                                               ;; d291

wD292:
    ds 1                                               ;; d292

wD293:
    ds 1                                               ;; d293

wD294:
    ds 1                                               ;; d294

wD295:
    ds 4                                               ;; d295

wD299:
    ds 1                                               ;; d299

wD29A:
    ds 1                                               ;; d29a

wD29B:
    ds 1                                               ;; d29b

wD29C:
    ds 1                                               ;; d29c

wD29D:
    ds 3                                               ;; d29d

wD2A0:
    ds 1                                               ;; d2a0

wD2A1:
    ds 5                                               ;; d2a1

wD2A6:
    ds 4                                               ;; d2a6

wD2AA:
    ds 1                                               ;; d2aa

wD2AB:
    ds 1                                               ;; d2ab

wD2AC:
    ds 1                                               ;; d2ac

wD2AD:
    ds 1                                               ;; d2ad

wD2AE:
    ds 1                                               ;; d2ae

wD2AF:
    ds 1                                               ;; d2af

wD2B0:
    ds 1                                               ;; d2b0

wD2B1:
    ds 1                                               ;; d2b1

wD2B2:
    ds 1                                               ;; d2b2

wD2B3:
    ds 1                                               ;; d2b3

wD2B4:
    ds 1                                               ;; d2b4

wD2B5:
    ds 1                                               ;; d2b5

wD2B6:
    ds 21                                              ;; d2b6

wD2CB:
    ds 1                                               ;; d2cb

wD2CC:
    ds 4                                               ;; d2cc

wD2D0:
    ds 1                                               ;; d2d0

wD2D1:
    ds 1                                               ;; d2d1

wD2D2:
    ds 1                                               ;; d2d2

wD2D3:
    ds 1                                               ;; d2d3

wD2D4:
    ds 1                                               ;; d2d4

wD2D5:
    ds 1                                               ;; d2d5

wD2D6:
    ds 1                                               ;; d2d6

wD2D7:
    ds 1                                               ;; d2d7

wD2D8:
    ds 1                                               ;; d2d8

wD2D9:
    ds 1                                               ;; d2d9

wD2DA:
    ds 1                                               ;; d2da

wLevelDecodePointerLow:
    ds 1                                               ;; d2db

wLevelDecodePointerHigh:
    ds 1                                               ;; d2dc

; amount of valid bits still in wLevelDecodeData
wLevelDecodeDataBitCount:
    ds 1                                               ;; d2dd

wLevelDecodeData:
    ds 1                                               ;; d2de

wLevelDecodeBitsizeA:
    ds 1                                               ;; d2df

wLevelDecodeBitsizeB:
    ds 1                                               ;; d2e0

wD2E1:
    ds 1                                               ;; d2e1

wD2E2:
    ds 1                                               ;; d2e2

wD2E3:
    ds 10                                              ;; d2e3

; Loaded from level layout table.
wLevelGraphicsIndex:
    ds 1                                               ;; d2ed

wD2EE:
    ds 1                                               ;; d2ee

wD2EF:
    ds 1                                               ;; d2ef

wD2F0:
    ds 1                                               ;; d2f0

wLevelExitDataPtr:
    ds 1                                               ;; d2f1
.high:
    ds 1                                               ;; d2f2

wGlobalLevelLayoutNumber:
    ds 1                                               ;; d2f3

wLevelWidthInMetaMetaTiles:
    ds 1                                               ;; d2f4

wLevelHeightInMetaMetaTiles:
    ds 1                                               ;; d2f5

wD2F6:
    ds 1                                               ;; d2f6

wD2F7:
    ds 1                                               ;; d2f7

wD2F8:
    ds 1                                               ;; d2f8

wLevelLayoutPhysicsPtr:
    ds 1                                               ;; d2f9
.high:
    ds 1                                               ;; d2fa

wLevelLayoutMetatilePtr:
    ds 1                                               ;; d2fb
.high:
    ds 1                                               ;; d2fc

wLevelLayoutMegatilePtr:
    ds 1                                               ;; d2fd
.high:
    ds 1                                               ;; d2fe

wLevelLayoutTilemapPtr:
    ds 1                                               ;; d2ff
.high:
    ds 1                                               ;; d300

wLevelLayoutPtr:
    ds 1                                               ;; d301
.high:
    ds 1                                               ;; d302

wD303:
    ds 1                                               ;; d303

wD304:
    ds 1                                               ;; d304

wD305:
    ds 1                                               ;; d305

wD306:
    ds 1                                               ;; d306

wD307:
    ds 1                                               ;; d307

wD308:
    ds 1                                               ;; d308

wD309:
    ds 1                                               ;; d309

wD30A:
    ds 1                                               ;; d30a

wLevelLayoutNumberOffset:
    ds 1                                               ;; d30b

; Index of the current level entry in the selected level entry bank
wLevelEntryNumberOffset:
    ds 1                                               ;; d30c

wD30D:
    ds 15                                              ;; d30d

wD31C:
    ds 1                                               ;; d31c

wD31D:
    ds 3                                               ;; d31d

wD320:
    ds 1                                               ;; d320

wD321:
    ds 479                                             ;; d321

wLevelMetaMetaTiles:
    ds 2                                               ;; d500
.wD502:
    ds 126                                             ;; d502
.wD580:
    ds 128                                             ;; d580
.wD600:
    ds 1504                                            ;; d600

wDBE0:
    ds 800                                             ;; dbe0

wDF00:
    ds 1                                               ;; df00

wDF01:
    ds 1                                               ;; df01

wDF02:
    ds 3                                               ;; df02

wDF05:
    ds 1                                               ;; df05

wDF06:
    ds 1                                               ;; df06

wDF07:
    ds 1                                               ;; df07

wDF08:
    ds 1                                               ;; df08

wDF09:
    ds 1                                               ;; df09

wDF0A:
    ds 1                                               ;; df0a

wDF0B:
    ds 1                                               ;; df0b

wDF0C:
    ds 1                                               ;; df0c

wDF0D:
    ds 1                                               ;; df0d

wDF0E:
    ds 1                                               ;; df0e

wDF0F:
    ds 1                                               ;; df0f

wDF10:
    ds 1                                               ;; df10

wDF11:
    ds 1                                               ;; df11

wDF12:
    ds 1                                               ;; df12

wDF13:
    ds 1                                               ;; df13

wDF14:
    ds 1                                               ;; df14

wDF15:
    ds 1                                               ;; df15

wDF16:
    ds 1                                               ;; df16

wDF17:
    ds 3                                               ;; df17

wDF1A:
    ds 28                                              ;; df1a

wDF36:
    ds 11                                              ;; df36

wDF41:
    ds 1                                               ;; df41

wDF42:
    ds 1                                               ;; df42

wHealth:
    ds 1                                               ;; df43

wMaxHealth:
    ds 1                                               ;; df44

; Includes the current life (displayed is -1)
wExtraLifeCount:
    ds 1                                               ;; df45

wCartidgeCount:
    ds 1                                               ;; df46
.high:
    ds 1                                               ;; df47

wDF48:
    ds 1                                               ;; df48

wDF49:
    ds 1                                               ;; df49

; bitmask of which weapons you have
wAvailableWeaponItems:
    ds 1                                               ;; df4a

; bitmask of which protector items you have
wAvailableProtectorItems:
    ds 1                                               ;; df4b

; bitmask of which tools you have
wAvailableToolItems:
    ds 1                                               ;; df4c

; bitmask of which receivers you have
wAvailableVideoReceiverItems:
    ds 1                                               ;; df4d

wSelectedWeapon:
    ds 1                                               ;; df4e

wSelectedProtector:
    ds 1                                               ;; df4f

wSelectedTool:
    ds 1                                               ;; df50

wSelectedReceiver:
    ds 1                                               ;; df51

wContinueCount:
    ds 1                                               ;; df52

wDF53:
    ds 1                                               ;; df53

wDF54:
    ds 8                                               ;; df54

wDF5C:
    ds 1                                               ;; df5c

; current area that we are on at the map
wCurrentArea:
    ds 1                                               ;; df5d

; targeted area on the map
wTargetArea:
    ds 1                                               ;; df5e

wDF5F:
    ds 1                                               ;; df5f

wDF60:
    ds 1                                               ;; df60

wDF61:
    ds 1                                               ;; df61

wDF62:
    ds 1                                               ;; df62

wDF63:
    ds 2                                               ;; df63

wDF65:
    ds 46                                              ;; df65

wDF93:
    ds 3                                               ;; df93

wDF96:
    ds 1                                               ;; df96

wDF97:
    ds 1                                               ;; df97

wDF98:
    ds 1                                               ;; df98

wDF99:
    ds 1                                               ;; df99

wDF9A:
    ds 1                                               ;; df9a

wDF9B:
    ds 1                                               ;; df9b

wDF9C:
    ds 1                                               ;; df9c

wDF9D:
    ds 1                                               ;; df9d

wDF9E:
    ds 1                                               ;; df9e

wDF9F:
    ds 1                                               ;; df9f

wDFA0:
    ds 1                                               ;; dfa0

wDFA1:
    ds 1                                               ;; dfa1

; Entry number that encodes level entry and bank in one. See getBankForLevelEntryNumber
wGlobalLevelEntryNumber:
    ds 1                                               ;; dfa2

wDFA3:
    ds 1                                               ;; dfa3

wDFA4:
    ds 1                                               ;; dfa4

wDFA5:
    ds 2                                               ;; dfa5

wDFA7:
    ds 1                                               ;; dfa7

wDFA8:
    ds 1                                               ;; dfa8

wDFA9:
    ds 1                                               ;; dfa9

wDFAA:
    ds 1                                               ;; dfaa

wDFAB:
    ds 1                                               ;; dfab

wDFAC:
    ds 3                                               ;; dfac

wDFAF:
    ds 4                                               ;; dfaf

wDFB3:
    ds 1                                               ;; dfb3

wDFB4:
    ds 3                                               ;; dfb4

wDFB7:
    ds 1                                               ;; dfb7

wDFB8:
    ds 72                                              ;; dfb8

SECTION "hram", HRAM[$ff80]

hDMAHandler:
    ds 10                                              ;; ff80

hFF8A:
    ds 1                                               ;; ff8a

hFF8B:
    ds 1                                               ;; ff8b

hFF8C:
    ds 1                                               ;; ff8c

hFF8D:
    ds 1                                               ;; ff8d

hFF8E:
    ds 1                                               ;; ff8e

hFF8F:
    ds 1                                               ;; ff8f

hFF90:
    ds 1                                               ;; ff90

hFF91:
    ds 1                                               ;; ff91

hFF92:
    ds 1                                               ;; ff92

hFF93:
    ds 1                                               ;; ff93

hFF94:
    ds 1                                               ;; ff94

hFF95:
    ds 3                                               ;; ff95

hFF98:
    ds 2                                               ;; ff98

hFF9A:
    ds 1                                               ;; ff9a

hFF9B:
    ds 1                                               ;; ff9b

hFF9C:
    ds 1                                               ;; ff9c

hFF9D:
    ds 1                                               ;; ff9d

hFF9E:
    ds 1                                               ;; ff9e

hFF9F:
    ds 8                                               ;; ff9f

hFFA7:
    ds 1                                               ;; ffa7

hFFA8:
    ds 1                                               ;; ffa8

hFFA9:
    ds 1                                               ;; ffa9

hFFAA:
    ds 1                                               ;; ffaa

hFFAB:
    ds 1                                               ;; ffab

hFFAC:
    ds 1                                               ;; ffac

hFFAD:
    ds 1                                               ;; ffad

hFFAE:
    ds 1                                               ;; ffae

hFFAF:
    ds 1                                               ;; ffaf

hFFB0:
    ds 1                                               ;; ffb0

hFFB1:
    ds 31                                              ;; ffb1

hFFD0:
    ds 16                                              ;; ffd0

hFFE0:
    ds 24                                              ;; ffe0

hFFF8:
    ds 5                                               ;; fff8

hFFFD:
    ds 2                                               ;; fffd

SECTION "vram", VRAM[$8000]
    ds 8192                                            ;; 8000

SECTION "sram", SRAM[$a000]
    ds 8192                                            ;; a000
