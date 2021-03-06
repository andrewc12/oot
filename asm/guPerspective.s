.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel guPerspectiveF
/* B78270 801010D0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B78274 801010D4 44867000 */  mtc1  $a2, $f14
/* B78278 801010D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B7827C 801010DC AFA7003C */  sw    $a3, 0x3c($sp)
/* B78280 801010E0 AFA40030 */  sw    $a0, 0x30($sp)
/* B78284 801010E4 AFA50034 */  sw    $a1, 0x34($sp)
/* B78288 801010E8 0C0406D0 */  jal   func_80101B40
/* B7828C 801010EC E7AE0038 */   swc1  $f14, 0x38($sp)
/* B78290 801010F0 C7AE0038 */  lwc1  $f14, 0x38($sp)
/* B78294 801010F4 3C018015 */  lui   $at, %hi(D_8014B260)
/* B78298 801010F8 D426B260 */  ldc1  $f6, %lo(D_8014B260)($at)
/* B7829C 801010FC 46007121 */  cvt.d.s $f4, $f14
/* B782A0 80101100 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B782A4 80101104 46262202 */  mul.d $f8, $f4, $f6
/* B782A8 80101108 44815000 */  mtc1  $at, $f10
/* B782AC 8010110C 462043A0 */  cvt.s.d $f14, $f8
/* B782B0 80101110 460A7303 */  div.s $f12, $f14, $f10
/* B782B4 80101114 0C041184 */  jal   cosf
/* B782B8 80101118 E7AC001C */   swc1  $f12, 0x1c($sp)
/* B782BC 8010111C C7AC001C */  lwc1  $f12, 0x1c($sp)
/* B782C0 80101120 0C0400A4 */  jal   sinf
/* B782C4 80101124 E7A00020 */   swc1  $f0, 0x20($sp)
/* B782C8 80101128 C7A40020 */  lwc1  $f4, 0x20($sp)
/* B782CC 8010112C C7A6003C */  lwc1  $f6, 0x3c($sp)
/* B782D0 80101130 C7AE0040 */  lwc1  $f14, 0x40($sp)
/* B782D4 80101134 46002083 */  div.s $f2, $f4, $f0
/* B782D8 80101138 C7B00044 */  lwc1  $f16, 0x44($sp)
/* B782DC 8010113C 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* B782E0 80101140 44812000 */  mtc1  $at, $f4
/* B782E4 80101144 46107480 */  add.s $f18, $f14, $f16
/* B782E8 80101148 8FA20030 */  lw    $v0, 0x30($sp)
/* B782EC 8010114C 3C014000 */  li    $at, 0x40000000 # 0.000000
/* B782F0 80101150 46107301 */  sub.s $f12, $f14, $f16
/* B782F4 80101154 8FA50034 */  lw    $a1, 0x34($sp)
/* B782F8 80101158 E444002C */  swc1  $f4, 0x2c($v0)
/* B782FC 8010115C 00001825 */  move  $v1, $zero
/* B78300 80101160 24040004 */  li    $a0, 4
/* B78304 80101164 460C9283 */  div.s $f10, $f18, $f12
/* B78308 80101168 E4420014 */  swc1  $f2, 0x14($v0)
/* B7830C 8010116C 46061203 */  div.s $f8, $f2, $f6
/* B78310 80101170 44813000 */  mtc1  $at, $f6
/* B78314 80101174 E44A0028 */  swc1  $f10, 0x28($v0)
/* B78318 80101178 E4480000 */  swc1  $f8, ($v0)
/* B7831C 8010117C 460E3202 */  mul.s $f8, $f6, $f14
/* B78320 80101180 44803000 */  mtc1  $zero, $f6
/* B78324 80101184 00000000 */  nop   
/* B78328 80101188 E446003C */  swc1  $f6, 0x3c($v0)
/* B7832C 8010118C 46104282 */  mul.s $f10, $f8, $f16
/* B78330 80101190 460C5103 */  div.s $f4, $f10, $f12
/* B78334 80101194 E4440038 */  swc1  $f4, 0x38($v0)
/* B78338 80101198 C7A00048 */  lwc1  $f0, 0x48($sp)
/* B7833C 8010119C C4460000 */  lwc1  $f6, ($v0)
/* B78340 801011A0 24630001 */  addiu $v1, $v1, 1
/* B78344 801011A4 C4500004 */  lwc1  $f16, 4($v0)
/* B78348 801011A8 46003282 */  mul.s $f10, $f6, $f0
/* B7834C 801011AC C44C0008 */  lwc1  $f12, 8($v0)
/* B78350 801011B0 10640010 */  beq   $v1, $a0, .L801011F4
/* B78354 801011B4 C44E000C */   lwc1  $f14, 0xc($v0)
.L801011B8:
/* B78358 801011B8 46008202 */  mul.s $f8, $f16, $f0
/* B7835C 801011BC C4460010 */  lwc1  $f6, 0x10($v0)
/* B78360 801011C0 C4500014 */  lwc1  $f16, 0x14($v0)
/* B78364 801011C4 46006102 */  mul.s $f4, $f12, $f0
/* B78368 801011C8 C44C0018 */  lwc1  $f12, 0x18($v0)
/* B7836C 801011CC 24630001 */  addiu $v1, $v1, 1
/* B78370 801011D0 46007082 */  mul.s $f2, $f14, $f0
/* B78374 801011D4 C44E001C */  lwc1  $f14, 0x1c($v0)
/* B78378 801011D8 E44A0000 */  swc1  $f10, ($v0)
/* B7837C 801011DC 46003282 */  mul.s $f10, $f6, $f0
/* B78380 801011E0 E4480004 */  swc1  $f8, 4($v0)
/* B78384 801011E4 E4440008 */  swc1  $f4, 8($v0)
/* B78388 801011E8 24420010 */  addiu $v0, $v0, 0x10
/* B7838C 801011EC 1464FFF2 */  bne   $v1, $a0, .L801011B8
/* B78390 801011F0 E442FFFC */   swc1  $f2, -4($v0)
.L801011F4:
/* B78394 801011F4 46008202 */  mul.s $f8, $f16, $f0
/* B78398 801011F8 24420010 */  addiu $v0, $v0, 0x10
/* B7839C 801011FC E44AFFF0 */  swc1  $f10, -0x10($v0)
/* B783A0 80101200 46006102 */  mul.s $f4, $f12, $f0
/* B783A4 80101204 00000000 */  nop   
/* B783A8 80101208 46007082 */  mul.s $f2, $f14, $f0
/* B783AC 8010120C E448FFF4 */  swc1  $f8, -0xc($v0)
/* B783B0 80101210 E444FFF8 */  swc1  $f4, -8($v0)
/* B783B4 80101214 E442FFFC */  swc1  $f2, -4($v0)
/* B783B8 80101218 10A00035 */  beqz  $a1, .L801012F0
/* B783BC 8010121C 3C014000 */   li    $at, 0x40000000 # 0.000000
/* B783C0 80101220 44814800 */  mtc1  $at, $f9
/* B783C4 80101224 44804000 */  mtc1  $zero, $f8
/* B783C8 80101228 46009021 */  cvt.d.s $f0, $f18
/* B783CC 8010122C 340EFFFF */  li    $t6, 65535
/* B783D0 80101230 4628003E */  c.le.d $f0, $f8
/* B783D4 80101234 3C014100 */  li    $at, 0x41000000 # 0.000000
/* B783D8 80101238 45020004 */  bc1fl .L8010124C
/* B783DC 8010123C 44815800 */   mtc1  $at, $f11
/* B783E0 80101240 1000002B */  b     .L801012F0
/* B783E4 80101244 A4AE0000 */   sh    $t6, ($a1)
/* B783E8 80101248 44815800 */  mtc1  $at, $f11
.L8010124C:
/* B783EC 8010124C 44805000 */  mtc1  $zero, $f10
/* B783F0 80101250 24180001 */  li    $t8, 1
/* B783F4 80101254 3C0141E0 */  li    $at, 0x41E00000 # 0.000000
/* B783F8 80101258 46205103 */  div.d $f4, $f10, $f0
/* B783FC 8010125C 24080001 */  li    $t0, 1
/* B78400 80101260 444FF800 */  cfc1  $t7, $31
/* B78404 80101264 44D8F800 */  ctc1  $t8, $31
/* B78408 80101268 00000000 */  nop   
/* B7840C 8010126C 462021A4 */  cvt.w.d $f6, $f4
/* B78410 80101270 4458F800 */  cfc1  $t8, $31
/* B78414 80101274 00000000 */  nop   
/* B78418 80101278 33180078 */  andi  $t8, $t8, 0x78
/* B7841C 8010127C 53000014 */  beql  $t8, $zero, .L801012D0
/* B78420 80101280 44183000 */   mfc1  $t8, $f6
/* B78424 80101284 44813800 */  mtc1  $at, $f7
/* B78428 80101288 44803000 */  mtc1  $zero, $f6
/* B7842C 8010128C 24180001 */  li    $t8, 1
/* B78430 80101290 46262181 */  sub.d $f6, $f4, $f6
/* B78434 80101294 44D8F800 */  ctc1  $t8, $31
/* B78438 80101298 00000000 */  nop   
/* B7843C 8010129C 462031A4 */  cvt.w.d $f6, $f6
/* B78440 801012A0 4458F800 */  cfc1  $t8, $31
/* B78444 801012A4 00000000 */  nop   
/* B78448 801012A8 33180078 */  andi  $t8, $t8, 0x78
/* B7844C 801012AC 17000005 */  bnez  $t8, .L801012C4
/* B78450 801012B0 00000000 */   nop   
/* B78454 801012B4 44183000 */  mfc1  $t8, $f6
/* B78458 801012B8 3C018000 */  lui   $at, 0x8000
/* B7845C 801012BC 10000007 */  b     .L801012DC
/* B78460 801012C0 0301C025 */   or    $t8, $t8, $at
.L801012C4:
/* B78464 801012C4 10000005 */  b     .L801012DC
/* B78468 801012C8 2418FFFF */   li    $t8, -1
/* B7846C 801012CC 44183000 */  mfc1  $t8, $f6
.L801012D0:
/* B78470 801012D0 00000000 */  nop   
/* B78474 801012D4 0700FFFB */  bltz  $t8, .L801012C4
/* B78478 801012D8 00000000 */   nop   
.L801012DC:
/* B7847C 801012DC 44CFF800 */  ctc1  $t7, $31
/* B78480 801012E0 3319FFFF */  andi  $t9, $t8, 0xffff
/* B78484 801012E4 1F200002 */  bgtz  $t9, .L801012F0
/* B78488 801012E8 A4B80000 */   sh    $t8, ($a1)
/* B7848C 801012EC A4A80000 */  sh    $t0, ($a1)
.L801012F0:
/* B78490 801012F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B78494 801012F4 27BD0030 */  addiu $sp, $sp, 0x30
/* B78498 801012F8 03E00008 */  jr    $ra
/* B7849C 801012FC 00000000 */   nop   

