glabel func_8008FCC8
/* B06E68 8008FCC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B06E6C 8008FCCC AFB10028 */  sw    $s1, 0x28($sp)
/* B06E70 8008FCD0 24010001 */  li    $at, 1
/* B06E74 8008FCD4 00E08825 */  move  $s1, $a3
/* B06E78 8008FCD8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B06E7C 8008FCDC 14A10057 */  bne   $a1, $at, .L8008FE3C
/* B06E80 8008FCE0 AFB00024 */   sw    $s0, 0x24($sp)
/* B06E84 8008FCE4 8FB00044 */  lw    $s0, 0x44($sp)
/* B06E88 8008FCE8 3C018016 */  lui   $at, %hi(D_80160014) # $at, 0x8016
/* B06E8C 8008FCEC 3C198016 */  lui   $t9, %hi(gSaveContext+4) # $t9, 0x8016
/* B06E90 8008FCF0 920E015C */  lbu   $t6, 0x15c($s0)
/* B06E94 8008FCF4 8F39E664 */  lw    $t9, %lo(gSaveContext+4)($t9)
/* B06E98 8008FCF8 261808FC */  addiu $t8, $s0, 0x8fc
/* B06E9C 8008FCFC AC2E0014 */  sw    $t6, %lo(D_80160014)($at)
/* B06EA0 8008FD00 920F015D */  lbu   $t7, 0x15d($s0)
/* B06EA4 8008FD04 3C018016 */  lui   $at, %hi(D_80160018) # $at, 0x8016
/* B06EA8 8008FD08 AC2F0018 */  sw    $t7, %lo(D_80160018)($at)
/* B06EAC 8008FD0C 3C018016 */  lui   $at, %hi(D_80160000)
/* B06EB0 8008FD10 1320001B */  beqz  $t9, .L8008FD80
/* B06EB4 8008FD14 AC380000 */   sw    $t8, ($at)
/* B06EB8 8008FD18 920201E9 */  lbu   $v0, 0x1e9($s0)
/* B06EBC 8008FD1C 3C018014 */  lui   $at, %hi(D_8013E90C)
/* B06EC0 8008FD20 30430004 */  andi  $v1, $v0, 4
/* B06EC4 8008FD24 10600003 */  beqz  $v1, .L8008FD34
/* B06EC8 8008FD28 30480001 */   andi  $t0, $v0, 1
/* B06ECC 8008FD2C 1100000B */  beqz  $t0, .L8008FD5C
/* B06ED0 8008FD30 00000000 */   nop   
.L8008FD34:
/* B06ED4 8008FD34 C420E90C */  lwc1  $f0, %lo(D_8013E90C)($at)
/* B06ED8 8008FD38 C6240000 */  lwc1  $f4, ($s1)
/* B06EDC 8008FD3C C6280008 */  lwc1  $f8, 8($s1)
/* B06EE0 8008FD40 46002182 */  mul.s $f6, $f4, $f0
/* B06EE4 8008FD44 00000000 */  nop   
/* B06EE8 8008FD48 46004282 */  mul.s $f10, $f8, $f0
/* B06EEC 8008FD4C E6260000 */  swc1  $f6, ($s1)
/* B06EF0 8008FD50 E62A0008 */  swc1  $f10, 8($s1)
/* B06EF4 8008FD54 920201E9 */  lbu   $v0, 0x1e9($s0)
/* B06EF8 8008FD58 30430004 */  andi  $v1, $v0, 4
.L8008FD5C:
/* B06EFC 8008FD5C 3C018014 */  lui   $at, %hi(D_8013E910)
/* B06F00 8008FD60 10600004 */  beqz  $v1, .L8008FD74
/* B06F04 8008FD64 C420E910 */   lwc1  $f0, %lo(D_8013E910)($at)
/* B06F08 8008FD68 30490002 */  andi  $t1, $v0, 2
/* B06F0C 8008FD6C 51200005 */  beql  $t1, $zero, .L8008FD84
/* B06F10 8008FD70 C6240004 */   lwc1  $f4, 4($s1)
.L8008FD74:
/* B06F14 8008FD74 C6300004 */  lwc1  $f16, 4($s1)
/* B06F18 8008FD78 46008482 */  mul.s $f18, $f16, $f0
/* B06F1C 8008FD7C E6320004 */  swc1  $f18, 4($s1)
.L8008FD80:
/* B06F20 8008FD80 C6240004 */  lwc1  $f4, 4($s1)
.L8008FD84:
/* B06F24 8008FD84 C60606C4 */  lwc1  $f6, 0x6c4($s0)
/* B06F28 8008FD88 46062201 */  sub.s $f8, $f4, $f6
/* B06F2C 8008FD8C E6280004 */  swc1  $f8, 4($s1)
/* B06F30 8008FD90 860406C2 */  lh    $a0, 0x6c2($s0)
/* B06F34 8008FD94 5080009A */  beql  $a0, $zero, .L80090000
/* B06F38 8008FD98 00001025 */   move  $v0, $zero
/* B06F3C 8008FD9C 0C01DE0D */  jal   Math_Coss
/* B06F40 8008FDA0 00000000 */   nop   
/* B06F44 8008FDA4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B06F48 8008FDA8 44815000 */  mtc1  $at, $f10
/* B06F4C 8008FDAC 3C014348 */  li    $at, 0x43480000 # 0.000000
/* B06F50 8008FDB0 44819000 */  mtc1  $at, $f18
/* B06F54 8008FDB4 460A0401 */  sub.s $f16, $f0, $f10
/* B06F58 8008FDB8 C6260004 */  lwc1  $f6, 4($s1)
/* B06F5C 8008FDBC C62C0000 */  lwc1  $f12, ($s1)
/* B06F60 8008FDC0 8E260008 */  lw    $a2, 8($s1)
/* B06F64 8008FDC4 46128102 */  mul.s $f4, $f16, $f18
/* B06F68 8008FDC8 24070001 */  li    $a3, 1
/* B06F6C 8008FDCC 0C034261 */  jal   func_800D0984
/* B06F70 8008FDD0 46062380 */   add.s $f14, $f4, $f6
/* B06F74 8008FDD4 860A06C2 */  lh    $t2, 0x6c2($s0)
/* B06F78 8008FDD8 3C018014 */  lui   $at, %hi(D_8013E914)
/* B06F7C 8008FDDC C430E914 */  lwc1  $f16, %lo(D_8013E914)($at)
/* B06F80 8008FDE0 448A4000 */  mtc1  $t2, $f8
/* B06F84 8008FDE4 24050001 */  li    $a1, 1
/* B06F88 8008FDE8 468042A0 */  cvt.s.w $f10, $f8
/* B06F8C 8008FDEC 46105302 */  mul.s $f12, $f10, $f16
/* B06F90 8008FDF0 0C0342DC */  jal   func_800D0B70
/* B06F94 8008FDF4 00000000 */   nop   
/* B06F98 8008FDF8 8FA20040 */  lw    $v0, 0x40($sp)
/* B06F9C 8008FDFC 24070001 */  li    $a3, 1
/* B06FA0 8008FE00 84440000 */  lh    $a0, ($v0)
/* B06FA4 8008FE04 84450002 */  lh    $a1, 2($v0)
/* B06FA8 8008FE08 0C034421 */  jal   func_800D1084
/* B06FAC 8008FE0C 84460004 */   lh    $a2, 4($v0)
/* B06FB0 8008FE10 8FA20040 */  lw    $v0, 0x40($sp)
/* B06FB4 8008FE14 44800000 */  mtc1  $zero, $f0
/* B06FB8 8008FE18 00000000 */  nop   
/* B06FBC 8008FE1C E6200008 */  swc1  $f0, 8($s1)
/* B06FC0 8008FE20 E6200004 */  swc1  $f0, 4($s1)
/* B06FC4 8008FE24 E6200000 */  swc1  $f0, ($s1)
/* B06FC8 8008FE28 A4400004 */  sh    $zero, 4($v0)
/* B06FCC 8008FE2C 84430004 */  lh    $v1, 4($v0)
/* B06FD0 8008FE30 A4430002 */  sh    $v1, 2($v0)
/* B06FD4 8008FE34 10000071 */  b     .L8008FFFC
/* B06FD8 8008FE38 A4430000 */   sh    $v1, ($v0)
.L8008FE3C:
/* B06FDC 8008FE3C 8CCB0000 */  lw    $t3, ($a2)
/* B06FE0 8008FE40 3C028016 */  lui   $v0, %hi(D_80160000)
/* B06FE4 8008FE44 24420000 */  addiu $v0, %lo(D_80160000)
/* B06FE8 8008FE48 11600004 */  beqz  $t3, .L8008FE5C
/* B06FEC 8008FE4C 2401000B */   li    $at, 11
/* B06FF0 8008FE50 8C4C0000 */  lw    $t4, ($v0)
/* B06FF4 8008FE54 258D000C */  addiu $t5, $t4, 0xc
/* B06FF8 8008FE58 AC4D0000 */  sw    $t5, ($v0)
.L8008FE5C:
/* B06FFC 8008FE5C 14A1000F */  bne   $a1, $at, .L8008FE9C
/* B07000 8008FE60 8FA20040 */   lw    $v0, 0x40($sp)
/* B07004 8008FE64 8FB00044 */  lw    $s0, 0x44($sp)
/* B07008 8008FE68 844E0000 */  lh    $t6, ($v0)
/* B0700C 8008FE6C 84590002 */  lh    $t9, 2($v0)
/* B07010 8008FE70 860F06BA */  lh    $t7, 0x6ba($s0)
/* B07014 8008FE74 844A0004 */  lh    $t2, 4($v0)
/* B07018 8008FE78 01CFC021 */  addu  $t8, $t6, $t7
/* B0701C 8008FE7C A4580000 */  sh    $t8, ($v0)
/* B07020 8008FE80 860806B8 */  lh    $t0, 0x6b8($s0)
/* B07024 8008FE84 03284823 */  subu  $t1, $t9, $t0
/* B07028 8008FE88 A4490002 */  sh    $t1, 2($v0)
/* B0702C 8008FE8C 860B06B6 */  lh    $t3, 0x6b6($s0)
/* B07030 8008FE90 014B6021 */  addu  $t4, $t2, $t3
/* B07034 8008FE94 10000059 */  b     .L8008FFFC
/* B07038 8008FE98 A44C0004 */   sh    $t4, 4($v0)
.L8008FE9C:
/* B0703C 8008FE9C 2401000A */  li    $at, 10
/* B07040 8008FEA0 14A10034 */  bne   $a1, $at, .L8008FF74
/* B07044 8008FEA4 8FB00044 */   lw    $s0, 0x44($sp)
/* B07048 8008FEA8 860D06B0 */  lh    $t5, 0x6b0($s0)
/* B0704C 8008FEAC 3C018014 */  lui   $at, %hi(D_8013E918)
/* B07050 8008FEB0 24050001 */  li    $a1, 1
/* B07054 8008FEB4 51A0000D */  beql  $t5, $zero, .L8008FEEC
/* B07058 8008FEB8 860206BE */   lh    $v0, 0x6be($s0)
/* B0705C 8008FEBC 0C0343B5 */  jal   func_800D0ED4
/* B07060 8008FEC0 C42CE918 */   lwc1  $f12, %lo(D_8013E918)($at)
/* B07064 8008FEC4 860E06B0 */  lh    $t6, 0x6b0($s0)
/* B07068 8008FEC8 3C018014 */  lui   $at, %hi(D_8013E91C)
/* B0706C 8008FECC C426E91C */  lwc1  $f6, %lo(D_8013E91C)($at)
/* B07070 8008FED0 448E9000 */  mtc1  $t6, $f18
/* B07074 8008FED4 24050001 */  li    $a1, 1
/* B07078 8008FED8 46809120 */  cvt.s.w $f4, $f18
/* B0707C 8008FEDC 46062302 */  mul.s $f12, $f4, $f6
/* B07080 8008FEE0 0C034348 */  jal   func_800D0D20
/* B07084 8008FEE4 00000000 */   nop   
/* B07088 8008FEE8 860206BE */  lh    $v0, 0x6be($s0)
.L8008FEEC:
/* B0708C 8008FEEC 5040000A */  beql  $v0, $zero, .L8008FF18
/* B07090 8008FEF0 860206BC */   lh    $v0, 0x6bc($s0)
/* B07094 8008FEF4 44824000 */  mtc1  $v0, $f8
/* B07098 8008FEF8 3C018014 */  lui   $at, %hi(D_8013E920)
/* B0709C 8008FEFC C430E920 */  lwc1  $f16, %lo(D_8013E920)($at)
/* B070A0 8008FF00 468042A0 */  cvt.s.w $f10, $f8
/* B070A4 8008FF04 24050001 */  li    $a1, 1
/* B070A8 8008FF08 46105302 */  mul.s $f12, $f10, $f16
/* B070AC 8008FF0C 0C034348 */  jal   func_800D0D20
/* B070B0 8008FF10 00000000 */   nop   
/* B070B4 8008FF14 860206BC */  lh    $v0, 0x6bc($s0)
.L8008FF18:
/* B070B8 8008FF18 5040000A */  beql  $v0, $zero, .L8008FF44
/* B070BC 8008FF1C 860206C0 */   lh    $v0, 0x6c0($s0)
/* B070C0 8008FF20 44829000 */  mtc1  $v0, $f18
/* B070C4 8008FF24 3C018014 */  lui   $at, %hi(D_8013E924)
/* B070C8 8008FF28 C426E924 */  lwc1  $f6, %lo(D_8013E924)($at)
/* B070CC 8008FF2C 46809120 */  cvt.s.w $f4, $f18
/* B070D0 8008FF30 24050001 */  li    $a1, 1
/* B070D4 8008FF34 46062302 */  mul.s $f12, $f4, $f6
/* B070D8 8008FF38 0C0342DC */  jal   func_800D0B70
/* B070DC 8008FF3C 00000000 */   nop   
/* B070E0 8008FF40 860206C0 */  lh    $v0, 0x6c0($s0)
.L8008FF44:
/* B070E4 8008FF44 5040002E */  beql  $v0, $zero, .L80090000
/* B070E8 8008FF48 00001025 */   move  $v0, $zero
/* B070EC 8008FF4C 44824000 */  mtc1  $v0, $f8
/* B070F0 8008FF50 3C018014 */  lui   $at, %hi(D_8013E928)
/* B070F4 8008FF54 C430E928 */  lwc1  $f16, %lo(D_8013E928)($at)
/* B070F8 8008FF58 468042A0 */  cvt.s.w $f10, $f8
/* B070FC 8008FF5C 24050001 */  li    $a1, 1
/* B07100 8008FF60 46105302 */  mul.s $f12, $f10, $f16
/* B07104 8008FF64 0C0343B5 */  jal   func_800D0ED4
/* B07108 8008FF68 00000000 */   nop   
/* B0710C 8008FF6C 10000024 */  b     .L80090000
/* B07110 8008FF70 00001025 */   move  $v0, $zero
.L8008FF74:
/* B07114 8008FF74 24010007 */  li    $at, 7
/* B07118 8008FF78 14A1000E */  bne   $a1, $at, .L8008FFB4
/* B0711C 8008FF7C 8FA20040 */   lw    $v0, 0x40($sp)
/* B07120 8008FF80 8FA50044 */  lw    $a1, 0x44($sp)
/* B07124 8008FF84 240F0007 */  li    $t7, 7
/* B07128 8008FF88 24180008 */  li    $t8, 8
/* B0712C 8008FF8C 24190009 */  li    $t9, 9
/* B07130 8008FF90 AFB9001C */  sw    $t9, 0x1c($sp)
/* B07134 8008FF94 AFB80018 */  sw    $t8, 0x18($sp)
/* B07138 8008FF98 AFAF0014 */  sw    $t7, 0x14($sp)
/* B0713C 8008FF9C 02203825 */  move  $a3, $s1
/* B07140 8008FFA0 AFA20010 */  sw    $v0, 0x10($sp)
/* B07144 8008FFA4 0C023E1F */  jal   func_8008F87C
/* B07148 8008FFA8 24A601B4 */   addiu $a2, $a1, 0x1b4
/* B0714C 8008FFAC 10000014 */  b     .L80090000
/* B07150 8008FFB0 00001025 */   move  $v0, $zero
.L8008FFB4:
/* B07154 8008FFB4 24010004 */  li    $at, 4
/* B07158 8008FFB8 14A1000E */  bne   $a1, $at, .L8008FFF4
/* B0715C 8008FFBC 8FA20040 */   lw    $v0, 0x40($sp)
/* B07160 8008FFC0 8FA50044 */  lw    $a1, 0x44($sp)
/* B07164 8008FFC4 24080004 */  li    $t0, 4
/* B07168 8008FFC8 24090005 */  li    $t1, 5
/* B0716C 8008FFCC 240A0006 */  li    $t2, 6
/* B07170 8008FFD0 AFAA001C */  sw    $t2, 0x1c($sp)
/* B07174 8008FFD4 AFA90018 */  sw    $t1, 0x18($sp)
/* B07178 8008FFD8 AFA80014 */  sw    $t0, 0x14($sp)
/* B0717C 8008FFDC 02203825 */  move  $a3, $s1
/* B07180 8008FFE0 AFA20010 */  sw    $v0, 0x10($sp)
/* B07184 8008FFE4 0C023E1F */  jal   func_8008F87C
/* B07188 8008FFE8 24A601B4 */   addiu $a2, $a1, 0x1b4
/* B0718C 8008FFEC 10000004 */  b     .L80090000
/* B07190 8008FFF0 00001025 */   move  $v0, $zero
.L8008FFF4:
/* B07194 8008FFF4 10000002 */  b     .L80090000
/* B07198 8008FFF8 00001025 */   move  $v0, $zero
.L8008FFFC:
/* B0719C 8008FFFC 00001025 */  move  $v0, $zero
.L80090000:
/* B071A0 80090000 8FBF002C */  lw    $ra, 0x2c($sp)
/* B071A4 80090004 8FB00024 */  lw    $s0, 0x24($sp)
/* B071A8 80090008 8FB10028 */  lw    $s1, 0x28($sp)
/* B071AC 8009000C 03E00008 */  jr    $ra
/* B071B0 80090010 27BD0030 */   addiu $sp, $sp, 0x30

