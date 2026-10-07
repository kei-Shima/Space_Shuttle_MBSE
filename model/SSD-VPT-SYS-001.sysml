// SysML v2 テキスト：関係者・関心事・ビューポイント・ビュー（図）と表記の規約
// SSD-VPT-SYS-001 ビューポイント定義書（関係者・関心事・ビュー・表記の規約） の表から生成（lib/build_docs_am.py）。
package SSD_VPT_SYS_001 {
    doc /* SSD-VPT-SYS-001 ビューポイント定義書（関係者・関心事・ビュー・表記の規約）。ビューは SSD-SYS-ARC-001 の図（158件）。 */
    private import SSD_BLK_SYS_001::*;
    private import StandardViewDefinitions::*;
    private import ScalarValues::*;
    // ---- 関係者
    part def <'SH-SE'> SystemsEngineer { doc /* システム技術者：全体の構成・整合・要求の割付を見る */ }
    part def <'SH-DES'> SubsystemDesigner { doc /* 系の設計者：受け持つ系の機能・IF・機器を見る */ }
    part def <'SH-OPS'> FlightOperations { doc /* 運用管制（MCC）・飛行計画：フェーズごとの手順と系の状態を見る */ }
    part def <'SH-CREW'> CrewMember { doc /* 乗員：操作と非常時の処置を見る */ }
    part def <'SH-SMA'> SafetyMissionAssurance { doc /* 安全・信頼性（S&MA）：冗長・故障・ハザードを見る */ }
    part def <'SH-VER'> VerificationEngineer { doc /* 検証担当：要求の検証方法と判定を見る */ }
    part def <'SH-LPS'> LaunchProcessing { doc /* 打上げ処理（KSC）：地上との IF と打上げ前の構成を見る */ }
    part def <'SH-PL'> PayloadCustomer { doc /* ペイロード顧客：ペイロードへの資源と運用を見る */ }
    part def <'SH-MGT'> ProgramManagement { doc /* 計画・構成管理：機体・キットの構成と収支の幅、モデルの管理を見る */ }
    part def <'SH-HSI'> HumanSystemsEngineer { doc /* 航空医官・人間系の技術者：乗員の健康・能力・居住性と、人と機械の分担を見る */ }
    // ---- 関心事（その関心事を持つ関係者）
    concern def <'CN-01'> SystemComposition {
        doc /* 系の構成と境界：システムは何で構成され、外部と何がつながるか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder subsystemDesigner : SubsystemDesigner;
    }
    concern def <'CN-02'> InterfaceConsistency {
        doc /* インタフェースの整合：IF の両端・種別・上位下位がそろっているか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder subsystemDesigner : SubsystemDesigner;
        stakeholder launchProcessing : LaunchProcessing;
    }
    concern def <'CN-03'> RequirementSatisfaction {
        doc /* 要求と充足：どの要求がどの部品・IF で満たされるか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder verificationEngineer : VerificationEngineer;
    }
    concern def <'CN-04'> VerificationStatus {
        doc /* 検証の状態：要求がどの方法で確かめられ、判定は何か */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder verificationEngineer : VerificationEngineer;
    }
    concern def <'CN-05'> OperationsFlow {
        doc /* 運用の流れとフェーズ：いつ誰が何をし、系はどの状態か */
        subject sts : SpaceTransportationSystem;
        stakeholder subsystemDesigner : SubsystemDesigner;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder launchProcessing : LaunchProcessing;
        stakeholder payloadCustomer : PayloadCustomer;
    }
    concern def <'CN-06'> FailureTolerance {
        doc /* 故障への備え：冗長・故障処置・故障の木で何が守られるか */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
    }
    concern def <'CN-07'> ResourceMargins {
        doc /* 資源とマージン：電力・消耗品・質量・Δv に余裕があるか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder payloadCustomer : PayloadCustomer;
        stakeholder programManagement : ProgramManagement;
    }
    concern def <'CN-08'> PhysicalArrangement {
        doc /* 物理配置：機器がどの区画にあり、どの機能を担うか */
        subject sts : SpaceTransportationSystem;
        stakeholder subsystemDesigner : SubsystemDesigner;
        stakeholder launchProcessing : LaunchProcessing;
    }
    concern def <'CN-09'> ConfigurationVariants {
        doc /* 構成の違い：機体・キットで何が変わるか */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder payloadCustomer : PayloadCustomer;
        stakeholder programManagement : ProgramManagement;
    }
    concern def <'CN-10'> SourceTraceability {
        doc /* 根拠の追跡：記述の出典と運用資料の節を辿れるか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder subsystemDesigner : SubsystemDesigner;
        stakeholder programManagement : ProgramManagement;
    }
    concern def <'CN-11'> ModelConsistency {
        doc /* モデルの整合：文書・図・モデルが同じ内容を指しているか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder programManagement : ProgramManagement;
    }
    concern def <'CN-12'> ChangeImpactCoverage {
        doc /* 変更の影響と連鎖の網羅：ある要素を変えると何に影響し、要求から検証までの連鎖はどこで切れているか */
        subject sts : SpaceTransportationSystem;
        stakeholder systemsEngineer : SystemsEngineer;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder verificationEngineer : VerificationEngineer;
        stakeholder programManagement : ProgramManagement;
    }
    concern def <'CN-13'> HumanSystemIntegration {
        doc /* 乗員の健康・能力と居住性：乗員はどんな環境にさらされ、何をどう操作し、どこで誤りうり、どう暮らし、どう退避するか */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-14'> HumanSystemConcern01 {
        doc /* 乗員の健康と安全：乗員の健康と安全（医療・覚醒時間・訓練）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-01） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-15'> HumanSystemConcern02 {
        doc /* 作業の負荷と時間：作業の負荷と時間（作業分析・作業負荷・時間線）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-02） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-16'> HumanSystemConcern03 {
        doc /* 人の誤りとその抑え：人の誤りとその抑え（HEA・誤操作の防止・検出と回復）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-03） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-17'> HumanSystemConcern04 {
        doc /* 乗員インタフェース：乗員インタフェース（表示・操作器・ラベル・警報・操縦性）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-04） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-18'> HumanSystemConcern05 {
        doc /* 居住性：居住性（容積・配置・照明・睡眠・衛生）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-05） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-19'> HumanSystemConcern06 {
        doc /* 体格と身体の能力への適合：体格と身体の能力への適合（人体寸法・届く範囲・筋力）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-06） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-20'> HumanSystemConcern07 {
        doc /* 環境の曝露：環境の曝露（騒音・大気・放射線・加速度・振動）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-07） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    concern def <'CN-21'> HumanSystemConcern08 {
        doc /* 緊急時の退避：緊急時の退避（脱出の経路・時間・支援）について、どの要求と図表で何が分かるか（人間系の評価方法定義書 の HCV-08） */
        subject sts : SpaceTransportationSystem;
        stakeholder flightOperations : FlightOperations;
        stakeholder crewMember : CrewMember;
        stakeholder safetyMissionAssurance : SafetyMissionAssurance;
        stakeholder humanSystemsEngineer : HumanSystemsEngineer;
    }
    // ---- ビューポイント（関心事を枠に入れる）とビュー定義（標準のビュー定義を特化し、ビューポイントを満たす）
    viewpoint def <'VP-01'> CompositionViewpoint {
        doc /* 構成の観点。主な定義書：SSD-FD-*・SSD-BLK-SYS-001 */
        subject v : Views::View;
        frame concern cn01 : SystemComposition;
    }
    view def CompositionView :> GeneralView {
        satisfy requirement framedViewpoint : CompositionViewpoint;
        render Views::asTreeDiagram;
    }
    viewpoint def <'VP-02'> InterfacesViewpoint {
        doc /* インタフェースの観点。主な定義書：SSD-ICD-ORB-001・SSD-BLK-SYS-001・SSD-IBD-ORB-001 */
        subject v : Views::View;
        frame concern cn02 : InterfaceConsistency;
    }
    view def InterfacesView :> InterconnectionView {
        satisfy requirement framedViewpoint : InterfacesViewpoint;
        render Views::asInterconnectionDiagram;
    }
    viewpoint def <'VP-03'> RequirementsVerificationViewpoint {
        doc /* 要求・検証の観点。主な定義書：SSD-REQ-*・SSD-RQM-SYS-001・SSD-VER-SYS-001・SSD-RQF-SYS-001・SSD-FLT-ORB-001・SSD-HSI-SYS-001 */
        subject v : Views::View;
        frame concern cn03 : RequirementSatisfaction;
        frame concern cn04 : VerificationStatus;
    }
    view def RequirementsVerificationView :> GridView {
        satisfy requirement framedViewpoint : RequirementsVerificationViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-04'> OperationsViewpoint {
        doc /* 運用の観点。主な定義書：SSD-OPS-PHASE-001・SSD-UC-ORB-001・SSD-BEH-ORB-001・003・004 */
        subject v : Views::View;
        frame concern cn05 : OperationsFlow;
    }
    view def OperationsView :> GeneralView {
        satisfy requirement framedViewpoint : OperationsViewpoint;
        render Views::asTreeDiagram;
    }
    viewpoint def <'VP-05'> SubsystemBehaviorViewpoint {
        doc /* 系の振る舞いの観点。主な定義書：SSD-BEH-ORB-005・SSD-BEH-ORB-006 */
        subject v : Views::View;
        frame concern cn05 : OperationsFlow;
    }
    view def SubsystemBehaviorView :> StateTransitionView {
        satisfy requirement framedViewpoint : SubsystemBehaviorViewpoint;
        render Views::asTreeDiagram;
    }
    viewpoint def <'VP-06'> SafetyFailureViewpoint {
        doc /* 安全・故障の観点。主な定義書：SSD-FMEA-*・SSD-BEH-ORB-002・SSD-ANA-ORB-001・SSD-FDIR-ORB-001・SSD-HAZ-ORB-001・SSD-FMM-ORB-001 */
        subject v : Views::View;
        frame concern cn06 : FailureTolerance;
    }
    view def SafetyFailureView :> GeneralView {
        satisfy requirement framedViewpoint : SafetyFailureViewpoint;
        render Views::asTreeDiagram;
    }
    viewpoint def <'VP-07'> ResourcesMarginsViewpoint {
        doc /* 資源・マージンの観点。主な定義書：SSD-BUD-ORB-001・SSD-PAR-ORB-001・SSD-ANA-ORB-001・SSD-PRF-ORB-001 */
        subject v : Views::View;
        frame concern cn07 : ResourceMargins;
    }
    view def ResourcesMarginsView :> GridView {
        satisfy requirement framedViewpoint : ResourcesMarginsViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-08'> PhysicalViewpoint {
        doc /* 物理配置の観点。主な定義書：SSD-PHY-ORB-001・SSD-ALC-SYS-001 */
        subject v : Views::View;
        frame concern cn08 : PhysicalArrangement;
    }
    view def PhysicalView :> GridView {
        satisfy requirement framedViewpoint : PhysicalViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-09'> VariantsViewpoint {
        doc /* 構成の違いの観点。主な定義書：SSD-VAR-ORB-001・SSD-IND-ORB-001・SSD-FLT-ORB-001 */
        subject v : Views::View;
        frame concern cn09 : ConfigurationVariants;
    }
    view def VariantsView :> GridView {
        satisfy requirement framedViewpoint : VariantsViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-10'> SourceTraceViewpoint {
        doc /* 根拠の追跡の観点。主な定義書：SSD-*-REF-*・SSD-OPS-REF-001・002 */
        subject v : Views::View;
        frame concern cn10 : SourceTraceability;
    }
    view def SourceTraceView :> GridView {
        satisfy requirement framedViewpoint : SourceTraceViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-11'> ModelManagementViewpoint {
        doc /* モデル管理の観点。主な定義書：SSD-SYS-IDX-001・SSD-MDL-SYS-001・SSD-VPT-SYS-001 */
        subject v : Views::View;
        frame concern cn11 : ModelConsistency;
    }
    view def ModelManagementView :> BrowserView {
        satisfy requirement framedViewpoint : ModelManagementViewpoint;
        render Views::asTreeDiagram;
    }
    viewpoint def <'VP-12'> TraceImpactViewpoint {
        doc /* トレース・影響の観点。主な定義書：SSD-TRC-SYS-001 */
        subject v : Views::View;
        frame concern cn12 : ChangeImpactCoverage;
    }
    view def TraceImpactView :> GridView {
        satisfy requirement framedViewpoint : TraceImpactViewpoint;
        render Views::asElementTable;
    }
    viewpoint def <'VP-13'> HumanSystemsViewpoint {
        doc /* 人間系の観点。主な定義書：SSD-HSI-SYS-001・SSD-EXP-ORB-001・SSD-TSK-ORB-001・SSD-HEA-ORB-001・SSD-CIF-ORB-001・SSD-HAB-ORB-001・SSD-EGR-ORB-001・SSD-HVM-SYS-001 */
        subject v : Views::View;
        frame concern cn13 : HumanSystemIntegration;
        frame concern cn14 : HumanSystemConcern01;
        frame concern cn15 : HumanSystemConcern02;
        frame concern cn16 : HumanSystemConcern03;
        frame concern cn17 : HumanSystemConcern04;
        frame concern cn18 : HumanSystemConcern05;
        frame concern cn19 : HumanSystemConcern06;
        frame concern cn20 : HumanSystemConcern07;
        frame concern cn21 : HumanSystemConcern08;
    }
    view def HumanSystemsView :> GeneralView {
        satisfy requirement framedViewpoint : HumanSystemsViewpoint;
        render Views::asTreeDiagram;
    }
    // ---- ビュー（SSD-SYS-ARC-001 の図。晒す要素は図が描くモデルのパッケージ）
    view <'図1'> fig001 : CompositionView {
        doc /* 図1 システム構成（頁 p1-system） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図2'> fig002 : CompositionView {
        doc /* 図2 オービタ サブシステム構成（頁 p2-orbiter） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図3'> fig003 : CompositionView {
        doc /* 図3 ECLSS 機能構成（頁 p3-eclss） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図4'> fig004 : SourceTraceView {
        doc /* 図4 ECLSS 関連文書マトリクス（頁 p4-eclss-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図5'> fig005 : ModelManagementView {
        doc /* 図5 文書・インタフェース一覧（頁 p5-register） */
        expose SSD_VPT_SYS_001::Conventions::*;
    }
    view <'図6'> fig006 : CompositionView {
        doc /* 図6 EPS 機能構成（頁 p6-eps） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図7'> fig007 : SourceTraceView {
        doc /* 図7 EPS 関連文書マトリクス（頁 p7-eps-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図8'> fig008 : CompositionView {
        doc /* 図8 熱制御 機能構成（頁 p8-tcs） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図9'> fig009 : SourceTraceView {
        doc /* 図9 熱制御 関連文書マトリクス（頁 p9-tcs-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図10'> fig010 : SourceTraceView {
        doc /* 図10 運用飛行規則 章構成（頁 p10-flight-rules） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図11'> fig011 : SourceTraceView {
        doc /* 図11 乗員運用マニュアル 節構成（頁 p11-scom） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図12'> fig012 : CompositionView {
        doc /* 図12 ARS 機能構成（頁 p12-ars） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図13'> fig013 : SourceTraceView {
        doc /* 図13 ARS 関連文書マトリクス（頁 p13-ars-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図14'> fig014 : CompositionView {
        doc /* 図14 CO2・CO除去 機能構成（頁 p14-co2） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図15'> fig015 : SourceTraceView {
        doc /* 図15 CO2・CO除去 関連文書マトリクス（頁 p15-co2-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図16'> fig016 : CompositionView {
        doc /* 図16 キャビン空気循環 機能構成（頁 p16-cac） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図17'> fig017 : SourceTraceView {
        doc /* 図17 キャビン空気循環 関連文書マトリクス（頁 p17-cac-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図18'> fig018 : CompositionView {
        doc /* 図18 圧力制御系 機能構成（頁 p18-pcs） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図19'> fig019 : SourceTraceView {
        doc /* 図19 圧力制御系 関連文書マトリクス（頁 p19-pcs-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図20'> fig020 : CompositionView {
        doc /* 図20 給水・廃水系 機能構成（頁 p20-h2o） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図21'> fig021 : SourceTraceView {
        doc /* 図21 給水・廃水系 関連文書マトリクス（頁 p21-h2o-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図22'> fig022 : CompositionView {
        doc /* 図22 廃棄物収集系 機能構成（頁 p22-wcs） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図23'> fig023 : SourceTraceView {
        doc /* 図23 廃棄物収集系 関連文書マトリクス（頁 p23-wcs-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図24'> fig024 : CompositionView {
        doc /* 図24 エアロック支援系 機能構成（頁 p24-als） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図25'> fig025 : SourceTraceView {
        doc /* 図25 エアロック支援系 関連文書マトリクス（頁 p25-als-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図26'> fig026 : CompositionView {
        doc /* 図26 煙検知・消火系 機能構成（頁 p26-fds） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図27'> fig027 : SourceTraceView {
        doc /* 図27 煙検知・消火系 関連文書マトリクス（頁 p27-fds-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図28'> fig028 : CompositionView {
        doc /* 図28 再生式CO2除去装置 機能構成（頁 p28-rcrs） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図29'> fig029 : SourceTraceView {
        doc /* 図29 再生式CO2除去装置 関連文書マトリクス（頁 p29-rcrs-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図30'> fig030 : CompositionView {
        doc /* 図30 キャビン温湿度制御 機能構成（頁 p30-thc） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図31'> fig031 : SourceTraceView {
        doc /* 図31 キャビン温湿度制御 関連文書マトリクス（頁 p31-thc-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図32'> fig032 : CompositionView {
        doc /* 図32 アビオニクスベイ空冷 機能構成（頁 p32-avb） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図33'> fig033 : SourceTraceView {
        doc /* 図33 アビオニクスベイ空冷 関連文書マトリクス（頁 p33-avb-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図34'> fig034 : CompositionView {
        doc /* 図34 IMU空冷 機能構成（頁 p34-imu） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図35'> fig035 : SourceTraceView {
        doc /* 図35 IMU空冷 関連文書マトリクス（頁 p35-imu-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図36'> fig036 : CompositionView {
        doc /* 図36 水冷却ループ 機能構成（頁 p36-wcl） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図37'> fig037 : SourceTraceView {
        doc /* 図37 水冷却ループ 関連文書マトリクス（頁 p37-wcl-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図38'> fig038 : InterfacesView {
        doc /* 図38 オービタ N2 インタフェース行列（頁 p38-n2） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図39'> fig039 : OperationsView {
        doc /* 図39 フェーズ別 サブシステム稼働表（頁 p39-phase-matrix） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図40'> fig040 : OperationsView {
        doc /* 図40 上昇シーケンス（頁 p40-ascent-seq） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図41'> fig041 : InterfacesView {
        doc /* 図41 補助図 T-0 アンビリカルと ET・SRB（頁 p41-aux-ground） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図42'> fig042 : InterfacesView {
        doc /* 図42 補助図 データ・冷却・構造（頁 p42-aux-data） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図43'> fig043 : PhysicalView {
        doc /* 図43 オービタ区画・機器配置図（頁 p43-physical） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図44'> fig044 : ResourcesMarginsView {
        doc /* 図44 収支マージン要約（頁 p44-budget） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図45'> fig045 : SafetyFailureView {
        doc /* 図45 冗長度の重ね図（頁 p45-redundancy） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図46'> fig046 : CompositionView {
        doc /* 図46 GN&C 機能構成（頁 p46-gnc） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図47'> fig047 : SourceTraceView {
        doc /* 図47 GN&C 関連文書マトリクス（頁 p47-gnc-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図48'> fig048 : CompositionView {
        doc /* 図48 DPS 機能構成（頁 p48-dps） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図49'> fig049 : SourceTraceView {
        doc /* 図49 DPS 関連文書マトリクス（頁 p49-dps-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図50'> fig050 : CompositionView {
        doc /* 図50 MPS 機能構成（頁 p50-mps） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図51'> fig051 : SourceTraceView {
        doc /* 図51 MPS 関連文書マトリクス（頁 p51-mps-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図52'> fig052 : CompositionView {
        doc /* 図52 OMS 機能構成（頁 p52-oms） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図53'> fig053 : SourceTraceView {
        doc /* 図53 OMS 関連文書マトリクス（頁 p53-oms-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図54'> fig054 : CompositionView {
        doc /* 図54 RCS 機能構成（頁 p54-rcs） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図55'> fig055 : SourceTraceView {
        doc /* 図55 RCS 関連文書マトリクス（頁 p55-rcs-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図56'> fig056 : CompositionView {
        doc /* 図56 APU/HYD 機能構成（頁 p56-apu） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図57'> fig057 : SourceTraceView {
        doc /* 図57 APU/HYD 関連文書マトリクス（頁 p57-apu-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図58'> fig058 : CompositionView {
        doc /* 図58 C&T 機能構成（頁 p58-ct） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図59'> fig059 : SourceTraceView {
        doc /* 図59 C&T 関連文書マトリクス（頁 p59-ct-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図60'> fig060 : CompositionView {
        doc /* 図60 EVA 機能構成（頁 p60-eva） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図61'> fig061 : SourceTraceView {
        doc /* 図61 EVA 関連文書マトリクス（頁 p61-eva-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図62'> fig062 : CompositionView {
        doc /* 図62 C/W 機能構成（頁 p62-cw） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図63'> fig063 : SourceTraceView {
        doc /* 図63 C/W 関連文書マトリクス（頁 p63-cw-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図64'> fig064 : CompositionView {
        doc /* 図64 CREW 機能構成（頁 p64-crew） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図65'> fig065 : SourceTraceView {
        doc /* 図65 CREW 関連文書マトリクス（頁 p65-crew-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図66'> fig066 : CompositionView {
        doc /* 図66 PLS 機能構成（頁 p66-pls） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図67'> fig067 : SourceTraceView {
        doc /* 図67 PLS 関連文書マトリクス（頁 p67-pls-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図68'> fig068 : CompositionView {
        doc /* 図68 MECH 機能構成（頁 p68-mech） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図69'> fig069 : SourceTraceView {
        doc /* 図69 MECH 関連文書マトリクス（頁 p69-mech-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図70'> fig070 : CompositionView {
        doc /* 図70 STR 機能構成（頁 p70-str） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図71'> fig071 : SourceTraceView {
        doc /* 図71 STR 関連文書マトリクス（頁 p71-str-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図72'> fig072 : CompositionView {
        doc /* 図72 ET 機能構成（頁 p72-et） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図73'> fig073 : SourceTraceView {
        doc /* 図73 ET 関連文書マトリクス（頁 p73-et-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図74'> fig074 : CompositionView {
        doc /* 図74 SRB 機能構成（頁 p74-srb） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図75'> fig075 : SourceTraceView {
        doc /* 図75 SRB 関連文書マトリクス（頁 p75-srb-docs） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図76'> fig076 : OperationsView {
        doc /* 図76 ミッションフェーズ・アボート 状態遷移図（頁 p76-mode-sm） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図77'> fig077 : OperationsView {
        doc /* 図77 飛行継続判断（Go/No-Go）状態遷移図（頁 p77-gonogo-sm） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図78'> fig078 : ResourcesMarginsView {
        doc /* 図78 消耗品 パラメトリック図（頁 p78-par-consumables） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図79'> fig079 : ResourcesMarginsView {
        doc /* 図79 電力・反応剤・排熱 パラメトリック図（頁 p79-par-power） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図80'> fig080 : SafetyFailureView {
        doc /* 図80 MPS ヘリウム漏れ処置 活動図（頁 p80-act-he） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図81'> fig081 : SafetyFailureView {
        doc /* 図81 燃料電池の冷却喪失処置 活動図（頁 p81-act-fc） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図82'> fig082 : SafetyFailureView {
        doc /* 図82 火災処置 活動図（頁 p82-act-fire） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図83'> fig083 : OperationsView {
        doc /* 図83 軌道離脱〜着陸 シーケンス図（頁 p83-seq-deorbit） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図84'> fig084 : OperationsView {
        doc /* 図84 上昇 シーケンス図（頁 p84-seq-ascent） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図85'> fig085 : OperationsView {
        doc /* 図85 指令・テレメトリ経路 シーケンス図（頁 p85-seq-command） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図86'> fig086 : SafetyFailureView {
        doc /* 図86 キャビン減圧処置 活動図（頁 p86-act-leak） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図87'> fig087 : OperationsView {
        doc /* 図87 EVA 準備〜再与圧 活動図（頁 p87-act-eva） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図88'> fig088 : SafetyFailureView {
        doc /* 図88 ペイロードベイドア閉鎖不能処置 活動図（頁 p88-act-plbd） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図89'> fig089 : CompositionView {
        doc /* 図89 システム構成 ブロック定義図（頁 p89-bdd-structure） */
        expose SSD_BLK_SYS_001::*;
    }
    view <'図90'> fig090 : RequirementsVerificationView {
        doc /* 図90 要求の導出・充足 行列（頁 p90-req-matrix） */
        expose SSD_RQM_SYS_001::*;
        expose SSD_VER_SYS_001::*;
        expose SSD_RQF_SYS_001::*;
        expose SSD_FLT_ORB_001::*;
        expose SSD_HSI_SYS_001::*;
    }
    view <'図91'> fig091 : PhysicalView {
        doc /* 図91 割付行列（系 × 区画）（頁 p91-alloc-matrix） */
        expose SSD_ALC_SYS_001::*;
    }
    view <'図92'> fig092 : ModelManagementView {
        doc /* 図92 モデルの構成 パッケージ図（頁 p92-model-packages） */
        expose SSD_VPT_SYS_001::Conventions::*;
    }
    view <'図93'> fig093 : OperationsView {
        doc /* 図93 運用のユースケース図（頁 p93-uc-mission） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図94'> fig094 : OperationsView {
        doc /* 図94 ランデブー・ドッキング シーケンス図（頁 p94-seq-rndz） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図95'> fig095 : OperationsView {
        doc /* 図95 最終秒読み〜RSLS アボート シーケンス図（頁 p95-seq-rsls） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図96'> fig096 : OperationsView {
        doc /* 図96 RMS によるペイロード放出 活動図（頁 p96-act-deploy） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図97'> fig097 : OperationsView {
        doc /* 図97 上昇アボートの選択 活動図（頁 p97-act-abort） */
        expose SSD_UC_ORB_001::*;
        expose SSD_BEH_ORB_001::*;
        expose SSD_BEH_ORB_003::*;
        expose SSD_BEH_ORB_004::*;
    }
    view <'図98'> fig098 : SubsystemBehaviorView {
        doc /* 図98 GPC 状態遷移図（頁 p98-sm-gpc） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図99'> fig099 : SubsystemBehaviorView {
        doc /* 図99 燃料電池 状態遷移図（頁 p99-sm-fc） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図100'> fig100 : SubsystemBehaviorView {
        doc /* 図100 APU 状態遷移図（頁 p100-sm-apu） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図101'> fig101 : SubsystemBehaviorView {
        doc /* 図101 RMS 状態遷移図（頁 p101-sm-rms） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図102'> fig102 : SubsystemBehaviorView {
        doc /* 図102 ATCS 排熱 状態遷移図（頁 p102-sm-atcs） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図103'> fig103 : SubsystemBehaviorView {
        doc /* 図103 系のモード × フェーズ 行列（頁 p103-mode-phase） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図104'> fig104 : ResourcesMarginsView {
        doc /* 図104 CO2 除去のトレードスタディ（頁 p104-trade-co2） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図105'> fig105 : ResourcesMarginsView {
        doc /* 図105 質量特性・Δv の解析（頁 p105-mass-dv） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図106'> fig106 : SafetyFailureView {
        doc /* 図106 故障の木 A（28 VDC 主電力の喪失）（頁 p106-fta-a） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図107'> fig107 : SafetyFailureView {
        doc /* 図107 故障の木 B（空力舵面の油圧の喪失）（頁 p107-fta-b） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図108'> fig108 : SafetyFailureView {
        doc /* 図108 故障の木 C（CO2 制御の喪失）（頁 p108-fta-c） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図109'> fig109 : VariantsView {
        doc /* 図109 機体・ミッションキットの構成行列（頁 p109-variants） */
        expose SSD_VAR_ORB_001::*;
        expose SSD_IND_ORB_001::*;
        expose SSD_FLT_ORB_001::*;
    }
    view <'図110'> fig110 : RequirementsVerificationView {
        doc /* 図110 検証マトリクス（頁 p110-verification） */
        expose SSD_RQM_SYS_001::*;
        expose SSD_VER_SYS_001::*;
        expose SSD_RQF_SYS_001::*;
        expose SSD_FLT_ORB_001::*;
        expose SSD_HSI_SYS_001::*;
    }
    view <'図111'> fig111 : ModelManagementView {
        doc /* 図111 ビューポイントと関係者の行列（頁 p111-viewpoints） */
        expose SSD_VPT_SYS_001::Conventions::*;
    }
    view <'図112'> fig112 : InterfacesView {
        doc /* 図112 EPS 発電・配電 内部ブロック図（頁 p112-ibd-eps） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図113'> fig113 : InterfacesView {
        doc /* 図113 ATCS 冷却ループ 内部ブロック図（頁 p113-ibd-atcs） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図114'> fig114 : InterfacesView {
        doc /* 図114 MPS 推進薬供給 内部ブロック図（頁 p114-ibd-mps） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図115'> fig115 : TraceImpactView {
        doc /* 図115 トレースの連鎖（要素の種類と関係）（頁 p115-trace-chain） */
        expose SSD_TRC_SYS_001::*;
    }
    view <'図116'> fig116 : TraceImpactView {
        doc /* 図116 系ごとのトレース網羅（頁 p116-trace-coverage） */
        expose SSD_TRC_SYS_001::*;
    }
    view <'図117'> fig117 : TraceImpactView {
        doc /* 図117 変更の影響分析（頁 p117-impact） */
        expose SSD_TRC_SYS_001::*;
    }
    view <'図118'> fig118 : SafetyFailureView {
        doc /* 図118 C/W 警告灯と検知・処置の対応（頁 p118-fdir-lights） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図119'> fig119 : SafetyFailureView {
        doc /* 図119 故障検知・処置の連鎖と網羅（頁 p119-fdir-chain） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図120'> fig120 : SafetyFailureView {
        doc /* 図120 ハザードのリスク行列（頁 p120-hazard-matrix） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図121'> fig121 : SafetyFailureView {
        doc /* 図121 ハザードの原因と管理策（頁 p121-hazard-bowtie） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図122'> fig122 : VariantsView {
        doc /* 図122 機体と飛行の個体・時間切片（頁 p122-individuals） */
        expose SSD_VAR_ORB_001::*;
        expose SSD_IND_ORB_001::*;
        expose SSD_FLT_ORB_001::*;
    }
    view <'図123'> fig123 : VariantsView {
        doc /* 図123 飛行の実績と設計値（頁 p123-actuals） */
        expose SSD_VAR_ORB_001::*;
        expose SSD_IND_ORB_001::*;
        expose SSD_FLT_ORB_001::*;
    }
    view <'図124'> fig124 : RequirementsVerificationView {
        doc /* 図124 要求の形式化の区分（頁 p124-req-formal） */
        expose SSD_RQM_SYS_001::*;
        expose SSD_VER_SYS_001::*;
        expose SSD_RQF_SYS_001::*;
        expose SSD_FLT_ORB_001::*;
        expose SSD_HSI_SYS_001::*;
    }
    view <'図125'> fig125 : RequirementsVerificationView {
        doc /* 図125 要求の値による判定（頁 p125-req-evaluation） */
        expose SSD_RQM_SYS_001::*;
        expose SSD_VER_SYS_001::*;
        expose SSD_RQF_SYS_001::*;
        expose SSD_FLT_ORB_001::*;
        expose SSD_HSI_SYS_001::*;
    }
    view <'図126'> fig126 : SafetyFailureView {
        doc /* 図126 故障モードから見た安全の連鎖（頁 p126-fmm-chain） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図127'> fig127 : SafetyFailureView {
        doc /* 図127 故障モードの網羅（系・原因ごと）（頁 p127-fmm-coverage） */
        expose SSD_BEH_ORB_002::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_FDIR_ORB_001::*;
        expose SSD_HAZ_ORB_001::*;
        expose SSD_FMM_ORB_001::*;
    }
    view <'図128'> fig128 : InterfacesView {
        doc /* 図128 DPS データバス網 内部ブロック図（頁 p128-ibd-dps） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図129'> fig129 : InterfacesView {
        doc /* 図129 APU・油圧 内部ブロック図（頁 p129-ibd-apu） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図130'> fig130 : InterfacesView {
        doc /* 図130 OMS・RCS 推進薬 内部ブロック図（頁 p130-ibd-prop） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図131'> fig131 : InterfacesView {
        doc /* 図131 C&T RF リンク 内部ブロック図（頁 p131-ibd-ct） */
        expose SSD_BLK_SYS_001::*;
        expose SSD_IBD_ORB_001::*;
    }
    view <'図132'> fig132 : VariantsView {
        doc /* 図132 飛行ごとの構成（機体・キット・特徴）（頁 p132-flight-config） */
        expose SSD_VAR_ORB_001::*;
        expose SSD_IND_ORB_001::*;
        expose SSD_FLT_ORB_001::*;
    }
    view <'図133'> fig133 : RequirementsVerificationView {
        doc /* 図133 飛行試験の結果と要求（頁 p133-flight-tests） */
        expose SSD_RQM_SYS_001::*;
        expose SSD_VER_SYS_001::*;
        expose SSD_RQF_SYS_001::*;
        expose SSD_FLT_ORB_001::*;
        expose SSD_HSI_SYS_001::*;
    }
    view <'図134'> fig134 : ResourcesMarginsView {
        doc /* 図134 標準ミッションの消耗品の残量（設計）（頁 p134-profile-design） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図135'> fig135 : ResourcesMarginsView {
        doc /* 図135 反応剤の残量の設計と実績（STS-1・114・125）（頁 p135-profile-actual） */
        expose SSD_PAR_ORB_001::*;
        expose SSD_ANA_ORB_001::*;
        expose SSD_PRF_ORB_001::*;
    }
    view <'図136'> fig136 : SubsystemBehaviorView {
        doc /* 図136 OMS 状態遷移図（頁 p136-sm-oms） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図137'> fig137 : SubsystemBehaviorView {
        doc /* 図137 RCS 状態遷移図（頁 p137-sm-rcs） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図138'> fig138 : SubsystemBehaviorView {
        doc /* 図138 MPS 状態遷移図（頁 p138-sm-mps） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図139'> fig139 : SubsystemBehaviorView {
        doc /* 図139 C&T 通信構成 状態遷移図（頁 p139-sm-ct） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図140'> fig140 : SubsystemBehaviorView {
        doc /* 図140 与圧系 状態遷移図（頁 p140-sm-pcs） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図141'> fig141 : SubsystemBehaviorView {
        doc /* 図141 ODS 状態遷移図（頁 p141-sm-ods） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図142'> fig142 : SubsystemBehaviorView {
        doc /* 図142 系のモード × フェーズ 行列（その2）（頁 p142-mode-phase-2） */
        expose SSD_BEH_ORB_005::*;
        expose SSD_BEH_ORB_006::*;
    }
    view <'図143'> fig143 : HumanSystemsView {
        doc /* 図143 人間系の基準の照合（章 × 判定）（頁 p143-hsi-coverage） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図144'> fig144 : HumanSystemsView {
        doc /* 図144 人間系の基準の値とシャトルの値（頁 p144-hsi-values） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図145'> fig145 : HumanSystemsView {
        doc /* 図145 乗員の曝露の量と基準（パラメトリック）（頁 p145-exp-params） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図146'> fig146 : HumanSystemsView {
        doc /* 図146 乗員の曝露のプロファイル（頁 p146-exp-profiles） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図147'> fig147 : HumanSystemsView {
        doc /* 図147 機能の分担（人・自動化・地上）（頁 p147-tsk-alloc） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図148'> fig148 : HumanSystemsView {
        doc /* 図148 作業分析：軌道離脱準備から着陸まで（頁 p148-tsk-deorbit） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図149'> fig149 : HumanSystemsView {
        doc /* 図149 作業分析：EVA の準備（頁 p149-tsk-eva） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図150'> fig150 : HumanSystemsView {
        doc /* 図150 作業 × 誤りの種類（頁 p150-hea-matrix） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図151'> fig151 : HumanSystemsView {
        doc /* 図151 誤りからハザードへの連鎖と管理策（頁 p151-hea-chain） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図152'> fig152 : HumanSystemsView {
        doc /* 図152 警報の階層の対応（シャトル × 3001）（頁 p152-cif-alerts） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図153'> fig153 : HumanSystemsView {
        doc /* 図153 表示・操作の盤と作業位置（頁 p153-cif-panels） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図154'> fig154 : HumanSystemsView {
        doc /* 図154 居住・医療の機能と 3001 の照合、乗員の1日（頁 p154-hab-funcs） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図155'> fig155 : HumanSystemsView {
        doc /* 図155 居住・医療のユースケース（頁 p155-hab-uc） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図156'> fig156 : HumanSystemsView {
        doc /* 図156 乗員区画のつながりと移動の経路（頁 p156-egr-paths） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図157'> fig157 : HumanSystemsView {
        doc /* 図157 非常退避・退出のモード × フェーズ（頁 p157-egr-modes） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    view <'図158'> fig158 : HumanSystemsView {
        doc /* 図158 人間系の評価方法と図表の対応（頁 p158-hvm-methods） */
        expose SSD_HSI_SYS_001::*;
        expose SSD_EXP_ORB_001::*;
        expose SSD_TSK_ORB_001::*;
        expose SSD_HEA_ORB_001::*;
        expose SSD_CIF_ORB_001::*;
        expose SSD_HAB_ORB_001::*;
        expose SSD_EGR_ORB_001::*;
        expose SSD_HVM_SYS_001::*;
    }
    // ---- 表記の規約
    package Conventions {
        doc /* 文書の表の ID の形と、出典・文書番号の書き方 */
        metadata def IdConvention { attribute prefix : String; attribute form : String; attribute meaning : String; attribute example : String; attribute count : Integer; }
        metadata def SourceReference { doc /* 出典の公開 URL（頁つき）と照合語（その頁の抽出テキストにある語句） */ attribute url : String; attribute keywords : String[0..*]; }
        metadata def DocumentNumber { doc /* 要素を説明する文書の番号 */ attribute docNo : String; }
        @IdConvention { prefix = "SSD-"; form = "SSD-<種別>-<対象>-<3桁>"; meaning = "文書番号（SSD-種別-対象-連番）"; example = "SSD-FD-OMS-ENG-001"; count = 314; }
        @IdConvention { prefix = "F-"; form = "F-<系>-<下位>-<2桁>"; meaning = "機能行（機能説明書の機能の表）"; example = "F-OMS-ENG-01"; count = 2075; }
        @IdConvention { prefix = "IF-"; form = "IF-<系>-<番号>"; meaning = "インタフェース（所有の文書の IF の表）"; example = "IF-ORB-05"; count = 597; }
        @IdConvention { prefix = "REQ-"; form = "REQ-<系>-<2桁>"; meaning = "要求（要求書）"; example = "REQ-OMS-01"; count = 212; }
        @IdConvention { prefix = "PHY-"; form = "PHY-<系>-<2桁>"; meaning = "機器（物理構成表）"; example = "PHY-CT-01"; count = 102; }
        @IdConvention { prefix = "BUD-"; form = "BUD-<区分>-<2桁>"; meaning = "収支の行（収支表）"; example = "BUD-PWR-05"; count = 19; }
        @IdConvention { prefix = "PAR-"; form = "PAR-<2桁>"; meaning = "パラメータ（パラメトリック定義書）"; example = "PAR-01"; count = 26; }
        @IdConvention { prefix = "UC-"; form = "UC-<2桁>"; meaning = "ユースケース"; example = "UC-07"; count = 12; }
        @IdConvention { prefix = "VC-"; form = "VC-<要求の ID>"; meaning = "検証ケース"; example = "VC-REQ-OMS-01"; count = 212; }
        @IdConvention { prefix = "VF-・MK-"; form = "VF-<2桁>・MK-<2桁>"; meaning = "機体の特徴・ミッションキット"; example = "VF-05"; count = 31; }
        @IdConvention { prefix = "MS-・MC-・DV-・DE-"; form = "MS-・MC-・DV-・DE-<2桁>"; meaning = "質量特性・Δv の値と式"; example = "DV-04"; count = 60; }
        @IdConvention { prefix = "VP-・CN-・SH-"; form = "VP-<2桁>・CN-<2桁>・SH-<略号>"; meaning = "ビューポイント・関心事・関係者"; example = "VP-01"; count = 44; }
        @IdConvention { prefix = "EQ-・EB-・FL-・FI-"; form = "EQ-・EB-・FL-<図>-<2桁>・FI-<2桁>"; meaning = "内部ブロック図の部品・相手・流れ・流れる物"; example = "FL-EPS-03"; count = 685; }
        @IdConvention { prefix = "TR-・GAP-・IMP-"; form = "TR-<2桁>・GAP-<2桁>[-<2桁>]・IMP-<2桁>"; meaning = "トレースの関係・切れ目・影響分析"; example = "GAP-06-01"; count = 47; }
        @IdConvention { prefix = "CW-・EM-・DT-・RS-・BU-"; form = "CW-・EM-・DT-・RS-・BU-<2桁>"; meaning = "C/W の警報・検知する故障・処置・警報の区分"; example = "CW-05"; count = 155; }
        @IdConvention { prefix = "HZ-・HC-・HM-"; form = "HZ-・HC-・HM-<2桁>"; meaning = "ハザード・原因・管理策"; example = "HZ-01"; count = 134; }
        @IdConvention { prefix = "AV-・SN-・AN-"; form = "AV-・SN-・AN-<2桁>"; meaning = "飛行の実績・スナップショット・異常"; example = "AV-05"; count = 59; }
        @IdConvention { prefix = "RF-・QL-・EV-"; form = "RF-<3桁>・QL-<2桁>・EV-<2桁>"; meaning = "要求の制約・定性の要求・値による判定"; example = "EV-13"; count = 433; }
        @IdConvention { prefix = "FLC-・FT-"; form = "FLC-<2桁>・FT-<飛行>-<2桁>"; meaning = "飛行の構成・飛行試験の結果"; example = "FT-1-01"; count = 104; }
        @IdConvention { prefix = "PFR-・PFD-・PFP-・PFS-・PFC-"; form = "PFR-・PFD-・PFP-・PFS-・PFC-<2桁>"; meaning = "消耗品の率・設計の枯渇・実績の点・予測・比較"; example = "PFD-01"; count = 115; }
        @IdConvention { prefix = "OMSS-・OMST-・RCSS-・RCST-・MPSS-・MPST-・CTSS-・CTST-・PCSS-・PCST-・ODSS-・ODST-"; form = "<系>S-・<系>T-<2桁>"; meaning = "系の状態・遷移（その2）"; example = "OMST-07"; count = 156; }
        @IdConvention { prefix = "HSI-"; form = "HSI-<3桁>"; meaning = "人間系の基準の照合"; example = "HSI-001"; count = 545; }
        @IdConvention { prefix = "EXP-・PRO-"; form = "EXP-<2桁>・PRO-<2桁>"; meaning = "曝露の量・曝露のプロファイル"; example = "EXP-03"; count = 20; }
        @IdConvention { prefix = "FA-・T1-・T2-"; form = "FA-<2桁>・T<作業>-<2桁>"; meaning = "機能の分担・作業の段"; example = "FA-03"; count = 65; }
        @IdConvention { prefix = "HT-・HE-"; form = "HT-<2桁>・HE-<2桁>"; meaning = "誤りの起こる作業・ヒューマンエラー"; example = "HE-01"; count = 47; }
        @IdConvention { prefix = "AL-・LM-・ST-・DC-"; form = "AL-STD-<数>・AL-SH-<数>・LM-<2桁>・ST-<2桁>・DC-<2桁>"; meaning = "警報の区分・区分の対応・作業位置・表示と操作の盤"; example = "DC-01"; count = 58; }
        @IdConvention { prefix = "HF-・CD-・UC-H・ACT-"; form = "HF-<2桁>・CD-<2桁>・UC-H<2桁>・ACT-<2桁>"; meaning = "居住・医療の機能・乗員の1日・居住のユースケース・アクタ"; example = "HF-04"; count = 44; }
        @IdConvention { prefix = "SP-・PA-・EG-"; form = "SP-<2桁>・PA-<2桁>・EG-<2桁>"; meaning = "与圧区画・移動の経路・非常退避のモード"; example = "PA-03"; count = 29; }
        @IdConvention { prefix = "EVM-・HCV-"; form = "EVM-<2桁>・HCV-<2桁>"; meaning = "人間系の評価方法・人間系の関心事"; example = "EVM-03"; count = 22; }
    }
}
