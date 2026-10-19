// SysML v2 テキスト：モデル全体の入口と統合の関係
// SSD-MDL-SYS-001 モデル統合・検査定義書（SysML v2） から生成（lib/build_docs_ag.py）。ほかの SysML v2 テキスト 54件を読み込んでから読む（読み込みの順は SSD-MDL-SYS-001 §2）。
package SSD_MDL_SYS_001 {
    doc /* SSD-MDL-SYS-001。スペースシャトルのシステム設計モデル（SSD-SYS-IDX-001）の SysML v2 の全体。各パッケージを読み込み、パッケージどうしをつなぐ関係を置く。 */
    public import SSD_BEH_ORB_001;   // SSD-BEH-ORB-001 状態遷移（ミッションフェーズ・飛行継続判断）
    public import SSD_PAR_ORB_001;   // SSD-PAR-ORB-001 パラメトリック（消耗品・電力・排熱）
    public import SSD_BEH_ORB_002;   // SSD-BEH-ORB-002 故障処置の活動
    public import SSD_BEH_ORB_003;   // SSD-BEH-ORB-003 シーケンス（軌道離脱〜着陸・上昇・指令とテレメトリ）
    public import SSD_BEH_ORB_004;   // SSD-BEH-ORB-004 運用・非常時の活動
    public import SSD_BLK_SYS_001;   // SSD-BLK-SYS-001 構造（ブロック・ポート・インタフェース）
    public import SSD_RQM_SYS_001;   // SSD-RQM-SYS-001 要求（導出・充足・検証方法）
    public import SSD_ALC_SYS_001;   // SSD-ALC-SYS-001 割付（機能・機器・区画・振る舞い）
    public import SSD_IBD_ORB_001;   // SSD-IBD-ORB-001 内部ブロック図（機器の接続・流れる物・量と単位）
    public import SSD_UC_ORB_001;   // SSD-UC-ORB-001 運用のユースケース・シナリオ
    public import SSD_BEH_ORB_005;   // SSD-BEH-ORB-005 系の状態遷移
    public import SSD_BEH_ORB_006;   // SSD-BEH-ORB-006 系の状態遷移その2（OMS・RCS・MPS・C&T・与圧系・ODS）
    public import SSD_BEH_ORB_007;   // SSD-BEH-ORB-007 ECLSS の状態遷移と活動（ARS・FDS・給水廃水・WCS）
    public import SSD_BEH_ORB_008;   // SSD-BEH-ORB-008 残りの系の内部ブロックと振る舞い（MECH・C/W・PLS・STR・CREW）
    public import SSD_EMU_EVA_001;   // SSD-EMU-EVA-001 EMU の構造・内部ブロック・状態
    public import SSD_GNC_ORB_001;   // SSD-GNC-ORB-001 GN&C の内部ブロック・モード・冗長管理
    public import SSD_ETS_SYS_001;   // SSD-ETS-SYS-001 ET・SRB・TPS の内部ブロック・状態
    public import SSD_ANA_ORB_001;   // SSD-ANA-ORB-001 解析（トレード・質量・Δv・故障の木）
    public import SSD_VAR_ORB_001;   // SSD-VAR-ORB-001 構成の違い（機体・ミッションキット）
    public import SSD_IND_ORB_001;   // SSD-IND-ORB-001 個体・時間（機体・飛行の個体、時間切片、実績）
    public import SSD_RQF_SYS_001;   // SSD-RQF-SYS-001 要求の形式化（属性・制約・値による判定）
    public import SSD_FLT_ORB_001;   // SSD-FLT-ORB-001 飛行構成・飛行試験（構成の解決・検証の証拠）
    public import SSD_HSI_SYS_001;   // SSD-HSI-SYS-001 人間系の基準の照合（NASA-STD-3001 による後付け評価）
    public import SSD_EXP_ORB_001;   // SSD-EXP-ORB-001 乗員の環境曝露（パラメトリック・プロファイル）
    public import SSD_ATM_ORB_001;   // SSD-ATM-ORB-001 キャビン大気の動的モデル（CO2・圧力と漏れ・熱と湿度）
    public import SSD_EPB_EVA_001;   // SSD-EPB-EVA-001 EMU の消耗品と前呼吸（持続時間・R 値）
    public import SSD_HRS_ORB_001;   // SSD-HRS-ORB-001 居住の資源と収支（食料・衛生・就寝・廃棄物・収納）
    public import SSD_MED_ORB_001;   // SSD-MED-ORB-001 医療の構造と処置（SOMS・処置の流れ・事象）
    public import SSD_TSK_ORB_001;   // SSD-TSK-ORB-001 乗員の作業分析・機能の分担
    public import SSD_PRF_ORB_001;   // SSD-PRF-ORB-001 消耗品・電力プロファイル（時間軸の残量・設計と実績）
    public import SSD_TRJ_ORB_001;   // SSD-TRJ-ORB-001 上昇・再突入の時間変化モデル
    public import SSD_TPM_SYS_001;   // SSD-TPM-SYS-001 飛行実績の測定指標（MOE・MOP・TPM）
    public import SSD_GND_ORB_001;   // SSD-GND-ORB-001 地上処理・ターンアラウンド（活動・状態）
    public import SSD_VER_SYS_001;   // SSD-VER-SYS-001 検証ケース・検証の結果
    public import SSD_RQL_ECL_001;   // SSD-RQL-ECL-001 ECLSS 下位要求（L3）
    public import SSD_IRQ_SYS_001;   // SSD-IRQ-SYS-001 インタフェース要求（上位の IF）と導出・充足・検証
    public import SSD_RQL_SYS_001;   // SSD-RQL-SYS-001 下位要求（L3：ECLSS 以外の17系）と導出・充足・検証
    public import SSD_IRQ_ECL_001;   // SSD-IRQ-ECL-001 インタフェース要求（下位の IF）と導出・充足・検証（ECLSS）
    public import SSD_IRQ_LOW_001;   // SSD-IRQ-LOW-001 インタフェース要求（下位の IF）と導出・充足・検証（ECLSS 以外）
    public import SSD_TRC_SYS_001;   // SSD-TRC-SYS-001 トレース網羅・影響分析（網羅の指標・切れ目・影響のビュー）
    public import SSD_FDIR_ORB_001;   // SSD-FDIR-ORB-001 故障検知・処置（C/W の警報・監視・処置・状態遷移）
    public import SSD_HAZ_ORB_001;   // SSD-HAZ-ORB-001 ハザード解析（ハザード・原因・管理策・リスク）
    public import SSD_FMM_ORB_001;   // SSD-FMM-ORB-001 故障モード（故障モード・原因・検知・管理策の連鎖）
    public import SSD_FMX_ECL_001;   // SSD-FMX-ECL-001 ECLSS の故障モード（対応づけ・機能の故障モード・故障の木）
    public import SSD_ACC_SYS_001;   // SSD-ACC-SYS-001 事故の教訓（51-L・STS-107）
    public import SSD_FMX_ORB_001;   // SSD-FMX-ORB-001 オービタの系の機能の故障モード（ECLSS 以外）
    public import SSD_IFA_ORB_001;   // SSD-IFA-ORB-001 飛行中異常（番号つきの記録・故障モードへのつなぎ）
    public import SSD_PLB_ORB_001;   // SSD-PLB-ORB-001 ペイロード搭載・着陸の制約（貨物の重量・重心・荷重）
    public import SSD_HEA_ORB_001;   // SSD-HEA-ORB-001 ヒューマンエラー解析
    public import SSD_CIF_ORB_001;   // SSD-CIF-ORB-001 乗員インタフェース（警報の階層・表示と操作）
    public import SSD_HAB_ORB_001;   // SSD-HAB-ORB-001 居住性と医療（機能・乗員の1日・ユースケース）
    public import SSD_EGR_ORB_001;   // SSD-EGR-ORB-001 容積・動線・緊急脱出
    public import SSD_HVM_SYS_001;   // SSD-HVM-SYS-001 人間系の評価方法とビューポイント
    public import SSD_VPT_SYS_001;   // SSD-VPT-SYS-001 ビューポイント・表記の規約
    private import ModelingMetadata::*;
    // ---- 1. 構造のオービタと振る舞い（状態機械）のオービタを1つにする
    part def IntegratedOrbiter :> SSD_BLK_SYS_001::ORB, SSD_BEH_ORB_001::Orbiter {
        doc /* 構造（部品・ポート・インタフェース、SSD-BLK-SYS-001）と振る舞い（ミッションフェーズ・飛行継続判断の状態機械、SSD-BEH-ORB-001）を併せ持つオービタ */
    }
    part integratedContext : SSD_BLK_SYS_001::MissionContext {
        doc /* 構造モデルの最上位の部品 context の、オービタを IntegratedOrbiter に置き換えたもの */
        part :>> sts {
            part :>> orb : IntegratedOrbiter;
        }
    }
    // ---- 2. パラメトリックの要求定義（マージン≧0 の制約）は、要求モデルの同じ ID の要求を詳細化する
    package RequirementRefinement {
        #refinement dependency <'REQ-ECLSS-06'> from SSD_PAR_ORB_001::REQ_ECLSS_06 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
        #refinement dependency <'REQ-SYS-05'> from SSD_PAR_ORB_001::REQ_SYS_05 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05;
        #refinement dependency <'REQ-SYS-06'> from SSD_PAR_ORB_001::REQ_SYS_06 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
        #refinement dependency <'REQ-SYS-13'> from SSD_PAR_ORB_001::REQ_SYS_13 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_13;
        #refinement dependency <'REQ-ECLSS-10'> from SSD_PAR_ORB_001::REQ_ECLSS_10 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
        #refinement dependency <'REQ-ECLSS-01'> from SSD_PAR_ORB_001::REQ_ECLSS_01 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
        #refinement dependency <'REQ-EPS-19'> from SSD_PAR_ORB_001::REQ_EPS_19 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
        #refinement dependency <'REQ-EPS-18'> from SSD_PAR_ORB_001::REQ_EPS_18 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
        #refinement dependency <'REQ-EPS-12'> from SSD_PAR_ORB_001::REQ_EPS_12 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_12;
        #refinement dependency <'REQ-EPS-11'> from SSD_PAR_ORB_001::REQ_EPS_11 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_11;
        #refinement dependency <'REQ-ECLSS-08'> from SSD_PAR_ORB_001::REQ_ECLSS_08 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    }
    // ---- 3. シーケンス図のメッセージを、それを運ぶ構造モデルの IF に割り付ける
    package MessageAllocation {
        occurrence deorbitToLanding : SSD_BEH_ORB_003::DeorbitToLanding;
        occurrence ascent : SSD_BEH_ORB_003::Ascent;
        occurrence commandTelemetryPath : SSD_BEH_ORB_003::CommandTelemetryPath;
        occurrence arsAirOperations : SSD_BEH_ORB_003::ArsAirOperations;
        occurrence rcrsWaterLoopOperations : SSD_BEH_ORB_003::RcrsWaterLoopOperations;
        occurrence pressureWaterWasteOperations : SSD_BEH_ORB_003::PressureWaterWasteOperations;
        occurrence smokeDetectionAndSuppression : SSD_BEH_ORB_003::SmokeDetectionAndSuppression;
        occurrence cabinTempHumidityControl : SSD_BEH_ORB_003::CabinTempHumidityControl;
        occurrence apuHydOperations : SSD_BEH_ORB_003::ApuHydOperations;
        occurrence dpsMpsOperations : SSD_BEH_ORB_003::DpsMpsOperations;
        occurrence evaProcedureFlow : SSD_BEH_ORB_003::EvaProcedureFlow;
        occurrence omsCrewOperations : SSD_BEH_ORB_003::OmsCrewOperations;
        occurrence rcsRedundancyAndCrewOps : SSD_BEH_ORB_003::RcsRedundancyAndCrewOps;
        allocate deorbitToLanding.DO_04 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_40;   // IF-ORB-40
        allocate deorbitToLanding.DO_06 to SSD_BLK_SYS_001::context.IF_ORB_16;   // IF-ORB-16
        allocate deorbitToLanding.DO_06 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_01;   // IF-ORB-01
        allocate deorbitToLanding.DO_09 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_40;   // IF-ORB-40
        allocate deorbitToLanding.DO_12 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_04;   // IF-ORB-04
        allocate deorbitToLanding.DO_15 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_08;   // IF-ORB-08
        allocate deorbitToLanding.DO_21 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_40;   // IF-ORB-40
        allocate ascent.AS_04 to SSD_BLK_SYS_001::context.IF_ORB_29;   // IF-ORB-29
        allocate ascent.AS_05 to SSD_BLK_SYS_001::context.IF_ORB_31;   // IF-ORB-31
        allocate ascent.AS_06 to SSD_BLK_SYS_001::context.IF_ORB_17;   // IF-ORB-17
        allocate ascent.AS_07 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_06;   // IF-ORB-06
        allocate ascent.AS_08 to SSD_BLK_SYS_001::context.sts.IF_ORB_15;   // IF-ORB-15
        allocate ascent.AS_09 to SSD_BLK_SYS_001::context.sts.IF_ORB_26;   // IF-ORB-26
        allocate ascent.AS_10 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_06;   // IF-ORB-06
        allocate ascent.AS_11 to SSD_BLK_SYS_001::context.sts.IF_ORB_26;   // IF-ORB-26
        allocate ascent.AS_12 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_06;   // IF-ORB-06
        allocate ascent.AS_13 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_06;   // IF-ORB-06
        allocate ascent.AS_14 to SSD_BLK_SYS_001::context.sts.IF_ORB_25;   // IF-ORB-25
        allocate ascent.AS_15 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_06;   // IF-ORB-06
        allocate ascent.AS_17 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_04;   // IF-ORB-04
        allocate commandTelemetryPath.CM_02 to SSD_BLK_SYS_001::context.IF_CT_01;   // IF-CT-01
        allocate commandTelemetryPath.CM_03 to SSD_BLK_SYS_001::context.sts.orb.IF_CT_05;   // IF-CT-05
        allocate commandTelemetryPath.CM_04 to SSD_BLK_SYS_001::context.sts.orb.IF_ORB_40;   // IF-ORB-40
        allocate commandTelemetryPath.CM_05 to SSD_BLK_SYS_001::context.sts.orb.IF_CT_07;   // IF-CT-07
        allocate commandTelemetryPath.CM_08 to SSD_BLK_SYS_001::context.sts.orb.IF_CT_06;   // IF-CT-06
        allocate commandTelemetryPath.CM_09 to SSD_BLK_SYS_001::context.sts.orb.ct.IF_CT_14;   // IF-CT-14
        allocate commandTelemetryPath.CM_11 to SSD_BLK_SYS_001::context.IF_CT_01;   // IF-CT-01
        allocate arsAirOperations.QA_02 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.IF_CAC_10;   // IF-CAC-10
        allocate arsAirOperations.QA_04 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.IF_AVB_08;   // IF-AVB-08
        allocate arsAirOperations.QA_06 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.IF_IMU_07;   // IF-IMU-07
        allocate arsAirOperations.QA_07 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.IF_IMU_05;   // IF-IMU-05
        allocate arsAirOperations.QA_08 to SSD_BLK_SYS_001::context.sts.orb.IF_CAC_12;   // IF-CAC-12
        allocate arsAirOperations.QA_08 to SSD_BLK_SYS_001::context.sts.orb.IF_ARS_25;   // IF-ARS-25
        allocate arsAirOperations.QA_09 to SSD_BLK_SYS_001::context.sts.orb.IF_AVB_13;   // IF-AVB-13
        allocate arsAirOperations.QA_09 to SSD_BLK_SYS_001::context.sts.orb.IF_ARS_28;   // IF-ARS-28
        allocate arsAirOperations.QA_10 to SSD_BLK_SYS_001::context.sts.orb.IF_AVB_14;   // IF-AVB-14
        allocate arsAirOperations.QA_11 to SSD_BLK_SYS_001::context.sts.orb.IF_IMU_10;   // IF-IMU-10
        allocate arsAirOperations.QA_11 to SSD_BLK_SYS_001::context.sts.orb.IF_ARS_29;   // IF-ARS-29
        allocate arsAirOperations.QA_13 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.IF_CAC_11;   // IF-CAC-11
        allocate arsAirOperations.QA_14 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.IF_AVB_12;   // IF-AVB-12
        allocate arsAirOperations.QA_15 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.IF_IMU_12;   // IF-IMU-12
        allocate rcrsWaterLoopOperations.QB_02 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.IF_RCRS_14;   // IF-RCRS-14
        allocate rcrsWaterLoopOperations.QB_03 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.IF_RCRS_05;   // IF-RCRS-05
        allocate rcrsWaterLoopOperations.QB_04 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.IF_RCRS_06;   // IF-RCRS-06
        allocate rcrsWaterLoopOperations.QB_05 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.IF_RCRS_09;   // IF-RCRS-09
        allocate rcrsWaterLoopOperations.QB_06 to SSD_BLK_SYS_001::context.sts.orb.IF_RCRS_10;   // IF-RCRS-10
        allocate rcrsWaterLoopOperations.QB_06 to SSD_BLK_SYS_001::context.sts.orb.IF_ARS_26;   // IF-ARS-26
        allocate rcrsWaterLoopOperations.QB_07 to SSD_BLK_SYS_001::context.sts.orb.IF_RCRS_11;   // IF-RCRS-11
        allocate rcrsWaterLoopOperations.QB_07 to SSD_BLK_SYS_001::context.sts.orb.IF_ARS_26;   // IF-ARS-26
        allocate rcrsWaterLoopOperations.QB_09 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.IF_RCRS_15;   // IF-RCRS-15
        allocate rcrsWaterLoopOperations.QB_11 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.IF_WCL_09;   // IF-WCL-09
        allocate rcrsWaterLoopOperations.QB_12 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.IF_WCL_10;   // IF-WCL-10
        allocate rcrsWaterLoopOperations.QB_13 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.IF_WCL_06;   // IF-WCL-06
        allocate rcrsWaterLoopOperations.QB_14 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.IF_WCL_11;   // IF-WCL-11
        allocate pressureWaterWasteOperations.QC_01 to SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.IF_PCS_16;   // IF-PCS-16
        allocate pressureWaterWasteOperations.QC_02 to SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.IF_PCS_17;   // IF-PCS-17
        allocate pressureWaterWasteOperations.QC_03 to SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.IF_PCS_15;   // IF-PCS-15
        allocate pressureWaterWasteOperations.QC_08 to SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.IF_WCS_13;   // IF-WCS-13
        allocate pressureWaterWasteOperations.QC_10 to SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.IF_WCS_14;   // IF-WCS-14
        allocate pressureWaterWasteOperations.QC_12 to SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.IF_WCS_15;   // IF-WCS-15
        allocate pressureWaterWasteOperations.QC_13 to SSD_BLK_SYS_001::context.sts.orb.IF_WCS_12;   // IF-WCS-12
        allocate pressureWaterWasteOperations.QC_13 to SSD_BLK_SYS_001::context.sts.orb.IF_ECL_37;   // IF-ECL-37
        allocate pressureWaterWasteOperations.QC_14 to SSD_BLK_SYS_001::context.sts.orb.IF_ALS_10;   // IF-ALS-10
        allocate pressureWaterWasteOperations.QC_14 to SSD_BLK_SYS_001::context.sts.orb.IF_ECL_38;   // IF-ECL-38
        allocate smokeDetectionAndSuppression.QD_01 to SSD_BLK_SYS_001::context.sts.orb.eclss.fds.IF_FDS_02;   // IF-FDS-02
        allocate smokeDetectionAndSuppression.QD_02 to SSD_BLK_SYS_001::context.sts.orb.IF_FDS_03;   // IF-FDS-03
        allocate smokeDetectionAndSuppression.QD_02 to SSD_BLK_SYS_001::context.sts.orb.IF_ECL_18;   // IF-ECL-18
        allocate smokeDetectionAndSuppression.QD_03 to SSD_BLK_SYS_001::context.sts.orb.IF_FDS_06;   // IF-FDS-06
        allocate smokeDetectionAndSuppression.QD_04 to SSD_BLK_SYS_001::context.sts.orb.eclss.fds.IF_FDS_07;   // IF-FDS-07
        allocate smokeDetectionAndSuppression.QD_05 to SSD_BLK_SYS_001::context.sts.orb.eclss.fds.IF_FDS_05;   // IF-FDS-05
        allocate smokeDetectionAndSuppression.QD_06 to SSD_BLK_SYS_001::context.sts.orb.eclss.fds.IF_FDS_13;   // IF-FDS-13
        allocate smokeDetectionAndSuppression.QD_07 to SSD_BLK_SYS_001::context.sts.orb.eclss.fds.IF_FDS_14;   // IF-FDS-14
        allocate smokeDetectionAndSuppression.QD_08 to SSD_BLK_SYS_001::context.sts.orb.IF_FDS_09;   // IF-FDS-09
        allocate cabinTempHumidityControl.QE_02 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_14;   // IF-THC-14
        allocate cabinTempHumidityControl.QE_04 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_15;   // IF-THC-15
        allocate cabinTempHumidityControl.QE_05 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_10;   // IF-THC-10
        allocate cabinTempHumidityControl.QE_06 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_09;   // IF-THC-09
        allocate cabinTempHumidityControl.QE_07 to SSD_BLK_SYS_001::context.sts.orb.IF_THC_12;   // IF-THC-12
        allocate cabinTempHumidityControl.QE_09 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_13;   // IF-THC-13
        allocate cabinTempHumidityControl.QE_10 to SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.IF_THC_14;   // IF-THC-14
        allocate apuHydOperations.YA_02 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_03;   // IF-APU-03
        allocate apuHydOperations.YA_04 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_21;   // IF-APU-21
        allocate apuHydOperations.YA_05 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_21;   // IF-APU-21
        allocate apuHydOperations.YA_07 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_20;   // IF-APU-20
        allocate apuHydOperations.YA_08 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_06;   // IF-APU-06
        allocate apuHydOperations.YA_09 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_06;   // IF-APU-06
        allocate apuHydOperations.YA_11 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_19;   // IF-APU-19
        allocate apuHydOperations.YA_12 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_06;   // IF-APU-06
        allocate apuHydOperations.YA_14 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_20;   // IF-APU-20
        allocate apuHydOperations.YA_15 to SSD_BLK_SYS_001::context.sts.orb.IF_APU_14;   // IF-APU-14
        allocate apuHydOperations.YA_17 to SSD_BLK_SYS_001::context.sts.orb.apu.IF_APU_03;   // IF-APU-03
        allocate dpsMpsOperations.YB_01 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_18;   // IF-DPS-18
        allocate dpsMpsOperations.YB_02 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_18;   // IF-DPS-18
        allocate dpsMpsOperations.YB_03 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_19;   // IF-DPS-19
        allocate dpsMpsOperations.YB_04 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_19;   // IF-DPS-19
        allocate dpsMpsOperations.YB_05 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_20;   // IF-DPS-20
        allocate dpsMpsOperations.YB_06 to SSD_BLK_SYS_001::context.sts.orb.dps.IF_DPS_20;   // IF-DPS-20
        allocate dpsMpsOperations.YB_08 to SSD_BLK_SYS_001::context.sts.orb.mps.IF_MPS_17;   // IF-MPS-17
        allocate dpsMpsOperations.YB_09 to SSD_BLK_SYS_001::context.sts.orb.mps.IF_MPS_17;   // IF-MPS-17
        allocate dpsMpsOperations.YB_12 to SSD_BLK_SYS_001::context.sts.orb.mps.IF_MPS_18;   // IF-MPS-18
        allocate dpsMpsOperations.YB_14 to SSD_BLK_SYS_001::context.sts.orb.mps.IF_MPS_19;   // IF-MPS-19
        allocate dpsMpsOperations.YB_16 to SSD_BLK_SYS_001::context.sts.orb.mps.IF_MPS_20;   // IF-MPS-20
        allocate evaProcedureFlow.YC_01 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_01;   // IF-EVA-01
        allocate evaProcedureFlow.YC_03 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_02;   // IF-EVA-02
        allocate evaProcedureFlow.YC_04 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_05;   // IF-EVA-05
        allocate evaProcedureFlow.YC_05 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_06;   // IF-EVA-06
        allocate evaProcedureFlow.YC_06 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_13;   // IF-EVA-13
        allocate evaProcedureFlow.YC_07 to SSD_BLK_SYS_001::context.sts.orb.eva.IF_EVA_07;   // IF-EVA-07
        allocate omsCrewOperations.YD_02 to SSD_BLK_SYS_001::context.sts.orb.oms.IF_OMS_06;   // IF-OMS-06
        allocate omsCrewOperations.YD_04 to SSD_BLK_SYS_001::context.sts.orb.oms.IF_OMS_07;   // IF-OMS-07
        allocate omsCrewOperations.YD_06 to SSD_BLK_SYS_001::context.sts.orb.oms.IF_OMS_08;   // IF-OMS-08
        allocate omsCrewOperations.YD_07 to SSD_BLK_SYS_001::context.sts.orb.oms.IF_OMS_09;   // IF-OMS-09
        allocate omsCrewOperations.YD_10 to SSD_BLK_SYS_001::context.sts.orb.oms.IF_OMS_10;   // IF-OMS-10
        allocate rcsRedundancyAndCrewOps.YE_02 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_16;   // IF-RCS-16
        allocate rcsRedundancyAndCrewOps.YE_04 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_17;   // IF-RCS-17
        allocate rcsRedundancyAndCrewOps.YE_06 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_19;   // IF-RCS-19
        allocate rcsRedundancyAndCrewOps.YE_07 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_04;   // IF-RCS-04
        allocate rcsRedundancyAndCrewOps.YE_08 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_05;   // IF-RCS-05
        allocate rcsRedundancyAndCrewOps.YE_09 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_06;   // IF-RCS-06
        allocate rcsRedundancyAndCrewOps.YE_10 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_06;   // IF-RCS-06
        allocate rcsRedundancyAndCrewOps.YE_12 to SSD_BLK_SYS_001::context.sts.orb.rcs.IF_RCS_18;   // IF-RCS-18
        allocate rcsRedundancyAndCrewOps.YE_13 to SSD_BLK_SYS_001::context.sts.orb.IF_RCS_14;   // IF-RCS-14
    }
}
