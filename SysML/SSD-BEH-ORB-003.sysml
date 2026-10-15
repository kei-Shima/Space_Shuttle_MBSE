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
    item def CabinFanSwitchSelect { doc /* パネル L1 の CABIN FAN A・B スイッチで、運転するキャビンファンを選んで起動・停止する。 */ }
    item def CabinFanRunCommand { doc /* 運用規則に従って選んだキャビンファンを起動・停止する指令を渡す。 */ }
    item def BayFanSwitchSelect { doc /* パネル L1 の AV BAY 1・2・3 FAN A・B スイッチで、各ベイの運転するファンを選ぶ。 */ }
    item def BayFanRunCommand { doc /* 運用規則に従って選んだベイファンを入切りする指令を渡す。打上げ時には各ベイの1台のファンが運転済みである。 */ }
    item def ImuFanSwitchSelect { doc /* パネル L1 の IMU FAN A・B・C スイッチで、運転する IMU ファンを選ぶ。 */ }
    item def ImuFanRunCommand { doc /* 運用規則と故障処置手順に従って選んだ IMU ファンを入切する指令を渡す。ON でファンが回り、OFF で止まる。 */ }
    item def ImuFanSpeedDpData { doc /* IMU FAN 信号調整器が給電する回転数センサの出力と、ΔP センサの差圧を渡す。 */ }
    item def CabinFanDpSignal { doc /* キャビンファン差圧を、主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示へ送る。 */ }
    item def BayAirTempSignal { doc /* ファン下流の温度センサのデータを、AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104 へ送る。ベイ温度は SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも出る。 */ }
    item def BayFanDpDisplay { doc /* ファン差圧を SM SYS SUMM 2（DISP 79）に表示し、SPEC 66 の限界外で SM 警報を出す。 */ }
    item def ImuFanStatusDisplay { doc /* IMU ファンの状態（運転中の「*」・回転数低下の「↓」）を、SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、限界外で S66 IMU FAN DP・S66 IMU FN SPD の SM アラートを出す。IMU ファン差圧は BFS の SM SYS SUMM 1 にも出る。 */ }
    item def AirLoopAlertAnnunciation { doc /* SM の表示と、主 C&W の AV BAY/CABIN AIR 灯・SM アラートを、乗員に見せる。 */ }
    item def CabinFanLossBasis { doc /* 差圧の表示と警報を、キャビンファンの喪失判定（A17-101）と切替・点検の判断に使うために渡す。 */ }
    item def BayFanLossBasis { doc /* ベイ温度とファン差圧の表示・警報を、ファンの喪失判定（A17-103）と切替・処置の判断に使うために渡す。 */ }
    item def ImuFanLossBasis { doc /* ΔP と回転数の表示・SM アラートを、IMU ファンの喪失判定（A17-104）とファンの切替の判断に使うために渡す。ΔP が失われたときは回転数センサの「↓」で故障を監視する。 */ }
    item def RcrsSwitchInput { doc /* 乗員がパネル MO51F のモードスイッチ（OPER/STBY）と電源スイッチを操作する */ }
    item def RcrsControllerSelect { doc /* 運用規則と故障処置に従って制御器を起動・停止し、故障時は他方の制御器に切り替える */ }
    item def VacuumCycleValveDrive { doc /* 作動中の制御器が真空サイクル弁のアクチュエータ A・B を回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える */ }
    item def PressureEqualizeCommand { doc /* 作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save 圧縮機を動かす */ }
    item def BedSensorInput { doc /* ベッド圧力・ベッド差圧などの計測値を作動中の制御器に入力し、故障検知に使わせる */ }
    item def RcrsMeasurementDisplay { doc /* RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM に送り、SPEC 66 ENVIRONMENT の右下に表示させる */ }
    item def RcrsControllerFault { doc /* 制御器の状態を SPEC 66 に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にして、SM メッセージ S66 CO2 RL SYS を出させる */ }
    item def RcrsDisplayToCrew { doc /* SPEC 66 の表示と SM メッセージを乗員に示す */ }
    item def RcrsLossJudgement { doc /* PPCO2 と RCRS の表示・SM メッセージを、RCRS の喪失判定と故障処置の判断に使わせる */ }
    item def WaterLoopSwitchInput { doc /* 乗員がパネル L1 の H2O PUMP LOOP スイッチと BYPASS MODE スイッチを操作する */ }
    item def WaterPumpSelect { doc /* H2O PUMP LOOP 1 の A/B 選択と GPC/OFF/ON スイッチで、運転するポンプを選び起動・停止する */ }
    item def BypassModeCommand { doc /* LOOP 1・2 BYPASS MODE スイッチで自動・手動を選び、手動では MAN INCR/DECR スイッチでバイパス弁の位置を調整する */ }
    item def PumpOutletTemperature { doc /* 自動モードでは、バイパス制御器がポンプ出口温度を設定値 63.0 ± 2.5°F と比べてバイパス弁を開閉する */ }
    item def WaterLoopLossJudgement { doc /* ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS 水ループの喪失判定とループ切替の判断に使わせる */ }
    item def PressureValveConfig { doc /* 選んだ系統のキャビンレギュレータ入口弁と O2 レギュレータ入口弁の開、O2/N2 制御弁の AUTO（軌道上）、または全閉と PCS 1 だけ開（上昇・再突入）を渡す */ }
    item def O2BleedOrificeCommand { doc /* PPO2 が3.20 psia 未満なら就寝前の O2 ブリードオリフィスの取り付け、帰還日の取り外しと、直接 O2 弁の使い方を渡す */ }
    item def EquivalentDpDt { doc /* 14.7 psia に換算した等価の dP/dT を渡し、緊急中止・AOA の判定に使わせる */ }
    item def CabinLeakJudgment { doc /* 漏れの判定（0.15 psia/min 超は緊急中止、0.02〜0.15 は AOA 中止）の結果を伝え、処置を促す */ }
    item def SupplyWaterDisplayData { doc /* 給水タンク量 A〜D と給水圧を、軌道上は PASS SM の SPEC 66、上昇・再突入は BFS の THERMAL 表示へ送る */ }
    item def DumpTempData { doc /* 給水・廃水のダンプ配管温度とノズル温度 A・B を SPEC 66 へ送り、45°F未満・125°F超・250°F超で SM アラートを出させる */ }
    item def FanSepSelection { doc /* FAN SEP 選択スイッチでファンセパレータを選び、MODE スイッチを操作する */ }
    item def FanSeparatorCommand { doc /* 選んだファンセパレータを指令する（MODE が AUTO なら小便器のホースを外すと起動、リミットスイッチ故障時はバイパススイッチで交流を供給） */ }
    item def ModeSwitchSelection { doc /* MODE スイッチを OFF から動かし、COMMODE/MANUAL/EMU にする */ }
    item def CommodeInterlockCommand { doc /* MODE スイッチの位置を渡し、OFF の間は COMMODE CONTROL ハンドルを動かせないよう連動させる */ }
    item def VacuumValveSwitch { doc /* VACUUM VALVE のスイッチを操作する（軌道上は通常開、打上げ・再突入は閉） */ }
    item def VacuumVentCommand { doc /* 便器への真空ベント管を開閉する指令を渡す。真空ベント隔離弁は ML31C のスイッチで開閉する */ }
    item def VacVentNozzleTemp { doc /* 真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT へ送る。非常時は廃棄物収集器の圧力が1 psia 未満で5分続けば便器を再開できる */ }
    item def AirlockMeasurements { doc /* エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK へ、エアロック圧力を DISP 66 へも送る */ }
    item def SmokeTripSignal { doc /* 煙感知器が警報条件を満たし、トリップ信号を出して、パネル L1 の該当する SMOKE DETECTION 灯を点灯させる。 */ }
    item def SmokeConcentrationData { doc /* 各感知器の濃度のアナログ出力を GPC へ送り、SM SYS SUMM 1 に表示させる（2.0 mg/m3 でバックアップ C&W が警報を出す）。 */ }
    item def SmokeAlarmAnnunciation { doc /* 煙警報で C&W のサイレンを鳴らし、4つの MASTER ALARM 表示を点灯させる。 */ }
    item def FireIndicationCue { doc /* SMOKE DETECTION 灯・サイレンと DPS 表示の濃度を渡し、乗員が火災の位置を特定して実際の火災かを確かめる。 */ }
    item def SensorResetTestCommand { doc /* SENSOR RESET で感知器の論理回路をリセットし、CIRCUIT TEST で感知器に 28 V を加えて灯と時間遅れを試験する。 */ }
    item def BayHalonDischargeCommand { doc /* ベイの火災を確認したら、そのベイの Halon ボトルを放出し、ベイファンを止める。 */ }
    item def CabinHalonDischargeAction { doc /* 乗員室の火災では、火元を特定して確かめたうえで、キャビンファンを止めヘルメットを着け、携帯の Halon ボトルを消火ポートへ放出する。 */ }
    item def FdsTelemetryParameters { doc /* 煙検知系と遠隔消火系の各種パラメータをテレメトリへ送る（MCC は空ボトルは分かるが、放出の時刻は分からない）。 */ }
    item def CabinTempSwitchInput { doc /* パネル L1 の CABIN TEMP CNTRL スイッチでコントローラを選び、CABIN TEMP ロータリスイッチで温度を選ぶ */ }
    item def CabinTempSelection { doc /* 選んだコントローラと温度を温度制御弁の制御へ渡す */ }
    item def HumiditySepSwitchInput { doc /* パネル L1 の HUMIDITY SEP A・B スイッチ（ON–OFF）を操作する */ }
    item def HumiditySepPowerCommand { doc /* 湿度分離器 A・B の電源を個別に入切りする */ }
    item def DuctTempControlData { doc /* 有効なコントローラが給気ダクトと還流ダクトの温度を検知し、選ばれた温度に制御する */ }
    item def SeparatorSpeedSignal { doc /* 回転数センサの信号で、湿度分離器が正常に回っているかを検知する */ }
    item def EnvironmentDisplayData { doc /* 湿度分離器 A・B の運転状態（HUMID SEP）とキャビン温度（CABIN T）を SM へ送り、SPEC 66 ENVIRONMENT に表示する */ }
    item def HumidSepAlert { doc /* 運転中の分離器の回転数が下がると、SM の警報「S66 HUMID SEP A(B)」を出す */ }
    item def AtmosphereLossJudgementData { doc /* 熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う */ }
    item def ManualBypassValvePin { doc /* コントローラで弁を制御できない場合は、MD44F で弁アームを4つの固定穴の一つにピン止めする */ }
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
    occurrence def ArsAirOperations {
        doc /* 図238 ARS 空気系の運転と監視 シーケンス図：ARS 空気系の運転と監視 */
        part crew { doc /* 乗員 */ }
        part cacFanOps { doc /* キャビンファン運用管理 */ }
        part cacFan { doc /* キャビンファン */ }
        part cacMon { doc /* キャビン空気の監視・表示 */ }
        part avbOps { doc /* ベイ冷却運用管理 */ }
        part avbFan { doc /* ベイファン */ }
        part avbMon { doc /* ベイ冷却の監視・表示 */ }
        part imuOps { doc /* IMU ファン運用管理 */ }
        part imuFan { doc /* IMU ファン */ }
        part imuMon { doc /* IMU ファン監視・表示 */ }
        part dps { doc /* DPS・アビオニクス */ }
        message QA_01 of CabinFanSwitchSelect from crew to cacFanOps { doc /* QA-01  パネル L1 の CABIN FAN A・B スイッチで、運転するキャビンファンを選んで起動・停止する。、スイッチ */ }
        message QA_02 of CabinFanRunCommand from cacFanOps to cacFan { doc /* QA-02  運用規則に従って選んだキャビンファンを起動・停止する指令を渡す。、IF-CAC-10 */ }
        message QA_03 of BayFanSwitchSelect from crew to avbOps { doc /* QA-03  パネル L1 の AV BAY 1・2・3 FAN A・B スイッチで、各ベイの運転するファンを選ぶ。、スイッチ */ }
        message QA_04 of BayFanRunCommand from avbOps to avbFan { doc /* QA-04  運用規則に従って選んだベイファンを入切りする指令を渡す。打上げ時には各ベイの1台のファンが運転済みである。、IF-AVB-08 */ }
        message QA_05 of ImuFanSwitchSelect from crew to imuOps { doc /* QA-05  パネル L1 の IMU FAN A・B・C スイッチで、運転する IMU ファンを選ぶ。、スイッチ */ }
        message QA_06 of ImuFanRunCommand from imuOps to imuFan { doc /* QA-06  運用規則と故障処置手順に従って選んだ IMU ファンを入切する指令を渡す。ON でファンが回り、OFF で止まる。、IF-IMU-07 */ }
        message QA_07 of ImuFanSpeedDpData from imuFan to imuMon { doc /* QA-07  IMU FAN 信号調整器が給電する回転数センサの出力と、ΔP センサの差圧を渡す。、IF-IMU-05 */ }
        message QA_08 of CabinFanDpSignal from cacMon to dps { doc /* QA-08  キャビンファン差圧を、主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示へ送る。、IF-CAC-12・IF-ARS-25 */ }
        message QA_09 of BayAirTempSignal from avbMon to dps { doc /* QA-09  ファン下流の温度センサのデータを、AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104 へ送る。ベイ温度は SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも出る。、IF-AVB-13・IF-ARS-28 */ }
        message QA_10 of BayFanDpDisplay from avbMon to dps { doc /* QA-10  ファン差圧を SM SYS SUMM 2（DISP 79）に表示し、SPEC 66 の限界外で SM 警報を出す。、IF-AVB-14 */ }
        message QA_11 of ImuFanStatusDisplay from imuMon to dps { doc /* QA-11  IMU ファンの状態（運転中の「*」・回転数低下の「↓」）を、SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、限界外で S66 IMU FAN DP・S66 IMU FN SPD の SM アラートを出す。IMU ファン差圧は BFS の SM SYS SUMM 1 にも出る。、IF-IMU-10・IF-ARS-29 */ }
        message QA_12 of AirLoopAlertAnnunciation from dps to crew { doc /* QA-12  SM の表示と、主 C&W の AV BAY/CABIN AIR 灯・SM アラートを、乗員に見せる。、表示・警報灯 */ }
        message QA_13 of CabinFanLossBasis from cacMon to cacFanOps { doc /* QA-13  差圧の表示と警報を、キャビンファンの喪失判定（A17-101）と切替・点検の判断に使うために渡す。、IF-CAC-11 */ }
        message QA_14 of BayFanLossBasis from avbMon to avbOps { doc /* QA-14  ベイ温度とファン差圧の表示・警報を、ファンの喪失判定（A17-103）と切替・処置の判断に使うために渡す。、IF-AVB-12 */ }
        message QA_15 of ImuFanLossBasis from imuMon to imuOps { doc /* QA-15  ΔP と回転数の表示・SM アラートを、IMU ファンの喪失判定（A17-104）とファンの切替の判断に使うために渡す。ΔP が失われたときは回転数センサの「↓」で故障を監視する。、IF-IMU-12 */ }
        first QA_01 then QA_02;
        first QA_02 then QA_03;
        first QA_03 then QA_04;
        first QA_04 then QA_05;
        first QA_05 then QA_06;
        first QA_06 then QA_07;
        first QA_07 then QA_08;
        first QA_08 then QA_09;
        first QA_09 then QA_10;
        first QA_10 then QA_11;
        first QA_11 then QA_12;
        first QA_12 then QA_13;
        first QA_13 then QA_14;
        first QA_14 then QA_15;
    }
    occurrence def RcrsWaterLoopOperations {
        doc /* 図239 RCRS と水冷却ループの運転と監視 シーケンス図：RCRS と水冷却ループの運転と監視 */
        part crew { doc /* 乗員 */ }
        part rcrsOps { doc /* RCRS 運用管理 */ }
        part rcrsCtl { doc /* RCRS 制御器 */ }
        part rcrsBed { doc /* RCRS ベッド */ }
        part rcrsUsc { doc /* RCRS 空気回収・均圧 */ }
        part rcrsMon { doc /* RCRS 計装・表示 */ }
        part dps { doc /* DPS（SM 表示） */ }
        part wclOps { doc /* 水ループ運用管理 */ }
        part wclPmp { doc /* ポンプパッケージ */ }
        part wclIch { doc /* インターチェンジャ・バイパス */ }
        part wclMon { doc /* 水ループ監視 */ }
        message QB_01 of RcrsSwitchInput from crew to rcrsOps { doc /* QB-01  乗員がパネル MO51F のモードスイッチ（OPER/STBY）と電源スイッチを操作する、パネル MO51F（スイッチ） */ }
        message QB_02 of RcrsControllerSelect from rcrsOps to rcrsCtl { doc /* QB-02  運用規則と故障処置に従って制御器を起動・停止し、故障時は他方の制御器に切り替える、IF-RCRS-14 */ }
        message QB_03 of VacuumCycleValveDrive from rcrsCtl to rcrsBed { doc /* QB-03  作動中の制御器が真空サイクル弁のアクチュエータ A・B を回し、ベッドの空気ポペットと真空ポペットを開閉して吸着と再生を切り替える、IF-RCRS-05 */ }
        message QB_04 of PressureEqualizeCommand from rcrsCtl to rcrsUsc { doc /* QB-04  作動中の制御器が工程に応じて均圧弁を開閉し、ullage-save 圧縮機を動かす、IF-RCRS-06 */ }
        message QB_05 of BedSensorInput from rcrsMon to rcrsCtl { doc /* QB-05  ベッド圧力・ベッド差圧などの計測値を作動中の制御器に入力し、故障検知に使わせる、IF-RCRS-09 */ }
        message QB_06 of RcrsMeasurementDisplay from rcrsMon to dps { doc /* QB-06  RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM に送り、SPEC 66 ENVIRONMENT の右下に表示させる、IF-RCRS-10・IF-ARS-26 */ }
        message QB_07 of RcrsControllerFault from rcrsCtl to dps { doc /* QB-07  制御器の状態を SPEC 66 に示し、故障で停止すると故障ディスクリートのテレメトリを6秒間「1」にして、SM メッセージ S66 CO2 RL SYS を出させる、IF-RCRS-11・IF-ARS-26 */ }
        message QB_08 of RcrsDisplayToCrew from dps to crew { doc /* QB-08  SPEC 66 の表示と SM メッセージを乗員に示す、SM 表示 */ }
        message QB_09 of RcrsLossJudgement from rcrsMon to rcrsOps { doc /* QB-09  PPCO2 と RCRS の表示・SM メッセージを、RCRS の喪失判定と故障処置の判断に使わせる、IF-RCRS-15 */ }
        message QB_10 of WaterLoopSwitchInput from crew to wclOps { doc /* QB-10  乗員がパネル L1 の H2O PUMP LOOP スイッチと BYPASS MODE スイッチを操作する、パネル L1（スイッチ） */ }
        message QB_11 of WaterPumpSelect from wclOps to wclPmp { doc /* QB-11  H2O PUMP LOOP 1 の A/B 選択と GPC/OFF/ON スイッチで、運転するポンプを選び起動・停止する、IF-WCL-09 */ }
        message QB_12 of BypassModeCommand from wclOps to wclIch { doc /* QB-12  LOOP 1・2 BYPASS MODE スイッチで自動・手動を選び、手動では MAN INCR/DECR スイッチでバイパス弁の位置を調整する、IF-WCL-10 */ }
        message QB_13 of PumpOutletTemperature from wclPmp to wclIch { doc /* QB-13  自動モードでは、バイパス制御器がポンプ出口温度を設定値 63.0 ± 2.5°F と比べてバイパス弁を開閉する、IF-WCL-06 */ }
        message QB_14 of WaterLoopLossJudgement from wclMon to wclOps { doc /* QB-14  ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度などを、ARS 水ループの喪失判定とループ切替の判断に使わせる、IF-WCL-11 */ }
        first QB_01 then QB_02;
        first QB_02 then QB_03;
        first QB_03 then QB_04;
        first QB_04 then QB_05;
        first QB_05 then QB_06;
        first QB_06 then QB_07;
        first QB_07 then QB_08;
        first QB_08 then QB_09;
        first QB_09 then QB_10;
        first QB_10 then QB_11;
        first QB_11 then QB_12;
        first QB_12 then QB_13;
        first QB_13 then QB_14;
    }
    occurrence def PressureWaterWasteOperations {
        doc /* 図240 与圧・給水・廃棄物・エアロックの運転と表示 シーケンス図：与圧・給水・廃棄物・エアロックの運転と表示 */
        part crew { doc /* 乗員 */ }
        part pcsOps { doc /* 与圧運用管理 */ }
        part pcsMnf { doc /* 与圧系のマニホールド・弁構成 */ }
        part pcsO2s { doc /* O2 供給（与圧） */ }
        part pcsMon { doc /* 与圧の監視 */ }
        part wcsOps { doc /* WCS 運用管理 */ }
        part wcsFsp { doc /* ファンセパレータ */ }
        part wcsCmd { doc /* コモード操作 */ }
        part wcsVac { doc /* 真空ベント */ }
        part h2oSys { doc /* 給水・廃水系 */ }
        part alsMon { doc /* エアロック計測 */ }
        part dps { doc /* DPS（SM 表示・警報） */ }
        message QC_01 of PressureValveConfig from pcsOps to pcsMnf { doc /* QC-01  選んだ系統のキャビンレギュレータ入口弁と O2 レギュレータ入口弁の開、O2/N2 制御弁の AUTO（軌道上）、または全閉と PCS 1 だけ開（上昇・再突入）を渡す、IF-PCS-16 */ }
        message QC_02 of O2BleedOrificeCommand from pcsOps to pcsO2s { doc /* QC-02  PPO2 が3.20 psia 未満なら就寝前の O2 ブリードオリフィスの取り付け、帰還日の取り外しと、直接 O2 弁の使い方を渡す、IF-PCS-17 */ }
        message QC_03 of EquivalentDpDt from pcsMon to pcsOps { doc /* QC-03  14.7 psia に換算した等価の dP/dT を渡し、緊急中止・AOA の判定に使わせる、IF-PCS-15 */ }
        message QC_04 of CabinLeakJudgment from pcsOps to crew { doc /* QC-04  漏れの判定（0.15 psia/min 超は緊急中止、0.02〜0.15 は AOA 中止）の結果を伝え、処置を促す */ }
        message QC_05 of SupplyWaterDisplayData from h2oSys to dps { doc /* QC-05  給水タンク量 A〜D と給水圧を、軌道上は PASS SM の SPEC 66、上昇・再突入は BFS の THERMAL 表示へ送る、IF-H2O-05 */ }
        message QC_06 of DumpTempData from h2oSys to dps { doc /* QC-06  給水・廃水のダンプ配管温度とノズル温度 A・B を SPEC 66 へ送り、45°F未満・125°F超・250°F超で SM アラートを出させる、IF-H2O-12 */ }
        message QC_07 of FanSepSelection from crew to wcsOps { doc /* QC-07  FAN SEP 選択スイッチでファンセパレータを選び、MODE スイッチを操作する */ }
        message QC_08 of FanSeparatorCommand from wcsOps to wcsFsp { doc /* QC-08  選んだファンセパレータを指令する（MODE が AUTO なら小便器のホースを外すと起動、リミットスイッチ故障時はバイパススイッチで交流を供給）、IF-WCS-13 */ }
        message QC_09 of ModeSwitchSelection from crew to wcsOps { doc /* QC-09  MODE スイッチを OFF から動かし、COMMODE/MANUAL/EMU にする */ }
        message QC_10 of CommodeInterlockCommand from wcsOps to wcsCmd { doc /* QC-10  MODE スイッチの位置を渡し、OFF の間は COMMODE CONTROL ハンドルを動かせないよう連動させる、IF-WCS-14 */ }
        message QC_11 of VacuumValveSwitch from crew to wcsOps { doc /* QC-11  VACUUM VALVE のスイッチを操作する（軌道上は通常開、打上げ・再突入は閉） */ }
        message QC_12 of VacuumVentCommand from wcsOps to wcsVac { doc /* QC-12  便器への真空ベント管を開閉する指令を渡す。真空ベント隔離弁は ML31C のスイッチで開閉する、IF-WCS-15 */ }
        message QC_13 of VacVentNozzleTemp from wcsVac to dps { doc /* QC-13  真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT へ送る。非常時は廃棄物収集器の圧力が1 psia 未満で5分続けば便器を再開できる、IF-WCS-12・IF-ECL-37 */ }
        message QC_14 of AirlockMeasurements from alsMon to dps { doc /* QC-14  エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK へ、エアロック圧力を DISP 66 へも送る、IF-ALS-10・IF-ECL-38 */ }
        first QC_01 then QC_02;
        first QC_02 then QC_03;
        first QC_03 then QC_04;
        first QC_04 then QC_05;
        first QC_05 then QC_06;
        first QC_06 then QC_07;
        first QC_07 then QC_08;
        first QC_08 then QC_09;
        first QC_09 then QC_10;
        first QC_10 then QC_11;
        first QC_11 then QC_12;
        first QC_12 then QC_13;
        first QC_13 then QC_14;
    }
    occurrence def SmokeDetectionAndSuppression {
        doc /* 図241 煙検知と消火 シーケンス図：煙検知と消火 */
        part smokeDetector { doc /* 煙感知器 */ }
        part smokeAlarm { doc /* 煙警報 */ }
        part dpsAvionics { doc /* DPS・アビオニクス */ }
        part fireOps { doc /* 火災対応・運用管理 */ }
        part bayFireExt { doc /* 遠隔消火（ベイ） */ }
        part portableExt { doc /* 携帯消火器・消火ポート */ }
        message QD_01 of SmokeTripSignal from smokeDetector to smokeAlarm { doc /* QD-01  煙感知器が警報条件を満たし、トリップ信号を出して、パネル L1 の該当する SMOKE DETECTION 灯を点灯させる。、IF-FDS-02 */ }
        message QD_02 of SmokeConcentrationData from smokeDetector to dpsAvionics { doc /* QD-02  各感知器の濃度のアナログ出力を GPC へ送り、SM SYS SUMM 1 に表示させる（2.0 mg/m3 でバックアップ C&W が警報を出す）。、IF-FDS-03・IF-ECL-18 */ }
        message QD_03 of SmokeAlarmAnnunciation from smokeAlarm to dpsAvionics { doc /* QD-03  煙警報で C&W のサイレンを鳴らし、4つの MASTER ALARM 表示を点灯させる。、IF-FDS-06 */ }
        message QD_04 of FireIndicationCue from smokeAlarm to fireOps { doc /* QD-04  SMOKE DETECTION 灯・サイレンと DPS 表示の濃度を渡し、乗員が火災の位置を特定して実際の火災かを確かめる。、IF-FDS-07 */ }
        message QD_05 of SensorResetTestCommand from smokeAlarm to smokeDetector { doc /* QD-05  SENSOR RESET で感知器の論理回路をリセットし、CIRCUIT TEST で感知器に 28 V を加えて灯と時間遅れを試験する。、IF-FDS-05 */ }
        message QD_06 of BayHalonDischargeCommand from fireOps to bayFireExt { doc /* QD-06  ベイの火災を確認したら、そのベイの Halon ボトルを放出し、ベイファンを止める。、IF-FDS-13 */ }
        message QD_07 of CabinHalonDischargeAction from fireOps to portableExt { doc /* QD-07  乗員室の火災では、火元を特定して確かめたうえで、キャビンファンを止めヘルメットを着け、携帯の Halon ボトルを消火ポートへ放出する。、IF-FDS-14 */ }
        message QD_08 of FdsTelemetryParameters from bayFireExt to dpsAvionics { doc /* QD-08  煙検知系と遠隔消火系の各種パラメータをテレメトリへ送る（MCC は空ボトルは分かるが、放出の時刻は分からない）。、IF-FDS-09 */ }
        first QD_01 then QD_02;
        first QD_02 then QD_03;
        first QD_03 then QD_04;
        first QD_04 then QD_05;
        first QD_05 then QD_06;
        first QD_06 then QD_07;
        first QD_07 then QD_08;
    }
    occurrence def CabinTempHumidityControl {
        doc /* 図242 キャビン温湿度の制御と監視 シーケンス図：キャビン温湿度の制御と監視 */
        part crew { doc /* 乗員 */ }
        part thcOps { doc /* 温湿度運用管理 */ }
        part thcMon { doc /* 温湿度監視 */ }
        part thcTcv { doc /* 温度制御弁・給気混合 */ }
        part thcSep { doc /* 湿度分離器・凝縮水排出 */ }
        part dps { doc /* DPS・アビオニクス */ }
        message QE_01 of CabinTempSwitchInput from crew to thcOps { doc /* QE-01  パネル L1 の CABIN TEMP CNTRL スイッチでコントローラを選び、CABIN TEMP ロータリスイッチで温度を選ぶ、スイッチ */ }
        message QE_02 of CabinTempSelection from thcOps to thcTcv { doc /* QE-02  選んだコントローラと温度を温度制御弁の制御へ渡す、IF-THC-14（選択） */ }
        message QE_03 of HumiditySepSwitchInput from crew to thcOps { doc /* QE-03  パネル L1 の HUMIDITY SEP A・B スイッチ（ON–OFF）を操作する、スイッチ */ }
        message QE_04 of HumiditySepPowerCommand from thcOps to thcSep { doc /* QE-04  湿度分離器 A・B の電源を個別に入切りする、IF-THC-15 */ }
        message QE_05 of DuctTempControlData from thcMon to thcTcv { doc /* QE-05  有効なコントローラが給気ダクトと還流ダクトの温度を検知し、選ばれた温度に制御する、IF-THC-10 */ }
        message QE_06 of SeparatorSpeedSignal from thcSep to thcMon { doc /* QE-06  回転数センサの信号で、湿度分離器が正常に回っているかを検知する、IF-THC-09 */ }
        message QE_07 of EnvironmentDisplayData from thcMon to dps { doc /* QE-07  湿度分離器 A・B の運転状態（HUMID SEP）とキャビン温度（CABIN T）を SM へ送り、SPEC 66 ENVIRONMENT に表示する、IF-THC-12 */ }
        message QE_08 of HumidSepAlert from dps to crew { doc /* QE-08  運転中の分離器の回転数が下がると、SM の警報「S66 HUMID SEP A(B)」を出す、表示・操作部 */ }
        message QE_09 of AtmosphereLossJudgementData from thcMon to thcOps { doc /* QE-09  熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う、IF-THC-13 */ }
        message QE_10 of ManualBypassValvePin from thcOps to thcTcv { doc /* QE-10  コントローラで弁を制御できない場合は、MD44F で弁アームを4つの固定穴の一つにピン止めする、IF-THC-14（手動） */ }
        first QE_01 then QE_02;
        first QE_02 then QE_03;
        first QE_03 then QE_04;
        first QE_04 then QE_05;
        first QE_05 then QE_06;
        first QE_06 then QE_07;
        first QE_07 then QE_08;
        first QE_08 then QE_09;
        first QE_09 then QE_10;
    }
}
