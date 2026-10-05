// SysML v2 テキスト：系の状態遷移その2（OMS・RCS・MPS・C&T・与圧系・ODS）
// SSD-BEH-ORB-006 系の状態遷移定義書その2（OMS・RCS・MPS・C&T・与圧系・ODS） の状態・遷移の表から生成（lib/build_docs_ax.py・rev_ax/axdata.py）。根拠の頁は SSD-BEH-ORB-006 にある。
package SSD_BEH_ORB_006 {
    doc /* SSD-BEH-ORB-006 系の状態遷移定義書その2（OMS・RCS・MPS・C&T・与圧系・ODS）。図136〜141 と同じ状態・遷移、図142 のフェーズとの対応。 */
    private import SSD_BLK_SYS_001::*;
    private import ScalarValues::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    item def OmsEv01 { doc /* 事象：アボートの投棄または OMS アシストの開始 */ }
    item def OmsEv02 { doc /* 事象：投棄の終了（DUMP TTG が 0） */ }
    item def OmsEv03 { doc /* 事象：MECO 後に OMS 1・OMS 2 の噴射準備 */ }
    item def OmsEv04 { doc /* 事象：OMS ENG を ARM/PRESS（TIG−2:00） */ }
    item def OmsEv05 { doc /* 事象：EXEC（TIG−0:15）で点火 */ }
    item def OmsEv06 { doc /* 事象：RIGHT OMS 灯（右エンジン Pc 80% 未満・下向き矢印）→ 右の OMS ENG を OFF */ }
    item def OmsEv07 { doc /* 事象：LEFT OMS 灯（左エンジン Pc 80% 未満・下向き矢印）→ 左の OMS ENG を OFF */ }
    item def OmsEv08 { doc /* 事象：LEFT OMS 灯（残る左エンジンも故障）→ 左の OMS ENG を OFF */ }
    item def OmsEv09 { doc /* 事象：RIGHT OMS 灯（残る右エンジンも故障）→ 右の OMS ENG を OFF */ }
    item def OmsEv10 { doc /* 事象：カットオフ（TGO が 0） */ }
    item def OmsEv11 { doc /* 事象：エンジンを確保し OMS・RCS の弁を軌道上（離脱後は突入）の構成へ */ }
    item def OmsEv12 { doc /* 事象：LEFT OMS 灯（左ポッドのタンク圧 232 psi 未満・288 psi 超）→ 左ポッドを確保 */ }
    item def OmsEv13 { doc /* 事象：RIGHT OMS 灯（右ポッドのタンク圧 232 psi 未満・288 psi 超）→ 右ポッドを確保 */ }
    item def OmsEv14 { doc /* 事象：推進薬タンクの漏れ → 他方のポッドからクロスフィードを組む */ }
    item def OmsEv15 { doc /* 事象：He タンク・レグの漏れの処置（最大ブローダウンへの噴射、He 隔離弁の手動操作） */ }
    item def OmsEv16 { doc /* 事象：クロスフィード構成で噴射準備 */ }
    item def RcsEv01 { doc /* 事象：MECO 後の姿勢保持、ET 分離で −Z 並進 */ }
    item def RcsEv02 { doc /* 事象：バーニアを選択（軌道上の姿勢保持） */ }
    item def RcsEv03 { doc /* 事象：主ジェットを選択（粗い姿勢制御・並進・離脱前の姿勢変更） */ }
    item def RcsEv04 { doc /* 事象：インタコネクトを組む（RCS タンク隔離弁閉、RCS・OMS クロスフィード弁開） */ }
    item def RcsEv05 { doc /* 事象：OMS He 弁・クロスフィード弁を閉じ RCS を自系の供給へ戻す */ }
    item def RcsEv06 { doc /* 事象：ジェットの fail-on（RCS JET 灯・RM の通報）→ マニホールドを閉 */ }
    item def RcsEv07 { doc /* 事象：誤通報と判断してマニホールドを再び開く */ }
    item def RcsEv08 { doc /* 事象：FWD RCS 灯（前部のタンク圧 200 psia 未満・312 psia 超、量の差 9.5% 超）→ 前部を確保 */ }
    item def RcsEv09 { doc /* 事象：LEFT RCS 灯（左ポッドのタンク圧 200 psia 未満・312 psia 超、量の差 9.5% 超）→ 左ポッドを確保 */ }
    item def RcsEv10 { doc /* 事象：RIGHT RCS 灯（右ポッドのタンク圧 200 psia 未満・312 psia 超、量の差 9.5% 超）→ 右ポッドを確保 */ }
    item def RcsEv11 { doc /* 事象：推進薬タンクの漏れ → 健全な側からクロスフィード */ }
    item def RcsEv12 { doc /* 事象：前部 He タンクの漏れ → −X 並進または前部 RCS ダンプで最大ブローダウンへ */ }
    item def RcsEv13 { doc /* 事象：前部 RCS ダンプ（EI−18 分） */ }
    item def RcsEv14 { doc /* 事象：前部マニホールドを閉（EI−3 分）、突入インタフェース */ }
    item def RcsEv15 { doc /* 事象：着陸後に RCS/OMS を安全化 */ }
    item def MpsEv01 { doc /* 事象：GPC がエンジン始動指令（T−6.6 秒） */ }
    item def MpsEv02 { doc /* 事象：T−0 に SRB 点火・リフトオフ */ }
    item def MpsEv03 { doc /* 事象：全 SSME を停止（パッドアボート） */ }
    item def MpsEv04 { doc /* 事象：MPS 灯（He タンク圧 1,150 psia 未満）・MPS HE メッセージ → He 漏れの隔離手順 */ }
    item def MpsEv05 { doc /* 事象：漏れを隔離（故障した弁を閉じたまま運転を継続） */ }
    item def MpsEv06 { doc /* 事象：He の枯渇による停止、または押しボタンによる停止 */ }
    item def MpsEv07 { doc /* 事象：制御器がレッドライン違反で自動停止（SSME FAIL） */ }
    item def MpsEv08 { doc /* 事象：推力固着・指令経路故障の手動停止（AC/PB 停止） */ }
    item def MpsEv09 { doc /* 事象：MECO（所定の速度、または低液位カットオフ） */ }
    item def MpsEv10 { doc /* 事象：MPS ダンプの開始（MECO+2 分の自動、手動 START、LH2 マニホールド 60 psi 超で前倒し） */ }
    item def MpsEv11 { doc /* 事象：ダンプ終了、エンジン電源 OFF・He 隔離、15 分後に真空不活性化 */ }
    item def MpsEv12 { doc /* 事象：MPS 灯（LH2 マニホールド 65 psia 超・LO2 249 psia 超）→ 充填排出弁を開いて圧を逃がす */ }
    item def MpsEv13 { doc /* 事象：不活性化の完了で外側充填排出弁を閉じる */ }
    item def MpsEv14 { doc /* 事象：MM 303 への移行で He 系を突入構成へ */ }
    item def MpsEv15 { doc /* 事象：MPS 灯（He 調圧器圧 810 psia 超）→ 該当する He 隔離弁を閉じる */ }
    item def CtEv01 { doc /* 事象：BFS の SPC で STDN-HI から TDRS へ */ }
    item def CtEv02 { doc /* 事象：地上が GSTDN モードへ切替 */ }
    item def CtEv03 { doc /* 事象：Ku アンテナを展開・起動 */ }
    item def CtEv04 { doc /* 事象：MODE を RDR PASSIVE（RDR COOP） */ }
    item def CtEv05 { doc /* 事象：MODE を COMM */ }
    item def CtEv06 { doc /* 事象：MCC のマスキング・待機指令、ベータ停止点付近 */ }
    item def CtEv07 { doc /* 事象：AOS で運用を再開 */ }
    item def CtEv08 { doc /* 事象：KU ANTENNA を STOW（または DIRECT STOW） */ }
    item def CtEv09 { doc /* 事象：PYRO KU ANT ARM・JETT */ }
    item def CtEv10 { doc /* 事象：複数パネルで S帯通信を喪失 */ }
    item def CtEv11 { doc /* 事象：ACCU の代替電源を選ぶ */ }
    item def CtEv12 { doc /* 事象：S-BAND PM CONTROL を PANEL→COMMAND */ }
    item def CtEv13 { doc /* 事象：ACCU 迂回の IFM */ }
    item def PcsEv01 { doc /* 事象：T−20分にキャビンベント弁を閉 */ }
    item def PcsEv02 { doc /* 事象：軌道上 PCS 構成（入口弁開・O2/N2 弁 AUTO） */ }
    item def PcsEv03 { doc /* 事象：PCS 2 へ再構成 */ }
    item def PcsEv04 { doc /* 事象：エアロック減圧弁で 10.2 psia へ減圧 */ }
    item def PcsEv05 { doc /* 事象：14.7 psia へ再与圧 */ }
    item def PcsEv06 { doc /* 事象：突入構成（14.7・O2 レギュレータ閉、オリフィス撤去） */ }
    item def PcsEv07 { doc /* 事象：CABIN ATM（客室圧 13.8 psia 未満）で PCS 1(2) 構成 */ }
    item def PcsEv08 { doc /* 事象：CABIN ATM 灯・クラクソンでリリーフ隔離弁を閉 */ }
    item def PcsEv09 { doc /* 事象：CABIN ATM 灯・クラクソン（0.08 psia/min） */ }
    item def PcsEv10 { doc /* 事象：漏れなし（膨張・熱的影響）を MCC と確認 */ }
    item def PcsEv11 { doc /* 事象：14.7 入口弁を閉じ 8 psia まで下げる */ }
    item def PcsEv12 { doc /* 事象：CABIN ATM（O2・N2 流量 4.9 lb/h 超）で漏れを隔離 */ }
    item def PcsEv13 { doc /* 事象：代替 PCS 系統へ再構成（ECLS SSR-3） */ }
    item def PcsEv14 { doc /* 事象：PCS 非作動化 */ }
    item def OdsEv01 { doc /* 事象：電源投入・APDS CIRC PROT OFF・RING OUT */ }
    item def OdsEv02 { doc /* 事象：INITIAL 到達1秒後にモータ・フィクサ停止、電源断 */ }
    item def OdsEv03 { doc /* 事象：POWER ON */ }
    item def OdsEv04 { doc /* 事象：捕獲（短接点3＋長接点1）、5秒後にダンパ */ }
    item def OdsEv05 { doc /* 事象：RING IN（ready-to-hook で CLOSE HOOKS） */ }
    item def OdsEv06 { doc /* 事象：ラッチ荷重抜き・OPEN LATCHES・RING IN FINAL、電源断 */ }
    item def OdsEv07 { doc /* 事象：跳ね返り（捕獲せず） */ }
    item def OdsEv08 { doc /* 事象：OPEN LATCHES で離れる */ }
    item def OdsEv09 { doc /* 事象：FORWARD まで伸展・再整列し再試行 */ }
    item def OdsEv10 { doc /* 事象：APDS CIRC PROT OFF・UNDOCKING */ }
    item def OdsEv11 { doc /* 事象：フック開・ばね分離・分離噴射、電源断 */ }
    item def OdsEv12 { doc /* 事象：PYRO CIRC PROT OFF・HOOKS FIRING */ }
    item def OdsEv13 { doc /* 事象：パイロボルトの点火（不成功なら EVA で96本のボルト外し） */ }
    state def OmsStates {
        doc /* 図136 OMS 状態遷移図：軌道操縦系（OMS）の状態（軌道操縦系（OMS）） */
        @PhaseMode { phase = "PH-1"; states = "OMSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "OMSS-01,OMSS-02,OMSS-04,OMSS-06,OMSS-10"; }
        @PhaseMode { phase = "PH-3"; states = "OMSS-03,OMSS-04,OMSS-06,OMSS-10"; }
        @PhaseMode { phase = "PH-4"; states = "OMSS-03,OMSS-04"; }
        @PhaseMode { phase = "PH-5"; states = "OMSS-03"; }
        @PhaseMode { phase = "PH-6"; states = "OMSS-04,OMSS-06,OMSS-10,OMSS-03"; }
        @PhaseMode { phase = "PH-7"; states = "OMSS-03"; }
        attribute omsGuard01 : ScalarValues::Boolean { doc /* ガード：OMS/RCS スイッチが GPC（OPS 1）、アシストは MM 103 移行の 10 秒後 */ }
        attribute omsGuard03 : ScalarValues::Boolean { doc /* ガード：OMS 1 は必要なときだけ（公称の MECO では行わない） */ }
        attribute omsGuard04 : ScalarValues::Boolean { doc /* ガード：目標・トリム・He 弁の構成を確認済み */ }
        attribute omsGuard05 : ScalarValues::Boolean { doc /* ガード：MNVR 表示で2基を選択 */ }
        attribute omsGuard06 : ScalarValues::Boolean { doc /* ガード：Pc と速度の両試験で故障（センサ故障でない） */ }
        attribute omsGuard07 : ScalarValues::Boolean { doc /* ガード：Pc と速度の両試験で故障（センサ故障でない） */ }
        attribute omsGuard08 : ScalarValues::Boolean { doc /* ガード：OMS→RCS インタコネクトで後部 RCS へ供給 */ }
        attribute omsGuard09 : ScalarValues::Boolean { doc /* ガード：OMS→RCS インタコネクトで後部 RCS へ供給 */ }
        attribute omsGuard10 : ScalarValues::Boolean { doc /* ガード：パージが禁止されていない */ }
        attribute omsGuard11 : ScalarValues::Boolean { doc /* ガード：カットオフの2秒後 */ }
        attribute omsGuard12 : ScalarValues::Boolean { doc /* ガード：独立した表示と計器で漏れ・調圧器故障を確認 */ }
        attribute omsGuard13 : ScalarValues::Boolean { doc /* ガード：独立した表示と計器で漏れ・調圧器故障を確認 */ }
        attribute omsGuard14 : ScalarValues::Boolean { doc /* ガード：漏れたタンクの枯渇前、受け側のタンク隔離弁を閉 */ }
        attribute omsGuard15 : ScalarValues::Boolean { doc /* ガード：推進薬タンクは健全 */ }
        attribute omsGuard16 : ScalarValues::Boolean { doc /* ガード：1基・2ポッドなど A6-51 の構成 */ }
        entry; then OMSS_01;
        state OMSS_01 { doc /* OMSS-01 上昇待機（ARM/PRESS・インタコネクト構成） */ }
        state OMSS_02 { doc /* OMSS-02 推進薬投棄（アボート・OMS アシスト） */ }
        state OMSS_03 { doc /* OMSS-03 確保・待機（噴射の間） */ }
        state OMSS_04 { doc /* OMSS-04 噴射準備（ARM/PRESS） */ }
        state OMSS_05 {
            doc /* OMSS-05 噴射中 */
            entry; then OMSS_06;
            state OMSS_06 { doc /* OMSS-06 2基噴射 */ }
            state OMSS_07 { doc /* OMSS-07 左1基噴射 */ }
            state OMSS_08 { doc /* OMSS-08 右1基噴射 */ }
            state OMSS_09 { doc /* OMSS-09 RCS +X ジェットで完了（インタコネクト） */ }
        }
        state OMSS_10 { doc /* OMSS-10 噴射後の GN2 パージ */ }
        state OMSS_11 { doc /* OMSS-11 ポッドの確保・漏れの切り分け */ }
        state OMSS_12 { doc /* OMSS-12 クロスフィード運用 */ }
        transition OMST_01 first OMSS_01 accept OmsEv01 if omsGuard01 then OMSS_02;
        transition OMST_02 first OMSS_02 accept OmsEv02 then OMSS_01;
        transition OMST_03 first OMSS_01 accept OmsEv03 if omsGuard03 then OMSS_04;
        transition OMST_04 first OMSS_03 accept OmsEv04 if omsGuard04 then OMSS_04;
        transition OMST_05 first OMSS_04 accept OmsEv05 if omsGuard05 then OMSS_05.OMSS_06;
        transition OMST_06 first OMSS_05.OMSS_06 accept OmsEv06 if omsGuard06 then OMSS_05.OMSS_07;
        transition OMST_07 first OMSS_05.OMSS_06 accept OmsEv07 if omsGuard07 then OMSS_05.OMSS_08;
        transition OMST_08 first OMSS_05.OMSS_07 accept OmsEv08 if omsGuard08 then OMSS_05.OMSS_09;
        transition OMST_09 first OMSS_05.OMSS_08 accept OmsEv09 if omsGuard09 then OMSS_05.OMSS_09;
        transition OMST_10 first OMSS_05 accept OmsEv10 if omsGuard10 then OMSS_10;
        transition OMST_11 first OMSS_10 accept OmsEv11 if omsGuard11 then OMSS_03;
        transition OMST_12 first OMSS_03 accept OmsEv12 if omsGuard12 then OMSS_11;
        transition OMST_13 first OMSS_03 accept OmsEv13 if omsGuard13 then OMSS_11;
        transition OMST_14 first OMSS_11 accept OmsEv14 if omsGuard14 then OMSS_12;
        transition OMST_15 first OMSS_11 accept OmsEv15 if omsGuard15 then OMSS_03;
        transition OMST_16 first OMSS_12 accept OmsEv16 if omsGuard16 then OMSS_04;
    }
    state def RcsStates {
        doc /* 図137 RCS 状態遷移図：姿勢制御系（RCS）の状態（姿勢制御系（RCS）） */
        @PhaseMode { phase = "PH-1"; states = "RCSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "RCSS-01,RCSS-03"; }
        @PhaseMode { phase = "PH-3"; states = "RCSS-03,RCSS-04,RCSS-05"; }
        @PhaseMode { phase = "PH-4"; states = "RCSS-03"; }
        @PhaseMode { phase = "PH-5"; states = "RCSS-04,RCSS-03"; }
        @PhaseMode { phase = "PH-6"; states = "RCSS-03,RCSS-10,RCSS-11"; }
        @PhaseMode { phase = "PH-7"; states = "RCSS-12"; }
        attribute rcsGuard02 : ScalarValues::Boolean { doc /* ガード：軌道上 */ }
        attribute rcsGuard04 : ScalarValues::Boolean { doc /* ガード：軌道上は手動、上昇アボートは自動 */ }
        attribute rcsGuard05 : ScalarValues::Boolean { doc /* ガード：離脱噴射の後 */ }
        attribute rcsGuard06 : ScalarValues::Boolean { doc /* ガード：OPS 2・8 は AUT MANF CL 有効なら自動 */ }
        attribute rcsGuard07 : ScalarValues::Boolean { doc /* ガード：fail-on が誤り（本当の fail-on なら閉のまま） */ }
        attribute rcsGuard08 : ScalarValues::Boolean { doc /* ガード：独立した表示と計器で漏れを確認 */ }
        attribute rcsGuard09 : ScalarValues::Boolean { doc /* ガード：独立した表示と計器で漏れを確認 */ }
        attribute rcsGuard10 : ScalarValues::Boolean { doc /* ガード：独立した表示と計器で漏れを確認 */ }
        attribute rcsGuard11 : ScalarValues::Boolean { doc /* ガード：漏れたタンクの枯渇前 */ }
        attribute rcsGuard12 : ScalarValues::Boolean { doc /* ガード：OMS-2 の後 */ }
        attribute rcsGuard13 : ScalarValues::Boolean { doc /* ガード：重心の制御に要する場合を除く */ }
        attribute rcsGuard15 : ScalarValues::Boolean { doc /* ガード：ヨージェットはマッハ1で停止済み */ }
        entry; then RCSS_01;
        state RCSS_01 { doc /* RCSS-01 上昇（ET 結合中） */ }
        state RCSS_02 {
            doc /* RCSS-02 姿勢・並進の制御 */
            entry; then RCSS_03;
            state RCSS_03 { doc /* RCSS-03 主ジェット制御 */ }
            state RCSS_04 { doc /* RCSS-04 バーニア制御 */ }
            state RCSS_05 { doc /* RCSS-05 OMS→RCS インタコネクト */ }
            state RCSS_06 { doc /* RCSS-06 後部 RCS のクロスフィード */ }
        }
        state RCSS_07 { doc /* RCSS-07 マニホールドの隔離（ジェット故障） */ }
        state RCSS_08 { doc /* RCSS-08 前部 RCS の確保・漏れの切り分け */ }
        state RCSS_09 { doc /* RCSS-09 後部ポッドの確保・漏れの切り分け */ }
        state RCSS_10 { doc /* RCSS-10 前部 RCS ダンプ */ }
        state RCSS_11 { doc /* RCSS-11 突入の姿勢制御（後部ジェット） */ }
        state RCSS_12 { doc /* RCSS-12 着陸後の安全化 */ }
        transition RCST_01 first RCSS_01 accept RcsEv01 then RCSS_02.RCSS_03;
        transition RCST_02 first RCSS_02.RCSS_03 accept RcsEv02 if rcsGuard02 then RCSS_02.RCSS_04;
        transition RCST_03 first RCSS_02.RCSS_04 accept RcsEv03 then RCSS_02.RCSS_03;
        transition RCST_04 first RCSS_02 accept RcsEv04 if rcsGuard04 then RCSS_02.RCSS_05;
        transition RCST_05 first RCSS_02.RCSS_05 accept RcsEv05 if rcsGuard05 then RCSS_02.RCSS_03;
        transition RCST_06 first RCSS_02.RCSS_03 accept RcsEv06 if rcsGuard06 then RCSS_07;
        transition RCST_07 first RCSS_07 accept RcsEv07 if rcsGuard07 then RCSS_02.RCSS_03;
        transition RCST_08 first RCSS_02 accept RcsEv08 if rcsGuard08 then RCSS_08;
        transition RCST_09 first RCSS_02 accept RcsEv09 if rcsGuard09 then RCSS_09;
        transition RCST_10 first RCSS_02 accept RcsEv10 if rcsGuard10 then RCSS_09;
        transition RCST_11 first RCSS_09 accept RcsEv11 if rcsGuard11 then RCSS_02.RCSS_06;
        transition RCST_12 first RCSS_08 accept RcsEv12 if rcsGuard12 then RCSS_10;
        transition RCST_13 first RCSS_02.RCSS_03 accept RcsEv13 if rcsGuard13 then RCSS_10;
        transition RCST_14 first RCSS_10 accept RcsEv14 then RCSS_11;
        transition RCST_15 first RCSS_11 accept RcsEv15 if rcsGuard15 then RCSS_12;
    }
    state def MpsStates {
        doc /* 図138 MPS 状態遷移図：主推進系（MPS）の状態（主推進系（MPS）） */
        @PhaseMode { phase = "PH-1"; states = "MPSS-01,MPSS-02"; }
        @PhaseMode { phase = "PH-2"; states = "MPSS-04,MPSS-07,MPSS-08"; }
        @PhaseMode { phase = "PH-3"; states = "MPSS-09"; }
        @PhaseMode { phase = "PH-4"; states = "MPSS-09"; }
        @PhaseMode { phase = "PH-5"; states = "MPSS-09"; }
        @PhaseMode { phase = "PH-6"; states = "MPSS-11"; }
        @PhaseMode { phase = "PH-7"; states = "MPSS-11"; }
        attribute mpsGuard01 : ScalarValues::Boolean { doc /* ガード：T−31 秒に機上の打上げシーケンスが有効 */ }
        attribute mpsGuard02 : ScalarValues::Boolean { doc /* ガード：3基とも T−3 秒までに推力 90% */ }
        attribute mpsGuard03 : ScalarValues::Boolean { doc /* ガード：1基以上が T−3 秒に 90% 未達 */ }
        attribute mpsGuard04 : ScalarValues::Boolean { doc /* ガード：隔離の試みでエンジンが停止しない */ }
        attribute mpsGuard06 : ScalarValues::Boolean { doc /* ガード：漏れを隔離できない・隔離の時間がない */ }
        attribute mpsGuard07 : ScalarValues::Boolean { doc /* ガード：リミットが有効 */ }
        attribute mpsGuard08 : ScalarValues::Boolean { doc /* ガード：MECO の約 30 秒前 */ }
        attribute mpsGuard10 : ScalarValues::Boolean { doc /* ガード：RTLS は MM 602、TAL は MM 304 で開始 */ }
        attribute mpsGuard12 : ScalarValues::Boolean { doc /* ガード：真の高圧（センサ故障でない） */ }
        attribute mpsGuard14 : ScalarValues::Boolean { doc /* ガード：離脱準備で A 調圧器の C/W を再び有効 */ }
        attribute mpsGuard15 : ScalarValues::Boolean { doc /* ガード：ベントドア閉なら直ちに、開なら時間のあるとき */ }
        entry; then MPSS_01;
        state MPSS_01 { doc /* MPSS-01 打上げ前（充填・地上制御） */ }
        state MPSS_02 { doc /* MPSS-02 エンジン始動 */ }
        state MPSS_03 {
            doc /* MPSS-03 動力飛行 */
            entry; then MPSS_04;
            state MPSS_04 { doc /* MPSS-04 公称運転（3基） */ }
            state MPSS_05 { doc /* MPSS-05 He 漏れの隔離 */ }
            state MPSS_06 { doc /* MPSS-06 エンジン停止後の飛行（残り2基以下） */ }
        }
        state MPSS_07 { doc /* MPSS-07 MECO・ET 分離 */ }
        state MPSS_08 { doc /* MPSS-08 推進薬ダンプ */ }
        state MPSS_09 { doc /* MPSS-09 安全化（無電力・真空不活性化） */ }
        state MPSS_10 { doc /* MPSS-10 マニホールド過圧の処置 */ }
        state MPSS_11 { doc /* MPSS-11 突入の He パージ・マニホールド加圧 */ }
        state MPSS_12 { doc /* MPSS-12 He 隔離（調圧器の高圧故障） */ }
        transition MPST_01 first MPSS_01 accept MpsEv01 if mpsGuard01 then MPSS_02;
        transition MPST_02 first MPSS_02 accept MpsEv02 if mpsGuard02 then MPSS_03.MPSS_04;
        transition MPST_03 first MPSS_02 accept MpsEv03 if mpsGuard03 then MPSS_01;
        transition MPST_04 first MPSS_03.MPSS_04 accept MpsEv04 if mpsGuard04 then MPSS_03.MPSS_05;
        transition MPST_05 first MPSS_03.MPSS_05 accept MpsEv05 then MPSS_03.MPSS_04;
        transition MPST_06 first MPSS_03.MPSS_05 accept MpsEv06 if mpsGuard06 then MPSS_03.MPSS_06;
        transition MPST_07 first MPSS_03.MPSS_04 accept MpsEv07 if mpsGuard07 then MPSS_03.MPSS_06;
        transition MPST_08 first MPSS_03.MPSS_04 accept MpsEv08 if mpsGuard08 then MPSS_03.MPSS_06;
        transition MPST_09 first MPSS_03 accept MpsEv09 then MPSS_07;
        transition MPST_10 first MPSS_07 accept MpsEv10 if mpsGuard10 then MPSS_08;
        transition MPST_11 first MPSS_08 accept MpsEv11 then MPSS_09;
        transition MPST_12 first MPSS_09 accept MpsEv12 if mpsGuard12 then MPSS_10;
        transition MPST_13 first MPSS_10 accept MpsEv13 then MPSS_09;
        transition MPST_14 first MPSS_09 accept MpsEv14 if mpsGuard14 then MPSS_11;
        transition MPST_15 first MPSS_11 accept MpsEv15 if mpsGuard15 then MPSS_12;
    }
    state def CommConfiguration {
        doc /* 図139 C&T 通信構成 状態遷移図：通信・追跡系（C&T）の通信構成の状態（通信・追跡系（C&T）） */
        @PhaseMode { phase = "PH-1"; states = "CTSS-02"; }
        @PhaseMode { phase = "PH-2"; states = "CTSS-02,CTSS-03"; }
        @PhaseMode { phase = "PH-3"; states = "CTSS-03,CTSS-05,CTSS-06"; }
        @PhaseMode { phase = "PH-4"; states = "CTSS-03"; }
        @PhaseMode { phase = "PH-5"; states = "CTSS-05,CTSS-07"; }
        @PhaseMode { phase = "PH-6"; states = "CTSS-03,CTSS-02"; }
        @PhaseMode { phase = "PH-7"; states = "CTSS-02"; }
        attribute ctGuard01 : ScalarValues::Boolean { doc /* ガード：上昇中（7:30 ごろ） */ }
        attribute ctGuard02 : ScalarValues::Boolean { doc /* ガード：地上局の上空 */ }
        attribute ctGuard03 : ScalarValues::Boolean { doc /* ガード：ペイロードベイドア開・軌道運用 GO */ }
        attribute ctGuard04 : ScalarValues::Boolean { doc /* ガード：ランデブ、−Z 軸を目標へ向けた */ }
        attribute ctGuard06 : ScalarValues::Boolean { doc /* ガード：EVA の LOS 中など */ }
        attribute ctGuard07 : ScalarValues::Boolean { doc /* ガード：EVA が遮蔽で守られる区域 */ }
        attribute ctGuard08 : ScalarValues::Boolean { doc /* ガード：ペイロードベイドア閉の前 */ }
        attribute ctGuard09 : ScalarValues::Boolean { doc /* ガード：通常格納も DIRECT STOW もできない */ }
        attribute ctGuard10 : ScalarValues::Boolean { doc /* ガード：ICOM は正常 */ }
        attribute ctGuard11 : ScalarValues::Boolean { doc /* ガード：通信が戻った */ }
        attribute ctGuard12 : ScalarValues::Boolean { doc /* ガード：ACCU 代替電源で戻らない */ }
        attribute ctGuard13 : ScalarValues::Boolean { doc /* ガード：アップリンクあり、ACCU が完全に故障 */ }
        entry; then CTSS_01.CTSS_02;
        state CTSS_01 {
            doc /* CTSS-01 S帯 PM 運用（Ku 格納） */
            entry; then CTSS_02;
            state CTSS_02 { doc /* CTSS-02 STDN HI（地上局） */ }
            state CTSS_03 { doc /* CTSS-03 TDRS */ }
        }
        state CTSS_04 {
            doc /* CTSS-04 Ku帯 展開・運用 */
            entry; then CTSS_05;
            state CTSS_05 { doc /* CTSS-05 Ku COMM */ }
            state CTSS_06 { doc /* CTSS-06 Ku RDR（ランデブレーダ） */ }
            state CTSS_07 { doc /* CTSS-07 Ku 待機・マスク */ }
        }
        state CTSS_08 { doc /* CTSS-08 Ku アンテナ投棄 */ }
        state CTSS_09 { doc /* CTSS-09 通信喪失（S帯） */ }
        state CTSS_10 { doc /* CTSS-10 S帯 PM 代替構成（パネル A1L） */ }
        state CTSS_11 { doc /* CTSS-11 ACCU 迂回（IFM） */ }
        transition CTST_01 first CTSS_01.CTSS_02 accept CtEv01 if ctGuard01 then CTSS_01.CTSS_03;
        transition CTST_02 first CTSS_01.CTSS_03 accept CtEv02 if ctGuard02 then CTSS_01.CTSS_02;
        transition CTST_03 first CTSS_01.CTSS_03 accept CtEv03 if ctGuard03 then CTSS_04.CTSS_05;
        transition CTST_04 first CTSS_04.CTSS_05 accept CtEv04 if ctGuard04 then CTSS_04.CTSS_06;
        transition CTST_05 first CTSS_04.CTSS_06 accept CtEv05 then CTSS_04.CTSS_05;
        transition CTST_06 first CTSS_04.CTSS_05 accept CtEv06 if ctGuard06 then CTSS_04.CTSS_07;
        transition CTST_07 first CTSS_04.CTSS_07 accept CtEv07 if ctGuard07 then CTSS_04.CTSS_05;
        transition CTST_08 first CTSS_04 accept CtEv08 if ctGuard08 then CTSS_01.CTSS_03;
        transition CTST_09 first CTSS_04 accept CtEv09 if ctGuard09 then CTSS_08;
        transition CTST_10 first CTSS_01 accept CtEv10 if ctGuard10 then CTSS_09;
        transition CTST_11 first CTSS_09 accept CtEv11 if ctGuard11 then CTSS_01;
        transition CTST_12 first CTSS_09 accept CtEv12 if ctGuard12 then CTSS_10;
        transition CTST_13 first CTSS_09 accept CtEv13 if ctGuard13 then CTSS_11;
    }
    state def PressureControlStates {
        doc /* 図140 与圧系 状態遷移図：与圧系（PCS）の状態（与圧系（PCS）） */
        @PhaseMode { phase = "PH-1"; states = "PCSS-01,PCSS-02"; }
        @PhaseMode { phase = "PH-2"; states = "PCSS-02"; }
        @PhaseMode { phase = "PH-3"; states = "PCSS-04,PCSS-05"; }
        @PhaseMode { phase = "PH-4"; states = "PCSS-04,PCSS-05,PCSS-02"; }
        @PhaseMode { phase = "PH-5"; states = "PCSS-06"; }
        @PhaseMode { phase = "PH-6"; states = "PCSS-02"; }
        @PhaseMode { phase = "PH-7"; states = "PCSS-02,PCSS-11"; }
        attribute pcsGuard01 : ScalarValues::Boolean { doc /* ガード：気密点検（16.7 psi）の後 */ }
        attribute pcsGuard02 : ScalarValues::Boolean { doc /* ガード：飛行1日目、10.2 減圧が早ければ遅らせる */ }
        attribute pcsGuard03 : ScalarValues::Boolean { doc /* ガード：飛行の中間点・アンドッキング後 */ }
        attribute pcsGuard04 : ScalarValues::Boolean { doc /* ガード：EVA の予定 */ }
        attribute pcsGuard05 : ScalarValues::Boolean { doc /* ガード：最後の EVA の後、軌道離脱の前 */ }
        attribute pcsGuard06 : ScalarValues::Boolean { doc /* ガード：離脱準備 */ }
        attribute pcsGuard07 : ScalarValues::Boolean { doc /* ガード：軌道構成の前、代謝による低圧 */ }
        attribute pcsGuard08 : ScalarValues::Boolean { doc /* ガード：客室圧低・dP/dT */ }
        attribute pcsGuard09 : ScalarValues::Boolean { doc /* ガード：上昇・突入中 */ }
        attribute pcsGuard10 : ScalarValues::Boolean { doc /* ガード：軌道上 */ }
        attribute pcsGuard11 : ScalarValues::Boolean { doc /* ガード：O2/N2 が次の PLS＋8 psia 24時間に不足 */ }
        attribute pcsGuard13 : ScalarValues::Boolean { doc /* ガード：使用中の系統（PCS 1）で異常 */ }
        attribute pcsGuard14 : ScalarValues::Boolean { doc /* ガード：着陸後 */ }
        entry; then PCSS_01;
        state PCSS_01 { doc /* PCSS-01 打上げ前（気密点検・ベント） */ }
        state PCSS_02 { doc /* PCSS-02 上昇・突入構成（8 psia 非常用のみ） */ }
        state PCSS_03 {
            doc /* PCSS-03 軌道 14.7 psia 運用 */
            entry; then PCSS_04;
            state PCSS_04 { doc /* PCSS-04 PCS 1 運用 */ }
            state PCSS_05 { doc /* PCSS-05 PCS 2 運用 */ }
        }
        state PCSS_06 { doc /* PCSS-06 10.2 psia 運用（手動管理） */ }
        state PCSS_07 {
            doc /* PCSS-07 客室漏れ対応 */
            entry; then PCSS_08;
            state PCSS_08 { doc /* PCSS-08 漏れの確認・切り分け */ }
            state PCSS_09 { doc /* PCSS-09 8 psia 非常構成 */ }
        }
        state PCSS_10 { doc /* PCSS-10 PCS 漏れ・制御故障の隔離 */ }
        state PCSS_11 { doc /* PCSS-11 非作動（着陸後） */ }
        transition PCST_01 first PCSS_01 accept PcsEv01 if pcsGuard01 then PCSS_02;
        transition PCST_02 first PCSS_02 accept PcsEv02 if pcsGuard02 then PCSS_03.PCSS_04;
        transition PCST_03 first PCSS_03.PCSS_04 accept PcsEv03 if pcsGuard03 then PCSS_03.PCSS_05;
        transition PCST_04 first PCSS_03 accept PcsEv04 if pcsGuard04 then PCSS_06;
        transition PCST_05 first PCSS_06 accept PcsEv05 if pcsGuard05 then PCSS_03;
        transition PCST_06 first PCSS_03 accept PcsEv06 if pcsGuard06 then PCSS_02;
        transition PCST_07 first PCSS_02 accept PcsEv07 if pcsGuard07 then PCSS_03.PCSS_04;
        transition PCST_08 first PCSS_03 accept PcsEv08 if pcsGuard08 then PCSS_07.PCSS_08;
        transition PCST_09 first PCSS_02 accept PcsEv09 if pcsGuard09 then PCSS_07.PCSS_08;
        transition PCST_10 first PCSS_07.PCSS_08 accept PcsEv10 if pcsGuard10 then PCSS_03;
        transition PCST_11 first PCSS_07.PCSS_08 accept PcsEv11 if pcsGuard11 then PCSS_07.PCSS_09;
        transition PCST_12 first PCSS_03 accept PcsEv12 then PCSS_10;
        transition PCST_13 first PCSS_10 accept PcsEv13 if pcsGuard13 then PCSS_03.PCSS_05;
        transition PCST_14 first PCSS_02 accept PcsEv14 if pcsGuard14 then PCSS_11;
    }
    state def DockingSystemStates {
        doc /* 図141 ODS 状態遷移図：オービタドッキング系（ODS／APDS）の状態（オービタドッキング系（ODS）） */
        @PhaseMode { phase = "PH-1"; states = "ODSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "ODSS-01"; }
        @PhaseMode { phase = "PH-3"; states = "ODSS-02,ODSS-03,ODSS-05,ODSS-06,ODSS-07,ODSS-08,ODSS-09,ODSS-12"; }
        @PhaseMode { phase = "PH-4"; states = "ODSS-12"; }
        @PhaseMode { phase = "PH-5"; states = "ODSS-08"; }
        @PhaseMode { phase = "PH-6"; states = "ODSS-12"; }
        @PhaseMode { phase = "PH-7"; states = "ODSS-12"; }
        attribute odsGuard01 : ScalarValues::Boolean { doc /* ガード：ドッキングの前日 */ }
        attribute odsGuard03 : ScalarValues::Boolean { doc /* ガード：V-bar（R-bar）の最終接近 */ }
        attribute odsGuard04 : ScalarValues::Boolean { doc /* ガード：接触から2秒以内に PCT */ }
        attribute odsGuard05 : ScalarValues::Boolean { doc /* ガード：MCC GO（整列・相対運動なし） */ }
        attribute odsGuard06 : ScalarValues::Boolean { doc /* ガード：フックが閉じた */ }
        attribute odsGuard08 : ScalarValues::Boolean { doc /* ガード：運動が不安定・過大 */ }
        attribute odsGuard09 : ScalarValues::Boolean { doc /* ガード：機構が機能し原因が明らか */ }
        attribute odsGuard10 : ScalarValues::Boolean { doc /* ガード：ハッチ閉・ベスティビュール減圧・漏れ点検 */ }
        attribute odsGuard12 : ScalarValues::Boolean { doc /* ガード：フックが閉で故障 */ }
        entry; then ODSS_01;
        state ODSS_01 { doc /* ODSS-01 打上げ構成（リング FINAL・フック開・ラッチ閉） */ }
        state ODSS_02 { doc /* ODSS-02 初期化・リング伸展 */ }
        state ODSS_03 { doc /* ODSS-03 ドッキング準備完了（リング INITIAL・電源断） */ }
        state ODSS_04 {
            doc /* ODSS-04 ドッキング操作（電源 ON） */
            entry; then ODSS_05;
            state ODSS_05 { doc /* ODSS-05 接触待ち */ }
            state ODSS_06 { doc /* ODSS-06 捕獲・減衰 */ }
            state ODSS_07 { doc /* ODSS-07 引込み・フック閉 */ }
        }
        state ODSS_08 { doc /* ODSS-08 結合（ハードドッキング、電源断） */ }
        state ODSS_09 { doc /* ODSS-09 アンドッキング */ }
        state ODSS_10 { doc /* ODSS-10 捕獲失敗・機構点検 */ }
        state ODSS_11 { doc /* ODSS-11 非常分離（パイロ） */ }
        state ODSS_12 { doc /* ODSS-12 分離完了（電源断） */ }
        transition ODST_01 first ODSS_01 accept OdsEv01 if odsGuard01 then ODSS_02;
        transition ODST_02 first ODSS_02 accept OdsEv02 then ODSS_03;
        transition ODST_03 first ODSS_03 accept OdsEv03 if odsGuard03 then ODSS_04.ODSS_05;
        transition ODST_04 first ODSS_04.ODSS_05 accept OdsEv04 if odsGuard04 then ODSS_04.ODSS_06;
        transition ODST_05 first ODSS_04.ODSS_06 accept OdsEv05 if odsGuard05 then ODSS_04.ODSS_07;
        transition ODST_06 first ODSS_04.ODSS_07 accept OdsEv06 if odsGuard06 then ODSS_08;
        transition ODST_07 first ODSS_04.ODSS_05 accept OdsEv07 then ODSS_10;
        transition ODST_08 first ODSS_04.ODSS_06 accept OdsEv08 if odsGuard08 then ODSS_10;
        transition ODST_09 first ODSS_10 accept OdsEv09 if odsGuard09 then ODSS_04.ODSS_05;
        transition ODST_10 first ODSS_08 accept OdsEv10 if odsGuard10 then ODSS_09;
        transition ODST_11 first ODSS_09 accept OdsEv11 then ODSS_12;
        transition ODST_12 first ODSS_09 accept OdsEv12 if odsGuard12 then ODSS_11;
        transition ODST_13 first ODSS_11 accept OdsEv13 then ODSS_12;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def OmsStatesHolder :> OMS {
        doc /* 軌道操縦系（OMS）（SSD-FD-OMS-001）は OmsStates の状態を持つ */
        exhibit state omsStates : OmsStates;
    }
    part def RcsStatesHolder :> RCS {
        doc /* 姿勢制御系（RCS）（SSD-FD-RCS-001）は RcsStates の状態を持つ */
        exhibit state rcsStates : RcsStates;
    }
    part def MpsStatesHolder :> MPS {
        doc /* 主推進系（MPS）（SSD-FD-MPS-001）は MpsStates の状態を持つ */
        exhibit state mpsStates : MpsStates;
    }
    part def CommConfigurationHolder :> CT {
        doc /* 通信・追跡系（C&T）（SSD-FD-CT-001）は CommConfiguration の状態を持つ */
        exhibit state commConfiguration : CommConfiguration;
    }
    part def PressureControlStatesHolder :> ECL_PCS {
        doc /* 与圧系（PCS）（SSD-FD-ECL-PCS-001）は PressureControlStates の状態を持つ */
        exhibit state pressureControlStates : PressureControlStates;
    }
    part def DockingSystemStatesHolder :> PLS_ODS {
        doc /* オービタドッキング系（ODS）（SSD-FD-PLS-ODS-001）は DockingSystemStates の状態を持つ */
        exhibit state dockingSystemStates : DockingSystemStates;
    }
}
