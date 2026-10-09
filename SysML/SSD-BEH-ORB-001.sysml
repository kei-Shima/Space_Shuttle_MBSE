// SysML v2 テキスト：状態遷移（ミッションフェーズ・アボート、飛行継続判断）
// SSD-BEH-ORB-001 状態遷移定義書（ミッションフェーズ・飛行継続判断） の状態・遷移の表から生成（lib/build_docs_y.py）。根拠の頁は SSD-BEH-ORB-001 にある。
package SSD_BEH_ORB_001 {
    doc /* SSD-BEH-ORB-001 状態遷移定義書（ミッションフェーズ・飛行継続判断）。図76・図77 と同じ状態・遷移。 */
    item def SrbIgnition { doc /* 事象：SRB 点火（T-0） */ }
    item def SrbSeparation { doc /* 事象：SRB 分離 */ }
    item def MecoEtSeparation { doc /* 事象：MECO・ET 分離 */ }
    item def Oms2Cutoff { doc /* 事象：OMS-2 燃焼終了 */ }
    item def AirlockDepressStart { doc /* 事象：エアロック減圧開始 */ }
    item def AirlockRepressVerified { doc /* 事象：再与圧・気密確認 */ }
    item def DeorbitPrepStart { doc /* 事象：離脱噴射点火の3.5時間前 */ }
    item def DeorbitIgnition { doc /* 事象：離脱噴射点火（TIG） */ }
    item def EntryInterface { doc /* 事象：大気圏突入（EI、400,000 ft） */ }
    item def ApproachAndLanding { doc /* 事象：進入・着陸の開始（約10,000 ft） */ }
    item def WheelStop { doc /* 事象：滑走停止 */ }
    item def CrewEgress { doc /* 事象：乗員退出 */ }
    item def LaunchAbort { doc /* 事象：SSME 始動後の打上げ中止 */ }
    item def EngineOut { doc /* 事象：エンジン停止 */ }
    item def PerformanceShortfall { doc /* 事象：性能不足・一部の系の故障 */ }
    item def MultipleEngineOut { doc /* 事象：intact アボートができない推力不足 */ }
    item def OrbitAchieved { doc /* 事象：約 105 n.mi. の円軌道に投入 */ }
    item def ContingencyLanding { doc /* 事象：ECAL への着陸・洋上のベイルアウト */ }
    item def PadSafing { doc /* 事象：射点での停止・脱出 */ }
    item def MoveToOpf { doc /* 事象：オービタ整備施設（OPF）への移動 */ }
    item def FirstFailure { doc /* 事象：再突入に必須の系の1故障目 */ }
    item def SecondFailure { doc /* 事象：再突入に必須の系の2故障目 */ }
    item def ZeroFaultTolerance { doc /* 事象：0故障許容になる故障 */ }
    item def EomDeorbitPrep { doc /* 事象：EOM の離脱準備の開始 */ }
    item def MdfDeorbitPrep { doc /* 事象：MDF の離脱準備の開始 */ }
    item def NextPlsDeorbitPrep { doc /* 事象：次の PLS の離脱準備の開始 */ }
    state def MissionMode {
        doc /* 図76 ミッションフェーズ・アボート 状態遷移図（SSD-OPS-PHASE-001 の飛行フェーズ・アボートモード） */
        attribute beforeSrbIgnition : ScalarValues::Boolean { doc /* ガード：SRB 点火前 */ }
        attribute rtlsWindow : ScalarValues::Boolean { doc /* ガード：離昇2分30秒以降〜NEGATIVE RETURN */ }
        attribute talWindow : ScalarValues::Boolean { doc /* ガード：2 ENGINE TAL〜PRESS TO ATO */ }
        attribute pressToAto : ScalarValues::Boolean { doc /* ガード：PRESS TO ATO 以後 */ }
        attribute afterMeco : ScalarValues::Boolean { doc /* ガード：MECO 後 */ }
        entry; then PH_1;
        state PH_1 { doc /* PH-1 打上げ前 */ }
        state PH_2 {
            doc /* PH-2 上昇 */
            entry; then PH_2a;
            state PH_2a { doc /* PH-2a 上昇・第1段 */ }
            state PH_2b { doc /* PH-2b 上昇・第2段 */ }
            state PH_2c { doc /* PH-2c 上昇・軌道投入 */ }
            transition TR_02 first PH_2a accept SrbSeparation then PH_2b;
            transition TR_03 first PH_2b accept MecoEtSeparation then PH_2c;
        }
        state PH_3 {
            doc /* PH-3 軌道 */
            entry; then ST_ORB;
            state ST_ORB { doc /* ST-ORB 軌道運用 */ }
            state PH_5 { doc /* PH-5 EVA */ }
            state PH_4 { doc /* PH-4 離脱準備 */ }
            transition TR_05 first ST_ORB accept AirlockDepressStart then PH_5;
            transition TR_06 first PH_5 accept AirlockRepressVerified then ST_ORB;
            transition TR_07 first ST_ORB accept DeorbitPrepStart then PH_4;
        }
        state PH_6 {
            doc /* PH-6 再突入 */
            entry; then PH_6a;
            state PH_6a { doc /* PH-6a 再突入・離脱噴射〜突入 */ }
            state PH_6b { doc /* PH-6b 再突入・突入〜滑空 */ }
            state PH_6c { doc /* PH-6c 再突入・進入〜着陸 */ }
            transition TR_09 first PH_6a accept EntryInterface then PH_6b;
            transition TR_10 first PH_6b accept ApproachAndLanding then PH_6c;
        }
        state PH_7 { doc /* PH-7 着陸後 */ }
        state PH_8 { doc /* PH-8 ターンアラウンド */ }
        state AB_PAD { doc /* AB-PAD 射点アボート・脱出 */ }
        state AB_RTLS { doc /* AB-RTLS RTLS（射点帰還） */ }
        state AB_TAL { doc /* AB-TAL TAL（大洋横断着陸） */ }
        state AB_ATO { doc /* AB-ATO ATO（軌道へのアボート） */ }
        state AB_AOA { doc /* AB-AOA AOA（1周帰還） */ }
        state AB_CONT { doc /* AB-CONT コンティンジェンシー */ }
        transition TR_01 first PH_1 accept SrbIgnition then PH_2.PH_2a;
        transition TR_04 first PH_2.PH_2c accept Oms2Cutoff then PH_3.ST_ORB;
        transition TR_08 first PH_3.PH_4 accept DeorbitIgnition then PH_6.PH_6a;
        transition TR_11 first PH_6.PH_6c accept WheelStop then PH_7;
        transition TR_12 first PH_7 accept CrewEgress then PH_8;
        transition TR_13 first PH_1 accept LaunchAbort if beforeSrbIgnition then AB_PAD;
        transition TR_14 first PH_2.PH_2b accept EngineOut if rtlsWindow then AB_RTLS;
        transition TR_15 first PH_2.PH_2b accept EngineOut if talWindow then AB_TAL;
        transition TR_16 first PH_2.PH_2b accept PerformanceShortfall if pressToAto then AB_ATO;
        transition TR_17 first PH_2.PH_2c accept PerformanceShortfall if afterMeco then AB_AOA;
        transition TR_18 first PH_2 accept MultipleEngineOut then AB_CONT;
        transition TR_19 first AB_RTLS accept WheelStop then PH_7;
        transition TR_20 first AB_TAL accept WheelStop then PH_7;
        transition TR_21 first AB_ATO accept OrbitAchieved then PH_3;
        transition TR_22 first AB_AOA accept DeorbitIgnition then PH_6.PH_6a;
        transition TR_23 first AB_CONT accept ContingencyLanding then done;
        transition TR_24 first AB_PAD accept PadSafing then done;
        transition TR_25 first PH_8 accept MoveToOpf then done;
    }
    state def FlightContinuation {
        doc /* 図77 飛行継続判断（Go/No-Go）状態遷移図（軌道の PH-3 の中の判断。GN_DOP は MissionMode の PH_4 に当たる） */
        attribute singleFaultTolerant : ScalarValues::Boolean { doc /* ガード：1故障許容が残り、一般的な故障ではない */ }
        attribute genericFailure : ScalarValues::Boolean { doc /* ガード：審査で一般的な故障・地上処理の問題と判断 */ }
        attribute lostAllFaultTolerance : ScalarValues::Boolean { doc /* ガード：故障許容をすべて失う、または一般的な故障 */ }
        attribute past72Hours : ScalarValues::Boolean { doc /* ガード：飛行72時間以降 */ }
        attribute afterFlightDay5 : ScalarValues::Boolean { doc /* ガード：第5飛行日（約96時間）以降 */ }
        attribute beforeEndOfFlightDay4 : ScalarValues::Boolean { doc /* ガード：約72時間、第4飛行日の終わりより前 */ }
        attribute minDeorbitPrep : ScalarValues::Boolean { doc /* ガード：少なくとも3.5時間の離脱準備 */ }
        entry; then GN_NEOM;
        state GN_NEOM { doc /* GN-NEOM 通常（NEOM まで飛行） */ }
        state GN_MDF { doc /* GN-MDF 最短飛行（MDF） */ }
        state GN_PLS { doc /* GN-PLS 次の PLS で帰還 */ }
        state GN_DOP { doc /* GN-DOP 離脱準備（PH-4 へ） */ }
        transition GT_01 first GN_NEOM accept FirstFailure if singleFaultTolerant then GN_NEOM;
        transition GT_02 first GN_NEOM accept FirstFailure if genericFailure then GN_PLS;
        transition GT_03 first GN_NEOM accept SecondFailure if singleFaultTolerant then GN_MDF;
        transition GT_04 first GN_NEOM accept SecondFailure if lostAllFaultTolerance then GN_PLS;
        transition GT_05 first GN_MDF accept ZeroFaultTolerance then GN_PLS;
        transition GT_06 first GN_NEOM accept SecondFailure if past72Hours then GN_PLS;
        transition GT_07 first GN_NEOM accept EomDeorbitPrep if afterFlightDay5 then GN_DOP;
        transition GT_08 first GN_MDF accept MdfDeorbitPrep if beforeEndOfFlightDay4 then GN_DOP;
        transition GT_09 first GN_PLS accept NextPlsDeorbitPrep if minDeorbitPrep then GN_DOP;
    }
    part def Orbiter {
        doc /* オービタは2つの状態機械を同時に持つ（フェーズと飛行継続の判断）。 */
        exhibit state missionMode : MissionMode;
        exhibit state flightContinuation : FlightContinuation;
    }
}
