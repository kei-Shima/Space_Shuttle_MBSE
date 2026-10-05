// SysML v2 テキスト：モデル全体の入口と統合の関係
// SSD-MDL-SYS-001 モデル統合・検査定義書（SysML v2） から生成（lib/build_docs_ag.py）。ほかの SysML v2 テキスト 24件を読み込んでから読む（読み込みの順は SSD-MDL-SYS-001 §2）。
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
    public import SSD_ANA_ORB_001;   // SSD-ANA-ORB-001 解析（トレード・質量・Δv・故障の木）
    public import SSD_VAR_ORB_001;   // SSD-VAR-ORB-001 構成の違い（機体・ミッションキット）
    public import SSD_IND_ORB_001;   // SSD-IND-ORB-001 個体・時間（機体・飛行の個体、時間切片、実績）
    public import SSD_RQF_SYS_001;   // SSD-RQF-SYS-001 要求の形式化（属性・制約・値による判定）
    public import SSD_FLT_ORB_001;   // SSD-FLT-ORB-001 飛行構成・飛行試験（構成の解決・検証の証拠）
    public import SSD_PRF_ORB_001;   // SSD-PRF-ORB-001 消耗品・電力プロファイル（時間軸の残量・設計と実績）
    public import SSD_VER_SYS_001;   // SSD-VER-SYS-001 検証ケース・検証の結果
    public import SSD_TRC_SYS_001;   // SSD-TRC-SYS-001 トレース網羅・影響分析（網羅の指標・切れ目・影響のビュー）
    public import SSD_FDIR_ORB_001;   // SSD-FDIR-ORB-001 故障検知・処置（C/W の警報・監視・処置・状態遷移）
    public import SSD_HAZ_ORB_001;   // SSD-HAZ-ORB-001 ハザード解析（ハザード・原因・管理策・リスク）
    public import SSD_FMM_ORB_001;   // SSD-FMM-ORB-001 故障モード（故障モード・原因・検知・管理策の連鎖）
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
    }
}
