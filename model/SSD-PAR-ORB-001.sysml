// SysML v2 テキスト：パラメトリック（消耗品・電力・反応剤・排熱の収支）
// SSD-PAR-ORB-001 パラメトリック定義書（消耗品・電力・排熱の収支） の表から生成（lib/build_docs_z.py、Rev. AN で量と単位の型付けを lib/qtysysml.py に移した）。値の根拠の頁は SSD-PAR-ORB-001 と SSD-BUD-ORB-001 にある。
package SSD_PAR_ORB_001 {
    doc /* SSD-PAR-ORB-001 パラメトリック定義書（消耗品・電力・排熱の収支）。図78・図79 と同じ制約と値。式は SSD-PAR-ORB-001 が資料の値から導いたもの。属性は SysML v2 の量（ISQ）と単位で型付けし、数（人数・日数・個数・基数・組数）は Real とした。1日の時間は 24 [h]。 */
    private import ScalarValues::*;
    private import Quantities::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    constraint def LiohBudget {
        doc /* CON-01 LiOH の CO2 除去能力 */
        in liohCanisters : Real;
        in liohRating : DurationValue;
        in crew : Real;
        in days : Real;
        out liohCapacity : DurationValue;
        out liohLoad : DurationValue;
        out liohMargin : DurationValue;
        out liohDays : Real;
        liohCapacity == liohCanisters * liohRating and liohLoad == crew * days * 24 [h] and liohMargin == liohCapacity - liohLoad and liohDays == liohCapacity / (crew * 24 [h])
    }
    constraint def LiohReserve {
        doc /* CON-02 LiOH の能力（予備日数を含む） */
        in crew : Real;
        in days : Real;
        in reserveDays : Real;
        in liohCapacity : DurationValue;
        out liohLoadReserve : DurationValue;
        out liohMarginReserve : DurationValue;
        liohLoadReserve == crew * (days + reserveDays) * 24 [h] and liohMarginReserve == liohCapacity - liohLoadReserve
    }
    constraint def WaterBudget {
        doc /* CON-03 飲料水（貯蔵分） */
        in waterTanks : Real;
        in waterPerTank : MassValue;
        in waterPerPersonDay : MassValue;
        in crew : Real;
        in days : Real;
        out waterCapacity : MassValue;
        out waterLoad : MassValue;
        out waterMargin : MassValue;
        waterCapacity == waterTanks * waterPerTank and waterLoad == waterPerPersonDay * crew * days and waterMargin == waterCapacity - waterLoad
    }
    constraint def NitrogenBudget {
        doc /* CON-04 窒素（キャビンの与圧と漏洩） */
        in n2Full : MassValue;
        in n2Dry : MassValue;
        in n2Tanks : Real;
        in n2PerDay : MassValue;
        in days : Real;
        out n2Capacity : MassValue;
        out n2Load : MassValue;
        out n2Margin : MassValue;
        n2Capacity == (n2Full - n2Dry) * n2Tanks and n2Load == n2PerDay * days and n2Margin == n2Capacity - n2Load
    }
    constraint def PowerBudget {
        doc /* CON-05 軌道上・再突入・故障時の電力 */
        in nFc : Real;
        in fcNominal : PowerValue;
        in orbitLoad : PowerValue;
        in reentryLoad : PowerValue;
        in fcFailTotal : PowerValue;
        out powerCapacity : PowerValue;
        out powerMargin : PowerValue;
        out powerMarginEntry : PowerValue;
        out powerMarginFail : PowerValue;
        powerCapacity == nFc * fcNominal and powerMargin == powerCapacity - orbitLoad and powerMarginEntry == powerCapacity - reentryLoad and powerMarginFail == fcFailTotal - orbitLoad
    }
    constraint def ReactantBudget {
        doc /* CON-06 反応剤（酸素・水素） */
        in orbitLoad : PowerValue;
        in days : Real;
        in o2PerTank : MassValue;
        in tankSets : Real;
        in o2PerKwh : ScalarQuantityValue;
        in o2CrewPerDay : MassValue;
        in h2PerTank : MassValue;
        in h2PerKwh : ScalarQuantityValue;
        out energy : EnergyValue;
        out o2Capacity : MassValue;
        out o2Load : MassValue;
        out o2Margin : MassValue;
        out h2Capacity : MassValue;
        out h2Load : MassValue;
        out h2Margin : MassValue;
        energy == orbitLoad * days * 24 [h] and o2Capacity == o2PerTank * tankSets and o2Load == energy * o2PerKwh + o2CrewPerDay * days and o2Margin == o2Capacity - o2Load and h2Capacity == h2PerTank * tankSets and h2Load == energy * h2PerKwh and h2Margin == h2Capacity - h2Load
    }
    constraint def HeatRejection {
        doc /* CON-07 軌道上の排熱 */
        in orbitLoad : PowerValue;
        in heatPerKw : ScalarQuantityValue;
        in radiatorMax : PowerValue;
        in fesTopping : PowerValue;
        out heatLoad : PowerValue;
        out heatMarginRadiator : PowerValue;
        out heatMarginWithFes : PowerValue;
        heatLoad == orbitLoad * heatPerKw and heatMarginRadiator == radiatorMax - heatLoad and heatMarginWithFes == radiatorMax + fesTopping - heatLoad
    }
    part def StandardMission {
        doc /* 標準ミッション（7人・10日の単独飛行、SSD-BUD-ORB-001 §2）の値と制約。 */
        attribute crew : Real = 7 { doc /* PAR-01 乗員数（人） */ }
        attribute days : Real = 10 { doc /* PAR-02 軌道滞在日数（日） */ }
        attribute reserveDays : Real = 2 { doc /* PAR-03 LiOH の予備日数（PLS を見送るため）（日） */ }
        attribute liohCanisters : Real = 42 { doc /* PAR-04 LiOH キャニスタの必要搭載数（乗員 ×（日数＋予備2日）× 24 ÷ 定格）（個） */ }
        attribute liohRating : DurationValue = 48 [h] { doc /* PAR-05 LiOH キャニスタ1個の定格（人・時） */ }
        attribute waterTanks : Real = 4 { doc /* PAR-06 給水タンクの数（基） */ }
        attribute waterPerTank : MassValue = 165 [lb] { doc /* PAR-07 給水タンク1基の容量（lb） */ }
        attribute waterPerPersonDay : MassValue = 6 [lb] { doc /* PAR-08 1人1日の水の代謝必要量（lb/人・日） */ }
        attribute n2Tanks : Real = 6 { doc /* PAR-09 窒素タンクの数（基） */ }
        attribute n2Full : MassValue = 143 [lb] { doc /* PAR-10 窒素タンクの満載重量（lb） */ }
        attribute n2Dry : MassValue = 83 [lb] { doc /* PAR-11 窒素タンクの乾燥重量（lb） */ }
        attribute n2PerDay : MassValue = 6 [lb] { doc /* PAR-12 窒素の使用量（7人）（lb/日） */ }
        attribute nFc : Real = 3 { doc /* PAR-13 燃料電池の数（基） */ }
        attribute fcNominal : PowerValue = 10 [kW] { doc /* PAR-14 燃料電池1基の最大連続出力（通常時）（kW） */ }
        attribute orbitLoad : PowerValue = 14 [kW] { doc /* PAR-15 軌道上の平均消費電力（kW） */ }
        attribute reentryLoad : PowerValue = 19 [kW] { doc /* PAR-16 再突入時の電力（検討の仮定）（kW） */ }
        attribute fcFailTotal : PowerValue = 18 [kW] { doc /* PAR-17 燃料電池1基故障時の総電力の上限（kW） */ }
        attribute o2PerKwh : ScalarQuantityValue = 0.7 [lb/(kW*h)] { doc /* PAR-18 1 kWh あたりの酸素消費（lb/kWh） */ }
        attribute h2PerKwh : ScalarQuantityValue = 0.09 [lb/(kW*h)] { doc /* PAR-19 1 kWh あたりの水素消費（lb/kWh） */ }
        attribute o2PerTank : MassValue = 781 [lb] { doc /* PAR-20 酸素タンク1基の貯蔵量（lb） */ }
        attribute h2PerTank : MassValue = 92 [lb] { doc /* PAR-21 水素タンク1基の貯蔵量（lb） */ }
        attribute tankSets : Real = 5 { doc /* PAR-22 反応剤タンクの組数（組） */ }
        attribute o2CrewPerDay : MassValue = 14 [lb] { doc /* PAR-23 乗員の酸素使用量（7人・漏洩込み）（lb/日） */ }
        attribute heatPerKw : ScalarQuantityValue = 4420 ['Btu_IT/h'/kW] { doc /* PAR-24 1 kW あたりの排熱（Btu/hr） */ }
        attribute radiatorMax : PowerValue = 61100 ['Btu_IT/h'] { doc /* PAR-25 放熱器の最大排熱能力（Btu/hr） */ }
        attribute fesTopping : PowerValue = 39000 ['Btu_IT/h'] { doc /* PAR-26 FES トッピングの最大排熱能力（Btu/hr） */ }
        attribute liohCapacity : DurationValue { doc /* CON-01 の出力（人・時）。計算値 2,016 */ }
        attribute liohLoad : DurationValue { doc /* CON-01 の出力（人・時）。計算値 1,680 */ }
        attribute liohMargin : DurationValue { doc /* CON-01 の出力（人・時）。計算値 336 */ }
        attribute liohDays : Real { doc /* CON-01 の出力（日）。計算値 12.00 */ }
        attribute liohLoadReserve : DurationValue { doc /* CON-02 の出力（人・時）。計算値 2,016 */ }
        attribute liohMarginReserve : DurationValue { doc /* CON-02 の出力（人・時）。計算値 0 */ }
        attribute waterCapacity : MassValue { doc /* CON-03 の出力（lb）。計算値 660 */ }
        attribute waterLoad : MassValue { doc /* CON-03 の出力（lb）。計算値 420 */ }
        attribute waterMargin : MassValue { doc /* CON-03 の出力（lb）。計算値 240 */ }
        attribute n2Capacity : MassValue { doc /* CON-04 の出力（lb）。計算値 360 */ }
        attribute n2Load : MassValue { doc /* CON-04 の出力（lb）。計算値 60 */ }
        attribute n2Margin : MassValue { doc /* CON-04 の出力（lb）。計算値 300 */ }
        attribute powerCapacity : PowerValue { doc /* CON-05 の出力（kW）。計算値 30 */ }
        attribute powerMargin : PowerValue { doc /* CON-05 の出力（kW）。計算値 16 */ }
        attribute powerMarginEntry : PowerValue { doc /* CON-05 の出力（kW）。計算値 11 */ }
        attribute powerMarginFail : PowerValue { doc /* CON-05 の出力（kW）。計算値 4 */ }
        attribute energy : EnergyValue { doc /* CON-06 の出力（kWh）。計算値 3,360 */ }
        attribute o2Capacity : MassValue { doc /* CON-06 の出力（lb）。計算値 3,905 */ }
        attribute o2Load : MassValue { doc /* CON-06 の出力（lb）。計算値 2,492 */ }
        attribute o2Margin : MassValue { doc /* CON-06 の出力（lb）。計算値 1,413 */ }
        attribute h2Capacity : MassValue { doc /* CON-06 の出力（lb）。計算値 460 */ }
        attribute h2Load : MassValue { doc /* CON-06 の出力（lb）。計算値 302.4 */ }
        attribute h2Margin : MassValue { doc /* CON-06 の出力（lb）。計算値 157.6 */ }
        attribute heatLoad : PowerValue { doc /* CON-07 の出力（Btu/hr）。計算値 61,880 */ }
        attribute heatMarginRadiator : PowerValue { doc /* CON-07 の出力（Btu/hr）。計算値 −780 */ }
        attribute heatMarginWithFes : PowerValue { doc /* CON-07 の出力（Btu/hr）。計算値 38,220 */ }
        assert constraint liohBudget : LiohBudget;
        bind liohBudget.liohCanisters = liohCanisters;
        bind liohBudget.liohRating = liohRating;
        bind liohBudget.crew = crew;
        bind liohBudget.days = days;
        bind liohBudget.liohCapacity = liohCapacity;
        bind liohBudget.liohLoad = liohLoad;
        bind liohBudget.liohMargin = liohMargin;
        bind liohBudget.liohDays = liohDays;
        assert constraint liohReserve : LiohReserve;
        bind liohReserve.crew = crew;
        bind liohReserve.days = days;
        bind liohReserve.reserveDays = reserveDays;
        bind liohReserve.liohCapacity = liohCapacity;
        bind liohReserve.liohLoadReserve = liohLoadReserve;
        bind liohReserve.liohMarginReserve = liohMarginReserve;
        assert constraint waterBudget : WaterBudget;
        bind waterBudget.waterTanks = waterTanks;
        bind waterBudget.waterPerTank = waterPerTank;
        bind waterBudget.waterPerPersonDay = waterPerPersonDay;
        bind waterBudget.crew = crew;
        bind waterBudget.days = days;
        bind waterBudget.waterCapacity = waterCapacity;
        bind waterBudget.waterLoad = waterLoad;
        bind waterBudget.waterMargin = waterMargin;
        assert constraint nitrogenBudget : NitrogenBudget;
        bind nitrogenBudget.n2Full = n2Full;
        bind nitrogenBudget.n2Dry = n2Dry;
        bind nitrogenBudget.n2Tanks = n2Tanks;
        bind nitrogenBudget.n2PerDay = n2PerDay;
        bind nitrogenBudget.days = days;
        bind nitrogenBudget.n2Capacity = n2Capacity;
        bind nitrogenBudget.n2Load = n2Load;
        bind nitrogenBudget.n2Margin = n2Margin;
        assert constraint powerBudget : PowerBudget;
        bind powerBudget.nFc = nFc;
        bind powerBudget.fcNominal = fcNominal;
        bind powerBudget.orbitLoad = orbitLoad;
        bind powerBudget.reentryLoad = reentryLoad;
        bind powerBudget.fcFailTotal = fcFailTotal;
        bind powerBudget.powerCapacity = powerCapacity;
        bind powerBudget.powerMargin = powerMargin;
        bind powerBudget.powerMarginEntry = powerMarginEntry;
        bind powerBudget.powerMarginFail = powerMarginFail;
        assert constraint reactantBudget : ReactantBudget;
        bind reactantBudget.orbitLoad = orbitLoad;
        bind reactantBudget.days = days;
        bind reactantBudget.o2PerTank = o2PerTank;
        bind reactantBudget.tankSets = tankSets;
        bind reactantBudget.o2PerKwh = o2PerKwh;
        bind reactantBudget.o2CrewPerDay = o2CrewPerDay;
        bind reactantBudget.h2PerTank = h2PerTank;
        bind reactantBudget.h2PerKwh = h2PerKwh;
        bind reactantBudget.energy = energy;
        bind reactantBudget.o2Capacity = o2Capacity;
        bind reactantBudget.o2Load = o2Load;
        bind reactantBudget.o2Margin = o2Margin;
        bind reactantBudget.h2Capacity = h2Capacity;
        bind reactantBudget.h2Load = h2Load;
        bind reactantBudget.h2Margin = h2Margin;
        assert constraint heatRejection : HeatRejection;
        bind heatRejection.orbitLoad = orbitLoad;
        bind heatRejection.heatPerKw = heatPerKw;
        bind heatRejection.radiatorMax = radiatorMax;
        bind heatRejection.fesTopping = fesTopping;
        bind heatRejection.heatLoad = heatLoad;
        bind heatRejection.heatMarginRadiator = heatMarginRadiator;
        bind heatRejection.heatMarginWithFes = heatMarginWithFes;
    }
    requirement def <'REQ-ECLSS-06'> REQ_ECLSS_06 {
        doc /* REQ-ECLSS-06 に関係する収支（CON-01・CON-02）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.liohMargin >= 0 [h] and mission.liohMarginReserve >= 0 [h] }
    }
    requirement def <'REQ-SYS-05'> REQ_SYS_05 {
        doc /* REQ-SYS-05 に関係する収支（CON-01）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.liohMargin >= 0 [h] }
    }
    requirement def <'REQ-SYS-06'> REQ_SYS_06 {
        doc /* REQ-SYS-06 に関係する収支（CON-01）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.liohMargin >= 0 [h] }
    }
    requirement def <'REQ-SYS-13'> REQ_SYS_13 {
        doc /* REQ-SYS-13 に関係する収支（CON-02）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.liohMarginReserve >= 0 [h] }
    }
    requirement def <'REQ-ECLSS-10'> REQ_ECLSS_10 {
        doc /* REQ-ECLSS-10 に関係する収支（CON-03）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.waterMargin >= 0 [lb] }
    }
    requirement def <'REQ-ECLSS-01'> REQ_ECLSS_01 {
        doc /* REQ-ECLSS-01 に関係する収支（CON-04）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.n2Margin >= 0 [lb] }
    }
    requirement def <'REQ-EPS-19'> REQ_EPS_19 {
        doc /* REQ-EPS-19 に関係する収支（CON-05）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.powerMargin >= 0 [kW] and mission.powerMarginEntry >= 0 [kW] and mission.powerMarginFail >= 0 [kW] }
    }
    requirement def <'REQ-EPS-18'> REQ_EPS_18 {
        doc /* REQ-EPS-18 に関係する収支（CON-05）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.powerMargin >= 0 [kW] and mission.powerMarginEntry >= 0 [kW] and mission.powerMarginFail >= 0 [kW] }
    }
    requirement def <'REQ-EPS-12'> REQ_EPS_12 {
        doc /* REQ-EPS-12 に関係する収支（CON-06）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.o2Margin >= 0 [lb] and mission.h2Margin >= 0 [lb] }
    }
    requirement def <'REQ-EPS-11'> REQ_EPS_11 {
        doc /* REQ-EPS-11 に関係する収支（CON-06）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.o2Margin >= 0 [lb] and mission.h2Margin >= 0 [lb] }
    }
    requirement def <'REQ-ECLSS-08'> REQ_ECLSS_08 {
        doc /* REQ-ECLSS-08 に関係する収支（CON-07）。マージンが0以上であることを求める。 */
        subject mission : StandardMission;
        require constraint { mission.heatMarginRadiator >= 0 ['Btu_IT/h'] and mission.heatMarginWithFes >= 0 ['Btu_IT/h'] }
    }
}
