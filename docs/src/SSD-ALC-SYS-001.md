# 割付定義書（機能・機器・区画・振る舞い）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-ALC-SYS-001 |
| 表題 | 割付定義書（機能・機器・区画・振る舞い） |
| 版・日付 | Rev. B／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-BLK-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図91 割付行列（系 × 区画） |

## 1. 目的

機能（機能行）、論理の部品（構造モデルの part）、物理の機器と区画、振る舞い（活動図・シーケンス図）の間の割付を、SysML v2 の allocate で示す。機能 → 部品 → 機器 → 区画の連鎖と、振る舞いの要素がどの部品で行われるかを、モデルの関係として辿れるようにすることが目的である。系と区画の対応の全体は 図91 割付行列（系 × 区画） に示す。

## 2. 書き方

文書の要素と SysML v2 の要素の対応を示す。

| 文書の要素 | SysML v2 の要素 |
|---|---|
| 機能行（F-ID） | action（短い名前は F-ID）。機能説明書ごとの package（FN_略号）に入れ、doc は機能行の文（出典を除く） |
| 機能 → 機能説明書 | allocate 機能 to その機能説明書の部品（論理の割付） |
| 区画（SSD-PHY-ORB-001 §2） | 物理配置 OrbiterLayout の中の part（型は Compartment、短い名前は区画の記号） |
| 機器（SSD-PHY-ORB-001 §3 の行） | part def（短い名前は PHY-ID）と、区画の中の part（数量が整数だけなら多重度） |
| 機器の行のブロック | allocate 系の部品 to 機器（物理の割付） |
| 機器の行の機能 | allocate 機能 to 機器（物理の割付） |
| 活動図の行動の機能 | allocate 行動 to その機能を持つ機能説明書の部品（振る舞いの割付） |
| シーケンス図の生存線 | allocate 生存線 to 部品（文書のある生存線はその文書の部品、外部は外部系の中の部品） |

## 3. 機能の割付（論理）

機能行 2075件を、機能説明書 208件の部品に割り付けた（allocate 2075件）。部品の欄は構造モデルの最上位の部品 context からの道筋である。

