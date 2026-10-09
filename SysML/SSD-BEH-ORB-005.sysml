// SysML v2 テキスト：系の状態遷移（GPC・燃料電池・APU・RMS・ATCS の排熱）
// SSD-BEH-ORB-005 系の状態遷移定義書（GPC・燃料電池・APU・RMS・排熱） の状態・遷移の表から生成（lib/build_docs_ai.py）。根拠の頁は SSD-BEH-ORB-005 にある。
package SSD_BEH_ORB_005 {
    doc /* SSD-BEH-ORB-005 系の状態遷移定義書（GPC・燃料電池・APU・RMS・排熱）。図98〜102 と同じ状態・遷移、図103 のフェーズとの対応。 */
    private import SSD_BLK_SYS_001::*;
    private import ScalarValues::*;
    metadata def PhaseMode {
        doc /* ミッションフェーズ（SSD-OPS-PHASE-001 の PH-n）と、そのフェーズでの状態（状態の ID をカンマでつなぐ） */
        attribute phase : String;
        attribute states : String;
    }
    item def GpcEv01 { doc /* 事象：POWERスイッチをON */ }
    item def GpcEv02 { doc /* 事象：MODEスイッチをSTBY */ }
    item def GpcEv03 { doc /* 事象：MODEスイッチをRUN */ }
    item def GpcEv04 { doc /* 事象：GNC OPSの要求（OPS 1・2・3） */ }
    item def GpcEv05 { doc /* 事象：SM OPSの要求 */ }
    item def GpcEv06 { doc /* 事象：冗長同期点を満たさない */ }
    item def GpcEv07 { doc /* 事象：MODEをHALT（または電源断） */ }
    item def GpcEv08 { doc /* 事象：MODEスイッチをSTBY */ }
    item def GpcEv09 { doc /* 事象：MODEスイッチをHALT（フリーズドライ） */ }
    item def GpcEv10 { doc /* 事象：BFS GPCをRUN、OPS 1・3の要求 */ }
    item def GpcEv11 { doc /* 事象：RHCのBFS ENGAGE押しボタン */ }
    item def GpcEv12 { doc /* 事象：BFC DISENGAGEスイッチをRIGHT */ }
    item def GpcEv13 { doc /* 事象：軌道上でBFS GPCをHALT */ }
    item def GpcEv14 { doc /* 事象：POWERスイッチをOFF */ }
    item def FcEv01 { doc /* 事象：START/STOPをSTART（ΔP灰まで保持） */ }
    item def FcEv02 { doc /* 事象：READY FOR LOAD後に母線へ接続 */ }
    item def FcEv03 { doc /* 事象：T−50秒に地上電力を断 */ }
    item def FcEv04 { doc /* 事象：READY FOR LOAD後に母線へ接続 */ }
    item def FcEv05 { doc /* 事象：パージ弁を開く（自動・手動） */ }
    item def FcEv06 { doc /* 事象：パージ弁を閉じる */ }
    item def FcEv07 { doc /* 事象：母線から切り離す（負荷を外す） */ }
    item def FcEv08 { doc /* 事象：母線へ再接続 */ }
    item def FcEv09 { doc /* 事象：START/STOPをSTOP */ }
    item def FcEv10 { doc /* 事象：冷却材ポンプ差圧喪失 */ }
    item def FcEv11 { doc /* 事象：FC SHUTDOWN手順 */ }
    item def FcEv12 { doc /* 事象：反応剤弁を閉じる */ }
    item def FcEv13 { doc /* 事象：母線から切り離しSTOP */ }
    item def ApuEv01 { doc /* 事象：制御器ON・主ポンプLOW・タンク弁開 */ }
    item def ApuEv02 { doc /* 事象：燃料タンク弁を閉じる */ }
    item def ApuEv03 { doc /* 事象：OPERATEをSTART/RUN */ }
    item def ApuEv04 { doc /* 事象：主ポンプ圧をNORM */ }
    item def ApuEv05 { doc /* 事象：主ポンプ圧をLOW */ }
    item def ApuEv06 { doc /* 事象：SPEED SELECTをHIGH */ }
    item def ApuEv07 { doc /* 事象：OPERATEをOFF・タンク弁閉 */ }
    item def ApuEv08 { doc /* 事象：約180分の受動冷却 */ }
    item def ApuEv09 { doc /* 事象：OPERATEをINJECTOR COOL */ }
    item def ApuEv10 { doc /* 事象：OPERATEをSTART/RUN */ }
    item def ApuEv11 { doc /* 事象：回転数80%未満 */ }
    item def ApuEv12 { doc /* 事象：回転数129%超 */ }
    item def ApuEv13 { doc /* 事象：APU COOLDOWN手順 */ }
    item def RmsEv01 { doc /* 事象：軌道上初期化（ブレース解除） */ }
    item def RmsEv02 { doc /* 事象：パワーアップ（MRL解放） */ }
    item def RmsEv03 { doc /* 事象：MODEをORB UNL・ORB LD等 */ }
    item def RmsEv04 { doc /* 事象：MODEをAUTO 1〜4・AUTO SEQ */ }
    item def RmsEv05 { doc /* 事象：自動シーケンス終了・モード変更 */ }
    item def RmsEv06 { doc /* 事象：MODEをSINGLE（受け台へ） */ }
    item def RmsEv07 { doc /* 事象：MODEをDIRECT・BACKUP */ }
    item def RmsEv08 { doc /* 事象：MODEをDIRECT以外 */ }
    item def RmsEv09 { doc /* 事象：BRAKES ON・自動ブレーキ・安全化 */ }
    item def RmsEv10 { doc /* 事象：BRAKES OFF・SAFING CANCEL */ }
    item def RmsEv11 { doc /* 事象：パワーダウン（MRL再ラッチ） */ }
    item def RmsEv12 { doc /* 事象：非作動化（ヒータ・MCIU断） */ }
    item def RmsEv13 { doc /* 事象：RMS投棄の手順 */ }
    item def AtcsEv01 { doc /* 事象：リフトオフ */ }
    item def AtcsEv02 { doc /* 事象：SRB分離でBFSがFESをON */ }
    item def AtcsEv03 { doc /* 事象：放熱器へ流し、ドアを開く */ }
    item def AtcsEv04 { doc /* 事象：トッピングFESを停止 */ }
    item def AtcsEv05 { doc /* 事象：FESが補助を開始 */ }
    item def AtcsEv06 { doc /* 事象：RAD OUT設定をHI、FES再起動 */ }
    item def AtcsEv07 { doc /* 事象：放熱器をバイパス */ }
    item def AtcsEv08 { doc /* 事象：V=12kで放熱器流を再開 */ }
    item def AtcsEv09 { doc /* 事象：BFSがNH3ボイラをON */ }
    item def AtcsEv10 { doc /* 事象：放熱器出口温度55°F到達 */ }
    item def AtcsEv11 { doc /* 事象：地上冷却カートの接続完了 */ }
    state def GpcModes {
        doc /* 図98 GPC 状態遷移図：汎用計算機（GPC）の状態（GPC（汎用計算機）） */
        @PhaseMode { phase = "PH-1"; states = "GP-RS,GP-BFT"; }
        @PhaseMode { phase = "PH-2"; states = "GP-RS,GP-BFT"; }
        @PhaseMode { phase = "PH-3"; states = "GP-RS,GP-SPX,GP-HALT"; }
        @PhaseMode { phase = "PH-4"; states = "GP-RS,GP-BFT"; }
        @PhaseMode { phase = "PH-5"; states = "GP-RS,GP-SPX,GP-HALT"; }
        @PhaseMode { phase = "PH-6"; states = "GP-RS,GP-BFT"; }
        @PhaseMode { phase = "PH-7"; states = "GP-RS,GP-OFF"; }
        attribute gpcGuard03 : ScalarValues::Boolean { doc /* ガード：STBYに3秒超とどまった */ }
        attribute gpcGuard04 : ScalarValues::Boolean { doc /* ガード：冗長セットに指定 */ }
        attribute gpcGuard05 : ScalarValues::Boolean { doc /* ガード：冗長セットに指定しない */ }
        attribute gpcGuard07 : ScalarValues::Boolean { doc /* ガード：できるだけ早く */ }
        attribute gpcGuard09 : ScalarValues::Boolean { doc /* ガード：STBYに3秒超とどまった */ }
        attribute gpcGuard10 : ScalarValues::Boolean { doc /* ガード：BFSソフトウェアを搭載 */ }
        attribute gpcGuard11 : ScalarValues::Boolean { doc /* ガード：OUTPUTがBACKUP、3接点すべて */ }
        attribute gpcGuard12 : ScalarValues::Boolean { doc /* ガード：PASS GPCのダンプ・再ロード完了 */ }
        attribute gpcGuard13 : ScalarValues::Boolean { doc /* ガード：軌道投入後（OPS 2） */ }
        attribute gpcGuard14 : ScalarValues::Boolean { doc /* ガード：着陸後の停止・故障GPC */ }
        entry; then GP_OFF;
        state GP_OFF { doc /* GP-OFF 電源断 */ }
        state GP_HALT { doc /* GP-HALT HALT（停止） */ }
        state GP_STBY { doc /* GP-STBY STBY（待機） */ }
        state GP_RUN {
            doc /* GP-RUN RUN（処理） */
            entry; then GP_OPS0;
            state GP_OPS0 { doc /* GP-OPS0 OPS 0（システムのみ） */ }
            state GP_RS { doc /* GP-RS 冗長セット（GNC） */ }
            state GP_SPX { doc /* GP-SPX 単独（SM・PL） */ }
            state GP_BFT { doc /* GP-BFT BFS追従（待機） */ }
            state GP_BFE { doc /* GP-BFE BFSエンゲージ */ }
        }
        state GP_FAIL { doc /* GP-FAIL 故障（同期外れ） */ }
        transition GPT_01 first GP_OFF accept GpcEv01 then GP_HALT;
        transition GPT_02 first GP_HALT accept GpcEv02 then GP_STBY;
        transition GPT_03 first GP_STBY accept GpcEv03 if gpcGuard03 then GP_RUN.GP_OPS0;
        transition GPT_04 first GP_RUN.GP_OPS0 accept GpcEv04 if gpcGuard04 then GP_RUN.GP_RS;
        transition GPT_05 first GP_RUN.GP_OPS0 accept GpcEv05 if gpcGuard05 then GP_RUN.GP_SPX;
        transition GPT_06 first GP_RUN.GP_RS accept GpcEv06 then GP_FAIL;
        transition GPT_07 first GP_FAIL accept GpcEv07 if gpcGuard07 then GP_HALT;
        transition GPT_08 first GP_RUN accept GpcEv08 then GP_STBY;
        transition GPT_09 first GP_STBY accept GpcEv09 if gpcGuard09 then GP_HALT;
        transition GPT_10 first GP_HALT accept GpcEv10 if gpcGuard10 then GP_RUN.GP_BFT;
        transition GPT_11 first GP_RUN.GP_BFT accept GpcEv11 if gpcGuard11 then GP_RUN.GP_BFE;
        transition GPT_12 first GP_RUN.GP_BFE accept GpcEv12 if gpcGuard12 then GP_RUN.GP_BFT;
        transition GPT_13 first GP_RUN.GP_BFT accept GpcEv13 if gpcGuard13 then GP_HALT;
        transition GPT_14 first GP_RUN accept GpcEv14 if gpcGuard14 then GP_OFF;
    }
    state def FuelCellStates {
        doc /* 図99 燃料電池 状態遷移図：燃料電池（FC）の状態（燃料電池発電装置） */
        @PhaseMode { phase = "PH-1"; states = "FC-GSE,FC-PURGE"; }
        @PhaseMode { phase = "PH-2"; states = "FC-FULL"; }
        @PhaseMode { phase = "PH-3"; states = "FC-FULL,FC-PURGE"; }
        @PhaseMode { phase = "PH-4"; states = "FC-FULL"; }
        @PhaseMode { phase = "PH-5"; states = "FC-FULL"; }
        @PhaseMode { phase = "PH-6"; states = "FC-FULL"; }
        @PhaseMode { phase = "PH-7"; states = "FC-FULL"; }
        attribute fcGuard01 : ScalarValues::Boolean { doc /* ガード：反応剤弁開・再使用可（40°F超） */ }
        attribute fcGuard02 : ScalarValues::Boolean { doc /* ガード：打上げ前（地上電力あり） */ }
        attribute fcGuard04 : ScalarValues::Boolean { doc /* ガード：飛行中の再始動 */ }
        attribute fcGuard05 : ScalarValues::Boolean { doc /* ガード：負荷350 A未満、離脱まで3時間超 */ }
        attribute fcGuard09 : ScalarValues::Boolean { doc /* ガード：区画温度40°F以上 */ }
        attribute fcGuard11 : ScalarValues::Boolean { doc /* ガード：9分以内 */ }
        attribute fcGuard12 : ScalarValues::Boolean { doc /* ガード：交差・内部短絡・KOH・冷却材高圧 */ }
        attribute fcGuard13 : ScalarValues::Boolean { doc /* ガード：冷却材圧力15 psi未満 */ }
        entry; then FC_STOP;
        state FC_STOP { doc /* FC-STOP 停止（STOP） */ }
        state FC_START { doc /* FC-START 始動・暖機 */ }
        state FC_STBY { doc /* FC-STBY 待機（無負荷） */ }
        state FC_OPER {
            doc /* FC-OPER 運転（母線給電） */
            entry; then FC_GSE;
            state FC_GSE { doc /* FC-GSE 地上と負荷分担 */ }
            state FC_FULL { doc /* FC-FULL 全負荷給電 */ }
            state FC_PURGE { doc /* FC-PURGE パージ中 */ }
        }
        state FC_COOLF { doc /* FC-COOLF 冷却喪失 */ }
        state FC_SAFE { doc /* FC-SAFE 安全化（反応剤弁閉） */ }
        transition FCT_01 first FC_STOP accept FcEv01 if fcGuard01 then FC_START;
        transition FCT_02 first FC_START accept FcEv02 if fcGuard02 then FC_OPER.FC_GSE;
        transition FCT_03 first FC_OPER.FC_GSE accept FcEv03 then FC_OPER.FC_FULL;
        transition FCT_04 first FC_START accept FcEv04 if fcGuard04 then FC_OPER.FC_FULL;
        transition FCT_05 first FC_OPER.FC_FULL accept FcEv05 if fcGuard05 then FC_OPER.FC_PURGE;
        transition FCT_06 first FC_OPER.FC_PURGE accept FcEv06 then FC_OPER.FC_FULL;
        transition FCT_07 first FC_OPER accept FcEv07 then FC_STBY;
        transition FCT_08 first FC_STBY accept FcEv08 then FC_OPER.FC_FULL;
        transition FCT_09 first FC_STBY accept FcEv09 if fcGuard09 then FC_STOP;
        transition FCT_10 first FC_OPER accept FcEv10 then FC_COOLF;
        transition FCT_11 first FC_COOLF accept FcEv11 if fcGuard11 then FC_STOP;
        transition FCT_12 first FC_OPER accept FcEv12 if fcGuard12 then FC_SAFE;
        transition FCT_13 first FC_SAFE accept FcEv13 if fcGuard13 then FC_STOP;
    }
    state def ApuStates {
        doc /* 図100 APU 状態遷移図：補助動力装置（APU）の状態（補助動力装置（APU/HYD）） */
        @PhaseMode { phase = "PH-1"; states = "AP-PRE,AP-NORM"; }
        @PhaseMode { phase = "PH-2"; states = "AP-NORM"; }
        @PhaseMode { phase = "PH-3"; states = "AP-SOAK,AP-OFF"; }
        @PhaseMode { phase = "PH-4"; states = "AP-OFF,AP-NORM,AP-PRE"; }
        @PhaseMode { phase = "PH-5"; states = "AP-OFF"; }
        @PhaseMode { phase = "PH-6"; states = "AP-LOW,AP-NORM"; }
        @PhaseMode { phase = "PH-7"; states = "AP-NORM,AP-SOAK"; }
        attribute apuGuard01 : ScalarValues::Boolean { doc /* ガード：WSBの準備完了 */ }
        attribute apuGuard02 : ScalarValues::Boolean { doc /* ガード：離脱前の始動準備の確認後 */ }
        attribute apuGuard03 : ScalarValues::Boolean { doc /* ガード：READY TO START（GG床190°F超） */ }
        attribute apuGuard05 : ScalarValues::Boolean { doc /* ガード：AOAの惰行・油圧系の不調 */ }
        attribute apuGuard06 : ScalarValues::Boolean { doc /* ガード：他系の故障・制御器の高速移行 */ }
        attribute apuGuard07 : ScalarValues::Boolean { doc /* ガード：OMS 1後・点検後・着陸後 */ }
        attribute apuGuard09 : ScalarValues::Boolean { doc /* ガード：噴射器400°F超または床430°F超 */ }
        attribute apuGuard10 : ScalarValues::Boolean { doc /* ガード：3.5分以上冷却、間隔1秒以内 */ }
        attribute apuGuard11 : ScalarValues::Boolean { doc /* ガード：自動停止ENABLE、始動後10.5秒経過 */ }
        attribute apuGuard12 : ScalarValues::Boolean { doc /* ガード：自動停止ENABLE */ }
        attribute apuGuard13 : ScalarValues::Boolean { doc /* ガード：不足速度による停止 */ }
        entry; then AP_OFF;
        state AP_OFF { doc /* AP-OFF 停止（冷態・保温） */ }
        state AP_PRE { doc /* AP-PRE 始動準備 */ }
        state AP_RUN {
            doc /* AP-RUN 運転 */
            entry; then AP_LOW;
            state AP_LOW { doc /* AP-LOW 運転・油圧低圧 */ }
            state AP_NORM { doc /* AP-NORM 通常速度・通常圧 */ }
            state AP_HIGH { doc /* AP-HIGH 高速（113%） */ }
        }
        state AP_SOAK { doc /* AP-SOAK 停止直後（高温） */ }
        state AP_INJC { doc /* AP-INJC 噴射器冷却 */ }
        state AP_ASD { doc /* AP-ASD 自動停止（不足速度） */ }
        state AP_OVSP { doc /* AP-OVSP 過速度停止（再始動禁止） */ }
        transition APT_01 first AP_OFF accept ApuEv01 if apuGuard01 then AP_PRE;
        transition APT_02 first AP_PRE accept ApuEv02 if apuGuard02 then AP_OFF;
        transition APT_03 first AP_PRE accept ApuEv03 if apuGuard03 then AP_RUN.AP_LOW;
        transition APT_04 first AP_RUN.AP_LOW accept ApuEv04 then AP_RUN.AP_NORM;
        transition APT_05 first AP_RUN.AP_NORM accept ApuEv05 if apuGuard05 then AP_RUN.AP_LOW;
        transition APT_06 first AP_RUN.AP_NORM accept ApuEv06 if apuGuard06 then AP_RUN.AP_HIGH;
        transition APT_07 first AP_RUN accept ApuEv07 if apuGuard07 then AP_SOAK;
        transition APT_08 first AP_SOAK accept ApuEv08 then AP_OFF;
        transition APT_09 first AP_SOAK accept ApuEv09 if apuGuard09 then AP_INJC;
        transition APT_10 first AP_INJC accept ApuEv10 if apuGuard10 then AP_RUN.AP_LOW;
        transition APT_11 first AP_RUN accept ApuEv11 if apuGuard11 then AP_ASD;
        transition APT_12 first AP_RUN accept ApuEv12 if apuGuard12 then AP_OVSP;
        transition APT_13 first AP_ASD accept ApuEv13 if apuGuard13 then AP_INJC;
    }
    state def RmsModes {
        doc /* 図101 RMS 状態遷移図：遠隔操作アーム（RMS）の状態（遠隔操作アーム（RMS）） */
        @PhaseMode { phase = "PH-1"; states = "RM-STOW"; }
        @PhaseMode { phase = "PH-2"; states = "RM-STOW"; }
        @PhaseMode { phase = "PH-3"; states = "RM-CRDL,RM-MAN,RM-AUTO"; }
        @PhaseMode { phase = "PH-4"; states = "RM-STOW"; }
        @PhaseMode { phase = "PH-5"; states = "RM-MAN"; }
        @PhaseMode { phase = "PH-6"; states = "RM-STOW"; }
        @PhaseMode { phase = "PH-7"; states = "RM-STOW"; }
        attribute rmsGuard03 : ScalarValues::Boolean { doc /* ガード：ソフトストップ域の外 */ }
        attribute rmsGuard08 : ScalarValues::Boolean { doc /* ガード：DIRECTで故障の疑い */ }
        attribute rmsGuard11 : ScalarValues::Boolean { doc /* ガード：受け台に収めた */ }
        attribute rmsGuard12 : ScalarValues::Boolean { doc /* ガード：全アーム運用の終了後 */ }
        attribute rmsGuard13 : ScalarValues::Boolean { doc /* ガード：ドア閉鎖前に収納できない */ }
        entry; then RM_STOW;
        state RM_STOW { doc /* RM-STOW 収納・非作動 */ }
        state RM_CRDL { doc /* RM-CRDL 受け台・待機 */ }
        state RM_ON {
            doc /* RM-ON 作動（電源ON） */
            entry; then RM_SJ;
            state RM_SJ { doc /* RM-SJ 単関節（SINGLE） */ }
            state RM_MAN { doc /* RM-MAN 手動補助 */ }
            state RM_AUTO { doc /* RM-AUTO 自動 */ }
            state RM_HW { doc /* RM-HW 直接・予備駆動 */ }
        }
        state RM_BRK { doc /* RM-BRK ブレーキ・安全化 */ }
        state RM_JETT { doc /* RM-JETT 投棄 */ }
        transition RMT_01 first RM_STOW accept RmsEv01 then RM_CRDL;
        transition RMT_02 first RM_CRDL accept RmsEv02 then RM_ON.RM_SJ;
        transition RMT_03 first RM_ON.RM_SJ accept RmsEv03 if rmsGuard03 then RM_ON.RM_MAN;
        transition RMT_04 first RM_ON.RM_MAN accept RmsEv04 then RM_ON.RM_AUTO;
        transition RMT_05 first RM_ON.RM_AUTO accept RmsEv05 then RM_ON.RM_MAN;
        transition RMT_06 first RM_ON.RM_MAN accept RmsEv06 then RM_ON.RM_SJ;
        transition RMT_07 first RM_ON.RM_SJ accept RmsEv07 then RM_ON.RM_HW;
        transition RMT_08 first RM_ON.RM_HW accept RmsEv08 if rmsGuard08 then RM_ON.RM_SJ;
        transition RMT_09 first RM_ON accept RmsEv09 then RM_BRK;
        transition RMT_10 first RM_BRK accept RmsEv10 then RM_ON;
        transition RMT_11 first RM_ON.RM_SJ accept RmsEv11 if rmsGuard11 then RM_CRDL;
        transition RMT_12 first RM_CRDL accept RmsEv12 if rmsGuard12 then RM_STOW;
        transition RMT_13 first RM_BRK accept RmsEv13 if rmsGuard13 then RM_JETT;
    }
    state def HeatRejectionModes {
        doc /* 図102 ATCS 排熱 状態遷移図：能動熱制御系（ATCS）の排熱の状態（能動熱制御系（ATCS）） */
        @PhaseMode { phase = "PH-1"; states = "TC-GSE"; }
        @PhaseMode { phase = "PH-2"; states = "TC-INER,TC-FES"; }
        @PhaseMode { phase = "PH-3"; states = "TC-RADO,TC-RADF"; }
        @PhaseMode { phase = "PH-4"; states = "TC-CSK,TC-FES"; }
        @PhaseMode { phase = "PH-5"; states = "TC-RADO,TC-RADF"; }
        @PhaseMode { phase = "PH-6"; states = "TC-FES,TC-RCSK"; }
        @PhaseMode { phase = "PH-7"; states = "TC-RCSK,TC-NH3,TC-GSE"; }
        attribute atcsGuard02 : ScalarValues::Boolean { doc /* ガード：140,000 ft超（MM103） */ }
        attribute atcsGuard03 : ScalarValues::Boolean { doc /* ガード：軌道投入後 */ }
        attribute atcsGuard04 : ScalarValues::Boolean { doc /* ガード：放熱器で冷却が足りる */ }
        attribute atcsGuard05 : ScalarValues::Boolean { doc /* ガード：暖かい姿勢・高い熱負荷 */ }
        attribute atcsGuard06 : ScalarValues::Boolean { doc /* ガード：離脱準備・ドア閉鎖前 */ }
        attribute atcsGuard07 : ScalarValues::Boolean { doc /* ガード：約1時間後 */ }
        attribute atcsGuard08 : ScalarValues::Boolean { doc /* ガード：コールドソーク済み */ }
        attribute atcsGuard09 : ScalarValues::Boolean { doc /* ガード：アボート（MM304の120k ft・MM602） */ }
        attribute atcsGuard10 : ScalarValues::Boolean { doc /* ガード：着陸後 */ }
        entry; then TC_GSE;
        state TC_GSE { doc /* TC-GSE 地上冷却（GSE） */ }
        state TC_INER { doc /* TC-INER 熱慣性（能動冷却なし） */ }
        state TC_FES { doc /* TC-FES FES排熱 */ }
        state TC_RAD {
            doc /* TC-RAD 放熱器排熱 */
            entry; then TC_RADO;
            state TC_RADO { doc /* TC-RADO 放熱器のみ */ }
            state TC_RADF { doc /* TC-RADF 放熱器＋FES補助 */ }
        }
        state TC_CSK { doc /* TC-CSK 放熱器コールドソーク */ }
        state TC_RCSK { doc /* TC-RCSK コールドソーク利用 */ }
        state TC_NH3 { doc /* TC-NH3 アンモニアボイラ */ }
        transition TCT_01 first TC_GSE accept AtcsEv01 then TC_INER;
        transition TCT_02 first TC_INER accept AtcsEv02 if atcsGuard02 then TC_FES;
        transition TCT_03 first TC_FES accept AtcsEv03 if atcsGuard03 then TC_RAD.TC_RADF;
        transition TCT_04 first TC_RAD.TC_RADF accept AtcsEv04 if atcsGuard04 then TC_RAD.TC_RADO;
        transition TCT_05 first TC_RAD.TC_RADO accept AtcsEv05 if atcsGuard05 then TC_RAD.TC_RADF;
        transition TCT_06 first TC_RAD accept AtcsEv06 if atcsGuard06 then TC_CSK;
        transition TCT_07 first TC_CSK accept AtcsEv07 if atcsGuard07 then TC_FES;
        transition TCT_08 first TC_FES accept AtcsEv08 if atcsGuard08 then TC_RCSK;
        transition TCT_09 first TC_FES accept AtcsEv09 if atcsGuard09 then TC_NH3;
        transition TCT_10 first TC_RCSK accept AtcsEv10 if atcsGuard10 then TC_NH3;
        transition TCT_11 first TC_NH3 accept AtcsEv11 then TC_GSE;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def GpcModesHolder :> DPS_GPC {
        doc /* GPC（汎用計算機）（SSD-FD-DPS-GPC-001）は GpcModes の状態を持つ */
        exhibit state gpcModes : GpcModes;
    }
    part def FuelCellStatesHolder :> EPS_FCP {
        doc /* 燃料電池発電装置（SSD-FD-EPS-FCP-001）は FuelCellStates の状態を持つ */
        exhibit state fuelCellStates : FuelCellStates;
    }
    part def ApuStatesHolder :> APU {
        doc /* 補助動力装置（APU/HYD）（SSD-FD-APU-001）は ApuStates の状態を持つ */
        exhibit state apuStates : ApuStates;
    }
    part def RmsModesHolder :> PLS_ARM {
        doc /* 遠隔操作アーム（RMS）（SSD-FD-PLS-ARM-001）は RmsModes の状態を持つ */
        exhibit state rmsModes : RmsModes;
    }
    part def HeatRejectionModesHolder :> ECL_ATCS {
        doc /* 能動熱制御系（ATCS）（SSD-FD-ECL-ATCS-001）は HeatRejectionModes の状態を持つ */
        exhibit state heatRejectionModes : HeatRejectionModes;
    }
}
