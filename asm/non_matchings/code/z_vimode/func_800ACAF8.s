glabel func_800ACAF8
/* B23C98 800ACAF8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B23C9C 800ACAFC AFBF0044 */  sw    $ra, 0x44($sp)
/* B23CA0 800ACB00 AFB00040 */  sw    $s0, 0x40($sp)
/* B23CA4 800ACB04 00808025 */  move  $s0, $a0
/* B23CA8 800ACB08 0C02B269 */  jal   func_800AC9A4
/* B23CAC 800ACB0C AFA5004C */   sw    $a1, 0x4c($sp)
/* B23CB0 800ACB10 8E020068 */  lw    $v0, 0x68($s0)
/* B23CB4 800ACB14 24010001 */  li    $at, 1
/* B23CB8 800ACB18 8FA5004C */  lw    $a1, 0x4c($sp)
/* B23CBC 800ACB1C 10410005 */  beq   $v0, $at, .L800ACB34
/* B23CC0 800ACB20 24010002 */   li    $at, 2
/* B23CC4 800ACB24 10410003 */  beq   $v0, $at, .L800ACB34
/* B23CC8 800ACB28 24010003 */   li    $at, 3
/* B23CCC 800ACB2C 144100C6 */  bne   $v0, $at, .L800ACE48
/* B23CD0 800ACB30 00000000 */   nop   
.L800ACB34:
/* B23CD4 800ACB34 8E0E0054 */  lw    $t6, 0x54($s0)
/* B23CD8 800ACB38 3C018013 */  lui   $at, %hi(D_8012D270) # $at, 0x8013
/* B23CDC 800ACB3C 02002025 */  move  $a0, $s0
/* B23CE0 800ACB40 AC2ED270 */  sw    $t6, %lo(D_8012D270)($at)
/* B23CE4 800ACB44 8E0F0050 */  lw    $t7, 0x50($s0)
/* B23CE8 800ACB48 3C018013 */  lui   $at, %hi(D_8012D274) # $at, 0x8013
/* B23CEC 800ACB4C AC2FD274 */  sw    $t7, %lo(D_8012D274)($at)
/* B23CF0 800ACB50 94A20000 */  lhu   $v0, ($a1)
/* B23CF4 800ACB54 2401EFF6 */  li    $at, -4106
/* B23CF8 800ACB58 0041C027 */  nor   $t8, $v0, $at
/* B23CFC 800ACB5C 57000006 */  bnezl $t8, .L800ACB78
/* B23D00 800ACB60 2401FFF7 */   li    $at, -9
/* B23D04 800ACB64 0C02B28A */  jal   func_800ACA28
/* B23D08 800ACB68 AFA5004C */   sw    $a1, 0x4c($sp)
/* B23D0C 800ACB6C 8FA5004C */  lw    $a1, 0x4c($sp)
/* B23D10 800ACB70 94A20000 */  lhu   $v0, ($a1)
/* B23D14 800ACB74 2401FFF7 */  li    $at, -9
.L800ACB78:
/* B23D18 800ACB78 0041C827 */  nor   $t9, $v0, $at
/* B23D1C 800ACB7C 1720001E */  bnez  $t9, .L800ACBF8
/* B23D20 800ACB80 2401FFFE */   li    $at, -2
/* B23D24 800ACB84 2404F7FF */  li    $a0, -2049
/* B23D28 800ACB88 00444827 */  nor   $t1, $v0, $a0
/* B23D2C 800ACB8C 15200005 */  bnez  $t1, .L800ACBA4
/* B23D30 800ACB90 2406FBFF */   li    $a2, -1025
/* B23D34 800ACB94 8E0A0064 */  lw    $t2, 0x64($s0)
/* B23D38 800ACB98 254BFFFF */  addiu $t3, $t2, -1
/* B23D3C 800ACB9C AE0B0064 */  sw    $t3, 0x64($s0)
/* B23D40 800ACBA0 94A20000 */  lhu   $v0, ($a1)
.L800ACBA4:
/* B23D44 800ACBA4 00466027 */  nor   $t4, $v0, $a2
/* B23D48 800ACBA8 15800005 */  bnez  $t4, .L800ACBC0
/* B23D4C 800ACBAC 2407FDFF */   li    $a3, -513
/* B23D50 800ACBB0 8E0D0064 */  lw    $t5, 0x64($s0)
/* B23D54 800ACBB4 25AE0001 */  addiu $t6, $t5, 1
/* B23D58 800ACBB8 AE0E0064 */  sw    $t6, 0x64($s0)
/* B23D5C 800ACBBC 94A20000 */  lhu   $v0, ($a1)
.L800ACBC0:
/* B23D60 800ACBC0 00477827 */  nor   $t7, $v0, $a3
/* B23D64 800ACBC4 15E00005 */  bnez  $t7, .L800ACBDC
/* B23D68 800ACBC8 2408FEFF */   li    $t0, -257
/* B23D6C 800ACBCC 8E18005C */  lw    $t8, 0x5c($s0)
/* B23D70 800ACBD0 2719FFFF */  addiu $t9, $t8, -1
/* B23D74 800ACBD4 AE19005C */  sw    $t9, 0x5c($s0)
/* B23D78 800ACBD8 94A20000 */  lhu   $v0, ($a1)
.L800ACBDC:
/* B23D7C 800ACBDC 00484827 */  nor   $t1, $v0, $t0
/* B23D80 800ACBE0 55200006 */  bnezl $t1, .L800ACBFC
/* B23D84 800ACBE4 00416027 */   nor   $t4, $v0, $at
/* B23D88 800ACBE8 8E0A005C */  lw    $t2, 0x5c($s0)
/* B23D8C 800ACBEC 254B0001 */  addiu $t3, $t2, 1
/* B23D90 800ACBF0 AE0B005C */  sw    $t3, 0x5c($s0)
/* B23D94 800ACBF4 94A20000 */  lhu   $v0, ($a1)
.L800ACBF8:
/* B23D98 800ACBF8 00416027 */  nor   $t4, $v0, $at
.L800ACBFC:
/* B23D9C 800ACBFC 2404F7FF */  li    $a0, -2049
/* B23DA0 800ACC00 2406FBFF */  li    $a2, -1025
/* B23DA4 800ACC04 2407FDFF */  li    $a3, -513
/* B23DA8 800ACC08 1580001D */  bnez  $t4, .L800ACC80
/* B23DAC 800ACC0C 2408FEFF */   li    $t0, -257
/* B23DB0 800ACC10 00446827 */  nor   $t5, $v0, $a0
/* B23DB4 800ACC14 55A00006 */  bnezl $t5, .L800ACC30
/* B23DB8 800ACC18 0046C027 */   nor   $t8, $v0, $a2
/* B23DBC 800ACC1C 8E0E0060 */  lw    $t6, 0x60($s0)
/* B23DC0 800ACC20 25CFFFFF */  addiu $t7, $t6, -1
/* B23DC4 800ACC24 AE0F0060 */  sw    $t7, 0x60($s0)
/* B23DC8 800ACC28 94A20000 */  lhu   $v0, ($a1)
/* B23DCC 800ACC2C 0046C027 */  nor   $t8, $v0, $a2
.L800ACC30:
/* B23DD0 800ACC30 57000006 */  bnezl $t8, .L800ACC4C
/* B23DD4 800ACC34 00475027 */   nor   $t2, $v0, $a3
/* B23DD8 800ACC38 8E190060 */  lw    $t9, 0x60($s0)
/* B23DDC 800ACC3C 27290001 */  addiu $t1, $t9, 1
/* B23DE0 800ACC40 AE090060 */  sw    $t1, 0x60($s0)
/* B23DE4 800ACC44 94A20000 */  lhu   $v0, ($a1)
/* B23DE8 800ACC48 00475027 */  nor   $t2, $v0, $a3
.L800ACC4C:
/* B23DEC 800ACC4C 55400006 */  bnezl $t2, .L800ACC68
/* B23DF0 800ACC50 00486827 */   nor   $t5, $v0, $t0
/* B23DF4 800ACC54 8E0B0058 */  lw    $t3, 0x58($s0)
/* B23DF8 800ACC58 256CFFFF */  addiu $t4, $t3, -1
/* B23DFC 800ACC5C AE0C0058 */  sw    $t4, 0x58($s0)
/* B23E00 800ACC60 94A20000 */  lhu   $v0, ($a1)
/* B23E04 800ACC64 00486827 */  nor   $t5, $v0, $t0
.L800ACC68:
/* B23E08 800ACC68 55A00006 */  bnezl $t5, .L800ACC84
/* B23E0C 800ACC6C 2401FFFB */   li    $at, -5
/* B23E10 800ACC70 8E0E0058 */  lw    $t6, 0x58($s0)
/* B23E14 800ACC74 25CF0001 */  addiu $t7, $t6, 1
/* B23E18 800ACC78 AE0F0058 */  sw    $t7, 0x58($s0)
/* B23E1C 800ACC7C 94A20000 */  lhu   $v0, ($a1)
.L800ACC80:
/* B23E20 800ACC80 2401FFFB */  li    $at, -5
.L800ACC84:
/* B23E24 800ACC84 0041C027 */  nor   $t8, $v0, $at
/* B23E28 800ACC88 5700001E */  bnezl $t8, .L800ACD04
/* B23E2C 800ACC8C 8E0C0068 */   lw    $t4, 0x68($s0)
/* B23E30 800ACC90 94A3000C */  lhu   $v1, 0xc($a1)
/* B23E34 800ACC94 0064C827 */  nor   $t9, $v1, $a0
/* B23E38 800ACC98 57200006 */  bnezl $t9, .L800ACCB4
/* B23E3C 800ACC9C 00664827 */   nor   $t1, $v1, $a2
/* B23E40 800ACCA0 8E020070 */  lw    $v0, 0x70($s0)
/* B23E44 800ACCA4 2C420001 */  sltiu $v0, $v0, 1
/* B23E48 800ACCA8 AE020070 */  sw    $v0, 0x70($s0)
/* B23E4C 800ACCAC 94A3000C */  lhu   $v1, 0xc($a1)
/* B23E50 800ACCB0 00664827 */  nor   $t1, $v1, $a2
.L800ACCB4:
/* B23E54 800ACCB4 55200006 */  bnezl $t1, .L800ACCD0
/* B23E58 800ACCB8 00675027 */   nor   $t2, $v1, $a3
/* B23E5C 800ACCBC 8E020074 */  lw    $v0, 0x74($s0)
/* B23E60 800ACCC0 2C420001 */  sltiu $v0, $v0, 1
/* B23E64 800ACCC4 AE020074 */  sw    $v0, 0x74($s0)
/* B23E68 800ACCC8 94A3000C */  lhu   $v1, 0xc($a1)
/* B23E6C 800ACCCC 00675027 */  nor   $t2, $v1, $a3
.L800ACCD0:
/* B23E70 800ACCD0 55400006 */  bnezl $t2, .L800ACCEC
/* B23E74 800ACCD4 00685827 */   nor   $t3, $v1, $t0
/* B23E78 800ACCD8 8E020078 */  lw    $v0, 0x78($s0)
/* B23E7C 800ACCDC 2C420001 */  sltiu $v0, $v0, 1
/* B23E80 800ACCE0 AE020078 */  sw    $v0, 0x78($s0)
/* B23E84 800ACCE4 94A3000C */  lhu   $v1, 0xc($a1)
/* B23E88 800ACCE8 00685827 */  nor   $t3, $v1, $t0
.L800ACCEC:
/* B23E8C 800ACCEC 55600005 */  bnezl $t3, .L800ACD04
/* B23E90 800ACCF0 8E0C0068 */   lw    $t4, 0x68($s0)
/* B23E94 800ACCF4 8E02007C */  lw    $v0, 0x7c($s0)
/* B23E98 800ACCF8 2C420001 */  sltiu $v0, $v0, 1
/* B23E9C 800ACCFC AE02007C */  sw    $v0, 0x7c($s0)
/* B23EA0 800ACD00 8E0C0068 */  lw    $t4, 0x68($s0)
.L800ACD04:
/* B23EA4 800ACD04 29810002 */  slti  $at, $t4, 2
/* B23EA8 800ACD08 5420001A */  bnezl $at, .L800ACD74
/* B23EAC 800ACD0C 8E0B005C */   lw    $t3, 0x5c($s0)
/* B23EB0 800ACD10 8E0D005C */  lw    $t5, 0x5c($s0)
/* B23EB4 800ACD14 240EFFF0 */  li    $t6, -16
/* B23EB8 800ACD18 2418FFCE */  li    $t8, -50
/* B23EBC 800ACD1C 29A1FFF0 */  slti  $at, $t5, -0x10
/* B23EC0 800ACD20 10200002 */  beqz  $at, .L800ACD2C
/* B23EC4 800ACD24 24090010 */   li    $t1, 16
/* B23EC8 800ACD28 AE0E005C */  sw    $t6, 0x5c($s0)
.L800ACD2C:
/* B23ECC 800ACD2C 8E0F0064 */  lw    $t7, 0x64($s0)
/* B23ED0 800ACD30 29E1FFCE */  slti  $at, $t7, -0x32
/* B23ED4 800ACD34 50200003 */  beql  $at, $zero, .L800ACD44
/* B23ED8 800ACD38 8E190058 */   lw    $t9, 0x58($s0)
/* B23EDC 800ACD3C AE180064 */  sw    $t8, 0x64($s0)
/* B23EE0 800ACD40 8E190058 */  lw    $t9, 0x58($s0)
.L800ACD44:
/* B23EE4 800ACD44 2B210011 */  slti  $at, $t9, 0x11
/* B23EE8 800ACD48 54200003 */  bnezl $at, .L800ACD58
/* B23EEC 800ACD4C 8E020060 */   lw    $v0, 0x60($s0)
/* B23EF0 800ACD50 AE090058 */  sw    $t1, 0x58($s0)
/* B23EF4 800ACD54 8E020060 */  lw    $v0, 0x60($s0)
.L800ACD58:
/* B23EF8 800ACD58 28410033 */  slti  $at, $v0, 0x33
/* B23EFC 800ACD5C 54200016 */  bnezl $at, .L800ACDB8
/* B23F00 800ACD60 8E0E0074 */   lw    $t6, 0x74($s0)
/* B23F04 800ACD64 24020032 */  li    $v0, 50
/* B23F08 800ACD68 10000012 */  b     .L800ACDB4
/* B23F0C 800ACD6C AE020060 */   sw    $v0, 0x60($s0)
/* B23F10 800ACD70 8E0B005C */  lw    $t3, 0x5c($s0)
.L800ACD74:
/* B23F14 800ACD74 05630003 */  bgezl $t3, .L800ACD84
/* B23F18 800ACD78 8E0C0064 */   lw    $t4, 0x64($s0)
/* B23F1C 800ACD7C AE00005C */  sw    $zero, 0x5c($s0)
/* B23F20 800ACD80 8E0C0064 */  lw    $t4, 0x64($s0)
.L800ACD84:
/* B23F24 800ACD84 05830003 */  bgezl $t4, .L800ACD94
/* B23F28 800ACD88 8E0D0058 */   lw    $t5, 0x58($s0)
/* B23F2C 800ACD8C AE000064 */  sw    $zero, 0x64($s0)
/* B23F30 800ACD90 8E0D0058 */  lw    $t5, 0x58($s0)
.L800ACD94:
/* B23F34 800ACD94 59A00003 */  blezl $t5, .L800ACDA4
/* B23F38 800ACD98 8E020060 */   lw    $v0, 0x60($s0)
/* B23F3C 800ACD9C AE000058 */  sw    $zero, 0x58($s0)
/* B23F40 800ACDA0 8E020060 */  lw    $v0, 0x60($s0)
.L800ACDA4:
/* B23F44 800ACDA4 58400004 */  blezl $v0, .L800ACDB8
/* B23F48 800ACDA8 8E0E0074 */   lw    $t6, 0x74($s0)
/* B23F4C 800ACDAC AE000060 */  sw    $zero, 0x60($s0)
/* B23F50 800ACDB0 00001025 */  move  $v0, $zero
.L800ACDB4:
/* B23F54 800ACDB4 8E0E0074 */  lw    $t6, 0x74($s0)
.L800ACDB8:
/* B23F58 800ACDB8 8E070070 */  lw    $a3, 0x70($s0)
/* B23F5C 800ACDBC 3C068000 */  lui   $a2, %hi(D_80000300) # $a2, 0x8000
/* B23F60 800ACDC0 AFAE0010 */  sw    $t6, 0x10($sp)
/* B23F64 800ACDC4 8E0F0078 */  lw    $t7, 0x78($s0)
/* B23F68 800ACDC8 8CC60300 */  lw    $a2, %lo(D_80000300)($a2)
/* B23F6C 800ACDCC 02002025 */  move  $a0, $s0
/* B23F70 800ACDD0 AFAF0014 */  sw    $t7, 0x14($sp)
/* B23F74 800ACDD4 8E18007C */  lw    $t8, 0x7c($s0)
/* B23F78 800ACDD8 2405001C */  li    $a1, 28
/* B23F7C 800ACDDC AFB80018 */  sw    $t8, 0x18($sp)
/* B23F80 800ACDE0 8E190054 */  lw    $t9, 0x54($s0)
/* B23F84 800ACDE4 AFB9001C */  sw    $t9, 0x1c($sp)
/* B23F88 800ACDE8 8E090050 */  lw    $t1, 0x50($s0)
/* B23F8C 800ACDEC AFA90020 */  sw    $t1, 0x20($sp)
/* B23F90 800ACDF0 8E0A005C */  lw    $t2, 0x5c($s0)
/* B23F94 800ACDF4 AFAA0024 */  sw    $t2, 0x24($sp)
/* B23F98 800ACDF8 8E0B0058 */  lw    $t3, 0x58($s0)
/* B23F9C 800ACDFC AFAB0028 */  sw    $t3, 0x28($sp)
/* B23FA0 800ACE00 8E0C0064 */  lw    $t4, 0x64($s0)
/* B23FA4 800ACE04 AFA20030 */  sw    $v0, 0x30($sp)
/* B23FA8 800ACE08 0C02B0BD */  jal   func_800AC2F4
/* B23FAC 800ACE0C AFAC002C */   sw    $t4, 0x2c($sp)
/* B23FB0 800ACE10 02002025 */  move  $a0, $s0
/* B23FB4 800ACE14 0C02B2A6 */  jal   func_800ACA98
/* B23FB8 800ACE18 8E050080 */   lw    $a1, 0x80($s0)
/* B23FBC 800ACE1C 8E0D0068 */  lw    $t5, 0x68($s0)
/* B23FC0 800ACE20 24010003 */  li    $at, 3
/* B23FC4 800ACE24 3C048001 */  lui   $a0, %hi(D_8000AE00) # $a0, 0x8001
/* B23FC8 800ACE28 15A10007 */  bne   $t5, $at, .L800ACE48
/* B23FCC 800ACE2C 00000000 */   nop   
/* B23FD0 800ACE30 0C02B00C */  jal   func_800AC030
/* B23FD4 800ACE34 2484AE00 */   addiu $a0, %lo(D_8000AE00) # addiu $a0, $a0, -0x5200
/* B23FD8 800ACE38 0C02B00C */  jal   func_800AC030
/* B23FDC 800ACE3C 02002025 */   move  $a0, $s0
/* B23FE0 800ACE40 240E0002 */  li    $t6, 2
/* B23FE4 800ACE44 AE0E0068 */  sw    $t6, 0x68($s0)
.L800ACE48:
/* B23FE8 800ACE48 0C02B227 */  jal   func_800AC89C
/* B23FEC 800ACE4C 02002025 */   move  $a0, $s0
/* B23FF0 800ACE50 8FBF0044 */  lw    $ra, 0x44($sp)
/* B23FF4 800ACE54 8FB00040 */  lw    $s0, 0x40($sp)
/* B23FF8 800ACE58 27BD0048 */  addiu $sp, $sp, 0x48
/* B23FFC 800ACE5C 03E00008 */  jr    $ra
/* B24000 800ACE60 00000000 */   nop   