| 機能説明書 | 部品（SysML の道筋） | 機能 |
|---|---|---|
| SSD-FD-EXT-001 | context.ext | 9 |
| SSD-FD-ET-001 | context.sts.et | 4 |
| SSD-FD-ET-ITK-001 | context.sts.et.itk | 6 |
| SSD-FD-ET-LH2-001 | context.sts.et.lh2 | 6 |
| SSD-FD-ET-LOX-001 | context.sts.et.lox | 7 |
| SSD-FD-ET-SEP-001 | context.sts.et.sep | 7 |
| SSD-FD-ET-TPS-001 | context.sts.et.tps | 6 |
| SSD-FD-ET-UMB-001 | context.sts.et.umb | 7 |
| SSD-FD-ORB-001 | context.sts.orb | 3 |
| SSD-FD-APU-001 | context.sts.orb.apu | 5 |
| SSD-FD-APU-CIR-001 | context.sts.orb.apu.cir | 12 |
| SSD-FD-APU-CTL-001 | context.sts.orb.apu.ctl | 12 |
| SSD-FD-APU-FUL-001 | context.sts.orb.apu.ful | 12 |
| SSD-FD-APU-HYD-001 | context.sts.orb.apu.hyd | 13 |
| SSD-FD-APU-OPS-001 | context.sts.orb.apu.ops | 12 |
| SSD-FD-APU-TRB-001 | context.sts.orb.apu.trb | 13 |
| SSD-FD-APU-WSB-001 | context.sts.orb.apu.wsb | 13 |
| SSD-FD-CREW-001 | context.sts.orb.crew | 6 |
| SSD-FD-CREW-ESC-001 | context.sts.orb.crew.esc | 9 |
| SSD-FD-CREW-HAB-001 | context.sts.orb.crew.hab | 8 |
| SSD-FD-CREW-LTG-001 | context.sts.orb.crew.ltg | 7 |
| SSD-FD-CREW-MED-001 | context.sts.orb.crew.med | 7 |
| SSD-FD-CREW-OPS-001 | context.sts.orb.crew.ops | 8 |
| SSD-FD-CREW-STW-001 | context.sts.orb.crew.stw | 7 |
| SSD-FD-CT-001 | context.sts.orb.ct | 4 |
| SSD-FD-CT-AUD-001 | context.sts.orb.ct.aud | 12 |
| SSD-FD-CT-CCTV-001 | context.sts.orb.ct.cctv | 12 |
| SSD-FD-CT-INST-001 | context.sts.orb.ct.inst | 12 |
| SSD-FD-CT-KU-001 | context.sts.orb.ct.ku | 12 |
| SSD-FD-CT-OPS-001 | context.sts.orb.ct.ops | 12 |
| SSD-FD-CT-SBD-001 | context.sts.orb.ct.sbd | 12 |
| SSD-FD-CT-UHF-001 | context.sts.orb.ct.uhf | 12 |
| SSD-FD-CW-001 | context.sts.orb.cw | 7 |
| SSD-FD-CW-ALT-001 | context.sts.orb.cw.alt | 7 |
| SSD-FD-CW-ANN-001 | context.sts.orb.cw.ann | 8 |
| SSD-FD-CW-BKP-001 | context.sts.orb.cw.bkp | 7 |
| SSD-FD-CW-OPS-001 | context.sts.orb.cw.ops | 9 |
| SSD-FD-CW-PRI-001 | context.sts.orb.cw.pri | 8 |
| SSD-FD-DPS-001 | context.sts.orb.dps | 5 |
| SSD-FD-DPS-ASC-001 | context.sts.orb.dps.asc | 12 |
| SSD-FD-DPS-BUS-001 | context.sts.orb.dps.bus | 12 |
| SSD-FD-DPS-FSW-001 | context.sts.orb.dps.fsw | 13 |
| SSD-FD-DPS-GPC-001 | context.sts.orb.dps.gpc | 12 |
| SSD-FD-DPS-MEDS-001 | context.sts.orb.dps.meds | 12 |
| SSD-FD-DPS-MTU-001 | context.sts.orb.dps.mtu | 12 |
| SSD-FD-DPS-OPS-001 | context.sts.orb.dps.ops | 13 |
| SSD-FD-ECLSS-001 | context.sts.orb.eclss | 6 |
| SSD-FD-ECL-ALS-001 | context.sts.orb.eclss.als | 11 |
| SSD-FD-ECL-ALS-DEP-001 | context.sts.orb.eclss.als.dep | 12 |
| SSD-FD-ECL-ALS-HTR-001 | context.sts.orb.eclss.als.htr | 12 |
| SSD-FD-ECL-ALS-LCG-001 | context.sts.orb.eclss.als.lcg | 11 |
| SSD-FD-ECL-ALS-MON-001 | context.sts.orb.eclss.als.mon | 12 |
| SSD-FD-ECL-ALS-SCU-001 | context.sts.orb.eclss.als.scu | 12 |
| SSD-FD-ECL-ALS-VNT-001 | context.sts.orb.eclss.als.vnt | 12 |
| SSD-FD-ECL-ARS-001 | context.sts.orb.eclss.ars | 9 |
| SSD-FD-ARS-AVB-001 | context.sts.orb.eclss.ars.avb | 12 |
| SSD-FD-ARS-AVB-CIR-001 | context.sts.orb.eclss.ars.avb.cir | 11 |
| SSD-FD-ARS-AVB-FAN-001 | context.sts.orb.eclss.ars.avb.fan | 12 |
| SSD-FD-ARS-AVB-HX-001 | context.sts.orb.eclss.ars.avb.hx | 10 |
| SSD-FD-ARS-AVB-MON-001 | context.sts.orb.eclss.ars.avb.mon | 12 |
| SSD-FD-ARS-AVB-OPS-001 | context.sts.orb.eclss.ars.avb.ops | 12 |
| SSD-FD-ARS-CAC-001 | context.sts.orb.eclss.ars.cac | 11 |
| SSD-FD-CAC-DCT-001 | context.sts.orb.eclss.ars.cac.dct | 11 |
| SSD-FD-CAC-FAN-001 | context.sts.orb.eclss.ars.cac.fan | 10 |
| SSD-FD-CAC-MON-001 | context.sts.orb.eclss.ars.cac.mon | 12 |
| SSD-FD-CAC-OPS-001 | context.sts.orb.eclss.ars.cac.ops | 12 |
| SSD-FD-CAC-RTN-001 | context.sts.orb.eclss.ars.cac.rtn | 12 |
| SSD-FD-ARS-CO2-001 | context.sts.orb.eclss.ars.co2 | 11 |
| SSD-FD-CO2-ABS-001 | context.sts.orb.eclss.ars.co2.abs | 8 |
| SSD-FD-CO2-ATCO-001 | context.sts.orb.eclss.ars.co2.atco | 10 |
| SSD-FD-CO2-CAN-001 | context.sts.orb.eclss.ars.co2.can | 12 |
| SSD-FD-CO2-MON-001 | context.sts.orb.eclss.ars.co2.mon | 12 |
| SSD-FD-CO2-STW-001 | context.sts.orb.eclss.ars.co2.stw | 12 |
| SSD-FD-ARS-IMU-001 | context.sts.orb.eclss.ars.imu | 11 |
| SSD-FD-ARS-IMU-FAN-001 | context.sts.orb.eclss.ars.imu.fan | 12 |
| SSD-FD-ARS-IMU-HEX-001 | context.sts.orb.eclss.ars.imu.hex | 12 |
| SSD-FD-ARS-IMU-INL-001 | context.sts.orb.eclss.ars.imu.inl | 12 |
| SSD-FD-ARS-IMU-MON-001 | context.sts.orb.eclss.ars.imu.mon | 12 |
| SSD-FD-ARS-IMU-OPS-001 | context.sts.orb.eclss.ars.imu.ops | 12 |
| SSD-FD-ARS-RCRS-001 | context.sts.orb.eclss.ars.rcrs | 11 |
| SSD-FD-ARS-RCRS-BED-001 | context.sts.orb.eclss.ars.rcrs.bed | 11 |
| SSD-FD-ARS-RCRS-CTL-001 | context.sts.orb.eclss.ars.rcrs.ctl | 12 |
| SSD-FD-ARS-RCRS-FAN-001 | context.sts.orb.eclss.ars.rcrs.fan | 9 |
| SSD-FD-ARS-RCRS-MON-001 | context.sts.orb.eclss.ars.rcrs.mon | 10 |
| SSD-FD-ARS-RCRS-OPS-001 | context.sts.orb.eclss.ars.rcrs.ops | 12 |
| SSD-FD-ARS-RCRS-USC-001 | context.sts.orb.eclss.ars.rcrs.usc | 11 |
| SSD-FD-ARS-THC-001 | context.sts.orb.eclss.ars.thc | 11 |
| SSD-FD-ARS-THC-HX-001 | context.sts.orb.eclss.ars.thc.hx | 10 |
| SSD-FD-ARS-THC-MON-001 | context.sts.orb.eclss.ars.thc.mon | 12 |
| SSD-FD-ARS-THC-OPS-001 | context.sts.orb.eclss.ars.thc.ops | 12 |
| SSD-FD-ARS-THC-SEP-001 | context.sts.orb.eclss.ars.thc.sep | 12 |
| SSD-FD-ARS-THC-TCV-001 | context.sts.orb.eclss.ars.thc.tcv | 11 |
| SSD-FD-ARS-WCL-001 | context.sts.orb.eclss.ars.wcl | 14 |
| SSD-FD-ARS-WCL-AVL-001 | context.sts.orb.eclss.ars.wcl.avl | 11 |
| SSD-FD-ARS-WCL-CLD-001 | context.sts.orb.eclss.ars.wcl.cld | 11 |
| SSD-FD-ARS-WCL-ICH-001 | context.sts.orb.eclss.ars.wcl.ich | 12 |
| SSD-FD-ARS-WCL-MON-001 | context.sts.orb.eclss.ars.wcl.mon | 12 |
| SSD-FD-ARS-WCL-OPS-001 | context.sts.orb.eclss.ars.wcl.ops | 12 |
| SSD-FD-ARS-WCL-PMP-001 | context.sts.orb.eclss.ars.wcl.pmp | 12 |
| SSD-FD-ECL-ATCS-001 | context.sts.orb.eclss.atcs | 7 |
| SSD-FD-TCS-FCL-001 | context.sts.orb.eclss.atcs.fcl | 6 |
| SSD-FD-TCS-FES-001 | context.sts.orb.eclss.atcs.fes | 6 |
| SSD-FD-TCS-GSE-001 | context.sts.orb.eclss.atcs.gse | 5 |
| SSD-FD-TCS-HX-001 | context.sts.orb.eclss.atcs.hx | 5 |
| SSD-FD-TCS-NH3-001 | context.sts.orb.eclss.atcs.nh3 | 6 |
| SSD-FD-TCS-RAD-001 | context.sts.orb.eclss.atcs.rad | 5 |
| SSD-FD-ECL-CAB-001 | context.sts.orb.eclss.cab | 5 |
| SSD-FD-ECL-FDS-001 | context.sts.orb.eclss.fds | 12 |
| SSD-FD-ECL-FDS-ALM-001 | context.sts.orb.eclss.fds.alm | 12 |
| SSD-FD-ECL-FDS-DET-001 | context.sts.orb.eclss.fds.det | 12 |
| SSD-FD-ECL-FDS-FIX-001 | context.sts.orb.eclss.fds.fix | 12 |
| SSD-FD-ECL-FDS-OPS-001 | context.sts.orb.eclss.fds.ops | 12 |
| SSD-FD-ECL-FDS-PFE-001 | context.sts.orb.eclss.fds.pfe | 10 |
| SSD-FD-ECL-H2O-001 | context.sts.orb.eclss.h2o | 9 |
| SSD-FD-ECL-H2O-DMP-001 | context.sts.orb.eclss.h2o.dmp | 12 |
| SSD-FD-ECL-H2O-FCW-001 | context.sts.orb.eclss.h2o.fcw | 12 |
| SSD-FD-ECL-H2O-GAL-001 | context.sts.orb.eclss.h2o.gal | 12 |
| SSD-FD-ECL-H2O-PRS-001 | context.sts.orb.eclss.h2o.prs | 12 |
| SSD-FD-ECL-H2O-SPL-001 | context.sts.orb.eclss.h2o.spl | 12 |
| SSD-FD-ECL-H2O-WST-001 | context.sts.orb.eclss.h2o.wst | 12 |
| SSD-FD-ECL-PCS-001 | context.sts.orb.eclss.pcs | 11 |
| SSD-FD-ECL-PCS-MNF-001 | context.sts.orb.eclss.pcs.mnf | 12 |
| SSD-FD-ECL-PCS-MON-001 | context.sts.orb.eclss.pcs.mon | 12 |
| SSD-FD-ECL-PCS-N2S-001 | context.sts.orb.eclss.pcs.n2s | 12 |
| SSD-FD-ECL-PCS-O2S-001 | context.sts.orb.eclss.pcs.o2s | 12 |
| SSD-FD-ECL-PCS-OPS-001 | context.sts.orb.eclss.pcs.ops | 12 |
| SSD-FD-ECL-PCS-RLF-001 | context.sts.orb.eclss.pcs.rlf | 11 |
| SSD-FD-ECL-WCS-001 | context.sts.orb.eclss.wcs | 9 |
| SSD-FD-ECL-WCS-CMD-001 | context.sts.orb.eclss.wcs.cmd | 12 |
| SSD-FD-ECL-WCS-FSP-001 | context.sts.orb.eclss.wcs.fsp | 12 |
| SSD-FD-ECL-WCS-OPS-001 | context.sts.orb.eclss.wcs.ops | 12 |
| SSD-FD-ECL-WCS-URN-001 | context.sts.orb.eclss.wcs.urn | 12 |
| SSD-FD-ECL-WCS-VAC-001 | context.sts.orb.eclss.wcs.vac | 12 |
| SSD-FD-EPS-001 | context.sts.orb.eps | 5 |
| SSD-FD-EPS-AC-001 | context.sts.orb.eps.ac | 5 |
| SSD-FD-EPS-DC-001 | context.sts.orb.eps.dc | 7 |
| SSD-FD-EPS-FCP-001 | context.sts.orb.eps.fcp | 8 |
| SSD-FD-EPS-PRSD-001 | context.sts.orb.eps.prsd | 8 |
| SSD-FD-EVA-001 | context.sts.orb.eva | 7 |
| SSD-FD-EVA-CHK-001 | context.sts.orb.eva.chk | 13 |
| SSD-FD-EVA-DPR-001 | context.sts.orb.eva.dpr | 12 |
| SSD-FD-EVA-EMG-001 | context.sts.orb.eva.emg | 14 |
| SSD-FD-EVA-MNT-001 | context.sts.orb.eva.mnt | 13 |
| SSD-FD-EVA-OPS-001 | context.sts.orb.eva.ops | 14 |
| SSD-FD-EVA-TLS-001 | context.sts.orb.eva.tls | 12 |
| SSD-FD-GNC-001 | context.sts.orb.gnc | 5 |
| SSD-FD-GNC-ACT-001 | context.sts.orb.gnc.act | 12 |
| SSD-FD-GNC-CCD-001 | context.sts.orb.gnc.ccd | 13 |
| SSD-FD-GNC-FCS-001 | context.sts.orb.gnc.fcs | 12 |
| SSD-FD-GNC-GNS-001 | context.sts.orb.gnc.gns | 12 |
| SSD-FD-GNC-INS-001 | context.sts.orb.gnc.ins | 12 |
| SSD-FD-GNC-NAS-001 | context.sts.orb.gnc.nas | 12 |
| SSD-FD-GNC-OPS-001 | context.sts.orb.gnc.ops | 12 |
| SSD-FD-MECH-001 | context.sts.orb.mech | 10 |
| SSD-FD-MECH-ACT-001 | context.sts.orb.mech.act | 7 |
| SSD-FD-MECH-DEC-001 | context.sts.orb.mech.dec | 7 |
| SSD-FD-MECH-LDG-001 | context.sts.orb.mech.ldg | 8 |
| SSD-FD-MECH-OPS-001 | context.sts.orb.mech.ops | 6 |
| SSD-FD-MECH-PLB-001 | context.sts.orb.mech.plb | 7 |
| SSD-FD-MECH-VNT-001 | context.sts.orb.mech.vnt | 7 |
| SSD-FD-MPS-001 | context.sts.orb.mps | 6 |
| SSD-FD-MPS-CTL-001 | context.sts.orb.mps.ctl | 13 |
| SSD-FD-MPS-DMP-001 | context.sts.orb.mps.dmp | 13 |
| SSD-FD-MPS-HE-001 | context.sts.orb.mps.he | 13 |
| SSD-FD-MPS-OPS-001 | context.sts.orb.mps.ops | 13 |
| SSD-FD-MPS-PMS-001 | context.sts.orb.mps.pms | 13 |
| SSD-FD-MPS-SSME-001 | context.sts.orb.mps.ssme | 12 |
| SSD-FD-MPS-TVC-001 | context.sts.orb.mps.tvc | 13 |
| SSD-FD-OMS-001 | context.sts.orb.oms | 6 |
| SSD-FD-OMS-ENG-001 | context.sts.orb.oms.eng | 13 |
| SSD-FD-OMS-HE-001 | context.sts.orb.oms.he | 12 |
| SSD-FD-OMS-OPS-001 | context.sts.orb.oms.ops | 12 |
| SSD-FD-OMS-PSD-001 | context.sts.orb.oms.psd | 13 |
| SSD-FD-OMS-THM-001 | context.sts.orb.oms.thm | 12 |
| SSD-FD-OMS-TVC-001 | context.sts.orb.oms.tvc | 12 |
| SSD-FD-OMS-XFD-001 | context.sts.orb.oms.xfd | 13 |
| SSD-FD-PLS-001 | context.sts.orb.pls | 7 |
| SSD-FD-PLS-ARM-001 | context.sts.orb.pls.arm | 8 |
| SSD-FD-PLS-CTL-001 | context.sts.orb.pls.ctl | 7 |
| SSD-FD-PLS-MPM-001 | context.sts.orb.pls.mpm | 7 |
| SSD-FD-PLS-ODS-001 | context.sts.orb.pls.ods | 7 |
| SSD-FD-PLS-OPS-001 | context.sts.orb.pls.ops | 7 |
| SSD-FD-PLS-PRL-001 | context.sts.orb.pls.prl | 7 |
| SSD-FD-RCS-001 | context.sts.orb.rcs | 7 |
| SSD-FD-RCS-HEP-001 | context.sts.orb.rcs.hep | 12 |
| SSD-FD-RCS-HTR-001 | context.sts.orb.rcs.htr | 12 |
| SSD-FD-RCS-JET-001 | context.sts.orb.rcs.jet | 12 |
| SSD-FD-RCS-OPS-001 | context.sts.orb.rcs.ops | 12 |
| SSD-FD-RCS-PRP-001 | context.sts.orb.rcs.prp | 12 |
| SSD-FD-RCS-RJD-001 | context.sts.orb.rcs.rjd | 12 |
| SSD-FD-RCS-RM-001 | context.sts.orb.rcs.rm | 12 |
| SSD-FD-STR-001 | context.sts.orb.str | 8 |
| SSD-FD-STR-AFT-001 | context.sts.orb.str.aft | 7 |
| SSD-FD-STR-CRM-001 | context.sts.orb.str.crm | 7 |
| SSD-FD-STR-FWD-001 | context.sts.orb.str.fwd | 7 |
| SSD-FD-STR-MID-001 | context.sts.orb.str.mid | 7 |
| SSD-FD-STR-OPS-001 | context.sts.orb.str.ops | 7 |
| SSD-FD-STR-WNG-001 | context.sts.orb.str.wng | 8 |
| SSD-FD-TCS-001 | context.sts.orb.tcs | 4 |
| SSD-FD-TCS-PTC-001 | context.sts.orb.tcs.ptc | 6 |
| SSD-FD-TPS-001 | context.sts.orb.tps | 6 |
| SSD-FD-SRB-001 | context.sts.srb | 4 |
| SSD-FD-SRB-ATT-001 | context.sts.srb.att | 7 |
| SSD-FD-SRB-AVN-001 | context.sts.srb.avn | 8 |
| SSD-FD-SRB-HDP-001 | context.sts.srb.hdp | 7 |
| SSD-FD-SRB-MTR-001 | context.sts.srb.mtr | 9 |
| SSD-FD-SRB-REC-001 | context.sts.srb.rec | 6 |
| SSD-FD-SRB-TVC-001 | context.sts.srb.tvc | 8 |

