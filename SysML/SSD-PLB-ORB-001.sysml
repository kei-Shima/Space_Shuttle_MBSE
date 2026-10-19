// SysML v2 テキスト：ペイロード搭載・着陸の制約定義書（貨物の重量・重心・荷重・取付け）
// SSD-PLB-ORB-001 ペイロード搭載・着陸の制約定義書（貨物の重量・重心・荷重・取付け） の表から生成（lib/build_docs_cp.py・rev_cp/cpdata.py）。根拠の頁は SSD-PLB-ORB-001 にある。
package SSD_PLB_ORB_001 {
    doc /* SSD-PLB-ORB-001 ペイロード搭載・着陸の制約定義書（貨物の重量・重心・荷重・取付け）。貨物の設計の制約（重量・重心・貨物室）を part def CargoEnvelope、着陸重量の内訳を LandingWeightBudget（SSD-ANA-ORB-001 の NotAbove を再利用）、緊急着陸の荷重係数を EmergencyLandingLoadFactor で示す。値は1980年の設計値で、要求への関係（導出・充足・検証）は張らず、トレースの外に置く。 */
    private import ScalarValues::*;
    private import Quantities::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    private import SSD_ANA_ORB_001::NotAbove;
    private import SSD_ANA_ORB_001::WithinRange;
    part def CargoEnvelope {
        doc /* 貨物の設計の制約（1980年の設計値。SSD-PLB-ORB-001 表1）。貨物の重量・重心は、実際の貨物の値に束縛して制約を評価する */
        attribute cargoAscentLimit : MassValue = 65000.0 [lb] { doc /* PLB-01 */ }
        attribute cargoLandingDesign : MassValue = 32000.0 [lb] { doc /* PLB-02 */ }
        attribute bayLength : LengthValue = 60.0 [ft] { doc /* PLB-06（Station 582〜1302） */ }
        attribute bayDiameter : LengthValue = 15.0 [ft] { doc /* PLB-06 */ }
        attribute cargoCgFromBayFwdEnd : LengthValue { doc /* 貨物の重心（貨物室の前端から。着陸の設計貨物 32,000 lb のとき 32〜45 ft、PLB-10） */ }
        attribute cargoCgMin : LengthValue = 32.0 [ft];
        attribute cargoCgMax : LengthValue = 45.0 [ft];
        attribute cargoAscentWeight : MassValue { doc /* 打上げの貨物の重量 */ }
        assert constraint ascentWeightLimit : NotAbove { in x = cargoAscentWeight; in limit = cargoAscentLimit; }
        assert constraint cargoCgRange : WithinRange { in x = cargoCgFromBayFwdEnd; in lo = cargoCgMin; in hi = cargoCgMax; }
    }
    part def LandingWeightBudget {
        doc /* 着陸重量の内訳（SSD-PLB-ORB-001 表3。本書の計算）：乾燥重量（1980年の設計値）＋着陸の貨物の設計重量＋その他 ≦ 着陸重量の上限 */
        attribute dryWeight : MassValue = 160000.0 [lb] { doc /* PLB-04 */ }
        attribute cargoLanding : MassValue = 32000.0 [lb] { doc /* PLB-02 */ }
        attribute otherAtLanding : MassValue { doc /* 乗員・残留推進薬・消耗品・キットなど（資料に値は無い。上限までの残りが許容） */ }
        attribute landingLimit : MassValue { doc /* SSD-ANA-ORB-001 の着陸重量の上限 */ }
        attribute landingWeight : MassValue = dryWeight + cargoLanding + otherAtLanding;
        attribute allowanceForOther : MassValue = landingLimit - dryWeight - cargoLanding { doc /* 本書の計算：上限 − 乾燥重量 − 着陸の貨物の設計重量 */ }
        assert constraint landingWeightLimit : NotAbove { in x = landingWeight; in limit = landingLimit; }
    }
    part <'PLB-23'> plb_23 : LandingWeightBudget { doc /* EOM（通常の着陸）（SSD-ANA-ORB-001 MS-02）。残り 41,000 lb（本書の計算） */ :>> landingLimit = 233000.0 [lb]; :>> otherAtLanding = 41000.0 [lb]; }
    part <'PLB-24'> plb_24 : LandingWeightBudget { doc /* アボート（上限が最も低い場合：AOA/ATO・57.0°）（SSD-ANA-ORB-001 MS-05）。残り 47,000 lb（本書の計算） */ :>> landingLimit = 239000.0 [lb]; :>> otherAtLanding = 47000.0 [lb]; }
    part <'PLB-25'> plb_25 : LandingWeightBudget { doc /* アボート（上限が最も高い場合：RTLS・TAL・28.5°/39.0°）（SSD-ANA-ORB-001 MS-03・MS-04）。残り 56,000 lb（本書の計算） */ :>> landingLimit = 248000.0 [lb]; :>> otherAtLanding = 56000.0 [lb]; }
    part def EmergencyLandingLoadFactor {
        doc /* 緊急着陸の終局荷重係数（SSD-PLB-ORB-001 表2。縦は後ろ向き、横は右向き、垂直は上向きが正）。貨物重量ごと・方向ごとの値 */
        attribute cargoWeight : MassValue;
        attribute longitudinal : Real;
        attribute lateral : Real;
        attribute vertical : Real;
    }
    part <'PLB-19'> plb_19 : EmergencyLandingLoadFactor { doc /* 貨物 32,000 lb、正方向 */ :>> cargoWeight = 32000.0 [lb]; :>> longitudinal = 4.5; :>> lateral = 1.5; :>> vertical = 4.5; }
    part <'PLB-20'> plb_20 : EmergencyLandingLoadFactor { doc /* 貨物 32,000 lb、負方向 */ :>> cargoWeight = 32000.0 [lb]; :>> longitudinal = -1.5; :>> lateral = -1.5; :>> vertical = -2.0; }
    part <'PLB-21'> plb_21 : EmergencyLandingLoadFactor { doc /* 貨物 65,000 lb、正方向 */ :>> cargoWeight = 65000.0 [lb]; :>> longitudinal = 4.5; :>> lateral = 0.738; :>> vertical = 2.215; }
    part <'PLB-22'> plb_22 : EmergencyLandingLoadFactor { doc /* 貨物 65,000 lb、負方向 */ :>> cargoWeight = 65000.0 [lb]; :>> longitudinal = -0.738; :>> lateral = -0.738; :>> vertical = -0.985; }
}
