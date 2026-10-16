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
    item def FuelTkVlvSwitchSelect { doc /* パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にする。 */ }
    item def FuelIsolationValveCommand { doc /* スイッチの位置に従って各 APU の2個の燃料タンク隔離弁を通電して開く指令を渡す。CLOSE か電力喪失では両弁が閉じる。 */ }
    item def BoilerN2SwitchSelect { doc /* パネル R2 の BOILER N2 SUPPLY 1・2・3 スイッチで、各ボイラの窒素遮断弁を開く。 */ }
    item def BoilerN2ShutoffCommand { doc /* 各ボイラの窒素遮断弁を開閉する指令を渡す。遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。 */ }
    item def BoilerReadySignal { doc /* 制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が 130°F 超、作動油のバイパス弁が正しい位置のとき、R2 の APU/HYD READY TO START 表示へ準備完了の信号を渡す。 */ }
    item def HydPumpPressLowSelect { doc /* APU の始動に先立って、パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にする。 */ }
    item def PumpDepressurizeCommand { doc /* 減圧弁を通電して主ポンプの吐出圧を 500〜1,000 psi に下げる指令を渡す。 */ }
    item def GasGenBedTempSignal { doc /* ガス発生器床の温度トランスデューサの信号を渡す。 */ }
    item def GasGenHeaterControl { doc /* 比較器でガス発生器床ヒータを 360〜425°F に保つ制御を行う。 */ }
    item def ApuOperateSwitchSelect { doc /* パネル R2 の APU OPERATE スイッチを START/RUN にし、APU AUTO SHUT DOWN スイッチを ENABLE（または INHIBIT）にする。 */ }
    item def ApuStartAutoShutCommand { doc /* APU の始動の指令と、自動停止の機能の有効（ENABLE）・禁止（INHIBIT）の指令を渡す。制御器は始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。 */ }
    item def GearboxGn2ValveCommand { doc /* ギアボックス圧力が 5.2 psi 未満になると、潤滑油系の GN2 加圧弁を通電して開く指令を渡し、掃気と潤滑油ポンプの運転に必要な圧力を保つ。 */ }
    item def HydPumpPressNormSelect { doc /* APU の始動後に、HYD MAIN PUMP PRESS スイッチを LOW から NORM にする。 */ }
    item def PumpNormalPressCommand { doc /* 減圧弁の通電を切る指令を渡し、主ポンプの吐出圧を 2,900〜3,100 psi に上げる。 */ }
    item def BoilerSensorTelemetry { doc /* 各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値を制御器を通して SM GPC へ渡す。GPC は水タンクの量を計算して専用の MEDS 表示へ送り、水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は軌道上で SM APU/HYD（DISP 86）表示の右側に出る。 */ }
    item def FuelTkVlvCloseAfterShutdown { doc /* APU の自動停止の後は、再び開いた隔離弁が高温のガス発生器床へ燃料を流さないよう、APU FUEL TK VLV スイッチを CLOSE にする。 */ }
    item def FuelIsolationValveCloseCommand { doc /* 燃料タンク隔離弁を閉じる指令を渡す。 */ }
    item def GpcFailureDeclaration { doc /* 搭載と地上の監視で、冗長セットの故障・分裂、GPC 故障、データ経路の故障を宣言する材料を渡す。 */ }
    item def GpcFailureRecoveryAction { doc /* 故障した GPC を、上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試みる。 */ }
    item def MdmPortModeRecovery { doc /* MECO 後の FC・ペイロード MDM の故障に対し、DPS UTILITY 表示の項目入力でポートモードによる回復を試みる。 */ }
    item def MdmPowerCycleReset { doc /* データ経路の故障の後に、MDM の電源を切って入れ直し、出力をリセットする。 */ }
    item def GmtErrorUpdate { doc /* MTU と GPC の GMT の誤差が 100 ms を超えたら、15 ms の更新を行う。 */ }
    item def MtuOscillatorSwitch { doc /* MTU の BITE ビット 4 が立って MCC が時刻差の増加を見た場合などに、MECO 後から HAC 進入までの間に発振器を手動で切り替える。 */ }
    item def EngineShutdownPushbutton { doc /* パネル C3 の MAIN ENGINE SHUT DOWN 押しボタンを押す（両接点が健全であること）。 */ }
    item def EngineManualShutdownCommand { doc /* エンジンを手動停止する指令を、主エンジン制御器へ渡す。 */ }
    item def EngineStatusReport { doc /* 停止・停止後の段階やレッドライン超過、指令経路故障・ロックアップ・データ経路故障の状態を渡す。 */ }
    item def EngineStatusLightAnnunciation { doc /* パネル F7 の MAIN ENGINE STATUS ライトを点灯させる。 */ }
    item def HeSwitchSelect { doc /* パネル R2 の He ISOLATION A・B と He INTERCONNECT のスイッチを操作する。 */ }
    item def HeIsolationValveCommand { doc /* 各エンジン系統の遮断弁を個別に、相互接続弁の組を 1 個のスイッチで操作する指令を渡す。 */ }
    item def DumpSequenceSwitchSelect { doc /* MPS PRPLT DUMP SEQUENCE スイッチを START または STOP にする。 */ }
    item def PropellantDumpCommand { doc /* ダンプの手動開始と、ET 分離の遅れの間の自動ダンプの停止の指令を渡す。自動の真空不活性化が十分でないときは、手動の真空不活性化も行う。 */ }
    item def HydIsolSwitchSelect { doc /* パネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを、軌道上では CLOSE にする。 */ }
    item def TvcIsolationValveCommand { doc /* 遮断弁を閉じて下流の油圧漏れから守る指令を渡す。OPEN にすると弁が開く。 */ }
    item def TvcIsolValveTalkback { doc /* スイッチの上のトークバックが、開で OP、閉で CL を示す。 */ }
    item def PrebreatheScheduleData { doc /* キャビンを 10.2 psi にしてからの時間（12 時間・24 時間）に応じて、EMU 内の前呼吸を 1 時間 15 分・40 分とし、14.7 psi のままなら 4 時間とする基準を渡す。 */ }
    item def DepressGoCheck { doc /* 前呼吸の時間が終わったら、減圧の GO を確かめる。 */ }
    item def DepressStartCue { doc /* MCC の GO を確かめた後、DEPRESS/REPRESS のキューカードで減圧を始めるよう渡す。 */ }
    item def CueCardConfigSelect { doc /* 減圧・再与圧は、エアロックの構成ごと（通常構成・トンネルアダプタ）の DEPRESS/REPRESS キューカードに従うよう渡す。漏れ点検の不合格時の手順は FAILED LEAK CHECK に載せる。 */ }
    item def PostEvaHandoff { doc /* 再与圧でエアロックの気密を確かめて O2 ACT を切った後に POST EVA へ移るよう渡す。再与圧で DCS の症状が消えた場合は、MCC に確かめるまで EMU を脱がない。 */ }
    item def DcsAbortJudgment { doc /* カフチェックリストで DCS の区分を判断した結果を渡す。カフ 4 では ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、DCS の処置の手順へ移る。この手順は、カフ 4 への進行を防ぐために EVA を終えた後の処置を定める。 */ }
    item def ContaminationRepressHold { doc /* EMU の汚染が疑われた場合は、エアロックを 5 psia まで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続けるよう渡す。汚染の除去では真空で 15 分保持した後に、エアロックを 5 psi まで再与圧する（REPRESS の手順 1〜8）。 */ }
    item def OmsEngSwitchSelect { doc /* 各噴射の前に、パネル C3 の OMS ENG スイッチを ARM/PRESS にし、それ以外のときは OFF にしておく。 */ }
    item def OmsEngGn2ValveCommand { doc /* ARM/PRESS で GN2 の圧力隔離弁を開く指令を渡す。制御弁1・2は、スイッチが ARM か ARM/PRESS で OMS ENG VLV スイッチが ON のときに計算機の指令で開く。 */ }
    item def OmsHeSwitchSelect { doc /* パネル O8 の He PRESS/VAPOR ISOL スイッチ A・B を、手動の OPEN・CLOSE か、自動制御の GPC 位置にする。 */ }
    item def OmsHeIsolationCommand { doc /* ヘリウム圧力弁と蒸気隔離弁を開閉する指令を渡す。A か B のどちらかが OPEN なら両方の蒸気隔離弁が開き、両方が CLOSE なら両方が閉じ、GPC 位置では噴射シーケンスが自動で制御する。 */ }
    item def OmsCrossfeedSwitchSelect { doc /* パネル O8 の OMS CROSSFEED A・B スイッチで弁の組を選び、軌道上のインタコネクトは O7 の RCS スイッチとあわせて手動で組む。 */ }
    item def OmsCrossfeedValveCommand { doc /* 燃料・酸化剤のクロスフィード弁の組を開閉する指令を渡す。GPC 位置のときは、A・B の弁の組がオービタの計算機の指令で自動的に開閉される。 */ }
    item def OmsPropellantQuantityData { doc /* トータライザの全量と後室プローブの量を渡す。使用可能推進薬は計測量から残量を差し引いて定義される。 */ }
    item def OmsQuantityDisplay { doc /* 全量をパネル O3 の RCS/OMS PRPLT QTY に、後室の量を GNC SYS SUMM 2 の OMS AFT QTY に出し、推進薬の予算とレッドラインの管理に使わせる。 */ }
    item def OmsHeaterSwitchSelect { doc /* パネル A14 の RCS/OMS HTR スイッチで、左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を選ぶ。 */ }
    item def OmsHeaterStringCommand { doc /* 選んだヒータ系統へ切り替える指令を渡す。飛行中に少なくとも1回は冗長な系統（A か B）へ切り替える。 */ }
    item def RcsValveSwitchSelect { doc /* パネル O7・O8 のスイッチで、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の開閉を選ぶ。 */ }
    item def RcsPropellantValveOperation { doc /* 運用規則と手順に従い、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の操作を渡す。トークバックは対が開なら OP、閉なら CL、移動中や不一致ならバーバーポールを示す。 */ }
    item def RcsHePressSwitchSelect { doc /* パネル O7・O8 の He PRESS A・B スイッチで、ヘリウム隔離弁を操作し、調圧器の故障では RCS REGULATOR RECONFIG の手順で加圧経路を切り替える。 */ }
    item def RcsHeIsolationCommand { doc /* He PRESS A・B のスイッチ操作として、ヘリウム隔離弁の開閉と加圧経路の切替を渡す。 */ }
    item def RcsHeaterSwitchSelect { doc /* パネル A14 のヒータスイッチで、ヒータ系（A・B）の選択と入切を行う。 */ }
    item def RcsHeaterSelectCommand { doc /* 運用規則に従い、ヒータ系（A・B）の選択と入切を渡す。ヒータ系は飛行中に少なくとも一度は冗長側へ切り替える。 */ }
    item def RcsPcDiscreteSignal { doc /* 燃焼室圧の離散信号を、実際に噴射したことの表示として渡す。RM は Pc 離散信号・CMD B・ドライバ出力離散信号を噴射器の故障の検知に使う。 */ }
    item def RcsInjectorTempData { doc /* 各噴射器の燃料・酸化剤の噴射器温度を渡す。RM の限界を3周期続けて下回ると漏れ（fail-leak）と判定される。限界は主噴射器で酸化剤 30°F・燃料 20°F、OPS 2 のバーニアで 130°F である。 */ }
    item def RcsManifoldValveStatus { doc /* マニホールド隔離弁の離散信号（弁の状態）を渡す。RM はマニホールドの状態を評価する。 */ }
    item def RcsManifoldAutoCloseCommand { doc /* OPS 2・8 で fail-on が通報され、AUTO MANF CL が有効でスイッチが GPC 位置なら、GPC が該当するマニホールドを自動で閉じる指令を渡す。 */ }
    item def RcsSpec23ItemEntry { doc /* SPEC 23 の項目入力で、噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を行う。 */ }
    item def RcsRmOverrideEntry { doc /* 噴射器の選択解除・再選択、マニホールド状態の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を渡す。 */ }
    item def RcsHeliumPressureFault { doc /* ポッドのヘリウム圧（燃料か酸化剤）が 500 psi 未満になったことを、F(L,R) He P の故障メッセージとして渡す。 */ }
    item def RcsHePAlertAnnunciation { doc /* F(L,R) He P の故障メッセージを乗員に見せる。乗員はポケットチェックリストの RCS LEAK ISOL の手順で対処する。 */ }
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
    occurrence def ApuHydOperations {
        doc /* 図244 APU・油圧の運転と監視 シーケンス図：APU・油圧の運転と監視 */
        part crew { doc /* 乗員 */ }
        part apuOps { doc /* APU/HYD 運用管理 */ }
        part apuFul { doc /* ヒドラジン燃料供給 */ }
        part apuWsb { doc /* 水噴霧ボイラ */ }
        part apuHyd { doc /* 主油圧ポンプ・供給 */ }
        part apuCtl { doc /* APU 制御器 */ }
        part apuTrb { doc /* タービン・ギアボックス */ }
        part dpsFsw { doc /* DPS：飛行ソフトウェア */ }
        message YA_01 of FuelTkVlvSwitchSelect from crew to apuOps { doc /* YA-01  パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にする。、スイッチ */ }
        message YA_02 of FuelIsolationValveCommand from apuOps to apuFul { doc /* YA-02  スイッチの位置に従って各 APU の2個の燃料タンク隔離弁を通電して開く指令を渡す。CLOSE か電力喪失では両弁が閉じる。、IF-APU-03 */ }
        message YA_03 of BoilerN2SwitchSelect from crew to apuOps { doc /* YA-03  パネル R2 の BOILER N2 SUPPLY 1・2・3 スイッチで、各ボイラの窒素遮断弁を開く。、スイッチ */ }
        message YA_04 of BoilerN2ShutoffCommand from apuOps to apuWsb { doc /* YA-04  各ボイラの窒素遮断弁を開閉する指令を渡す。遮断弁は2つの独立したソレノイドで主・副どちらの制御器からも操作できる。、IF-APU-21 */ }
        message YA_05 of BoilerReadySignal from apuWsb to apuOps { doc /* YA-05  制御器が有効で、窒素遮断弁が開、蒸気ベントのノズル温度が 130°F 超、作動油のバイパス弁が正しい位置のとき、R2 の APU/HYD READY TO START 表示へ準備完了の信号を渡す。、IF-APU-21 */ }
        message YA_06 of HydPumpPressLowSelect from crew to apuOps { doc /* YA-06  APU の始動に先立って、パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にする。、スイッチ */ }
        message YA_07 of PumpDepressurizeCommand from apuOps to apuHyd { doc /* YA-07  減圧弁を通電して主ポンプの吐出圧を 500〜1,000 psi に下げる指令を渡す。、IF-APU-20 */ }
        message YA_08 of GasGenBedTempSignal from apuTrb to apuCtl { doc /* YA-08  ガス発生器床の温度トランスデューサの信号を渡す。、IF-APU-06 */ }
        message YA_09 of GasGenHeaterControl from apuCtl to apuTrb { doc /* YA-09  比較器でガス発生器床ヒータを 360〜425°F に保つ制御を行う。、IF-APU-06 */ }
        message YA_10 of ApuOperateSwitchSelect from crew to apuOps { doc /* YA-10  パネル R2 の APU OPERATE スイッチを START/RUN にし、APU AUTO SHUT DOWN スイッチを ENABLE（または INHIBIT）にする。、スイッチ */ }
        message YA_11 of ApuStartAutoShutCommand from apuOps to apuCtl { doc /* YA-11  APU の始動の指令と、自動停止の機能の有効（ENABLE）・禁止（INHIBIT）の指令を渡す。制御器は始動を開始し、ガス発生器と燃料ポンプのヒータの電力を自動で断つ。、IF-APU-19 */ }
        message YA_12 of GearboxGn2ValveCommand from apuCtl to apuTrb { doc /* YA-12  ギアボックス圧力が 5.2 psi 未満になると、潤滑油系の GN2 加圧弁を通電して開く指令を渡し、掃気と潤滑油ポンプの運転に必要な圧力を保つ。、IF-APU-06 */ }
        message YA_13 of HydPumpPressNormSelect from crew to apuOps { doc /* YA-13  APU の始動後に、HYD MAIN PUMP PRESS スイッチを LOW から NORM にする。、スイッチ */ }
        message YA_14 of PumpNormalPressCommand from apuOps to apuHyd { doc /* YA-14  減圧弁の通電を切る指令を渡し、主ポンプの吐出圧を 2,900〜3,100 psi に上げる。、IF-APU-20 */ }
        message YA_15 of BoilerSensorTelemetry from apuWsb to dpsFsw { doc /* YA-15  各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値を制御器を通して SM GPC へ渡す。GPC は水タンクの量を計算して専用の MEDS 表示へ送り、水量・窒素タンク圧力・調圧器圧力・窒素タンク温度は軌道上で SM APU/HYD（DISP 86）表示の右側に出る。、IF-APU-14 */ }
        message YA_16 of FuelTkVlvCloseAfterShutdown from crew to apuOps { doc /* YA-16  APU の自動停止の後は、再び開いた隔離弁が高温のガス発生器床へ燃料を流さないよう、APU FUEL TK VLV スイッチを CLOSE にする。、スイッチ */ }
        message YA_17 of FuelIsolationValveCloseCommand from apuOps to apuFul { doc /* YA-17  燃料タンク隔離弁を閉じる指令を渡す。、IF-APU-03 */ }
        first YA_01 then YA_02;
        first YA_02 then YA_03;
        first YA_03 then YA_04;
        first YA_04 then YA_05;
        first YA_05 then YA_06;
        first YA_06 then YA_07;
        first YA_07 then YA_08;
        first YA_08 then YA_09;
        first YA_09 then YA_10;
        first YA_10 then YA_11;
        first YA_11 then YA_12;
        first YA_12 then YA_13;
        first YA_13 then YA_14;
        first YA_14 then YA_15;
        first YA_15 then YA_16;
        first YA_16 then YA_17;
    }
    occurrence def DpsMpsOperations {
        doc /* 図245 DPS の運用管理と MPS の乗員操作 シーケンス図：DPS の運用管理と MPS の乗員操作 */
        part crew { doc /* 乗員 */ }
        part dpsOps { doc /* DPS 運用管理 */ }
        part dpsGpc { doc /* 汎用計算機・冗長セット */ }
        part dpsBus { doc /* データバス網・MDM */ }
        part dpsMtu { doc /* マスタタイミングユニット */ }
        part mpsOps { doc /* MPS 運用管理 */ }
        part mpsCtl { doc /* 主エンジン制御器 */ }
        part mpsHe { doc /* ヘリウム・空圧 */ }
        part mpsDmp { doc /* 充填・ダンプ・不活性化 */ }
        part mpsTvc { doc /* 油圧・推力方向制御 */ }
        message YB_01 of GpcFailureDeclaration from dpsGpc to dpsOps { doc /* YB-01  搭載と地上の監視で、冗長セットの故障・分裂、GPC 故障、データ経路の故障を宣言する材料を渡す。、IF-DPS-18 */ }
        message YB_02 of GpcFailureRecoveryAction from dpsOps to dpsGpc { doc /* YB-02  故障した GPC を、上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試みる。、IF-DPS-18 */ }
        message YB_03 of MdmPortModeRecovery from dpsOps to dpsBus { doc /* YB-03  MECO 後の FC・ペイロード MDM の故障に対し、DPS UTILITY 表示の項目入力でポートモードによる回復を試みる。、IF-DPS-19 */ }
        message YB_04 of MdmPowerCycleReset from dpsOps to dpsBus { doc /* YB-04  データ経路の故障の後に、MDM の電源を切って入れ直し、出力をリセットする。、IF-DPS-19 */ }
        message YB_05 of GmtErrorUpdate from dpsOps to dpsMtu { doc /* YB-05  MTU と GPC の GMT の誤差が 100 ms を超えたら、15 ms の更新を行う。、IF-DPS-20 */ }
        message YB_06 of MtuOscillatorSwitch from dpsOps to dpsMtu { doc /* YB-06  MTU の BITE ビット 4 が立って MCC が時刻差の増加を見た場合などに、MECO 後から HAC 進入までの間に発振器を手動で切り替える。、IF-DPS-20 */ }
        message YB_07 of EngineShutdownPushbutton from crew to mpsOps { doc /* YB-07  パネル C3 の MAIN ENGINE SHUT DOWN 押しボタンを押す（両接点が健全であること）。、押しボタン */ }
        message YB_08 of EngineManualShutdownCommand from mpsOps to mpsCtl { doc /* YB-08  エンジンを手動停止する指令を、主エンジン制御器へ渡す。、IF-MPS-17 */ }
        message YB_09 of EngineStatusReport from mpsCtl to mpsOps { doc /* YB-09  停止・停止後の段階やレッドライン超過、指令経路故障・ロックアップ・データ経路故障の状態を渡す。、IF-MPS-17 */ }
        message YB_10 of EngineStatusLightAnnunciation from mpsOps to crew { doc /* YB-10  パネル F7 の MAIN ENGINE STATUS ライトを点灯させる。、表示灯 */ }
        message YB_11 of HeSwitchSelect from crew to mpsOps { doc /* YB-11  パネル R2 の He ISOLATION A・B と He INTERCONNECT のスイッチを操作する。、スイッチ */ }
        message YB_12 of HeIsolationValveCommand from mpsOps to mpsHe { doc /* YB-12  各エンジン系統の遮断弁を個別に、相互接続弁の組を 1 個のスイッチで操作する指令を渡す。、IF-MPS-18 */ }
        message YB_13 of DumpSequenceSwitchSelect from crew to mpsOps { doc /* YB-13  MPS PRPLT DUMP SEQUENCE スイッチを START または STOP にする。、スイッチ */ }
        message YB_14 of PropellantDumpCommand from mpsOps to mpsDmp { doc /* YB-14  ダンプの手動開始と、ET 分離の遅れの間の自動ダンプの停止の指令を渡す。自動の真空不活性化が十分でないときは、手動の真空不活性化も行う。、IF-MPS-19 */ }
        message YB_15 of HydIsolSwitchSelect from crew to mpsOps { doc /* YB-15  パネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを、軌道上では CLOSE にする。、スイッチ */ }
        message YB_16 of TvcIsolationValveCommand from mpsOps to mpsTvc { doc /* YB-16  遮断弁を閉じて下流の油圧漏れから守る指令を渡す。OPEN にすると弁が開く。、IF-MPS-20 */ }
        message YB_17 of TvcIsolValveTalkback from mpsTvc to crew { doc /* YB-17  スイッチの上のトークバックが、開で OP、閉で CL を示す。、トークバック */ }
        first YB_01 then YB_02;
        first YB_02 then YB_03;
        first YB_03 then YB_04;
        first YB_04 then YB_05;
        first YB_05 then YB_06;
        first YB_06 then YB_07;
        first YB_07 then YB_08;
        first YB_08 then YB_09;
        first YB_09 then YB_10;
        first YB_10 then YB_11;
        first YB_11 then YB_12;
        first YB_12 then YB_13;
        first YB_13 then YB_14;
        first YB_14 then YB_15;
        first YB_15 then YB_16;
        first YB_16 then YB_17;
    }
    occurrence def EvaProcedureFlow {
        doc /* 図246 EVA の準備・減圧・再与圧・非常時の手順 シーケンス図：EVA の準備・減圧・再与圧・非常時の手順 */
        part evaOps { doc /* 合図と運用管理 */ }
        part evaChk { doc /* EMU 点検・準備 */ }
        part evaDpr { doc /* 減圧・再与圧 */ }
        part evaMnt { doc /* EVA 後の手入れ・再充填 */ }
        part evaEmg { doc /* 非常時の手順 */ }
        part mcc { doc /* 地上管制（MCC） */ }
        message YC_01 of PrebreatheScheduleData from evaOps to evaChk { doc /* YC-01  キャビンを 10.2 psi にしてからの時間（12 時間・24 時間）に応じて、EMU 内の前呼吸を 1 時間 15 分・40 分とし、14.7 psi のままなら 4 時間とする基準を渡す。、IF-EVA-01 */ }
        message YC_02 of DepressGoCheck from evaChk to mcc { doc /* YC-02  前呼吸の時間が終わったら、減圧の GO を確かめる。、手順（MCC 確認） */ }
        message YC_03 of DepressStartCue from evaChk to evaDpr { doc /* YC-03  MCC の GO を確かめた後、DEPRESS/REPRESS のキューカードで減圧を始めるよう渡す。、IF-EVA-02 */ }
        message YC_04 of CueCardConfigSelect from evaOps to evaDpr { doc /* YC-04  減圧・再与圧は、エアロックの構成ごと（通常構成・トンネルアダプタ）の DEPRESS/REPRESS キューカードに従うよう渡す。漏れ点検の不合格時の手順は FAILED LEAK CHECK に載せる。、IF-EVA-05 */ }
        message YC_05 of PostEvaHandoff from evaDpr to evaMnt { doc /* YC-05  再与圧でエアロックの気密を確かめて O2 ACT を切った後に POST EVA へ移るよう渡す。再与圧で DCS の症状が消えた場合は、MCC に確かめるまで EMU を脱がない。、IF-EVA-06 */ }
        message YC_06 of DcsAbortJudgment from evaOps to evaEmg { doc /* YC-06  カフチェックリストで DCS の区分を判断した結果を渡す。カフ 4 では ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、DCS の処置の手順へ移る。この手順は、カフ 4 への進行を防ぐために EVA を終えた後の処置を定める。、IF-EVA-13 */ }
        message YC_07 of ContaminationRepressHold from evaEmg to evaDpr { doc /* YC-07  EMU の汚染が疑われた場合は、エアロックを 5 psia まで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続けるよう渡す。汚染の除去では真空で 15 分保持した後に、エアロックを 5 psi まで再与圧する（REPRESS の手順 1〜8）。、IF-EVA-07 */ }
        first YC_01 then YC_02;
        first YC_02 then YC_03;
        first YC_03 then YC_04;
        first YC_04 then YC_05;
        first YC_05 then YC_06;
        first YC_06 then YC_07;
    }
    occurrence def OmsCrewOperations {
        doc /* 図247 OMS の乗員操作と表示 シーケンス図：OMS の乗員操作と表示 */
        part crew { doc /* 乗員 */ }
        part omsOps { doc /* OMS 運用管理（規則・処置） */ }
        part omsEng { doc /* OMS エンジン・GN2 系 */ }
        part omsHe { doc /* OMS ヘリウム加圧 */ }
        part omsXfd { doc /* OMS クロスフィード・RCS 連結 */ }
        part omsPsd { doc /* OMS 推進薬貯蔵・分配 */ }
        part omsThm { doc /* OMS 推進薬熱管理 */ }
        message YD_01 of OmsEngSwitchSelect from crew to omsOps { doc /* YD-01  各噴射の前に、パネル C3 の OMS ENG スイッチを ARM/PRESS にし、それ以外のときは OFF にしておく。、スイッチ */ }
        message YD_02 of OmsEngGn2ValveCommand from omsOps to omsEng { doc /* YD-02  ARM/PRESS で GN2 の圧力隔離弁を開く指令を渡す。制御弁1・2は、スイッチが ARM か ARM/PRESS で OMS ENG VLV スイッチが ON のときに計算機の指令で開く。、IF-OMS-06 */ }
        message YD_03 of OmsHeSwitchSelect from crew to omsOps { doc /* YD-03  パネル O8 の He PRESS/VAPOR ISOL スイッチ A・B を、手動の OPEN・CLOSE か、自動制御の GPC 位置にする。、スイッチ */ }
        message YD_04 of OmsHeIsolationCommand from omsOps to omsHe { doc /* YD-04  ヘリウム圧力弁と蒸気隔離弁を開閉する指令を渡す。A か B のどちらかが OPEN なら両方の蒸気隔離弁が開き、両方が CLOSE なら両方が閉じ、GPC 位置では噴射シーケンスが自動で制御する。、IF-OMS-07 */ }
        message YD_05 of OmsCrossfeedSwitchSelect from crew to omsOps { doc /* YD-05  パネル O8 の OMS CROSSFEED A・B スイッチで弁の組を選び、軌道上のインタコネクトは O7 の RCS スイッチとあわせて手動で組む。、スイッチ */ }
        message YD_06 of OmsCrossfeedValveCommand from omsOps to omsXfd { doc /* YD-06  燃料・酸化剤のクロスフィード弁の組を開閉する指令を渡す。GPC 位置のときは、A・B の弁の組がオービタの計算機の指令で自動的に開閉される。、IF-OMS-08 */ }
        message YD_07 of OmsPropellantQuantityData from omsPsd to omsOps { doc /* YD-07  トータライザの全量と後室プローブの量を渡す。使用可能推進薬は計測量から残量を差し引いて定義される。、IF-OMS-09 */ }
        message YD_08 of OmsQuantityDisplay from omsOps to crew { doc /* YD-08  全量をパネル O3 の RCS/OMS PRPLT QTY に、後室の量を GNC SYS SUMM 2 の OMS AFT QTY に出し、推進薬の予算とレッドラインの管理に使わせる。、表示 */ }
        message YD_09 of OmsHeaterSwitchSelect from crew to omsOps { doc /* YD-09  パネル A14 の RCS/OMS HTR スイッチで、左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を選ぶ。、スイッチ */ }
        message YD_10 of OmsHeaterStringCommand from omsOps to omsThm { doc /* YD-10  選んだヒータ系統へ切り替える指令を渡す。飛行中に少なくとも1回は冗長な系統（A か B）へ切り替える。、IF-OMS-10 */ }
        first YD_01 then YD_02;
        first YD_02 then YD_03;
        first YD_03 then YD_04;
        first YD_04 then YD_05;
        first YD_05 then YD_06;
        first YD_06 then YD_07;
        first YD_07 then YD_08;
        first YD_08 then YD_09;
        first YD_09 then YD_10;
    }
    occurrence def RcsRedundancyAndCrewOps {
        doc /* 図248 RCS の噴射器冗長管理と乗員操作 シーケンス図：RCS の噴射器冗長管理と乗員操作 */
        part crew { doc /* 乗員 */ }
        part rcsOps { doc /* RCS 運用管理 */ }
        part rcsPrp { doc /* 推進薬貯蔵・分配 */ }
        part rcsHep { doc /* ヘリウム加圧 */ }
        part rcsHtr { doc /* 熱制御（ヒータ） */ }
        part rcsRjd { doc /* 噴射器駆動回路 */ }
        part rcsJet { doc /* 主・バーニア噴射器 */ }
        part rcsRm { doc /* 噴射器冗長管理 */ }
        part cwPri { doc /* 警報系（C/W） */ }
        message YE_01 of RcsValveSwitchSelect from crew to rcsOps { doc /* YE-01  パネル O7・O8 のスイッチで、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の開閉を選ぶ。、スイッチ */ }
        message YE_02 of RcsPropellantValveOperation from rcsOps to rcsPrp { doc /* YE-02  運用規則と手順に従い、推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）の操作を渡す。トークバックは対が開なら OP、閉なら CL、移動中や不一致ならバーバーポールを示す。、IF-RCS-16 */ }
        message YE_03 of RcsHePressSwitchSelect from crew to rcsOps { doc /* YE-03  パネル O7・O8 の He PRESS A・B スイッチで、ヘリウム隔離弁を操作し、調圧器の故障では RCS REGULATOR RECONFIG の手順で加圧経路を切り替える。、スイッチ */ }
        message YE_04 of RcsHeIsolationCommand from rcsOps to rcsHep { doc /* YE-04  He PRESS A・B のスイッチ操作として、ヘリウム隔離弁の開閉と加圧経路の切替を渡す。、IF-RCS-17 */ }
        message YE_05 of RcsHeaterSwitchSelect from crew to rcsOps { doc /* YE-05  パネル A14 のヒータスイッチで、ヒータ系（A・B）の選択と入切を行う。、スイッチ */ }
        message YE_06 of RcsHeaterSelectCommand from rcsOps to rcsHtr { doc /* YE-06  運用規則に従い、ヒータ系（A・B）の選択と入切を渡す。ヒータ系は飛行中に少なくとも一度は冗長側へ切り替える。、IF-RCS-19 */ }
        message YE_07 of RcsPcDiscreteSignal from rcsRjd to rcsRm { doc /* YE-07  燃焼室圧の離散信号を、実際に噴射したことの表示として渡す。RM は Pc 離散信号・CMD B・ドライバ出力離散信号を噴射器の故障の検知に使う。、IF-RCS-04 */ }
        message YE_08 of RcsInjectorTempData from rcsJet to rcsRm { doc /* YE-08  各噴射器の燃料・酸化剤の噴射器温度を渡す。RM の限界を3周期続けて下回ると漏れ（fail-leak）と判定される。限界は主噴射器で酸化剤 30°F・燃料 20°F、OPS 2 のバーニアで 130°F である。、IF-RCS-05 */ }
        message YE_09 of RcsManifoldValveStatus from rcsPrp to rcsRm { doc /* YE-09  マニホールド隔離弁の離散信号（弁の状態）を渡す。RM はマニホールドの状態を評価する。、IF-RCS-06 */ }
        message YE_10 of RcsManifoldAutoCloseCommand from rcsRm to rcsPrp { doc /* YE-10  OPS 2・8 で fail-on が通報され、AUTO MANF CL が有効でスイッチが GPC 位置なら、GPC が該当するマニホールドを自動で閉じる指令を渡す。、IF-RCS-06 */ }
        message YE_11 of RcsSpec23ItemEntry from crew to rcsOps { doc /* YE-11  SPEC 23 の項目入力で、噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を行う。、SPEC 23 の項目入力 */ }
        message YE_12 of RcsRmOverrideEntry from rcsOps to rcsRm { doc /* YE-12  噴射器の選択解除・再選択、マニホールド状態の上書き、ポッドの故障限度の変更、AUTO MANF CL の有効化を渡す。、IF-RCS-18 */ }
        message YE_13 of RcsHeliumPressureFault from rcsHep to cwPri { doc /* YE-13  ポッドのヘリウム圧（燃料か酸化剤）が 500 psi 未満になったことを、F(L,R) He P の故障メッセージとして渡す。、IF-RCS-14 */ }
        message YE_14 of RcsHePAlertAnnunciation from cwPri to crew { doc /* YE-14  F(L,R) He P の故障メッセージを乗員に見せる。乗員はポケットチェックリストの RCS LEAK ISOL の手順で対処する。、表示・警報 */ }
        first YE_01 then YE_02;
        first YE_02 then YE_03;
        first YE_03 then YE_04;
        first YE_04 then YE_05;
        first YE_05 then YE_06;
        first YE_06 then YE_07;
        first YE_07 then YE_08;
        first YE_08 then YE_09;
        first YE_09 then YE_10;
        first YE_10 then YE_11;
        first YE_11 then YE_12;
        first YE_12 then YE_13;
        first YE_13 then YE_14;
    }
}