## 4. 区画

SSD-PHY-ORB-001 §2 の区画 19件を物理配置の部品にした。

| 区画 | 名称 | SysML の部品 | 機器 |
|---|---|---|---|
| FD | フライトデッキ | orbiterLayout.fd | 6 |
| MD | ミッドデッキ | orbiterLayout.md | 3 |
| LEB | 下部機器ベイ | orbiterLayout.leb | 2 |
| AVB1 | 前方アビオニクスベイ1 | orbiterLayout.avb1 | 1 |
| AVB2 | 前方アビオニクスベイ2 | orbiterLayout.avb2 | 0 |
| AVB3A | 前方アビオニクスベイ3A | orbiterLayout.avb3a | 5 |
| AVB3B | 前方アビオニクスベイ3B | orbiterLayout.avb3b | 2 |
| AVBF | 前方アビオニクスベイ（複数） | orbiterLayout.avbf | 7 |
| AIRLOCK | エアロック | orbiterLayout.airlock | 4 |
| FWD | 前部胴体（乗員室の外） | orbiterLayout.fwd | 6 |
| FRCS | 前部 RCS モジュール | orbiterLayout.frcs | 2 |
| PLB | ペイロードベイ | orbiterLayout.plb | 8 |
| MID | 中部胴体（床下・側面） | orbiterLayout.mid | 5 |
| AFT | 後部胴体 | orbiterLayout.aft | 18 |
| AVBA | 後部アビオニクスベイ4〜6 | orbiterLayout.avba | 4 |
| POD | OMS/RCS ポッド | orbiterLayout.pod | 7 |
| WING | 主翼 | orbiterLayout.wing | 3 |
| VT | 垂直尾翼 | orbiterLayout.vt | 2 |
| MULTI | 複数区画に分散 | orbiterLayout.multi | 17 |

