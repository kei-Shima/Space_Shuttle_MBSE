// SysML v2 テキスト：故障検知・処置（C/W の警報・監視・処置・状態遷移）
// SSD-FDIR-ORB-001 故障検知・処置対応表（C/W の警告灯・処置・故障解析との対応） の表から生成（lib/build_docs_ap.py・rev_ap/apdata.py）。根拠の頁は SSD-FDIR-ORB-001 にある。
package SSD_FDIR_ORB_001 {
    doc /* SSD-FDIR-ORB-001 故障検知・処置対応表（C/W の警告灯・処置・故障解析との対応）。図118・119 と同じ対応。 */
    private import ScalarValues::*;
    metadata def Monitors { doc /* 警報の検知がその機能ブロックを監視する */ }
    metadata def RespondsBy { doc /* 警報への処置の活動 */ }
    metadata def MalProcedure { doc /* 乗員の処置の手順（Malfunction Procedures など） */ attribute title : String; attribute section : String; attribute source : String; }
    item def CwAlarm { doc /* C/W の警報（クラス1・2） */ attribute light : String; attribute alarmClass : Integer; }
    item def <'CW-01'> O2PressAlarm :> CwAlarm { doc /* O2 PRESS（EPS、クラス2） */ }
    item def <'CW-02'> H2PressAlarm :> CwAlarm { doc /* H2 PRESS（EPS、クラス2） */ }
    item def <'CW-03'> FuelCellReacAlarm :> CwAlarm, SSD_BEH_ORB_005::FcEv12 { doc /* FUEL CELL REAC（EPS、クラス2） */ }
    item def <'CW-04'> FuelCellStackTempAlarm :> CwAlarm { doc /* FUEL CELL STACK TEMP（EPS、クラス2） */ }
    item def <'CW-05'> FuelCellPumpAlarm :> CwAlarm, SSD_BEH_ORB_005::FcEv10 { doc /* FUEL CELL PUMP（EPS、クラス2） */ }
    item def <'CW-06'> CabinAtmAlarm :> CwAlarm, SSD_BEH_ORB_006::PcsEv07, SSD_BEH_ORB_006::PcsEv08, SSD_BEH_ORB_006::PcsEv09, SSD_BEH_ORB_006::PcsEv12 { doc /* CABIN ATM（ECLSS、クラス2） */ }
    item def <'CW-07'> O2HeaterTempAlarm :> CwAlarm { doc /* O2 HEATER TEMP（EPS、クラス2） */ }
    item def <'CW-08'> MainBusUndervoltAlarm :> CwAlarm { doc /* MAIN BUS UNDERVOLT（EPS、クラス2） */ }
    item def <'CW-09'> AcVoltageAlarm :> CwAlarm { doc /* AC VOLTAGE（EPS、クラス2） */ }
    item def <'CW-10'> AcOverloadAlarm :> CwAlarm { doc /* AC OVERLOAD（EPS、クラス2） */ }
    item def <'CW-11'> FreonLoopAlarm :> CwAlarm { doc /* FREON LOOP（ECLSS、クラス2） */ }
    item def <'CW-12'> AvBayCabinAirAlarm :> CwAlarm { doc /* AV BAY/CABIN AIR（ECLSS、クラス2） */ }
    item def <'CW-13'> ImuAlarm :> CwAlarm { doc /* IMU（GNC、クラス2） */ }
    item def <'CW-14'> FwdRcsAlarm :> CwAlarm, SSD_BEH_ORB_006::RcsEv08 { doc /* FWD RCS（RCS、クラス2） */ }
    item def <'CW-15'> RcsJetAlarm :> CwAlarm { doc /* RCS JET（RCS、クラス2） */ }
    item def <'CW-16'> H2OLoopAlarm :> CwAlarm { doc /* H2O LOOP（ECLSS、クラス2） */ }
    item def <'CW-17'> RgaAccelAlarm :> CwAlarm { doc /* RGA/ACCEL（GNC、クラス2） */ }
    item def <'CW-18'> AirDataAlarm :> CwAlarm { doc /* AIR DATA（GNC、クラス2） */ }
    item def <'CW-19'> LeftRcsAlarm :> CwAlarm, SSD_BEH_ORB_006::RcsEv09 { doc /* LEFT RCS（RCS、クラス2） */ }
    item def <'CW-20'> RightRcsAlarm :> CwAlarm, SSD_BEH_ORB_006::RcsEv10 { doc /* RIGHT RCS（RCS、クラス2） */ }
    item def <'CW-22'> LeftRhcAlarm :> CwAlarm { doc /* LEFT RHC（GNC、クラス2） */ }
    item def <'CW-23'> RightAftRhcAlarm :> CwAlarm { doc /* RIGHT/AFT RHC（GNC、クラス2） */ }
    item def <'CW-24'> LeftOmsAlarm :> CwAlarm, SSD_BEH_ORB_006::OmsEv07, SSD_BEH_ORB_006::OmsEv08, SSD_BEH_ORB_006::OmsEv12 { doc /* LEFT OMS（OMS、クラス2） */ }
    item def <'CW-25'> RightOmsAlarm :> CwAlarm, SSD_BEH_ORB_006::OmsEv06, SSD_BEH_ORB_006::OmsEv09, SSD_BEH_ORB_006::OmsEv13 { doc /* RIGHT OMS（OMS、クラス2） */ }
    item def <'CW-26'> PayloadWarningAlarm :> CwAlarm { doc /* PAYLOAD WARNING（PLS、クラス2） */ }
    item def <'CW-27'> GpcAlarm :> CwAlarm, SSD_BEH_ORB_005::GpcEv06 { doc /* GPC（DPS、クラス2） */ }
    item def <'CW-28'> FcsSaturationAlarm :> CwAlarm { doc /* FCS SATURATION（GNC、クラス2） */ }
    item def <'CW-29'> OmsKitAlarm :> CwAlarm { doc /* OMS KIT（OMS、クラス2） */ }
    item def <'CW-30'> OmsTvcAlarm :> CwAlarm { doc /* OMS TVC（OMS、クラス2） */ }
    item def <'CW-31'> PayloadCautionAlarm :> CwAlarm { doc /* PAYLOAD CAUTION（PLS、クラス2） */ }
    item def <'CW-32'> PrimaryCWAlarm :> CwAlarm { doc /* PRIMARY C/W（CW、クラス2） */ }
    item def <'CW-33'> FcsChannelAlarm :> CwAlarm { doc /* FCS CHANNEL（GNC、クラス2） */ }
    item def <'CW-34'> MpsAlarm :> CwAlarm, SSD_BEH_ORB_006::MpsEv04, SSD_BEH_ORB_006::MpsEv12, SSD_BEH_ORB_006::MpsEv15 { doc /* MPS（MPS、クラス2） */ }
    item def <'CW-36'> BackupCWAlarm :> CwAlarm { doc /* BACKUP C/W ALARM（CW、クラス2） */ }
    item def <'CW-37'> ApuTempAlarm :> CwAlarm { doc /* APU TEMP（APU、クラス2） */ }
    item def <'CW-38'> ApuOverspeedAlarm :> CwAlarm, SSD_BEH_ORB_005::ApuEv12 { doc /* APU OVERSPEED（APU、クラス2） */ }
    item def <'CW-39'> ApuUnderspeedAlarm :> CwAlarm, SSD_BEH_ORB_005::ApuEv11 { doc /* APU UNDERSPEED（APU、クラス2） */ }
    item def <'CW-40'> HydPressAlarm :> CwAlarm { doc /* HYD PRESS（APU、クラス2） */ }
    item def <'EM-01'> SmokeDetectionFireAlarm :> CwAlarm { doc /* SMOKE DETECTION / FIRE（サイレン）（ECLSS、クラス1） */ }
    item def <'EM-02'> CabinPressureDpDtAlarm :> CwAlarm { doc /* CABIN PRESSURE dP/dT（クラクソン）（ECLSS、クラス1） */ }
    part def CrewResponse { doc /* 乗員（警報を受けて処置を行う） */ }
    part def FdirContext {
        doc /* 警報の検知と、警報の受け手（乗員・状態機械を持つ部品） */
        part crew : CrewResponse;
        part apuStates : SSD_BEH_ORB_005::ApuStatesHolder;
        part fuelCellStates : SSD_BEH_ORB_005::FuelCellStatesHolder;
        part gpcModes : SSD_BEH_ORB_005::GpcModesHolder;
        part mpsStates : SSD_BEH_ORB_006::MpsStatesHolder;
        part omsStates : SSD_BEH_ORB_006::OmsStatesHolder;
        part pressureControlStates : SSD_BEH_ORB_006::PressureControlStatesHolder;
        part rcsStates : SSD_BEH_ORB_006::RcsStatesHolder;
        action <'CW-01'> detect_CW_01 {
            doc /* O2 PRESS：O2 タンク1〜4の圧力（各タンク）；O2 キット（タンク5）の圧力。限界値 540 psia 未満または 985 psia 超（B/U C/W も同じ） */
            @MalProcedure { title = "CRYO O2(H2) PRES, TK P ↓↑"; section = "7.6b"; source = "mal p427"; }
            @MalProcedure { title = "Cryo Leaks（SCOM 6.8 の概要：漏れ箇所の特定とマニホールド隔離弁の閉）"; section = ""; source = "scom p888"; }
            send new O2PressAlarm() to crew;
        }
        action <'CW-02'> detect_CW_02 {
            doc /* H2 PRESS：H2 タンク1〜4の圧力（各タンク）；H2 キット（タンク5）の圧力。限界値 153 psia 未満または 293.8 psia 超（B/U C/W も同じ） */
            @MalProcedure { title = "CRYO O2(H2) PRES, TK P ↓↑"; section = "7.6b"; source = "mal p427"; }
            send new H2PressAlarm() to crew;
        }
        action <'CW-03'> detect_CW_03 {
            doc /* FUEL CELL REAC：燃料電池1〜3の O2 反応剤弁の位置；燃料電池1〜3の H2 反応剤弁の位置。限界値 弁が閉（離散信号） */
            @MalProcedure { title = "Fuel Cell Reactant Valves（SCOM 6.8 の概要：弁の再開と母線結合、確認された故障では燃料電池停止）"; section = ""; source = "scom p892"; }
            @MalProcedure { title = "‘S69 FC REAC 1(2,3)↓’（軌道上 PKT C/L の支援手順）"; section = ""; source = "mal p370"; }
            send new FuelCellReacAlarm() to fuelCellStates;
        }
        action <'CW-04'> detect_CW_04 {
            doc /* FUEL CELL STACK TEMP：燃料電池1〜3のスタック温度（スタック出口の冷却材温度）。限界値 170.7°F 未満または 241.9°F 超（SCOM）。MAL 7.1b の入口は運転中 243.7 超か 172.5°F 未満 */
            @MalProcedure { title = "FC STACK T 1(2,3) ↑↓"; section = "7.1b"; source = "mal p376"; }
            send new FuelCellStackTempAlarm() to crew;
        }
        action <'CW-05'> detect_CW_05 {
            doc /* FUEL CELL PUMP：燃料電池1〜3の冷却材ポンプ差圧。限界値 ポンプ差圧の喪失（数値は資料になし） */
            @MalProcedure { title = "Fuel Cell Cooling Loss（SCOM 6.8 の概要：9分以内に燃料電池を止める、FC SHUTDOWN）"; section = ""; source = "scom p893"; }
            @MalProcedure { title = "‘S69 FC PUMP 1(2,3)↓’（軌道上 PKT C/L の支援手順）"; section = ""; source = "mal p370"; }
            @MalProcedure { title = "FUEL CELL COOL P ↑↓ (CIL)"; section = "7.3e"; source = "mal p394"; }
            send new FuelCellPumpAlarm() to fuelCellStates;
        }
        action <'CW-06'> detect_CW_06 {
            doc /* CABIN ATM：客室圧；O2 系1・2の流量；PPO2 A・B；N2 系1・2の流量。限界値 客室圧 13.76 psia 未満（OV-104 は 13.74）または 15.36（OV-103）／15.53（OV-104）／15.35（OV-105）psia 超、PPO2 2.7 psia 未満か 3.6 psia 超、O2 流量 4.9 lb/h 超、N2 流量 4.9 lb/h 超 */
            @MalProcedure { title = "CABIN PRES ↑↓"; section = "6.2b"; source = "mal p271"; }
            @MalProcedure { title = "PPO2 ↑↓"; section = "6.2c"; source = "mal p277"; }
            @MalProcedure { title = "O2(N2) FLOW ↑"; section = "6.2a"; source = "mal p269"; }
            @MalProcedure { title = "Cabin Pressure（SCOM 6.8 の概要：リリーフ隔離弁を閉じ漏れを確認、漏れ率で中止か緊急軌道離脱）"; section = ""; source = "scom p891"; }
            send new CabinAtmAlarm() to pressureControlStates;
        }
        action <'CW-07'> detect_CW_07 {
            doc /* O2 HEATER TEMP：O2 タンク1〜4のヒータ1・2の温度；O2 キット（タンク5）のヒータ温度。限界値 344°F 以上（ハードウェア）。ソフトウェアは 349°F 超で BACKUP C/W ALARM */
            @MalProcedure { title = "O2 HTR T"; section = "7.6l"; source = "mal p434"; }
            @MalProcedure { title = "Heater Problems（SCOM 6.8 の概要：故障オンのヒータを切り予備ヒータを使う）"; section = ""; source = "scom p888"; }
            send new O2HeaterTempAlarm() to crew;
        }
        action <'CW-08'> detect_CW_08 {
            doc /* MAIN BUS UNDERVOLT：主母線 A・B・C の電圧。限界値 26.4 V dc */
            @MalProcedure { title = "FUEL CELL VOLTS ↑↓, FUEL CELL AMPS ↑↓, MAIN BUS V A(B,C) ↑↓"; section = "7.3b"; source = "mal p386"; }
            @MalProcedure { title = "MN BUS UNDERVOLT（SCOM 6.8 が挙げる手順名）／Bus Losses（FDF の母線喪失処置）"; section = ""; source = "scom p893"; }
            send new MainBusUndervoltAlarm() to crew;
        }
        action <'CW-09'> detect_CW_09 {
            doc /* AC VOLTAGE：AC 母線1〜3の A・B・C 相電圧。限界値 過電圧 123〜127 VAC を 50〜90 ms、低電圧 102〜108 VAC 未満を 6.5〜8.5 ms（AC 母線センサ） */
            @MalProcedure { title = "AC VOLTS 1(2,3) ↓↑"; section = "7.5a"; source = "mal p410"; }
            send new AcVoltageAlarm() to crew;
        }
        action <'CW-10'> detect_CW_10 {
            doc /* AC OVERLOAD：インバータ1〜3の A・B・C 相の出力電流。限界値 225% を20秒または 300% を4〜6秒（相電流 14.5 A 超を10〜20秒、または 17.3〜21.1 A 超を4〜6秒） */
            @MalProcedure { title = "AC OVLD 1(2,3) ↓"; section = "7.5b"; source = "mal p415"; }
            send new AcOverloadAlarm() to crew;
        }
        action <'CW-11'> detect_CW_11 {
            doc /* FREON LOOP：フレオンループ1・2の流量；フレオンループ1・2の蒸発器出口温度。限界値 流量 1186 lbm/hr 未満、蒸発器出口温度 32.2°F 未満または 64.8°F 超（上昇中の上限 115°F） */
            @MalProcedure { title = "FREON FLOW LOW"; section = "6.4b"; source = "mal p294"; }
            @MalProcedure { title = "EVAP OUT T ↑↓"; section = "6.4a"; source = "mal p289"; }
            @MalProcedure { title = "Pump/Fan Failures・Water/Freon Leaks（SCOM 6.8 の概要：予備ポンプへ切替え、流体喪失なら早期軌道離脱）"; section = ""; source = "scom p891"; }
            send new FreonLoopAlarm() to crew;
        }
        action <'CW-12'> detect_CW_12 {
            doc /* AV BAY/CABIN AIR：客室ファン差圧；電子機器ベイ1〜3の排気温度；客室熱交換器出口の空気温度。限界値 電子機器ベイ温度 130°F 超、熱交換器出口 145°F 超、客室ファン差圧 4.16 inH2O 未満または 6.8 inH2O 超 */
            @MalProcedure { title = "CABIN FAN ∆P"; section = "6.1a"; source = "mal p260"; }
            @MalProcedure { title = "AV BAY TEMP"; section = "6.1b"; source = "mal p261"; }
            send new AvBayCabinAirAlarm() to crew;
        }
        action <'CW-13'> detect_CW_13 {
            doc /* IMU：IMU のジレンマ（GNC ソフトウェアの離散信号）。限界値 離散信号（ジレンマ） */
            @MalProcedure { title = "Sensor Failures/Dilemmas（SCOM 6.8 の概要：MCC がテレメトリで解決）"; section = ""; source = "scom p894"; }
            send new ImuAlarm() to crew;
        }
        action <'CW-14'> detect_CW_14 {
            doc /* FWD RCS：前方 RCS 酸化剤タンクのアレージ圧；前方 RCS 燃料タンクのアレージ圧；前方 RCS の漏れ（燃料・酸化剤の量の差）。限界値 タンク圧 200 psia 未満または 312 psia 超、燃料と酸化剤の量の差 9.5% 超 */
            @MalProcedure { title = "‘L(R,F) RCS (L,U,D,R,A,F) JET’, ‘F(L,R) RCS TK P’, ‘F(L,R) RCS LEAK’"; section = "10.1a"; source = "mal p748"; }
            @MalProcedure { title = "Leaks・Regulator Failed High（SCOM 6.8 の概要：確認後に隔離、He 隔離弁を閉）"; section = ""; source = "scom p896"; }
            send new FwdRcsAlarm() to rcsStates;
        }
        action <'CW-15'> detect_CW_15 {
            doc /* RCS JET：RCS ジェットの故障オン・故障オフ・漏れ（GNC ソフトウェアの離散信号）。限界値 離散信号 */
            @MalProcedure { title = "‘L(R,F) RCS (L,U,D,R,A,F) JET’, ‘F(L,R) RCS TK P’, ‘F(L,R) RCS LEAK’"; section = "10.1a"; source = "mal p748"; }
            @MalProcedure { title = "RCS Jet Failures（SCOM 6.8 の概要：故障オンはマニホールドを直ちに閉）"; section = ""; source = "scom p897"; }
            send new RcsJetAlarm() to crew;
        }
        action <'CW-16'> detect_CW_16 {
            doc /* H2O LOOP：H2O ループ1・2のポンプ出口圧。限界値 ポンプ1 19.5 psia 未満または 79.5 psia 超、ポンプ2 45 psia 未満または 81 psia 超 */
            @MalProcedure { title = "H2O PUMP P 1(2) ↑↓"; section = "6.4l"; source = "mal p307"; }
            send new H2OLoopAlarm() to crew;
        }
        action <'CW-17'> detect_CW_17 {
            doc /* RGA/ACCEL：RGA 1〜4・加速度計1〜4の故障（GNC ソフトウェアの離散信号）。限界値 離散信号 */
            send new RgaAccelAlarm() to crew;
        }
        action <'CW-18'> detect_CW_18 {
            doc /* AIR DATA：ADTA のジレンマ（GNC ソフトウェアの離散信号）。限界値 離散信号 */
            @MalProcedure { title = "Sensor Failures/Dilemmas（SCOM 6.8 の概要：MCC がテレメトリで解決）"; section = ""; source = "scom p894"; }
            send new AirDataAlarm() to crew;
        }
        action <'CW-19'> detect_CW_19 {
            doc /* LEFT RCS：左 RCS 酸化剤タンクのアレージ圧；左 RCS 燃料タンクのアレージ圧；左 RCS の漏れ。限界値 タンク圧 200 psia 未満または 312 psia 超、燃料と酸化剤の量の差 9.5% 超 */
            @MalProcedure { title = "‘L(R,F) RCS (L,U,D,R,A,F) JET’, ‘F(L,R) RCS TK P’, ‘F(L,R) RCS LEAK’"; section = "10.1a"; source = "mal p748"; }
            send new LeftRcsAlarm() to rcsStates;
        }
        action <'CW-20'> detect_CW_20 {
            doc /* RIGHT RCS：右 RCS 酸化剤タンクのアレージ圧；右 RCS 燃料タンクのアレージ圧；右 RCS の漏れ。限界値 タンク圧 200 psia 未満または 312 psia 超、燃料と酸化剤の量の差 9.5% 超 */
            @MalProcedure { title = "‘L(R,F) RCS (L,U,D,R,A,F) JET’, ‘F(L,R) RCS TK P’, ‘F(L,R) RCS LEAK’"; section = "10.1a"; source = "mal p748"; }
            send new RightRcsAlarm() to rcsStates;
        }
        action <'CW-22'> detect_CW_22 {
            doc /* LEFT RHC：左（機長）RHC のピッチ・ロール・ヨーのチャンネル不一致（GNC ソフトウェアの離散信号）。限界値 離散信号 */
            send new LeftRhcAlarm() to crew;
        }
        action <'CW-23'> detect_CW_23 {
            doc /* RIGHT/AFT RHC：右・後方 RHC のチャンネル不一致（GNC ソフトウェアの離散信号）。限界値 離散信号 */
            send new RightAftRhcAlarm() to crew;
        }
        action <'CW-24'> detect_CW_24 {
            doc /* LEFT OMS：左 OMS 酸化剤タンク圧；左 OMS 燃料タンク圧；左 OMS エンジン異常（Pc）。限界値 タンク圧 232 psi 未満または 288 psi 超、Pc が点火中 80% 未満・停止中 80% 超 */
            @MalProcedure { title = "‘L(R) OMS TK P’"; section = "11.1a"; source = "mal p780"; }
            @MalProcedure { title = "OMS BURN MONITOR cue card（OMS エンジン・推進剤の故障）"; section = ""; source = "scom p897"; }
            send new LeftOmsAlarm() to omsStates;
        }
        action <'CW-25'> detect_CW_25 {
            doc /* RIGHT OMS：右 OMS 酸化剤タンク圧；右 OMS 燃料タンク圧；右 OMS エンジン異常（Pc）。限界値 タンク圧 232 psi 未満または 288 psi 超、Pc が点火中 80% 未満・停止中 80% 超 */
            @MalProcedure { title = "‘L(R) OMS TK P’"; section = "11.1a"; source = "mal p780"; }
            @MalProcedure { title = "OMS BURN MONITOR cue card（OMS エンジン・推進剤の故障）"; section = ""; source = "scom p897"; }
            send new RightOmsAlarm() to omsStates;
        }
        action <'CW-26'> detect_CW_26 {
            doc /* PAYLOAD WARNING：ペイロードの警報入力（最大5）。限界値 — */
            send new PayloadWarningAlarm() to crew;
        }
        action <'CW-27'> detect_CW_27 {
            doc /* GPC：GPC 1〜5 の自己故障の離散信号。限界値 離散信号 */
            @MalProcedure { title = "SINGLE GPC FAIL"; section = "GPC FRP-1"; source = "mal p218"; }
            @MalProcedure { title = "DPS Failure Signatures（GPC Fail の手順）"; section = ""; source = "scom p889"; }
            send new GpcAlarm() to gpcModes;
        }
        action <'CW-28'> detect_CW_28 {
            doc /* FCS SATURATION：エレボン位置の飽和；エレボンのヒンジモーメントの飽和。限界値 エレボン +12°（下げ）超または -15°（上げ）未満、ヒンジモーメント 80% 超 */
            send new FcsSaturationAlarm() to crew;
        }
        action <'CW-29'> detect_CW_29 {
            doc /* OMS KIT：OMS キット酸化剤タンクのアレージ圧；OMS キット燃料タンクのアレージ圧。限界値 — */
            send new OmsKitAlarm() to crew;
        }
        action <'CW-30'> detect_CW_30 {
            doc /* OMS TVC：OMS のピッチ・ヨージンバルの故障。限界値 離散信号 */
            send new OmsTvcAlarm() to crew;
        }
        action <'CW-31'> detect_CW_31 {
            doc /* PAYLOAD CAUTION：ペイロードの注意入力。限界値 — */
            send new PayloadCautionAlarm() to crew;
        }
        action <'CW-32'> detect_CW_32 {
            doc /* PRIMARY C/W：C/W 電子ユニット内部の自己試験（チャンネル 120〜127）；電源 A・B；A・B タイミング。限界値 自己試験パラメータは 0.1 V 外側で検査 */
            @MalProcedure { title = "PRIMARY C/W"; section = "4.1a"; source = "mal p116"; }
            @MalProcedure { title = "ALL ANNUN LTS ON EXCEPT BACKUP C/W ALARM"; section = "4.1b"; source = "mal p119"; }
            @MalProcedure { title = "PRI C/W SYS ANNUNCIATES FALSE ALARM"; section = "4.1d"; source = "mal p123"; }
            @MalProcedure { title = "PRI C/W SYS FAILS TO ANNUNCIATE OUT−OF−LIMIT PARAM"; section = "4.2e"; source = "mal p142"; }
            @MalProcedure { title = "飛行規則 A9-160 E（C&W 電源喪失後の処置）"; section = ""; source = "fr p1475"; }
            send new PrimaryCWAlarm() to crew;
        }
        action <'CW-33'> detect_CW_33 {
            doc /* FCS CHANNEL：エレボン・ラダー・スピードブレーキ・SRB・SSME のアクチュエータのサーボ弁切離し（FCS CH BYPASS）。限界値 二次差圧 2,025 psi 以上を 120 ms 超で切離し */
            @MalProcedure { title = "FCS Channel（SCOM 6.8 の概要：2回目の故障で残りのチャンネルを OVERRIDE）"; section = ""; source = "scom p894"; }
            send new FcsChannelAlarm() to crew;
        }
        action <'CW-34'> detect_CW_34 {
            doc /* MPS：SSME 1〜3 の He タンク圧；SSME 1〜3 の He レギュレータ出口圧；LO2 マニホールド圧；LH2 マニホールド圧。限界値 LH2 マニホールド 65 psia 超・LO2 マニホールド 249 psia 超（軌道上）、He タンク C&W 値 1150 psia、He レギュレータ C&W 810 psia */
            @MalProcedure { title = "飛行規則 A5-208 POST-MECO AND ENTRY HELIUM ISOLATION（He レギュレータ 810 psia で He 隔離弁を閉）"; section = ""; source = "fr p1115"; }
            @MalProcedure { title = "飛行規則 A5-152 PRE-MECO MPS HELIUM SYSTEM INTERCONNECTS（He タンク C&W 1150 psia で相互接続）"; section = ""; source = "fr p1068"; }
            send new MpsAlarm() to mpsStates;
        }
        action <'CW-36'> detect_CW_36 {
            doc /* BACKUP C/W ALARM：SM・GNC・BFS ソフトウェアが監視する B/U C/W パラメータ全体。限界値 パラメータごと（SPEC 60 で表示・変更） */
            @MalProcedure { title = "Crew Response to B/U C&W Annunciation（MA・ACK・メッセージ確認・MSG RESET・FDF 手順）"; section = ""; source = "cw p75"; }
            @MalProcedure { title = "NONRESETTABLE BACKUP C/W ALARM LT"; section = "4.2a"; source = "mal p134"; }
            send new BackupCWAlarm() to crew;
        }
        action <'CW-37'> detect_CW_37 {
            doc /* APU TEMP：APU 1〜3 の排気ガス温度（EGT）；APU 1〜3 の潤滑油温度。限界値 潤滑油温度 290°F 超（EGT の限界は資料になし） */
            @MalProcedure { title = "Hydraulic Fluid/Lube Oil Overtemp（SCOM 6.8 の概要：ボイラ制御器を切替え、上昇続けば APU 停止）"; section = ""; source = "scom p886"; }
            send new ApuTempAlarm() to crew;
        }
        action <'CW-38'> detect_CW_38 {
            doc /* APU OVERSPEED：APU 1〜3 のタービン速度。限界値 92,880 rpm（129%）超 */
            @MalProcedure { title = "APU SHUTDOWN（確認された過速度では再起動しない）"; section = ""; source = "scom p884"; }
            send new ApuOverspeedAlarm() to apuStates;
        }
        action <'CW-39'> detect_CW_39 {
            doc /* APU UNDERSPEED：APU 1〜3 のタービン速度。限界値 57,600 rpm（80%）未満 */
            @MalProcedure { title = "APU SHUTDOWN → APU COOLDOWN 後に再起動を試行"; section = ""; source = "scom p884"; }
            send new ApuUnderspeedAlarm() to apuStates;
        }
        action <'CW-40'> detect_CW_40 {
            doc /* HYD PRESS：油圧系1〜3の供給圧。限界値 2,400 psi 未満（APU/HYD の章） */
            @MalProcedure { title = "Hydraulic System Failure（SCOM 6.8 の概要：確認されれば APU 停止）"; section = ""; source = "scom p885"; }
            send new HydPressAlarm() to crew;
        }
        action <'EM-01'> detect_EM_01 {
            doc /* SMOKE DETECTION / FIRE（サイレン）：煙検知器（A 群：客室ファン吸入口・左フライトデッキ戻りダクト・電子機器ベイ1・2・3A、B 群：右フライトデッキ戻りダクト・電子機器ベイ1・2・3A）の煙濃度と増加率。限界値 2,000（±200）μg/m3 を5秒以上、または 22 μg/m3/s 以上の増加が20秒間に8回連続 */
            @MalProcedure { title = "Fire（SCOM 6.8 の概要：QDM／与圧服 O2、Halon 放出、WCS・ATCO・LiOH で浄化）"; section = ""; source = "scom p891"; }
            @MalProcedure { title = "AV BAY FIRE RECOVERY/RECONFIG"; section = "ECLS SSR-12"; source = "mal p351"; }
            @MalProcedure { title = "POST−FIRE CABIN CLEANUP CONTINUATION"; section = "ECLS FRP-2"; source = "mal p365"; }
            @MalProcedure { title = "SIREN − NO SMOKE DETN LT"; section = "4.2d"; source = "mal p141"; }
            send new SmokeDetectionFireAlarm() to crew;
        }
        action <'EM-02'> detect_EM_02 {
            doc /* CABIN PRESSURE dP/dT（クラクソン）：客室 dP/dt センサ（psi/min）。限界値 -0.08 psi/min を超える減少（負の値のときだけ）。0.12 psi/min 以上の減少ではクラス3も出る */
            @MalProcedure { title = "Cabin Pressure（SCOM 6.8 の概要：漏れの大きさ把握・切り分け・電力削減・軌道離脱準備）"; section = ""; source = "scom p890"; }
            @MalProcedure { title = "SMALL CABIN−LEAK ISOL"; section = "ECLS SSR-8"; source = "mal p345"; }
            @MalProcedure { title = "KLAXON − NO RAPID dP/dT"; section = "4.2c"; source = "mal p139"; }
            send new CabinPressureDpDtAlarm() to crew;
        }
    }
    // ---- 監視（警報の検知 → 機能ブロック）と処置の活動
    #Monitors dependency <'CW-01>SSD-FD-EPS-PRSD-001'> from FdirContext::detect_CW_01 to SSD_BLK_SYS_001::EPS_PRSD;
    #Monitors dependency <'CW-02>SSD-FD-EPS-PRSD-001'> from FdirContext::detect_CW_02 to SSD_BLK_SYS_001::EPS_PRSD;
    #Monitors dependency <'CW-03>SSD-FD-EPS-FCP-001'> from FdirContext::detect_CW_03 to SSD_BLK_SYS_001::EPS_FCP;
    #Monitors dependency <'CW-04>SSD-FD-EPS-FCP-001'> from FdirContext::detect_CW_04 to SSD_BLK_SYS_001::EPS_FCP;
    #RespondsBy dependency <'CW-04>FuelCellCoolingLossResponse'> from FdirContext::detect_CW_04 to SSD_BEH_ORB_002::FuelCellCoolingLossResponse;
    #Monitors dependency <'CW-05>SSD-FD-EPS-FCP-001'> from FdirContext::detect_CW_05 to SSD_BLK_SYS_001::EPS_FCP;
    #RespondsBy dependency <'CW-05>FuelCellCoolingLossResponse'> from FdirContext::detect_CW_05 to SSD_BEH_ORB_002::FuelCellCoolingLossResponse;
    #Monitors dependency <'CW-06>SSD-FD-ECL-PCS-MON-001'> from FdirContext::detect_CW_06 to SSD_BLK_SYS_001::ECL_PCS_MON;
    #Monitors dependency <'CW-06>SSD-FD-ECL-PCS-MNF-001'> from FdirContext::detect_CW_06 to SSD_BLK_SYS_001::ECL_PCS_MNF;
    #RespondsBy dependency <'CW-06>CabinLeakResponse'> from FdirContext::detect_CW_06 to SSD_BEH_ORB_004::CabinLeakResponse;
    #Monitors dependency <'CW-07>SSD-FD-EPS-PRSD-001'> from FdirContext::detect_CW_07 to SSD_BLK_SYS_001::EPS_PRSD;
    #Monitors dependency <'CW-08>SSD-FD-EPS-DC-001'> from FdirContext::detect_CW_08 to SSD_BLK_SYS_001::EPS_DC;
    #Monitors dependency <'CW-09>SSD-FD-EPS-AC-001'> from FdirContext::detect_CW_09 to SSD_BLK_SYS_001::EPS_AC;
    #Monitors dependency <'CW-10>SSD-FD-EPS-AC-001'> from FdirContext::detect_CW_10 to SSD_BLK_SYS_001::EPS_AC;
    #Monitors dependency <'CW-11>SSD-FD-TCS-FCL-001'> from FdirContext::detect_CW_11 to SSD_BLK_SYS_001::TCS_FCL;
    #Monitors dependency <'CW-12>SSD-FD-ARS-AVB-001'> from FdirContext::detect_CW_12 to SSD_BLK_SYS_001::ARS_AVB;
    #Monitors dependency <'CW-12>SSD-FD-ARS-CAC-001'> from FdirContext::detect_CW_12 to SSD_BLK_SYS_001::ARS_CAC;
    #Monitors dependency <'CW-12>SSD-FD-ARS-THC-001'> from FdirContext::detect_CW_12 to SSD_BLK_SYS_001::ARS_THC;
    #Monitors dependency <'CW-13>SSD-FD-GNC-INS-001'> from FdirContext::detect_CW_13 to SSD_BLK_SYS_001::GNC_INS;
    #Monitors dependency <'CW-14>SSD-FD-RCS-PRP-001'> from FdirContext::detect_CW_14 to SSD_BLK_SYS_001::RCS_PRP;
    #Monitors dependency <'CW-14>SSD-FD-RCS-HEP-001'> from FdirContext::detect_CW_14 to SSD_BLK_SYS_001::RCS_HEP;
    #Monitors dependency <'CW-15>SSD-FD-RCS-JET-001'> from FdirContext::detect_CW_15 to SSD_BLK_SYS_001::RCS_JET;
    #Monitors dependency <'CW-15>SSD-FD-RCS-RM-001'> from FdirContext::detect_CW_15 to SSD_BLK_SYS_001::RCS_RM;
    #Monitors dependency <'CW-16>SSD-FD-ARS-WCL-PMP-001'> from FdirContext::detect_CW_16 to SSD_BLK_SYS_001::ARS_WCL_PMP;
    #Monitors dependency <'CW-17>SSD-FD-GNC-FCS-001'> from FdirContext::detect_CW_17 to SSD_BLK_SYS_001::GNC_FCS;
    #Monitors dependency <'CW-18>SSD-FD-GNC-NAS-001'> from FdirContext::detect_CW_18 to SSD_BLK_SYS_001::GNC_NAS;
    #Monitors dependency <'CW-19>SSD-FD-RCS-PRP-001'> from FdirContext::detect_CW_19 to SSD_BLK_SYS_001::RCS_PRP;
    #Monitors dependency <'CW-19>SSD-FD-RCS-HEP-001'> from FdirContext::detect_CW_19 to SSD_BLK_SYS_001::RCS_HEP;
    #Monitors dependency <'CW-20>SSD-FD-RCS-PRP-001'> from FdirContext::detect_CW_20 to SSD_BLK_SYS_001::RCS_PRP;
    #Monitors dependency <'CW-20>SSD-FD-RCS-HEP-001'> from FdirContext::detect_CW_20 to SSD_BLK_SYS_001::RCS_HEP;
    #Monitors dependency <'CW-22>SSD-FD-GNC-CCD-001'> from FdirContext::detect_CW_22 to SSD_BLK_SYS_001::GNC_CCD;
    #Monitors dependency <'CW-23>SSD-FD-GNC-CCD-001'> from FdirContext::detect_CW_23 to SSD_BLK_SYS_001::GNC_CCD;
    #Monitors dependency <'CW-24>SSD-FD-OMS-PSD-001'> from FdirContext::detect_CW_24 to SSD_BLK_SYS_001::OMS_PSD;
    #Monitors dependency <'CW-24>SSD-FD-OMS-HE-001'> from FdirContext::detect_CW_24 to SSD_BLK_SYS_001::OMS_HE;
    #Monitors dependency <'CW-24>SSD-FD-OMS-ENG-001'> from FdirContext::detect_CW_24 to SSD_BLK_SYS_001::OMS_ENG;
    #Monitors dependency <'CW-25>SSD-FD-OMS-PSD-001'> from FdirContext::detect_CW_25 to SSD_BLK_SYS_001::OMS_PSD;
    #Monitors dependency <'CW-25>SSD-FD-OMS-HE-001'> from FdirContext::detect_CW_25 to SSD_BLK_SYS_001::OMS_HE;
    #Monitors dependency <'CW-25>SSD-FD-OMS-ENG-001'> from FdirContext::detect_CW_25 to SSD_BLK_SYS_001::OMS_ENG;
    #Monitors dependency <'CW-26>SSD-FD-PLS-001'> from FdirContext::detect_CW_26 to SSD_BLK_SYS_001::PLS;
    #Monitors dependency <'CW-27>SSD-FD-DPS-GPC-001'> from FdirContext::detect_CW_27 to SSD_BLK_SYS_001::DPS_GPC;
    #Monitors dependency <'CW-28>SSD-FD-GNC-FCS-001'> from FdirContext::detect_CW_28 to SSD_BLK_SYS_001::GNC_FCS;
    #Monitors dependency <'CW-28>SSD-FD-GNC-ACT-001'> from FdirContext::detect_CW_28 to SSD_BLK_SYS_001::GNC_ACT;
    #Monitors dependency <'CW-29>SSD-FD-OMS-PSD-001'> from FdirContext::detect_CW_29 to SSD_BLK_SYS_001::OMS_PSD;
    #Monitors dependency <'CW-30>SSD-FD-OMS-TVC-001'> from FdirContext::detect_CW_30 to SSD_BLK_SYS_001::OMS_TVC;
    #Monitors dependency <'CW-31>SSD-FD-PLS-001'> from FdirContext::detect_CW_31 to SSD_BLK_SYS_001::PLS;
    #Monitors dependency <'CW-32>SSD-FD-CW-PRI-001'> from FdirContext::detect_CW_32 to SSD_BLK_SYS_001::CW_PRI;
    #Monitors dependency <'CW-33>SSD-FD-GNC-ACT-001'> from FdirContext::detect_CW_33 to SSD_BLK_SYS_001::GNC_ACT;
    #Monitors dependency <'CW-34>SSD-FD-MPS-HE-001'> from FdirContext::detect_CW_34 to SSD_BLK_SYS_001::MPS_HE;
    #Monitors dependency <'CW-34>SSD-FD-MPS-PMS-001'> from FdirContext::detect_CW_34 to SSD_BLK_SYS_001::MPS_PMS;
    #RespondsBy dependency <'CW-34>MpsHeliumLeakResponse'> from FdirContext::detect_CW_34 to SSD_BEH_ORB_002::MpsHeliumLeakResponse;
    #Monitors dependency <'CW-36>SSD-FD-CW-BKP-001'> from FdirContext::detect_CW_36 to SSD_BLK_SYS_001::CW_BKP;
    #Monitors dependency <'CW-37>SSD-FD-APU-TRB-001'> from FdirContext::detect_CW_37 to SSD_BLK_SYS_001::APU_TRB;
    #Monitors dependency <'CW-38>SSD-FD-APU-CTL-001'> from FdirContext::detect_CW_38 to SSD_BLK_SYS_001::APU_CTL;
    #Monitors dependency <'CW-38>SSD-FD-APU-TRB-001'> from FdirContext::detect_CW_38 to SSD_BLK_SYS_001::APU_TRB;
    #Monitors dependency <'CW-39>SSD-FD-APU-CTL-001'> from FdirContext::detect_CW_39 to SSD_BLK_SYS_001::APU_CTL;
    #Monitors dependency <'CW-39>SSD-FD-APU-TRB-001'> from FdirContext::detect_CW_39 to SSD_BLK_SYS_001::APU_TRB;
    #Monitors dependency <'CW-40>SSD-FD-APU-HYD-001'> from FdirContext::detect_CW_40 to SSD_BLK_SYS_001::APU_HYD;
    #Monitors dependency <'EM-01>SSD-FD-ECL-FDS-DET-001'> from FdirContext::detect_EM_01 to SSD_BLK_SYS_001::ECL_FDS_DET;
    #Monitors dependency <'EM-01>SSD-FD-ECL-FDS-ALM-001'> from FdirContext::detect_EM_01 to SSD_BLK_SYS_001::ECL_FDS_ALM;
    #RespondsBy dependency <'EM-01>FireResponse'> from FdirContext::detect_EM_01 to SSD_BEH_ORB_002::FireResponse;
    #Monitors dependency <'EM-02>SSD-FD-ECL-PCS-MON-001'> from FdirContext::detect_EM_02 to SSD_BLK_SYS_001::ECL_PCS_MON;
    #RespondsBy dependency <'EM-02>CabinLeakResponse'> from FdirContext::detect_EM_02 to SSD_BEH_ORB_004::CabinLeakResponse;
}