glabel guPerspective
/* B784A0 80101300 27BDFF98 */  addiu $sp, $sp, -0x68
/* B784A4 80101304 44866000 */  mtc1  $a2, $f12
/* B784A8 80101308 44877000 */  mtc1  $a3, $f14
/* B784AC 8010130C C7A40078 */  lwc1  $f4, 0x78($sp)
/* B784B0 80101310 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* B784B4 80101314 C7A80080 */  lwc1  $f8, 0x80($sp)
/* B784B8 80101318 AFBF0024 */  sw    $ra, 0x24($sp)
/* B784BC 8010131C AFA40068 */  sw    $a0, 0x68($sp)
/* B784C0 80101320 44066000 */  mfc1  $a2, $f12
/* B784C4 80101324 44077000 */  mfc1  $a3, $f14
/* B784C8 80101328 27A40028 */  addiu $a0, $sp, 0x28
/* B784CC 8010132C E7A40010 */  swc1  $f4, 0x10($sp)
/* B784D0 80101330 E7A60014 */  swc1  $f6, 0x14($sp)
/* B784D4 80101334 0C040434 */  jal   guPerspectiveF
/* B784D8 80101338 E7A80018 */   swc1  $f8, 0x18($sp)
/* B784DC 8010133C 27A40028 */  addiu $a0, $sp, 0x28
/* B784E0 80101340 0C041938 */  jal   func_801064E0
/* B784E4 80101344 8FA50068 */   lw    $a1, 0x68($sp)
/* B784E8 80101348 8FBF0024 */  lw    $ra, 0x24($sp)
/* B784EC 8010134C 27BD0068 */  addiu $sp, $sp, 0x68
/* B784F0 80101350 03E00008 */  jr    $ra
/* B784F4 80101354 00000000 */   nop   