## 5. 機器の配置と割付（物理）

機器 102件の区画・多重度と、機器に割り付けた系の部品・機能を示す（allocate 394件：系の部品 → 機器 102件、機能 → 機器 292件）。多重度は数量の欄が整数だけのときに付けた。

| 機器 | 名称 | 区画 | 多重度 | 系の部品 | 機能 |
|---|---|---|---|---|---|
| PHY-CT-01 | S帯PMトランスポンダ（XPNDR） | AVB3A | [2] | context.sts.orb.ct | F-CT-SBD-07・F-CT-SBD-08 |
| PHY-CT-02 | S帯PMクワッドアンテナ | FWD | [4] | context.sts.orb.ct | F-CT-SBD-04・F-CT-SBD-12 |
| PHY-CT-03 | Ku帯展開アセンブリ（DA、高利得アンテナ） | PLB | [1] | context.sts.orb.ct | F-CT-KU-01・F-CT-KU-06・F-CT-KU-07・F-CT-KU-09 |
| PHY-CT-04 | Ku帯電子アセンブリ（EA1・EA2） | AVB3A | [2] | context.sts.orb.ct | F-CT-KU-01・F-CT-KU-05・F-CT-KU-06・F-CT-KU-10 |
| PHY-CT-05 | UHF送受信機（ATC送受信機） | AVB3A | [1] | context.sts.orb.ct | F-CT-UHF-01・F-CT-UHF-02・F-CT-UHF-03・F-CT-UHF-04 |
| PHY-CT-06 | ACCU（音声中央制御装置） | AVB1 | — | context.sts.orb.ct | F-CT-AUD-02・F-CT-AUD-05・F-CT-AUD-06 |
| PHY-CT-07 | S 帯の信号処理・増幅機器（プリアンプ・電力増幅器・アンテナ切替・NSP・COMSEC・FM 信号処理器・FM 送信機・GCIL） | AVB3A | — | context.sts.orb.ct | F-CT-SBD-03・F-CT-SBD-06・F-CT-SBD-07・F-CT-SBD-08 |
| PHY-CT-08 | S 帯 FM 半球アンテナ・UHF 下面アンテナ | FWD | — | context.sts.orb.ct | F-CT-SBD-04・F-CT-SBD-12・F-CT-UHF-04・F-CT-UHF-07 |
| PHY-CT-09 | Ku 帯信号処理器（KuSP） | AVB3B | [1] | context.sts.orb.ct | F-CT-KU-02・F-CT-KU-05 |
| PHY-CT-10 | PCMMU（PCM マスタユニット） | AVBF | [2] | context.sts.orb.ct | F-CT-INST-02・F-CT-INST-04・F-CT-INST-05・F-CT-INST-06 |
| PHY-CT-11 | SSOR（宇宙対宇宙オービタ無線）と SSOR アンテナ | AIRLOCK | — | context.sts.orb.ct | F-CT-UHF-01・F-CT-UHF-06・F-CT-UHF-07・F-CT-UHF-08 |
| PHY-DPS-01 | GPC（汎用計算機、IBM AP-101S） | AVBF | [5] | context.sts.orb.dps | F-DPS-01・F-DPS-02・F-DPS-03・F-DPS-04 |
| PHY-DPS-02 | MMU（モジュラーメモリユニット） | AVBF | [2] | context.sts.orb.dps | F-DPS-FSW-06・F-DPS-FSW-07・F-DPS-FSW-08・F-DPS-FSW-09 |
| PHY-DPS-03 | MDM（マルチプレクサ／デマルチプレクサ） | MULTI | — | context.sts.orb.dps | F-DPS-BUS-03・F-DPS-BUS-04・F-DPS-BUS-06・F-DPS-BUS-08 |
| PHY-DPS-04 | IDP（統合表示処理装置、MEDS） | FD | [4] | context.sts.orb.dps | F-DPS-MEDS-01・F-DPS-MEDS-02・F-DPS-MEDS-03・F-DPS-MEDS-04 |
| PHY-DPS-05 | MTU（マスタタイミングユニット） | AVB3B | [1] | context.sts.orb.dps | F-DPS-MTU-01・F-DPS-MTU-02・F-DPS-MTU-03・F-DPS-MTU-04 |
| PHY-DPS-06 | データバス網（飛行重要 FC1〜8・ペイロード・打上げ・大容量記憶・表示/キーボード・計装/PCMMU・計算機間通信） | MULTI | — | context.sts.orb.dps | F-DPS-BUS-01・F-DPS-BUS-02・F-DPS-BUS-03・F-DPS-BUS-04 |
| PHY-DPS-07 | EIU（エンジンインタフェースユニット）・MEC（マスターイベントコントローラ） | AVBA | — | context.sts.orb.dps | F-DPS-ASC-01・F-DPS-ASC-02・F-DPS-ASC-03・F-DPS-ASC-04 |
| PHY-GNC-01 | IMU（慣性計測装置） | FD | [3] | context.sts.orb.gnc | F-GNC-01・F-GNC-03 |
| PHY-GNC-02 | スタートラッカ（ST） | FWD | [2] | context.sts.orb.gnc | F-GNC-INS-08・F-GNC-INS-09・F-GNC-INS-11 |
| PHY-GNC-03 | TACAN（戦術航法装置）／GPS受信機 | AVBF | — | context.sts.orb.gnc | F-GNC-01 |
| PHY-GNC-04 | ADTA（エアデータ変換器）とエアデータプローブ | MULTI | — | context.sts.orb.gnc | F-GNC-01 |
| PHY-GNC-05 | MLS（マイクロ波着陸システム。F-GNC-01とIFMの表記はMSBLS） | AVBF | [3] | context.sts.orb.gnc | F-GNC-01 |
| PHY-GNC-06 | ATVC（上昇推力方向制御装置） | AVBA | [4] | context.sts.orb.gnc | F-GNC-05 |
| PHY-RCS-01 | 前部RCS噴射器（主噴射器・バーニア噴射器） | FRCS | [16] | context.sts.orb.rcs | F-RCS-JET-01・F-RCS-JET-02・F-RCS-JET-03・F-RCS-JET-04 |
| PHY-RCS-02 | 後部RCS噴射器（主噴射器・バーニア噴射器） | POD | [28] | context.sts.orb.rcs | F-RCS-JET-01・F-RCS-JET-02・F-RCS-JET-03・F-RCS-JET-04 |
| PHY-RCS-03 | 前部RCS推進薬タンク・ヘリウムタンク | FRCS | — | context.sts.orb.rcs | F-RCS-PRP-01・F-RCS-PRP-02・F-RCS-PRP-03・F-RCS-PRP-04・F-RCS-HEP-01・F-RCS-HEP-02・F-RCS-HEP-08 |
| PHY-RCS-04 | 後部RCS推進薬タンク・ヘリウムタンク | POD | — | context.sts.orb.rcs | F-RCS-PRP-01・F-RCS-PRP-02・F-RCS-PRP-03・F-RCS-PRP-04・F-RCS-HEP-01・F-RCS-HEP-02・F-RCS-HEP-08 |
| PHY-RCS-05 | RJDF（前部反動噴射器ドライバ） | AVBF | [2] | context.sts.orb.rcs | F-RCS-RJD-01・F-RCS-RJD-02・F-RCS-RJD-03 |
| PHY-RCS-06 | 後部 RCS クロスフィード弁・マニホールド隔離弁 | POD | — | context.sts.orb.rcs | F-RCS-PRP-04・F-RCS-PRP-07・F-RCS-PRP-09・F-RCS-PRP-10 |
| PHY-RCS-07 | RJDA（後部反動噴射器ドライバ） | AVBA | [2] | context.sts.orb.rcs | F-RCS-RJD-01・F-RCS-RJD-02・F-RCS-RJD-04・F-RCS-RJD-06 |
| PHY-RCS-08 | RCS ヒータ（前部モジュールのパネルヒータ・ポッドのヒータ区域・噴射器ヒータ） | MULTI | — | context.sts.orb.rcs | F-RCS-HTR-01・F-RCS-HTR-02・F-RCS-HTR-03・F-RCS-HTR-05 |
| PHY-EPS-01 | 燃料電池発電装置（FC） | MID | [3] | context.sts.orb.eps | F-EPS-01・F-EPS-03・F-EPS-04 |
| PHY-EPS-02 | PRSD極低温反応剤タンク（H2・O2タンク組） | MID | — | context.sts.orb.eps | F-EPS-01・F-EPS-02 |
| PHY-EPS-03 | 静止型インバータ（INV） | AVBF | [9] | context.sts.orb.eps | F-EPS-01 |
| PHY-EPS-04 | 電力制御アセンブリ（PCA）と配電アセンブリ（DA） | MULTI | — | context.sts.orb.eps | F-EPS-01・F-EPS-04 |
| PHY-EPS-05 | モータ制御アセンブリ（MCA） | MULTI | [10] | context.sts.orb.eps | F-EPS-01 |
| PHY-ECLSS-01 | 大気再生系（ARS）の床下機器：キャビンファン・キャビン熱交換器・水酸化リチウム（LiOH）キャニスタ・水冷却ループ水ポンプ | LEB | — | context.sts.orb.eclss | F-ECLSS-01・F-ECLSS-04 |
| PHY-ECLSS-02 | 供給水タンク・廃水タンク（給水・廃水系） | LEB | — | context.sts.orb.eclss | F-ECLSS-01・F-ECLSS-02 |
| PHY-ECLSS-03 | 与圧系（PCS）窒素タンク（GN2） | PLB | — | context.sts.orb.eclss | F-ECLSS-03 |
| PHY-ECLSS-04 | 能動熱制御系（ATCS）フレオン冷却ループのポンプパッケージ（フレオンポンプ・アキュムレータ）とフレオン／水熱交換器 | MID | — | context.sts.orb.eclss | F-ECLSS-01・F-ECLSS-02 |
| PHY-ECLSS-05 | 放熱器パネル（ATCS） | PLB | — | context.sts.orb.eclss | F-ECLSS-01・F-ECLSS-05 |
| PHY-ECLSS-06 | フラッシュエバポレータ系（FES）とアンモニアボイラ系 | AFT | — | context.sts.orb.eclss | F-ECLSS-05・F-ECLSS-06 |
| PHY-ECLSS-07 | フレオンループの熱交換器・弁（燃料電池熱交換器・カーゴ熱交換器・ペイロード熱交換器・O2 リストリクタ・流量配分弁モジュール） | MID | — | context.sts.orb.eclss | F-ECL-ATCS-01・F-ECL-ATCS-02・F-ECL-ATCS-03 |
| PHY-ECLSS-08 | コールドプレート網（中胴の左右、後部アビオニクスベイ4・5・6、レートジャイロ） | MULTI | — | context.sts.orb.eclss | F-ECL-ATCS-02・F-ECL-ATCS-07 |
| PHY-ECLSS-09 | 油圧熱交換器（フレオン／作動油、油圧系統1〜3） | AFT | [3] | context.sts.orb.eclss | F-ECL-ATCS-01・F-APU-CIR-02・F-APU-CIR-07・F-APU-CIR-11 |
| PHY-ECLSS-10 | GSE 熱交換器（地上冷却） | AFT | [1] | context.sts.orb.eclss | F-ECL-ATCS-03・F-ECL-ATCS-05 |
| PHY-APU-01 | APU（補助動力装置、改良型IAPU） | AFT | [3] | context.sts.orb.apu | F-APU-TRB-02・F-APU-TRB-04・F-APU-CTL-01・F-APU-CTL-02・F-APU-CTL-07・F-APU-CTL-10 |
| PHY-APU-02 | APU燃料タンク（ヒドラジンタンク） | AFT | [3] | context.sts.orb.apu | F-APU-FUL-01・F-APU-FUL-02・F-APU-FUL-03・F-APU-FUL-06 |
| PHY-APU-03 | WSB（水噴霧ボイラ） | AFT | [3] | context.sts.orb.apu | F-APU-01・F-APU-03 |
| PHY-APU-04 | 主油圧ポンプ（可変容量形） | AFT | [3] | context.sts.orb.apu | F-APU-01・F-APU-02・F-APU-04 |
| PHY-APU-05 | 油圧リザーバ・ブートストラップアキュムレータ・循環ポンプ（各油圧系統の制御部） | AFT | — | context.sts.orb.apu | F-APU-01・F-APU-02 |
| PHY-APU-06 | 噴射器冷却水タンクと水制御弁（3台共用） | AFT | [1] | context.sts.orb.apu | F-APU-TRB-01・F-APU-TRB-02・F-APU-TRB-04 |
| PHY-APU-07 | 油圧の分配弁・フィルタ（フィルタモジュール・プライオリティ弁、MPS/TVC 隔離弁、ブレーキ隔離弁、脚伸展弁） | MULTI | — | context.sts.orb.apu | F-APU-HYD-01・F-APU-HYD-04・F-APU-HYD-06・F-APU-HYD-09 |
| PHY-OMS-01 | OMSエンジン（軌道制御エンジン） | POD | [2] | context.sts.orb.oms | F-OMS-ENG-01・F-OMS-ENG-02・F-OMS-ENG-07・F-OMS-ENG-08 |
| PHY-OMS-02 | OMS推進薬タンク（燃料MMH・酸化剤N2O4） | POD | [4] | context.sts.orb.oms | F-OMS-01・F-OMS-03・F-OMS-04 |
| PHY-OMS-03 | OMSヘリウムタンク（推進薬加圧用高圧Heタンク） | POD | [2] | context.sts.orb.oms | F-OMS-HE-01・F-OMS-HE-02・F-OMS-HE-07・F-OMS-HE-09 |
| PHY-OMS-04 | OMS TVCジンバルアクチュエータ（電気機械式、アクティブ／スタンバイ制御器付き） | POD | [4] | context.sts.orb.oms | F-OMS-01・F-OMS-03 |
| PHY-OMS-05 | OMSクロスフィード配管・クロスフィード弁 | AFT | — | context.sts.orb.oms | F-OMS-01・F-OMS-03 |
| PHY-MPS-01 | SSME（スペースシャトル主エンジン） | AFT | [3] | context.sts.orb.mps | F-MPS-01・F-MPS-02・F-MPS-03 |
| PHY-MPS-02 | SSMEコントローラ（主エンジン制御器） | AFT | [3] | context.sts.orb.mps | F-MPS-CTL-01・F-MPS-CTL-03・F-MPS-CTL-04・F-MPS-CTL-05 |
| PHY-MPS-03 | SSME TVCサーボアクチュエータ（ジンバルアクチュエータ） | AFT | [6] | context.sts.orb.mps | F-MPS-TVC-03・F-MPS-TVC-05・F-MPS-TVC-06・F-MPS-TVC-07 |
| PHY-MPS-04 | ATVC（上昇推力方向制御装置） | AVBA | [4] | context.sts.orb.mps | F-MPS-TVC-01・F-MPS-TVC-02・F-MPS-TVC-03 |
| PHY-MPS-05 | MPSヘリウムタンク（He供給タンク） | MULTI | [10] | context.sts.orb.mps | F-MPS-02 |
| PHY-MPS-06 | 推進薬マニホールド・SSME供給管（PMS：17インチLO2・LH2マニホールド、12インチ供給管、プリバルブ） | AFT | — | context.sts.orb.mps | F-MPS-02 |
| PHY-MPS-07 | GO2・GH2 加圧ラインと ET 加圧マニホールド | AFT | — | context.sts.orb.mps | F-MPS-PMS-01・F-MPS-PMS-06 |
| PHY-MPS-08 | 充填排出弁・ダンプ弁・マニホールド再加圧弁 | AFT | — | context.sts.orb.mps | F-MPS-DMP-01・F-MPS-DMP-04・F-MPS-DMP-06・F-MPS-DMP-07 |
| PHY-TPS-01 | 強化炭素－炭素（RCC）ノーズキャップ・チャインパネル・前部オービタ／ET結合部周辺 | FWD | — | context.sts.orb.tps | F-TPS-01・F-TPS-02 |
| PHY-TPS-02 | 強化炭素－炭素（RCC）主翼前縁 | WING | — | context.sts.orb.tps | F-TPS-02 |
| PHY-TPS-03 | 高温再使用表面断熱材（HRSI）黒タイル（一部はFRCIタイル） | MULTI | — | context.sts.orb.tps | F-TPS-03・F-TPS-04 |
| PHY-TPS-04 | 低温再使用表面断熱材（LRSI）白タイルと改良型柔軟再使用表面断熱材（AFRSI）ブランケット | MULTI | — | context.sts.orb.tps | F-TPS-05 |
| PHY-TPS-05 | フェルト再使用表面断熱材（FRSI）白ブランケット | MULTI | — | context.sts.orb.tps | F-TPS-06 |
| PHY-STR-01 | 前部胴体（上部・下部胴体、ノーズ部、前脚格納部） | FWD | — | context.sts.orb.str | F-STR-01・F-STR-02 |
| PHY-STR-02 | 乗員室（3層の与圧容器） | MULTI | — | context.sts.orb.str | F-STR-03・F-STR-04 |
| PHY-STR-03 | 中部胴体（ペイロードベイ構造） | MID | — | context.sts.orb.str | F-STR-05 |
| PHY-STR-04 | 主翼（左右、エレボン付き） | WING | — | context.sts.orb.str | F-STR-01 |
| PHY-STR-05 | 後部胴体（外殻・推力構造・二次構造）とボディフラップ | AFT | — | context.sts.orb.str | F-STR-AFT-01・F-STR-AFT-02・F-STR-AFT-03・F-STR-AFT-05・F-STR-WNG-05 |
| PHY-STR-06 | 垂直尾翼（フィン・ラダー／スピードブレーキ） | VT | — | context.sts.orb.str | F-STR-01 |
| PHY-MECH-01 | ペイロードベイドア（PLBD）と扉駆動・ラッチ用電気機械式アクチュエータ（PDU） | PLB | — | context.sts.orb.mech | F-MECH-01・F-MECH-02・F-MECH-10 |
| PHY-MECH-02 | 外部タンク（ET）アンビリカル扉とラッチ | AFT | — | context.sts.orb.mech | F-MECH-VNT-05 |
| PHY-MECH-03 | アクティブベント系（AVS）のベント扉とアクチュエータ | MULTI | — | context.sts.orb.mech | F-MECH-VNT-01・F-MECH-VNT-02・F-MECH-VNT-03・F-MECH-VNT-04 |
| PHY-MECH-04 | 前脚（NLG）・前脚扉・前輪操舵アクチュエータ | FWD | — | context.sts.orb.mech | F-MECH-03・F-MECH-04・F-MECH-06 |
| PHY-MECH-05 | 主脚（MLG）と電気油圧式ディスクブレーキ・アンチスキッド | WING | — | context.sts.orb.mech | F-MECH-03・F-MECH-05 |
| PHY-MECH-06 | ドラッグシュート | VT | — | context.sts.orb.mech | F-MECH-DEC-01・F-MECH-DEC-02 |
| PHY-CW-01 | C/W電子ユニット（注意警報電子ユニット） | AVB3A | [1] | context.sts.orb.cw | F-CW-02・F-CW-05・F-CW-07 |
| PHY-CW-02 | 注意警報表示マトリクス（パネルF7） | FD | [1] | context.sts.orb.cw | F-CW-02・F-CW-03・F-CW-06 |
| PHY-CW-03 | MASTER ALARM押しボタン表示灯 | MULTI | [4] | context.sts.orb.cw | F-CW-02・F-CW-03 |
| PHY-CW-04 | C/W限界値設定・パラメータ状態パネル（パネルR13U） | FD | [1] | context.sts.orb.cw | F-CW-ALT-02・F-CW-ALT-04・F-CW-ALT-05・F-CW-ALT-06 |
| PHY-CW-05 | 煙検知器（クラス1警報） | MULTI | [9] | context.sts.orb.cw | F-CW-PRI-01・F-CW-PRI-02・F-CW-PRI-03・F-CW-ANN-04 |
| PHY-CREW-01 | 乗員座席（CDR席S1・PLT席S2・MS席） | MULTI | — | context.sts.orb.crew | F-CREW-ESC-01・F-CREW-ESC-02・F-CREW-ESC-03 |
| PHY-CREW-02 | 睡眠設備（寝袋・4段式固定睡眠ステーション） | MD | — | context.sts.orb.crew | F-CREW-01・F-CREW-02 |
| PHY-CREW-03 | サイドハッチと投棄・キャビンベント火工品系 | MD | — | context.sts.orb.crew | F-CREW-ESC-02・F-CREW-ESC-05・F-CREW-ESC-06・F-CREW-ESC-07 |
| PHY-CREW-04 | 脱出ポールと緊急脱出スライド | MD | — | context.sts.orb.crew | F-CREW-ESC-02・F-CREW-ESC-06・F-CREW-ESC-08 |
| PHY-CREW-05 | 頭上脱出窓（W8）と緊急降下器（Sky Genie） | FD | — | context.sts.orb.crew | F-CREW-ESC-07 |
| PHY-PLS-01 | 遠隔マニピュレータシステム（RMS）アーム | PLB | — | context.sts.orb.pls | F-PLS-ARM-01・F-PLS-ARM-02・F-PLS-ARM-03・F-PLS-ARM-04 |
| PHY-PLS-02 | マニピュレータ位置決め機構（MPM）とマニピュレータ保持ラッチ（MRL） | PLB | — | context.sts.orb.pls | F-PLS-MPM-01・F-PLS-MPM-02・F-PLS-MPM-03・F-PLS-MPM-04 |
| PHY-PLS-03 | マニピュレータ制御インタフェースユニット（MCIU）とRMS専用表示・操作器 | FD | — | context.sts.orb.pls | F-PLS-CTL-01・F-PLS-CTL-02・F-PLS-CTL-07 |
| PHY-PLS-04 | オービタドッキングシステム（ODS）：トラス組立とAPDSドッキング機構 | PLB | — | context.sts.orb.pls | F-PLS-ODS-01・F-PLS-ODS-04・F-PLS-ODS-05 |
| PHY-PLS-05 | APDSアビオニクス（PSU・DSCU・DMCU・PACU・LACU・DCU・PFCU）と操作パネル（A6L・A7L） | AIRLOCK | — | context.sts.orb.pls | F-PLS-ODS-07 |
| PHY-EVA-01 | 船外活動ユニット（EMU） | AIRLOCK | — | context.sts.orb.eva | F-EVA-CHK-01・F-EVA-CHK-02・F-EVA-CHK-03・F-EVA-CHK-04 |
| PHY-EVA-02 | 外部エアロック（ハッチ3基・EMU支援機器付き） | AIRLOCK | — | context.sts.orb.eva | F-EVA-DPR-01・F-EVA-DPR-03・F-EVA-DPR-04・F-EVA-DPR-05 |
| PHY-EVA-03 | ペイロードベイのEVA支援機器（スライドワイヤ・EVAウインチ・ハンドレール） | PLB | — | context.sts.orb.eva | F-EVA-TLS-01・F-EVA-TLS-02・F-EVA-TLS-03 |

