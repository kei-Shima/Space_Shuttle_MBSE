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
    metadata <'TR-01'> tr_01 : TraceRelation { relation = "derive"; fromKind = "L1"; toKind = "L2"; count = 351; }
    metadata <'TR-02'> tr_02 : TraceRelation { relation = "satisfy"; fromKind = "L1・L2"; toKind = "F・IF"; count = 1857; }
    metadata <'TR-03'> tr_03 : TraceRelation { relation = "verify"; fromKind = "L1・L2"; toKind = "VC"; count = 311; }
    metadata <'TR-04'> tr_04 : TraceRelation { relation = "own"; fromKind = "F"; toKind = "BLK"; count = 2075; }
    metadata <'TR-05'> tr_05 : TraceRelation { relation = "end"; fromKind = "IF"; toKind = "BLK"; count = 1175; }
    metadata <'TR-06'> tr_06 : TraceRelation { relation = "alloc"; fromKind = "PHY"; toKind = "F・BLK"; count = 459; }
    metadata <'TR-07'> tr_07 : TraceRelation { relation = "place"; fromKind = "PHY"; toKind = "CMP"; count = 120; }
    metadata <'TR-08'> tr_08 : TraceRelation { relation = "fmea"; fromKind = "FM"; toKind = "F・IF"; count = 1822; }
    metadata <'TR-09'> tr_09 : TraceRelation { relation = "rule"; fromKind = "RULE"; toKind = "BLK"; count = 83; }
    metadata <'TR-10'> tr_10 : TraceRelation { relation = "act"; fromKind = "ACT"; toKind = "F"; count = 155; }
    metadata <'TR-11'> tr_11 : TraceRelation { relation = "actpart"; fromKind = "ACT"; toKind = "BLK"; count = 51; }
    metadata <'TR-12'> tr_12 : TraceRelation { relation = "msg"; fromKind = "MSG"; toKind = "IF"; count = 48; }
    metadata <'TR-13'> tr_13 : TraceRelation { relation = "sm"; fromKind = "SM"; toKind = "BLK"; count = 17; }
    metadata <'TR-14'> tr_14 : TraceRelation { relation = "flow"; fromKind = "FL"; toKind = "IF"; count = 342; }
    metadata <'TR-15'> tr_15 : TraceRelation { relation = "flowpart"; fromKind = "FL"; toKind = "EQ"; count = 659; }
    metadata <'TR-16'> tr_16 : TraceRelation { relation = "eq"; fromKind = "EQ"; toKind = "PHY"; count = 202; }
    metadata <'TR-17'> tr_17 : TraceRelation { relation = "eqblk"; fromKind = "EQ"; toKind = "BLK"; count = 202; }
    metadata <'TR-18'> tr_18 : TraceRelation { relation = "icd"; fromKind = "ICD"; toKind = "IF"; count = 59; }
    // ---- 系ごとの網羅（系の part def に付ける）
    metadata <'COV-APU-C1'> cov_APU_C1 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C1"; covered = 9; total = 9; }
    metadata <'COV-APU-C2'> cov_APU_C2 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C2"; covered = 9; total = 9; }
    metadata <'COV-APU-C3'> cov_APU_C3 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C3"; covered = 9; total = 9; }
    metadata <'COV-APU-C4'> cov_APU_C4 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C4"; covered = 92; total = 92; }
    metadata <'COV-APU-C5'> cov_APU_C5 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C5"; covered = 2; total = 29; }
    metadata <'COV-APU-C6'> cov_APU_C6 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C6"; covered = 20; total = 29; }
    metadata <'COV-APU-C7'> cov_APU_C7 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C7"; covered = 7; total = 7; }
    metadata <'COV-APU-C8'> cov_APU_C8 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C8"; covered = 5; total = 8; }
    metadata <'COV-APU-C9'> cov_APU_C9 : CoverageMetric about SSD_BLK_SYS_001::APU { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-CREW-C1'> cov_CREW_C1 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C1"; covered = 10; total = 10; }
    metadata <'COV-CREW-C2'> cov_CREW_C2 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C2"; covered = 10; total = 10; }
    metadata <'COV-CREW-C3'> cov_CREW_C3 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C3"; covered = 10; total = 10; }
    metadata <'COV-CREW-C4'> cov_CREW_C4 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C4"; covered = 52; total = 52; }
    metadata <'COV-CREW-C5'> cov_CREW_C5 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C5"; covered = 0; total = 12; }
    metadata <'COV-CREW-C6'> cov_CREW_C6 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C6"; covered = 1; total = 12; }
    metadata <'COV-CREW-C7'> cov_CREW_C7 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-CREW-C8'> cov_CREW_C8 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C8"; covered = 0; total = 7; }
    metadata <'COV-CREW-C9'> cov_CREW_C9 : CoverageMetric about SSD_BLK_SYS_001::CREW { metric = "C9"; covered = 3; total = 7; }
    metadata <'COV-CT-C1'> cov_CT_C1 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C1"; covered = 9; total = 9; }
    metadata <'COV-CT-C2'> cov_CT_C2 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C2"; covered = 9; total = 9; }
    metadata <'COV-CT-C3'> cov_CT_C3 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C3"; covered = 9; total = 9; }
    metadata <'COV-CT-C4'> cov_CT_C4 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C4"; covered = 88; total = 88; }
    metadata <'COV-CT-C5'> cov_CT_C5 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C5"; covered = 2; total = 29; }
    metadata <'COV-CT-C6'> cov_CT_C6 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C6"; covered = 24; total = 29; }
    metadata <'COV-CT-C7'> cov_CT_C7 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C7"; covered = 11; total = 11; }
    metadata <'COV-CT-C8'> cov_CT_C8 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C8"; covered = 2; total = 8; }
    metadata <'COV-CT-C9'> cov_CT_C9 : CoverageMetric about SSD_BLK_SYS_001::CT { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-CW-C1'> cov_CW_C1 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C1"; covered = 10; total = 10; }
    metadata <'COV-CW-C2'> cov_CW_C2 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C2"; covered = 10; total = 10; }
    metadata <'COV-CW-C3'> cov_CW_C3 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C3"; covered = 10; total = 10; }
    metadata <'COV-CW-C4'> cov_CW_C4 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C4"; covered = 46; total = 46; }
    metadata <'COV-CW-C5'> cov_CW_C5 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C5"; covered = 2; total = 12; }
    metadata <'COV-CW-C6'> cov_CW_C6 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C6"; covered = 0; total = 12; }
    metadata <'COV-CW-C7'> cov_CW_C7 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-CW-C8'> cov_CW_C8 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C8"; covered = 4; total = 6; }
    metadata <'COV-CW-C9'> cov_CW_C9 : CoverageMetric about SSD_BLK_SYS_001::CW { metric = "C9"; covered = 2; total = 6; }
    metadata <'COV-DPS-C1'> cov_DPS_C1 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C1"; covered = 13; total = 13; }
    metadata <'COV-DPS-C2'> cov_DPS_C2 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C2"; covered = 13; total = 13; }
    metadata <'COV-DPS-C3'> cov_DPS_C3 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C3"; covered = 13; total = 13; }
    metadata <'COV-DPS-C4'> cov_DPS_C4 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C4"; covered = 91; total = 91; }
    metadata <'COV-DPS-C5'> cov_DPS_C5 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C5"; covered = 6; total = 29; }
    metadata <'COV-DPS-C6'> cov_DPS_C6 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C6"; covered = 22; total = 29; }
    metadata <'COV-DPS-C7'> cov_DPS_C7 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C7"; covered = 7; total = 7; }
    metadata <'COV-DPS-C8'> cov_DPS_C8 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C8"; covered = 1; total = 8; }
    metadata <'COV-DPS-C9'> cov_DPS_C9 : CoverageMetric about SSD_BLK_SYS_001::DPS { metric = "C9"; covered = 7; total = 8; }
    metadata <'COV-ECLSS-C1'> cov_ECLSS_C1 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C1"; covered = 112; total = 112; }
    metadata <'COV-ECLSS-C2'> cov_ECLSS_C2 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C2"; covered = 112; total = 112; }
    metadata <'COV-ECLSS-C3'> cov_ECLSS_C3 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C3"; covered = 91; total = 112; }
    metadata <'COV-ECLSS-C4'> cov_ECLSS_C4 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C4"; covered = 939; total = 945; }
    metadata <'COV-ECLSS-C5'> cov_ECLSS_C5 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C5"; covered = 7; total = 298; }
    metadata <'COV-ECLSS-C6'> cov_ECLSS_C6 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C6"; covered = 108; total = 298; }
    metadata <'COV-ECLSS-C7'> cov_ECLSS_C7 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C7"; covered = 28; total = 28; }
    metadata <'COV-ECLSS-C8'> cov_ECLSS_C8 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C8"; covered = 44; total = 87; }
    metadata <'COV-ECLSS-C9'> cov_ECLSS_C9 : CoverageMetric about SSD_BLK_SYS_001::ECLSS { metric = "C9"; covered = 68; total = 87; }
    metadata <'COV-EPS-C1'> cov_EPS_C1 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C1"; covered = 22; total = 22; }
    metadata <'COV-EPS-C2'> cov_EPS_C2 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C2"; covered = 22; total = 22; }
    metadata <'COV-EPS-C3'> cov_EPS_C3 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C3"; covered = 22; total = 22; }
    metadata <'COV-EPS-C4'> cov_EPS_C4 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C4"; covered = 33; total = 33; }
    metadata <'COV-EPS-C5'> cov_EPS_C5 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C5"; covered = 8; total = 23; }
    metadata <'COV-EPS-C6'> cov_EPS_C6 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C6"; covered = 17; total = 23; }
    metadata <'COV-EPS-C7'> cov_EPS_C7 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-EPS-C8'> cov_EPS_C8 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C8"; covered = 3; total = 5; }
    metadata <'COV-EPS-C9'> cov_EPS_C9 : CoverageMetric about SSD_BLK_SYS_001::EPS { metric = "C9"; covered = 5; total = 5; }
    metadata <'COV-EVA-C1'> cov_EVA_C1 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C1"; covered = 8; total = 8; }
    metadata <'COV-EVA-C2'> cov_EVA_C2 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C2"; covered = 8; total = 8; }
    metadata <'COV-EVA-C3'> cov_EVA_C3 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C3"; covered = 8; total = 8; }
    metadata <'COV-EVA-C4'> cov_EVA_C4 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C4"; covered = 85; total = 85; }
    metadata <'COV-EVA-C5'> cov_EVA_C5 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C5"; covered = 3; total = 15; }
    metadata <'COV-EVA-C6'> cov_EVA_C6 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C6"; covered = 0; total = 15; }
    metadata <'COV-EVA-C7'> cov_EVA_C7 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C7"; covered = 3; total = 3; }
    metadata <'COV-EVA-C8'> cov_EVA_C8 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C8"; covered = 2; total = 7; }
    metadata <'COV-EVA-C9'> cov_EVA_C9 : CoverageMetric about SSD_BLK_SYS_001::EVA { metric = "C9"; covered = 6; total = 7; }
    metadata <'COV-GNC-C1'> cov_GNC_C1 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C1"; covered = 14; total = 14; }
    metadata <'COV-GNC-C2'> cov_GNC_C2 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C2"; covered = 14; total = 14; }
    metadata <'COV-GNC-C3'> cov_GNC_C3 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C3"; covered = 14; total = 14; }
    metadata <'COV-GNC-C4'> cov_GNC_C4 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C4"; covered = 90; total = 90; }
    metadata <'COV-GNC-C5'> cov_GNC_C5 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C5"; covered = 1; total = 24; }
    metadata <'COV-GNC-C6'> cov_GNC_C6 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C6"; covered = 4; total = 24; }
    metadata <'COV-GNC-C7'> cov_GNC_C7 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-GNC-C8'> cov_GNC_C8 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C8"; covered = 4; total = 8; }
    metadata <'COV-GNC-C9'> cov_GNC_C9 : CoverageMetric about SSD_BLK_SYS_001::GNC { metric = "C9"; covered = 5; total = 8; }
    metadata <'COV-MECH-C1'> cov_MECH_C1 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C1"; covered = 10; total = 10; }
    metadata <'COV-MECH-C2'> cov_MECH_C2 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C2"; covered = 10; total = 10; }
    metadata <'COV-MECH-C3'> cov_MECH_C3 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C3"; covered = 10; total = 10; }
    metadata <'COV-MECH-C4'> cov_MECH_C4 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C4"; covered = 52; total = 52; }
    metadata <'COV-MECH-C5'> cov_MECH_C5 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C5"; covered = 0; total = 11; }
    metadata <'COV-MECH-C6'> cov_MECH_C6 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C6"; covered = 0; total = 11; }
    metadata <'COV-MECH-C7'> cov_MECH_C7 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-MECH-C8'> cov_MECH_C8 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C8"; covered = 4; total = 7; }
    metadata <'COV-MECH-C9'> cov_MECH_C9 : CoverageMetric about SSD_BLK_SYS_001::MECH { metric = "C9"; covered = 5; total = 7; }
    metadata <'COV-MPS-C1'> cov_MPS_C1 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C1"; covered = 13; total = 13; }
    metadata <'COV-MPS-C2'> cov_MPS_C2 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C2"; covered = 13; total = 13; }
    metadata <'COV-MPS-C3'> cov_MPS_C3 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C3"; covered = 13; total = 13; }
    metadata <'COV-MPS-C4'> cov_MPS_C4 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C4"; covered = 96; total = 96; }
    metadata <'COV-MPS-C5'> cov_MPS_C5 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C5"; covered = 2; total = 23; }
    metadata <'COV-MPS-C6'> cov_MPS_C6 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C6"; covered = 17; total = 23; }
    metadata <'COV-MPS-C7'> cov_MPS_C7 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C7"; covered = 8; total = 8; }
    metadata <'COV-MPS-C8'> cov_MPS_C8 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C8"; covered = 6; total = 8; }
    metadata <'COV-MPS-C9'> cov_MPS_C9 : CoverageMetric about SSD_BLK_SYS_001::MPS { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-OMS-C1'> cov_OMS_C1 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C1"; covered = 11; total = 11; }
    metadata <'COV-OMS-C2'> cov_OMS_C2 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C2"; covered = 11; total = 11; }
    metadata <'COV-OMS-C3'> cov_OMS_C3 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C3"; covered = 11; total = 11; }
    metadata <'COV-OMS-C4'> cov_OMS_C4 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C4"; covered = 93; total = 93; }
    metadata <'COV-OMS-C5'> cov_OMS_C5 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C5"; covered = 0; total = 20; }
    metadata <'COV-OMS-C6'> cov_OMS_C6 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C6"; covered = 9; total = 20; }
    metadata <'COV-OMS-C7'> cov_OMS_C7 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-OMS-C8'> cov_OMS_C8 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C8"; covered = 8; total = 8; }
    metadata <'COV-OMS-C9'> cov_OMS_C9 : CoverageMetric about SSD_BLK_SYS_001::OMS { metric = "C9"; covered = 8; total = 8; }
    metadata <'COV-PLS-C1'> cov_PLS_C1 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C1"; covered = 9; total = 9; }
    metadata <'COV-PLS-C2'> cov_PLS_C2 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C2"; covered = 9; total = 9; }
    metadata <'COV-PLS-C3'> cov_PLS_C3 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C3"; covered = 9; total = 9; }
    metadata <'COV-PLS-C4'> cov_PLS_C4 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C4"; covered = 50; total = 50; }
    metadata <'COV-PLS-C5'> cov_PLS_C5 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C5"; covered = 0; total = 12; }
    metadata <'COV-PLS-C6'> cov_PLS_C6 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C6"; covered = 0; total = 12; }
    metadata <'COV-PLS-C7'> cov_PLS_C7 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-PLS-C8'> cov_PLS_C8 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C8"; covered = 4; total = 7; }
    metadata <'COV-PLS-C9'> cov_PLS_C9 : CoverageMetric about SSD_BLK_SYS_001::PLS { metric = "C9"; covered = 7; total = 7; }
    metadata <'COV-RCS-C1'> cov_RCS_C1 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C1"; covered = 10; total = 10; }
    metadata <'COV-RCS-C2'> cov_RCS_C2 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C2"; covered = 10; total = 10; }
    metadata <'COV-RCS-C3'> cov_RCS_C3 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C3"; covered = 10; total = 10; }
    metadata <'COV-RCS-C4'> cov_RCS_C4 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C4"; covered = 91; total = 91; }
    metadata <'COV-RCS-C5'> cov_RCS_C5 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C5"; covered = 1; total = 20; }
    metadata <'COV-RCS-C6'> cov_RCS_C6 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C6"; covered = 8; total = 20; }
    metadata <'COV-RCS-C7'> cov_RCS_C7 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C7"; covered = 8; total = 8; }
    metadata <'COV-RCS-C8'> cov_RCS_C8 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C8"; covered = 4; total = 8; }
    metadata <'COV-RCS-C9'> cov_RCS_C9 : CoverageMetric about SSD_BLK_SYS_001::RCS { metric = "C9"; covered = 7; total = 8; }
    metadata <'COV-STR-C1'> cov_STR_C1 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C1"; covered = 8; total = 8; }
    metadata <'COV-STR-C2'> cov_STR_C2 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C2"; covered = 8; total = 8; }
    metadata <'COV-STR-C3'> cov_STR_C3 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C3"; covered = 8; total = 8; }
    metadata <'COV-STR-C4'> cov_STR_C4 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C4"; covered = 51; total = 51; }
    metadata <'COV-STR-C5'> cov_STR_C5 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C5"; covered = 0; total = 11; }
    metadata <'COV-STR-C6'> cov_STR_C6 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C6"; covered = 0; total = 11; }
    metadata <'COV-STR-C7'> cov_STR_C7 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C7"; covered = 6; total = 6; }
    metadata <'COV-STR-C8'> cov_STR_C8 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C8"; covered = 3; total = 7; }
    metadata <'COV-STR-C9'> cov_STR_C9 : CoverageMetric about SSD_BLK_SYS_001::STR { metric = "C9"; covered = 1; total = 7; }
    metadata <'COV-TPS-C1'> cov_TPS_C1 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C1"; covered = 7; total = 7; }
    metadata <'COV-TPS-C2'> cov_TPS_C2 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C2"; covered = 7; total = 7; }
    metadata <'COV-TPS-C3'> cov_TPS_C3 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C3"; covered = 6; total = 7; }
    metadata <'COV-TPS-C4'> cov_TPS_C4 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C4"; covered = 16; total = 16; }
    metadata <'COV-TPS-C5'> cov_TPS_C5 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C5"; covered = 3; total = 3; }
    metadata <'COV-TPS-C6'> cov_TPS_C6 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C6"; covered = 0; total = 3; }
    metadata <'COV-TPS-C7'> cov_TPS_C7 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C7"; covered = 5; total = 5; }
    metadata <'COV-TPS-C8'> cov_TPS_C8 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C8"; covered = 2; total = 3; }
    metadata <'COV-TPS-C9'> cov_TPS_C9 : CoverageMetric about SSD_BLK_SYS_001::TPS { metric = "C9"; covered = 1; total = 3; }
    metadata <'COV-ET-C1'> cov_ET_C1 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C1"; covered = 9; total = 9; }
    metadata <'COV-ET-C2'> cov_ET_C2 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C2"; covered = 9; total = 9; }
    metadata <'COV-ET-C3'> cov_ET_C3 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C3"; covered = 9; total = 9; }
    metadata <'COV-ET-C4'> cov_ET_C4 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C4"; covered = 43; total = 43; }
    metadata <'COV-ET-C5'> cov_ET_C5 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C5"; covered = 1; total = 8; }
    metadata <'COV-ET-C6'> cov_ET_C6 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C6"; covered = 0; total = 8; }
    metadata <'COV-ET-C7'> cov_ET_C7 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C7"; covered = 0; total = 0; }
    metadata <'COV-ET-C8'> cov_ET_C8 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C8"; covered = 3; total = 7; }
    metadata <'COV-ET-C9'> cov_ET_C9 : CoverageMetric about SSD_BLK_SYS_001::ET { metric = "C9"; covered = 3; total = 7; }
    metadata <'COV-SRB-C1'> cov_SRB_C1 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C1"; covered = 9; total = 9; }
    metadata <'COV-SRB-C2'> cov_SRB_C2 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C2"; covered = 9; total = 9; }
    metadata <'COV-SRB-C3'> cov_SRB_C3 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C3"; covered = 9; total = 9; }
    metadata <'COV-SRB-C4'> cov_SRB_C4 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C4"; covered = 49; total = 49; }
    metadata <'COV-SRB-C5'> cov_SRB_C5 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C5"; covered = 1; total = 10; }
    metadata <'COV-SRB-C6'> cov_SRB_C6 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C6"; covered = 0; total = 10; }
    metadata <'COV-SRB-C7'> cov_SRB_C7 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C7"; covered = 0; total = 0; }
    metadata <'COV-SRB-C8'> cov_SRB_C8 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C8"; covered = 0; total = 7; }
    metadata <'COV-SRB-C9'> cov_SRB_C9 : CoverageMetric about SSD_BLK_SYS_001::SRB { metric = "C9"; covered = 3; total = 7; }
    // ---- 切れ目の分類と、一覧の要素
    metadata <'GAP-01'> gap_01 : TraceGapCategory { title = "検証の判定が pass でない要求"; judgment = "判断済み"; count = 24; }
    metadata <'GAP-02'> gap_02 : TraceGapCategory { title = "要求なしで妥当と判断した機能行"; judgment = "判断済み"; count = 293; }
    metadata <'GAP-03'> gap_03 : TraceGapCategory { title = "トレースの対象外の機能行"; judgment = "範囲外"; count = 10; }
    metadata <'GAP-04'> gap_04 : TraceGapCategory { title = "要求の割付先でない IF"; judgment = "方針"; count = 550; }
    metadata <'GAP-05'> gap_05 : TraceGapCategory { title = "振る舞い・流れが通らない IF"; judgment = "範囲外"; count = 359; }
    metadata <'GAP-06'> gap_06 : TraceGapCategory { title = "要求につながらない機器"; judgment = "未処理"; count = 0; }
    metadata <'GAP-07'> gap_07 : TraceGapCategory { title = "故障解析の対応が無い機能ブロック"; judgment = "範囲外"; count = 107; }
    metadata <'GAP-08'> gap_08 : TraceGapCategory { title = "振る舞いに現れない機能ブロック"; judgment = "範囲外"; count = 51; }
    metadata <'GAP-09'> gap_09 : TraceGapCategory { title = "既存の IF が無い流れ"; judgment = "未処理"; count = 0; }
    metadata <'GAP-10'> gap_10 : TraceGapCategory { title = "機器配分表に行が無い内部ブロック図の機器"; judgment = "未処理"; count = 0; }
    metadata <'GAP-11'> gap_11 : TraceGapCategory { title = "機能ブロックの中の流れ（IF にしない）"; judgment = "判断済み"; count = 88; }
    metadata <'GAP-01-01'> gap_01_01 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_als_09 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-02'> gap_01_02 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-03'> gap_01_03 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-04'> gap_01_04 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-05'> gap_01_05 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_15 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-06'> gap_01_06 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_17 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-07'> gap_01_07 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_27 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-08'> gap_01_08 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_28 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-09'> gap_01_09 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_37 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-10'> gap_01_10 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_38 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-11'> gap_01_11 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_ars_39 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-12'> gap_01_12 : TraceGap about SSD_VER_SYS_001::Results::vc_req_eclss_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-13'> gap_01_13 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_fds_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-14'> gap_01_14 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_fds_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-15'> gap_01_15 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-16'> gap_01_16 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_07 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-17'> gap_01_17 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-18'> gap_01_18 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_pcs_12 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-19'> gap_01_19 : TraceGap about SSD_VER_SYS_001::Results::vc_req_sys_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-20'> gap_01_20 : TraceGap about SSD_VER_SYS_001::Results::vc_req_sys_05 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-21'> gap_01_21 : TraceGap about SSD_VER_SYS_001::Results::vc_req_tps_03 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-22'> gap_01_22 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_wcs_06 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-23'> gap_01_23 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_wcs_08 { category = "GAP-01"; judgment = "判断済み"; }
    metadata <'GAP-01-24'> gap_01_24 : TraceGap about SSD_RQL_ECL_001::Results::vc_req_wtr_10 { category = "GAP-01"; judgment = "判断済み"; }
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
        expose SSD_BLK_SYS_001::EPS::IF_EPS_03;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_05;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_06;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_07;
        expose SSD_BLK_SYS_001::MissionContext::IF_EPS_08;
        expose SSD_BLK_SYS_001::ORB::IF_EPS_09;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_13;
        expose SSD_BLK_SYS_001::EPS::IF_EPS_16;
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
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_04;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
        expose SSD_VER_SYS_001::Results::vc_req_eps_01;
        expose SSD_VER_SYS_001::Results::vc_req_eps_02;
        expose SSD_VER_SYS_001::Results::vc_req_eps_03;
        expose SSD_VER_SYS_001::Results::vc_req_eps_04;
        expose SSD_VER_SYS_001::Results::vc_req_eps_05;
        expose SSD_VER_SYS_001::Results::vc_req_eps_14;
        expose SSD_VER_SYS_001::Results::vc_req_eps_15;
        expose SSD_VER_SYS_001::Results::vc_req_eps_16;
        expose SSD_VER_SYS_001::Results::vc_req_eps_18;
        expose SSD_VER_SYS_001::Results::vc_req_eps_20;
        expose SSD_VER_SYS_001::Results::vc_req_sys_04;
        expose SSD_VER_SYS_001::Results::vc_req_sys_07;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_14;
        expose SSD_VER_SYS_001::Results::vc_req_sys_16;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_01;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_02;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_03;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_05;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_06;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_07;
        expose SSD_BEH_ORB_002::FuelCellCoolingLossResponse::AC_FC_08;
        expose SSD_BEH_ORB_005::FuelCellStates;
    }
    view <'IMP-02'> imp_02 : ImpactView {
        doc /* フレオン冷却ループのポンプパッケージ・インターチェンジャの変更。起点 PHY-ECLSS-04 */
        expose SSD_ALC_SYS_001::Physical::PHY_ECLSS_04;
        expose SSD_IBD_ORB_001::FreonPumpPackage;
        expose SSD_IBD_ORB_001::FreonWaterInterchanger;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_01;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_02;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_16;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_18;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_19;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_20;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_33;
        expose SSD_IBD_ORB_001::AtcsInterconnection::fl_atcs_38;
        expose SSD_BLK_SYS_001::ECLSS;
        expose SSD_BLK_SYS_001::TCS_FCL;
        expose SSD_BLK_SYS_001::TCS_HX;
        expose SSD_BLK_SYS_001::ECLSS::IF_TCS_01;
        expose SSD_BLK_SYS_001::ECL_ATCS::IF_TCS_07;
        expose SSD_BLK_SYS_001::ORB::IF_TCS_21;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_01;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
        expose SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_03;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_01;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_02;
        expose SSD_RQL_ECL_001::Results::vc_req_atcs_03;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_01;
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
        expose SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_01;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_04;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_VER_SYS_001::Results::vc_req_mps_11;
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
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_02;
        expose SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
        expose SSD_VER_SYS_001::Results::vc_req_dps_01;
        expose SSD_VER_SYS_001::Results::vc_req_dps_02;
        expose SSD_VER_SYS_001::Results::vc_req_dps_03;
        expose SSD_VER_SYS_001::Results::vc_req_sys_10;
        expose SSD_VER_SYS_001::Results::vc_req_sys_14;
        expose SSD_VER_SYS_001::Results::vc_req_sys_15;
        expose SSD_VER_SYS_001::Results::vc_req_sys_16;
        expose SSD_BEH_ORB_005::GpcModes;
    }
    view <'IMP-05'> imp_05 : ImpactView {
        doc /* ARS 床下機器（キャビンファン・熱交換器・LiOH キャニスタ）の変更。起点 PHY-ECLSS-01 */
        expose SSD_ALC_SYS_001::Physical::PHY_ECLSS_01;
        expose SSD_IBD_ORB_001::CabinFans;
        expose SSD_IBD_ORB_001::LioHCanisters;
        expose SSD_IBD_ORB_001::CabinHeatExchanger;
        expose SSD_IBD_ORB_001::WaterPumpPackage;
        expose SSD_IBD_ORB_001::CabinHxWaterSide;
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
        expose SSD_BLK_SYS_001::ARS_WCL;
        expose SSD_BLK_SYS_001::ECLSS;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_03;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_06;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_07;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_ARS_08;
        expose SSD_BLK_SYS_001::ARS_CAC::IF_CAC_02;
        expose SSD_BLK_SYS_001::ARS_CAC::IF_CAC_06;
        expose SSD_BLK_SYS_001::ORB::IF_CAC_09;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_CO2_01;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_CO2_05;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_01;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_02;
        expose SSD_BLK_SYS_001::ECL_ARS::IF_THC_03;
        expose SSD_BLK_SYS_001::ARS_THC::IF_THC_04;
        expose SSD_BLK_SYS_001::ORB::IF_THC_11;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_01;
        expose SSD_BLK_SYS_001::ARS_WCL::IF_WCL_05;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_12;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_15;
        expose SSD_BLK_SYS_001::ORB::IF_WCL_16;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_01;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_02;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_04;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_05;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_06;
        expose SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_08;
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
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
        expose SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
        expose SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_13;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_01;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_02;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_03;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_04;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_05;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_06;
        expose SSD_RQL_ECL_001::Results::vc_req_ars_08;
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
        expose SSD_VER_SYS_001::Results::vc_req_eclss_01;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_05;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_06;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_07;
        expose SSD_VER_SYS_001::Results::vc_req_eclss_09;
        expose SSD_VER_SYS_001::Results::vc_req_sys_06;
        expose SSD_VER_SYS_001::Results::vc_req_sys_07;
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
