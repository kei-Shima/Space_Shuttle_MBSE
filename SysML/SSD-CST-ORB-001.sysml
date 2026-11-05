// SysML v2 テキスト：経済性定義書（費用の記録・物価の指数・換算・パラメトリックの式）
// SSD-CST-ORB-001 経済性定義書（費用の記録・物価の指数・換算・パラメトリックの式） の表から生成（lib/build_docs_db.py・rev_db/cstdata.py）。根拠の頁は SSD-CST-ORB-001 にある。
package SSD_CST_ORB_001 {
    doc /* SSD-CST-ORB-001 経済性定義書（費用の記録・物価の指数・換算・パラメトリックの式）。費用の記録を part def CostRecord、物価の指数の年を IndexValue、期待の金額を ExpectedAmount の使用として持ち、1飛行あたりの費用の式を constraint def PerFlightCost<nn> として持つ。換算の値は1つの年のドルに決まる記録だけに持たせる。要求への関係（導出・充足・検証）は張らず、トレースの外に置く。判定は付けない。 */
    private import ScalarValues::*;
    part def CostRecord {
        doc /* 資料の本文の金額の記録。値は百万ドル（本文の値のまま）。換算の値は、1つの年のドルに決まるものだけ */
        attribute source : String;
        attribute reportYear : ScalarValues::Integer;
        attribute amountMUSD : ScalarValues::Real;
        attribute dollarYearText : String;
        attribute costKind : String;
        attribute costPer : String;
        attribute recordClass : String;
        attribute convYear : ScalarValues::Integer [0..1];
        attribute convCertainty : String;
        attribute cpiMUSD2010 : ScalarValues::Real [0..1];
        attribute nnsiMUSD2010 : ScalarValues::Real [0..1];
    }
    part def IndexValue {
        doc /* 物価の指数の年の値。CPI-U は 1982〜84＝100、NNSI は 1959＝1.0 */
        attribute year : ScalarValues::Integer;
        attribute cpiU : ScalarValues::Real;
        attribute nnsi : ScalarValues::Real;
    }
    part def ExpectedAmount {
        doc /* SSD-VAL-ORB-001 の期待の金額。年は VEX の年を仮定（換算のためだけ。記録との対にしない） */
        attribute vex : String;
        attribute amountUnit : String;
        attribute low : ScalarValues::Real;
        attribute high : ScalarValues::Real;
        attribute assumedYear : ScalarValues::Integer [0..1];
        attribute cpiLow2010 : ScalarValues::Real [0..1];
        attribute cpiHigh2010 : ScalarValues::Real [0..1];
    }
    part <'CST-001'> cst_001 : CostRecord { doc /* GAO/NSIAD-93-115 Space Transportation: The Content */ :>> source = "GAO/NSIAD-93-115 Space Transportation: The Content and Uses of Shuttle Cost Estimates (1993-01-28)"; :>> reportYear = 1993; :>> amountMUSD = 413.5; :>> dollarYearText = "current dollars (fiscal year 1993)"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "見積り"; :>> convCertainty = "本文"; :>> convYear = 1993; :>> cpiMUSD2010 = 623.9872; :>> nnsiMUSD2010 = 660.5779; }
    part <'CST-002'> cst_002 : CostRecord { doc /* GAO/NSIAD-93-115 Space Transportation: The Content */ :>> source = "GAO/NSIAD-93-115 Space Transportation: The Content and Uses of Shuttle Cost Estimates (1993-01-28)"; :>> reportYear = 1993; :>> amountMUSD = 44.4; :>> dollarYearText = "current dollars (fiscal year 1993)"; :>> costKind = "marginal"; :>> costPer = "per_flight"; :>> recordClass = "見積り"; :>> convCertainty = "本文"; :>> convYear = 1993; :>> cpiMUSD2010 = 67.0013; :>> nnsiMUSD2010 = 70.9303; }
    part <'CST-003'> cst_003 : CostRecord { doc /* GAO/NSIAD-93-115 Space Transportation: The Content */ :>> source = "GAO/NSIAD-93-115 Space Transportation: The Content and Uses of Shuttle Cost Estimates (1993-01-28)"; :>> reportYear = 1993; :>> amountMUSD = 30200; :>> dollarYearText = "current dollars (1971-92)"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "—"; }
    part <'CST-004'> cst_004 : CostRecord { doc /* GAO/MASAD-82-15 NASA Must Reconsider Operations Pr */ :>> source = "GAO/MASAD-82-15 NASA Must Reconsider Operations Pricing Policy To Compensate For Cost Growth On The "; :>> reportYear = 1982; :>> amountMUSD = 27.9; :>> dollarYearText = "1975 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1975; :>> cpiMUSD2010 = 113.0811; :>> nnsiMUSD2010 = 135.9131; }
    part <'CST-005'> cst_005 : CostRecord { doc /* GAO/MASAD-82-15 NASA Must Reconsider Operations Pr */ :>> source = "GAO/MASAD-82-15 NASA Must Reconsider Operations Pricing Policy To Compensate For Cost Growth On The "; :>> reportYear = 1982; :>> amountMUSD = 16.1; :>> dollarYearText = "1975 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1975; :>> cpiMUSD2010 = 65.2547; :>> nnsiMUSD2010 = 78.4301; }
    part <'CST-006'> cst_006 : CostRecord { doc /* GAO/MASAD-82-15 NASA Must Reconsider Operations Pr */ :>> source = "GAO/MASAD-82-15 NASA Must Reconsider Operations Pricing Policy To Compensate For Cost Growth On The "; :>> reportYear = 1982; :>> amountMUSD = 9200; :>> dollarYearText = "1975 dollars"; :>> costKind = "average_operations"; :>> costPer = "total"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1975; :>> cpiMUSD2010 = 37288.3866; :>> nnsiMUSD2010 = 44817.2098; }
    part <'CST-007'> cst_007 : CostRecord { doc /* GAO report on STS operational issues (probably MAS */ :>> source = "GAO report on STS operational issues (probably MASAD-83-6 Issues Concerning the Future Operation of "; :>> reportYear = 1982; :>> amountMUSD = 266; :>> dollarYearText = "real-year dollars"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "見積り"; :>> convCertainty = "—"; }
    part <'CST-008'> cst_008 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 42; :>> dollarYearText = "1982 dollars"; :>> costKind = "marginal"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 94.9052; :>> nnsiMUSD2010 = 109.2541; }
    part <'CST-009'> cst_009 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 76; :>> dollarYearText = "1982 dollars"; :>> costKind = "marginal"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 171.7332; :>> nnsiMUSD2010 = 197.6979; }
    part <'CST-010'> cst_010 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 84; :>> dollarYearText = "1982 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 189.8104; :>> nnsiMUSD2010 = 218.5082; }
    part <'CST-011'> cst_011 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 106; :>> dollarYearText = "1982 dollars"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 239.5227; :>> nnsiMUSD2010 = 275.7365; }
    part <'CST-012'> cst_012 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 150; :>> dollarYearText = "1982 dollars"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 338.9472; :>> nnsiMUSD2010 = 390.1932; }
    part <'CST-013'> cst_013 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 186; :>> dollarYearText = "1982 dollars"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 420.2945; :>> nnsiMUSD2010 = 483.8396; }
    part <'CST-014'> cst_014 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 258; :>> dollarYearText = "1982 dollars"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 582.9891; :>> nnsiMUSD2010 = 671.1323; }
    part <'CST-015'> cst_015 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 338.5; :>> dollarYearText = "1982 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "不明"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 764.8907; :>> nnsiMUSD2010 = 880.5360; }
    part <'CST-016'> cst_016 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 268.9; :>> dollarYearText = "1982 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "不明"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 607.6193; :>> nnsiMUSD2010 = 699.4863; }
    part <'CST-017'> cst_017 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 83.6; :>> dollarYearText = "1982 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 188.9065; :>> nnsiMUSD2010 = 217.4677; }
    part <'CST-018'> cst_018 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 25700; :>> dollarYearText = "1982 dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "不明"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 58072.9451; :>> nnsiMUSD2010 = 66853.1003; }
    part <'CST-019'> cst_019 : CostRecord { doc /* CBO Pricing Options for the Space Shuttle (March 1 */ :>> source = "CBO Pricing Options for the Space Shuttle (March 1985 Special Study)"; :>> reportYear = 1985; :>> amountMUSD = 17800; :>> dollarYearText = "1982 dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 1982; :>> cpiMUSD2010 = 40221.7285; :>> nnsiMUSD2010 = 46302.9255; }
    part <'CST-020'> cst_020 : CostRecord { doc /* CBO Reinventing NASA (March 1994) */ :>> source = "CBO Reinventing NASA (March 1994)"; :>> reportYear = 1994; :>> amountMUSD = 50; :>> dollarYearText = ""; :>> costKind = "marginal"; :>> costPer = "per_flight"; :>> recordClass = "仮定"; :>> convCertainty = "—"; }
    part <'CST-021'> cst_021 : CostRecord { doc /* GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce C */ :>> source = "GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce Costs Further to Operate Within Future Projected Fu"; :>> reportYear = 1995; :>> amountMUSD = 336; :>> dollarYearText = "1995 dollars"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "見積り"; :>> convCertainty = "本文"; :>> convYear = 1995; :>> cpiMUSD2010 = 480.7534; :>> nnsiMUSD2010 = 507.4366; }
    part <'CST-022'> cst_022 : CostRecord { doc /* GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce C */ :>> source = "GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce Costs Further to Operate Within Future Projected Fu"; :>> reportYear = 1995; :>> amountMUSD = 2832.6; :>> dollarYearText = "fiscal year 1992"; :>> costKind = "unspecified"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "仮定"; :>> convYear = 1992; :>> cpiMUSD2010 = 4402.4620; :>> nnsiMUSD2010 = 4715.2151; }
    part <'CST-023'> cst_023 : CostRecord { doc /* GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce C */ :>> source = "GAO/NSIAD-95-118 Space Shuttle: NASA Must Reduce Costs Further to Operate Within Future Projected Fu"; :>> reportYear = 1995; :>> amountMUSD = 2591.8; :>> dollarYearText = "fiscal year 1994"; :>> costKind = "unspecified"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "仮定"; :>> convYear = 1994; :>> cpiMUSD2010 = 3813.4787; :>> nnsiMUSD2010 = 4015.9783; }
    part <'CST-024'> cst_024 : CostRecord { doc /* GAO/NSIAD-99-177 Space Station: Cost to Operate Af */ :>> source = "GAO/NSIAD-99-177 Space Station: Cost to Operate After Assembly Is Uncertain (August 1999)"; :>> reportYear = 1999; :>> amountMUSD = 435; :>> dollarYearText = "fiscal year 2004 estimate"; :>> costKind = "average_operations"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "仮定"; :>> convYear = 2004; :>> cpiMUSD2010 = 502.1406; :>> nnsiMUSD2010 = 513.9016; }
    part <'CST-025'> cst_025 : CostRecord { doc /* GAO/NSIAD-99-177 Space Station: Cost to Operate Af */ :>> source = "GAO/NSIAD-99-177 Space Station: Cost to Operate After Assembly Is Uncertain (August 1999)"; :>> reportYear = 1999; :>> amountMUSD = 84; :>> dollarYearText = "fiscal year 2004 estimate"; :>> costKind = "marginal"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "仮定"; :>> convYear = 2004; :>> cpiMUSD2010 = 96.9651; :>> nnsiMUSD2010 = 99.2362; }
    part <'CST-026'> cst_026 : CostRecord { doc /* R. A. Pielke Jr. and R. Byerly Jr., Shuttle progra */ :>> source = "R. A. Pielke Jr. and R. Byerly Jr., Shuttle programme lifetime cost, Nature 472:38 (2011)（本文の抜粋を Pie"; :>> reportYear = 2011; :>> amountMUSD = 192000; :>> dollarYearText = "2010 dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2010; :>> cpiMUSD2010 = 192000.0000; :>> nnsiMUSD2010 = 192000.0000; }
    part <'CST-027'> cst_027 : CostRecord { doc /* R. A. Pielke Jr. and R. Byerly Jr., Shuttle progra */ :>> source = "R. A. Pielke Jr. and R. Byerly Jr., Shuttle programme lifetime cost, Nature 472:38 (2011)（本文の抜粋を Pie"; :>> reportYear = 2011; :>> amountMUSD = 1200; :>> dollarYearText = "2010 dollars（本文は節の初めに 2010 dollars と書く）"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2010; :>> cpiMUSD2010 = 1200.0000; :>> nnsiMUSD2010 = 1200.0000; }
    part <'CST-028'> cst_028 : CostRecord { doc /* R. A. Pielke Jr. and R. Byerly Jr., Shuttle progra */ :>> source = "R. A. Pielke Jr. and R. Byerly Jr., Shuttle programme lifetime cost, Nature 472:38 (2011)（本文の抜粋を Pie"; :>> reportYear = 2011; :>> amountMUSD = 1500; :>> dollarYearText = "2010 dollars（本文は節の初めに 2010 dollars と書く）"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2010; :>> cpiMUSD2010 = 1500.0000; :>> nnsiMUSD2010 = 1500.0000; }
    part <'CST-029'> cst_029 : CostRecord { doc /* R. A. Pielke Jr. and R. Byerly Jr., Shuttle progra */ :>> source = "R. A. Pielke Jr. and R. Byerly Jr., Shuttle programme lifetime cost, Nature 472:38 (2011)（本文の抜粋を Pie"; :>> reportYear = 2011; :>> amountMUSD = 1000; :>> dollarYearText = "2010 dollars（本文は節の初めに 2010 dollars と書く。この文には書かない）"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2010; :>> cpiMUSD2010 = 1000.0000; :>> nnsiMUSD2010 = 1000.0000; }
    part <'CST-030'> cst_030 : CostRecord { doc /* R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブ */ :>> source = "R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブログ、2005-02-10）"; :>> reportYear = 2005; :>> amountMUSD = 145000; :>> dollarYearText = "2003 $"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2003; :>> cpiMUSD2010 = 171837.6087; :>> nnsiMUSD2010 = 177195.3308; }
    part <'CST-031'> cst_031 : CostRecord { doc /* R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブ */ :>> source = "R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブログ、2005-02-10）"; :>> reportYear = 2005; :>> amountMUSD = 112000; :>> dollarYearText = "2003 $"; :>> costKind = "unspecified"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2003; :>> cpiMUSD2010 = 132729.7391; :>> nnsiMUSD2010 = 136868.1176; }
    part <'CST-032'> cst_032 : CostRecord { doc /* R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブ */ :>> source = "R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブログ、2005-02-10）"; :>> reportYear = 2005; :>> amountMUSD = 1300; :>> dollarYearText = "2003 $"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2003; :>> cpiMUSD2010 = 1540.6130; :>> nnsiMUSD2010 = 1588.6478; }
    part <'CST-033'> cst_033 : CostRecord { doc /* R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブ */ :>> source = "R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブログ、2005-02-10）"; :>> reportYear = 2005; :>> amountMUSD = 750; :>> dollarYearText = "2003 $"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2003; :>> cpiMUSD2010 = 888.8152; :>> nnsiMUSD2010 = 916.5276; }
    part <'CST-034'> cst_034 : CostRecord { doc /* R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブ */ :>> source = "R. A. Pielke Jr., Space Shuttle Costs（Prometheus ブログ、2005-02-10）"; :>> reportYear = 2005; :>> amountMUSD = 989.7; :>> dollarYearText = "Constant '03（2003 $）"; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 2003; :>> cpiMUSD2010 = 1172.8806; :>> nnsiMUSD2010 = 1209.4498; }
    part <'CST-035'> cst_035 : CostRecord { doc /* Columbia Accident Investigation Board Report Vol.  */ :>> source = "Columbia Accident Investigation Board Report Vol. I (2003)"; :>> reportYear = 2003; :>> amountMUSD = 7.7; :>> dollarYearText = ""; :>> costKind = "unspecified"; :>> costPer = "per_flight"; :>> recordClass = "予測"; :>> convCertainty = "—"; }
    part <'CST-036'> cst_036 : CostRecord { doc /* Columbia Accident Investigation Board Report Vol.  */ :>> source = "Columbia Accident Investigation Board Report Vol. I (2003)"; :>> reportYear = 2003; :>> amountMUSD = 9900; :>> dollarYearText = "real year dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "—"; }
    part <'CST-037'> cst_037 : CostRecord { doc /* Columbia Accident Investigation Board Report Vol.  */ :>> source = "Columbia Accident Investigation Board Report Vol. I (2003)"; :>> reportYear = 2003; :>> amountMUSD = 5900; :>> dollarYearText = "fixed year 1971 dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 1971; :>> cpiMUSD2010 = 31766.1827; :>> nnsiMUSD2010 = 38141.1269; }
    part <'CST-038'> cst_038 : CostRecord { doc /* Human Spaceflight Value Study: Was the Shuttle a G */ :>> source = "Human Spaceflight Value Study: Was the Shuttle a Good Deal? (Prince, Carson, NASA MSFC, 2012)"; :>> reportYear = 2012; :>> amountMUSD = 212215; :>> dollarYearText = "FY12$"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "—"; }
    part <'CST-039'> cst_039 : CostRecord { doc /* Human Spaceflight Value Study: Was the Shuttle a G */ :>> source = "Human Spaceflight Value Study: Was the Shuttle a Good Deal? (Prince, Carson, NASA MSFC, 2012)"; :>> reportYear = 2012; :>> amountMUSD = 111907; :>> dollarYearText = "RY$（実際の年のドル）"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "—"; }
    part <'CST-040'> cst_040 : CostRecord { doc /* Human Spaceflight Value Study: Was the Shuttle a G */ :>> source = "Human Spaceflight Value Study: Was the Shuttle a Good Deal? (Prince, Carson, NASA MSFC, 2012)"; :>> reportYear = 2012; :>> amountMUSD = 1571; :>> dollarYearText = "FY12$"; :>> costKind = "total_with_development"; :>> costPer = "per_flight"; :>> recordClass = "実績"; :>> convCertainty = "—"; }
    part <'CST-041'> cst_041 : CostRecord { doc /* R. A. Pielke Jr., Data on and methodology for calc */ :>> source = "R. A. Pielke Jr., Data on and methodology for calculating Space Shuttle programme costs, Space Polic"; :>> reportYear = 1994; :>> amountMUSD = 83700; :>> dollarYearText = "1992 dollars"; :>> costKind = "total_with_development"; :>> costPer = "total"; :>> recordClass = "実績"; :>> convCertainty = "本文"; :>> convYear = 1992; :>> cpiMUSD2010 = 130087.5780; :>> nnsiMUSD2010 = 139329.0628; }
    part idx_1963 : IndexValue { :>> year = 1963; :>> cpiU = 30.6; :>> nnsi = 1.1586111263999999; }
    part idx_1964 : IndexValue { :>> year = 1964; :>> cpiU = 31.0; :>> nnsi = 1.2107486270879997; }
    part idx_1965 : IndexValue { :>> year = 1965; :>> cpiU = 31.5; :>> nnsi = 1.2519140804089917; }
    part idx_1966 : IndexValue { :>> year = 1966; :>> cpiU = 32.4; :>> nnsi = 1.3270289252335312; }
    part idx_1967 : IndexValue { :>> year = 1967; :>> cpiU = 33.4; :>> nnsi = 1.3920533425699742; }
    part idx_1968 : IndexValue { :>> year = 1968; :>> cpiU = 34.8; :>> nnsi = 1.4672242230687529; }
    part idx_1969 : IndexValue { :>> year = 1969; :>> cpiU = 36.7; :>> nnsi = 1.5508560037836716; }
    part idx_1970 : IndexValue { :>> year = 1970; :>> cpiU = 38.8; :>> nnsi = 1.6578650680447449; }
    part idx_1971 : IndexValue { :>> year = 1971; :>> cpiU = 40.5; :>> nnsi = 1.7623105673315638; }
    part idx_1972 : IndexValue { :>> year = 1972; :>> cpiU = 41.8; :>> nnsi = 1.8627622696694628; }
    part idx_1973 : IndexValue { :>> year = 1973; :>> cpiU = 44.4; :>> nnsi = 1.9689397190406221; }
    part idx_1974 : IndexValue { :>> year = 1974; :>> cpiU = 49.3; :>> nnsi = 2.110703378811547; }
    part idx_1975 : IndexValue { :>> year = 1975; :>> cpiU = 53.8; :>> nnsi = 2.338659343723194; }
    part idx_1976 : IndexValue { :>> year = 1976; :>> cpiU = 56.9; :>> nnsi = 2.5491386846582818; }
    part idx_1977 : IndexValue { :>> year = 1977; :>> cpiU = 60.6; :>> nnsi = 2.8238975977841743; }
    part idx_1978 : IndexValue { :>> year = 1978; :>> cpiU = 65.2; :>> nnsi = 3.04416161041134; }
    part idx_1979 : IndexValue { :>> year = 1979; :>> cpiU = 72.6; :>> nnsi = 3.3333569634004174; }
    part idx_1980 : IndexValue { :>> year = 1980; :>> cpiU = 82.4; :>> nnsi = 3.690026158484262; }
    part idx_1981 : IndexValue { :>> year = 1981; :>> cpiU = 90.9; :>> nnsi = 4.062718800491172; }
    part idx_1982 : IndexValue { :>> year = 1982; :>> cpiU = 96.5; :>> nnsi = 4.379610866929484; }
    part idx_1983 : IndexValue { :>> year = 1983; :>> cpiU = 99.6; :>> nnsi = 4.659905962412972; }
    part idx_1984 : IndexValue { :>> year = 1984; :>> cpiU = 103.9; :>> nnsi = 4.911540884383273; }
    part idx_1985 : IndexValue { :>> year = 1985; :>> cpiU = 107.6; :>> nnsi = 5.078533274452305; }
    part idx_1986 : IndexValue { :>> year = 1986; :>> cpiU = 109.6; :>> nnsi = 5.230889272685874; }
    part idx_1987 : IndexValue { :>> year = 1987; :>> cpiU = 113.6; :>> nnsi = 5.445355732865995; }
    part idx_1988 : IndexValue { :>> year = 1988; :>> cpiU = 118.3; :>> nnsi = 5.7339595867078925; }
    part idx_1989 : IndexValue { :>> year = 1989; :>> cpiU = 124.0; :>> nnsi = 6.009189646869872; }
    part idx_1990 : IndexValue { :>> year = 1990; :>> cpiU = 130.7; :>> nnsi = 6.279603180979016; }
    part idx_1991 : IndexValue { :>> year = 1991; :>> cpiU = 136.2; :>> nnsi = 6.50566889549426; }
    part idx_1992 : IndexValue { :>> year = 1992; :>> cpiU = 140.3; :>> nnsi = 6.8439636780599615; }
    part idx_1993 : IndexValue { :>> year = 1993; :>> cpiU = 144.5; :>> nnsi = 7.13141015253848; }
    part idx_1994 : IndexValue { :>> year = 1994; :>> cpiU = 148.2; :>> nnsi = 7.352483867267172; }
    part idx_1995 : IndexValue { :>> year = 1995; :>> cpiU = 152.4; :>> nnsi = 7.5436484478161185; }
    part idx_1996 : IndexValue { :>> year = 1996; :>> cpiU = 156.9; :>> nnsi = 7.732239659011521; }
    part idx_1997 : IndexValue { :>> year = 1997; :>> cpiU = 160.5; :>> nnsi = 7.840491014237682; }
    part idx_1998 : IndexValue { :>> year = 1998; :>> cpiU = 163.0; :>> nnsi = 8.035462291311568; }
    part idx_1999 : IndexValue { :>> year = 1999; :>> cpiU = 166.6; :>> nnsi = 8.232851443218912; }
    part idx_2000 : IndexValue { :>> year = 2000; :>> cpiU = 172.2; :>> nnsi = 8.56460931792454; }
    part idx_2001 : IndexValue { :>> year = 2001; :>> cpiU = 177.1; :>> nnsi = 8.877702187409366; }
    part idx_2002 : IndexValue { :>> year = 2002; :>> cpiU = 179.9; :>> nnsi = 9.124462187539295; }
    part idx_2003 : IndexValue { :>> year = 2003; :>> cpiU = 184.0; :>> nnsi = 9.322656495485832; }
    part idx_2004 : IndexValue { :>> year = 2004; :>> cpiU = 188.9; :>> nnsi = 9.643468110715478; }
    part idx_2005 : IndexValue { :>> year = 2005; :>> cpiU = 195.3; :>> nnsi = 9.940034830817385; }
    part idx_2006 : IndexValue { :>> year = 2006; :>> cpiU = 201.6; :>> nnsi = 10.254236859078349; }
    part idx_2007 : IndexValue { :>> year = 2007; :>> cpiU = 207.342; :>> nnsi = 10.649339897153887; }
    part idx_2008 : IndexValue { :>> year = 2008; :>> cpiU = 215.303; :>> nnsi = 11.028638041677585; }
    part idx_2009 : IndexValue { :>> year = 2009; :>> cpiU = 214.537; :>> nnsi = 11.238734054938531; }
    part idx_2010 : IndexValue { :>> year = 2010; :>> cpiU = 218.056; :>> nnsi = 11.392628974803346; }
    part idx_2011 : IndexValue { :>> year = 2011; :>> cpiU = 224.939; :>> nnsi = 11.576466225776462; }
    part <'XCV-01'> xcv_01 : ExpectedAmount { doc /* VEX-02 */ :>> vex = "VEX-02"; :>> amountUnit = "M$/flight"; :>> low = 1.5; :>> high = 1.5; :>> assumedYear = 1963; :>> cpiLow2010 = 10.6890; :>> cpiHigh2010 = 10.6890; }
    part <'XCV-02'> xcv_02 : ExpectedAmount { doc /* VEX-06 */ :>> vex = "VEX-06"; :>> amountUnit = "$/lb"; :>> low = 20; :>> high = 50; :>> assumedYear = 1969; :>> cpiLow2010 = 118.8316; :>> cpiHigh2010 = 297.0790; }
    part <'XCV-03'> xcv_03 : ExpectedAmount { doc /* VEX-07 */ :>> vex = "VEX-07"; :>> amountUnit = "M$/flight"; :>> low = 1.0; :>> high = 2.5; :>> assumedYear = 1969; :>> cpiLow2010 = 5.9416; :>> cpiHigh2010 = 14.8540; }
    part <'XCV-04'> xcv_04 : ExpectedAmount { doc /* VEX-12 */ :>> vex = "VEX-12"; :>> amountUnit = "M$/flight"; :>> low = 0.35; :>> high = 0.35; :>> assumedYear = 1970; :>> cpiLow2010 = 1.9670; :>> cpiHigh2010 = 1.9670; }
    part <'XCV-05'> xcv_05 : ExpectedAmount { doc /* VEX-12 */ :>> vex = "VEX-12"; :>> amountUnit = "$/lb"; :>> low = 7; :>> high = 7; :>> assumedYear = 1970; :>> cpiLow2010 = 39.3400; :>> cpiHigh2010 = 39.3400; }
    part <'XCV-06'> xcv_06 : ExpectedAmount { doc /* VEX-17 */ :>> vex = "VEX-17"; :>> amountUnit = "M$/flight"; :>> low = 9.0; :>> high = 9.0; :>> assumedYear = 1971; :>> cpiLow2010 = 48.4569; :>> cpiHigh2010 = 48.4569; }
    part <'XCV-07'> xcv_07 : ExpectedAmount { doc /* VEX-17 */ :>> vex = "VEX-17"; :>> amountUnit = "M$/flight"; :>> low = 5.5; :>> high = 5.5; :>> assumedYear = 1971; :>> cpiLow2010 = 29.6125; :>> cpiHigh2010 = 29.6125; }
    part <'XCV-08'> xcv_08 : ExpectedAmount { doc /* VEX-18 */ :>> vex = "VEX-18"; :>> amountUnit = "M$/flight"; :>> low = 10.0; :>> high = 10.0; :>> assumedYear = 1971; :>> cpiLow2010 = 53.8410; :>> cpiHigh2010 = 53.8410; }
    part <'XCV-09'> xcv_09 : ExpectedAmount { doc /* VEX-19 */ :>> vex = "VEX-19"; :>> amountUnit = "M$/flight"; :>> low = 6.6; :>> high = 7.7; :>> assumedYear = 1971; :>> cpiLow2010 = 35.5351; :>> cpiHigh2010 = 41.4576; }
    part <'XCV-10'> xcv_10 : ExpectedAmount { doc /* VEX-20 */ :>> vex = "VEX-20"; :>> amountUnit = "$/lb"; :>> low = 115; :>> high = 223; :>> assumedYear = 1971; :>> cpiLow2010 = 619.1714; :>> cpiHigh2010 = 1200.6540; }
    part <'XCV-11'> xcv_11 : ExpectedAmount { doc /* VEX-22 */ :>> vex = "VEX-22"; :>> amountUnit = "M$/flight"; :>> low = 10.0; :>> high = 10.0; :>> assumedYear = 1972; :>> cpiLow2010 = 52.1665; :>> cpiHigh2010 = 52.1665; }
    part <'XCV-12'> xcv_12 : ExpectedAmount { doc /* VEX-23 */ :>> vex = "VEX-23"; :>> amountUnit = "M$ total"; :>> low = 5500; :>> high = 5500; :>> assumedYear = 1972; :>> cpiLow2010 = 28691.5789; :>> cpiHigh2010 = 28691.5789; }
    part <'XCV-13'> xcv_13 : ExpectedAmount { doc /* VEX-26 */ :>> vex = "VEX-26"; :>> amountUnit = "M$/flight"; :>> low = 4.6; :>> high = 4.6; }
    part <'XCV-14'> xcv_14 : ExpectedAmount { doc /* VEX-26 */ :>> vex = "VEX-26"; :>> amountUnit = "M$ total"; :>> low = 9920; :>> high = 9920; }
    constraint def <'EQN-01'> PerFlightCost01 {
        doc /* GAO NSIAD-93-115（NASA の FY1993 の見積り）。年あたりの固定費 2,953 百万ドル（8 × （413.5 − 44.4）で算出）、限界費用 44.4 百万ドル。ドルの年 1993（本文） */
        in attribute perFlight : ScalarValues::Real; in attribute fixedPerYear : ScalarValues::Real; in attribute flightsPerYear : ScalarValues::Real; in attribute marginal : ScalarValues::Real;
        perFlight == fixedPerYear / flightsPerYear + marginal
    }
    constraint def <'EQN-02'> PerFlightCost02 {
        doc /* CBO 1985（1989 年の基本ケース。full operational cost と短期の限界費用）。年あたりの固定費 1,008 百万ドル（24 × （84 − 42）で算出）、限界費用 42 百万ドル。ドルの年 1982（本文） */
        in attribute perFlight : ScalarValues::Real; in attribute fixedPerYear : ScalarValues::Real; in attribute flightsPerYear : ScalarValues::Real; in attribute marginal : ScalarValues::Real;
        perFlight == fixedPerYear / flightsPerYear + marginal
    }
    constraint def <'EQN-03'> PerFlightCost03 {
        doc /* CBO 1985（1989 年の基本ケース。full cost と短期の限界費用）。年あたりの固定費 2,592 百万ドル（24 × （150 − 42）で算出）、限界費用 42 百万ドル。ドルの年 1982（本文） */
        in attribute perFlight : ScalarValues::Real; in attribute fixedPerYear : ScalarValues::Real; in attribute flightsPerYear : ScalarValues::Real; in attribute marginal : ScalarValues::Real;
        perFlight == fixedPerYear / flightsPerYear + marginal
    }
    constraint def <'EQN-04'> PerFlightCost04 {
        doc /* GAO NSIAD-99-177（NASA の FY2004 の見積り）。年あたりの固定費 2,457 百万ドル（7 × （435 − 84）で算出）、限界費用 84 百万ドル。ドルの年 2004（仮定） */
        in attribute perFlight : ScalarValues::Real; in attribute fixedPerYear : ScalarValues::Real; in attribute flightsPerYear : ScalarValues::Real; in attribute marginal : ScalarValues::Real;
        perFlight == fixedPerYear / flightsPerYear + marginal
    }
}
