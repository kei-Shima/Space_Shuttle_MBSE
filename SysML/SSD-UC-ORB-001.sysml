// SysML v2 テキスト：運用のユースケースとシナリオ（ランデブー・ドッキング、最終秒読み〜RSLS アボート、ペイロード放出、上昇アボートの選択）
// SSD-UC-ORB-001 運用シナリオ・ユースケース定義書（ユースケース・ランデブー・秒読み・ペイロード放出・アボート） の表から生成（lib/build_docs_ah.py）。根拠の頁は SSD-UC-ORB-001 にある。
package SSD_UC_ORB_001 {
    doc /* SSD-UC-ORB-001 運用シナリオ・ユースケース定義書（ユースケース・ランデブー・秒読み・ペイロード放出・アボート）。図93〜97 と同じユースケース・アクタ・シナリオ。 */
    private import SSD_BLK_SYS_001::*;
    private import ModelingMetadata::*;
    // ---- アクタ
    part def <'CREW'> Crew { doc /* 乗員（CDR・PLT・MS）：機体を操縦し、系を監視・操作し、標準の時刻表と故障の手順を実行する。 */ }
    part def <'MCC'> MissionControl { doc /* ミッション管制センタ（MCC）：SRB 点火から乗員の退出まで飛行を指揮し、アボートモードを決め、GO を出し、指令をアップリンクする。 */ }
    part def <'LCC'> LaunchControl { doc /* 打上げ管制（LCC・GLS・NTD）：秒読みを進め、T−9分以後は GLS が機体を自動で構成・監視し、射点の緊急時は NTD が指揮する。 */ }
    part def <'CLOSEOUT'> CloseoutCrew { doc /* クローズアウトクルー・ASP：乗り込みを助けて射点で最終点検を行い、射場の緊急時は乗員の退出を助ける。 */ }
    part def <'POCC'> PayloadCustomer { doc /* ペイロード顧客（POCC）：主要なペイロードの活動に責任を持ち、MCC を経てペイロードのテレメトリを受ける。 */ }
    part def <'ISS'> SpaceStation { doc /* ISS（乗員と機体）：ドッキングの受動側となり、RPM 中にオービタ下面を撮影する。 */ }
    part def <'RSO'> RangeSafety { doc /* 射場安全（Range Safety）：人口密集域を危険にさらす飛行を終わらせる（第1段では SRB を遠隔で起爆）。 */ }
    part def <'NET'> TrackingNetwork { doc /* 追跡・通信網（STDN・TDRS）：MCC と機体の間で音声・指令・テレメトリを中継する。 */ }
    // ---- ユースケース（主体は宇宙輸送システム）
    use case def <'UC-01'> FinalCountdown {
        doc /* 最終秒読みを行う。実現：図84（AS-01〜08）・図95。UC-02 が extend（SSME 始動後のカットオフ）。UC-10 を include（打上げデータバスと音声）。 */
        subject sts : SpaceTransportationSystem;
        actor lcc : LaunchControl;
        actor crew : Crew;
        actor mcc : MissionControl;
        actor closeout : CloseoutCrew;
        include use case commandAndTelemetry : CommandAndTelemetry;
    }
    use case def <'UC-02'> PadAbortSafing {
        doc /* 射場アボートで機体を安全化し退出する。実現：図95。UC-01 を extend（拡張点：T−31秒以後のカットオフ・SSME 始動後の停止）。 */
        subject sts : SpaceTransportationSystem;
        actor lcc : LaunchControl;
        actor crew : Crew;
        actor mcc : MissionControl;
        actor closeout : CloseoutCrew;
    }
    use case def <'UC-03'> Ascent {
        doc /* 上昇する（SRB 点火〜MECO）。実現：図84。UC-04 が extend（エンジン停止・系統故障）。UC-10 を include。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        actor rso : RangeSafety;
        include use case commandAndTelemetry : CommandAndTelemetry;
    }
    use case def <'UC-04'> AscentAbort {
        doc /* 上昇アボート（RTLS・TAL・AOA・ATO）を行う。実現：図97・図76（TR-14〜16・TR-19〜21）。UC-03 を extend（拡張点：アボート境界の呼びかけ）。UC-11 から起こることがある（キャビンの漏れ・冷却の喪失など）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
    }
    use case def <'UC-05'> OrbitInsertion {
        doc /* 軌道に投入し軌道運用の GO を得る。実現：図84（AS-14〜17）・図76。UC-03 の後に続く。ATO の場合は UC-04 から合流する。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
    }
    use case def <'UC-06'> PayloadDeploy {
        doc /* RMS でペイロードを放出する。実現：図96。UC-08 が extend（PRLA・エンドエフェクタの EVA による解放）。RMS・ペイロードの投棄は UC-06 内の分岐（図96）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        actor pocc : PayloadCustomer;
    }
    use case def <'UC-07'> RendezvousDocking {
        doc /* ISS とランデブし ODS でドッキングする。実現：図94。UC-10 を include（噴射目標のアップリンク・MCC の GO）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        actor iss : SpaceStation;
        include use case commandAndTelemetry : CommandAndTelemetry;
    }
    use case def <'UC-08'> ExtravehicularActivity {
        doc /* 船外活動（EVA）を行う。実現：図87。UC-06 と UC-12 を extend（緊急 EVA による解放・ドア閉）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
    }
    use case def <'UC-09'> DeorbitEntryLanding {
        doc /* 軌道離脱・突入・着陸する。実現：図83。UC-12 が extend（ペイロードベイドアが閉じない）。UC-10 を include（状態ベクトル・離脱目標のアップリンク）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        include use case commandAndTelemetry : CommandAndTelemetry;
    }
    use case def <'UC-10'> CommandAndTelemetry {
        doc /* 指令とテレメトリで運用を監視・制御する。実現：図85。UC-01・03・07・09・11 が include する共通のユースケース。 */
        subject sts : SpaceTransportationSystem;
        actor mcc : MissionControl;
        actor net : TrackingNetwork;
        actor pocc : PayloadCustomer;
        actor crew : Crew;
    }
    use case def <'UC-11'> InFlightFailureResponse {
        doc /* 飛行中の系統故障に対処する（He 漏れ・FC 冷却喪失・火災・キャビン漏れ）。実現：図80・図81・図82・図86。UC-10 を include（MCC の漏れ率の解析・確認）。上昇中は UC-04、軌道上は UC-09（早期の軌道離脱）へ続くことがある。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        include use case commandAndTelemetry : CommandAndTelemetry;
    }
    use case def <'UC-12'> PayloadBayDoorFailure {
        doc /* ペイロードベイドアの閉鎖不能に対処する。実現：図88。UC-09 を extend（拡張点：離脱準備のドア閉）。UC-08 を include することがある（EVA による閉駆動）。 */
        subject sts : SpaceTransportationSystem;
        actor crew : Crew;
        actor mcc : MissionControl;
        include use case extravehicularActivity : ExtravehicularActivity;
    }
    // ---- extend（拡張するユースケース → 拡張されるユースケース）
    package Extension {
        dependency <'UC-02 extend UC-01'> from PadAbortSafing to FinalCountdown { doc /* UC-02 は UC-01 を拡張する */ }
        dependency <'UC-04 extend UC-03'> from AscentAbort to Ascent { doc /* UC-04 は UC-03 を拡張する */ }
        dependency <'UC-08 extend UC-06'> from ExtravehicularActivity to PayloadDeploy { doc /* UC-08 は UC-06 を拡張する */ }
        dependency <'UC-08 extend UC-12'> from ExtravehicularActivity to PayloadBayDoorFailure { doc /* UC-08 は UC-12 を拡張する */ }
        dependency <'UC-12 extend UC-09'> from PayloadBayDoorFailure to DeorbitEntryLanding { doc /* UC-12 は UC-09 を拡張する */ }
    }
    // ---- シナリオ：シーケンス（生存線の型は構造モデルの part def かアクタ）
    item def RdMsg01 { doc /* ODS を初期化しリングを初期位置へ伸ばす */ }
    item def RdMsg02 { doc /* Ku 帯を RADAR モードにする */ }
    item def RdMsg03 { doc /* レーダ捕捉（約150 kft）、距離・距離変化率 */ }
    item def RdMsg04 { doc /* Ti 噴射（機上で目標計算、MC4 位置へ） */ }
    item def RdMsg05 { doc /* レーダ・ST で航法を更新し MC 噴射を計算 */ }
    item def RdMsg06 { doc /* 中間修正 MC1〜MC3（残差の整え） */ }
    item def RdMsg07 { doc /* MC4 噴射（+R-bar 上 600 ft が目標） */ }
    item def RdMsg08 { doc /* 手動段階：THC で R-dot を修正（ブレーキング） */ }
    item def RdMsg09 { doc /* R-bar ピッチ機動（RPM） */ }
    item def RdMsg10 { doc /* ISS 乗員が下面を撮影し画像を地上へ */ }
    item def RdMsg11 { doc /* TORVA で +V-bar へ遷移し接近 */ }
    item def RdMsg12 { doc /* ODS の電源を入れる（内側ハッチ閉） */ }
    item def RdMsg13 { doc /* 接触から2秒以内に PCT を起動 */ }
    item def RdMsg14 { doc /* PCT 噴射で APDS の捕獲力を与える */ }
    item def RdMsg15 { doc /* 捕獲灯、5秒後にダンパで減衰 */ }
    item def RdMsg16 { doc /* 整列・相対運動なしで RING IN の GO */ }
    item def RdMsg17 { doc /* リング引込み・構造フック閉（ハードメイト） */ }
    item def RdMsg18 { doc /* ハッチを開けて移送を始める */ }
    item def RsMsg01 { doc /* 打上げの GO、GLS シーケンス開始 */ }
    item def RsMsg02 { doc /* APU 3台を始動し主ポンプを加圧 */ }
    item def RsMsg03 { doc /* 油圧の供給（2,800 psi 未満なら自動ホールド） */ }
    item def RsMsg04 { doc /* LO2 タンクのベント弁を閉じ He で加圧 */ }
    item def RsMsg05 { doc /* GO FOR AUTO SEQUENCE START */ }
    item def RsMsg06 { doc /* ベント扉を順に開く */ }
    item def RsMsg07 { doc /* SRB 点火・ホールドダウン解放の PIC をアーム */ }
    item def RsMsg08 { doc /* LH2 プリバルブを開く */ }
    item def RsMsg09 { doc /* SSME の始動を指令 */ }
    item def RsMsg10 { doc /* Pc・エンジン状態を返す（乗員も Pc を監視） */ }
    item def RsMsg11 { doc /* 90% 未満の SSME があれば全 SSME を停止 */ }
    item def RsMsg12 { doc /* RSLS が制御を GLS に戻す（SRB は非点火） */ }
    item def RsMsg13 { doc /* GLS の安全化プログラム（不可なら手動） */ }
    item def RsMsg14 { doc /* G1→G9 の OPS 遷移 */ }
    item def RsMsg15 { doc /* 乗員・KSC とも不可なら G1→G9 を指令 */ }
    item def RsMsg16 { doc /* NTD が脱出モードを指示（OAA を戻す） */ }
    occurrence def RendezvousDockingSequence {
        doc /* 図94 ランデブー・ドッキング シーケンス図：ISS とのランデブ・ドッキング（Ti 噴射〜ODS による捕獲・ハッチ開） */
        part crew : Crew { doc /* 乗員（CDR・PLT・MS） */ }
        part mcc : MissionControl { doc /* 地上（MCC） */ }
        part gpc : DPS { doc /* GPC（DPS・GN&C） */ }
        part ku : CT_KU { doc /* C&T：Ku 帯（レーダ） */ }
        part oms : OMS { doc /* 軌道制御系（OMS） */ }
        part rcs : RCS { doc /* 姿勢制御系（RCS） */ }
        part ods : PLS_ODS { doc /* オービタドッキング系（ODS・APDS） */ }
        part iss : SpaceStation { doc /* ISS（受動側） */ }
        message RD_01 of RdMsg01 from crew to ods { doc /* RD-01 前日 ODS を初期化しリングを初期位置へ伸ばす */ }
        message RD_02 of RdMsg02 from crew to ku { doc /* RD-02 TI前 Ku 帯を RADAR モードにする */ }
        message RD_03 of RdMsg03 from ku to gpc { doc /* RD-03 TI前 レーダ捕捉（約150 kft）、距離・距離変化率、IF-ORB-24 */ }
        message RD_04 of RdMsg04 from gpc to oms { doc /* RD-04 TI Ti 噴射（機上で目標計算、MC4 位置へ）、IF-ORB-04 */ }
        message RD_05 of RdMsg05 from ku to gpc { doc /* RD-05 TI後 レーダ・ST で航法を更新し MC 噴射を計算、IF-ORB-24 */ }
        message RD_06 of RdMsg06 from gpc to rcs { doc /* RD-06 MC1〜MC3 中間修正 MC1〜MC3（残差の整え）、IF-ORB-03 */ }
        message RD_07 of RdMsg07 from gpc to rcs { doc /* RD-07 MC4 MC4 噴射（+R-bar 上 600 ft が目標）、IF-ORB-03 */ }
        message RD_08 of RdMsg08 from crew to gpc { doc /* RD-08 MC4後 手動段階：THC で R-dot を修正（ブレーキング） */ }
        message RD_09 of RdMsg09 from gpc to rcs { doc /* RD-09 R-bar 600 ft R-bar ピッチ機動（RPM）、IF-ORB-03 */ }
        message RD_10 of RdMsg10 from iss to mcc { doc /* RD-10 RPM中 ISS 乗員が下面を撮影し画像を地上へ */ }
        message RD_11 of RdMsg11 from gpc to rcs { doc /* RD-11 最終接近 TORVA で +V-bar へ遷移し接近、IF-ORB-03 */ }
        message RD_12 of RdMsg12 from crew to ods { doc /* RD-12 V-bar ODS の電源を入れる（内側ハッチ閉） */ }
        message RD_13 of RdMsg13 from crew to gpc { doc /* RD-13 接触 接触から2秒以内に PCT を起動 */ }
        message RD_14 of RdMsg14 from gpc to rcs { doc /* RD-14 接触 PCT 噴射で APDS の捕獲力を与える、IF-ORB-03 */ }
        message RD_15 of RdMsg15 from ods to crew { doc /* RD-15 捕獲 捕獲灯、5秒後にダンパで減衰 */ }
        message RD_16 of RdMsg16 from mcc to crew { doc /* RD-16 捕獲後 整列・相対運動なしで RING IN の GO */ }
        message RD_17 of RdMsg17 from ods to iss { doc /* RD-17 捕獲後 リング引込み・構造フック閉（ハードメイト） */ }
        message RD_18 of RdMsg18 from crew to iss { doc /* RD-18 ドッキング後 ハッチを開けて移送を始める */ }
        first RD_01 then RD_02;
        first RD_02 then RD_03;
        first RD_03 then RD_04;
        first RD_04 then RD_05;
        first RD_05 then RD_06;
        first RD_06 then RD_07;
        first RD_07 then RD_08;
        first RD_08 then RD_09;
        first RD_09 then RD_10;
        first RD_10 then RD_11;
        first RD_11 then RD_12;
        first RD_12 then RD_13;
        first RD_13 then RD_14;
        first RD_14 then RD_15;
        first RD_15 then RD_16;
        first RD_16 then RD_17;
        first RD_17 then RD_18;
    }
    occurrence def RslsPadAbortSequence {
        doc /* 図95 最終秒読み〜RSLS アボート シーケンス図：最終秒読みと RSLS アボート（SSME 始動後の射場アボート） */
        part lcc : LaunchControl { doc /* 打上げ管制（LCC・GLS・NTD） */ }
        part crew : Crew { doc /* 乗員 */ }
        part mcc : MissionControl { doc /* 地上（MCC） */ }
        part gpc : DPS { doc /* GPC（RSLS） */ }
        part apu : APU { doc /* APU/HYD */ }
        part mech : MECH { doc /* 機械系（ベント扉） */ }
        part mps : MPS { doc /* 主推進系（MPS・SSME） */ }
        part srb : SRB { doc /* SRB */ }
        message RS_01 of RsMsg01 from lcc to crew { doc /* RS-01 T−9分 打上げの GO、GLS シーケンス開始 */ }
        message RS_02 of RsMsg02 from crew to apu { doc /* RS-02 T−5分 APU 3台を始動し主ポンプを加圧 */ }
        message RS_03 of RsMsg03 from apu to mps { doc /* RS-03 T−4分5秒 油圧の供給（2,800 psi 未満なら自動ホールド）、IF-ORB-07 */ }
        message RS_04 of RsMsg04 from lcc to mps { doc /* RS-04 T−2分55秒 LO2 タンクのベント弁を閉じ He で加圧、IF-ORB-29 */ }
        message RS_05 of RsMsg05 from lcc to gpc { doc /* RS-05 T−31秒 GO FOR AUTO SEQUENCE START、IF-ORB-17 */ }
        message RS_06 of RsMsg06 from gpc to mech { doc /* RS-06 T−28秒 ベント扉を順に開く、IF-ORB-40 */ }
        message RS_07 of RsMsg07 from gpc to srb { doc /* RS-07 T−16秒 SRB 点火・ホールドダウン解放の PIC をアーム、IF-ORB-26 */ }
        message RS_08 of RsMsg08 from gpc to mps { doc /* RS-08 T−9.5秒 LH2 プリバルブを開く、IF-ORB-06 */ }
        message RS_09 of RsMsg09 from gpc to mps { doc /* RS-09 T−6.6秒 SSME の始動を指令、IF-ORB-06 */ }
        message RS_10 of RsMsg10 from mps to gpc { doc /* RS-10 T−6.6〜3秒 Pc・エンジン状態を返す（乗員も Pc を監視）、IF-ORB-06 */ }
        message RS_11 of RsMsg11 from gpc to mps { doc /* RS-11 T−3秒 90% 未満の SSME があれば全 SSME を停止、IF-ORB-06 */ }
        message RS_12 of RsMsg12 from gpc to lcc { doc /* RS-12 停止後 RSLS が制御を GLS に戻す（SRB は非点火）、IF-ORB-17 */ }
        message RS_13 of RsMsg13 from lcc to gpc { doc /* RS-13 停止後 GLS の安全化プログラム（不可なら手動）、IF-ORB-17 */ }
        message RS_14 of RsMsg14 from crew to gpc { doc /* RS-14 停止後 G1→G9 の OPS 遷移 */ }
        message RS_15 of RsMsg15 from mcc to gpc { doc /* RS-15 停止後 乗員・KSC とも不可なら G1→G9 を指令、IF-ORB-16・IF-ORB-01 */ }
        message RS_16 of RsMsg16 from lcc to crew { doc /* RS-16 緊急時 NTD が脱出モードを指示（OAA を戻す） */ }
        first RS_01 then RS_02;
        first RS_02 then RS_03;
        first RS_03 then RS_04;
        first RS_04 then RS_05;
        first RS_05 then RS_06;
        first RS_06 then RS_07;
        first RS_07 then RS_08;
        first RS_08 then RS_09;
        first RS_09 then RS_10;
        first RS_10 then RS_11;
        first RS_11 then RS_12;
        first RS_12 then RS_13;
        first RS_13 then RS_14;
        first RS_14 then RS_15;
        first RS_15 then RS_16;
    }
    // ---- シナリオ：活動
    action def PayloadDeployment {
        doc /* 図96 RMS によるペイロード放出 活動図：RMS によるペイロードの放出（PRLA・エンドエフェクタの故障時の EVA と投棄を含む） */
        attribute prlaReleased : ScalarValues::Boolean { doc /* ガード：解放を確認 */ }
        attribute payloadReleased : ScalarValues::Boolean { doc /* ガード：放出できた */ }
        attribute evaReleaseAvailable : ScalarValues::Boolean { doc /* ガード：EVA を行える */ }
        action AC_PD_01 { doc /* AC-PD-01 肩ブレース解除・MPM 展開・MRL 解除 */ }
        action AC_PD_02 { doc /* AC-PD-02 エンドエフェクタでペイロードを把持 */ }
        action AC_PD_03 { doc /* AC-PD-03 ペイロード保持ラッチ（PRLA）を解放 */ }
        decide DC_PD_01;
            if prlaReleased then MG_PD_01;
            if not prlaReleased then AC_PD_04;
        action AC_PD_04 { doc /* AC-PD-04 EVA で PRLA を開く */ }
        merge MG_PD_01;
        action AC_PD_05 { doc /* AC-PD-05 取り出して放出の位置・向きへ運ぶ */ }
        action AC_PD_06 { doc /* AC-PD-06 デリジダイズしスネアを開いて放出 */ }
        decide DC_PD_02;
            if payloadReleased then MG_PD_02;
            if not payloadReleased then DC_PD_03;
        decide DC_PD_03;
            if evaReleaseAvailable then AC_PD_07;
            if not evaReleaseAvailable then AC_PD_08;
        action AC_PD_07 { doc /* AC-PD-07 EVA でエンドエフェクタを外す */ }
        action AC_PD_08 { doc /* AC-PD-08 アームとペイロードを一体で投棄 */ }
        merge MG_PD_02;
        action AC_PD_09 { doc /* AC-PD-09 RCS でオービタを分離（最小 ΔV まで） */ }
        first start then AC_PD_01;
        first AC_PD_01 then AC_PD_02;
        first AC_PD_02 then AC_PD_03;
        first AC_PD_03 then DC_PD_01;
        first AC_PD_04 then MG_PD_01;
        first MG_PD_01 then AC_PD_05;
        first AC_PD_05 then AC_PD_06;
        first AC_PD_06 then DC_PD_02;
        first AC_PD_07 then MG_PD_02;
        first AC_PD_08 then MG_PD_02;
        first MG_PD_02 then AC_PD_09;
        first AC_PD_09 then done;
    }
    action def AscentAbortSelection {
        doc /* 図97 上昇アボートの選択 活動図：上昇アボートのモード選択と TAL・ATO・AOA の流れ（1基のエンジン停止） */
        attribute before2EngineTal : ScalarValues::Boolean { doc /* ガード：2 ENGINE TAL より前 */ }
        attribute beforePressToAto : ScalarValues::Boolean { doc /* ガード：PRESS TO ATO より前 */ }
        attribute safeOrbitAchievable : ScalarValues::Boolean { doc /* ガード：安全な軌道に入れる */ }
        action AC_AB_01 { doc /* AC-AB-01 エンジン停止を検知し MCC の呼びかけを受ける */ }
        decide DC_AB_01;
            if before2EngineTal then AC_AB_02;
            if not before2EngineTal then DC_AB_02;
        action AC_AB_02 { doc /* AC-AB-02 RTLS を選ぶ（以後は図76） */ }
        decide DC_AB_02;
            if beforePressToAto then AC_AB_03;
            if not beforePressToAto then AC_AB_05;
        action AC_AB_03 { doc /* AC-AB-03 TAL を選び OMS 推進薬をダンプ */ }
        action AC_AB_04 { doc /* AC-AB-04 MECO・ET 分離の後 OPS 3 へ遷移 */ }
        action AC_AB_05 { doc /* AC-AB-05 ATO を選ぶ（必要なら MECO 前に OMS ダンプ） */ }
        action AC_AB_06 { doc /* AC-AB-06 MECO 後に OMS-1（共通目標） */ }
        decide DC_AB_03;
            if safeOrbitAchievable then AC_AB_07;
            if not safeOrbitAchievable then AC_AB_08;
        action AC_AB_07 { doc /* AC-AB-07 OMS-2 で約105 n.mi. の円軌道へ（ATO） */ }
        action AC_AB_08 { doc /* AC-AB-08 AOA：OPS 3 で OMS-2（離脱）噴射 */ }
        merge MG_AB_01;
        action AC_AB_09 { doc /* AC-AB-09 突入して TAL・AOA のサイトに着陸 */ }
        first start then AC_AB_01;
        first AC_AB_01 then DC_AB_01;
        first AC_AB_02 then done;
        first AC_AB_03 then AC_AB_04;
        first AC_AB_04 then MG_AB_01;
        first AC_AB_05 then AC_AB_06;
        first AC_AB_06 then DC_AB_03;
        first AC_AB_07 then done;
        first AC_AB_08 then MG_AB_01;
        first MG_AB_01 then AC_AB_09;
        first AC_AB_09 then done;
    }
    // ---- 実現（振る舞いの定義がユースケースを詳細化する）
    package Realization {
        #refinement dependency <'Ascent>UC-01'> from SSD_BEH_ORB_003::Ascent to SSD_UC_ORB_001::FinalCountdown;
        #refinement dependency <'RslsPadAbortSequence>UC-01'> from SSD_UC_ORB_001::RslsPadAbortSequence to SSD_UC_ORB_001::FinalCountdown;
        #refinement dependency <'RslsPadAbortSequence>UC-02'> from SSD_UC_ORB_001::RslsPadAbortSequence to SSD_UC_ORB_001::PadAbortSafing;
        #refinement dependency <'Ascent>UC-03'> from SSD_BEH_ORB_003::Ascent to SSD_UC_ORB_001::Ascent;
        #refinement dependency <'AscentAbortSelection>UC-04'> from SSD_UC_ORB_001::AscentAbortSelection to SSD_UC_ORB_001::AscentAbort;
        #refinement dependency <'MissionMode>UC-04'> from SSD_BEH_ORB_001::MissionMode to SSD_UC_ORB_001::AscentAbort;
        #refinement dependency <'Ascent>UC-05'> from SSD_BEH_ORB_003::Ascent to SSD_UC_ORB_001::OrbitInsertion;
        #refinement dependency <'MissionMode>UC-05'> from SSD_BEH_ORB_001::MissionMode to SSD_UC_ORB_001::OrbitInsertion;
        #refinement dependency <'PayloadDeployment>UC-06'> from SSD_UC_ORB_001::PayloadDeployment to SSD_UC_ORB_001::PayloadDeploy;
        #refinement dependency <'RendezvousDockingSequence>UC-07'> from SSD_UC_ORB_001::RendezvousDockingSequence to SSD_UC_ORB_001::RendezvousDocking;
        #refinement dependency <'EvaOperation>UC-08'> from SSD_BEH_ORB_004::EvaOperation to SSD_UC_ORB_001::ExtravehicularActivity;
        #refinement dependency <'DeorbitToLanding>UC-09'> from SSD_BEH_ORB_003::DeorbitToLanding to SSD_UC_ORB_001::DeorbitEntryLanding;
        #refinement dependency <'CommandTelemetryPath>UC-10'> from SSD_BEH_ORB_003::CommandTelemetryPath to SSD_UC_ORB_001::CommandAndTelemetry;
        #refinement dependency <'MpsHeliumLeakResponse>UC-11'> from SSD_BEH_ORB_002::MpsHeliumLeakResponse to SSD_UC_ORB_001::InFlightFailureResponse;
        #refinement dependency <'FuelCellCoolingLossResponse>UC-11'> from SSD_BEH_ORB_002::FuelCellCoolingLossResponse to SSD_UC_ORB_001::InFlightFailureResponse;
        #refinement dependency <'FireResponse>UC-11'> from SSD_BEH_ORB_002::FireResponse to SSD_UC_ORB_001::InFlightFailureResponse;
        #refinement dependency <'CabinLeakResponse>UC-11'> from SSD_BEH_ORB_004::CabinLeakResponse to SSD_UC_ORB_001::InFlightFailureResponse;
        #refinement dependency <'PayloadBayDoorCloseFailure>UC-12'> from SSD_BEH_ORB_004::PayloadBayDoorCloseFailure to SSD_UC_ORB_001::PayloadBayDoorFailure;
    }
}
