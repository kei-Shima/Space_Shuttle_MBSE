// SysML v2 テキスト：要求の形式化（属性・制約）と値による判定
// SSD-RQF-SYS-001 要求の形式化定義書（属性・制約・値による判定） の表から生成（lib/build_docs_as.py・rev_as/asdata.py）。
package SSD_RQF_SYS_001 {
    doc /* SSD-RQF-SYS-001 要求の形式化定義書（属性・制約・値による判定）。図124・125 と同じ内容。 */
    private import ScalarValues::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import ModelingMetadata::*;
    metadata def EvaluatedWith { doc /* 判定に使った評価の対象（設計・飛行の個体） */ }
    metadata def Judgement { attribute verdict : String; attribute subjectName : String; attribute source : String; }
    requirement def <'REQ-SYS-01'> ReqSys01 {
        doc /* REQ-SYS-01 の値の形式化（数） */
        attribute majorElements : Integer { doc /* RF-001 主要素の数（単位なし） */ }
        attribute srbCount : Integer { doc /* RF-002 SRB の本数（単位なし） */ }
        attribute ssmeCount : Integer { doc /* RF-003 SSME の基数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ majorElements == 4 }
        require constraint { doc /* ＝ 2 */ srbCount == 2 }
        require constraint { doc /* ＝ 3 */ ssmeCount == 3 }
    }
    #refinement dependency <'REQ-SYS-01>RQM'> from ReqSys01 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_01;
    requirement def <'REQ-SYS-02'> ReqSys02 {
        doc /* REQ-SYS-02 の値の形式化（数値） */
        attribute orbitAltitude : LengthValue { doc /* RF-004 ペイロードを運ぶ地球周回軌道の高度（n.mi.） */ }
        require constraint { doc /* 100〜312 n.mi. */ orbitAltitude >= 100 [nmi] and orbitAltitude <= 312 [nmi] }
    }
    #refinement dependency <'REQ-SYS-02>RQM'> from ReqSys02 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_02;
    requirement def <'REQ-SYS-03'> ReqSys03 {
        doc /* REQ-SYS-03 の値の形式化（数値） */
        attribute payloadBayDiameter : LengthValue { doc /* RF-005 ペイロードベイの直径（ft） */ }
        attribute payloadBayLength : LengthValue { doc /* RF-006 ペイロードベイの長さ（ft） */ }
        require constraint { doc /* ＝ 15 ft */ payloadBayDiameter == 15 [ft] }
        require constraint { doc /* ＝ 60 ft */ payloadBayLength == 60 [ft] }
    }
    #refinement dependency <'REQ-SYS-03>RQM'> from ReqSys03 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_03;
    requirement def <'REQ-SYS-05'> ReqSys05 {
        doc /* REQ-SYS-05 の値の形式化（数） */
        attribute crewCapacity : Integer { doc /* RF-007 運べる乗員の数（単位なし） */ }
        require constraint { doc /* ≦ 8、最大（実績） */ crewCapacity <= 8 }
    }
    #refinement dependency <'REQ-SYS-05>RQM'> from ReqSys05 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_05;
    requirement def <'REQ-SYS-06'> ReqSys06 {
        doc /* REQ-SYS-06 の値の形式化（数値） */
        attribute orbitStayDuration : DurationValue { doc /* RF-008 通常のミッションの軌道滞在期間（d） */ }
        require constraint { doc /* 4〜16 d */ orbitStayDuration >= 4 [d] and orbitStayDuration <= 16 [d] }
    }
    #refinement dependency <'REQ-SYS-06>RQM'> from ReqSys06 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_06;
    requirement def <'REQ-SYS-07'> ReqSys07 {
        doc /* REQ-SYS-07 の値の形式化（数値） */
        attribute cabinPressure : PressureValue { doc /* RF-009 乗員室の圧力（psia） */ }
        require constraint { doc /* 14.5〜14.9 psia、14.7 ± 0.2 psia */ cabinPressure >= 14.5 ['lbf/in²'] and cabinPressure <= 14.9 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-SYS-07>RQM'> from ReqSys07 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_07;
    requirement def <'REQ-SYS-08'> ReqSys08 {
        doc /* REQ-SYS-08 の値の形式化（数値） */
        attribute crewAcceleration : Real { doc /* RF-010 乗員と機体の加速度（g） */ }
        attribute ascentNx : Real { doc /* RF-011 上昇時の Nx（g） */ }
        require constraint { doc /* ≦ 3 g */ crewAcceleration <= 3 }
        require constraint { doc /* ≦ 3.11 g、上昇時 */ ascentNx <= 3.11 }
    }
    #refinement dependency <'REQ-SYS-08>RQM'> from ReqSys08 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_08;
    requirement def <'REQ-SYS-09'> ReqSys09 {
        doc /* REQ-SYS-09 の値の形式化（数値） */
        attribute crossrange : LengthValue { doc /* RF-012 帰還時の横方向移動（クロスレンジ）の能力（n.mi.） */ }
        require constraint { doc /* ≧ 1100 n.mi.、約 */ crossrange >= 1100 [nmi] }
    }
    #refinement dependency <'REQ-SYS-09>RQM'> from ReqSys09 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_09;
    requirement def <'REQ-SYS-10'> ReqSys10 {
        doc /* REQ-SYS-10 の値の形式化（数） */
        attribute faultsToContinueMission : Integer { doc /* RF-013 ミッションを継続できる故障の数（単位なし） */ }
        attribute faultsToSafeReturn : Integer { doc /* RF-014 安全に帰還できる故障の数（単位なし） */ }
        require constraint { doc /* ≧ 1 */ faultsToContinueMission >= 1 }
        require constraint { doc /* ≧ 2 */ faultsToSafeReturn >= 2 }
    }
    #refinement dependency <'REQ-SYS-10>RQM'> from ReqSys10 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
    requirement def <'REQ-SYS-11'> ReqSys11 {
        doc /* REQ-SYS-11 の値の形式化（数） */
        attribute redundancyLevels : Integer { doc /* RF-015 冗長の判定段階の数（2故障許容・1故障許容・0故障許容・飛行不能）（単位なし） */ }
        require constraint { doc /* ＝ 4 */ redundancyLevels == 4 }
    }
    #refinement dependency <'REQ-SYS-11>RQM'> from ReqSys11 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_11;
    requirement def <'REQ-SYS-12'> ReqSys12 {
        doc /* REQ-SYS-12 の値の形式化（数値） */
        attribute eomLandingTime : DurationValue { doc /* RF-016 通常の EOM 着陸までの飛行時間（h） */ }
        require constraint { doc /* ≧ 96 h、約、第5飛行日以降 */ eomLandingTime >= 96 [h] }
    }
    #refinement dependency <'REQ-SYS-12>RQM'> from ReqSys12 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_12;
    requirement def <'REQ-SYS-13'> ReqSys13 {
        doc /* REQ-SYS-13 の値の形式化（数値） */
        attribute extensionDays : DurationValue { doc /* RF-017 確保する延長日（天候1日・ウェーブオフ1日）（d） */ }
        require constraint { doc /* ≧ 2 d */ extensionDays >= 2 [d] }
    }
    #refinement dependency <'REQ-SYS-13>RQM'> from ReqSys13 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_13;
    requirement def <'REQ-SYS-14'> ReqSys14 {
        doc /* REQ-SYS-14 の値の形式化（数） */
        attribute goNoGoCategories : Integer { doc /* RF-018 Go/No-Go の判定区分の数（上昇継続・MDF・次の PLS）（単位なし） */ }
        require constraint { doc /* ＝ 3 */ goNoGoCategories == 3 }
    }
    #refinement dependency <'REQ-SYS-14>RQM'> from ReqSys14 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
    requirement def <'REQ-SYS-15'> ReqSys15 {
        doc /* REQ-SYS-15 の値の形式化（数） */
        attribute intactAbortModes : Integer { doc /* RF-019 intact アボートの種類の数（RTLS・TAL・AOA・ATO）（単位なし） */ }
        require constraint { doc /* ＝ 4 */ intactAbortModes == 4 }
    }
    #refinement dependency <'REQ-SYS-15>RQM'> from ReqSys15 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_15;
    requirement def <'REQ-SYS-17'> ReqSys17 {
        doc /* REQ-SYS-17 の値の形式化（数値） */
        attribute eomLandingWeight : MassValue { doc /* RF-020 EOM の着陸重量（lb） */ }
        attribute abortLandingWeightLimit : MassValue { doc /* RF-021 アボートの着陸重量の認定限界（lb） */ }
        require constraint { doc /* ≦ 233000 lb */ eomLandingWeight <= 233000 [lb] }
        require constraint { doc /* 239000〜248000 lb、軌道傾斜角に応じた限界で、着陸重量はその限界以下 */ abortLandingWeightLimit >= 239000 [lb] and abortLandingWeightLimit <= 248000 [lb] }
    }
    #refinement dependency <'REQ-SYS-17>RQM'> from ReqSys17 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_17;
    requirement def <'REQ-SYS-18'> ReqSys18 {
        doc /* REQ-SYS-18 の値の形式化（数値） */
        attribute noseGearSinkRate : SpeedValue { doc /* RF-022 前脚接地の降下率（ft/s） */ }
        attribute noseGearPitchRate : Real { doc /* RF-023 前脚接地のピッチ角速度（deg/s） */ }
        require constraint { doc /* ≦ 11.5 ft/s */ noseGearSinkRate <= 11.5 ['ft/s'] }
        require constraint { doc /* ≦ 9.9 deg/s */ noseGearPitchRate <= 9.9 }
    }
    #refinement dependency <'REQ-SYS-18>RQM'> from ReqSys18 to SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_18;
    requirement def <'REQ-APU-01'> ReqApu01 {
        doc /* REQ-APU-01 の値の形式化（数値） */
        attribute apuCount : Integer { doc /* RF-024 独立した APU の台数（単位なし） */ }
        attribute hydrazineLoadPerApu : MassValue { doc /* RF-025 APU 1台あたりの無水ヒドラジンの搭載量（lb） */ }
        attribute nominalRunTime : DurationValue { doc /* RF-026 公称の連続運転時間（min） */ }
        attribute extendedRunTime : DurationValue { doc /* RF-027 AOA などの連続運転時間（min） */ }
        require constraint { doc /* ＝ 3 */ apuCount == 3 }
        require constraint { doc /* ＝ 332 lb、約 */ hydrazineLoadPerApu == 332 [lb] }
        require constraint { doc /* ≧ 90 min、公称 */ nominalRunTime >= 90 [min] }
        require constraint { doc /* ≧ 110 min、約、AOA のような場合 */ extendedRunTime >= 110 [min] }
    }
    #refinement dependency <'REQ-APU-01>RQM'> from ReqApu01 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
    requirement def <'REQ-APU-02'> ReqApu02 {
        doc /* REQ-APU-02 の値の形式化（数値） */
        attribute fuelSystemTemperature : ThermodynamicTemperatureValue { doc /* RF-028 燃料系の温度（°F） */ }
        require constraint { doc /* ≧ 35 °F、35°F 超（厳密） */ fuelSystemTemperature >= 35 ['°F_abs'] }
    }
    #refinement dependency <'REQ-APU-02>RQM'> from ReqApu02 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
    requirement def <'REQ-APU-03'> ReqApu03 {
        doc /* REQ-APU-03 の値の形式化（数値） */
        attribute lubeOilPressure : PressureValue { doc /* RF-029 潤滑油の圧力（psi） */ }
        require constraint { doc /* ＝ 60 psi、約 */ lubeOilPressure == 60 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-APU-03>RQM'> from ReqApu03 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
    requirement def <'REQ-APU-04'> ReqApu04 {
        doc /* REQ-APU-04 の値の形式化（数値） */
        attribute controlledSpeedPct : Real { doc /* RF-030 制御する回転数（定格比）（%） */ }
        attribute controlledSpeed : Real { doc /* RF-031 制御する回転数（rpm） */ }
        attribute underspeedShutdownPct : Real { doc /* RF-032 自動停止の低回転の限界（未満で停止）（%） */ }
        attribute overspeedShutdownPct : Real { doc /* RF-033 自動停止の過回転の限界（超で停止）（%） */ }
        attribute speedPickups : Integer { doc /* RF-034 回転数を測るピックアップの数（単位なし） */ }
        require constraint { doc /* ＝ 103 % */ controlledSpeedPct == 103 }
        require constraint { doc /* ＝ 74160 rpm、要求文は約 74,000 rpm */ controlledSpeed == 74160 }
        require constraint { doc /* ＝ 80 % */ underspeedShutdownPct == 80 }
        require constraint { doc /* ＝ 129 % */ overspeedShutdownPct == 129 }
        require constraint { doc /* ＝ 3 */ speedPickups == 3 }
    }
    #refinement dependency <'REQ-APU-04>RQM'> from ReqApu04 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
    requirement def <'REQ-APU-05'> ReqApu05 {
        doc /* REQ-APU-05 の値の形式化（数値） */
        attribute hydraulicSystems : Integer { doc /* RF-035 独立した油圧系の数（単位なし） */ }
        attribute mainPumpPressure : PressureValue { doc /* RF-036 主油圧ポンプの供給圧（psi） */ }
        attribute mainPumpFlow : Real { doc /* RF-037 主油圧ポンプの流量（gpm） */ }
        require constraint { doc /* ＝ 3 */ hydraulicSystems == 3 }
        require constraint { doc /* ＝ 3000 psi */ mainPumpPressure == 3000 ['lbf/in²'] }
        require constraint { doc /* 0〜63 gpm */ mainPumpFlow >= 0 and mainPumpFlow <= 63 }
    }
    #refinement dependency <'REQ-APU-05>RQM'> from ReqApu05 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
    requirement def <'REQ-APU-06'> ReqApu06 {
        doc /* REQ-APU-06 の値の形式化（数値） */
        attribute accumulatorRepressPressure : PressureValue { doc /* RF-038 アキュムレータの再加圧の圧力（psi） */ }
        attribute circPumpsRunning : Integer { doc /* RF-039 同時に運転する循環ポンプの数（単位なし） */ }
        require constraint { doc /* ＝ 1960 psi、循環ポンプで再加圧 */ accumulatorRepressPressure == 1960 ['lbf/in²'] }
        require constraint { doc /* ≦ 1 */ circPumpsRunning <= 1 }
    }
    #refinement dependency <'REQ-APU-06>RQM'> from ReqApu06 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
    requirement def <'REQ-APU-07'> ReqApu07 {
        doc /* REQ-APU-07 の値の形式化（数値） */
        attribute lubeOilTemperature : ThermodynamicTemperatureValue { doc /* RF-040 潤滑油の温度（°F） */ }
        attribute hydraulicFluidTemperature : ThermodynamicTemperatureValue { doc /* RF-041 作動油の温度（°F） */ }
        require constraint { doc /* ＝ 250 °F、約 */ lubeOilTemperature == 250 ['°F_abs'] }
        require constraint { doc /* 210〜220 °F */ hydraulicFluidTemperature >= 210 ['°F_abs'] and hydraulicFluidTemperature <= 220 ['°F_abs'] }
    }
    #refinement dependency <'REQ-APU-07>RQM'> from ReqApu07 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
    requirement def <'REQ-APU-08'> ReqApu08 {
        doc /* REQ-APU-08 の値の形式化（数） */
        attribute hydraulicSystemsForEntry : Integer { doc /* RF-042 突入に確保する油圧系の数（単位なし） */ }
        require constraint { doc /* ≧ 2 */ hydraulicSystemsForEntry >= 2 }
    }
    #refinement dependency <'REQ-APU-08>RQM'> from ReqApu08 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
    requirement def <'REQ-APU-09'> ReqApu09 {
        doc /* REQ-APU-09 の値の形式化（数値） */
        attribute apuFuelReserve : MassValue { doc /* RF-043 軌道離脱前に残す APU の燃料（lb） */ }
        attribute wsbWaterReserve : MassValue { doc /* RF-044 軌道離脱前に残す WSB の水（lb） */ }
        require constraint { doc /* ≧ 192 lb、2〜3系統が使えるとき */ apuFuelReserve >= 192 [lb] }
        require constraint { doc /* ≧ 63 lb、2〜3系統が使えるとき */ wsbWaterReserve >= 63 [lb] }
    }
    #refinement dependency <'REQ-APU-09>RQM'> from ReqApu09 to SSD_RQM_SYS_001::REQ_APU::REQ_APU_09;
    requirement def <'REQ-CREW-01'> ReqCrew01 {
        doc /* REQ-CREW-01 の値の形式化（数値） */
        attribute sleepPeriod : DurationValue { doc /* RF-045 1日の睡眠時間（h） */ }
        attribute activityPeriod : DurationValue { doc /* RF-046 1日の活動時間（h） */ }
        require constraint { doc /* ＝ 8 h */ sleepPeriod == 8 [h] }
        require constraint { doc /* ＝ 16 h */ activityPeriod == 16 [h] }
    }
    #refinement dependency <'REQ-CREW-01>RQM'> from ReqCrew01 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
    requirement def <'REQ-CREW-02'> ReqCrew02 {
        doc /* REQ-CREW-02 の値の形式化（数値） */
        attribute exerciseInterval : DurationValue { doc /* RF-047 CDR・PLT・MS2 の運動の間隔（d） */ }
        attribute otherCrewExerciseInterval : DurationValue { doc /* RF-048 他の乗員の運動の間隔（d） */ }
        require constraint { doc /* ≦ 2 d、少なくとも1日おき（FD04〜EOM-1） */ exerciseInterval <= 2 [d] }
        require constraint { doc /* ≦ 3 d、11日を超える飛行 */ otherCrewExerciseInterval <= 3 [d] }
    }
    #refinement dependency <'REQ-CREW-02>RQM'> from ReqCrew02 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
    requirement def <'REQ-CREW-03'> ReqCrew03 {
        doc /* REQ-CREW-03 の値の形式化（数値） */
        attribute noiseActionLevel : Real { doc /* RF-049 処置をとる24時間平均の騒音レベル（以上で処置）（dBA） */ }
        attribute wetTrashVentRate : MassFlowRateValue { doc /* RF-050 湿ったごみの排気量（lb/d） */ }
        require constraint { doc /* ＝ 74 dBA */ noiseActionLevel == 74 }
        require constraint { doc /* ＝ 3 lb/d、約 */ wetTrashVentRate == 3 [lb/d] }
    }
    #refinement dependency <'REQ-CREW-03>RQM'> from ReqCrew03 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
    requirement def <'REQ-CREW-04'> ReqCrew04 {
        doc /* REQ-CREW-04 の値の形式化（数値） */
        attribute lockerStowageVolume : VolumeValue { doc /* RF-051 交換可能なロッカーの収納容積（ft3） */ }
        attribute lockerMass : MassValue { doc /* RF-052 ロッカー1個の質量（lb） */ }
        require constraint { doc /* ＝ 150 ft3、約 */ lockerStowageVolume == 150 ['ft³'] }
        require constraint { doc /* ≦ 68 lb */ lockerMass <= 68 [lb] }
    }
    #refinement dependency <'REQ-CREW-04>RQM'> from ReqCrew04 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
    requirement def <'REQ-CREW-05'> ReqCrew05 {
        doc /* REQ-CREW-05 の値の形式化（数値） */
        attribute supplementalO2Fraction : Real { doc /* RF-053 補助酸素の酸素濃度（%） */ }
        require constraint { doc /* ＝ 100 % */ supplementalO2Fraction == 100 }
    }
    #refinement dependency <'REQ-CREW-05>RQM'> from ReqCrew05 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
    requirement def <'REQ-CREW-07'> ReqCrew07 {
        doc /* REQ-CREW-07 の値の形式化（数値） */
        attribute flightDeckLightingPower : PowerValue { doc /* RF-054 操縦室照明の電力（kW） */ }
        require constraint { doc /* 1〜2 kW */ flightDeckLightingPower >= 1 [kW] and flightDeckLightingPower <= 2 [kW] }
    }
    #refinement dependency <'REQ-CREW-07>RQM'> from ReqCrew07 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
    requirement def <'REQ-CREW-08'> ReqCrew08 {
        doc /* REQ-CREW-08 の値の形式化（数値） */
        attribute bailoutAltitude : LengthValue { doc /* RF-055 脱出できる制御された滑空の高度（ft） */ }
        attribute acesSuitPressure : PressureValue { doc /* RF-056 ACES（与圧服）の圧力（psia） */ }
        require constraint { doc /* ≦ 30000 ft */ bailoutAltitude <= 30000 [ft] }
        require constraint { doc /* ＝ 3.67 psia */ acesSuitPressure == 3.67 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-CREW-08>RQM'> from ReqCrew08 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
    requirement def <'REQ-CREW-09'> ReqCrew09 {
        doc /* REQ-CREW-09 の値の形式化（数） */
        attribute escapeRoutes : Integer { doc /* RF-057 脱出口の数（側面ハッチ・頭上窓）（単位なし） */ }
        require constraint { doc /* ＝ 2 */ escapeRoutes == 2 }
    }
    #refinement dependency <'REQ-CREW-09>RQM'> from ReqCrew09 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
    requirement def <'REQ-CREW-10'> ReqCrew10 {
        doc /* REQ-CREW-10 の値の形式化（数） */
        attribute lesO2Systems : Integer { doc /* RF-058 LES の酸素供給系の系統数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ lesO2Systems == 2 }
    }
    #refinement dependency <'REQ-CREW-10>RQM'> from ReqCrew10 to SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_10;
    requirement def <'REQ-CT-01'> ReqCt01 {
        doc /* REQ-CT-01 の値の形式化（数値） */
        attribute forwardLinkRate : Real { doc /* RF-059 S帯 PM のフォワードリンクの速度（kbps） */ }
        attribute majorLruRedundancy : Integer { doc /* RF-060 主要 LRU（トランスポンダ・前置増幅器・電力増幅器・NSP）の各台数（単位なし） */ }
        require constraint { doc /* ＝ 72 kbps */ forwardLinkRate == 72 }
        require constraint { doc /* ＝ 2 */ majorLruRedundancy == 2 }
    }
    #refinement dependency <'REQ-CT-01>RQM'> from ReqCt01 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
    requirement def <'REQ-CT-02'> ReqCt02 {
        doc /* REQ-CT-02 の値の形式化（数値） */
        attribute sbandFmFrequency : FrequencyValue { doc /* RF-061 S帯 FM の周波数（MHz） */ }
        attribute fmTransmitters : Integer { doc /* RF-062 S帯 FM の送信機の台数（単位なし） */ }
        require constraint { doc /* ＝ 2250 MHz */ sbandFmFrequency == 2.25E9 [Hz] }
        require constraint { doc /* ＝ 2 */ fmTransmitters == 2 }
    }
    #refinement dependency <'REQ-CT-02>RQM'> from ReqCt02 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_02;
    requirement def <'REQ-CT-03'> ReqCt03 {
        doc /* REQ-CT-03 の値の形式化（数値） */
        attribute kuChannels : Integer { doc /* RF-063 Ku帯の通信チャネル数（単位なし） */ }
        attribute kuOperationalRate : Real { doc /* RF-064 Ku帯の運用の速度（kbps） */ }
        attribute kuMaxRate : Real { doc /* RF-065 Ku帯の最大速度（Mbps） */ }
        require constraint { doc /* ＝ 3 */ kuChannels == 3 }
        require constraint { doc /* ＝ 192 kbps */ kuOperationalRate == 192 }
        require constraint { doc /* ＝ 4 Mbps、4 Mbps 級 */ kuMaxRate == 4 }
    }
    #refinement dependency <'REQ-CT-03>RQM'> from ReqCt03 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
    requirement def <'REQ-CT-04'> ReqCt04 {
        doc /* REQ-CT-04 の値の形式化（数値） */
        attribute kuAntennaStowTime : DurationValue { doc /* RF-066 Ku帯アンテナの展開・格納の時間（s） */ }
        require constraint { doc /* ＝ 23 s */ kuAntennaStowTime == 23 [s] }
    }
    #refinement dependency <'REQ-CT-04>RQM'> from ReqCt04 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_04;
    requirement def <'REQ-CT-05'> ReqCt05 {
        doc /* REQ-CT-05 の値の形式化（数値） */
        attribute uhfPrimaryFrequency : FrequencyValue { doc /* RF-067 UHF の主周波数（MHz） */ }
        attribute uhfBackupFrequency : FrequencyValue { doc /* RF-068 UHF の予備周波数（MHz） */ }
        attribute ssorSets : Integer { doc /* RF-069 SSOR の組数（単位なし） */ }
        require constraint { doc /* ＝ 259.7 MHz */ uhfPrimaryFrequency == 259700000 [Hz] }
        require constraint { doc /* ＝ 296.8 MHz */ uhfBackupFrequency == 296800000 [Hz] }
        require constraint { doc /* ＝ 2 */ ssorSets == 2 }
    }
    #refinement dependency <'REQ-CT-05>RQM'> from ReqCt05 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
    requirement def <'REQ-CT-06'> ReqCt06 {
        doc /* REQ-CT-06 の値の形式化（数） */
        attribute audioLoops : Integer { doc /* RF-070 音声ループの数（単位なし） */ }
        attribute atuCount : Integer { doc /* RF-071 ATU の台数（単位なし） */ }
        require constraint { doc /* ＝ 8 */ audioLoops == 8 }
        require constraint { doc /* ＝ 6 */ atuCount == 6 }
    }
    #refinement dependency <'REQ-CT-06>RQM'> from ReqCt06 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
    requirement def <'REQ-CT-07'> ReqCt07 {
        doc /* REQ-CT-07 の値の形式化（数） */
        attribute vsuInputs : Integer { doc /* RF-072 VSU の入力数（単位なし） */ }
        attribute vsuOutputs : Integer { doc /* RF-073 VSU の出力数（単位なし） */ }
        require constraint { doc /* ＝ 13 */ vsuInputs == 13 }
        require constraint { doc /* ＝ 7 */ vsuOutputs == 7 }
    }
    #refinement dependency <'REQ-CT-07>RQM'> from ReqCt07 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
    requirement def <'REQ-CT-08'> ReqCt08 {
        doc /* REQ-CT-08 の値の形式化（数） */
        attribute dscCount : Integer { doc /* RF-074 DSC の台数（単位なし） */ }
        attribute oiMdmCount : Integer { doc /* RF-075 OI MDM の台数（単位なし） */ }
        attribute pcmmuCount : Integer { doc /* RF-076 PCMMU の台数（単位なし） */ }
        attribute ssrCount : Integer { doc /* RF-077 記録器（SSR）の台数（単位なし） */ }
        require constraint { doc /* ＝ 14 */ dscCount == 14 }
        require constraint { doc /* ＝ 7 */ oiMdmCount == 7 }
        require constraint { doc /* ＝ 2 */ pcmmuCount == 2 }
        require constraint { doc /* ＝ 2 */ ssrCount == 2 }
    }
    #refinement dependency <'REQ-CT-08>RQM'> from ReqCt08 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
    requirement def <'REQ-CT-09'> ReqCt09 {
        doc /* REQ-CT-09 の値の形式化（数） */
        attribute voicePaths : Integer { doc /* RF-078 音声の系統数（単位なし） */ }
        attribute commandPaths : Integer { doc /* RF-079 コマンドの系統数（単位なし） */ }
        attribute pathLossForNextPls : Integer { doc /* RF-080 次の PLS とする系統の喪失数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ voicePaths == 3 }
        require constraint { doc /* ＝ 2 */ commandPaths == 2 }
        require constraint { doc /* ＝ 2 */ pathLossForNextPls == 2 }
    }
    #refinement dependency <'REQ-CT-09>RQM'> from ReqCt09 to SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
    requirement def <'REQ-CW-01'> ReqCw01 {
        doc /* REQ-CW-01 の値の形式化（数値） */
        attribute cwInputs : Integer { doc /* RF-081 主C/W の入力数（単位なし） */ }
        attribute cwSampleRate : FrequencyValue { doc /* RF-082 主C/W の標本化の周波数（Hz） */ }
        attribute consecutiveSamples : Integer { doc /* RF-083 限界外れと判定する連続標本数（単位なし） */ }
        attribute detectionWindow : DurationValue { doc /* RF-084 限界外れの判定時間（ms） */ }
        require constraint { doc /* ＝ 120 */ cwInputs == 120 }
        require constraint { doc /* ＝ 80 Hz */ cwSampleRate == 80 [Hz] }
        require constraint { doc /* ＝ 8 */ consecutiveSamples == 8 }
        require constraint { doc /* ＝ 100 ms */ detectionWindow == 0.1 [s] }
    }
    #refinement dependency <'REQ-CW-01>RQM'> from ReqCw01 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
    requirement def <'REQ-CW-02'> ReqCw02 {
        doc /* REQ-CW-02 の値の形式化（数） */
        attribute cwPowerSources : Integer { doc /* RF-085 C/W 電子装置の電源の系統数（ESS 1BC・ESS 2CA）（単位なし） */ }
        attribute selfTestParameters : Integer { doc /* RF-086 自己試験のパラメータ数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ cwPowerSources == 2 }
        require constraint { doc /* ＝ 8 */ selfTestParameters == 8 }
    }
    #refinement dependency <'REQ-CW-02>RQM'> from ReqCw02 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_02;
    requirement def <'REQ-CW-03'> ReqCw03 {
        doc /* REQ-CW-03 の値の形式化（数） */
        attribute masterAlarmLights : Integer { doc /* RF-087 MASTER ALARM 灯の数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ masterAlarmLights == 4 }
    }
    #refinement dependency <'REQ-CW-03>RQM'> from ReqCw03 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
    requirement def <'REQ-CW-04'> ReqCw04 {
        doc /* REQ-CW-04 の値の形式化（数） */
        attribute limitSetsPerParameter : Integer { doc /* RF-088 パラメータごとの限界の組数（単位なし） */ }
        require constraint { doc /* 1〜3 */ limitSetsPerParameter >= 1 and limitSetsPerParameter <= 3 }
    }
    #refinement dependency <'REQ-CW-04>RQM'> from ReqCw04 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
    requirement def <'REQ-CW-06'> ReqCw06 {
        doc /* REQ-CW-06 の値の形式化（数） */
        attribute toneGenerators : Integer { doc /* RF-089 トーン発生器の数（A・B）（単位なし） */ }
        require constraint { doc /* ＝ 2 */ toneGenerators == 2 }
    }
    #refinement dependency <'REQ-CW-06>RQM'> from ReqCw06 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
    requirement def <'REQ-CW-07'> ReqCw07 {
        doc /* REQ-CW-07 の値の形式化（数） */
        attribute masterAlarmLights : Integer { doc /* RF-090 MASTER ALARM 灯の数（単位なし） */ }
        attribute f7AnnunciatorLights : Integer { doc /* RF-091 F7 表示盤の表示灯の数（単位なし） */ }
        attribute bulbsPerLight : Integer { doc /* RF-092 表示灯1つあたりの並列の電球の数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ masterAlarmLights == 4 }
        require constraint { doc /* ＝ 40 */ f7AnnunciatorLights == 40 }
        require constraint { doc /* ＝ 2 */ bulbsPerLight == 2 }
    }
    #refinement dependency <'REQ-CW-07>RQM'> from ReqCw07 to SSD_RQM_SYS_001::REQ_CW::REQ_CW_07;
    requirement def <'REQ-DPS-01'> ReqDps01 {
        doc /* REQ-DPS-01 の値の形式化（数） */
        attribute gpcCount : Integer { doc /* RF-093 同一の GPC の台数（単位なし） */ }
        attribute redundantSetSize : Integer { doc /* RF-094 上昇・再突入の冗長セットの GPC の数（単位なし） */ }
        attribute bfsGpcCount : Integer { doc /* RF-095 BFS を載せる GPC の台数（単位なし） */ }
        require constraint { doc /* ＝ 5 */ gpcCount == 5 }
        require constraint { doc /* ≧ 4 */ redundantSetSize >= 4 }
        require constraint { doc /* ＝ 1 */ bfsGpcCount == 1 }
    }
    #refinement dependency <'REQ-DPS-01>RQM'> from ReqDps01 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
    requirement def <'REQ-DPS-03'> ReqDps03 {
        doc /* REQ-DPS-03 の値の形式化（数） */
        attribute rpcPerGpc : Integer { doc /* RF-096 GPC ごとの RPC の数（3主母線から）（単位なし） */ }
        require constraint { doc /* ＝ 3 */ rpcPerGpc == 3 }
    }
    #refinement dependency <'REQ-DPS-03>RQM'> from ReqDps03 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
    requirement def <'REQ-DPS-04'> ReqDps04 {
        doc /* REQ-DPS-04 の値の形式化（数） */
        attribute bfsGpcCount : Integer { doc /* RF-097 BFS を載せる GPC の台数（単位なし） */ }
        require constraint { doc /* ＝ 1 */ bfsGpcCount == 1 }
    }
    #refinement dependency <'REQ-DPS-04>RQM'> from ReqDps04 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
    requirement def <'REQ-DPS-05'> ReqDps05 {
        doc /* REQ-DPS-05 の値の形式化（数値） */
        attribute mmuCount : Integer { doc /* RF-098 MMU の台数（単位なし） */ }
        attribute mmuCapacity : Real { doc /* RF-099 MMU 1台の容量（Mbit） */ }
        require constraint { doc /* ＝ 2 */ mmuCount == 2 }
        require constraint { doc /* ＝ 128 Mbit */ mmuCapacity == 128 }
    }
    #refinement dependency <'REQ-DPS-05>RQM'> from ReqDps05 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
    requirement def <'REQ-DPS-06'> ReqDps06 {
        doc /* REQ-DPS-06 の値の形式化（数） */
        attribute flightCriticalBuses : Integer { doc /* RF-100 飛行重要バスの本数（単位なし） */ }
        attribute strings : Integer { doc /* RF-101 ストリングの数（単位なし） */ }
        require constraint { doc /* ＝ 8 */ flightCriticalBuses == 8 }
        require constraint { doc /* ＝ 4 */ strings == 4 }
    }
    #refinement dependency <'REQ-DPS-06>RQM'> from ReqDps06 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
    requirement def <'REQ-DPS-07'> ReqDps07 {
        doc /* REQ-DPS-07 の値の形式化（数） */
        attribute dpsMdmCount : Integer { doc /* RF-102 DPS の MDM の台数（単位なし） */ }
        attribute oiMdmCount : Integer { doc /* RF-103 OI MDM の台数（単位なし） */ }
        attribute mdmPowerFeeds : Integer { doc /* RF-104 MDM に給電する主母線の数（単位なし） */ }
        require constraint { doc /* ＝ 13 */ dpsMdmCount == 13 }
        require constraint { doc /* ＝ 7 */ oiMdmCount == 7 }
        require constraint { doc /* ＝ 2 */ mdmPowerFeeds == 2 }
    }
    #refinement dependency <'REQ-DPS-07>RQM'> from ReqDps07 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
    requirement def <'REQ-DPS-08'> ReqDps08 {
        doc /* REQ-DPS-08 の値の形式化（数） */
        attribute eiuCount : Integer { doc /* RF-105 EIU の台数（各エンジン専用）（単位なし） */ }
        attribute eiuCommandSources : Integer { doc /* RF-106 EIU が指令を受ける GPC の数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ eiuCount == 3 }
        require constraint { doc /* ＝ 4 */ eiuCommandSources == 4 }
    }
    #refinement dependency <'REQ-DPS-08>RQM'> from ReqDps08 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
    requirement def <'REQ-DPS-09'> ReqDps09 {
        doc /* REQ-DPS-09 の値の形式化（数） */
        attribute mecCount : Integer { doc /* RF-107 MEC の台数（単位なし） */ }
        attribute pyroSignals : Integer { doc /* RF-108 火工品の信号の数（arm・fire 1・fire 2）（単位なし） */ }
        require constraint { doc /* ＝ 2 */ mecCount == 2 }
        require constraint { doc /* ＝ 3 */ pyroSignals == 3 }
    }
    #refinement dependency <'REQ-DPS-09>RQM'> from ReqDps09 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
    requirement def <'REQ-DPS-10'> ReqDps10 {
        doc /* REQ-DPS-10 の値の形式化（数） */
        attribute idpCount : Integer { doc /* RF-109 IDP の台数（単位なし） */ }
        attribute mduCount : Integer { doc /* RF-110 MDU の台数（単位なし） */ }
        attribute adcCount : Integer { doc /* RF-111 ADC の台数（単位なし） */ }
        attribute keyboardCount : Integer { doc /* RF-112 キーボードの数（単位なし） */ }
        attribute idpPerMdu : Integer { doc /* RF-113 MDU がつながる IDP の数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ idpCount == 4 }
        require constraint { doc /* ＝ 11 */ mduCount == 11 }
        require constraint { doc /* ＝ 4 */ adcCount == 4 }
        require constraint { doc /* ＝ 3 */ keyboardCount == 3 }
        require constraint { doc /* ＝ 2 */ idpPerMdu == 2 }
    }
    #refinement dependency <'REQ-DPS-10>RQM'> from ReqDps10 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_10;
    requirement def <'REQ-DPS-11'> ReqDps11 {
        doc /* REQ-DPS-11 の値の形式化（数値） */
        attribute oscillators : Integer { doc /* RF-114 MTU の発振器の数（単位なし） */ }
        attribute accumulators : Integer { doc /* RF-115 MTU の累算器の数（単位なし） */ }
        attribute mtuPowerFeeds : Integer { doc /* RF-116 MTU に給電する必須母線の数（単位なし） */ }
        attribute gpcSyncError : DurationValue { doc /* RF-117 GPC の時刻の同期のずれ（ms） */ }
        require constraint { doc /* ＝ 2 */ oscillators == 2 }
        require constraint { doc /* ＝ 3 */ accumulators == 3 }
        require constraint { doc /* ＝ 2 */ mtuPowerFeeds == 2 }
        require constraint { doc /* ≦ 1 ms、1 ms 未満（厳密） */ gpcSyncError <= 0.001 [s] }
    }
    #refinement dependency <'REQ-DPS-11>RQM'> from ReqDps11 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
    requirement def <'REQ-DPS-13'> ReqDps13 {
        doc /* REQ-DPS-13 の値の形式化（数） */
        attribute gpcLossForMdf : Integer { doc /* RF-118 MDF とする GPC の喪失の数（単位なし） */ }
        attribute deorbitSoftwareSources : Integer { doc /* RF-119 軌道離脱用ソフトウェアの独立した源の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ gpcLossForMdf == 2 }
        require constraint { doc /* ≧ 2 */ deorbitSoftwareSources >= 2 }
    }
    #refinement dependency <'REQ-DPS-13>RQM'> from ReqDps13 to SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_13;
    requirement def <'REQ-ECLSS-01'> ReqEclss01 {
        doc /* REQ-ECLSS-01 の値の形式化（数値） */
        attribute cabinPressure : PressureValue { doc /* RF-120 乗員室の全圧（psia） */ }
        attribute nitrogenFraction : Real { doc /* RF-121 窒素の割合（%） */ }
        attribute oxygenFraction : Real { doc /* RF-122 酸素の割合（%） */ }
        attribute oxygenPartialPressure : PressureValue { doc /* RF-123 酸素分圧（PPO2）（psi） */ }
        require constraint { doc /* 14.5〜14.9 psia、14.7±0.2 psia */ cabinPressure >= 14.5 ['lbf/in²'] and cabinPressure <= 14.9 ['lbf/in²'] }
        require constraint { doc /* ＝ 80 %、約 */ nitrogenFraction == 80 }
        require constraint { doc /* ＝ 20 %、約 */ oxygenFraction == 20 }
        require constraint { doc /* 2.95〜3.45 psi */ oxygenPartialPressure >= 2.95 ['lbf/in²'] and oxygenPartialPressure <= 3.45 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-ECLSS-01>RQM'> from ReqEclss01 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
    requirement def <'REQ-ECLSS-02'> ReqEclss02 {
        doc /* REQ-ECLSS-02 の値の形式化（数値） */
        attribute rapidDepressRateAlarm : Real { doc /* RF-124 急減圧の警報の dP/dT の閾値（psi/min） */ }
        require constraint { doc /* ≦ -0.08 psi/min、dP/dT がこの値以下（減圧率 0.08 psi/min 以上）でクラクソン・MASTER ALARM */ rapidDepressRateAlarm <= -0.08 }
    }
    #refinement dependency <'REQ-ECLSS-02>RQM'> from ReqEclss02 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
    requirement def <'REQ-ECLSS-03'> ReqEclss03 {
        doc /* REQ-ECLSS-03 の値の形式化（数値） */
        attribute emergencyCabinPressure : PressureValue { doc /* RF-125 非常時 8 psia モードの乗員室圧（psia） */ }
        require constraint { doc /* 7.8〜8.2 psia、8±0.2 psia */ emergencyCabinPressure >= 7.8 ['lbf/in²'] and emergencyCabinPressure <= 8.2 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-ECLSS-03>RQM'> from ReqEclss03 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
    requirement def <'REQ-ECLSS-04'> ReqEclss04 {
        doc /* REQ-ECLSS-04 の値の形式化（数値） */
        attribute preEvaCabinPressure : PressureValue { doc /* RF-126 EVA 前に下げる乗員室圧（psia） */ }
        require constraint { doc /* ＝ 10.2 psia */ preEvaCabinPressure == 10.2 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-ECLSS-04>RQM'> from ReqEclss04 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
    requirement def <'REQ-ECLSS-05'> ReqEclss05 {
        doc /* REQ-ECLSS-05 の値の形式化（数値） */
        attribute relativeHumidity : Real { doc /* RF-127 乗員室の相対湿度（%） */ }
        require constraint { doc /* 30〜75 % */ relativeHumidity >= 30 and relativeHumidity <= 75 }
    }
    #refinement dependency <'REQ-ECLSS-05>RQM'> from ReqEclss05 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
    requirement def <'REQ-ECLSS-06'> ReqEclss06 {
        doc /* REQ-ECLSS-06 の値の形式化（数値） */
        attribute liohCanisters : Integer { doc /* RF-128 LiOH キャニスタの数（単位なし） */ }
        attribute canisterRate : MassFlowRateValue { doc /* RF-129 キャニスタ1個あたりの処理の値（lb/h） */ }
        require constraint { doc /* ＝ 2 */ liohCanisters == 2 }
        require constraint { doc /* ＝ 120 lb/h、約、各キャニスタ */ canisterRate == 120 ['lb/h'] }
    }
    #refinement dependency <'REQ-ECLSS-06>RQM'> from ReqEclss06 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
    requirement def <'REQ-ECLSS-07'> ReqEclss07 {
        doc /* REQ-ECLSS-07 の値の形式化（数） */
        attribute waterCoolantLoops : Integer { doc /* RF-130 水冷却ループの系統数（単位なし） */ }
        attribute loop1Pumps : Integer { doc /* RF-131 ループ1のポンプの台数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ waterCoolantLoops == 2 }
        require constraint { doc /* ＝ 2 */ loop1Pumps == 2 }
    }
    #refinement dependency <'REQ-ECLSS-07>RQM'> from ReqEclss07 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
    requirement def <'REQ-ECLSS-08'> ReqEclss08 {
        doc /* REQ-ECLSS-08 の値の形式化（数） */
        attribute freonLoops : Integer { doc /* RF-132 フレオンループの系統数（単位なし） */ }
        attribute heatSinkTypes : Integer { doc /* RF-133 ヒートシンクの種類（放熱器・FES・アンモニアボイラ）（単位なし） */ }
        require constraint { doc /* ＝ 2 */ freonLoops == 2 }
        require constraint { doc /* ＝ 3 */ heatSinkTypes == 3 }
    }
    #refinement dependency <'REQ-ECLSS-08>RQM'> from ReqEclss08 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
    requirement def <'REQ-ECLSS-09'> ReqEclss09 {
        doc /* REQ-ECLSS-09 の値の形式化（数） */
        attribute loopLossForAbort : Integer { doc /* RF-134 アボート・早期軌道離脱とするループの喪失数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ loopLossForAbort == 2 }
    }
    #refinement dependency <'REQ-ECLSS-09>RQM'> from ReqEclss09 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
    requirement def <'REQ-ECLSS-10'> ReqEclss10 {
        doc /* REQ-ECLSS-10 の値の形式化（数値） */
        attribute potableTanks : Integer { doc /* RF-135 給水タンクの数（単位なし） */ }
        attribute wasteTanks : Integer { doc /* RF-136 廃水タンクの数（単位なし） */ }
        attribute tankCapacity : MassValue { doc /* RF-137 タンク1基の容量（lb） */ }
        require constraint { doc /* ＝ 4 */ potableTanks == 4 }
        require constraint { doc /* ＝ 1 */ wasteTanks == 1 }
        require constraint { doc /* ＝ 165 lb、各タンク */ tankCapacity == 165 [lb] }
    }
    #refinement dependency <'REQ-ECLSS-10>RQM'> from ReqEclss10 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
    requirement def <'REQ-ECLSS-11'> ReqEclss11 {
        doc /* REQ-ECLSS-11 の値の形式化（数値） */
        attribute smokeAlarmThreshold : Real { doc /* RF-138 煙検知器の警報の煙濃度（µg/m3） */ }
        attribute fixedExtinguishers : Integer { doc /* RF-139 アビオニクスベイの固定消火ボトルの数（単位なし） */ }
        attribute portableExtinguishers : Integer { doc /* RF-140 携帯消火器の数（単位なし） */ }
        require constraint { doc /* 1800〜2200 µg/m3、2,000±200 µg/m3 */ smokeAlarmThreshold >= 1800 and smokeAlarmThreshold <= 2200 }
        require constraint { doc /* ＝ 3 */ fixedExtinguishers == 3 }
        require constraint { doc /* ＝ 3 */ portableExtinguishers == 3 }
    }
    #refinement dependency <'REQ-ECLSS-11>RQM'> from ReqEclss11 to SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
    requirement def <'REQ-EPS-02'> ReqEps02 {
        doc /* REQ-EPS-02 の値の形式化（数値） */
        attribute fuelCellCount : Integer { doc /* RF-141 燃料電池の基数（単位なし） */ }
        attribute fuelCellTakeoverTime : DurationValue { doc /* RF-142 燃料電池が全電力を受け持ち始める時刻（打上げ前）（s） */ }
        attribute dcBusVoltage : ElectricPotentialDifferenceValue { doc /* RF-143 機体の直流電力の電圧（V） */ }
        require constraint { doc /* ＝ 3 */ fuelCellCount == 3 }
        require constraint { doc /* ＝ 50 s、T-50 秒から滑走終了まで */ fuelCellTakeoverTime == 50 [s] }
        require constraint { doc /* ＝ 28 V */ dcBusVoltage == 28 [V] }
    }
    #refinement dependency <'REQ-EPS-02>RQM'> from ReqEps02 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
    requirement def <'REQ-EPS-03'> ReqEps03 {
        doc /* REQ-EPS-03 の値の形式化（数） */
        attribute independentSources : Integer { doc /* RF-144 独立した電源の数（単位なし） */ }
        attribute mainBuses : Integer { doc /* RF-145 直流主母線の数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ independentSources == 3 }
        require constraint { doc /* ＝ 3 */ mainBuses == 3 }
    }
    #refinement dependency <'REQ-EPS-03>RQM'> from ReqEps03 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
    requirement def <'REQ-EPS-04'> ReqEps04 {
        doc /* REQ-EPS-04 の値の形式化（数値） */
        attribute fcContinuousPower : PowerValue { doc /* RF-146 燃料電池1基の通常の連続出力（kW） */ }
        attribute fcPeakPower : PowerValue { doc /* RF-147 燃料電池1基の通常のピーク出力（kW） */ }
        attribute fcPeakDuration : DurationValue { doc /* RF-148 通常のピーク出力の運転時間（min） */ }
        attribute fcContingencyContinuousPower : PowerValue { doc /* RF-149 故障時の残る燃料電池の連続出力（kW） */ }
        attribute fcContingencyPeakPower : PowerValue { doc /* RF-150 故障時の最大出力（kW） */ }
        attribute fcContingencyPeakDuration : DurationValue { doc /* RF-151 故障時の最大出力の運転時間（min） */ }
        require constraint { doc /* 2〜10 kW */ fcContinuousPower >= 2 [kW] and fcContinuousPower <= 10 [kW] }
        require constraint { doc /* 10〜12 kW、3時間ごとに15分以内 */ fcPeakPower >= 10 [kW] and fcPeakPower <= 12 [kW] }
        require constraint { doc /* ≦ 15 min、3時間ごと */ fcPeakDuration <= 15 [min] }
        require constraint { doc /* 2〜12 kW、故障時 */ fcContingencyContinuousPower >= 2 [kW] and fcContingencyContinuousPower <= 12 [kW] }
        require constraint { doc /* ≦ 16 kW、故障時、10分 */ fcContingencyPeakPower <= 16 [kW] }
        require constraint { doc /* ≦ 10 min、故障時、16 kW まで */ fcContingencyPeakDuration <= 10 [min] }
    }
    #refinement dependency <'REQ-EPS-04>RQM'> from ReqEps04 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_04;
    requirement def <'REQ-EPS-05'> ReqEps05 {
        doc /* REQ-EPS-05 の値の形式化（数値） */
        attribute fcOutputVoltage : ElectricPotentialDifferenceValue { doc /* RF-152 燃料電池の出力電圧（V） */ }
        require constraint { doc /* 27.5〜32.5 V、負荷 12〜2 kW（12 kW で 27.5 V、2 kW で 32.5 V） */ fcOutputVoltage >= 27.5 [V] and fcOutputVoltage <= 32.5 [V] }
    }
    #refinement dependency <'REQ-EPS-05>RQM'> from ReqEps05 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_05;
    requirement def <'REQ-EPS-06'> ReqEps06 {
        doc /* REQ-EPS-06 の値の形式化（数値） */
        attribute mainBusVoltage : ElectricPotentialDifferenceValue { doc /* RF-153 直流主母線の電圧（V） */ }
        attribute mainBusUndervoltAlarm : ElectricPotentialDifferenceValue { doc /* RF-154 主母線低電圧の警報の電圧（V） */ }
        require constraint { doc /* 27.0〜32.0 V、27.0 < V < 32.0（両端を含まない、厳密） */ mainBusVoltage >= 27 [V] and mainBusVoltage <= 32 [V] }
        require constraint { doc /* ＝ 26.4 V */ mainBusUndervoltAlarm == 26.4 [V] }
    }
    #refinement dependency <'REQ-EPS-06>RQM'> from ReqEps06 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
    requirement def <'REQ-EPS-07'> ReqEps07 {
        doc /* REQ-EPS-07 の値の形式化（数） */
        attribute essentialBusSources : Integer { doc /* RF-155 必須母線が接続する電源の数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ essentialBusSources == 3 }
    }
    #refinement dependency <'REQ-EPS-07>RQM'> from ReqEps07 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_07;
    requirement def <'REQ-EPS-08'> ReqEps08 {
        doc /* REQ-EPS-08 の値の形式化（数値） */
        attribute acBusVoltage : ElectricPotentialDifferenceValue { doc /* RF-156 交流母線の電圧（実効値）（V） */ }
        attribute acBusFrequency : FrequencyValue { doc /* RF-157 交流母線の周波数（Hz） */ }
        attribute inverterCount : Integer { doc /* RF-158 静止形インバータの台数（単位なし） */ }
        attribute invertersPerBus : Integer { doc /* RF-159 主母線1本あたりのインバータの台数（3相）（単位なし） */ }
        require constraint { doc /* ＝ 117 V、実効値（rms） */ acBusVoltage == 117 [V] }
        require constraint { doc /* ＝ 400 Hz */ acBusFrequency == 400 [Hz] }
        require constraint { doc /* ＝ 9 */ inverterCount == 9 }
        require constraint { doc /* ＝ 3 */ invertersPerBus == 3 }
    }
    #refinement dependency <'REQ-EPS-08>RQM'> from ReqEps08 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_08;
    requirement def <'REQ-EPS-10'> ReqEps10 {
        doc /* REQ-EPS-10 の値の形式化（数値） */
        attribute o2StoragePressure : PressureValue { doc /* RF-160 酸素の貯蔵圧（psia） */ }
        attribute o2StorageTemperature : ThermodynamicTemperatureValue { doc /* RF-161 酸素の貯蔵温度（°F） */ }
        attribute h2StoragePressure : PressureValue { doc /* RF-162 水素の貯蔵圧（psia） */ }
        attribute h2StorageTemperature : ThermodynamicTemperatureValue { doc /* RF-163 水素の貯蔵温度（°F） */ }
        require constraint { doc /* ≧ 731 psia、超臨界（超、厳密） */ o2StoragePressure >= 731 ['lbf/in²'] }
        require constraint { doc /* ＝ -285 °F */ o2StorageTemperature == -285 ['°F_abs'] }
        require constraint { doc /* ≧ 188 psia、超臨界（超、厳密） */ h2StoragePressure >= 188 ['lbf/in²'] }
        require constraint { doc /* ＝ -420 °F */ h2StorageTemperature == -420 ['°F_abs'] }
    }
    #refinement dependency <'REQ-EPS-10>RQM'> from ReqEps10 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
    requirement def <'REQ-EPS-12'> ReqEps12 {
        doc /* REQ-EPS-12 の値の形式化（数値） */
        attribute stay3Sets : DurationValue { doc /* RF-164 3セット搭載時の軌道滞在日数（d） */ }
        attribute stay5Sets : DurationValue { doc /* RF-165 5セット搭載時の軌道滞在日数（d） */ }
        attribute stay8Sets : DurationValue { doc /* RF-166 8セット搭載時の軌道滞在日数（d） */ }
        require constraint { doc /* ＝ 8 d、最大、3セット */ stay3Sets == 8 [d] }
        require constraint { doc /* ＝ 12 d、5セット */ stay5Sets == 12 [d] }
        require constraint { doc /* ＝ 18 d、8セット */ stay8Sets == 18 [d] }
    }
    #refinement dependency <'REQ-EPS-12>RQM'> from ReqEps12 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_12;
    requirement def <'REQ-EPS-14'> ReqEps14 {
        doc /* REQ-EPS-14 の値の形式化（数値） */
        attribute purgeDuration : DurationValue { doc /* RF-167 燃料電池1基のパージ時間（min） */ }
        attribute purgeInterval : DurationValue { doc /* RF-168 パージの間隔（h） */ }
        require constraint { doc /* ≧ 2 min */ purgeDuration >= 2 [min] }
        require constraint { doc /* ≦ 12 h */ purgeInterval <= 12 [h] }
    }
    #refinement dependency <'REQ-EPS-14>RQM'> from ReqEps14 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
    requirement def <'REQ-EPS-15'> ReqEps15 {
        doc /* REQ-EPS-15 の値の形式化（数値） */
        attribute stackTemperature : ThermodynamicTemperatureValue { doc /* RF-169 燃料電池スタックの温度（°F） */ }
        attribute coolingLossResponseTime : DurationValue { doc /* RF-170 冷却喪失時に処置するまでの時間（min） */ }
        require constraint { doc /* ＝ 200 °F、約、負荷に応じる */ stackTemperature == 200 ['°F_abs'] }
        require constraint { doc /* ≦ 9 min、負荷 7 kW */ coolingLossResponseTime <= 9 [min] }
    }
    #refinement dependency <'REQ-EPS-15>RQM'> from ReqEps15 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
    requirement def <'REQ-EPS-17'> ReqEps17 {
        doc /* REQ-EPS-17 の値の形式化（数値） */
        attribute rpcCurrentLimit : Real { doc /* RF-171 RPC の電流制限（定格比）（%） */ }
        attribute rpcLimitDuration : DurationValue { doc /* RF-172 電流を制限する時間（s） */ }
        attribute rpcTripTime : DurationValue { doc /* RF-173 遮断までの時間（s） */ }
        require constraint { doc /* ＝ 150 % */ rpcCurrentLimit == 150 }
        require constraint { doc /* 2〜3 s */ rpcLimitDuration >= 2 [s] and rpcLimitDuration <= 3 [s] }
        require constraint { doc /* ≦ 3 s */ rpcTripTime <= 3 [s] }
    }
    #refinement dependency <'REQ-EPS-17>RQM'> from ReqEps17 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_17;
    requirement def <'REQ-EPS-18'> ReqEps18 {
        doc /* REQ-EPS-18 の値の形式化（数） */
        attribute goNoGoCategories : Integer { doc /* RF-174 A9-1001 の判定区分の数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ goNoGoCategories == 3 }
    }
    #refinement dependency <'REQ-EPS-18>RQM'> from ReqEps18 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
    requirement def <'REQ-EPS-19'> ReqEps19 {
        doc /* REQ-EPS-19 の値の形式化（数値） */
        attribute generationCapacity : PowerValue { doc /* RF-175 発電能力（軌道の平均消費電力を超える）（kW） */ }
        require constraint { doc /* ≧ 14 kW、約14 kW を超える（厳密） */ generationCapacity >= 14 [kW] }
    }
    #refinement dependency <'REQ-EPS-19>RQM'> from ReqEps19 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
    requirement def <'REQ-EPS-20'> ReqEps20 {
        doc /* REQ-EPS-20 の値の形式化（数値） */
        attribute fcCumulativeLife : DurationValue { doc /* RF-176 燃料電池の累積運転時間の寿命（h） */ }
        require constraint { doc /* ≧ 2000 h */ fcCumulativeLife >= 2000 [h] }
    }
    #refinement dependency <'REQ-EPS-20>RQM'> from ReqEps20 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_20;
    requirement def <'REQ-EPS-21'> ReqEps21 {
        doc /* REQ-EPS-21 の値の形式化（数値） */
        attribute entryReservedTankSets : Integer { doc /* RF-177 再突入用に残すタンク（タンク1・2）の数（単位なし） */ }
        attribute h2EntryReserve : Real { doc /* RF-178 水素タンクの再突入用の残量（%） */ }
        attribute entryFuelCellPower : PowerValue { doc /* RF-179 残量でまかなう再突入の燃料電池の出力（kW） */ }
        require constraint { doc /* ＝ 2 */ entryReservedTankSets == 2 }
        require constraint { doc /* ≧ 4 %、2基それぞれ */ h2EntryReserve >= 4 }
        require constraint { doc /* ＝ 20 kW、約、相当 */ entryFuelCellPower == 20 [kW] }
    }
    #refinement dependency <'REQ-EPS-21>RQM'> from ReqEps21 to SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_21;
    requirement def <'REQ-ET-01'> ReqEt01 {
        doc /* REQ-ET-01 の値の形式化（数値） */
        attribute ssmeFed : Integer { doc /* RF-180 推進薬を供給する SSME の基数（単位なし） */ }
        attribute lo2FlowRate : MassFlowRateValue { doc /* RF-181 LO2 の流量（lb/s） */ }
        attribute lh2FlowRate : MassFlowRateValue { doc /* RF-182 LH2 の流量（lb/s） */ }
        require constraint { doc /* ＝ 3 */ ssmeFed == 3 }
        require constraint { doc /* ＝ 2787 lb/s、約、104% */ lo2FlowRate == 2787 ['lb/s'] }
        require constraint { doc /* ＝ 465 lb/s、104% */ lh2FlowRate == 465 ['lb/s'] }
    }
    #refinement dependency <'REQ-ET-01>RQM'> from ReqEt01 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
    requirement def <'REQ-ET-02'> ReqEt02 {
        doc /* REQ-ET-02 の値の形式化（数値） */
        attribute lo2TankPressure : PressureValue { doc /* RF-183 LO2 タンクの運用圧（psig） */ }
        attribute lh2TankPressure : PressureValue { doc /* RF-184 LH2 タンクの運用圧（psia） */ }
        require constraint { doc /* 20〜22 psig */ lo2TankPressure >= 20 ['lbf/in²'] and lo2TankPressure <= 22 ['lbf/in²'] }
        require constraint { doc /* 32〜34 psia */ lh2TankPressure >= 32 ['lbf/in²'] and lh2TankPressure <= 34 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-ET-02>RQM'> from ReqEt02 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
    requirement def <'REQ-ET-03'> ReqEt03 {
        doc /* REQ-ET-03 の値の形式化（数値） */
        attribute mixtureRatio : Real { doc /* RF-185 混合比（酸化剤/燃料）（単位なし） */ }
        attribute lh2Excess : MassValue { doc /* RF-186 混合比に必要な量を超えて積む LH2（lb） */ }
        require constraint { doc /* ＝ 6、6:1 */ mixtureRatio == 6 }
        require constraint { doc /* ＝ 1100 lb */ lh2Excess == 1100 [lb] }
    }
    #refinement dependency <'REQ-ET-03>RQM'> from ReqEt03 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_03;
    requirement def <'REQ-ET-04'> ReqEt04 {
        doc /* REQ-ET-04 の値の形式化（数） */
        attribute forwardAttachPoints : Integer { doc /* RF-187 オービタとの前部の結合の数（単位なし） */ }
        attribute aftAttachPoints : Integer { doc /* RF-188 オービタとの後部の結合の数（単位なし） */ }
        require constraint { doc /* ＝ 1 */ forwardAttachPoints == 1 }
        require constraint { doc /* ＝ 2 */ aftAttachPoints == 2 }
    }
    #refinement dependency <'REQ-ET-04>RQM'> from ReqEt04 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
    requirement def <'REQ-ET-05'> ReqEt05 {
        doc /* REQ-ET-05 の値の形式化（数値） */
        attribute lh2VentReliefPressure : PressureValue { doc /* RF-189 LH2 のベント/リリーフ弁の開く圧力（psig） */ }
        attribute lo2VentReliefPressure : PressureValue { doc /* RF-190 LO2 のベント/リリーフ弁の開く圧力（psig） */ }
        require constraint { doc /* ＝ 36 psig */ lh2VentReliefPressure == 36 ['lbf/in²'] }
        require constraint { doc /* ＝ 31 psig */ lo2VentReliefPressure == 31 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-ET-05>RQM'> from ReqEt05 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
    requirement def <'REQ-ET-06'> ReqEt06 {
        doc /* REQ-ET-06 の値の形式化（数） */
        attribute depletionSensorsPerPropellant : Integer { doc /* RF-191 推進薬ごとの枯渇センサの数（単位なし） */ }
        attribute drySensorsForCutoff : Integer { doc /* RF-192 エンジン停止とする乾きの検知の数（単位なし） */ }
        attribute sensorFailuresForTal : Integer { doc /* RF-193 TAL とするセンサの故障の数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ depletionSensorsPerPropellant == 4 }
        require constraint { doc /* ＝ 2 */ drySensorsForCutoff == 2 }
        require constraint { doc /* ≧ 3 */ sensorFailuresForTal >= 3 }
    }
    #refinement dependency <'REQ-ET-06>RQM'> from ReqEt06 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_06;
    requirement def <'REQ-ET-07'> ReqEt07 {
        doc /* REQ-ET-07 の値の形式化（数値） */
        attribute tpsMass : MassValue { doc /* RF-194 ET の TPS の質量（lb） */ }
        require constraint { doc /* ＝ 4823 lb */ tpsMass == 4823 [lb] }
    }
    #refinement dependency <'REQ-ET-07>RQM'> from ReqEt07 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
    requirement def <'REQ-ET-08'> ReqEt08 {
        doc /* REQ-ET-08 の値の形式化（数値） */
        attribute separationRateLimit : Real { doc /* RF-195 ET 分離を許す角速度（deg/s） */ }
        attribute separationDelay : DurationValue { doc /* RF-196 分離の抑止の遅延（min） */ }
        require constraint { doc /* ≦ 0.7 deg/s、超えると分離を抑止 */ separationRateLimit <= 0.7 }
        require constraint { doc /* ≦ 6 min、MECO＋6分まで */ separationDelay <= 6 [min] }
    }
    #refinement dependency <'REQ-ET-08>RQM'> from ReqEt08 to SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
    requirement def <'REQ-EVA-01'> ReqEva01 {
        doc /* REQ-EVA-01 の値の形式化（数値） */
        attribute leakCheckSuitPressure : PressureValue { doc /* RF-197 漏れ点検の服圧（psid） */ }
        require constraint { doc /* 4.2〜4.4 psid */ leakCheckSuitPressure >= 4.2 ['lbf/in²'] and leakCheckSuitPressure <= 4.4 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-EVA-01>RQM'> from ReqEva01 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
    requirement def <'REQ-EVA-02'> ReqEva02 {
        doc /* REQ-EVA-02 の値の形式化（数値） */
        attribute initialPrebreathe : DurationValue { doc /* RF-198 初期の前呼吸の時間（min） */ }
        attribute prebreatheCabinPressure : PressureValue { doc /* RF-199 前呼吸のキャビン圧（psi） */ }
        require constraint { doc /* ≧ 45 min、10.2 psi のキャビン */ initialPrebreathe >= 45 [min] }
        require constraint { doc /* ＝ 10.2 psi */ prebreatheCabinPressure == 10.2 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-EVA-02>RQM'> from ReqEva02 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
    requirement def <'REQ-EVA-03'> ReqEva03 {
        doc /* REQ-EVA-03 の値の形式化（数値） */
        attribute airlockVolume : VolumeValue { doc /* RF-200 エアロックの容積（ft3） */ }
        attribute airlockLeakCheckPressure : PressureValue { doc /* RF-201 減圧途中の EMU 漏れ点検の圧力（psi） */ }
        require constraint { doc /* ＝ 228 ft3 */ airlockVolume == 228 ['ft³'] }
        require constraint { doc /* ＝ 5.0 psi */ airlockLeakCheckPressure == 5 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-EVA-03>RQM'> from ReqEva03 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
    requirement def <'REQ-EVA-05'> ReqEva05 {
        doc /* REQ-EVA-05 の値の形式化（数値） */
        attribute waterRefillPressure : PressureValue { doc /* RF-202 水の再充填の圧力（psi） */ }
        require constraint { doc /* 8〜15 psi */ waterRefillPressure >= 8 ['lbf/in²'] and waterRefillPressure <= 15 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-EVA-05>RQM'> from ReqEva05 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
    requirement def <'REQ-EVA-06'> ReqEva06 {
        doc /* REQ-EVA-06 の値の形式化（数） */
        attribute contingencyEvaReserve : Integer { doc /* RF-203 常に確保する非常時 EVA の回数（単位なし） */ }
        require constraint { doc /* ≧ 1 */ contingencyEvaReserve >= 1 }
    }
    #refinement dependency <'REQ-EVA-06>RQM'> from ReqEva06 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
    requirement def <'REQ-EVA-07'> ReqEva07 {
        doc /* REQ-EVA-07 の値の形式化（数値） */
        attribute btaPressure : PressureValue { doc /* RF-204 減圧症治療アダプタ（BTA）の加圧（psid） */ }
        require constraint { doc /* 6〜8 psid */ btaPressure >= 6 ['lbf/in²'] and btaPressure <= 8 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-EVA-07>RQM'> from ReqEva07 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
    requirement def <'REQ-EVA-08'> ReqEva08 {
        doc /* REQ-EVA-08 の値の形式化（数値） */
        attribute ingressConsumablesMargin : DurationValue { doc /* RF-205 エアロック進入を終える時の消耗品の残り時間（min） */ }
        attribute plannedEvaEarliestMet : DurationValue { doc /* RF-206 計画 EVA を行える最も早い MET（h） */ }
        require constraint { doc /* ≧ 30 min */ ingressConsumablesMargin >= 30 [min] }
        require constraint { doc /* ≧ 72 h */ plannedEvaEarliestMet >= 72 [h] }
    }
    #refinement dependency <'REQ-EVA-08>RQM'> from ReqEva08 to SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
    requirement def <'REQ-GNC-01'> ReqGnc01 {
        doc /* REQ-GNC-01 の値の形式化（数） */
        attribute imuCount : Integer { doc /* RF-207 IMU の台数（単位なし） */ }
        attribute imuMinForFlight : Integer { doc /* RF-208 飛行できる IMU の最少台数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ imuCount == 3 }
        require constraint { doc /* ＝ 1 */ imuMinForFlight == 1 }
    }
    #refinement dependency <'REQ-GNC-01>RQM'> from ReqGnc01 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
    requirement def <'REQ-GNC-02'> ReqGnc02 {
        doc /* REQ-GNC-02 の値の形式化（数値） */
        attribute eiAttitudeError : AngularMeasureValue { doc /* RF-209 EI の IMU の姿勢誤差（deg） */ }
        attribute nominalDeorbitAttitudeError : AngularMeasureValue { doc /* RF-210 公称の軌道離脱を行う姿勢誤差（超えれば遅らせる）（deg） */ }
        require constraint { doc /* ≦ 0.5 deg */ eiAttitudeError <= 0.5 ['°'] }
        require constraint { doc /* ≦ 0.25 deg、公称の軌道離脱 */ nominalDeorbitAttitudeError <= 0.25 ['°'] }
    }
    #refinement dependency <'REQ-GNC-02>RQM'> from ReqGnc02 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
    requirement def <'REQ-GNC-03'> ReqGnc03 {
        doc /* REQ-GNC-03 の値の形式化（数値） */
        attribute tacanCount : Integer { doc /* RF-211 TACAN の台数（または OV-105 の GPS）（単位なし） */ }
        attribute tacanRange : LengthValue { doc /* RF-212 TACAN の距離（n.mi.） */ }
        attribute mlsCount : Integer { doc /* RF-213 MLS の台数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ tacanCount == 3 }
        require constraint { doc /* ≦ 400 n.mi.、最大 */ tacanRange <= 400 [nmi] }
        require constraint { doc /* ＝ 3 */ mlsCount == 3 }
    }
    #refinement dependency <'REQ-GNC-03>RQM'> from ReqGnc03 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
    requirement def <'REQ-GNC-04'> ReqGnc04 {
        doc /* REQ-GNC-04 の値の形式化（数値） */
        attribute airDataProbes : Integer { doc /* RF-214 エアデータプローブの数（単位なし） */ }
        attribute adtaCount : Integer { doc /* RF-215 ADTA の台数（単位なし） */ }
        attribute probeDeployMotors : Integer { doc /* RF-216 プローブの展開モータの数（単位なし） */ }
        attribute probeDeployTime : DurationValue { doc /* RF-217 プローブの展開時間（s） */ }
        require constraint { doc /* ＝ 2 */ airDataProbes == 2 }
        require constraint { doc /* ＝ 4 */ adtaCount == 4 }
        require constraint { doc /* ＝ 2 */ probeDeployMotors == 2 }
        require constraint { doc /* ＝ 15 s */ probeDeployTime == 15 [s] }
    }
    #refinement dependency <'REQ-GNC-04>RQM'> from ReqGnc04 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_04;
    requirement def <'REQ-GNC-05'> ReqGnc05 {
        doc /* REQ-GNC-05 の値の形式化（数） */
        attribute stateVectorElements : Integer { doc /* RF-218 状態ベクトルの要素数（時刻を除く）（単位なし） */ }
        attribute entryStateVectors : Integer { doc /* RF-219 再突入で中間値を選ぶ状態ベクトルの数（単位なし） */ }
        require constraint { doc /* ＝ 6 */ stateVectorElements == 6 }
        require constraint { doc /* ＝ 3 */ entryStateVectors == 3 }
    }
    #refinement dependency <'REQ-GNC-05>RQM'> from ReqGnc05 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_05;
    requirement def <'REQ-GNC-06'> ReqGnc06 {
        doc /* REQ-GNC-06 の値の形式化（数値） */
        attribute ascentAcceleration : Real { doc /* RF-220 上昇の加速度（g） */ }
        require constraint { doc /* ≦ 3 g */ ascentAcceleration <= 3 }
    }
    #refinement dependency <'REQ-GNC-06>RQM'> from ReqGnc06 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_06;
    requirement def <'REQ-GNC-07'> ReqGnc07 {
        doc /* REQ-GNC-07 の値の形式化（数値） */
        attribute flareAltitude : LengthValue { doc /* RF-221 フレアの高度（ft） */ }
        require constraint { doc /* 30〜80 ft */ flareAltitude >= 30 [ft] and flareAltitude <= 80 [ft] }
    }
    #refinement dependency <'REQ-GNC-07>RQM'> from ReqGnc07 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_07;
    requirement def <'REQ-GNC-08'> ReqGnc08 {
        doc /* REQ-GNC-08 の値の形式化（数） */
        attribute rgaCount : Integer { doc /* RF-222 RGA の台数（単位なし） */ }
        attribute aaCount : Integer { doc /* RF-223 AA の台数（単位なし） */ }
        attribute faultsToNeom : Integer { doc /* RF-224 公称の終了まで続けられる故障の数（4台構成）（単位なし） */ }
        require constraint { doc /* ＝ 4 */ rgaCount == 4 }
        require constraint { doc /* ＝ 4 */ aaCount == 4 }
        require constraint { doc /* ≧ 1 */ faultsToNeom >= 1 }
    }
    #refinement dependency <'REQ-GNC-08>RQM'> from ReqGnc08 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_08;
    requirement def <'REQ-GNC-09'> ReqGnc09 {
        doc /* REQ-GNC-09 の値の形式化（数値） */
        attribute etSepDelay : DurationValue { doc /* RF-225 MECO から ET 分離指令までの時間（s） */ }
        attribute etSepTranslation : SpeedValue { doc /* RF-226 分離後の −Z の並進速度（ft/s） */ }
        require constraint { doc /* ＝ 20 s、約 */ etSepDelay == 20 [s] }
        require constraint { doc /* ＝ 4 ft/s */ etSepTranslation == 4 ['ft/s'] }
    }
    #refinement dependency <'REQ-GNC-09>RQM'> from ReqGnc09 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
    requirement def <'REQ-GNC-10'> ReqGnc10 {
        doc /* REQ-GNC-10 の値の形式化（数値） */
        attribute aeroSurfaces : Integer { doc /* RF-227 空力舵面の枚数（単位なし） */ }
        attribute servoChannels : Integer { doc /* RF-228 サーボ弁のフライトコントロールチャネル数（単位なし） */ }
        attribute secDeltaPBypass : PressureValue { doc /* RF-229 サーボ弁を切り離す二次差圧（psi） */ }
        attribute bypassDetectTime : DurationValue { doc /* RF-230 切り離しまでの持続時間（ms） */ }
        require constraint { doc /* ＝ 7 */ aeroSurfaces == 7 }
        require constraint { doc /* ＝ 4 */ servoChannels == 4 }
        require constraint { doc /* ≧ 2025 psi */ secDeltaPBypass >= 2025 ['lbf/in²'] }
        require constraint { doc /* ＝ 120 ms */ bypassDetectTime == 0.12 [s] }
    }
    #refinement dependency <'REQ-GNC-10>RQM'> from ReqGnc10 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
    requirement def <'REQ-GNC-11'> ReqGnc11 {
        doc /* REQ-GNC-11 の値の形式化（数値） */
        attribute atvcCount : Integer { doc /* RF-231 ATVC の台数（単位なし） */ }
        attribute servoValvesPerActuator : Integer { doc /* RF-232 アクチュエータごとのサーボ弁の数（単位なし） */ }
        attribute ssmePitchGimbal : AngularMeasureValue { doc /* RF-233 SSME のピッチのジンバル角（deg） */ }
        attribute ssmeYawGimbal : AngularMeasureValue { doc /* RF-234 SSME のヨーのジンバル角（deg） */ }
        attribute srbGimbal : AngularMeasureValue { doc /* RF-235 SRB のジンバル角（deg） */ }
        require constraint { doc /* ＝ 4 */ atvcCount == 4 }
        require constraint { doc /* ＝ 4 */ servoValvesPerActuator == 4 }
        require constraint { doc /* -10.5〜10.5 deg、±10.5° */ ssmePitchGimbal >= -10.5 ['°'] and ssmePitchGimbal <= 10.5 ['°'] }
        require constraint { doc /* -8.5〜8.5 deg、±8.5° */ ssmeYawGimbal >= -8.5 ['°'] and ssmeYawGimbal <= 8.5 ['°'] }
        require constraint { doc /* -5〜5 deg、±5° */ srbGimbal >= -5 ['°'] and srbGimbal <= 5 ['°'] }
    }
    #refinement dependency <'REQ-GNC-11>RQM'> from ReqGnc11 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
    requirement def <'REQ-GNC-12'> ReqGnc12 {
        doc /* REQ-GNC-12 の値の形式化（数） */
        attribute rhcLocations : Integer { doc /* RF-236 RHC の数（か所）（単位なし） */ }
        attribute transducers : Integer { doc /* RF-237 変換器の数（3重）（単位なし） */ }
        attribute goodSignalsRequired : Integer { doc /* RF-238 働くのに要る良い信号の数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ rhcLocations == 3 }
        require constraint { doc /* ＝ 9 */ transducers == 9 }
        require constraint { doc /* ≧ 1 */ goodSignalsRequired >= 1 }
    }
    #refinement dependency <'REQ-GNC-12>RQM'> from ReqGnc12 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_12;
    requirement def <'REQ-GNC-13'> ReqGnc13 {
        doc /* REQ-GNC-13 の値の形式化（数） */
        attribute goNoGoCategories : Integer { doc /* RF-239 A8-1001 の判定区分の数（MDF・次の PLS・初日の PLS）（単位なし） */ }
        require constraint { doc /* ＝ 3 */ goNoGoCategories == 3 }
    }
    #refinement dependency <'REQ-GNC-13>RQM'> from ReqGnc13 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
    requirement def <'REQ-GNC-14'> ReqGnc14 {
        doc /* REQ-GNC-14 の値の形式化（数） */
        attribute fcsCheckouts : Integer { doc /* RF-240 軌道離脱前の FCS の点検の回数（単位なし） */ }
        require constraint { doc /* ≧ 1 */ fcsCheckouts >= 1 }
    }
    #refinement dependency <'REQ-GNC-14>RQM'> from ReqGnc14 to SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_14;
    requirement def <'REQ-MECH-01'> ReqMech01 {
        doc /* REQ-MECH-01 の値の形式化（数値） */
        attribute motorsPerActuator : Integer { doc /* RF-241 アクチュエータごとの3相交流モータの数（単位なし） */ }
        attribute singleMotorTimeRatio : Real { doc /* RF-242 1モータで動かすときの時間の倍率（単位なし） */ }
        require constraint { doc /* ＝ 2 */ motorsPerActuator == 2 }
        require constraint { doc /* ＝ 2 */ singleMotorTimeRatio == 2 }
    }
    #refinement dependency <'REQ-MECH-01>RQM'> from ReqMech01 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
    requirement def <'REQ-MECH-03'> ReqMech03 {
        doc /* REQ-MECH-03 の値の形式化（数値） */
        attribute payloadBayDoors : Integer { doc /* RF-243 ペイロードベイドアの枚数（単位なし） */ }
        attribute doorArea : Real { doc /* RF-244 ドアの面積（ft2） */ }
        attribute doorLatches : Integer { doc /* RF-245 閉状態を保つラッチの数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ payloadBayDoors == 2 }
        require constraint { doc /* ＝ 1600 ft2 */ doorArea == 1600 }
        require constraint { doc /* ＝ 32 */ doorLatches == 32 }
    }
    #refinement dependency <'REQ-MECH-03>RQM'> from ReqMech03 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
    requirement def <'REQ-MECH-04'> ReqMech04 {
        doc /* REQ-MECH-04 の値の形式化（数） */
        attribute openLatchGangsForEntry : Integer { doc /* RF-246 外れたままで突入できるラッチギャングの数（単位なし） */ }
        require constraint { doc /* ≦ 1 */ openLatchGangsForEntry <= 1 }
    }
    #refinement dependency <'REQ-MECH-04>RQM'> from ReqMech04 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
    requirement def <'REQ-MECH-05'> ReqMech05 {
        doc /* REQ-MECH-05 の値の形式化（数値） */
        attribute ventPorts : Integer { doc /* RF-247 ベント口の数（単位なし） */ }
        attribute ventDoorCycleTime : DurationValue { doc /* RF-248 ベント扉の開閉時間（s） */ }
        require constraint { doc /* ＝ 14 */ ventPorts == 14 }
        require constraint { doc /* ＝ 5 s */ ventDoorCycleTime == 5 [s] }
    }
    #refinement dependency <'REQ-MECH-05>RQM'> from ReqMech05 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
    requirement def <'REQ-MECH-06'> ReqMech06 {
        doc /* REQ-MECH-06 の値の形式化（数） */
        attribute umbilicalDoors : Integer { doc /* RF-249 ET アンビリカル扉の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ umbilicalDoors == 2 }
    }
    #refinement dependency <'REQ-MECH-06>RQM'> from ReqMech06 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
    requirement def <'REQ-MECH-07'> ReqMech07 {
        doc /* REQ-MECH-07 の値の形式化（数値） */
        attribute landingGearLegs : Integer { doc /* RF-250 降着装置の脚の数（単位なし） */ }
        attribute gearDeployAltitude : LengthValue { doc /* RF-251 降着装置を展開する高度（ft） */ }
        attribute gearDeploySpeed : SpeedValue { doc /* RF-252 降着装置を展開する速度（KEAS） */ }
        attribute gearLockTime : DurationValue { doc /* RF-253 下げ位置でロックするまでの時間（s） */ }
        require constraint { doc /* ＝ 3 */ landingGearLegs == 3 }
        require constraint { doc /* 200〜400 ft、300±100 ft */ gearDeployAltitude >= 200 [ft] and gearDeployAltitude <= 400 [ft] }
        require constraint { doc /* ≦ 312 KEAS */ gearDeploySpeed <= 312 [knot] }
        require constraint { doc /* ≦ 10 s */ gearLockTime <= 10 [s] }
    }
    #refinement dependency <'REQ-MECH-07>RQM'> from ReqMech07 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
    requirement def <'REQ-MECH-08'> ReqMech08 {
        doc /* REQ-MECH-08 の値の形式化（数値） */
        attribute dragChuteJettisonSpeed : SpeedValue { doc /* RF-254 ドラッグシュートを投棄する対地速度（kt） */ }
        attribute mainWheels : Integer { doc /* RF-255 ブレーキを持つ主輪の数（単位なし） */ }
        require constraint { doc /* 40〜80 kt、60（±20） kt */ dragChuteJettisonSpeed >= 40 [knot] and dragChuteJettisonSpeed <= 80 [knot] }
        require constraint { doc /* ＝ 4 */ mainWheels == 4 }
    }
    #refinement dependency <'REQ-MECH-08>RQM'> from ReqMech08 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
    requirement def <'REQ-MECH-09'> ReqMech09 {
        doc /* REQ-MECH-09 の値の形式化（数値） */
        attribute nwsEnableConditions : Integer { doc /* RF-256 前輪操向の有効化条件の数（単位なし） */ }
        attribute nwsEnablePitch : AngularMeasureValue { doc /* RF-257 前輪操向を有効にするピッチ角（deg） */ }
        require constraint { doc /* ＝ 3 */ nwsEnableConditions == 3 }
        require constraint { doc /* ≦ 0 deg、0°未満（厳密） */ nwsEnablePitch <= 0 ['°'] }
    }
    #refinement dependency <'REQ-MECH-09>RQM'> from ReqMech09 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_09;
    requirement def <'REQ-MECH-10'> ReqMech10 {
        doc /* REQ-MECH-10 の値の形式化（数） */
        attribute deployLossForNextPls : Integer { doc /* RF-258 次の PLS とする脚の展開系の喪失数（単位なし） */ }
        attribute brakingSteeringFaultTolerance : Integer { doc /* RF-259 制動・前輪操向による方向制御の故障許容（単位なし） */ }
        require constraint { doc /* ＝ 2 */ deployLossForNextPls == 2 }
        require constraint { doc /* ＝ 0 */ brakingSteeringFaultTolerance == 0 }
    }
    #refinement dependency <'REQ-MECH-10>RQM'> from ReqMech10 to SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_10;
    requirement def <'REQ-MPS-01'> ReqMps01 {
        doc /* REQ-MPS-01 の値の形式化（数値） */
        attribute ssmeCount : Integer { doc /* RF-260 SSME の基数（単位なし） */ }
        attribute throttleRange : Real { doc /* RF-261 推力の絞りの範囲（定格比）（%） */ }
        attribute ratedThrustSeaLevel : ForceValue { doc /* RF-262 定格（100%）の海面推力（lbf） */ }
        attribute ratedThrustVacuum : ForceValue { doc /* RF-263 定格（100%）の真空推力（lbf） */ }
        require constraint { doc /* ＝ 3 */ ssmeCount == 3 }
        require constraint { doc /* 67〜109 % */ throttleRange >= 67 and throttleRange <= 109 }
        require constraint { doc /* ＝ 375000 lbf */ ratedThrustSeaLevel == 375000 [lbf] }
        require constraint { doc /* ＝ 470000 lbf */ ratedThrustVacuum == 470000 [lbf] }
    }
    #refinement dependency <'REQ-MPS-01>RQM'> from ReqMps01 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_01;
    requirement def <'REQ-MPS-02'> ReqMps02 {
        doc /* REQ-MPS-02 の値の形式化（数値） */
        attribute engineStarts : Integer { doc /* RF-264 エンジン1基の始動の回数（単位なし） */ }
        attribute engineOperatingLife : DurationValue { doc /* RF-265 エンジン1基の運転時間（s） */ }
        require constraint { doc /* ≧ 30 */ engineStarts >= 30 }
        require constraint { doc /* ≧ 15000 s */ engineOperatingLife >= 15000 [s] }
    }
    #refinement dependency <'REQ-MPS-02>RQM'> from ReqMps02 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_02;
    requirement def <'REQ-MPS-04'> ReqMps04 {
        doc /* REQ-MPS-04 の値の形式化（数） */
        attribute dcuPerController : Integer { doc /* RF-266 制御器ごとのデジタル計算機の数（単位なし） */ }
        attribute enginesLostOnTwoAcBus : Integer { doc /* RF-267 どの2本の交流母線を失っても失うエンジンの数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ dcuPerController == 2 }
        require constraint { doc /* ≦ 1 */ enginesLostOnTwoAcBus <= 1 }
    }
    #refinement dependency <'REQ-MPS-04>RQM'> from ReqMps04 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
    requirement def <'REQ-MPS-05'> ReqMps05 {
        doc /* REQ-MPS-05 の値の形式化（数） */
        attribute commandSourceGpcs : Integer { doc /* RF-268 指令を出す GPC の数（単位なし） */ }
        attribute commandChannels : Integer { doc /* RF-269 制御器に届く指令の数（単位なし） */ }
        attribute validCommandsToExecute : Integer { doc /* RF-270 実行に要る有効な指令の数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ commandSourceGpcs == 4 }
        require constraint { doc /* ＝ 3 */ commandChannels == 3 }
        require constraint { doc /* ≧ 2 */ validCommandsToExecute >= 2 }
    }
    #refinement dependency <'REQ-MPS-05>RQM'> from ReqMps05 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_05;
    requirement def <'REQ-MPS-06'> ReqMps06 {
        doc /* REQ-MPS-06 の値の形式化（数値） */
        attribute redlinePersistence : DurationValue { doc /* RF-271 停止とするレッドライン超過の持続時間（ms） */ }
        attribute monitorCycle : DurationValue { doc /* RF-272 監視の周期（ms） */ }
        attribute consecutiveExceedances : Integer { doc /* RF-273 連続の超過回数（単位なし） */ }
        require constraint { doc /* ＝ 60 ms */ redlinePersistence == 0.06 [s] }
        require constraint { doc /* ＝ 20 ms */ monitorCycle == 0.02 [s] }
        require constraint { doc /* ＝ 3 */ consecutiveExceedances == 3 }
    }
    #refinement dependency <'REQ-MPS-06>RQM'> from ReqMps06 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_06;
    requirement def <'REQ-MPS-07'> ReqMps07 {
        doc /* REQ-MPS-07 の値の形式化（数値） */
        attribute feedlineDiameter : LengthValue { doc /* RF-274 供給配管マニホールドの直径（in） */ }
        attribute feedManifolds : Integer { doc /* RF-275 マニホールドの数（LO2・LH2）（単位なし） */ }
        attribute disconnectValves : Integer { doc /* RF-276 切離し弁の数（単位なし） */ }
        require constraint { doc /* ＝ 17 in */ feedlineDiameter == 17 ['in'] }
        require constraint { doc /* ＝ 2 */ feedManifolds == 2 }
        require constraint { doc /* ＝ 4 */ disconnectValves == 4 }
    }
    #refinement dependency <'REQ-MPS-07>RQM'> from ReqMps07 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
    requirement def <'REQ-MPS-08'> ReqMps08 {
        doc /* REQ-MPS-08 の値の形式化（数値） */
        attribute lo2UllagePressure : PressureValue { doc /* RF-277 LO2 タンクのアレージ圧（psig） */ }
        attribute lh2UllagePressure : PressureValue { doc /* RF-278 LH2 タンクのアレージ圧（psia） */ }
        require constraint { doc /* 20〜25 psig */ lo2UllagePressure >= 20 ['lbf/in²'] and lo2UllagePressure <= 25 ['lbf/in²'] }
        require constraint { doc /* 32〜34 psia */ lh2UllagePressure >= 32 ['lbf/in²'] and lh2UllagePressure <= 34 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-MPS-08>RQM'> from ReqMps08 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
    requirement def <'REQ-MPS-09'> ReqMps09 {
        doc /* REQ-MPS-09 の値の形式化（数） */
        attribute lo2DepletionSensors : Integer { doc /* RF-279 LO2 の枯渇センサの数（単位なし） */ }
        attribute lh2DepletionSensors : Integer { doc /* RF-280 LH2 の枯渇センサの数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ lo2DepletionSensors == 4 }
        require constraint { doc /* ＝ 4 */ lh2DepletionSensors == 4 }
    }
    #refinement dependency <'REQ-MPS-09>RQM'> from ReqMps09 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_09;
    requirement def <'REQ-MPS-10'> ReqMps10 {
        doc /* REQ-MPS-10 の値の形式化（数値） */
        attribute dumpStartTime : DurationValue { doc /* RF-281 MECO からダンプ開始までの時間（min） */ }
        attribute vacuumInertTime : DurationValue { doc /* RF-282 ダンプ終了から真空不活性化までの時間（min） */ }
        require constraint { doc /* ＝ 2 min */ dumpStartTime == 2 [min] }
        require constraint { doc /* ＝ 15 min */ vacuumInertTime == 15 [min] }
    }
    #refinement dependency <'REQ-MPS-10>RQM'> from ReqMps10 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
    requirement def <'REQ-MPS-11'> ReqMps11 {
        doc /* REQ-MPS-11 の値の形式化（数値） */
        attribute heliumSystems : Integer { doc /* RF-283 ヘリウム系の系統数（エンジン3・空圧1）（単位なし） */ }
        attribute regulatedPressure : PressureValue { doc /* RF-284 エンジン系統の調圧（psia） */ }
        require constraint { doc /* ＝ 4 */ heliumSystems == 4 }
        require constraint { doc /* 730〜785 psia */ regulatedPressure >= 730 ['lbf/in²'] and regulatedPressure <= 785 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-MPS-11>RQM'> from ReqMps11 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
    requirement def <'REQ-MPS-12'> ReqMps12 {
        doc /* REQ-MPS-12 の値の形式化（数値） */
        attribute ssmePitchGimbal : AngularMeasureValue { doc /* RF-285 SSME のピッチのジンバル角（deg） */ }
        attribute ssmeYawGimbal : AngularMeasureValue { doc /* RF-286 SSME のヨーのジンバル角（deg） */ }
        attribute hydraulicSupplies : Integer { doc /* RF-287 アクチュエータが受ける油圧系の数（単位なし） */ }
        require constraint { doc /* -10.5〜10.5 deg、±10.5° */ ssmePitchGimbal >= -10.5 ['°'] and ssmePitchGimbal <= 10.5 ['°'] }
        require constraint { doc /* -8.5〜8.5 deg、±8.5° */ ssmeYawGimbal >= -8.5 ['°'] and ssmeYawGimbal <= 8.5 ['°'] }
        require constraint { doc /* ＝ 2 */ hydraulicSupplies == 2 }
    }
    #refinement dependency <'REQ-MPS-12>RQM'> from ReqMps12 to SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
    requirement def <'REQ-OMS-01'> ReqOms01 {
        doc /* REQ-OMS-01 の値の形式化（数値） */
        attribute omsThrust : ForceValue { doc /* RF-288 OMS エンジンの推力（lbf） */ }
        attribute omsStarts : Integer { doc /* RF-289 始動の回数（単位なし） */ }
        attribute omsCumulativeFiring : DurationValue { doc /* RF-290 累積の噴射時間（h） */ }
        require constraint { doc /* ＝ 6087 lbf */ omsThrust == 6087 [lbf] }
        require constraint { doc /* ≧ 1000 */ omsStarts >= 1000 }
        require constraint { doc /* ≧ 15 h */ omsCumulativeFiring >= 15 [h] }
    }
    #refinement dependency <'REQ-OMS-01>RQM'> from ReqOms01 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_01;
    requirement def <'REQ-OMS-02'> ReqOms02 {
        doc /* REQ-OMS-02 の値の形式化（数値） */
        attribute seriesValves : Integer { doc /* RF-291 燃料・酸化剤それぞれの直列の推進薬弁の数（単位なし） */ }
        attribute purgeDelay : DurationValue { doc /* RF-292 停止からパージまでの時間（s） */ }
        require constraint { doc /* ＝ 2 */ seriesValves == 2 }
        require constraint { doc /* ＝ 0.36 s */ purgeDelay == 0.36 [s] }
    }
    #refinement dependency <'REQ-OMS-02>RQM'> from ReqOms02 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_02;
    requirement def <'REQ-OMS-03'> ReqOms03 {
        doc /* REQ-OMS-03 の値の形式化（数値） */
        attribute fuelInjectorTempLimit : ThermodynamicTemperatureValue { doc /* RF-293 燃料噴射器温度の限界（°F） */ }
        require constraint { doc /* ≦ 260 °F */ fuelInjectorTempLimit <= 260 ['°F_abs'] }
    }
    #refinement dependency <'REQ-OMS-03>RQM'> from ReqOms03 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_03;
    requirement def <'REQ-OMS-04'> ReqOms04 {
        doc /* REQ-OMS-04 の値の形式化（数値） */
        attribute heliumTanks : Integer { doc /* RF-294 ヘリウムタンクの数（単位なし） */ }
        attribute primaryRegPressure : PressureValue { doc /* RF-295 一次調圧の圧力（psig） */ }
        require constraint { doc /* ＝ 1 */ heliumTanks == 1 }
        require constraint { doc /* 252〜262 psig */ primaryRegPressure >= 252 ['lbf/in²'] and primaryRegPressure <= 262 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-OMS-04>RQM'> from ReqOms04 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
    requirement def <'REQ-OMS-05'> ReqOms05 {
        doc /* REQ-OMS-05 の値の形式化（数値） */
        attribute omsDeltaV : SpeedValue { doc /* RF-296 両ポッドの OMS 推進薬で与える速度変化（ft/s） */ }
        attribute referencePayload : MassValue { doc /* RF-297 速度変化の基準のペイロード質量（lb） */ }
        require constraint { doc /* ≧ 1000 ft/s、ペイロード 65,000 lb */ omsDeltaV >= 1000 ['ft/s'] }
        require constraint { doc /* ＝ 65000 lb */ referencePayload == 65000 [lb] }
    }
    #refinement dependency <'REQ-OMS-05>RQM'> from ReqOms05 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_05;
    requirement def <'REQ-OMS-06'> ReqOms06 {
        doc /* REQ-OMS-06 の値の形式化（数値） */
        attribute nominalTankPressure : PressureValue { doc /* RF-298 公称のタンク圧（psi） */ }
        attribute maxTankPressure : PressureValue { doc /* RF-299 最大のタンク圧（psia） */ }
        require constraint { doc /* ＝ 250 psi */ nominalTankPressure == 250 ['lbf/in²'] }
        require constraint { doc /* ≦ 313 psia */ maxTankPressure <= 313 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-OMS-06>RQM'> from ReqOms06 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_06;
    requirement def <'REQ-OMS-07'> ReqOms07 {
        doc /* REQ-OMS-07 の値の形式化（数） */
        attribute crossfeedValvesPerLine : Integer { doc /* RF-300 配管ごとの並列のクロスフィード弁の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ crossfeedValvesPerLine == 2 }
    }
    #refinement dependency <'REQ-OMS-07>RQM'> from ReqOms07 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
    requirement def <'REQ-OMS-08'> ReqOms08 {
        doc /* REQ-OMS-08 の値の形式化（数値） */
        attribute omsPitchGimbal : AngularMeasureValue { doc /* RF-301 OMS のピッチのジンバル角（deg） */ }
        attribute omsYawGimbal : AngularMeasureValue { doc /* RF-302 OMS のヨーのジンバル角（deg） */ }
        attribute actuatorMotors : Integer { doc /* RF-303 アクチュエータの電動機の数（単位なし） */ }
        require constraint { doc /* -6〜6 deg、±6° */ omsPitchGimbal >= -6 ['°'] and omsPitchGimbal <= 6 ['°'] }
        require constraint { doc /* -7〜7 deg、±7° */ omsYawGimbal >= -7 ['°'] and omsYawGimbal <= 7 ['°'] }
        require constraint { doc /* ＝ 2 */ actuatorMotors == 2 }
    }
    #refinement dependency <'REQ-OMS-08>RQM'> from ReqOms08 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
    requirement def <'REQ-OMS-09'> ReqOms09 {
        doc /* REQ-OMS-09 の値の形式化（数値） */
        attribute propellantTemperature : ThermodynamicTemperatureValue { doc /* RF-304 OMS の推進薬の温度（°F） */ }
        attribute crossfeedLineTemperature : ThermodynamicTemperatureValue { doc /* RF-305 クロスフィード配管の温度（°F） */ }
        require constraint { doc /* 40〜100 °F */ propellantTemperature >= 40 ['°F_abs'] and propellantTemperature <= 100 ['°F_abs'] }
        require constraint { doc /* 40〜125 °F */ crossfeedLineTemperature >= 40 ['°F_abs'] and crossfeedLineTemperature <= 125 ['°F_abs'] }
    }
    #refinement dependency <'REQ-OMS-09>RQM'> from ReqOms09 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_09;
    requirement def <'REQ-OMS-10'> ReqOms10 {
        doc /* REQ-OMS-10 の値の形式化（数） */
        attribute deorbitMeansAfterLoss : Integer { doc /* RF-306 1基喪失後の軌道離脱の手段の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ deorbitMeansAfterLoss == 2 }
    }
    #refinement dependency <'REQ-OMS-10>RQM'> from ReqOms10 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
    requirement def <'REQ-OMS-11'> ReqOms11 {
        doc /* REQ-OMS-11 の値の形式化（数値） */
        attribute landingPropellantPerPod : Real { doc /* RF-307 着陸時の各ポッドの推進薬（%） */ }
        require constraint { doc /* ≦ 22 % */ landingPropellantPerPod <= 22 }
    }
    #refinement dependency <'REQ-OMS-11>RQM'> from ReqOms11 to SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_11;
    requirement def <'REQ-PLS-01'> ReqPls01 {
        doc /* REQ-PLS-01 の値の形式化（数値） */
        attribute rmsJoints : Integer { doc /* RF-308 RMS の関節の数（単位なし） */ }
        attribute rmsLength : LengthValue { doc /* RF-309 RMS の長さ（ft） */ }
        attribute rmsPayloadMass : MassValue { doc /* RF-310 展開・回収できるペイロードの質量（lb） */ }
        require constraint { doc /* ＝ 6 */ rmsJoints == 6 }
        require constraint { doc /* ＝ 50.25 ft、50 ft 3 in */ rmsLength == 50.25 [ft] }
        require constraint { doc /* ≦ 586000 lb、最大、無重量 */ rmsPayloadMass <= 586000 [lb] }
    }
    #refinement dependency <'REQ-PLS-01>RQM'> from ReqPls01 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
    requirement def <'REQ-PLS-02'> ReqPls02 {
        doc /* REQ-PLS-02 の値の形式化（数値） */
        attribute jointDriveVoltage : ElectricPotentialDifferenceValue { doc /* RF-311 関節の駆動の電圧（V） */ }
        attribute jointDrivePaths : Integer { doc /* RF-312 関節の駆動経路の数（SPA・予備駆動増幅器）（単位なし） */ }
        require constraint { doc /* ＝ 28 V、DC */ jointDriveVoltage == 28 [V] }
        require constraint { doc /* ＝ 2 */ jointDrivePaths == 2 }
    }
    #refinement dependency <'REQ-PLS-02>RQM'> from ReqPls02 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
    requirement def <'REQ-PLS-03'> ReqPls03 {
        doc /* REQ-PLS-03 の値の形式化（数） */
        attribute spareMciu : Integer { doc /* RF-313 予備の MCIU の数（単位なし） */ }
        require constraint { doc /* ＝ 1 */ spareMciu == 1 }
    }
    #refinement dependency <'REQ-PLS-03>RQM'> from ReqPls03 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
    requirement def <'REQ-PLS-04'> ReqPls04 {
        doc /* REQ-PLS-04 の値の形式化（数） */
        attribute rmsOperators : Integer { doc /* RF-314 RMS の操作員の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ rmsOperators == 2 }
    }
    #refinement dependency <'REQ-PLS-04>RQM'> from ReqPls04 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
    requirement def <'REQ-PLS-05'> ReqPls05 {
        doc /* REQ-PLS-05 の値の形式化（数） */
        attribute mpmSeparationPoints : Integer { doc /* RF-315 MPM の分離点の数（左舷）（単位なし） */ }
        require constraint { doc /* ＝ 4 */ mpmSeparationPoints == 4 }
    }
    #refinement dependency <'REQ-PLS-05>RQM'> from ReqPls05 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
    requirement def <'REQ-PLS-06'> ReqPls06 {
        doc /* REQ-PLS-06 の値の形式化（数） */
        attribute payloadsPerFlight : Integer { doc /* RF-316 1回の飛行で支えるペイロードの数（単位なし） */ }
        attribute longeronAttachPoints : Integer { doc /* RF-317 縦通材の取付け点の数（単位なし） */ }
        attribute keelAttachPoints : Integer { doc /* RF-318 キールの取付け点の数（単位なし） */ }
        require constraint { doc /* ≦ 3 */ payloadsPerFlight <= 3 }
        require constraint { doc /* ＝ 124 */ longeronAttachPoints == 124 }
        require constraint { doc /* ＝ 75 */ keelAttachPoints == 75 }
    }
    #refinement dependency <'REQ-PLS-06>RQM'> from ReqPls06 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_06;
    requirement def <'REQ-PLS-07'> ReqPls07 {
        doc /* REQ-PLS-07 の値の形式化（数） */
        attribute structuralHookPairs : Integer { doc /* RF-319 ODS の構造フックの対の数（単位なし） */ }
        require constraint { doc /* ＝ 12 */ structuralHookPairs == 12 }
    }
    #refinement dependency <'REQ-PLS-07>RQM'> from ReqPls07 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
    requirement def <'REQ-PLS-08'> ReqPls08 {
        doc /* REQ-PLS-08 の値の形式化（数値） */
        attribute rmsCheckoutDuration : DurationValue { doc /* RF-320 RMS の点検の時間（h） */ }
        attribute rmsCheckoutsPerFlight : Integer { doc /* RF-321 1飛行あたりの点検の回数（単位なし） */ }
        attribute goodCameraViews : Integer { doc /* RF-322 用意するよいカメラの視野の数（単位なし） */ }
        require constraint { doc /* ＝ 1 h、約 */ rmsCheckoutDuration == 1 [h] }
        require constraint { doc /* ＝ 1 */ rmsCheckoutsPerFlight == 1 }
        require constraint { doc /* ≧ 2 */ goodCameraViews >= 2 }
    }
    #refinement dependency <'REQ-PLS-08>RQM'> from ReqPls08 to SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_08;
    requirement def <'REQ-RCS-01'> ReqRcs01 {
        doc /* REQ-RCS-01 の値の形式化（数値） */
        attribute heliumTanksPerModule : Integer { doc /* RF-323 RCS ごとのヘリウムタンクの数（単位なし） */ }
        attribute regulatorSets : Integer { doc /* RF-324 調圧器の組数（単位なし） */ }
        attribute primaryRegPressure : PressureValue { doc /* RF-325 一次調圧の圧力（psig） */ }
        attribute secondaryRegPressure : PressureValue { doc /* RF-326 二次調圧の圧力（psig） */ }
        require constraint { doc /* ＝ 2 */ heliumTanksPerModule == 2 }
        require constraint { doc /* ＝ 2 */ regulatorSets == 2 }
        require constraint { doc /* 242〜248 psig */ primaryRegPressure >= 242 ['lbf/in²'] and primaryRegPressure <= 248 ['lbf/in²'] }
        require constraint { doc /* 253〜259 psig */ secondaryRegPressure >= 253 ['lbf/in²'] and secondaryRegPressure <= 259 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-RCS-01>RQM'> from ReqRcs01 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
    requirement def <'REQ-RCS-03'> ReqRcs03 {
        doc /* REQ-RCS-03 の値の形式化（数値） */
        attribute quantityMismatchAlarm : Real { doc /* RF-327 警報を出す燃料と酸化剤の量の差（%） */ }
        require constraint { doc /* ＝ 9.5 %、この差を超えたら警報 */ quantityMismatchAlarm == 9.5 }
    }
    #refinement dependency <'REQ-RCS-03>RQM'> from ReqRcs03 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_03;
    requirement def <'REQ-RCS-04'> ReqRcs04 {
        doc /* REQ-RCS-04 の値の形式化（数値） */
        attribute primaryThrusters : Integer { doc /* RF-328 主噴射器の数（単位なし） */ }
        attribute primaryThrust : ForceValue { doc /* RF-329 主噴射器1基の推力（lbf） */ }
        attribute vernierThrusters : Integer { doc /* RF-330 バーニア噴射器の数（単位なし） */ }
        attribute vernierThrust : ForceValue { doc /* RF-331 バーニア噴射器1基の推力（lbf） */ }
        require constraint { doc /* ＝ 38 */ primaryThrusters == 38 }
        require constraint { doc /* ＝ 870 lbf */ primaryThrust == 870 [lbf] }
        require constraint { doc /* ＝ 6 */ vernierThrusters == 6 }
        require constraint { doc /* ＝ 24 lbf */ vernierThrust == 24 [lbf] }
    }
    #refinement dependency <'REQ-RCS-04>RQM'> from ReqRcs04 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
    requirement def <'REQ-RCS-05'> ReqRcs05 {
        doc /* REQ-RCS-05 の値の形式化（数値） */
        attribute primaryContinuousFire : DurationValue { doc /* RF-332 主噴射器の連続噴射時間（s） */ }
        attribute vernierContinuousFire : DurationValue { doc /* RF-333 バーニアの連続噴射時間（s） */ }
        require constraint { doc /* ≦ 150 s */ primaryContinuousFire <= 150 [s] }
        require constraint { doc /* ≦ 275 s */ vernierContinuousFire <= 275 [s] }
    }
    #refinement dependency <'REQ-RCS-05>RQM'> from ReqRcs05 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_05;
    requirement def <'REQ-RCS-06'> ReqRcs06 {
        doc /* REQ-RCS-06 の値の形式化（数値） */
        attribute pcOnThreshold : PressureValue { doc /* RF-334 燃焼室圧の離散信号の ON の圧力（psi） */ }
        attribute pcOffThreshold : PressureValue { doc /* RF-335 燃焼室圧の離散信号の OFF の圧力（psi） */ }
        require constraint { doc /* ＝ 36 psi */ pcOnThreshold == 36 ['lbf/in²'] }
        require constraint { doc /* ＝ 26 psi */ pcOffThreshold == 26 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-RCS-06>RQM'> from ReqRcs06 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
    requirement def <'REQ-RCS-07'> ReqRcs07 {
        doc /* REQ-RCS-07 の値の形式化（数値） */
        attribute thrusterTemperature : ThermodynamicTemperatureValue { doc /* RF-336 噴射器の温度（°F） */ }
        attribute aftTankTemperature : ThermodynamicTemperatureValue { doc /* RF-337 後部 RCS のタンクの温度（°F） */ }
        require constraint { doc /* ≧ 50 °F、括弧内 55°F（もう一方の値） */ thrusterTemperature >= 50 ['°F_abs'] }
        require constraint { doc /* ≧ 68 °F、括弧内 70°F（もう一方の値） */ aftTankTemperature >= 68 ['°F_abs'] }
    }
    #refinement dependency <'REQ-RCS-07>RQM'> from ReqRcs07 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
    requirement def <'REQ-RCS-08'> ReqRcs08 {
        doc /* REQ-RCS-08 の値の形式化（数） */
        attribute failureDetectCycles : Integer { doc /* RF-338 故障検知の周期数（単位なし） */ }
        attribute maxDeselectPerPod : Integer { doc /* RF-339 ポッドごとの自動選択解除の上限（単位なし） */ }
        require constraint { doc /* ＝ 3 */ failureDetectCycles == 3 }
        require constraint { doc /* ≦ 2 */ maxDeselectPerPod <= 2 }
    }
    #refinement dependency <'REQ-RCS-08>RQM'> from ReqRcs08 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
    requirement def <'REQ-RCS-10'> ReqRcs10 {
        doc /* REQ-RCS-10 の値の形式化（数） */
        attribute aftLeaksForNextPls : Integer { doc /* RF-340 次の PLS とする後部タンクの漏れの件数（単位なし） */ }
        require constraint { doc /* ＝ 1 */ aftLeaksForNextPls == 1 }
    }
    #refinement dependency <'REQ-RCS-10>RQM'> from ReqRcs10 to SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_10;
    requirement def <'REQ-SRB-01'> ReqSrb01 {
        doc /* REQ-SRB-01 の値の形式化（数値） */
        attribute srbThrustSeaLevel : ForceValue { doc /* RF-341 SRB 1本の海面推力（lbf） */ }
        attribute srbThrustShare : Real { doc /* RF-342 打上げ・第1段上昇の推力に占める割合（%） */ }
        require constraint { doc /* ＝ 3300000 lbf、約 */ srbThrustSeaLevel == 3300000 [lbf] }
        require constraint { doc /* ＝ 71.4 % */ srbThrustShare == 71.4 }
    }
    #refinement dependency <'REQ-SRB-01>RQM'> from ReqSrb01 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
    requirement def <'REQ-SRB-02'> ReqSrb02 {
        doc /* REQ-SRB-02 の値の形式化（数値） */
        attribute thrustBucketTime : DurationValue { doc /* RF-343 推力を下げる時刻（打上げ後）（s） */ }
        attribute thrustReductionFraction : Real { doc /* RF-344 推力の低減の割合（単位なし） */ }
        require constraint { doc /* ＝ 50 s、約 */ thrustBucketTime == 50 [s] }
        require constraint { doc /* ＝ 0.3333333333333333、約3分の1 */ thrustReductionFraction == 0.3333333333333333 }
    }
    #refinement dependency <'REQ-SRB-02>RQM'> from ReqSrb02 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_02;
    requirement def <'REQ-SRB-03'> ReqSrb03 {
        doc /* REQ-SRB-03 の値の形式化（数） */
        attribute holdDownBoltSets : Integer { doc /* RF-345 SRB 1本あたりの保持ボルトの組数（単位なし） */ }
        require constraint { doc /* ＝ 4 */ holdDownBoltSets == 4 }
    }
    #refinement dependency <'REQ-SRB-03>RQM'> from ReqSrb03 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
    requirement def <'REQ-SRB-04'> ReqSrb04 {
        doc /* REQ-SRB-04 の値の形式化（数値） */
        attribute ssmeThrustForIgnition : Real { doc /* RF-346 SRB 点火を許す SSME の推力（定格比）（%） */ }
        attribute pyroSignals : Integer { doc /* RF-347 火工品の発火に要る信号の数（arm・fire 1・fire 2）（単位なし） */ }
        require constraint { doc /* ≧ 90 % */ ssmeThrustForIgnition >= 90 }
        require constraint { doc /* ＝ 3 */ pyroSignals == 3 }
    }
    #refinement dependency <'REQ-SRB-04>RQM'> from ReqSrb04 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
    requirement def <'REQ-SRB-05'> ReqSrb05 {
        doc /* REQ-SRB-05 の値の形式化（数値） */
        attribute nozzleGimbal : AngularMeasureValue { doc /* RF-348 ノズルのジンバル角（全軸）（deg） */ }
        attribute hpuPerSrb : Integer { doc /* RF-349 SRB 1本あたりの独立した HPU の数（単位なし） */ }
        require constraint { doc /* ≦ 8 deg */ nozzleGimbal <= 8 ['°'] }
        require constraint { doc /* ＝ 2 */ hpuPerSrb == 2 }
    }
    #refinement dependency <'REQ-SRB-05>RQM'> from ReqSrb05 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
    requirement def <'REQ-SRB-06'> ReqSrb06 {
        doc /* REQ-SRB-06 の値の形式化（数値） */
        attribute srbBusNominalVoltage : ElectricPotentialDifferenceValue { doc /* RF-350 SRB 母線の公称電圧（V） */ }
        attribute srbBusVoltage : ElectricPotentialDifferenceValue { doc /* RF-351 SRB 母線の電圧の範囲（V） */ }
        attribute supplyingMainBuses : Integer { doc /* RF-352 給電するオービタの主直流母線の数（単位なし） */ }
        require constraint { doc /* ＝ 28 V */ srbBusNominalVoltage == 28 [V] }
        require constraint { doc /* 24〜32 V */ srbBusVoltage >= 24 [V] and srbBusVoltage <= 32 [V] }
        require constraint { doc /* ＝ 3 */ supplyingMainBuses == 3 }
    }
    #refinement dependency <'REQ-SRB-06>RQM'> from ReqSrb06 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_06;
    requirement def <'REQ-SRB-07'> ReqSrb07 {
        doc /* REQ-SRB-07 の値の形式化（数） */
        attribute rssCommands : Integer { doc /* RF-353 射場安全系の指令の数（arm・fire）（単位なし） */ }
        attribute rssDistributors : Integer { doc /* RF-354 クロスストラップする分配器の数（単位なし） */ }
        require constraint { doc /* ＝ 2 */ rssCommands == 2 }
        require constraint { doc /* ＝ 2 */ rssDistributors == 2 }
    }
    #refinement dependency <'REQ-SRB-07>RQM'> from ReqSrb07 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_07;
    requirement def <'REQ-SRB-08'> ReqSrb08 {
        doc /* REQ-SRB-08 の値の形式化（数値） */
        attribute separationChamberPressure : PressureValue { doc /* RF-355 分離を始める両 SRB の燃焼圧（psi） */ }
        attribute separationTime : DurationValue { doc /* RF-356 発火の指令から分離までの時間（ms） */ }
        attribute bsmPerSrb : Integer { doc /* RF-357 SRB 1本あたりの分離モータの数（単位なし） */ }
        require constraint { doc /* ≦ 50 psi */ separationChamberPressure <= 50 ['lbf/in²'] }
        require constraint { doc /* ≦ 30 ms */ separationTime <= 0.03 [s] }
        require constraint { doc /* ＝ 8 */ bsmPerSrb == 8 }
    }
    #refinement dependency <'REQ-SRB-08>RQM'> from ReqSrb08 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
    requirement def <'REQ-SRB-09'> ReqSrb09 {
        doc /* REQ-SRB-09 の値の形式化（数値） */
        attribute splashdownSpeed : SpeedValue { doc /* RF-358 着水の速度（ft/s） */ }
        require constraint { doc /* ＝ 76 ft/s */ splashdownSpeed == 76 ['ft/s'] }
    }
    #refinement dependency <'REQ-SRB-09>RQM'> from ReqSrb09 to SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
    requirement def <'REQ-STR-01'> ReqStr01 {
        doc /* REQ-STR-01 の値の形式化（数） */
        attribute majorSections : Integer { doc /* RF-359 オービタ構造の主要区分の数（単位なし） */ }
        require constraint { doc /* ＝ 9 */ majorSections == 9 }
    }
    #refinement dependency <'REQ-STR-01>RQM'> from ReqStr01 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_01;
    requirement def <'REQ-STR-02'> ReqStr02 {
        doc /* REQ-STR-02 の値の形式化（数） */
        attribute frcsFasteners : Integer { doc /* RF-360 前部 RCS モジュールの留め具の数（単位なし） */ }
        require constraint { doc /* ＝ 16 */ frcsFasteners == 16 }
    }
    #refinement dependency <'REQ-STR-02>RQM'> from ReqStr02 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_02;
    requirement def <'REQ-STR-03'> ReqStr03 {
        doc /* REQ-STR-03 の値の形式化（数値） */
        attribute crewCabinPressure : PressureValue { doc /* RF-361 乗員室の圧力（psia） */ }
        attribute designPressure : PressureValue { doc /* RF-362 乗員室の設計圧力（psia） */ }
        attribute crewCabinVolume : VolumeValue { doc /* RF-363 乗員室の容積（ft3） */ }
        require constraint { doc /* 14.5〜14.9 psia、14.7±0.2 psia */ crewCabinPressure >= 14.5 ['lbf/in²'] and crewCabinPressure <= 14.9 ['lbf/in²'] }
        require constraint { doc /* ≧ 16 psia、耐えること */ designPressure >= 16 ['lbf/in²'] }
        require constraint { doc /* ＝ 2553 ft3 */ crewCabinVolume == 2553 ['ft³'] }
    }
    #refinement dependency <'REQ-STR-03>RQM'> from ReqStr03 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_03;
    requirement def <'REQ-STR-04'> ReqStr04 {
        doc /* REQ-STR-04 の値の形式化（数値） */
        attribute windowPanes : Integer { doc /* RF-364 前方窓の板ガラスの枚数（単位なし） */ }
        attribute pressurePaneThickness : LengthValue { doc /* RF-365 圧力ペインの厚さ（in） */ }
        attribute reducedCabinPressure : PressureValue { doc /* RF-366 圧力ペイン故障時に下げる客室圧（psi） */ }
        require constraint { doc /* ＝ 3 */ windowPanes == 3 }
        require constraint { doc /* ＝ 0.625 in */ pressurePaneThickness == 0.625 ['in'] }
        require constraint { doc /* ＝ 10.2 psi、圧力ペインの故障時 */ reducedCabinPressure == 10.2 ['lbf/in²'] }
    }
    #refinement dependency <'REQ-STR-04>RQM'> from ReqStr04 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
    requirement def <'REQ-STR-05'> ReqStr05 {
        doc /* REQ-STR-05 の値の形式化（数値） */
        attribute payloadBayLength : LengthValue { doc /* RF-367 ペイロードベイの長さ（ft） */ }
        attribute payloadBayWidth : LengthValue { doc /* RF-368 ペイロードベイの幅（ft） */ }
        attribute payloadBayHeight : LengthValue { doc /* RF-369 ペイロードベイの高さ（ft） */ }
        require constraint { doc /* ＝ 60 ft */ payloadBayLength == 60 [ft] }
        require constraint { doc /* ＝ 17 ft */ payloadBayWidth == 17 [ft] }
        require constraint { doc /* ＝ 13 ft */ payloadBayHeight == 13 [ft] }
    }
    #refinement dependency <'REQ-STR-05>RQM'> from ReqStr05 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
    requirement def <'REQ-STR-06'> ReqStr06 {
        doc /* REQ-STR-06 の値の形式化（数） */
        attribute ssmeSupported : Integer { doc /* RF-370 推力構造が支える SSME の基数（単位なし） */ }
        attribute podBolts : Integer { doc /* RF-371 OMS/RCS ポッドの取付けボルトの数（単位なし） */ }
        require constraint { doc /* ＝ 3 */ ssmeSupported == 3 }
        require constraint { doc /* ＝ 11 */ podBolts == 11 }
    }
    #refinement dependency <'REQ-STR-06>RQM'> from ReqStr06 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
    requirement def <'REQ-STR-07'> ReqStr07 {
        doc /* REQ-STR-07 の値の形式化（数値） */
        attribute elevonUpDeflection : AngularMeasureValue { doc /* RF-372 エレボンの上げ方向の舵角（deg） */ }
        attribute elevonDownDeflection : AngularMeasureValue { doc /* RF-373 エレボンの下げ方向の舵角（deg） */ }
        require constraint { doc /* ≦ 33 deg */ elevonUpDeflection <= 33 ['°'] }
        require constraint { doc /* ≦ 18 deg */ elevonDownDeflection <= 18 ['°'] }
    }
    #refinement dependency <'REQ-STR-07>RQM'> from ReqStr07 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
    requirement def <'REQ-STR-08'> ReqStr08 {
        doc /* REQ-STR-08 の値の形式化（数値） */
        attribute bondLineTemperature : ThermodynamicTemperatureValue { doc /* RF-374 TPS の接着層の温度（°F） */ }
        require constraint { doc /* ≧ -170 °F、−170°F より高く（厳密） */ bondLineTemperature >= -170 ['°F_abs'] }
    }
    #refinement dependency <'REQ-STR-08>RQM'> from ReqStr08 to SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
    requirement def <'REQ-TPS-01'> ReqTps01 {
        doc /* REQ-TPS-01 の値の形式化（数値） */
        attribute skinTemperature : ThermodynamicTemperatureValue { doc /* RF-375 再突入時のオービタ外板の温度（°F） */ }
        attribute reuseMissions : Integer { doc /* RF-376 TPS を再使用するミッションの回数（単位なし） */ }
        require constraint { doc /* ≦ 350 °F */ skinTemperature <= 350 ['°F_abs'] }
        require constraint { doc /* ≧ 100 */ reuseMissions >= 100 }
    }
    #refinement dependency <'REQ-TPS-01>RQM'> from ReqTps01 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
    requirement def <'REQ-TPS-02'> ReqTps02 {
        doc /* REQ-TPS-02 の値の形式化（数値） */
        attribute rccRegionTemperature : ThermodynamicTemperatureValue { doc /* RF-377 RCC で守る部位の最高温度（°F） */ }
        attribute hrsiRegionTemperature : ThermodynamicTemperatureValue { doc /* RF-378 HRSI（FRCI）で守る部位の最高温度（°F） */ }
        attribute lrsiRegionTemperature : ThermodynamicTemperatureValue { doc /* RF-379 LRSI で守る部位の最高温度（°F） */ }
        attribute frsiRegionTemperature : ThermodynamicTemperatureValue { doc /* RF-380 FRSI で守る部位の最高温度（°F） */ }
        require constraint { doc /* ≧ 2300 °F、2,300°F を超える部位（厳密） */ rccRegionTemperature >= 2300 ['°F_abs'] }
        require constraint { doc /* ≦ 2300 °F、2,300°F 未満（厳密） */ hrsiRegionTemperature <= 2300 ['°F_abs'] }
        require constraint { doc /* ≦ 1200 °F、1,200°F 未満（厳密） */ lrsiRegionTemperature <= 1200 ['°F_abs'] }
        require constraint { doc /* ≦ 700 °F、700°F 未満（厳密） */ frsiRegionTemperature <= 700 ['°F_abs'] }
    }
    #refinement dependency <'REQ-TPS-02>RQM'> from ReqTps02 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
    requirement def <'REQ-TPS-03'> ReqTps03 {
        doc /* REQ-TPS-03 の値の形式化（数値） */
        attribute bondLineTemperature : ThermodynamicTemperatureValue { doc /* RF-381 TPS の接着層の温度（°F） */ }
        require constraint { doc /* ≧ -170 °F、−170°F より高く（厳密） */ bondLineTemperature >= -170 ['°F_abs'] }
    }
    #refinement dependency <'REQ-TPS-03>RQM'> from ReqTps03 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_03;
    requirement def <'REQ-TPS-05'> ReqTps05 {
        doc /* REQ-TPS-05 の値の形式化（数値） */
        attribute podHeaterSetpoint : ThermodynamicTemperatureValue { doc /* RF-382 OMS/RCS ポッドのヒータで保つ温度（°F） */ }
        attribute heaterSystems : Integer { doc /* RF-383 ヒータの系統数（A・B）（単位なし） */ }
        require constraint { doc /* 55〜75 °F */ podHeaterSetpoint >= 55 ['°F_abs'] and podHeaterSetpoint <= 75 ['°F_abs'] }
        require constraint { doc /* ＝ 2 */ heaterSystems == 2 }
    }
    #refinement dependency <'REQ-TPS-05>RQM'> from ReqTps05 to SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_05;
    package Evaluations {
        doc /* 値による判定：形式化した要求の使用に評価の値を入れたもの */
        requirement <'EV-01'> ev01 : ReqEps19 {
            doc /* 標準ミッション（設計）：generationCapacity = 30 kW（値）。SSD-PAR-ORB-001 CON-05 powerCapacity */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 CON-05 powerCapacity"; }
            attribute :>> generationCapacity = 30 [kW];
        }
        #EvaluatedWith dependency <'EV-01>src'> from ev01 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-02'> ev02 : ReqEps04 {
            doc /* 標準ミッション（設計）：fcContinuousPower = 10 kW（値）。SSD-PAR-ORB-001 PAR-14 fcNominal */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 PAR-14 fcNominal"; }
            attribute :>> fcContinuousPower = 10 [kW];
        }
        #EvaluatedWith dependency <'EV-02>src'> from ev02 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-03'> ev03 : ReqEclss10 {
            doc /* 標準ミッション（設計）：potableTanks = 4（値）。SSD-PAR-ORB-001 PAR-06 waterTanks */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 PAR-06 waterTanks"; }
            attribute :>> potableTanks = 4;
        }
        #EvaluatedWith dependency <'EV-03>src'> from ev03 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-04'> ev04 : ReqEclss10 {
            doc /* 標準ミッション（設計）：tankCapacity = 165 lb（値）。SSD-PAR-ORB-001 PAR-07 waterPerTank */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 PAR-07 waterPerTank"; }
            attribute :>> tankCapacity = 165 [lb];
        }
        #EvaluatedWith dependency <'EV-04>src'> from ev04 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-05'> ev05 : ReqSys06 {
            doc /* 標準ミッション（設計）：orbitStayDuration = 10 d（値）。SSD-PAR-ORB-001 PAR-02 days */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 PAR-02 days"; }
            attribute :>> orbitStayDuration = 10 [d];
        }
        #EvaluatedWith dependency <'EV-05>src'> from ev05 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-06'> ev06 : ReqSys13 {
            doc /* 標準ミッション（設計）：extensionDays = 2 d（値）。SSD-PAR-ORB-001 PAR-03 reserveDays */
            @Judgement { verdict = "満たす"; subjectName = "標準ミッション（設計）"; source = "SSD-PAR-ORB-001 PAR-03 reserveDays"; }
            attribute :>> extensionDays = 2 [d];
        }
        #EvaluatedWith dependency <'EV-06>src'> from ev06 to SSD_PAR_ORB_001::StandardMission;
        requirement <'EV-07'> ev07 : ReqSys17 {
            doc /* 解析（設計）：eomLandingWeight = 233,000 lb（値）。SSD-ANA-ORB-001 eomForwardCg.landingWeight */
            @Judgement { verdict = "満たす"; subjectName = "解析（設計）"; source = "SSD-ANA-ORB-001 eomForwardCg.landingWeight"; }
            attribute :>> eomLandingWeight = 233000 [lb];
        }
        #EvaluatedWith dependency <'EV-07>src'> from ev07 to SSD_ANA_ORB_001::eomForwardCg;
        requirement <'EV-08'> ev08 : ReqSys06 {
            doc /* STS-1（実績）：orbitStayDuration = 2.26 d（値）。SSD-IND-ORB-001 STS-1 の離昇〜着陸（約54.35時間） */
            @Judgement { verdict = "満たさない"; subjectName = "STS-1（実績）"; source = "SSD-IND-ORB-001 STS-1 の離昇〜着陸（約54.35時間）"; }
            attribute :>> orbitStayDuration = 2.26 [d];
        }
        #EvaluatedWith dependency <'EV-08>src'> from ev08 to SSD_IND_ORB_001::Sts1;
        requirement <'EV-09'> ev09 : ReqSys06 {
            doc /* STS-114（実績）：orbitStayDuration = 13.9 d（値）。SSD-IND-ORB-001 AV-23 */
            @Judgement { verdict = "満たす"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 AV-23"; }
            attribute :>> orbitStayDuration = 13.9 [d];
        }
        #EvaluatedWith dependency <'EV-09>src'> from ev09 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-10'> ev10 : ReqSys06 {
            doc /* STS-125（実績）：orbitStayDuration = 12.9 d（値）。SSD-IND-ORB-001 AV-35 */
            @Judgement { verdict = "満たす"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-35"; }
            attribute :>> orbitStayDuration = 12.9 [d];
        }
        #EvaluatedWith dependency <'EV-10>src'> from ev10 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-11'> ev11 : ReqSys17 {
            doc /* STS-114（実績）：eomLandingWeight = 226,199.0 lb（値）。SSD-IND-ORB-001 AV-22 */
            @Judgement { verdict = "満たす"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 AV-22"; }
            attribute :>> eomLandingWeight = 226199 [lb];
        }
        #EvaluatedWith dependency <'EV-11>src'> from ev11 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-12'> ev12 : ReqSys17 {
            doc /* STS-125（実績）：eomLandingWeight = 232,591.4 lb（値）。SSD-IND-ORB-001 AV-33 */
            @Judgement { verdict = "満たす"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-33"; }
            attribute :>> eomLandingWeight = 232591.4 [lb];
        }
        #EvaluatedWith dependency <'EV-12>src'> from ev12 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-13'> ev13 : ReqEps14 {
            doc /* STS-114（実績）：purgeInterval = 23〜93 h（最も不利な端で判定）。SSD-IND-ORB-001 AV-19 */
            @Judgement { verdict = "満たさない"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 AV-19"; }
            attribute :>> purgeInterval = 93 [h];
        }
        #EvaluatedWith dependency <'EV-13>src'> from ev13 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-14'> ev14 : ReqEps14 {
            doc /* STS-125（実績）：purgeInterval = 24〜49 h（最も不利な端で判定）。SSD-IND-ORB-001 AV-31 */
            @Judgement { verdict = "満たさない"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-31"; }
            attribute :>> purgeInterval = 49 [h];
        }
        #EvaluatedWith dependency <'EV-14>src'> from ev14 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-15'> ev15 : ReqSys13 {
            doc /* STS-114（実績）：extensionDays = 1.5 d（値）。SSD-IND-ORB-001 AV-16 */
            @Judgement { verdict = "満たさない"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 AV-16"; }
            attribute :>> extensionDays = 1.5 [d];
        }
        #EvaluatedWith dependency <'EV-15>src'> from ev15 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-16'> ev16 : ReqSys13 {
            doc /* STS-125（実績）：extensionDays = 1.17 d（値）。SSD-IND-ORB-001 AV-28 */
            @Judgement { verdict = "満たさない"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-28"; }
            attribute :>> extensionDays = 1.17 [d];
        }
        #EvaluatedWith dependency <'EV-16>src'> from ev16 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-17'> ev17 : ReqOms11 {
            doc /* STS-125（実績）：landingPropellantPerPod = 6.2〜8.7 %（最も不利な端で判定）。SSD-IND-ORB-001 AV-34 */
            @Judgement { verdict = "満たす"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-34"; }
            attribute :>> landingPropellantPerPod = 8.7;
        }
        #EvaluatedWith dependency <'EV-17>src'> from ev17 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-18'> ev18 : ReqEps04 {
            doc /* STS-1（実績）：fcContinuousPower = 5.25 kW（値）。SSD-IND-ORB-001 AV-02 */
            @Judgement { verdict = "満たす"; subjectName = "STS-1（実績）"; source = "SSD-IND-ORB-001 AV-02"; }
            attribute :>> fcContinuousPower = 5.25 [kW];
        }
        #EvaluatedWith dependency <'EV-18>src'> from ev18 to SSD_IND_ORB_001::Sts1;
        requirement <'EV-19'> ev19 : ReqEps04 {
            doc /* STS-114（実績）：fcContinuousPower = 4.53 kW（値）。SSD-IND-ORB-001 AV-15 */
            @Judgement { verdict = "満たす"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 AV-15"; }
            attribute :>> fcContinuousPower = 4.53 [kW];
        }
        #EvaluatedWith dependency <'EV-19>src'> from ev19 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-20'> ev20 : ReqEps04 {
            doc /* STS-125（実績）：fcContinuousPower = 5.0 kW（値）。SSD-IND-ORB-001 AV-27 */
            @Judgement { verdict = "満たす"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 AV-27"; }
            attribute :>> fcContinuousPower = 5 [kW];
        }
        #EvaluatedWith dependency <'EV-20>src'> from ev20 to SSD_IND_ORB_001::Sts125;
        requirement <'EV-21'> ev21 : ReqSys05 {
            doc /* STS-114（実績）：crewCapacity = 7（値）。SSD-IND-ORB-001 STS-114 の乗員 */
            @Judgement { verdict = "満たす"; subjectName = "STS-114（実績）"; source = "SSD-IND-ORB-001 STS-114 の乗員"; }
            attribute :>> crewCapacity = 7;
        }
        #EvaluatedWith dependency <'EV-21>src'> from ev21 to SSD_IND_ORB_001::Sts114;
        requirement <'EV-22'> ev22 : ReqSys05 {
            doc /* STS-125（実績）：crewCapacity = 7（値）。SSD-IND-ORB-001 STS-125 の乗員 */
            @Judgement { verdict = "満たす"; subjectName = "STS-125（実績）"; source = "SSD-IND-ORB-001 STS-125 の乗員"; }
            attribute :>> crewCapacity = 7;
        }
        #EvaluatedWith dependency <'EV-22>src'> from ev22 to SSD_IND_ORB_001::Sts125;
    }
}