## 6. 振る舞いの割付

活動図の行動 44件（うち機能の欄が無く割り付けないもの 2件）とシーケンス図の生存線 22件（うち乗員 2件は割り付けない）を、構造モデルの部品に割り付けた（allocate 71件）。行動に機能が複数あり、機能の部品が違うときは、それぞれに割り付けた。

| 定義書 | 行動・生存線 | 内容 | 機能 | 部品（SysML の道筋） |
|---|---|---|---|---|
| SSD-BEH-ORB-002 | AC-HE-01 | エンジン系統の有意なヘリウム漏れを検知 | F-MPS-OPS-08 | context.sts.orb.mps.ops |
| SSD-BEH-ORB-002 | AC-HE-02 | 漏れの隔離の手順を行う | F-MPS-OPS-08・F-MPS-HE-07 | context.sts.orb.mps.ops、context.sts.orb.mps.he |
| SSD-BEH-ORB-002 | AC-HE-03 | 隔離しない（エンジンの運転を続ける） | F-MPS-OPS-08 | context.sts.orb.mps.ops |
| SSD-BEH-ORB-002 | AC-HE-04 | ヘリウム系を相互接続（C&W 1,150 psia、遅くとも 920 psia） | F-MPS-HE-11・F-MPS-OPS-09 | context.sts.orb.mps.he、context.sts.orb.mps.ops |
| SSD-BEH-ORB-002 | AC-HE-05 | MECO−30秒に空圧系を再構成する | F-MPS-HE-10・F-MPS-HE-06 | context.sts.orb.mps.he |
| SSD-BEH-ORB-002 | AC-HE-06 | MECO（LO2 プリバルブを閉じる） | F-MPS-PMS-04 | context.sts.orb.mps.pms |
| SSD-BEH-ORB-002 | AC-FC-01 | 冷却喪失の警報（FUEL CELL PUMP 灯・FC PUMP メッセージ） | F-EPS-FCP-05 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FC-07 | 温度の兆候で切り分けを続ける | F-EPS-FCP-04 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FC-02 | 9分以内（7 kW）に燃料電池を停止する | F-EPS-FCP-05 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FC-03 | 母線から切り離し、STOP にし、反応剤弁を閉じる | F-EPS-FCP-02 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FC-04 | 主母線を結んで3本の主母線の給電を保つ | F-EPS-DC-05 | context.sts.orb.eps.dc |
| SSD-BEH-ORB-002 | AC-FC-05 | 総電力を 18 kW 以内に管理する | F-EPS-FCP-07・F-EPS-DC-03 | context.sts.orb.eps.fcp、context.sts.orb.eps.dc |
| SSD-BEH-ORB-002 | AC-FC-06 | MDF で帰還する（1基の喪失） | F-EPS-FCP-08 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FC-08 | 次の PLS で帰還する（2基の喪失） | F-EPS-FCP-08 | context.sts.orb.eps.fcp |
| SSD-BEH-ORB-002 | AC-FR-01 | 煙の警報（サイレン・MASTER ALARM・L1 の SMOKE DETECTION 灯） | F-ECL-FDS-ALM-02・F-ECL-FDS-ALM-03 | context.sts.orb.eclss.fds.alm |
| SSD-BEH-ORB-002 | AC-FR-02 | QDM を着ける（軌道上） | F-ECL-FDS-OPS-12 | context.sts.orb.eclss.fds.ops |
| SSD-BEH-ORB-002 | AC-FR-03 | バイザーを閉じてスーツの O2（上昇・再突入） | F-ECL-FDS-OPS-12・F-ECL-PCS-05 | context.sts.orb.eclss.fds.ops、context.sts.orb.eclss.pcs |
| SSD-BEH-ORB-002 | AC-FR-04 | 固定式または携帯式のハロン消火器で消火する | F-ECL-FDS-FIX-02・F-ECL-FDS-PFE-07・F-ECL-FDS-OPS-07 | context.sts.orb.eclss.fds.fix、context.sts.orb.eclss.fds.pfe、context.sts.orb.eclss.fds.ops |
| SSD-BEH-ORB-002 | AC-FR-05 | WCS の活性炭フィルタ・ATCO・LiOH で大気を浄化する | F-ARS-CO2-06・F-ECL-FDS-OPS-11 | context.sts.orb.eclss.ars.co2、context.sts.orb.eclss.fds.ops |
| SSD-BEH-ORB-002 | AC-FR-06 | 運用を続ける | F-ECL-FDS-OPS-11 | context.sts.orb.eclss.fds.ops |
| SSD-BEH-ORB-002 | AC-FR-07 | 早期の軌道離脱（N2 はヘルメット着用で4〜8時間分） | F-ECL-FDS-OPS-12 | context.sts.orb.eclss.fds.ops |
| SSD-BEH-ORB-004 | AC-LK-01 | 減圧の警報（クラクソン・MASTER ALARM・CABIN ATM 灯） | F-ECL-PCS-10 | context.sts.orb.eclss.pcs |
| SSD-BEH-ORB-004 | AC-LK-02 | 客室の逃し弁の隔離弁を閉じ、表示と計器で漏れを確かめる | F-ECL-PCS-04 | context.sts.orb.eclss.pcs |
| SSD-BEH-ORB-004 | AC-LK-03 | 大きな漏れでは 8 psi の非常用調圧器が流量を与える | F-ECL-PCS-09 | context.sts.orb.eclss.pcs |
| SSD-BEH-ORB-004 | AC-LK-07 | 上昇のアボートまたは緊急の軌道離脱（漏れ率で決める） | — | —（機能の欄が無い） |
| SSD-BEH-ORB-004 | AC-LK-04 | 追加の漏れ隔離の手順を行う | F-ECL-PCS-07 | context.sts.orb.eclss.pcs |
| SSD-BEH-ORB-004 | AC-LK-05 | 減電する | F-EPS-DC-03 | context.sts.orb.eps.dc |
| SSD-BEH-ORB-004 | AC-LK-06 | 軌道離脱の準備をする | — | —（機能の欄が無い） |
| SSD-BEH-ORB-004 | AC-EV-01 | 10.2 psi キャビンで45分以上の初期前呼吸 | F-EVA-CHK-12・F-EVA-OPS-02 | context.sts.orb.eva.chk、context.sts.orb.eva.ops |
| SSD-BEH-ORB-004 | AC-EV-02 | EMU を着用し主調圧器の漏れ点検（4.2〜4.4 psid） | F-EVA-CHK-04 | context.sts.orb.eva.chk |
| SSD-BEH-ORB-004 | AC-EV-03 | 窒素パージ（10.2 psi で8分） | F-EVA-CHK-11 | context.sts.orb.eva.chk |
| SSD-BEH-ORB-004 | AC-EV-04 | エアロックの減圧を始める | F-EVA-DPR-02 | context.sts.orb.eva.dpr |
| SSD-BEH-ORB-004 | AC-EV-05 | 5.0 psi で止めて EMU の漏れ点検 | F-EVA-DPR-03 | context.sts.orb.eva.dpr |
| SSD-BEH-ORB-004 | AC-EV-06 | FAILED LEAK CHECK（5 PSI）の手順へ | F-EVA-DPR-03 | context.sts.orb.eva.dpr |
| SSD-BEH-ORB-004 | AC-EV-07 | 0 psi まで減圧して EVA（安全テザーで常時つなぐ） | F-EVA-TLS-03 | context.sts.orb.eva.tls |
| SSD-BEH-ORB-004 | AC-EV-08 | 消耗品の残り30分までにエアロックへ進入 | F-EVA-OPS-11 | context.sts.orb.eva.ops |
| SSD-BEH-ORB-004 | AC-EV-09 | 再与圧（5.0 psi で気密を確かめる） | F-EVA-DPR-05 | context.sts.orb.eva.dpr |
| SSD-BEH-ORB-004 | AC-EV-10 | BTA で処置（6〜8 psid、地上の医師が決める） | F-EVA-EMG-09・F-EVA-EMG-10 | context.sts.orb.eva.emg |
| SSD-BEH-ORB-004 | AC-EV-11 | EMU の O2・水を再充填する | F-EVA-MNT-03 | context.sts.orb.eva.mnt |
| SSD-BEH-ORB-004 | AC-PB-01 | ドアを閉じる（右舷を後に閉め、32 のラッチで保つ） | F-MECH-PLB-03・F-MECH-PLB-05 | context.sts.orb.mech.plb |
| SSD-BEH-ORB-004 | AC-PB-02 | 駆動の指令を止め、故障とみなす | F-MECH-ACT-07・F-MECH-OPS-02 | context.sts.orb.mech.act、context.sts.orb.mech.ops |
| SSD-BEH-ORB-004 | AC-PB-03 | そのまま突入できる（フェイルセーフ） | F-MECH-OPS-03 | context.sts.orb.mech.ops |
| SSD-BEH-ORB-004 | AC-PB-04 | 非常時 EVA でドア・ラッチを手動で処置する | F-EVA-EMG-01・F-EVA-EMG-02 | context.sts.orb.eva.emg |
| SSD-BEH-ORB-004 | AC-PB-05 | ペイロードベイを軌道離脱の構成にして EVA を終える | F-EVA-OPS-13 | context.sts.orb.eva.ops |
| SSD-BEH-ORB-003 | DeorbitToLanding::CREW | 乗員（CDR・PLT・MS） | — | —（乗員は構造モデルの部品でないので割り付けない（運用シナリオのアクタ）） |
| SSD-BEH-ORB-003 | DeorbitToLanding::MCC | 地上（MCC） | — | context.ext.mcc |
| SSD-BEH-ORB-003 | DeorbitToLanding::GPC | GPC（DPS・GN&C） | — | context.sts.orb.dps |
| SSD-BEH-ORB-003 | DeorbitToLanding::OMS | 軌道制御系（OMS） | — | context.sts.orb.oms |
| SSD-BEH-ORB-003 | DeorbitToLanding::APU | APU/HYD | — | context.sts.orb.apu |
| SSD-BEH-ORB-003 | DeorbitToLanding::ECLSS | ECLSS（ATCS） | — | context.sts.orb.eclss.atcs |
| SSD-BEH-ORB-003 | DeorbitToLanding::MECH | 機械系（ドア・ベント扉・脚・減速傘） | — | context.sts.orb.mech |
| SSD-BEH-ORB-003 | Ascent::LPS | 地上（打上げ処理システム） | — | context.ext.lps |
| SSD-BEH-ORB-003 | Ascent::CREW | 乗員 | — | —（乗員は構造モデルの部品でないので割り付けない（運用シナリオのアクタ）） |
| SSD-BEH-ORB-003 | Ascent::GPC | GPC（DPS・GN&C） | — | context.sts.orb.dps |
| SSD-BEH-ORB-003 | Ascent::EPS | 電力系（EPS） | — | context.sts.orb.eps |
| SSD-BEH-ORB-003 | Ascent::APU | APU/HYD | — | context.sts.orb.apu |
| SSD-BEH-ORB-003 | Ascent::MPS | 主推進系（MPS） | — | context.sts.orb.mps |
| SSD-BEH-ORB-003 | Ascent::ET | 外部タンク（ET） | — | context.sts.et |
| SSD-BEH-ORB-003 | Ascent::SRB | SRB | — | context.sts.srb |
| SSD-BEH-ORB-003 | Ascent::OMS | 軌道制御系（OMS） | — | context.sts.orb.oms |
| SSD-BEH-ORB-003 | CommandTelemetryPath::MCC | 地上（MCC） | — | context.ext.mcc |
| SSD-BEH-ORB-003 | CommandTelemetryPath::NET | 追跡・通信網（TDRS・地上局） | — | context.ext.net |
| SSD-BEH-ORB-003 | CommandTelemetryPath::SBD | C&T：S帯 PM（トランスポンダ・NSP） | — | context.sts.orb.ct.sbd |
| SSD-BEH-ORB-003 | CommandTelemetryPath::GPC | DPS：FF・PF MDM と GPC | — | context.sts.orb.dps |
| SSD-BEH-ORB-003 | CommandTelemetryPath::SYS | 各系（例：機械系の MCA） | — | context.sts.orb.mech.act |
| SSD-BEH-ORB-003 | CommandTelemetryPath::INST | C&T：計装（DSC・OI MDM・PCMMU・SSR） | — | context.sts.orb.ct.inst |

