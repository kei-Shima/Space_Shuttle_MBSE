// SysML v2 テキスト：確率論的リスク評価（PRA）比較定義書（Shuttle PRA の値と、ハザード解析の起こりやすさの比較）
// SSD-PRA-ORB-001 確率論的リスク評価（PRA）比較定義書（Shuttle PRA の値と、ハザード解析の起こりやすさの比較） の表から生成（lib/build_docs_cq.py・rev_cq/cqdata.py）。根拠の頁は SSD-PRA-ORB-001 にある。
package SSD_PRA_ORB_001 {
    doc /* SSD-PRA-ORB-001 確率論的リスク評価（PRA）比較定義書（Shuttle PRA の値と、ハザード解析の起こりやすさの比較）。PRA の主要シナリオ（上位 10件）を part def PraScenario の使用として持ち、比べるハザード（SSD-HAZ-ORB-001 の occurrence def）へ #ComparedWith の dependency でつなぐ。ハザードの判定は変えず、要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    metadata def ComparedWith { doc /* PRA のシナリオと比べるハザード（SSD-HAZ-ORB-001。本書の対応づけ。ハザードの判定は変えない） */ }
    part def PraScenario {
        doc /* PRA（Iteration 3.1）の主要シナリオ（表3 の上位 10件）。確率は 1 飛行あたりの LOCV の確率 */
        attribute rank : Integer;
        attribute probabilityIter31 : Real;
        attribute oneInNIter31 : Integer;
        attribute sharePercent : Real;
        attribute cumulativePercent : Real;
        attribute probabilityIter21 : Real;
        attribute rankIter21 : Integer;
    }
    part <'PRA-01'> pra_01 : PraScenario { doc /* MMOD がオービタに当たり、軌道上・再突入で LOCV */ :>> rank = 1; :>> probabilityIter31 = 3.6E-03; :>> oneInNIter31 = 277; :>> sharePercent = 30.9; :>> cumulativePercent = 30.9; :>> probabilityIter21 = 3.1E-03; :>> rankIter21 = 2; }
    part <'PRA-02'> pra_02 : PraScenario { doc /* SSME が引き起こす SSME の破局的な故障 */ :>> rank = 2; :>> probabilityIter31 = 1.5E-03; :>> oneInNIter31 = 652; :>> sharePercent = 13.2; :>> cumulativePercent = 44.1; :>> probabilityIter21 = 1.5E-03; :>> rankIter21 = 2; }
    part <'PRA-03'> pra_03 : PraScenario { doc /* 上昇中のデブリが TPS に当たり、軌道上・再突入で LOCV */ :>> rank = 3; :>> probabilityIter31 = 1.2E-03; :>> oneInNIter31 = 840; :>> sharePercent = 10.2; :>> cumulativePercent = 54.3; :>> probabilityIter21 = 4.0E-03; :>> rankIter21 = 1; }
    part <'PRA-04'> pra_04 : PraScenario { doc /* 再突入中の乗員の誤り */ :>> rank = 4; :>> probabilityIter31 = 8.2E-04; :>> oneInNIter31 = 1220; :>> sharePercent = 7.0; :>> cumulativePercent = 61.3; :>> probabilityIter21 = 1.1E-03; :>> rankIter21 = 4; }
    part <'PRA-05'> pra_05 : PraScenario { doc /* RSRM が引き起こす RSRM の破局的な故障 */ :>> rank = 5; :>> probabilityIter31 = 6.5E-04; :>> oneInNIter31 = 1530; :>> sharePercent = 5.6; :>> cumulativePercent = 66.9; :>> probabilityIter21 = 6.5E-04; :>> rankIter21 = 5; }
    part <'PRA-06'> pra_06 : PraScenario { doc /* 軌道上の電力系（EPS）の共通原因故障 */ :>> rank = 6; :>> probabilityIter31 = 1.8E-04; :>> oneInNIter31 = 5510; :>> sharePercent = 1.6; :>> cumulativePercent = 68.5; :>> probabilityIter21 = 1.8E-04; :>> rankIter21 = 12; }
    part <'PRA-07'> pra_07 : PraScenario { doc /* SRB の APU の軸シールの破断 */ :>> rank = 7; :>> probabilityIter31 = 1.7E-04; :>> oneInNIter31 = 5890; :>> sharePercent = 1.5; :>> cumulativePercent = 70.0; :>> probabilityIter21 = 3.2E-04; :>> rankIter21 = 8; }
    part <'PRA-08'> pra_08 : PraScenario { doc /* SRB の分離モータの破片がオービタの窓に当たる */ :>> rank = 8; :>> probabilityIter31 = 1.5E-04; :>> oneInNIter31 = 6480; :>> sharePercent = 1.3; :>> cumulativePercent = 71.3; :>> probabilityIter21 = 1.5E-04; :>> rankIter21 = 14; }
    part <'PRA-09'> pra_09 : PraScenario { doc /* APU のタービンホイールの既存のき裂が進展し、再突入中に APU が破局的に故障 */ :>> rank = 9; :>> probabilityIter31 = 1.5E-04; :>> oneInNIter31 = 6640; :>> sharePercent = 1.3; :>> cumulativePercent = 72.6; }
    part <'PRA-10'> pra_10 : PraScenario { doc /* 再突入中の APU 系の共通原因故障 */ :>> rank = 10; :>> probabilityIter31 = 1.4E-04; :>> oneInNIter31 = 7350; :>> sharePercent = 1.2; :>> cumulativePercent = 73.8; :>> probabilityIter21 = 7.6E-05; :>> rankIter21 = 24; }
    // ---- ハザードとの対応（横に並べて比べる。ハザードの判定は変えない）
    #ComparedWith dependency <'PRA-01>HZ-10'> from pra_01 to SSD_HAZ_ORB_001::HZ10_Hazard;
    #ComparedWith dependency <'PRA-01>HZ-02'> from pra_01 to SSD_HAZ_ORB_001::HZ02_Hazard;
    #ComparedWith dependency <'PRA-02>HZ-07'> from pra_02 to SSD_HAZ_ORB_001::HZ07_Hazard;
    #ComparedWith dependency <'PRA-03>HZ-10'> from pra_03 to SSD_HAZ_ORB_001::HZ10_Hazard;
    #ComparedWith dependency <'PRA-06>HZ-04'> from pra_06 to SSD_HAZ_ORB_001::HZ04_Hazard;
    #ComparedWith dependency <'PRA-07>HZ-13'> from pra_07 to SSD_HAZ_ORB_001::HZ13_Hazard;
    #ComparedWith dependency <'PRA-08>HZ-02'> from pra_08 to SSD_HAZ_ORB_001::HZ02_Hazard;
    #ComparedWith dependency <'PRA-09>HZ-06'> from pra_09 to SSD_HAZ_ORB_001::HZ06_Hazard;
    #ComparedWith dependency <'PRA-10>HZ-06'> from pra_10 to SSD_HAZ_ORB_001::HZ06_Hazard;
}
