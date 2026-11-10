// SysML v2 テキスト：IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応）
// SSD-IOA-ORB-001 IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応） の表から生成（lib/build_docs_do.py・rev_do/iodata_do.py）。根拠の頁は SSD-IOA-ORB-001 にある。
package SSD_IOA_ORB_001 {
    doc /* SSD-IOA-ORB-001 IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応）。IOA の分析冊子 16冊の件数（IoaVolume）、系ごとの Table 1-1 の FMEA 件数との対比（IoaCompare）、FMX の系・機能ブロックごとの故障モード数と IOA の分析冊子のある系（FmxSystemLink）を持つ。10冊の読めたワークシートの危険度の分布（系ごと IoaCriticalitySystem・フェーズごと IoaCriticalityPhase）を持つ（ユーザーが基準を 77% に下げた Rev. DO）。ワークシートの全件は持たない。要求への関係は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    part def IoaVolume {
        doc /* IOA の『ANALYSIS OF THE …』の冊子 1冊。件数は ANALYSIS WORKSHEET の見出しの頁の数（パーサー v2） */
        attribute ntrsId : String;
        attribute systemCode : String;
        attribute coverDate : String;
        attribute worksheetPages : Integer;
        attribute continuationPages : Integer;
        attribute phasesReadable : Integer;
    }
    part def IoaCompare {
        doc /* 系ごとの、分析ワークシートの頁数と中間報告 Table 1-1（1988-01-01 時点）の FMEA の IOA 件数。単位も日付も違う */
        attribute systemCode : String;
        attribute worksheetPages : Integer;
        attribute table11Fmea : Integer;
    }
    part def FmxSystemLink {
        doc /* SSD-FMX-ORB-001 の系ごとの故障モード数と、同じ範囲を持つ IOA の分析冊子の系（機能ブロック水準の結びは作らない） */
        attribute fmxSystem : String;
        attribute modeCount : Integer;
        attribute ioaSystem : String;
        attribute scope : String;
    }
    part ioaVolumes {
        part <'IOA-01'> ioa_01 : IoaVolume { doc /* 電力発生系・燃料電池 */ :>> ntrsId = "19900001599"; :>> systemCode = "EPG"; :>> coverDate = "5 DECEMBER 1986"; :>> worksheetPages = 63; :>> continuationPages = 0; :>> phasesReadable = 60; }
        part <'IOA-02'> ioa_02 : IoaVolume { doc /* 軌道制御系（OMS） */ :>> ntrsId = "19900001603"; :>> systemCode = "OMS"; :>> coverDate = "12 JANUARY 1987"; :>> worksheetPages = 953; :>> continuationPages = 0; :>> phasesReadable = 742; }
        part <'IOA-03'> ioa_03 : IoaVolume { doc /* 誘導・航法・制御（GN&C） */ :>> ntrsId = "19900001604"; :>> systemCode = "GNC"; :>> coverDate = "19 DECEMBER 1986"; :>> worksheetPages = 139; :>> continuationPages = 1; :>> phasesReadable = 105; }
        part <'IOA-04'> ioa_04 : IoaVolume { doc /* 主推進系（MPS） */ :>> ntrsId = "19900001611"; :>> systemCode = "MPS"; :>> coverDate = "16 JANUARY 1987"; :>> worksheetPages = 691; :>> continuationPages = 0; :>> phasesReadable = 362; }
        part <'IOA-05'> ioa_05 : IoaVolume { doc /* 補助動力装置（APU） */ :>> ntrsId = "19900001615"; :>> systemCode = "APU"; :>> coverDate = "12 DECEMBER 1986"; :>> worksheetPages = 282; :>> continuationPages = 6; :>> phasesReadable = 179; }
        part <'IOA-06'> ioa_06 : IoaVolume { doc /* 姿勢制御系（RCS）第1巻 */ :>> ntrsId = "19900001622"; :>> systemCode = "RCS"; :>> coverDate = "19 JANUARY 1987"; :>> worksheetPages = 716; :>> continuationPages = 0; :>> phasesReadable = 598; }
        part <'IOA-07'> ioa_07 : IoaVolume { doc /* 姿勢制御系（RCS）第2巻 */ :>> ntrsId = "19900001623"; :>> systemCode = "RCS"; :>> coverDate = "19 JANUARY 1987"; :>> worksheetPages = 790; :>> continuationPages = 0; :>> phasesReadable = 654; }
        part <'IOA-08'> ioa_08 : IoaVolume { doc /* 姿勢制御系（RCS）第3巻 */ :>> ntrsId = "19900001624"; :>> systemCode = "RCS"; :>> coverDate = "19 JANUARY 1987"; :>> worksheetPages = 727; :>> continuationPages = 28; :>> phasesReadable = 681; }
        part <'IOA-09'> ioa_09 : IoaVolume { doc /* 着陸・減速系（L&D） */ :>> ntrsId = "19900001627"; :>> systemCode = "LAND"; :>> coverDate = "12 JANUARY 1987"; :>> worksheetPages = 279; :>> continuationPages = 1; :>> phasesReadable = 115; }
        part <'IOA-10'> ioa_10 : IoaVolume { doc /* 通信・追跡（C&T） */ :>> ntrsId = "19900001651"; :>> systemCode = "CT"; :>> coverDate = "31 DECEMBER 1987"; :>> worksheetPages = 947; :>> continuationPages = 4; :>> phasesReadable = 807; }
        part <'IOA-11'> ioa_11 : IoaVolume { doc /* 油圧・水噴霧ボイラ（HYD/WSB） */ :>> ntrsId = "19900001618"; :>> systemCode = "HYD"; :>> coverDate = "15 DECEMBER 1986"; :>> worksheetPages = 415; :>> continuationPages = 7; :>> phasesReadable = 157; }
        part <'IOA-12'> ioa_12 : IoaVolume { doc /* 計装（INST） */ :>> ntrsId = "19900001612"; :>> systemCode = "INST"; :>> coverDate = "12 DECEMBER 1986"; :>> worksheetPages = 90; :>> continuationPages = 0; :>> phasesReadable = 73; }
        part <'IOA-13'> ioa_13 : IoaVolume { doc /* 油圧アクチュエーター（HA）：上昇時の推力方向制御（ATVC） */ :>> ntrsId = "19900001613"; :>> systemCode = "HA"; :>> coverDate = "21 NOVEMBER 1986"; :>> worksheetPages = 25; :>> continuationPages = 1; :>> phasesReadable = 23; }
        part <'IOA-14'> ioa_14 : IoaVolume { doc /* 油圧アクチュエーター（HA）：ボディフラップ */ :>> ntrsId = "19900001614"; :>> systemCode = "HA"; :>> coverDate = "21 NOVEMBER 1986"; :>> worksheetPages = 30; :>> continuationPages = 2; :>> phasesReadable = 3; }
        part <'IOA-15'> ioa_15 : IoaVolume { doc /* 油圧アクチュエーター（HA）：ラダー／スピードブレーキ */ :>> ntrsId = "19900001600"; :>> systemCode = "HA"; :>> coverDate = "21 NOVEMBER 1986"; :>> worksheetPages = 37; :>> continuationPages = 1; :>> phasesReadable = 27; }
        part <'IOA-16'> ioa_16 : IoaVolume { doc /* 油圧アクチュエーター（HA）：エレボン */ :>> ntrsId = "19900001619"; :>> systemCode = "HA"; :>> coverDate = "21 NOVEMBER 1986"; :>> worksheetPages = 26; :>> continuationPages = 0; :>> phasesReadable = 5; }
    }
    part ioaCompare {
        part cmp_epg : IoaCompare { doc /* 電力発生系・燃料電池 */ :>> systemCode = "EPG"; :>> worksheetPages = 63; :>> table11Fmea = 50; }
        part cmp_oms : IoaCompare { doc /* 軌道制御系（OMS） */ :>> systemCode = "OMS"; :>> worksheetPages = 953; :>> table11Fmea = 285; }
        part cmp_gnc : IoaCompare { doc /* 誘導・航法・制御（GN&C） */ :>> systemCode = "GNC"; :>> worksheetPages = 139; :>> table11Fmea = 175; }
        part cmp_mps : IoaCompare { doc /* 主推進系（MPS） */ :>> systemCode = "MPS"; :>> worksheetPages = 691; :>> table11Fmea = 1365; }
        part cmp_apu : IoaCompare { doc /* 補助動力装置（APU） */ :>> systemCode = "APU"; :>> worksheetPages = 282; :>> table11Fmea = 314; }
        part cmp_rcs : IoaCompare { doc /* 姿勢制御系（RCS） */ :>> systemCode = "RCS"; :>> worksheetPages = 2233; :>> table11Fmea = 763; }
        part cmp_land : IoaCompare { doc /* 着陸・減速系（L&D） */ :>> systemCode = "LAND"; :>> worksheetPages = 279; :>> table11Fmea = 246; }
        part cmp_ct : IoaCompare { doc /* 通信・追跡（C&T） */ :>> systemCode = "CT"; :>> worksheetPages = 947; :>> table11Fmea = 1108; }
        part cmp_hyd : IoaCompare { doc /* 油圧・水噴霧ボイラ（HYD/WSB） */ :>> systemCode = "HYD"; :>> worksheetPages = 415; :>> table11Fmea = 447; }
        part cmp_inst : IoaCompare { doc /* 計装（INST） */ :>> systemCode = "INST"; :>> worksheetPages = 90; :>> table11Fmea = 107; }
        part cmp_ha : IoaCompare { doc /* 油圧アクチュエーター（HA） */ :>> systemCode = "HA"; :>> worksheetPages = 118; :>> table11Fmea = 112; }
    }
    part ioaFmxLinks {
        part lnk_gnc : FmxSystemLink { doc /* 誘導・航法・制御（GN&C） */ :>> fmxSystem = "GNC"; :>> modeCount = 9; :>> ioaSystem = "GNC"; :>> scope = "同じ範囲"; }
        part lnk_gnc_act : FmxSystemLink { doc /* 誘導・航法・制御（GN&C）のうち 舵面・推力方向制御駆動（ACT）（Table 1-1：Hydraulic Actuators (HA)） */ :>> fmxSystem = "GNC-ACT"; :>> modeCount = 5; :>> ioaSystem = "HA"; :>> scope = "同じ範囲"; }
        part lnk_rcs : FmxSystemLink { doc /* 姿勢制御系（RCS） */ :>> fmxSystem = "RCS"; :>> modeCount = 15; :>> ioaSystem = "RCS"; :>> scope = "同じ範囲"; }
        part lnk_dps : FmxSystemLink { doc /* データ処理系（DPS） */ :>> fmxSystem = "DPS"; :>> modeCount = 21; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_cw : FmxSystemLink { doc /* 警報系（C/W） */ :>> fmxSystem = "CW"; :>> modeCount = 4; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_ct : FmxSystemLink { doc /* 通信・追跡系（C&T） */ :>> fmxSystem = "CT"; :>> modeCount = 16; :>> ioaSystem = "CT"; :>> scope = "同じ範囲"; }
        part lnk_ct_inst : FmxSystemLink { doc /* 通信・追跡系（C&T）のうち 計装・ペイロード通信（INST）（Table 1-1：Instrumentation (INST)） */ :>> fmxSystem = "CT-INST"; :>> modeCount = 4; :>> ioaSystem = "INST"; :>> scope = "同じ範囲"; }
        part lnk_eva : FmxSystemLink { doc /* 船外活動（EVA） */ :>> fmxSystem = "EVA"; :>> modeCount = 18; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_crew : FmxSystemLink { doc /* 乗員系・脱出系（CREW） */ :>> fmxSystem = "CREW"; :>> modeCount = 22; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_pls : FmxSystemLink { doc /* ペイロード支援（PLS） */ :>> fmxSystem = "PLS"; :>> modeCount = 10; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_apu : FmxSystemLink { doc /* 補助動力装置・油圧系（APU/HYD） */ :>> fmxSystem = "APU"; :>> modeCount = 9; :>> ioaSystem = "APU"; :>> scope = "同じ範囲"; }
        part lnk_apu_wsb : FmxSystemLink { doc /* 補助動力装置・油圧系（APU/HYD）のうち 水噴霧ボイラ（WSB）（Table 1-1：Hydraulics & Water Spray Boiler (HYD & WSB)） */ :>> fmxSystem = "APU-WSB"; :>> modeCount = 4; :>> ioaSystem = "HYD"; :>> scope = "同じ範囲"; }
        part lnk_mech : FmxSystemLink { doc /* 機械系（MECH） */ :>> fmxSystem = "MECH"; :>> modeCount = 10; :>> ioaSystem = "LAND"; :>> scope = "別の範囲"; }
        part lnk_str : FmxSystemLink { doc /* 構造（STR） */ :>> fmxSystem = "STR"; :>> modeCount = 11; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_eps : FmxSystemLink { doc /* 電力系（EPS） */ :>> fmxSystem = "EPS"; :>> modeCount = 8; :>> ioaSystem = "EPG"; :>> scope = "別の範囲"; }
        part lnk_mps : FmxSystemLink { doc /* 主推進系（MPS） */ :>> fmxSystem = "MPS"; :>> modeCount = 2; :>> ioaSystem = "MPS"; :>> scope = "同じ範囲"; }
        part lnk_mps_tvc : FmxSystemLink { doc /* 主推進系（MPS）のうち 油圧・推力方向制御（TVC）（Table 1-1：Hydraulic Actuators (HA)） */ :>> fmxSystem = "MPS-TVC"; :>> modeCount = 5; :>> ioaSystem = "HA"; :>> scope = "同じ範囲"; }
    }
    part def IoaCriticalitySystem {
        doc /* 10冊の5フェーズがすべて読めたワークシートの、系ごとの最も厳しい機器の危険度（5フェーズの機器の危険度の数字の最小）の頁数。読めなかった頁の分布は分からない */
        attribute systemCode : String;
        attribute worksheetPages : Integer;
        attribute phasesReadable : Integer;
        attribute hardwareMin1 : Integer;
        attribute hardwareMin2 : Integer;
        attribute hardwareMin3 : Integer;
    }
    part def IoaCriticalityPhase {
        doc /* 10冊の読めたワークシートの、フェーズごとの危険度の値（機器／機能。例 3/1R）の件数。件数が 0 の値は書かない */
        attribute phase : String;
        attribute valueCounts : String;
        attribute otherCount : Integer;
    }
    part ioaCriticalitySystems {
        part crs_epg : IoaCriticalitySystem { doc /* 電力発生系・燃料電池 */ :>> systemCode = "EPG"; :>> worksheetPages = 63; :>> phasesReadable = 60; :>> hardwareMin1 = 3; :>> hardwareMin2 = 25; :>> hardwareMin3 = 32; }
        part crs_oms : IoaCriticalitySystem { doc /* 軌道制御系（OMS） */ :>> systemCode = "OMS"; :>> worksheetPages = 953; :>> phasesReadable = 742; :>> hardwareMin1 = 35; :>> hardwareMin2 = 136; :>> hardwareMin3 = 571; }
        part crs_gnc : IoaCriticalitySystem { doc /* 誘導・航法・制御（GN&C） */ :>> systemCode = "GNC"; :>> worksheetPages = 139; :>> phasesReadable = 105; :>> hardwareMin1 = 3; :>> hardwareMin2 = 18; :>> hardwareMin3 = 84; }
        part crs_mps : IoaCriticalitySystem { doc /* 主推進系（MPS） */ :>> systemCode = "MPS"; :>> worksheetPages = 691; :>> phasesReadable = 362; :>> hardwareMin1 = 75; :>> hardwareMin2 = 83; :>> hardwareMin3 = 204; }
        part crs_apu : IoaCriticalitySystem { doc /* 補助動力装置（APU） */ :>> systemCode = "APU"; :>> worksheetPages = 282; :>> phasesReadable = 179; :>> hardwareMin1 = 23; :>> hardwareMin2 = 49; :>> hardwareMin3 = 107; }
        part crs_rcs : IoaCriticalitySystem { doc /* 姿勢制御系（RCS） */ :>> systemCode = "RCS"; :>> worksheetPages = 2233; :>> phasesReadable = 1933; :>> hardwareMin1 = 46; :>> hardwareMin2 = 210; :>> hardwareMin3 = 1677; }
        part crs_land : IoaCriticalitySystem { doc /* 着陸・減速系（L&D） */ :>> systemCode = "LAND"; :>> worksheetPages = 279; :>> phasesReadable = 115; :>> hardwareMin1 = 41; :>> hardwareMin2 = 10; :>> hardwareMin3 = 64; }
        part crs_ct : IoaCriticalitySystem { doc /* 通信・追跡（C&T） */ :>> systemCode = "CT"; :>> worksheetPages = 947; :>> phasesReadable = 807; :>> hardwareMin1 = 4; :>> hardwareMin2 = 160; :>> hardwareMin3 = 643; }
    }
    part ioaCriticalityPhases {
        part crp_prelaunch : IoaCriticalityPhase { doc /* PRELAUNCH */ :>> phase = "PRELAUNCH"; :>> valueCounts = "1/1:118; 1/1R:1; 2/1R:72; 2/2R:1; 3/1R:88; 3/2:8; 3/2R:5; 3/3:4009; 3/3R:1"; :>> otherCount = 0; }
        part crp_liftoff : IoaCriticalityPhase { doc /* LIFTOFF */ :>> phase = "LIFTOFF"; :>> valueCounts = "1/1:149; 2/1R:167; 2/2:40; 3/1:1; 3/1R:173; 3/2R:256; 3/3:3516; 1/3:1"; :>> otherCount = 0; }
        part crp_onorbit : IoaCriticalityPhase { doc /* ONORBIT */ :>> phase = "ONORBIT"; :>> valueCounts = "1/1:84; 2/1R:286; 2/2:238; 3/1R:250; 3/2:1; 3/2R:1173; 3/3:2271"; :>> otherCount = 0; }
        part crp_deorbit : IoaCriticalityPhase { doc /* DEORBIT */ :>> phase = "DEORBIT"; :>> valueCounts = "1/1:149; 2/1R:252; 2/2:61; 3/1R:559; 3/2R:215; 3/3:3067"; :>> otherCount = 0; }
        part crp_landing_safing : IoaCriticalityPhase { doc /* LANDING/SAFING */ :>> phase = "LANDING/SAFING"; :>> valueCounts = "1/1:110; 2/1R:106; 3/1R:109; 3/2R:2; 3/3:3974; 3/3R:2"; :>> otherCount = 0; }
    }
}
