// SysML v2 テキスト：IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応）
// SSD-IOA-ORB-001 IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応） の表から生成（lib/build_docs_dm.py・rev_dm/iodata.py）。根拠の頁は SSD-IOA-ORB-001 にある。
package SSD_IOA_ORB_001 {
    doc /* SSD-IOA-ORB-001 IOA 原資料定義書（サブシステム分析ワークシートの在庫と故障モードとの系ごとの対応）。IOA の分析冊子 10冊の件数（IoaVolume）、系ごとの Table 1-1 の FMEA 件数との対比（IoaCompare）、FMX の系ごとの故障モード数と IOA の分析冊子のある系（FmxSystemLink）を持つ。ワークシートの全件・危険度は持たない。要求への関係は張らず、トレースの外に置く。 */
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
    }
    part ioaFmxLinks {
        part lnk_gnc : FmxSystemLink { doc /* 誘導・航法・制御（GN&C） */ :>> fmxSystem = "GNC"; :>> modeCount = 9; :>> ioaSystem = "GNC"; :>> scope = "同じ範囲"; }
        part lnk_gnc_act : FmxSystemLink { doc /* 誘導・航法・制御（GN&C）のうち 舵面・推力方向制御駆動（ACT）（Table 1-1：Hydraulic Actuators (HA)） */ :>> fmxSystem = "GNC-ACT"; :>> modeCount = 5; :>> ioaSystem = ""; :>> scope = "別の IOA サブシステム"; }
        part lnk_rcs : FmxSystemLink { doc /* 姿勢制御系（RCS） */ :>> fmxSystem = "RCS"; :>> modeCount = 15; :>> ioaSystem = "RCS"; :>> scope = "同じ範囲"; }
        part lnk_dps : FmxSystemLink { doc /* データ処理系（DPS） */ :>> fmxSystem = "DPS"; :>> modeCount = 21; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_cw : FmxSystemLink { doc /* 警報系（C/W） */ :>> fmxSystem = "CW"; :>> modeCount = 4; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_ct : FmxSystemLink { doc /* 通信・追跡系（C&T） */ :>> fmxSystem = "CT"; :>> modeCount = 16; :>> ioaSystem = "CT"; :>> scope = "同じ範囲"; }
        part lnk_ct_inst : FmxSystemLink { doc /* 通信・追跡系（C&T）のうち 計装・ペイロード通信（INST）（Table 1-1：Instrumentation (INST)） */ :>> fmxSystem = "CT-INST"; :>> modeCount = 4; :>> ioaSystem = ""; :>> scope = "別の IOA サブシステム"; }
        part lnk_eva : FmxSystemLink { doc /* 船外活動（EVA） */ :>> fmxSystem = "EVA"; :>> modeCount = 18; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_crew : FmxSystemLink { doc /* 乗員系・脱出系（CREW） */ :>> fmxSystem = "CREW"; :>> modeCount = 22; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_pls : FmxSystemLink { doc /* ペイロード支援（PLS） */ :>> fmxSystem = "PLS"; :>> modeCount = 10; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_apu : FmxSystemLink { doc /* 補助動力装置・油圧系（APU/HYD） */ :>> fmxSystem = "APU"; :>> modeCount = 9; :>> ioaSystem = "APU"; :>> scope = "同じ範囲"; }
        part lnk_apu_wsb : FmxSystemLink { doc /* 補助動力装置・油圧系（APU/HYD）のうち 水噴霧ボイラ（WSB）（Table 1-1：Hydraulics & Water Spray Boiler (HYD & WSB)） */ :>> fmxSystem = "APU-WSB"; :>> modeCount = 4; :>> ioaSystem = ""; :>> scope = "別の IOA サブシステム"; }
        part lnk_mech : FmxSystemLink { doc /* 機械系（MECH） */ :>> fmxSystem = "MECH"; :>> modeCount = 10; :>> ioaSystem = "LAND"; :>> scope = "別の範囲"; }
        part lnk_str : FmxSystemLink { doc /* 構造（STR） */ :>> fmxSystem = "STR"; :>> modeCount = 11; :>> ioaSystem = ""; :>> scope = "分析冊子が無い"; }
        part lnk_eps : FmxSystemLink { doc /* 電力系（EPS） */ :>> fmxSystem = "EPS"; :>> modeCount = 8; :>> ioaSystem = "EPG"; :>> scope = "別の範囲"; }
        part lnk_mps : FmxSystemLink { doc /* 主推進系（MPS） */ :>> fmxSystem = "MPS"; :>> modeCount = 2; :>> ioaSystem = "MPS"; :>> scope = "同じ範囲"; }
        part lnk_mps_tvc : FmxSystemLink { doc /* 主推進系（MPS）のうち 油圧・推力方向制御（TVC）（Table 1-1：Hydraulic Actuators (HA)） */ :>> fmxSystem = "MPS-TVC"; :>> modeCount = 5; :>> ioaSystem = ""; :>> scope = "別の IOA サブシステム"; }
    }
}
