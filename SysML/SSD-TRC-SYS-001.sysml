// SysML v2 テキスト：トレース網羅・影響分析（関係・網羅の指標・切れ目・影響のビュー）
// SSD-TRC-SYS-001 トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響） の表から生成（lib/build_docs_ao.py・rev_ao/aodata.py）。グラフはパッケージの文書とモデルから作った。
package SSD_TRC_SYS_001 {
    doc /* SSD-TRC-SYS-001 トレース網羅・影響分析書（連鎖の網羅・切れ目・変更の影響）。図115〜117 と同じ値。 */
    private import ScalarValues::*;
    private import StandardViewDefinitions::*;
    metadata def TraceRelation { attribute relation : String; attribute fromKind : String; attribute toKind : String; attribute count : Integer; }
    metadata def CoverageMetric { attribute metric : String; attribute covered : Integer; attribute total : Integer; }
    metadata def TraceGapCategory { attribute title : String; attribute judgment : String; attribute count : Integer; }
    metadata def TraceGap { attribute category : String; attribute judgment : String; }
    view def ImpactView :> GridView { doc /* 起点の機器から連鎖を辿った影響の範囲（SSD-TRC-SYS-001 §9） */ render Views::asElementTable; }
    // ---- 関係（連鎖）
    metadata <'TR-01'> tr_01 : TraceRelation { relation = "derive"; fromKind = "L1"; toKind = "L2"; count = 1008; }
    metadata <'TR-02'> tr_02 : TraceRelation { relation = "satisfy"; fromKind = "L1・L2"; toKind = "F・IF"; count = 2687; }
    metadata <'TR-03'> tr_03 : TraceRelation { relation = "verify"; fromKind = "L1・L2"; toKind = "VC"; count = 833; }
    metadata <'TR-04'> tr_04 : TraceRelation { relation = "own"; fromKind = "F"; toKind = "BLK"; count = 2075; }
    metadata <'TR-05'> tr_05 : TraceRelation { relation = "end"; fromKind = "IF"; toKind = "BLK"; count = 1175; }
    metadata <'TR-06'> tr_06 : TraceRelation { relation = "alloc"; fromKind = "PHY"; toKind = "F・BLK"; count = 524; }
    metadata <'TR-07'> tr_07 : TraceRelation { relation = "place"; fromKind = "PHY"; toKind = "CMP"; count = 138; }
    metadata <'TR-08'> tr_08 : TraceRelation { relation = "fmea"; fromKind = "FM"; toKind = "F・IF"; count = 2110; }
    metadata <'TR-09'> tr_09 : TraceRelation { relation = "rule"; fromKind = "RULE"; toKind = "BLK"; count = 83; }
    metadata <'TR-10'> tr_10 : TraceRelation { relation = "act"; fromKind = "ACT"; toKind = "F"; count = 211; }
    metadata <'TR-11'> tr_11 : TraceRelation { relation = "actpart"; fromKind = "ACT"; toKind = "BLK"; count = 51; }
    metadata <'TR-12'> tr_12 : TraceRelation { relation = "msg"; fromKind = "MSG"; toKind = "IF"; count = 100; }
    metadata <'TR-13'> tr_13 : TraceRelation { relation = "sm"; fromKind = "SM"; toKind = "BLK"; count = 28; }
    metadata <'TR-14'> tr_14 : TraceRelation { relation = "flow"; fromKind = "FL"; toKind = "IF"; count = 800; }
    metadata <'TR-15'> tr_15 : TraceRelation { relation = "flowpart"; fromKind = "FL"; toKind = "EQ"; count = 1060; }
    metadata <'TR-16'> tr_16 : TraceRelation { relation = "eq"; fromKind = "EQ"; toKind = "PHY"; count = 396; }
    metadata <'TR-17'> tr_17 : TraceRelation { relation = "eqblk"; fromKind = "EQ"; toKind = "BLK"; count = 396; }
    metadata <'TR-18'> tr_18 : TraceRelation { relation = "icd"; fromKind = "ICD"; toKind = "IF"; count = 59; }
    // ---- 系ごとの網羅（系の part def に付ける）
    metadata <'COV-APU-C1'> cov_APU_C1 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C1"; covered = 43; total = 43; }
    metadata <'COV-APU-C2'> cov_APU_C2 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C2"; covered = 43; total = 43; }
    metadata <'COV-APU-C3'> cov_APU_C3 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C3"; covered = 33; total = 43; }
    metadata <'COV-APU-C4'> cov_APU_C4 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C4"; covered = 92; total = 92; }
    metadata <'COV-APU-C5'> cov_APU_C5 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C5"; covered = 6; total = 29; }
    metadata <'COV-APU-C6'> cov_APU_C6 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C6"; covered = 23; total = 29; }
    metadata <'COV-APU-C7'> cov_APU_C7 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C7"; covered = 7; total = 7; }
    metadata <'COV-APU-C8'> cov_APU_C8 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-APU-C9'> cov_APU_C9 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-CREW-C1'> cov_CREW_C1 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C1"; covered = 41; total = 41; }
    metadata <'COV-CREW-C2'> cov_CREW_C2 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C2"; covered = 41; total = 41; }
    metadata <'COV-CREW-C3'> cov_CREW_C3 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C3"; covered = 23; total = 41; }
    metadata <'COV-CREW-C4'> cov_CREW_C4 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C4"; covered = 52; total = 52; }
    metadata <'COV-CREW-C5'> cov_CREW_C5 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C5"; covered = 1; total = 12; }
    metadata <'COV-CREW-C6'> cov_CREW_C6 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C6"; covered = 12; total = 12; }
    metadata <'COV-CREW-C7'> cov_CREW_C7 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-CREW-C8'> cov_CREW_C8 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-CREW-C9'> cov_CREW_C9 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-CT-C1'> cov_CT_C1 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C1"; covered = 43; total = 43; }
    metadata <'COV-CT-C2'> cov_CT_C2 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C2"; covered = 43; total = 43; }
    metadata <'COV-CT-C3'> cov_CT_C3 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C3"; covered = 33; total = 43; }
    metadata <'COV-CT-C4'> cov_CT_C4 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C4"; covered = 88; total = 88; }
    metadata <'COV-CT-C5'> cov_CT_C5 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C5"; covered = 6; total = 29; }
    metadata <'COV-CT-C6'> cov_CT_C6 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C6"; covered = 29; total = 29; }
    metadata <'COV-CT-C7'> cov_CT_C7 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C7"; covered = 12; total = 12; }
    metadata <'COV-CT-C8'> cov_CT_C8 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-CT-C9'> cov_CT_C9 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-CW-C1'> cov_CW_C1 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C1"; covered = 35; total = 35; }
    metadata <'COV-CW-C2'> cov_CW_C2 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C2"; covered = 35; total = 35; }
    metadata <'COV-CW-C3'> cov_CW_C3 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C3"; covered = 21; total = 35; }
    metadata <'COV-CW-C4'> cov_CW_C4 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C4"; covered = 46; total = 46; }
    metadata <'COV-CW-C5'> cov_CW_C5 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C5"; covered = 4; total = 12; }
    metadata <'COV-CW-C6'> cov_CW_C6 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C6"; covered = 12; total = 12; }
    metadata <'COV-CW-C7'> cov_CW_C7 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-CW-C8'> cov_CW_C8 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C8"; covered = 6; total = 6; }
    metadata <'COV-CW-C9'> cov_CW_C9 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C9"; covered = 6; total = 6; }
    metadata <'COV-DPS-C1'> cov_DPS_C1 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C1"; covered = 50; total = 50; }
    metadata <'COV-DPS-C2'> cov_DPS_C2 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C2"; covered = 50; total = 50; }
    metadata <'COV-DPS-C3'> cov_DPS_C3 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C3"; covered = 34; total = 50; }
    metadata <'COV-DPS-C4'> cov_DPS_C4 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C4"; covered = 91; total = 91; }
    metadata <'COV-DPS-C5'> cov_DPS_C5 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C5"; covered = 12; total = 29; }
    metadata <'COV-DPS-C6'> cov_DPS_C6 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C6"; covered = 26; total = 29; }
    metadata <'COV-DPS-C7'> cov_DPS_C7 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C7"; covered = 7; total = 7; }
    metadata <'COV-DPS-C8'> cov_DPS_C8 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-DPS-C9'> cov_DPS_C9 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C9"; covered = 7; total = 8; }
    metadata <'COV-ECLSS-C1'> cov_ECLSS_C1 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C1"; covered = 124; total = 124; }
    metadata <'COV-ECLSS-C2'> cov_ECLSS_C2 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C2"; covered = 124; total = 124; }
    metadata <'COV-ECLSS-C3'> cov_ECLSS_C3 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C3"; covered = 114; total = 124; }
    metadata <'COV-ECLSS-C4'> cov_ECLSS_C4 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C4"; covered = 945; total = 945; }
    metadata <'COV-ECLSS-C5'> cov_ECLSS_C5 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C5"; covered = 9; total = 298; }
    metadata <'COV-ECLSS-C6'> cov_ECLSS_C6 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C6"; covered = 298; total = 298; }
    metadata <'COV-ECLSS-C7'> cov_ECLSS_C7 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C7"; covered = 39; total = 39; }
    metadata <'COV-ECLSS-C8'> cov_ECLSS_C8 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C8"; covered = 87; total = 87; }
    metadata <'COV-ECLSS-C9'> cov_ECLSS_C9 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C9"; covered = 87; total = 87; }
    metadata <'COV-EPS-C1'> cov_EPS_C1 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C1"; covered = 47; total = 47; }
    metadata <'COV-EPS-C2'> cov_EPS_C2 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C2"; covered = 47; total = 47; }
    metadata <'COV-EPS-C3'> cov_EPS_C3 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C3"; covered = 36; total = 47; }
    metadata <'COV-EPS-C4'> cov_EPS_C4 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C4"; covered = 33; total = 33; }
    metadata <'COV-EPS-C5'> cov_EPS_C5 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C5"; covered = 8; total = 23; }
    metadata <'COV-EPS-C6'> cov_EPS_C6 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C6"; covered = 23; total = 23; }
    metadata <'COV-EPS-C7'> cov_EPS_C7 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-EPS-C8'> cov_EPS_C8 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C8"; covered = 5; total = 5; }
    metadata <'COV-EPS-C9'> cov_EPS_C9 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C9"; covered = 5; total = 5; }
    metadata <'COV-EVA-C1'> cov_EVA_C1 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C1"; covered = 37; total = 37; }
    metadata <'COV-EVA-C2'> cov_EVA_C2 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C2"; covered = 37; total = 37; }
    metadata <'COV-EVA-C3'> cov_EVA_C3 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C3"; covered = 21; total = 37; }
    metadata <'COV-EVA-C4'> cov_EVA_C4 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C4"; covered = 85; total = 85; }
    metadata <'COV-EVA-C5'> cov_EVA_C5 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C5"; covered = 3; total = 15; }
    metadata <'COV-EVA-C6'> cov_EVA_C6 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C6"; covered = 9; total = 15; }
    metadata <'COV-EVA-C7'> cov_EVA_C7 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C7"; covered = 9; total = 9; }
    metadata <'COV-EVA-C8'> cov_EVA_C8 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-EVA-C9'> cov_EVA_C9 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-GNC-C1'> cov_GNC_C1 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C1"; covered = 45; total = 45; }
    metadata <'COV-GNC-C2'> cov_GNC_C2 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C2"; covered = 45; total = 45; }
    metadata <'COV-GNC-C3'> cov_GNC_C3 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C3"; covered = 40; total = 45; }
    metadata <'COV-GNC-C4'> cov_GNC_C4 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C4"; covered = 90; total = 90; }
    metadata <'COV-GNC-C5'> cov_GNC_C5 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C5"; covered = 5; total = 24; }
    metadata <'COV-GNC-C6'> cov_GNC_C6 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C6"; covered = 24; total = 24; }
    metadata <'COV-GNC-C7'> cov_GNC_C7 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-GNC-C8'> cov_GNC_C8 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-GNC-C9'> cov_GNC_C9 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-MECH-C1'> cov_MECH_C1 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C1"; covered = 38; total = 38; }
    metadata <'COV-MECH-C2'> cov_MECH_C2 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C2"; covered = 38; total = 38; }
    metadata <'COV-MECH-C3'> cov_MECH_C3 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C3"; covered = 26; total = 38; }
    metadata <'COV-MECH-C4'> cov_MECH_C4 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C4"; covered = 52; total = 52; }
    metadata <'COV-MECH-C5'> cov_MECH_C5 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C5"; covered = 1; total = 11; }
    metadata <'COV-MECH-C6'> cov_MECH_C6 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C6"; covered = 11; total = 11; }
    metadata <'COV-MECH-C7'> cov_MECH_C7 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-MECH-C8'> cov_MECH_C8 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-MECH-C9'> cov_MECH_C9 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-MPS-C1'> cov_MPS_C1 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C1"; covered = 44; total = 44; }
    metadata <'COV-MPS-C2'> cov_MPS_C2 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C2"; covered = 44; total = 44; }
    metadata <'COV-MPS-C3'> cov_MPS_C3 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C3"; covered = 32; total = 44; }
    metadata <'COV-MPS-C4'> cov_MPS_C4 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C4"; covered = 96; total = 96; }
    metadata <'COV-MPS-C5'> cov_MPS_C5 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C5"; covered = 3; total = 23; }
    metadata <'COV-MPS-C6'> cov_MPS_C6 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C6"; covered = 19; total = 23; }
    metadata <'COV-MPS-C7'> cov_MPS_C7 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C7"; covered = 8; total = 8; }
    metadata <'COV-MPS-C8'> cov_MPS_C8 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-MPS-C9'> cov_MPS_C9 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-OMS-C1'> cov_OMS_C1 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C1"; covered = 41; total = 41; }
    metadata <'COV-OMS-C2'> cov_OMS_C2 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C2"; covered = 41; total = 41; }
    metadata <'COV-OMS-C3'> cov_OMS_C3 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C3"; covered = 25; total = 41; }
    metadata <'COV-OMS-C4'> cov_OMS_C4 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C4"; covered = 93; total = 93; }
    metadata <'COV-OMS-C5'> cov_OMS_C5 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C5"; covered = 1; total = 20; }
    metadata <'COV-OMS-C6'> cov_OMS_C6 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C6"; covered = 15; total = 20; }
    metadata <'COV-OMS-C7'> cov_OMS_C7 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-OMS-C8'> cov_OMS_C8 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-OMS-C9'> cov_OMS_C9 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-PLS-C1'> cov_PLS_C1 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C1"; covered = 39; total = 39; }
    metadata <'COV-PLS-C2'> cov_PLS_C2 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C2"; covered = 39; total = 39; }
    metadata <'COV-PLS-C3'> cov_PLS_C3 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C3"; covered = 31; total = 39; }
    metadata <'COV-PLS-C4'> cov_PLS_C4 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C4"; covered = 50; total = 50; }
    metadata <'COV-PLS-C5'> cov_PLS_C5 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C5"; covered = 3; total = 12; }
    metadata <'COV-PLS-C6'> cov_PLS_C6 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C6"; covered = 12; total = 12; }
    metadata <'COV-PLS-C7'> cov_PLS_C7 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-PLS-C8'> cov_PLS_C8 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-PLS-C9'> cov_PLS_C9 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-RCS-C1'> cov_RCS_C1 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C1"; covered = 40; total = 40; }
    metadata <'COV-RCS-C2'> cov_RCS_C2 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C2"; covered = 40; total = 40; }
    metadata <'COV-RCS-C3'> cov_RCS_C3 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C3"; covered = 28; total = 40; }
    metadata <'COV-RCS-C4'> cov_RCS_C4 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C4"; covered = 91; total = 91; }
    metadata <'COV-RCS-C5'> cov_RCS_C5 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C5"; covered = 1; total = 20; }
    metadata <'COV-RCS-C6'> cov_RCS_C6 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C6"; covered = 12; total = 20; }
    metadata <'COV-RCS-C7'> cov_RCS_C7 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C7"; covered = 8; total = 8; }
    metadata <'COV-RCS-C8'> cov_RCS_C8 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-RCS-C9'> cov_RCS_C9 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-STR-C1'> cov_STR_C1 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C1"; covered = 37; total = 37; }
    metadata <'COV-STR-C2'> cov_STR_C2 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C2"; covered = 37; total = 37; }
    metadata <'COV-STR-C3'> cov_STR_C3 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C3"; covered = 22; total = 37; }
    metadata <'COV-STR-C4'> cov_STR_C4 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C4"; covered = 51; total = 51; }
    metadata <'COV-STR-C5'> cov_STR_C5 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C5"; covered = 1; total = 11; }
    metadata <'COV-STR-C6'> cov_STR_C6 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C6"; covered = 11; total = 11; }
    metadata <'COV-STR-C7'> cov_STR_C7 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-STR-C8'> cov_STR_C8 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-STR-C9'> cov_STR_C9 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-TPS-C1'> cov_TPS_C1 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C1"; covered = 20; total = 20; }
    metadata <'COV-TPS-C2'> cov_TPS_C2 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C2"; covered = 20; total = 20; }
    metadata <'COV-TPS-C3'> cov_TPS_C3 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C3"; covered = 15; total = 20; }
    metadata <'COV-TPS-C4'> cov_TPS_C4 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C4"; covered = 16; total = 16; }
    metadata <'COV-TPS-C5'> cov_TPS_C5 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C5"; covered = 3; total = 3; }
    metadata <'COV-TPS-C6'> cov_TPS_C6 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C6"; covered = 3; total = 3; }
    metadata <'COV-TPS-C7'> cov_TPS_C7 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-TPS-C8'> cov_TPS_C8 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C8"; covered = 3; total = 3; }
    metadata <'COV-TPS-C9'> cov_TPS_C9 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C9"; covered = 3; total = 3; }
    metadata <'COV-ET-C1'> cov_ET_C1 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C1"; covered = 39; total = 39; }
    metadata <'COV-ET-C2'> cov_ET_C2 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C2"; covered = 39; total = 39; }
    metadata <'COV-ET-C3'> cov_ET_C3 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C3"; covered = 23; total = 39; }
    metadata <'COV-ET-C4'> cov_ET_C4 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C4"; covered = 43; total = 43; }
    metadata <'COV-ET-C5'> cov_ET_C5 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C5"; covered = 1; total = 8; }
    metadata <'COV-ET-C6'> cov_ET_C6 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C6"; covered = 8; total = 8; }
    metadata <'COV-ET-C7'> cov_ET_C7 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C7"; covered = 0; total = 0; }
    metadata <'COV-ET-C8'> cov_ET_C8 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-ET-C9'> cov_ET_C9 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-SRB-C1'> cov_SRB_C1 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C1"; covered = 40; total = 40; }
    metadata <'COV-SRB-C2'> cov_SRB_C2 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C2"; covered = 40; total = 40; }
    metadata <'COV-SRB-C3'> cov_SRB_C3 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C3"; covered = 31; total = 40; }
    metadata <'COV-SRB-C4'> cov_SRB_C4 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C4"; covered = 49; total = 49; }
    metadata <'COV-SRB-C5'> cov_SRB_C5 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C5"; covered = 2; total = 10; }
    metadata <'COV-SRB-C6'> cov_SRB_C6 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C6"; covered = 10; total = 10; }
    metadata <'COV-SRB-C7'> cov_SRB_C7 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C7"; covered = 0; total = 0; }
    metadata <'COV-SRB-C8'> cov_SRB_C8 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C8"; covered = 7; total = 7; }
    metadata <'COV-SRB-C9'> cov_SRB_C9 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C9"; covered = 7; total = 7; }
    // ---- 切れ目の分類と、一覧の要素
    metadata <'GAP-01'> gap_01 : TraceGapCategory { title = "検証の判定が pass でない要求"; judgment = "判断済み"; count = 215; }
    metadata <'GAP-02'> gap_02 : TraceGapCategory { title = "要求なしで妥当と判断した機能行"; judgment = "判断済み"; count = 138; }
    metadata <'GAP-03'> gap_03 : TraceGapCategory { title = "トレースの対象外の機能行"; judgment = "範囲外"; count = 10; }
    metadata <'GAP-04'> gap_04 : TraceGapCategory { title = "要求の割付先でない IF"; judgment = "方針"; count = 519; }
    metadata <'GAP-05'> gap_05 : TraceGapCategory { title = "振る舞い・流れが通らない IF"; judgment = "範囲外"; count = 32; }
    metadata <'GAP-06'> gap_06 : TraceGapCategory { title = "要求につながらない機器"; judgment = "未処理"; count = 0; }
    metadata <'GAP-07'> gap_07 : TraceGapCategory { title = "故障解析の対応が無い機能ブロック"; judgment = "範囲外"; count = 0; }
    metadata <'GAP-08'> gap_08 : TraceGapCategory { title = "振る舞いに現れない機能ブロック"; judgment = "範囲外"; count = 1; }
    metadata <'GAP-09'> gap_09 : TraceGapCategory { title = "既存の IF が無い流れ"; judgment = "未処理"; count = 0; }
    metadata <'GAP-10'> gap_10 : TraceGapCategory { title = "機器配分表に行が無い内部ブロック図の機器"; judgment = "未処理"; count = 0; }
    metadata <'GAP-11'> gap_11 : TraceGapCategory { title = "機能ブロックの中の流れ（IF にしない）"; judgment = "判断済み"; count = 153; }
    metadata <'GAP-12'> gap_12 : TraceGapCategory { title = "故障モードが当てはまらないと判断した機能ブロック"; judgment = "判断済み"; count = 11; }
    metadata <'GAP-01-01'> gap_01_01 : TraceGap about SSD_IRQ_SYS_001::Results::vc_irq_orb_28 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-02'> gap_01_02 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-03'> gap_01_03 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-04'> gap_01_04 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-05'> gap_01_05 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-06'> gap_01_06 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-07'> gap_01_07 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-08'> gap_01_08 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-09'> gap_01_09 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-10'> gap_01_10 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-11'> gap_01_11 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_apu_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-12'> gap_01_12 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-13'> gap_01_13 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-14'> gap_01_14 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-15'> gap_01_15 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-16'> gap_01_16 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-17'> gap_01_17 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-18'> gap_01_18 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-19'> gap_01_19 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_16 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-20'> gap_01_20 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-21'> gap_01_21 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-22'> gap_01_22 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-23'> gap_01_23 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-24'> gap_01_24 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-25'> gap_01_25 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_26 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-26'> gap_01_26 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-27'> gap_01_27 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_28 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-28'> gap_01_28 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_29 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-29'> gap_01_29 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_crew_30 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-30'> gap_01_30 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-31'> gap_01_31 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-32'> gap_01_32 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-33'> gap_01_33 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-34'> gap_01_34 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-35'> gap_01_35 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-36'> gap_01_36 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-37'> gap_01_37 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-38'> gap_01_38 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_20 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-39'> gap_01_39 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_ct_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-40'> gap_01_40 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-41'> gap_01_41 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-42'> gap_01_42 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-43'> gap_01_43 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-44'> gap_01_44 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-45'> gap_01_45 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-46'> gap_01_46 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-47'> gap_01_47 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-48'> gap_01_48 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-49'> gap_01_49 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-50'> gap_01_50 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_16 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-51'> gap_01_51 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-52'> gap_01_52 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-53'> gap_01_53 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_cw_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-54'> gap_01_54 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-55'> gap_01_55 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-56'> gap_01_56 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-57'> gap_01_57 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-58'> gap_01_58 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-59'> gap_01_59 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-60'> gap_01_60 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-61'> gap_01_61 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-62'> gap_01_62 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-63'> gap_01_63 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-64'> gap_01_64 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_20 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-65'> gap_01_65 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-66'> gap_01_66 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-67'> gap_01_67 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-68'> gap_01_68 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_29 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-69'> gap_01_69 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_dps_30 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-70'> gap_01_70 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-71'> gap_01_71 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-72'> gap_01_72 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-73'> gap_01_73 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-74'> gap_01_74 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-75'> gap_01_75 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-76'> gap_01_76 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-77'> gap_01_77 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-78'> gap_01_78 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-79'> gap_01_79 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eps_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-80'> gap_01_80 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-81'> gap_01_81 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-82'> gap_01_82 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-83'> gap_01_83 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-84'> gap_01_84 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-85'> gap_01_85 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-86'> gap_01_86 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-87'> gap_01_87 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-88'> gap_01_88 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-89'> gap_01_89 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-90'> gap_01_90 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-91'> gap_01_91 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_16 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-92'> gap_01_92 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_20 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-93'> gap_01_93 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-94'> gap_01_94 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-95'> gap_01_95 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_et_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-96'> gap_01_96 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-97'> gap_01_97 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-98'> gap_01_98 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-99'> gap_01_99 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-100'> gap_01_100 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-101'> gap_01_101 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-102'> gap_01_102 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-103'> gap_01_103 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-104'> gap_01_104 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-105'> gap_01_105 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_19 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-106'> gap_01_106 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-107'> gap_01_107 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-108'> gap_01_108 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-109'> gap_01_109 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-110'> gap_01_110 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_26 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-111'> gap_01_111 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_eva_29 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-112'> gap_01_112 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_gnc_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-113'> gap_01_113 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_gnc_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-114'> gap_01_114 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_gnc_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-115'> gap_01_115 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_gnc_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-116'> gap_01_116 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_gnc_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-117'> gap_01_117 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-118'> gap_01_118 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-119'> gap_01_119 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-120'> gap_01_120 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-121'> gap_01_121 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-122'> gap_01_122 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-123'> gap_01_123 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-124'> gap_01_124 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-125'> gap_01_125 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-126'> gap_01_126 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_19 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-127'> gap_01_127 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-128'> gap_01_128 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mech_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-129'> gap_01_129 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-130'> gap_01_130 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-131'> gap_01_131 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-132'> gap_01_132 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-133'> gap_01_133 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-134'> gap_01_134 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-135'> gap_01_135 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_16 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-136'> gap_01_136 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-137'> gap_01_137 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_19 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-138'> gap_01_138 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_26 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-139'> gap_01_139 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-140'> gap_01_140 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_mps_29 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-141'> gap_01_141 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-142'> gap_01_142 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-143'> gap_01_143 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-144'> gap_01_144 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-145'> gap_01_145 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-146'> gap_01_146 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-147'> gap_01_147 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-148'> gap_01_148 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-149'> gap_01_149 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-150'> gap_01_150 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-151'> gap_01_151 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_16 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-152'> gap_01_152 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_18 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-153'> gap_01_153 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-154'> gap_01_154 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-155'> gap_01_155 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-156'> gap_01_156 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_oms_29 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-157'> gap_01_157 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-158'> gap_01_158 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-159'> gap_01_159 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-160'> gap_01_160 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-161'> gap_01_161 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_19 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-162'> gap_01_162 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-163'> gap_01_163 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-164'> gap_01_164 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_pls_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-165'> gap_01_165 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-166'> gap_01_166 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-167'> gap_01_167 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-168'> gap_01_168 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-169'> gap_01_169 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-170'> gap_01_170 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-171'> gap_01_171 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_19 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-172'> gap_01_172 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_20 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-173'> gap_01_173 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-174'> gap_01_174 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_25 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-175'> gap_01_175 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-176'> gap_01_176 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_rcs_30 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-177'> gap_01_177 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-178'> gap_01_178 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-179'> gap_01_179 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-180'> gap_01_180 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-181'> gap_01_181 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-182'> gap_01_182 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_13 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-183'> gap_01_183 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-184'> gap_01_184 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-185'> gap_01_185 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_srb_28 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-186'> gap_01_186 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-187'> gap_01_187 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-188'> gap_01_188 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_04 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-189'> gap_01_189 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-190'> gap_01_190 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-191'> gap_01_191 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_11 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-192'> gap_01_192 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-193'> gap_01_193 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_14 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-194'> gap_01_194 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-195'> gap_01_195 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-196'> gap_01_196 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_20 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-197'> gap_01_197 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_21 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-198'> gap_01_198 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_22 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-199'> gap_01_199 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_23 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-200'> gap_01_200 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_str_24 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-201'> gap_01_201 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_tps_01 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-202'> gap_01_202 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_tps_02 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-203'> gap_01_203 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_tps_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-204'> gap_01_204 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_tps_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-205'> gap_01_205 : TraceGap about SSD_RQL_SYS_001::Results::vc_lrq_tps_10 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-206'> gap_01_206 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-207'> gap_01_207 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-208'> gap_01_208 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-209'> gap_01_209 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-210'> gap_01_210 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_41 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-211'> gap_01_211 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_fds_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-212'> gap_01_212 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-213'> gap_01_213 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-214'> gap_01_214 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_wcs_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-215'> gap_01_215 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_wcs_10 { category = "GAP-01"; judgment = "判断済み"; }
    // ---- 影響分析のビュー（起点の機器から辿った要素を晒す）
    view <'IMP-01'> imp_01 : ImpactView {
        doc /* 燃料電池発電装置の変更（例：出力・冷却の仕様変更）。起点 PHY-EPS-01 */
        expose SSD_ALC_SYS_001::Physical::PHY_EPS_01;
        expose SSD_IBD_ORB_001::FuelCell1;
        expose SSD_IBD_ORB_001::FuelCell2;
        expose SSD_IBD_ORB_001::FuelCell3;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_05;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_06;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_07;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_08;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_09;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_10;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_12;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_13;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_14;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_15;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_16;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_17;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_18;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_19;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_20;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_21;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_22;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_28;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_29;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_30;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_40;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_41;
        expose SSD_IBD_ORB_001::EpsInterconnection::fl_eps_42;
        expose SSD_BLK_SYS_001::EPS;
        expose SSD_BLK_SYS_001::EPS_FCP;
        expose SSD_BLK_SYS_001::ORB::IF_ECL_10;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_03;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_05;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_06;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_07;
        expose SSD_BLK_SYS_001::MissionContext::IF_EPS_08;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_09;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_13;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_16;
        expose SSD_BLK_SYS_001::ORB::IF_ORB_10;
        expose SSD_BLK_SYS_001::ORB::IF_ORB_11;
        expose SSD_BLK_SYS_001::ORB::IF_ORB_20;
        expose SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_10;
        expose SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_11;
        expose SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_20;
        expose SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_05;
        expose SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_06;
        expose SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_07;
        expose SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_08;
        expose SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_09;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_01;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_04;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_05;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_20;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_07;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
        expose SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_20;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_04;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
        expose SSD_IRQ_SYS_001::Results::vc_irq_orb_10;
        expose SSD_IRQ_SYS_001::Results::vc_irq_orb_11;
        expose SSD_IRQ_SYS_001::Results::vc_irq_orb_20;
        expose SSD_RQL_SYS_001::Results::vc_lrq_eps_05;
        expose SSD_RQL_SYS_001::Results::vc_lrq_eps_06;
        expose SSD_RQL_SYS_001::Results::vc_lrq_eps_07;
        expose SSD_RQL_SYS_001::Results::vc_lrq_eps_08;
        expose SSD_RQL_SYS_001::Results::vc_lrq_eps_09;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_08;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_10;
        expose SSD_VER_SYS_001::Results::vc_req_eps_01;
        expose SSD_VER_SYS_001::Results::vc_req_eps_02;
        expose SSD_VER_SYS_001::Results::vc_req_eps_03;
        expose SSD_VER_SYS_001::Results::vc_req_eps_04;
        expose SSD_VER_SYS_001::Results::vc_req_eps_05;
        expose SSD_VER_SYS_001::Results::vc_req_eps_06;
        expose SSD_VER_SYS_001::Results::vc_req_eps_07;
        expose SSD_VER_SYS_001::Results::vc_req_eps_14;
        expose SSD_VER_SYS_001::Results::vc_req_eps_15;
        expose SSD_VER_SYS_001::Results::vc_req_eps_16;
        expose SSD_VER_SYS_001::Results::vc_req_eps_18;
        expose SSD_VER_SYS_001::Results::vc_req_eps_20;
        expose SSD_VER_SYS_001::Results::vc_req_sys_04;
        expose SSD_VER_SYS_001::Results::vc_req_sys_06;
        expose SSD_VER_SYS_001::Results::vc_req_sys_07;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_14;
        expose SSD_VER_SYS_001::Results::vc_req_sys_16;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_01;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_02;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_03;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_05;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_06;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_07;
        expose SSD_GNC_ORB_001::FcsChannelFailureResponse::AC_FC_08;
        expose SSD_BEH_ORB_005::FuelCellStates;
    }
    view <'IMP-02'> imp_02 : ImpactView {
        doc /* フレオン冷却ループのポンプパッケージ・インターチェンジャの変更。起点 PHY-ECLSS-04 */
        expose SSD_ALC_SYS_001::Physical::PHY_ECLSS_04;
        expose SSD_IBD_ORB_001::AirWclInterchangerPath;
        expose SSD_IBD_ORB_001::FreonPumpPackage;
        expose SSD_IBD_ORB_001::FreonWaterInterchanger;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_17;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_01;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_02;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_16;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_18;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_19;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_20;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_33;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_38;
        expose SSD_BLK_SYS_001::ARS_WCL_ICH;
        expose SSD_BLK_SYS_001::ECLSS;
        expose SSD_BLK_SYS_001::TCS_FCL;
        expose SSD_BLK_SYS_001::TCS_HX;
        expose SSD_BLK_SYS_001::ECLSS::IF_TCS_01;
        expose SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        expose SSD_BLK_SYS_001::ORB::IF_TCS_21;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_08;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_34;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_39;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_01;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_03;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_34;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_39;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_01;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_02;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_03;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_01;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_07;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_08;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_09;
        expose SSD_VER_SYS_001::Results::vc_req_sys_05;
        expose SSD_VER_SYS_001::Results::vc_req_sys_07;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_14;
        expose SSD_VER_SYS_001::Results::vc_req_sys_15;
    }
    view <'IMP-03'> imp_03 : ImpactView {
        doc /* MPS ヘリウムタンクの変更（例：容量・圧力）。起点 PHY-MPS-05 */
        expose SSD_ALC_SYS_001::Physical::PHY_MPS_05;
        expose SSD_IBD_ORB_001::EngineHeliumSupply;
        expose SSD_IBD_ORB_001::PneumaticHeliumSupply;
        expose SSD_IBD_ORB_001::MpsInterconnection::fl_mps_27;
        expose SSD_IBD_ORB_001::MpsInterconnection::fl_mps_28;
        expose SSD_IBD_ORB_001::MpsInterconnection::fl_mps_29;
        expose SSD_IBD_ORB_001::MpsInterconnection::fl_mps_32;
        expose SSD_IBD_ORB_001::MpsInterconnection::fl_mps_37;
        expose SSD_BLK_SYS_001::MPS;
        expose SSD_BLK_SYS_001::MPS_HE;
        expose SSD_BLK_SYS_001::ORB::IF_MPS_06;
        expose SSD_BLK_SYS_001::MPS::IF_MPS_12;
        expose SSD_BLK_SYS_001::MPS::IF_MPS_13;
        expose SSD_BLK_SYS_001::MPS::IF_MPS_14;
        expose SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_10;
        expose SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_11;
        expose SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_12;
        expose SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_13;
        expose SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_26;
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_02;
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_06;
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_01;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_04;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQL_SYS_001::Results::vc_lrq_mps_10;
        expose SSD_RQL_SYS_001::Results::vc_lrq_mps_11;
        expose SSD_RQL_SYS_001::Results::vc_lrq_mps_12;
        expose SSD_RQL_SYS_001::Results::vc_lrq_mps_13;
        expose SSD_RQL_SYS_001::Results::vc_lrq_mps_26;
        expose SSD_VER_SYS_001::Results::vc_req_mps_02;
        expose SSD_VER_SYS_001::Results::vc_req_mps_06;
        expose SSD_VER_SYS_001::Results::vc_req_mps_11;
        expose SSD_VER_SYS_001::Results::vc_req_mps_13;
        expose SSD_VER_SYS_001::Results::vc_req_sys_01;
        expose SSD_VER_SYS_001::Results::vc_req_sys_04;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_BEH_ORB_002::MpsHeliumLeakResponse::AC_HE_02;
        expose SSD_BEH_ORB_002::MpsHeliumLeakResponse::AC_HE_04;
        expose SSD_BEH_ORB_002::MpsHeliumLeakResponse::AC_HE_05;
        expose SSD_BEH_ORB_006::MpsStates;
    }
    view <'IMP-04'> imp_04 : ImpactView {
        doc /* GPC（汎用計算機）の変更。起点 PHY-DPS-01 */
        expose SSD_ALC_SYS_001::Physical::PHY_DPS_01;
        expose SSD_IBD_ORB_001::Gpc;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_01;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_02;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_15;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_19;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_25;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_26;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_29;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_32;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_33;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_40;
        expose SSD_IBD_ORB_001::DpsInterconnection::fl_dps_44;
        expose SSD_BLK_SYS_001::DPS;
        expose SSD_BLK_SYS_001::DPS_GPC;
        expose SSD_BLK_SYS_001::DPS::IF_DPS_01;
        expose SSD_BLK_SYS_001::ORB::IF_DPS_02;
        expose SSD_BLK_SYS_001::DPS::IF_DPS_16;
        expose SSD_BLK_SYS_001::ORB::IF_ECL_08;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_09;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_13;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_14;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_15;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_16;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_17;
        expose SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_30;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_02;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_13;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_09;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_13;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_14;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_15;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_16;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_17;
        expose SSD_RQL_SYS_001::Results::vc_lrq_dps_30;
        expose SSD_VER_SYS_001::Results::vc_req_dps_01;
        expose SSD_VER_SYS_001::Results::vc_req_dps_02;
        expose SSD_VER_SYS_001::Results::vc_req_dps_03;
        expose SSD_VER_SYS_001::Results::vc_req_dps_04;
        expose SSD_VER_SYS_001::Results::vc_req_dps_06;
        expose SSD_VER_SYS_001::Results::vc_req_dps_12;
        expose SSD_VER_SYS_001::Results::vc_req_dps_13;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_14;
        expose SSD_VER_SYS_001::Results::vc_req_sys_15;
        expose SSD_VER_SYS_001::Results::vc_req_sys_16;
        expose SSD_BEH_ORB_005::GpcModes;
    }
    view <'IMP-05'> imp_05 : ImpactView {
        doc /* ARS 床下機器（キャビンファン・熱交換器・LiOH キャニスタ）の変更。起点 PHY-ECLSS-01 */
        expose SSD_ALC_SYS_001::Physical::PHY_ECLSS_01;
        expose SSD_IBD_ORB_001::AirCabinFanAssy;
        expose SSD_IBD_ORB_001::AirInUseCanisters;
        expose SSD_IBD_ORB_001::AirSpareCanisters;
        expose SSD_IBD_ORB_001::AirCabinHxAssy;
        expose SSD_IBD_ORB_001::AirWclPumpPackage;
        expose SSD_IBD_ORB_001::CabinFans;
        expose SSD_IBD_ORB_001::LioHCanisters;
        expose SSD_IBD_ORB_001::CabinHeatExchanger;
        expose SSD_IBD_ORB_001::WaterPumpPackage;
        expose SSD_IBD_ORB_001::CabinHxWaterSide;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_06;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_07;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_08;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_15;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_16;
        expose SSD_IBD_ORB_001::EclssAirxInterconnection::fl_airx_18;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_03;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_04;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_05;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_06;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_09;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_11;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_12;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_15;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_18;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_19;
        expose SSD_IBD_ORB_001::ArsAirInterconnection::fl_arsa_21;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_01;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_04;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_08;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_17;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_18;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_19;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_20;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_25;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_33;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_35;
        expose SSD_IBD_ORB_001::ArsWaterInterconnection::fl_arsw_36;
        expose SSD_BLK_SYS_001::ARS_CAC;
        expose SSD_BLK_SYS_001::ARS_CO2;
        expose SSD_BLK_SYS_001::ARS_THC;
        expose SSD_BLK_SYS_001::ARS_THC_HX;
        expose SSD_BLK_SYS_001::ARS_WCL;
        expose SSD_BLK_SYS_001::ARS_WCL_PMP;
        expose SSD_BLK_SYS_001::CAC_FAN;
        expose SSD_BLK_SYS_001::CO2_CAN;
        expose SSD_BLK_SYS_001::CO2_STW;
        expose SSD_BLK_SYS_001::ECLSS;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_01;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_03;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_05;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_06;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_07;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_08;
        expose SSD_BLK_SYS_001::ORB::IF_ARS_27;
        expose SSD_BLK_SYS_001::ORB::IF_ARS_30;
        expose SSD_BLK_SYS_001::ORB::IF_ARS_31;
        expose SSD_BLK_SYS_001::ORB::IF_ARS_32;
        expose SSD_BLK_SYS_001::ORB::IF_ARS_36;
        expose SSD_BLK_SYS_001::ARS_CAC::IF_CAC_02;
        expose SSD_BLK_SYS_001::ARS_CAC::IF_CAC_06;
        expose SSD_BLK_SYS_001::ARS_CAC::IF_CAC_07;
        expose SSD_BLK_SYS_001::ORB::IF_CAC_09;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_CO2_01;
        expose SSD_BLK_SYS_001::ARS_CO2::IF_CO2_02;
        expose SSD_BLK_SYS_001::ARS_CO2::IF_CO2_04;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_CO2_05;
        expose SSD_BLK_SYS_001::ORB::IF_ECL_29;
        expose SSD_BLK_SYS_001::ORB::IF_ECL_39;
        expose SSD_BLK_SYS_001::ORB::IF_ORB_19;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_01;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_02;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_THC_03;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_04;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_08;
        expose SSD_BLK_SYS_001::ORB::IF_THC_11;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_01;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_04;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_05;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_07;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_12;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_15;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_16;
        expose SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_01;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_02;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_04;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_05;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_06;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_08;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_09;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_10;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_11;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_12;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_13;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_20;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_22;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_23;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_32;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_34;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_35;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_36;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_37;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_38;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_39;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_13;
        expose SSD_IRQ_SYS_001::Results::vc_irq_orb_19;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_01;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_02;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_03;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_04;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_05;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_06;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_08;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_09;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_10;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_11;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_12;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_13;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_20;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_21;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_22;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_23;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_32;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_33;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_34;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_35;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_36;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_37;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_38;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_39;
        expose SSD_VER_SYS_001::Results::vc_req_dps_07;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_01;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_05;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_06;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_07;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_09;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_11;
        expose SSD_VER_SYS_001::Results::vc_req_sys_06;
        expose SSD_VER_SYS_001::Results::vc_req_sys_07;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_13;
        expose SSD_BEH_ORB_002::FireResponse::AC_FR_05;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_01;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_02;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_03;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_04;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_05;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_06;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_07;
        expose SSD_BEH_ORB_007::LiohChangeout::AC_LO_08;
        expose SSD_BEH_ORB_007::WaterLoopLossResponse::AC_WL_02;
        expose SSD_BEH_ORB_007::WaterLoopLossResponse::AC_WL_04;
        expose SSD_BEH_ORB_007::WaterLoopLossResponse::AC_WL_07;
    }
}