/* B071B4 80090014 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B071B8 80090018 AFB00020 */  sw    $s0, 0x20($sp)
/* B071BC 8009001C 8FB0003C */  lw    $s0, 0x3c($sp)
/* B071C0 80090020 8FAE0038 */  lw    $t6, 0x38($sp)
/* B071C4 80090024 AFBF0024 */  sw    $ra, 0x24($sp)
/* B071C8 80090028 AFA5002C */  sw    $a1, 0x2c($sp)
/* B071CC 8009002C AFA60030 */  sw    $a2, 0x30($sp)
/* B071D0 80090030 AFB00014 */  sw    $s0, 0x14($sp)
/* B071D4 80090034 0C023F32 */  jal   func_8008FCC8
/* B071D8 80090038 AFAE0010 */   sw    $t6, 0x10($sp)
/* B071DC 8009003C 8FA5002C */  lw    $a1, 0x2c($sp)
/* B071E0 80090040 144000A6 */  bnez  $v0, .L800902DC
/* B071E4 80090044 8FA60030 */   lw    $a2, 0x30($sp)
/* B071E8 80090048 24070010 */  li    $a3, 16
/* B071EC 8009004C 14A70043 */  bne   $a1, $a3, .L8009015C
/* B071F0 80090050 24040013 */   li    $a0, 19
/* B071F4 80090054 3C048016 */  lui   $a0, %hi(D_80160014)
/* B071F8 80090058 24840014 */  addiu $a0, %lo(D_80160014) # addiu $a0, $a0, 0x14
/* B071FC 8009005C 8C830000 */  lw    $v1, ($a0)
/* B07200 80090060 24010004 */  li    $at, 4
/* B07204 80090064 8E020164 */  lw    $v0, 0x164($s0)
/* B07208 80090068 14610011 */  bne   $v1, $at, .L800900B0
/* B0720C 8009006C 3C058016 */   lui   $a1, %hi(gSaveContext)
/* B07210 80090070 24A5E660 */  addiu $a1, %lo(gSaveContext)
/* B07214 80090074 94AF0036 */  lhu   $t7, 0x36($a1)
/* B07218 80090078 44802000 */  mtc1  $zero, $f4
/* B0721C 8009007C 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B07220 80090080 448F3000 */  mtc1  $t7, $f6
/* B07224 80090084 05E10004 */  bgez  $t7, .L80090098
/* B07228 80090088 46803220 */   cvt.s.w $f8, $f6
/* B0722C 8009008C 44815000 */  mtc1  $at, $f10
/* B07230 80090090 00000000 */  nop   
/* B07234 80090094 460A4200 */  add.s $f8, $f8, $f10
.L80090098:
/* B07238 80090098 4604403E */  c.le.s $f8, $f4
/* B0723C 8009009C 00000000 */  nop   
/* B07240 800900A0 45000003 */  bc1f  .L800900B0
/* B07244 800900A4 00000000 */   nop   
/* B07248 800900A8 10000025 */  b     .L80090140
/* B0724C 800900AC 24420010 */   addiu $v0, $v0, 0x10
.L800900B0:
/* B07250 800900B0 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07254 800900B4 24010006 */  li    $at, 6
/* B07258 800900B8 1461000C */  bne   $v1, $at, .L800900EC
/* B0725C 800900BC 24A5E660 */   addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B07260 800900C0 8E18067C */  lw    $t8, 0x67c($s0)
/* B07264 800900C4 3C0A8012 */  lui   $t2, %hi(D_80125E08) # $t2, 0x8012
/* B07268 800900C8 0018C980 */  sll   $t9, $t8, 6
/* B0726C 800900CC 07230008 */  bgezl $t9, .L800900F0
/* B07270 800900D0 920B015C */   lbu   $t3, 0x15c($s0)
/* B07274 800900D4 8CA80004 */  lw    $t0, 4($a1)
/* B07278 800900D8 254A5E08 */  addiu $t2, %lo(D_80125E08) # addiu $t2, $t2, 0x5e08
/* B0727C 800900DC AC800000 */  sw    $zero, ($a0)
/* B07280 800900E0 00084880 */  sll   $t1, $t0, 2
/* B07284 800900E4 10000016 */  b     .L80090140
/* B07288 800900E8 012A1021 */   addu  $v0, $t1, $t2
.L800900EC:
/* B0728C 800900EC 920B015C */  lbu   $t3, 0x15c($s0)
.L800900F0:
/* B07290 800900F0 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B07294 800900F4 15600012 */  bnez  $t3, .L80090140
/* B07298 800900F8 00000000 */   nop   
/* B0729C 800900FC 44818000 */  mtc1  $at, $f16
/* B072A0 80090100 C6120068 */  lwc1  $f18, 0x68($s0)
/* B072A4 80090104 4612803C */  c.lt.s $f16, $f18
/* B072A8 80090108 00000000 */  nop   
/* B072AC 8009010C 4500000C */  bc1f  .L80090140
/* B072B0 80090110 00000000 */   nop   
/* B072B4 80090114 8E0C067C */  lw    $t4, 0x67c($s0)
/* B072B8 80090118 3C188012 */  lui   $t8, %hi(D_80125E18) # $t8, 0x8012
/* B072BC 8009011C 27185E18 */  addiu $t8, %lo(D_80125E18) # addiu $t8, $t8, 0x5e18
/* B072C0 80090120 000C6900 */  sll   $t5, $t4, 4
/* B072C4 80090124 05A00006 */  bltz  $t5, .L80090140
/* B072C8 80090128 00000000 */   nop   
/* B072CC 8009012C 8CAE0004 */  lw    $t6, 4($a1)
/* B072D0 80090130 24190001 */  li    $t9, 1
/* B072D4 80090134 AC990000 */  sw    $t9, ($a0)
/* B072D8 80090138 000E7880 */  sll   $t7, $t6, 2
/* B072DC 8009013C 01F81021 */  addu  $v0, $t7, $t8
.L80090140:
/* B072E0 80090140 3C088016 */  lui   $t0, %hi(D_80160004) # $t0, 0x8016
/* B072E4 80090144 8D080004 */  lw    $t0, %lo(D_80160004)($t0)
/* B072E8 80090148 00084880 */  sll   $t1, $t0, 2
/* B072EC 8009014C 00495021 */  addu  $t2, $v0, $t1
/* B072F0 80090150 8D4B0000 */  lw    $t3, ($t2)
/* B072F4 80090154 10000061 */  b     .L800902DC
/* B072F8 80090158 ACCB0000 */   sw    $t3, ($a2)
.L8009015C:
/* B072FC 8009015C 14A40029 */  bne   $a1, $a0, .L80090204
/* B07300 80090160 24010014 */   li    $at, 20
/* B07304 80090164 3C038016 */  lui   $v1, %hi(D_80160018) # $v1, 0x8016
/* B07308 80090168 24630018 */  addiu $v1, %lo(D_80160018) # addiu $v1, $v1, 0x18
/* B0730C 8009016C 8C6C0000 */  lw    $t4, ($v1)
/* B07310 80090170 2401000A */  li    $at, 10
/* B07314 80090174 8E020160 */  lw    $v0, 0x160($s0)
/* B07318 80090178 55810006 */  bnel  $t4, $at, .L80090194
/* B0731C 8009017C 920F015D */   lbu   $t7, 0x15d($s0)
/* B07320 80090180 820D014E */  lb    $t5, 0x14e($s0)
/* B07324 80090184 000D7100 */  sll   $t6, $t5, 4
/* B07328 80090188 10000017 */  b     .L800901E8
/* B0732C 8009018C 004E1021 */   addu  $v0, $v0, $t6
/* B07330 80090190 920F015D */  lbu   $t7, 0x15d($s0)
.L80090194:
/* B07334 80090194 24010008 */  li    $at, 8
/* B07338 80090198 15E10013 */  bne   $t7, $at, .L800901E8
/* B0733C 8009019C 3C014000 */   li    $at, 0x40000000 # 0.000000
/* B07340 800901A0 44813000 */  mtc1  $at, $f6
/* B07344 800901A4 C60A0068 */  lwc1  $f10, 0x68($s0)
/* B07348 800901A8 460A303C */  c.lt.s $f6, $f10
/* B0734C 800901AC 00000000 */  nop   
/* B07350 800901B0 4500000D */  bc1f  .L800901E8
/* B07354 800901B4 00000000 */   nop   
/* B07358 800901B8 8E18067C */  lw    $t8, 0x67c($s0)
/* B0735C 800901BC 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07360 800901C0 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B07364 800901C4 0018C900 */  sll   $t9, $t8, 4
/* B07368 800901C8 07200007 */  bltz  $t9, .L800901E8
/* B0736C 800901CC 3C0A8012 */   lui   $t2, %hi(D_80125E58) # $t2, 0x8012
/* B07370 800901D0 8CA80004 */  lw    $t0, 4($a1)
/* B07374 800901D4 254A5E58 */  addiu $t2, %lo(D_80125E58) # addiu $t2, $t2, 0x5e58
/* B07378 800901D8 240B0009 */  li    $t3, 9
/* B0737C 800901DC 00084880 */  sll   $t1, $t0, 2
/* B07380 800901E0 012A1021 */  addu  $v0, $t1, $t2
/* B07384 800901E4 AC6B0000 */  sw    $t3, ($v1)
.L800901E8:
/* B07388 800901E8 3C0C8016 */  lui   $t4, %hi(D_80160004) # $t4, 0x8016
/* B0738C 800901EC 8D8C0004 */  lw    $t4, %lo(D_80160004)($t4)
/* B07390 800901F0 000C6880 */  sll   $t5, $t4, 2
/* B07394 800901F4 004D7021 */  addu  $t6, $v0, $t5
/* B07398 800901F8 8DCF0000 */  lw    $t7, ($t6)
/* B0739C 800901FC 10000037 */  b     .L800902DC
/* B073A0 80090200 ACCF0000 */   sw    $t7, ($a2)
.L80090204:
/* B073A4 80090204 14A1002C */  bne   $a1, $at, .L800902B8
/* B073A8 80090208 3C0B8016 */   lui   $t3, %hi(D_80160004) # $t3, 0x8016
/* B073AC 8009020C 9202015E */  lbu   $v0, 0x15e($s0)
/* B073B0 80090210 24010012 */  li    $at, 18
/* B073B4 80090214 8E030168 */  lw    $v1, 0x168($s0)
/* B073B8 80090218 10410003 */  beq   $v0, $at, .L80090228
/* B073BC 8009021C 3C058016 */   lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B073C0 80090220 14820010 */  bne   $a0, $v0, .L80090264
/* B073C4 80090224 00000000 */   nop   
.L80090228:
/* B073C8 80090228 8202014E */  lb    $v0, 0x14e($s0)
/* B073CC 8009022C 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B073D0 80090230 8CB90004 */  lw    $t9, 4($a1)
/* B073D4 80090234 0002C100 */  sll   $t8, $v0, 4
/* B073D8 80090238 00781821 */  addu  $v1, $v1, $t8
/* B073DC 8009023C 13200018 */  beqz  $t9, .L800902A0
/* B073E0 80090240 28410002 */   slti  $at, $v0, 2
/* B073E4 80090244 10200016 */  beqz  $at, .L800902A0
/* B073E8 80090248 00000000 */   nop   
/* B073EC 8009024C 90A80068 */  lbu   $t0, 0x68($a1)
/* B073F0 80090250 2401003B */  li    $at, 59
/* B073F4 80090254 11010012 */  beq   $t0, $at, .L800902A0
/* B073F8 80090258 00000000 */   nop   
/* B073FC 8009025C 10000010 */  b     .L800902A0
/* B07400 80090260 24630040 */   addiu $v1, $v1, 0x40
.L80090264:
/* B07404 80090264 3C058016 */  lui   $a1, %hi(gSaveContext) # $a1, 0x8016
/* B07408 80090268 24A5E660 */  addiu $a1, %lo(gSaveContext) # addiu $a1, $a1, -0x19a0
/* B0740C 8009026C 8CA90004 */  lw    $t1, 4($a1)
/* B07410 80090270 1120000B */  beqz  $t1, .L800902A0
/* B07414 80090274 00000000 */   nop   
/* B07418 80090278 10E20003 */  beq   $a3, $v0, .L80090288
/* B0741C 8009027C 24010011 */   li    $at, 17
/* B07420 80090280 14410007 */  bne   $v0, $at, .L800902A0
/* B07424 80090284 00000000 */   nop   
.L80090288:
/* B07428 80090288 90AA0068 */  lbu   $t2, 0x68($a1)
/* B0742C 8009028C 2401003B */  li    $at, 59
/* B07430 80090290 11410003 */  beq   $t2, $at, .L800902A0
/* B07434 80090294 00000000 */   nop   
/* B07438 80090298 3C038012 */  lui   $v1, %hi(D_80125D68) # $v1, 0x8012
/* B0743C 8009029C 24635D68 */  addiu $v1, %lo(D_80125D68) # addiu $v1, $v1, 0x5d68
.L800902A0:
/* B07440 800902A0 8D6B0004 */  lw    $t3, %lo(D_80160004)($t3)
/* B07444 800902A4 000B6080 */  sll   $t4, $t3, 2
/* B07448 800902A8 006C6821 */  addu  $t5, $v1, $t4
/* B0744C 800902AC 8DAE0000 */  lw    $t6, ($t5)
/* B07450 800902B0 1000000A */  b     .L800902DC
/* B07454 800902B4 ACCE0000 */   sw    $t6, ($a2)
.L800902B8:
/* B07458 800902B8 24010002 */  li    $at, 2
/* B0745C 800902BC 14A10007 */  bne   $a1, $at, .L800902DC
/* B07460 800902C0 3C188016 */   lui   $t8, %hi(D_80160004) # $t8, 0x8016
/* B07464 800902C4 8F180004 */  lw    $t8, %lo(D_80160004)($t8)
/* B07468 800902C8 8E0F016C */  lw    $t7, 0x16c($s0)
/* B0746C 800902CC 0018C880 */  sll   $t9, $t8, 2
/* B07470 800902D0 01F94021 */  addu  $t0, $t7, $t9
/* B07474 800902D4 8D090000 */  lw    $t1, ($t0)
/* B07478 800902D8 ACC90000 */  sw    $t1, ($a2)
.L800902DC:
/* B0747C 800902DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B07480 800902E0 8FB00020 */  lw    $s0, 0x20($sp)
/* B07484 800902E4 27BD0028 */  addiu $sp, $sp, 0x28
/* B07488 800902E8 03E00008 */  jr    $ra
/* B0748C 800902EC 00001025 */   move  $v0, $zero