## 7. 割付行列の図

図91 割付行列（系 × 区画） は、行を機器配分表の系（16件）、列を区画（19件）とし、ます目にその系の機器の数を示す。右の列に、系の部品より下に割り付けた機能・機器への機能の割付・活動図の行動・生存線の数を示す。ます目と見出しをクリックすると、物理構成表・機能説明書を開く。

## 8. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [model/SSD-ALC-SYS-001.sysml](../../model/SSD-ALC-SYS-001.sysml) に示す。機能の action 2075件、機器の part def 102件、区画 19件の物理配置、allocate 2540件（論理 2075・物理 394・振る舞い 71）から成り、構造モデル（model/SSD-BLK-SYS-001.sysml）と振る舞いのモデル（model/SSD-BEH-ORB-002〜004.sysml）を読み込んでから読む。本書の表と同じデータから作り、OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。

## 9. 注記（出典間の相違・構成変更）

> **注記** 機能の論理の割付は、機能行を持つ機能説明書の部品とした。機能説明書は機能のまとまりごとに書かれているので、この割付は文書の構成をそのまま写したもので、機能ごとに部品を検討したものではない。

> **注記** 機器の配置は SSD-PHY-ORB-001 の16ブロック（オービタの系）に限られ、下位の部品（例：OMS のエンジン）と機器の対応は割り付けていない（機器は系の部品に割り付けた）。機器に割り付けた機能は、配分表の機能の欄の F-ID（系の機能説明書の機能行）である。

> **注記** 数量の欄に説明のある機器（例：「4（各アンテナが前方・後方の2ビームを持ち…）」）は、多重度を付けずに数量の文を doc に残した。PHY-GNC-06 と PHY-MPS-04 は同じ機器を2つの系の行に置いたもので、物理配置でも2つの部品になる。

> **注記** シーケンス図の生存線のうち乗員（CREW）は、構造モデルに乗員の部品が無いので割り付けていない。乗員は構造モデルの部品でないので割り付けない。

## 10. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（機能 2075件の論理の割付、機器 84件・区画 19件の物理配置と割付 245件、振る舞いの割付 71件、図91 割付行列（系 × 区画）、SysML v2 テキスト） |
| Rev. A | 2026-10-03 | トレース網羅・影響分析書 SSD-TRC-SYS-001 への参照を注記（Rev. AO） |
| Rev. B | 2026-10-04 | 機器配分表の行の追加（18件）と、機器の割付の下位の機能行への移し（41件）に合わせて作り直した（Rev. AU） |
