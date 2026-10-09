// SysML v2 テキスト：ECLSS の状態遷移と活動（ARS・FDS・給水廃水・WCS、LiOH の交換・ダンプ・水冷却ループの喪失）
// SSD-BEH-ORB-007 ECLSS の状態遷移と活動定義書（ARS・FDS・給水廃水・WCS、LiOH の交換・ダンプ・水冷却ループの喪失） の状態・遷移・節点・流れの表から生成（lib/build_docs_bl.py・rev_bl/bldata.py）。根拠の頁は SSD-BEH-ORB-007 にある。
package SSD_BEH_ORB_007 {
    doc /* SSD-BEH-ORB-007 ECLSS の状態遷移と活動定義書（ARS・FDS・給水廃水・WCS、LiOH の交換・ダンプ・水冷却ループの喪失）。図168〜171 の状態・遷移、図172 のフェーズとの対応、図173〜175 の活動。 */
    private import SSD_BLK_SYS_001::*;
    private import ScalarValues::*;
    private import SSD_BEH_ORB_005::PhaseMode;
    item def ArsEv01 { doc /* 事象：投入後の構成（ループ1を GPC、ループ2のバイパスを AUTO） */ }
    item def ArsEv02 { doc /* 事象：就寝前・起床後の LiOH 交換でキャビンファンを止める */ }
    item def ArsEv03 { doc /* 事象：新しいキャニスタを装着してキャビンファンを再び入れる */ }
    item def ArsEv04 { doc /* 事象：RCRS を起動（OMS-2 後なるべく早く） */ }
    item def ArsEv05 { doc /* 事象：RCRS を止めて LiOH キャニスタを1個装着（両制御器の故障・PPCO2 7.6 mmHg 未満を保てない・火災後の手動停止） */ }
    item def ArsEv06 { doc /* 事象：AV BAY/CABIN AIR 灯（キャビンファン差圧 4.16〜4.2 未満・6.8 超）→ 代替のキャビンファンを入れる */ }
    item def ArsEv07 { doc /* 事象：代替ファンで差圧が正常（元のファンの故障）または計器の故障と判定 */ }
    item def ArsEv08 { doc /* 事象：代替ファンでも気流がない → CABIN EQUIP PWRDN */ }
    item def ArsEv09 { doc /* 事象：H2O LOOP 灯（ループ2 ポンプ出口圧 45 psia 未満・81 psia 超）→ 代替ループへ再構成（ECLS SSR-4） */ }
    item def ArsEv10 { doc /* 事象：H2O LOOP 灯（上昇中のループ2の故障）→ MECO 後にループ1へ切替 */ }
    item def ArsEv11 { doc /* 事象：H2O LOOP 灯（ループ1 ポンプ出口圧 19.5 psia 未満・79.5 psia 超）→ 電力削減・緊急の軌道離脱 */ }
    item def ArsEv12 { doc /* 事象：PPCO2 を 15 mmHg 未満に保てない（LiOH 枯渇など）→ QDM 着用、キャビン空気の船外パージ */ }
    item def ArsEv13 { doc /* 事象：軌道離脱準備：RCRS を止めて LiOH を交換、H2O ループを突入の構成へ */ }
    item def FdsEv01 { doc /* 事象：検知器のトリップ（2,000±200 μg/m3 を5秒、または 22 μg/m3/s を 20 秒に8回） */ }
    item def FdsEv02 { doc /* 事象：SM SYS SUMM 1 の濃度を確かめ、検知器をリセット */ }
    item def FdsEv03 { doc /* 事象：ベイの火災を確認 → Halon を放出しベイファンを止め、バイザーを下ろす */ }
    item def FdsEv04 { doc /* 事象：乗員室の火災を確認 → キャビンファンを止め、携帯の Halon を消火穴へ */ }
    item def FdsEv05 { doc /* 事象：直ちに再警報、または濃度が平常 → 検知器を疑い自己試験・回路試験 */ }
    item def FdsEv06 { doc /* 事象：誤警報と判定し検知器をリセット（必要なら遮断器を開く） */ }
    item def FdsEv07 { doc /* 事象：鎮火 → ベイの船外パージ、燃焼生成物があれば 8 psi へ減圧して連続パージ、RCRS を手動停止 */ }
    item def FdsEv08 { doc /* 事象：WCS の活性炭フィルタ・ATCO・LiOH で燃焼生成物を除く */ }
    item def FdsEv09 { doc /* 事象：浄化を終えて監視へ戻る（RCRS を再起動、ベイの機器を再び入れる） */ }
    item def FdsEv10 { doc /* 事象：大気を安全な水準まで浄化できない → 早期の軌道離脱 */ }
    item def FdsEv11 { doc /* 事象：煙検知の喪失（回路試験の不合格・電源喪失・両ファン故障で循環なし） */ }
    item def FdsEv12 { doc /* 事象：乗員が煙・炎を見つける、または持続的な短絡による機器故障 */ }
    item def FdsEv13 { doc /* 事象：AGENT DISCH 灯（ボトル圧 60±10 psig 未満）が放出音なしに点灯 → ベイの船外パージ */ }
    item def FdsEv14 { doc /* 事象：パージを始めて監視へ戻る（放出時刻が分からなければ打上げ時とみなす） */ }
    item def WatEv01 { doc /* 事象：軌道投入後にタンク A を再加圧（GN2 TK A SPLY を OPEN・PRESS）し、給水ダンプ隔離弁を開く */ }
    item def WatEv02 { doc /* 事象：水移送構成（タンク A 出口開・B 入口閉・クロスオーバ閉、遮断器を引く）、または EVA の前にタンク C を閉じる */ }
    item def WatEv03 { doc /* 事象：水移送・EVA の完了で通常の軌道上構成に戻す */ }
    item def WatEv04 { doc /* 事象：給水ダンプの開始（パージ装置を付け、ENA/NOZ HTR を ON、ノズル温度 A・B が 100°F 超で DUMP VLV を開） */ }
    item def WatEv05 { doc /* 事象：給水ダンプの終了（ISOL 弁を閉、ノズル温度 250 まで焼出し、DUMP VLV を閉・開・閉、ISOL 弁を開、ヒータ OFF） */ }
    item def WatEv06 { doc /* 事象：廃水ダンプの開始（ENA/NOZ HTR を ON、ノズル温度 A・B が 250 超で DUMP VLV を開） */ }
    item def WatEv07 { doc /* 事象：廃水ダンプの終了（DUMP VLV を閉、約 8 分の焼出しの後 ENA/NOZ HTR を OFF） */ }
    item def WatEv08 { doc /* 事象：'S66 SPLY H2O TEMP'（給水ノズル温度 A・B がともに 90°F 未満）→ 直ちに給水ダンプを中止 */ }
    item def WatEv09 { doc /* 事象：廃水ノズルの着氷・温度の平坦化、またはノズル温度 50°F 未満（RMS 監視時は 45°F 未満）→ 廃水ダンプを中止 */ }
    item def WatEv10 { doc /* 事象：MN BUS UNDERVOLT 灯（MNA DA1 の喪失で廃水ダンプ弁の制御とノズルヒータを失う）→ 廃水系の予備ダンプ（IFM） */ }
    item def WatEv11 { doc /* 事象：ダンプ配管・ノズルの喪失 → FES での消費、または非常用クロスタイで他方のノズルからダンプ */ }
    item def WatEv12 { doc /* 事象：非常用クロスタイから CWC へ廃水（または給水）を収集 */ }
    item def WatEv13 { doc /* 事象：代替の手段で空きを確保し通常の充填へ戻る */ }
    item def WatEv14 { doc /* 事象：遊離した水・タンクの漏れ（'S66 WASTE H2O PRES' など）→ FREE FLUID DISPOSAL IFM、漏れたタンクをベント・ダンプ・隔離 */ }
    item def WatEv15 { doc /* 事象：残りのタンクを再加圧して通常運用を続ける */ }
    item def WatEv16 { doc /* 事象：軌道離脱準備でタンク C を隔離し、FES 用の給水を確保 */ }
    item def WcsEv01 { doc /* 事象：軌道投入後に WCS を起動（VACUUM VALVE を開、真空ベント隔離弁を開） */ }
    item def WcsEv02 { doc /* 事象：小便器のホースをクレードルから外す（MODE AUTO、選んだセパレータが起動） */ }
    item def WcsEv03 { doc /* 事象：ホースをクレードルに収める（セパレータは約 30 秒後に停止） */ }
    item def WcsEv04 { doc /* 事象：MODE を COMMODE/MANUAL/EMU、COMMODE CONTROL を UP（約 15 秒で加圧）→ FWD でスライド弁を開く */ }
    item def WcsEv05 { doc /* 事象：COMMODE CONTROL を OFF（BACK/DN）、MODE を AUTO（スライド弁を閉じ便器を減圧・乾燥） */ }
    item def WcsEv06 { doc /* 事象：セパレータ1 が規定の回転数に達しない（騒音の低下・気流なし）→ FAN SEP とホースブロックを 2 に */ }
    item def WcsEv07 { doc /* 事象：AC VOLT 灯（AC1 の喪失でセパレータ1 が停止）→ FAN SEP SEL を OFF、ホースブロックを SEP 2、FAN SEP SEL を 2 */ }
    item def WcsEv08 { doc /* 事象：両方のセパレータの喪失・尿配管の漏れ（廃水系へ尿を運べない）→ UCD・UAS で尿を収集 */ }
    item def WcsEv09 { doc /* 事象：便器の喪失（スライド弁が開かない・満杯・気流不足・貯蔵タンクの破損）→ Apollo 便袋 */ }
    item def WcsEv10 { doc /* 事象：CABIN ATM 灯（キャビン圧 13.8 psia 未満）→ 漏れの切り分けで WCS の VAC VLV を閉じ、MCC に dP/dT を確かめる */ }
    item def WcsEv11 { doc /* 事象：漏れが WCS でない、またはスライド弁の清掃で漏れが止まる → VAC VLV を開き通常運用を続ける */ }
    item def WcsEv12 { doc /* 事象：真空ベント隔離弁の閉故障 → 収集器圧力でオリフィスからの排気を監視 */ }
    item def WcsEv13 { doc /* 事象：収集器圧力が 1.0 psia を超える（真空ベントの喪失）→ CONTINGENCY VACUUM VENT OPERATION IFM、便器の使用を中止 */ }
    item def WcsEv14 { doc /* 事象：IFM で真空ベントが回復 → 便器の使用を再開（IFM は突入まで残す） */ }
    item def WcsEv15 { doc /* 事象：軌道離脱準備で MS が WCS を停止し、VACUUM VALVE を閉じる */ }
    state def ArsStates {
        doc /* 図168 ARS 状態遷移図：大気再生系（ARS）の状態（大気再生系（ARS）） */
        @PhaseMode { phase = "PH-1"; states = "ARSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "ARSS-01,ARSS-09"; }
        @PhaseMode { phase = "PH-3"; states = "ARSS-03,ARSS-04,ARSS-05"; }
        @PhaseMode { phase = "PH-4"; states = "ARSS-04,ARSS-03,ARSS-01"; }
        @PhaseMode { phase = "PH-5"; states = "ARSS-03,ARSS-05"; }
        @PhaseMode { phase = "PH-6"; states = "ARSS-01"; }
        @PhaseMode { phase = "PH-7"; states = "ARSS-01"; }
        attribute arsGuard02 : ScalarValues::Boolean { doc /* ガード：PPCO2 が 7.6 mmHg 以上でも交換 */ }
        attribute arsGuard04 : ScalarValues::Boolean { doc /* ガード：RCRS 搭載機（OV-105） */ }
        attribute arsGuard05 : ScalarValues::Boolean { doc /* ガード：一方の制御器だけの故障なら他方で運転を続ける */ }
        attribute arsGuard06 : ScalarValues::Boolean { doc /* ガード：MECO 前は切り替えない */ }
        attribute arsGuard08 : ScalarValues::Boolean { doc /* ガード：乗員が気流の喪失を確認 */ }
        attribute arsGuard09 : ScalarValues::Boolean { doc /* ガード：ポンプ故障・流れの閉塞・漏れ・バイパス制御器の故障 */ }
        attribute arsGuard10 : ScalarValues::Boolean { doc /* ガード：ベイ温度が限界を超えれば MECO 前でも可 */ }
        attribute arsGuard11 : ScalarValues::Boolean { doc /* ガード：ループ1 も喪失の定義（A18-101）に当たる */ }
        entry; then ARSS_01;
        state ARSS_01 { doc /* ARSS-01 上昇・突入の構成（ファン1台・水ループ2・FULL COOL・LiOH） */ }
        state ARSS_02 {
            doc /* ARSS-02 軌道上の通常運転（ループ2 AUTO・ループ1 GPC 周期運転） */
            entry; then ARSS_03;
            state ARSS_03 { doc /* ARSS-03 LiOH による CO2 除去 */ }
            state ARSS_04 { doc /* ARSS-04 LiOH キャニスタの交換（キャビンファン停止） */ }
            state ARSS_05 { doc /* ARSS-05 RCRS 運転（吸着／再生の 13 分の入替え） */ }
        }
        state ARSS_06 { doc /* ARSS-06 キャビンファンの切替・切り分け */ }
        state ARSS_07 { doc /* ARSS-07 両キャビンファン喪失（循環なし・電力削減） */ }
        state ARSS_08 { doc /* ARSS-08 CO2 除去の喪失（QDM・キャビンのパージ・次の PLS） */ }
        state ARSS_09 { doc /* ARSS-09 予備の水ループ1での運転 */ }
        state ARSS_10 { doc /* ARSS-10 両水ループ喪失（電力削減・緊急の軌道離脱） */ }
        transition ARST_01 first ARSS_01 accept ArsEv01 then ARSS_02.ARSS_03;
        transition ARST_02 first ARSS_02.ARSS_03 accept ArsEv02 if arsGuard02 then ARSS_02.ARSS_04;
        transition ARST_03 first ARSS_02.ARSS_04 accept ArsEv03 then ARSS_02.ARSS_03;
        transition ARST_04 first ARSS_02.ARSS_03 accept ArsEv04 if arsGuard04 then ARSS_02.ARSS_05;
        transition ARST_05 first ARSS_02.ARSS_05 accept ArsEv05 if arsGuard05 then ARSS_02.ARSS_03;
        transition ARST_06 first ARSS_02 accept ArsEv06 if arsGuard06 then ARSS_06;
        transition ARST_07 first ARSS_06 accept ArsEv07 then ARSS_02;
        transition ARST_08 first ARSS_06 accept ArsEv08 if arsGuard08 then ARSS_07;
        transition ARST_09 first ARSS_02 accept ArsEv09 if arsGuard09 then ARSS_09;
        transition ARST_10 first ARSS_01 accept ArsEv10 if arsGuard10 then ARSS_09;
        transition ARST_11 first ARSS_09 accept ArsEv11 if arsGuard11 then ARSS_10;
        transition ARST_12 first ARSS_02 accept ArsEv12 then ARSS_08;
        transition ARST_13 first ARSS_02 accept ArsEv13 then ARSS_01;
    }
    state def FireDetectionStates {
        doc /* 図169 FDS 状態遷移図：煙検知・消火系（FDS）の状態（火災検知・消火系（FDS）） */
        @PhaseMode { phase = "PH-1"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-3"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-4"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-5"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-6"; states = "FDSS-01"; }
        @PhaseMode { phase = "PH-7"; states = "FDSS-01"; }
        attribute fdsGuard03 : ScalarValues::Boolean { doc /* ガード：同じ区画の2個が 2,000 μg/m3 超など（A17-1） */ }
        attribute fdsGuard04 : ScalarValues::Boolean { doc /* ガード：火元を見つけて火災を確かめた */ }
        attribute fdsGuard06 : ScalarValues::Boolean { doc /* ガード：同じ区画の他の検知器が煙を示さない */ }
        attribute fdsGuard09 : ScalarValues::Boolean { doc /* ガード：大気が安全な水準 */ }
        attribute fdsGuard13 : ScalarValues::Boolean { doc /* ガード：火災の確認がない */ }
        entry; then FDSS_01;
        state FDSS_01 { doc /* FDSS-01 監視（煙検知器の作動・回路試験） */ }
        state FDSS_02 { doc /* FDSS-02 警報（サイレン・SMOKE DETECTION 灯・MASTER ALARM、ラッチ） */ }
        state FDSS_03 { doc /* FDSS-03 火災の確認（濃度の確認・リセット・目視） */ }
        state FDSS_04 {
            doc /* FDSS-04 消火 */
            entry; then FDSS_05;
            state FDSS_05 { doc /* FDSS-05 ベイの消火（固定 Halon の放出・ベイファン停止） */ }
            state FDSS_06 { doc /* FDSS-06 乗員室の消火（キャビンファン停止・携帯消火器） */ }
        }
        state FDSS_07 { doc /* FDSS-07 火災後の処置（ベイの船外パージ・8 psi 減圧とパージ・電源断） */ }
        state FDSS_08 { doc /* FDSS-08 大気の浄化（WCS 活性炭・ATCO・LiOH） */ }
        state FDSS_09 { doc /* FDSS-09 誤警報・検知器の切り分け（自己試験・遮断器） */ }
        state FDSS_10 { doc /* FDSS-10 煙検知の喪失（乗員の監視・電源断・毎日の回路試験） */ }
        state FDSS_11 { doc /* FDSS-11 確認のない Halon 放出（ベイの船外パージ） */ }
        state FDSS_12 { doc /* FDSS-12 早期の軌道離脱（浄化できない） */ }
        transition FDST_01 first FDSS_01 accept FdsEv01 then FDSS_02;
        transition FDST_02 first FDSS_02 accept FdsEv02 then FDSS_03;
        transition FDST_03 first FDSS_03 accept FdsEv03 if fdsGuard03 then FDSS_04.FDSS_05;
        transition FDST_04 first FDSS_03 accept FdsEv04 if fdsGuard04 then FDSS_04.FDSS_06;
        transition FDST_05 first FDSS_03 accept FdsEv05 then FDSS_09;
        transition FDST_06 first FDSS_09 accept FdsEv06 if fdsGuard06 then FDSS_01;
        transition FDST_07 first FDSS_04 accept FdsEv07 then FDSS_07;
        transition FDST_08 first FDSS_07 accept FdsEv08 then FDSS_08;
        transition FDST_09 first FDSS_08 accept FdsEv09 if fdsGuard09 then FDSS_01;
        transition FDST_10 first FDSS_08 accept FdsEv10 then FDSS_12;
        transition FDST_11 first FDSS_01 accept FdsEv11 then FDSS_10;
        transition FDST_12 first FDSS_10 accept FdsEv12 then FDSS_03;
        transition FDST_13 first FDSS_01 accept FdsEv13 if fdsGuard13 then FDSS_11;
        transition FDST_14 first FDSS_11 accept FdsEv14 then FDSS_01;
    }
    state def WaterSystemStates {
        doc /* 図170 給水・廃水系 状態遷移図：給水・廃水系の状態（給水・廃水系（H2O）） */
        @PhaseMode { phase = "PH-1"; states = "WATS-01"; }
        @PhaseMode { phase = "PH-2"; states = "WATS-01"; }
        @PhaseMode { phase = "PH-3"; states = "WATS-03,WATS-04,WATS-05,WATS-06"; }
        @PhaseMode { phase = "PH-4"; states = "WATS-11"; }
        @PhaseMode { phase = "PH-5"; states = "WATS-04"; }
        @PhaseMode { phase = "PH-6"; states = "WATS-11"; }
        @PhaseMode { phase = "PH-7"; states = "WATS-11"; }
        attribute watGuard01 : ScalarValues::Boolean { doc /* ガード：タンク A が 98（93）% に達する前・タンク B が空になる前 */ }
        attribute watGuard02 : ScalarValues::Boolean { doc /* ガード：ISS への水移送がある飛行、EMU 給水補給の保護 */ }
        attribute watGuard04 : ScalarValues::Boolean { doc /* ガード：ダンプ配管温度 65 以上（未満なら第2ヒータ）、通信がなければ合計 100% の空きまで */ }
        attribute watGuard05 : ScalarValues::Boolean { doc /* ガード：所定の量をダンプ（毎分 1〜2%） */ }
        attribute watGuard06 : ScalarValues::Boolean { doc /* ガード：廃水量が 80% に達する前、ノズル温度 150°F 超（A17-505） */ }
        attribute watGuard07 : ScalarValues::Boolean { doc /* ガード：廃水量を 5% 未満にしない */ }
        attribute watGuard08 : ScalarValues::Boolean { doc /* ガード：以後そのノズルからダンプしない */ }
        attribute watGuard09 : ScalarValues::Boolean { doc /* ガード：着氷なら両ノズルのダンプを中止（再加熱で回復すれば WATS-06 に戻る） */ }
        attribute watGuard10 : ScalarValues::Boolean { doc /* ガード：廃水ダンプが必要なとき */ }
        attribute watGuard11 : ScalarValues::Boolean { doc /* ガード：給水は配管→FES→CWC→廃水配管の順、着氷が無いと確かめれば給水ノズルは再使用可 */ }
        attribute watGuard12 : ScalarValues::Boolean { doc /* ガード：廃水ダンプ能力の喪失（A17-452）、廃水タンクと CWC の空きで EOM まで */ }
        attribute watGuard13 : ScalarValues::Boolean { doc /* ガード：燃料電池の生成水 12 時間分の空き */ }
        attribute watGuard14 : ScalarValues::Boolean { doc /* ガード：修理・隔離できない漏れ */ }
        attribute watGuard15 : ScalarValues::Boolean { doc /* ガード：廃水タンクの外部漏れでは液体廃棄物を CWC で集める */ }
        attribute watGuard16 : ScalarValues::Boolean { doc /* ガード：PLS の TIG の 4 時間前に 281 lbm（随時の突入は 175 lbm）、CWC は中甲板に収納 */ }
        entry; then WATS_01;
        state WATS_01 { doc /* WATS-01 打上げ・上昇の構成（タンク A をベント、クロスオーバ閉・タンク C 隔離） */ }
        state WATS_02 {
            doc /* WATS-02 軌道上の水管理 */
            entry; then WATS_03;
            state WATS_03 { doc /* WATS-03 生成水の充填・FES への給水（通常構成） */ }
            state WATS_04 { doc /* WATS-04 タンクの切替（水移送・EVA の構成） */ }
            state WATS_05 { doc /* WATS-05 給水ダンプ（ノズルヒータ・ダンプ弁開） */ }
            state WATS_06 { doc /* WATS-06 廃水ダンプ */ }
            state WATS_07 { doc /* WATS-07 ノズルの凍結・ダンプの中止 */ }
            state WATS_08 { doc /* WATS-08 代替のダンプ（FES での消費・非常用クロスタイ） */ }
            state WATS_09 { doc /* WATS-09 CWC への収集 */ }
            state WATS_10 { doc /* WATS-10 漏れたタンクの隔離（ベント・ダンプ・不使用） */ }
        }
        state WATS_11 { doc /* WATS-11 軌道離脱準備・突入（タンク C の保護） */ }
        transition WATT_01 first WATS_01 accept WatEv01 if watGuard01 then WATS_02.WATS_03;
        transition WATT_02 first WATS_02.WATS_03 accept WatEv02 if watGuard02 then WATS_02.WATS_04;
        transition WATT_03 first WATS_02.WATS_04 accept WatEv03 then WATS_02.WATS_03;
        transition WATT_04 first WATS_02.WATS_03 accept WatEv04 if watGuard04 then WATS_02.WATS_05;
        transition WATT_05 first WATS_02.WATS_05 accept WatEv05 if watGuard05 then WATS_02.WATS_03;
        transition WATT_06 first WATS_02.WATS_03 accept WatEv06 if watGuard06 then WATS_02.WATS_06;
        transition WATT_07 first WATS_02.WATS_06 accept WatEv07 if watGuard07 then WATS_02.WATS_03;
        transition WATT_08 first WATS_02.WATS_05 accept WatEv08 if watGuard08 then WATS_02.WATS_07;
        transition WATT_09 first WATS_02.WATS_06 accept WatEv09 if watGuard09 then WATS_02.WATS_07;
        transition WATT_10 first WATS_02.WATS_03 accept WatEv10 if watGuard10 then WATS_02.WATS_08;
        transition WATT_11 first WATS_02.WATS_07 accept WatEv11 if watGuard11 then WATS_02.WATS_08;
        transition WATT_12 first WATS_02.WATS_07 accept WatEv12 if watGuard12 then WATS_02.WATS_09;
        transition WATT_13 first WATS_02.WATS_08 accept WatEv13 if watGuard13 then WATS_02.WATS_03;
        transition WATT_14 first WATS_02.WATS_03 accept WatEv14 if watGuard14 then WATS_02.WATS_10;
        transition WATT_15 first WATS_02.WATS_10 accept WatEv15 if watGuard15 then WATS_02.WATS_03;
        transition WATT_16 first WATS_02 accept WatEv16 if watGuard16 then WATS_11;
    }
    state def WasteCollectionStates {
        doc /* 図171 WCS 状態遷移図：廃棄物収集系（WCS）の状態（廃棄物収集系（WCS）） */
        @PhaseMode { phase = "PH-1"; states = "WCSS-01"; }
        @PhaseMode { phase = "PH-2"; states = "WCSS-01"; }
        @PhaseMode { phase = "PH-3"; states = "WCSS-03,WCSS-04,WCSS-05"; }
        @PhaseMode { phase = "PH-4"; states = "WCSS-03,WCSS-01"; }
        @PhaseMode { phase = "PH-5"; states = "WCSS-04"; }
        @PhaseMode { phase = "PH-6"; states = "WCSS-01"; }
        @PhaseMode { phase = "PH-7"; states = "WCSS-01"; }
        attribute wcsGuard01 : ScalarValues::Boolean { doc /* ガード：MET 1:08 ごろ */ }
        attribute wcsGuard02 : ScalarValues::Boolean { doc /* ガード：FAN SEP とホースブロックが同じ、EMU 排水中は小便器を使わない */ }
        attribute wcsGuard04 : ScalarValues::Boolean { doc /* ガード：キャビンの再与圧中・EMU の排水中でない */ }
        attribute wcsGuard05 : ScalarValues::Boolean { doc /* ガード：ハンドルを完全に下げる */ }
        attribute wcsGuard06 : ScalarValues::Boolean { doc /* ガード：限界スイッチの故障なら BYPASS で迂回 */ }
        attribute wcsGuard07 : ScalarValues::Boolean { doc /* ガード：ホースをクレードルに収め MODE AUTO */ }
        attribute wcsGuard08 : ScalarValues::Boolean { doc /* ガード：電力を確立できない、あふれて回復できない、修理できない漏れ */ }
        attribute wcsGuard09 : ScalarValues::Boolean { doc /* ガード：IFM で修理できない */ }
        attribute wcsGuard11 : ScalarValues::Boolean { doc /* ガード：dP/dT が回復 */ }
        attribute wcsGuard12 : ScalarValues::Boolean { doc /* ガード：便器を使っていない */ }
        attribute wcsGuard13 : ScalarValues::Boolean { doc /* ガード：1〜2 時間以内、VACUUM VALVE は開のまま */ }
        attribute wcsGuard14 : ScalarValues::Boolean { doc /* ガード：廃水ダンプ中は IFM ホースをクロスタイの廃水 QD で外す */ }
        attribute wcsGuard15 : ScalarValues::Boolean { doc /* ガード：TIG−0:33 ごろ、真空ベントの喪失時は VACUUM VALVE を開のまま */ }
        entry; then WCSS_01;
        state WCSS_01 { doc /* WCSS-01 打上げ・突入の構成（VACUUM VALVE 閉・真空ベント隔離弁閉） */ }
        state WCSS_02 {
            doc /* WCSS-02 軌道上の運用 */
            entry; then WCSS_03;
            state WCSS_03 { doc /* WCSS-03 待機（便器の乾燥・ウェットトラッシュの排気） */ }
            state WCSS_04 { doc /* WCSS-04 尿の収集（EMU 凝縮水の排出を含む） */ }
            state WCSS_05 { doc /* WCSS-05 尿・便の収集（便器の加圧・スライド弁開） */ }
            state WCSS_06 { doc /* WCSS-06 代替のファンセパレータでの運用 */ }
            state WCSS_07 { doc /* WCSS-07 代替の収集具（Apollo 便袋・UCD・UAS） */ }
            state WCSS_08 { doc /* WCSS-08 WCS の隔離（キャビン漏れの切り分け） */ }
            state WCSS_09 { doc /* WCSS-09 真空ベント隔離弁の閉故障（オリフィスでの排気の監視） */ }
            state WCSS_10 { doc /* WCSS-10 代替の真空ベント（IFM・廃水ダンプ配管経由） */ }
        }
        transition WCST_01 first WCSS_01 accept WcsEv01 if wcsGuard01 then WCSS_02.WCSS_03;
        transition WCST_02 first WCSS_02.WCSS_03 accept WcsEv02 if wcsGuard02 then WCSS_02.WCSS_04;
        transition WCST_03 first WCSS_02.WCSS_04 accept WcsEv03 then WCSS_02.WCSS_03;
        transition WCST_04 first WCSS_02.WCSS_03 accept WcsEv04 if wcsGuard04 then WCSS_02.WCSS_05;
        transition WCST_05 first WCSS_02.WCSS_05 accept WcsEv05 if wcsGuard05 then WCSS_02.WCSS_03;
        transition WCST_06 first WCSS_02.WCSS_04 accept WcsEv06 if wcsGuard06 then WCSS_02.WCSS_06;
        transition WCST_07 first WCSS_02.WCSS_03 accept WcsEv07 if wcsGuard07 then WCSS_02.WCSS_06;
        transition WCST_08 first WCSS_02.WCSS_06 accept WcsEv08 if wcsGuard08 then WCSS_02.WCSS_07;
        transition WCST_09 first WCSS_02.WCSS_05 accept WcsEv09 if wcsGuard09 then WCSS_02.WCSS_07;
        transition WCST_10 first WCSS_02.WCSS_03 accept WcsEv10 then WCSS_02.WCSS_08;
        transition WCST_11 first WCSS_02.WCSS_08 accept WcsEv11 if wcsGuard11 then WCSS_02.WCSS_03;
        transition WCST_12 first WCSS_02.WCSS_03 accept WcsEv12 if wcsGuard12 then WCSS_02.WCSS_09;
        transition WCST_13 first WCSS_02.WCSS_09 accept WcsEv13 if wcsGuard13 then WCSS_02.WCSS_10;
        transition WCST_14 first WCSS_02.WCSS_10 accept WcsEv14 if wcsGuard14 then WCSS_02.WCSS_03;
        transition WCST_15 first WCSS_02 accept WcsEv15 if wcsGuard15 then WCSS_01;
    }
    // ---- 構造との対応：構造モデルの部品の定義に状態機械を持たせる
    part def ArsStatesHolder :> ECL_ARS {
        doc /* 大気再生系（ARS）（SSD-FD-ECL-ARS-001）は ArsStates の状態を持つ */
        exhibit state arsStates : ArsStates;
    }
    part def FireDetectionStatesHolder :> ECL_FDS {
        doc /* 火災検知・消火系（FDS）（SSD-FD-ECL-FDS-001）は FireDetectionStates の状態を持つ */
        exhibit state fireDetectionStates : FireDetectionStates;
    }
    part def WaterSystemStatesHolder :> ECL_H2O {
        doc /* 給水・廃水系（H2O）（SSD-FD-ECL-H2O-001）は WaterSystemStates の状態を持つ */
        exhibit state waterSystemStates : WaterSystemStates;
    }
    part def WasteCollectionStatesHolder :> ECL_WCS {
        doc /* 廃棄物収集系（WCS）（SSD-FD-ECL-WCS-001）は WasteCollectionStates の状態を持つ */
        exhibit state wasteCollectionStates : WasteCollectionStates;
    }
    // ---- 活動（行動・判断・合流と流れ）
    action def LiohChangeout {
        doc /* 図173 LiOH キャニスタの交換 活動図：LiOH キャニスタの交換（就寝前・起床後の定時交換と PPCO2 の確認） */
        attribute singleChangeout : ScalarValues::Boolean { doc /* ガード：1個 */ }
        attribute ppco2High : ScalarValues::Boolean { doc /* ガード：7.6 mmHg 超 */ }
        action AC_LO_01 { doc /* AC-LO-01 定時の交換を始める（就寝前・起床後の作業一覧のキューカード、または PPCO2 が 7.6 mmHg 以上） */ }
        action AC_LO_02 { doc /* AC-LO-02 運転中のキャビンファンを止める（LiOH の粉塵の巻き上げを防ぐ） */ }
        action AC_LO_03 { doc /* AC-LO-03 MD54G の床の開口を開け、MD52M の下の予備キャニスタを出す（ISS の備蓄品なら保護具を着ける） */ }
        decide DC_LO_01;
            if singleChangeout then AC_LO_04;
            if not singleChangeout then AC_LO_05;
        action AC_LO_04 { doc /* AC-LO-04 キャニスタを1個交換する */ }
        action AC_LO_05 { doc /* AC-LO-05 キャニスタを2個交換する */ }
        merge MG_LO_01;
        action AC_LO_06 { doc /* AC-LO-06 使用済みキャニスタを袋に入れて収納し、キャビンファンを再起動する（異常時でも停止は20分まで） */ }
        action AC_LO_07 { doc /* AC-LO-07 SM 66 で PPCO2 を監視する */ }
        decide DC_LO_02;
            if not ppco2High then done;
            if ppco2High then AC_LO_08;
        action AC_LO_08 { doc /* AC-LO-08 予定の交換が近くなければ PPCO2 センサの故障を疑い MCC と調べる（MAL 6.8b）。予備は2日分（乗員数と同じ個数）を守る */ }
        first start then AC_LO_01;
        first AC_LO_01 then AC_LO_02;
        first AC_LO_02 then AC_LO_03;
        first AC_LO_03 then DC_LO_01;
        first AC_LO_04 then MG_LO_01;
        first AC_LO_05 then MG_LO_01;
        first MG_LO_01 then AC_LO_06;
        first AC_LO_06 then AC_LO_07;
        first AC_LO_07 then DC_LO_02;
        first AC_LO_08 then done;
    }
    action def WaterDump {
        doc /* 図174 給水・廃水のダンプ 活動図：給水・廃水のダンプ（準備・ノズルヒータ・ダンプ・終了・凍結時の代替） */
        attribute nozzleFreezing : ScalarValues::Boolean { doc /* ガード：低下・着氷あり */ }
        action AC_WD_01 { doc /* AC-WD-01 ダンプの準備：給水ダンプ配管のパージ装置をクロスタイの給水 QD に付け、ダンプ前の FDA の限界を設定する */ }
        action AC_WD_02 { doc /* AC-WD-02 ダンプ配管の温度を確かめ（低ければ2つ目の H2O LINE HTR）、DUMP VLV ENA/NOZ HTR を ON にしてノズルを暖める */ }
        action AC_WD_03 { doc /* AC-WD-03 ノズル温度が開始の値（給水 100・廃水 250）を超えたらダンプ弁を開く */ }
        action AC_WD_04 { doc /* AC-WD-04 タンク量の減少（毎分約1〜2%）とノズル温度を監視する（目標の量（空き容量・FES 用の残量・廃水 5% 以上）に達するまで続ける） */ }
        decide DC_WD_01;
            if nozzleFreezing then AC_WD_06;
            if not nozzleFreezing then AC_WD_05;
        action AC_WD_05 { doc /* AC-WD-05 終了：ダンプ弁・隔離弁を閉じ、ノズルを焼き出してからヒータを切り、パージ装置を外して収納する */ }
        action AC_WD_06 { doc /* AC-WD-06 直ちにダンプを中止する（着氷なら氷が無いと確かめるまで両ノズルとも中止） */ }
        action AC_WD_07 { doc /* AC-WD-07 代替：MCC と決めて FES・クロスタイ経由の他方のノズル・CWC へ水を移す */ }
        merge MG_WD_02;
        first start then AC_WD_01;
        first AC_WD_01 then AC_WD_02;
        first AC_WD_02 then AC_WD_03;
        first AC_WD_04 then DC_WD_01;
        first AC_WD_06 then AC_WD_07;
        first AC_WD_05 then MG_WD_02;
        first AC_WD_07 then MG_WD_02;
        first MG_WD_02 then done;
        first AC_WD_03 then AC_WD_04;
    }
    action def WaterLoopLossResponse {
        doc /* 図175 水冷却ループの喪失の処置 活動図：水冷却ループの喪失の処置（H2O LOOP 灯・ループの切替・2ループ喪失） */
        attribute bothLoopsLost : ScalarValues::Boolean { doc /* ガード：両ループ */ }
        attribute ascentPhase : ScalarValues::Boolean { doc /* ガード：上昇中 */ }
        action AC_WL_01 { doc /* AC-WL-01 H2O LOOP 灯（CW-16）・BACKUP C/W ALARM・SM アラートでポンプ出口圧の異常に気づく */ }
        action AC_WL_02 { doc /* AC-WL-02 代替に切り替える：ループ1 のポンプだけの故障なら代替ポンプ A(B)、それ以外は ECLS SSR-4 で代替ループへ組み替える */ }
        decide DC_WL_01;
            if not bothLoopsLost then AC_WL_03;
            if bothLoopsLost then AC_WL_04;
        action AC_WL_03 { doc /* AC-WL-03 1ループの喪失：ゼロフォールトトレラントで運用を続ける（上昇中なら初日の PLS、MCC と次の PLS を検討） */ }
        action AC_WL_04 { doc /* AC-WL-04 両ループのポンプを OFF にし、LOSS OF 2 H2O LOOPS（ORB PKT, PWRDN）で減電する */ }
        decide DC_WL_02;
            if ascentPhase then AC_WL_05;
            if not ascentPhase then AC_WL_06;
        action AC_WL_05 { doc /* AC-WL-05 AOA を行う */ }
        action AC_WL_06 { doc /* AC-WL-06 DEP/REP（乗員室の減圧・再加圧）のサイクルで熱と湿度を逃がす */ }
        action AC_WL_07 { doc /* AC-WL-07 緊急の軌道離脱で故障から4時間以内に着陸する */ }
        merge MG_WL_01;
        first start then AC_WL_01;
        first AC_WL_01 then AC_WL_02;
        first AC_WL_02 then DC_WL_01;
        first AC_WL_03 then done;
        first AC_WL_04 then DC_WL_02;
        first AC_WL_06 then AC_WL_07;
        first AC_WL_05 then MG_WL_01;
        first AC_WL_07 then MG_WL_01;
        first MG_WL_01 then done;
    }
}
