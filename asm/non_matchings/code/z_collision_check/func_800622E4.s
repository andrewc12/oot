glabel func_800622E4
/* AD9484 800622E4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9488 800622E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD948C 800622EC AFB30020 */  sw    $s3, 0x20($sp)
/* AD9490 800622F0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD9494 800622F4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD9498 800622F8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD949C 800622FC 8CA300CC */  lw    $v1, 0xcc($a1)
/* AD94A0 80062300 00A08025 */  move  $s0, $a1
/* AD94A4 80062304 00809025 */  move  $s2, $a0
/* AD94A8 80062308 1860001F */  blez  $v1, .L80062388
/* AD94AC 8006230C 00A08825 */   move  $s1, $a1
/* AD94B0 80062310 3C138012 */  lui   $s3, %hi(D_8011E008) # $s3, 0x8012
/* AD94B4 80062314 2673E008 */  addiu $s3, %lo(D_8011E008) # addiu $s3, $s3, -0x1ff8
/* AD94B8 80062318 8E2600D0 */  lw    $a2, 0xd0($s1)
.L8006231C:
/* AD94BC 8006231C 00037080 */  sll   $t6, $v1, 2
/* AD94C0 80062320 54C00004 */  bnezl $a2, .L80062334
/* AD94C4 80062324 90CF0011 */   lbu   $t7, 0x11($a2)
/* AD94C8 80062328 10000013 */  b     .L80062378
/* AD94CC 8006232C 01D01021 */   addu  $v0, $t6, $s0
/* AD94D0 80062330 90CF0011 */  lbu   $t7, 0x11($a2)
.L80062334:
/* AD94D4 80062334 0003C880 */  sll   $t9, $v1, 2
/* AD94D8 80062338 31F80040 */  andi  $t8, $t7, 0x40
/* AD94DC 8006233C 53000004 */  beql  $t8, $zero, .L80062350
/* AD94E0 80062340 90C80015 */   lbu   $t0, 0x15($a2)
/* AD94E4 80062344 1000000C */  b     .L80062378
/* AD94E8 80062348 03301021 */   addu  $v0, $t9, $s0
/* AD94EC 8006234C 90C80015 */  lbu   $t0, 0x15($a2)
.L80062350:
/* AD94F0 80062350 02402025 */  move  $a0, $s2
/* AD94F4 80062354 02002825 */  move  $a1, $s0
/* AD94F8 80062358 00084880 */  sll   $t1, $t0, 2
/* AD94FC 8006235C 02695021 */  addu  $t2, $s3, $t1
/* AD9500 80062360 8D590000 */  lw    $t9, ($t2)
/* AD9504 80062364 0320F809 */  jalr  $t9
/* AD9508 80062368 00000000 */  nop   
/* AD950C 8006236C 8E0300CC */  lw    $v1, 0xcc($s0)
/* AD9510 80062370 00035880 */  sll   $t3, $v1, 2
/* AD9514 80062374 01701021 */  addu  $v0, $t3, $s0
.L80062378:
/* AD9518 80062378 26310004 */  addiu $s1, $s1, 4
/* AD951C 8006237C 0222082B */  sltu  $at, $s1, $v0
/* AD9520 80062380 5420FFE6 */  bnezl $at, .L8006231C
/* AD9524 80062384 8E2600D0 */   lw    $a2, 0xd0($s1)
.L80062388:
/* AD9528 80062388 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD952C 8006238C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9530 80062390 8FB10018 */  lw    $s1, 0x18($sp)
/* AD9534 80062394 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD9538 80062398 8FB30020 */  lw    $s3, 0x20($sp)
/* AD953C 8006239C 03E00008 */  jr    $ra
/* AD9540 800623A0 27BD0028 */   addiu $sp, $sp, 0x28

