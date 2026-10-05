// SysML v2 テキスト：シーケンス（軌道離脱〜着陸・上昇・指令とテレメトリの経路）
// SSD-BEH-ORB-003 シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路） のライフライン・メッセージの表から生成（lib/build_docs_ab.py）。根拠の頁は SSD-BEH-ORB-003 にある。
package SSD_BEH_ORB_003 {
    doc /* SSD-BEH-ORB-003 シーケンス定義書（軌道離脱〜着陸・上昇・指令とテレメトリの経路）。図83・図84・図85 と同じライフラインとメッセージ。 */
    item def StartRadiatorColdsoak { doc /* 放熱器のコールドソークを始める（RAD CNTLR OUT TEMP を HI） */ }
    item def RadiatorBypass { doc /* 放熱器をバイパスしてコールドソークを保つ */ }
    item def ClosePayloadBayDoors { doc /* ペイロードベイドアの閉鎖を指令（SM PL BAY DOORS） */ }
    item def DoorCommand { doc /* ペイロードベイドアを閉じる（MDM→MCA） */ }
    item def Ops3Transition { doc /* GPC 1〜4 を PASS OPS 3、GPC 5 を BFS OPS 3 にする */ }
    item def StateVectorUplink { doc /* 状態ベクトルと離脱の目標をアップリンク */ }
    item def OmsGimbalCheck { doc /* OMS TVC のジンバル点検 */ }
    item def VentDoorClose { doc /* ベント扉の閉鎖を指令（GNC 51 OVERRIDE） */ }
    item def DeorbitGo { doc /* 離脱噴射の GO/NO-GO（OPS 302） */ }
    item def SingleApuStart { doc /* APU 1基を始動（低圧） */ }
    item def OmsIgnition { doc /* OMS を点火（離脱噴射、通常2〜3分） */ }
    item def Ops303Transition { doc /* OPS 303 へ進む */ }
    item def RemainingApuStart { doc /* 残る2基の APU を始動し、3基を通常圧力にする */ }
    item def HydraulicPressure { doc /* 油圧の供給（空力舵面・主エンジンのノズルの格納） */ }
    item def Ops304Transition { doc /* OPS 304 へ遷移 */ }
    item def UseRadiatorColdsoak { doc /* 放熱器のコールドソークの使用を始める */ }
    item def TakeTacan { doc /* TACAN を航法に取り込む GO */ }
    item def TakeAirData { doc /* エアデータを航法・誘導制御に取り込む GO */ }
    item def Ops305Auto { doc /* 自動で OPS 305 に遷移し TAEM 誘導に入る */ }
    item def GearDeploy { doc /* 脚を下げる（高度 300 ft） */ }
    item def DragChuteDeploy { doc /* ドラッグシュートを展開 */ }
    item def WheelsStopReport { doc /* 滑走停止を報告 */ }
    item def Ops901Transition { doc /* MCC の指示で GNC OPS 901 へ遷移 */ }
    item def Nh3BoilerOn { doc /* 放熱器を組み替え、必要なら NH3 ボイラを作動 */ }
    item def ApuShutdown { doc /* 主エンジンの再配置の後に APU/HYD を停止 */ }
    item def LaunchGo { doc /* 打上げの GO、イベントタイマの始動 */ }
    item def EssentialBusToFc { doc /* 必須母線を燃料電池につなぐ */ }
    item def ApuStart { doc /* APU を起動し圧力を確かめる */ }
    item def EtPressurization { doc /* ET の LO2・LH2 タンクを地上のヘリウムで加圧 */ }
    item def GroundPowerOff { doc /* 地上電源の供給を終える（以後は燃料電池が全電力） */ }
    item def RslsEnable { doc /* 機上の打上げシーケンス（RSLS）を有効にする */ }
    item def SsmeStart { doc /* SSME の始動を指令 */ }
    item def PropellantFlow { doc /* 液体水素の供給（MECO まで） */ }
    item def SrbIgnitionCommand { doc /* SRB の点火を指令（MEC 経由） */ }
    item def ThrottleDown { doc /* 推力を 72% に絞る（最大動圧の領域） */ }
    item def SrbSeparationCommand { doc /* SRB の分離を指令 */ }
    item def ThreeGThrottle { doc /* 加速度を 3g 以下に保つよう絞る */ }
    item def MecoCommand { doc /* MECO を指令 */ }
    item def EtSeparationCommand { doc /* ET の分離を指令 */ }
    item def MpsDump { doc /* MPS 推進薬の投棄を始める */ }
    item def ApuShutdownAscent { doc /* MCC と確認して APU を停止 */ }
    item def Oms2Burn { doc /* OMS-2 燃焼（約2分） */ }
    item def GroundCommand { doc /* 指令・音声を送る */ }
    item def ForwardLink { doc /* S帯 PM のフォワードリンク（72 kbps：音声2チャネルと指令 8 kbps） */ }
    item def DecodedCommand { doc /* NSP が指令を解読し FF MDM を経て GPC へ */ }
    item def SystemCommand { doc /* 指令を MDM を経て各系へ（例：MCA のモータの入切） */ }
    item def GcilCommand { doc /* 通信系の組替えの指令（PF MDM→GCIL） */ }
    item def SensorSignal { doc /* センサの信号を DSC で 0〜5 V に変換して MDM へ */ }
    item def OiData { doc /* OI MDM が PCMMU の要求でデータを選びデジタル化 */ }
    item def Downlist { doc /* GPC のダウンリストを PCMMU へ */ }
    item def Telemetry { doc /* 形式化したテレメトリを NSP へ */ }
    item def RecordedTelemetry { doc /* SSR に記録し、後でダウンリンク */ }
    item def ReturnLink { doc /* リターンリンク（192 kbps：音声2チャネルとテレメトリ 128 kbps） */ }
    item def GroundTelemetry { doc /* テレメトリ・音声を MCC へ */ }
    occurrence def DeorbitToLanding {
        doc /* 図83 軌道離脱〜着陸 シーケンス図：軌道離脱の準備から着陸後まで（標準の EOM） */
        part crew { doc /* 乗員（CDR・PLT・MS） */ }
        part mcc { doc /* 地上（MCC） */ }
        part gpc { doc /* GPC（DPS・GN&C） */ }
        part oms { doc /* 軌道制御系（OMS） */ }
        part apu { doc /* APU/HYD */ }
        part eclss { doc /* ECLSS（ATCS） */ }
        part mech { doc /* 機械系（ドア・ベント扉・脚・減速傘） */ }
        message DO_01 of StartRadiatorColdsoak from crew to eclss { doc /* DO-01 TIG−3:56 放熱器のコールドソークを始める（RAD CNTLR OUT TEMP を HI）、スイッチ */ }
        message DO_02 of RadiatorBypass from crew to eclss { doc /* DO-02 TIG−2:55 放熱器をバイパスしてコールドソークを保つ、スイッチ */ }
        message DO_03 of ClosePayloadBayDoors from crew to gpc { doc /* DO-03 TIG−2:40 ペイロードベイドアの閉鎖を指令（SM PL BAY DOORS）、表示・操作部 */ }
        message DO_04 of DoorCommand from gpc to mech { doc /* DO-04 TIG−2:40 ペイロードベイドアを閉じる（MDM→MCA）、IF-ORB-40 */ }
        message DO_05 of Ops3Transition from crew to gpc { doc /* DO-05 TIG−2:16 GPC 1〜4 を PASS OPS 3、GPC 5 を BFS OPS 3 にする、表示・操作部 */ }
        message DO_06 of StateVectorUplink from mcc to gpc { doc /* DO-06 TIG−1:42 状態ベクトルと離脱の目標をアップリンク、IF-ORB-16・IF-ORB-01 */ }
        message DO_07 of OmsGimbalCheck from crew to oms { doc /* DO-07 TIG−0:40 OMS TVC のジンバル点検、表示・操作部 */ }
        message DO_08 of VentDoorClose from crew to gpc { doc /* DO-08 TIG−0:25 ベント扉の閉鎖を指令（GNC 51 OVERRIDE）、表示・操作部 */ }
        message DO_09 of DoorCommand from gpc to mech { doc /* DO-09 TIG−0:25 ベント扉を閉じる、IF-ORB-40 */ }
        message DO_10 of DeorbitGo from mcc to crew { doc /* DO-10 TIG−0:25 離脱噴射の GO/NO-GO（OPS 302）、音声 */ }
        message DO_11 of SingleApuStart from crew to apu { doc /* DO-11 TIG−0:05 APU 1基を始動（低圧）、スイッチ */ }
        message DO_12 of OmsIgnition from gpc to oms { doc /* DO-12 TIG OMS を点火（離脱噴射、通常2〜3分）、IF-ORB-04 */ }
        message DO_13 of Ops303Transition from crew to gpc { doc /* DO-13 噴射後 OPS 303 へ進む、表示・操作部 */ }
        message DO_14 of RemainingApuStart from crew to apu { doc /* DO-14 EI−13:00 残る2基の APU を始動し、3基を通常圧力にする、スイッチ */ }
        message DO_15 of HydraulicPressure from apu to gpc { doc /* DO-15 EI−13:00 油圧の供給（空力舵面・主エンジンのノズルの格納）、IF-ORB-08 */ }
        message DO_16 of Ops304Transition from crew to gpc { doc /* DO-16 EI−5:00 OPS 304 へ遷移、表示・操作部 */ }
        message DO_17 of UseRadiatorColdsoak from crew to eclss { doc /* DO-17 EI+18:57 放熱器のコールドソークの使用を始める、スイッチ */ }
        message DO_18 of TakeTacan from mcc to crew { doc /* DO-18 EI+22:00 TACAN を航法に取り込む GO、音声 */ }
        message DO_19 of TakeAirData from mcc to crew { doc /* DO-19 EI+25:00 エアデータを航法・誘導制御に取り込む GO、音声 */ }
        message DO_20 of Ops305Auto from gpc to gpc { doc /* DO-20 EI+25:40 自動で OPS 305 に遷移し TAEM 誘導に入る */ }
        message DO_21 of DoorCommand from gpc to mech { doc /* DO-21 EI+25:55 前部・後部・中胴のベント扉を開く、IF-ORB-40 */ }
        message DO_22 of GearDeploy from crew to mech { doc /* DO-22 接地−0:20 脚を下げる（高度 300 ft）、スイッチ */ }
        message DO_23 of DragChuteDeploy from crew to mech { doc /* DO-23 接地+0:01 ドラッグシュートを展開、スイッチ */ }
        message DO_24 of WheelsStopReport from crew to mcc { doc /* DO-24 接地+0:42 滑走停止を報告、音声 */ }
        message DO_25 of Ops901Transition from crew to gpc { doc /* DO-25 着陸後 MCC の指示で GNC OPS 901 へ遷移、表示・操作部 */ }
        message DO_26 of Nh3BoilerOn from crew to eclss { doc /* DO-26 着陸後 放熱器を組み替え、必要なら NH3 ボイラを作動、スイッチ */ }
        message DO_27 of ApuShutdown from crew to apu { doc /* DO-27 着陸後 主エンジンの再配置の後に APU/HYD を停止、スイッチ */ }
        first DO_01 then DO_02;
        first DO_02 then DO_03;
        first DO_03 then DO_04;
        first DO_04 then DO_05;
        first DO_05 then DO_06;
        first DO_06 then DO_07;
        first DO_07 then DO_08;
        first DO_08 then DO_09;
        first DO_09 then DO_10;
        first DO_10 then DO_11;
        first DO_11 then DO_12;
        first DO_12 then DO_13;
        first DO_13 then DO_14;
        first DO_14 then DO_15;
        first DO_15 then DO_16;
        first DO_16 then DO_17;
        first DO_17 then DO_18;
        first DO_18 then DO_19;
        first DO_19 then DO_20;
        first DO_20 then DO_21;
        first DO_21 then DO_22;
        first DO_22 then DO_23;
        first DO_23 then DO_24;
        first DO_24 then DO_25;
        first DO_25 then DO_26;
        first DO_26 then DO_27;
    }
    occurrence def Ascent {
        doc /* 図84 上昇 シーケンス図：打上げの GO から OMS-2 まで（直接投入） */
        part lps { doc /* 地上（打上げ処理システム） */ }
        part crew { doc /* 乗員 */ }
        part gpc { doc /* GPC（DPS・GN&C） */ }
        part eps { doc /* 電力系（EPS） */ }
        part apu { doc /* APU/HYD */ }
        part mps { doc /* 主推進系（MPS） */ }
        part et { doc /* 外部タンク（ET） */ }
        part srb { doc /* SRB */ }
        part oms { doc /* 軌道制御系（OMS） */ }
        message AS_01 of LaunchGo from lps to crew { doc /* AS-01 T−9分 打上げの GO、イベントタイマの始動、音声 */ }
        message AS_02 of EssentialBusToFc from crew to eps { doc /* AS-02 T−8分 必須母線を燃料電池につなぐ、スイッチ */ }
        message AS_03 of ApuStart from crew to apu { doc /* AS-03 T−5分 APU を起動し圧力を確かめる、スイッチ */ }
        message AS_04 of EtPressurization from lps to mps { doc /* AS-04 T−2分55秒 ET の LO2・LH2 タンクを地上のヘリウムで加圧、IF-ORB-29 */ }
        message AS_05 of GroundPowerOff from lps to eps { doc /* AS-05 T−50秒 地上電源の供給を終える（以後は燃料電池が全電力）、IF-ORB-31 */ }
        message AS_06 of RslsEnable from lps to gpc { doc /* AS-06 T−31秒 機上の打上げシーケンス（RSLS）を有効にする、IF-ORB-17 */ }
        message AS_07 of SsmeStart from gpc to mps { doc /* AS-07 T−6.6秒 SSME の始動を指令、IF-ORB-06 */ }
        message AS_08 of PropellantFlow from et to mps { doc /* AS-08 T−6.6秒 液体水素の供給（MECO まで）、IF-ORB-15 */ }
        message AS_09 of SrbIgnitionCommand from gpc to srb { doc /* AS-09 T−0 SRB の点火を指令（MEC 経由）、IF-ORB-26 */ }
        message AS_10 of ThrottleDown from gpc to mps { doc /* AS-10 MET 0:30 推力を 72% に絞る（最大動圧の領域）、IF-ORB-06 */ }
        message AS_11 of SrbSeparationCommand from gpc to srb { doc /* AS-11 MET 約2:00 SRB の分離を指令、IF-ORB-26 */ }
        message AS_12 of ThreeGThrottle from gpc to mps { doc /* AS-12 MET 約7:30 加速度を 3g 以下に保つよう絞る、IF-ORB-06 */ }
        message AS_13 of MecoCommand from gpc to mps { doc /* AS-13 MET 約8:30 MECO を指令、IF-ORB-06 */ }
        message AS_14 of EtSeparationCommand from gpc to et { doc /* AS-14 MECO 後 ET の分離を指令、IF-ORB-25 */ }
        message AS_15 of MpsDump from gpc to mps { doc /* AS-15 MECO+2分 MPS 推進薬の投棄を始める、IF-ORB-06 */ }
        message AS_16 of ApuShutdownAscent from crew to apu { doc /* AS-16 MET 約12:55 MCC と確認して APU を停止、スイッチ */ }
        message AS_17 of Oms2Burn from gpc to oms { doc /* AS-17 OMS-2 OMS-2 燃焼（約2分）、IF-ORB-04 */ }
        first AS_01 then AS_02;
        first AS_02 then AS_03;
        first AS_03 then AS_04;
        first AS_04 then AS_05;
        first AS_05 then AS_06;
        first AS_06 then AS_07;
        first AS_07 then AS_08;
        first AS_08 then AS_09;
        first AS_09 then AS_10;
        first AS_10 then AS_11;
        first AS_11 then AS_12;
        first AS_12 then AS_13;
        first AS_13 then AS_14;
        first AS_14 then AS_15;
        first AS_15 then AS_16;
        first AS_16 then AS_17;
    }
    occurrence def CommandTelemetryPath {
        doc /* 図85 指令・テレメトリ経路 シーケンス図：地上からの指令と、機上のテレメトリが地上へ戻るまでの経路（S帯 PM） */
        part mcc { doc /* 地上（MCC） */ }
        part net { doc /* 追跡・通信網（TDRS・地上局） */ }
        part sband { doc /* C&T：S帯 PM（トランスポンダ・NSP） */ }
        part gpc { doc /* DPS：FF・PF MDM と GPC */ }
        part system { doc /* 各系（例：機械系の MCA） */ }
        part inst { doc /* C&T：計装（DSC・OI MDM・PCMMU・SSR） */ }
        message CM_01 of GroundCommand from mcc to net { doc /* CM-01  指令・音声を送る */ }
        message CM_02 of ForwardLink from net to sband { doc /* CM-02  S帯 PM のフォワードリンク（72 kbps：音声2チャネルと指令 8 kbps）、IF-CT-01 */ }
        message CM_03 of DecodedCommand from sband to gpc { doc /* CM-03  NSP が指令を解読し FF MDM を経て GPC へ、IF-CT-05 */ }
        message CM_04 of SystemCommand from gpc to system { doc /* CM-04  指令を MDM を経て各系へ（例：MCA のモータの入切）、IF-ORB-40 */ }
        message CM_05 of GcilCommand from gpc to sband { doc /* CM-05  通信系の組替えの指令（PF MDM→GCIL）、IF-CT-07 */ }
        message CM_06 of SensorSignal from system to inst { doc /* CM-06  センサの信号を DSC で 0〜5 V に変換して MDM へ */ }
        message CM_07 of OiData from inst to inst { doc /* CM-07  OI MDM が PCMMU の要求でデータを選びデジタル化 */ }
        message CM_08 of Downlist from gpc to inst { doc /* CM-08  GPC のダウンリストを PCMMU へ、IF-CT-06 */ }
        message CM_09 of Telemetry from inst to sband { doc /* CM-09  形式化したテレメトリを NSP へ、IF-CT-14 */ }
        message CM_10 of RecordedTelemetry from inst to inst { doc /* CM-10  SSR に記録し、後でダウンリンク */ }
        message CM_11 of ReturnLink from sband to net { doc /* CM-11  リターンリンク（192 kbps：音声2チャネルとテレメトリ 128 kbps）、IF-CT-01 */ }
        message CM_12 of GroundTelemetry from net to mcc { doc /* CM-12  テレメトリ・音声を MCC へ */ }
        first CM_01 then CM_02;
        first CM_02 then CM_03;
        first CM_03 then CM_04;
        first CM_04 then CM_05;
        first CM_05 then CM_06;
        first CM_06 then CM_07;
        first CM_07 then CM_08;
        first CM_08 then CM_09;
        first CM_09 then CM_10;
        first CM_10 then CM_11;
        first CM_11 then CM_12;
    }
}