/* AD9544 800623A4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AD9548 800623A8 AFBF0034 */  sw    $ra, 0x34($sp)
/* AD954C 800623AC AFB70030 */  sw    $s7, 0x30($sp)
/* AD9550 800623B0 AFB6002C */  sw    $s6, 0x2c($sp)
/* AD9554 800623B4 AFB50028 */  sw    $s5, 0x28($sp)
/* AD9558 800623B8 AFB40024 */  sw    $s4, 0x24($sp)
/* AD955C 800623BC AFB30020 */  sw    $s3, 0x20($sp)
/* AD9560 800623C0 AFB2001C */  sw    $s2, 0x1c($sp)
/* AD9564 800623C4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD9568 800623C8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD956C 800623CC AFA40038 */  sw    $a0, 0x38($sp)
/* AD9570 800623D0 AFA5003C */  sw    $a1, 0x3c($sp)
/* AD9574 800623D4 8CCE0018 */  lw    $t6, 0x18($a2)
/* AD9578 800623D8 00C09825 */  move  $s3, $a2
/* AD957C 800623DC 00E0A025 */  move  $s4, $a3
/* AD9580 800623E0 19C0002A */  blez  $t6, .L8006248C
/* AD9584 800623E4 00C08825 */   move  $s1, $a2
/* AD9588 800623E8 3C168016 */  lui   $s6, %hi(D_8015E61C) # $s6, 0x8016
/* AD958C 800623EC 3C128016 */  lui   $s2, %hi(D_8015E610) # $s2, 0x8016
/* AD9590 800623F0 2652E610 */  addiu $s2, %lo(D_8015E610) # addiu $s2, $s2, -0x19f0
/* AD9594 800623F4 26D6E61C */  addiu $s6, %lo(D_8015E61C) # addiu $s6, $s6, -0x19e4
/* AD9598 800623F8 00008025 */  move  $s0, $zero
/* AD959C 800623FC 24170001 */  li    $s7, 1
/* AD95A0 80062400 8FB50048 */  lw    $s5, 0x48($sp)
/* AD95A4 80062404 8E6F001C */  lw    $t7, 0x1c($s3)
.L80062408:
/* AD95A8 80062408 01F01021 */  addu  $v0, $t7, $s0
/* AD95AC 8006240C 90580017 */  lbu   $t8, 0x17($v0)
/* AD95B0 80062410 33190001 */  andi  $t9, $t8, 1
/* AD95B4 80062414 57200005 */  bnezl $t9, .L8006242C
/* AD95B8 80062418 8E890000 */   lw    $t1, ($s4)
/* AD95BC 8006241C 8E220018 */  lw    $v0, 0x18($s1)
/* AD95C0 80062420 10000016 */  b     .L8006247C
/* AD95C4 80062424 00021980 */   sll   $v1, $v0, 6
/* AD95C8 80062428 8E890000 */  lw    $t1, ($s4)
.L8006242C:
/* AD95CC 8006242C 24440030 */  addiu $a0, $v0, 0x30
/* AD95D0 80062430 02402825 */  move  $a1, $s2
/* AD95D4 80062434 AE490000 */  sw    $t1, ($s2)
/* AD95D8 80062438 8E880004 */  lw    $t0, 4($s4)
/* AD95DC 8006243C AE480004 */  sw    $t0, 4($s2)
/* AD95E0 80062440 8E890008 */  lw    $t1, 8($s4)
/* AD95E4 80062444 AE490008 */  sw    $t1, 8($s2)
/* AD95E8 80062448 8EAB0000 */  lw    $t3, ($s5)
/* AD95EC 8006244C AECB0000 */  sw    $t3, ($s6)
/* AD95F0 80062450 8EAA0004 */  lw    $t2, 4($s5)
/* AD95F4 80062454 AECA0004 */  sw    $t2, 4($s6)
/* AD95F8 80062458 8EAB0008 */  lw    $t3, 8($s5)
/* AD95FC 8006245C 0C033980 */  jal   func_800CE600
/* AD9600 80062460 AECB0008 */   sw    $t3, 8($s6)
/* AD9604 80062464 54570004 */  bnel  $v0, $s7, .L80062478
/* AD9608 80062468 8E220018 */   lw    $v0, 0x18($s1)
/* AD960C 8006246C 10000008 */  b     .L80062490
/* AD9610 80062470 24020001 */   li    $v0, 1
/* AD9614 80062474 8E220018 */  lw    $v0, 0x18($s1)
.L80062478:
/* AD9618 80062478 00021980 */  sll   $v1, $v0, 6
.L8006247C:
/* AD961C 8006247C 26100040 */  addiu $s0, $s0, 0x40
/* AD9620 80062480 0203082A */  slt   $at, $s0, $v1
/* AD9624 80062484 5420FFE0 */  bnezl $at, .L80062408
/* AD9628 80062488 8E6F001C */   lw    $t7, 0x1c($s3)
.L8006248C:
/* AD962C 8006248C 00001025 */  move  $v0, $zero
.L80062490:
/* AD9630 80062490 8FBF0034 */  lw    $ra, 0x34($sp)
/* AD9634 80062494 8FB00014 */  lw    $s0, 0x14($sp)
/* AD9638 80062498 8FB10018 */  lw    $s1, 0x18($sp)
/* AD963C 8006249C 8FB2001C */  lw    $s2, 0x1c($sp)
/* AD9640 800624A0 8FB30020 */  lw    $s3, 0x20($sp)
/* AD9644 800624A4 8FB40024 */  lw    $s4, 0x24($sp)
/* AD9648 800624A8 8FB50028 */  lw    $s5, 0x28($sp)
/* AD964C 800624AC 8FB6002C */  lw    $s6, 0x2c($sp)
/* AD9650 800624B0 8FB70030 */  lw    $s7, 0x30($sp)
/* AD9654 800624B4 03E00008 */  jr    $ra
/* AD9658 800624B8 27BD0038 */   addiu $sp, $sp, 0x38

/* AD965C 800624BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD9660 800624C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9664 800624C4 AFA40020 */  sw    $a0, 0x20($sp)
/* AD9668 800624C8 AFA50024 */  sw    $a1, 0x24($sp)
/* AD966C 800624CC AFA60028 */  sw    $a2, 0x28($sp)
/* AD9670 800624D0 90CF002F */  lbu   $t7, 0x2f($a2)
/* AD9674 800624D4 8FA40028 */  lw    $a0, 0x28($sp)
/* AD9678 800624D8 00E02825 */  move  $a1, $a3
/* AD967C 800624DC 31F80001 */  andi  $t8, $t7, 1
/* AD9680 800624E0 17000003 */  bnez  $t8, .L800624F0
/* AD9684 800624E4 24840040 */   addiu $a0, $a0, 0x40
/* AD9688 800624E8 1000000D */  b     .L80062520
/* AD968C 800624EC 00001025 */   move  $v0, $zero
.L800624F0:
/* AD9690 800624F0 3C198016 */  lui   $t9, %hi(D_8015E638) # $t9, 0x8016
/* AD9694 800624F4 2739E638 */  addiu $t9, %lo(D_8015E638) # addiu $t9, $t9, -0x19c8
/* AD9698 800624F8 3C078016 */  lui   $a3, %hi(D_8015E628) # $a3, 0x8016
/* AD969C 800624FC 24E7E628 */  addiu $a3, %lo(D_8015E628) # addiu $a3, $a3, -0x19d8
/* AD96A0 80062500 AFB90010 */  sw    $t9, 0x10($sp)
/* AD96A4 80062504 0C033B83 */  jal   func_800CEE0C
/* AD96A8 80062508 8FA60030 */   lw    $a2, 0x30($sp)
/* AD96AC 8006250C 50400004 */  beql  $v0, $zero, .L80062520
/* AD96B0 80062510 00001025 */   move  $v0, $zero
/* AD96B4 80062514 10000002 */  b     .L80062520
/* AD96B8 80062518 24020001 */   li    $v0, 1
/* AD96BC 8006251C 00001025 */  move  $v0, $zero
.L80062520:
/* AD96C0 80062520 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD96C4 80062524 27BD0020 */  addiu $sp, $sp, 0x20
/* AD96C8 80062528 03E00008 */  jr    $ra
/* AD96CC 8006252C 00000000 */   nop   
