// SysML v2 テキスト：解析（CO2 除去のトレードスタディ、質量特性、Δv、故障の木）
// SSD-ANA-ORB-001 解析定義書（CO2 除去のトレード・質量特性・Δv・故障の木） の表から生成（lib/build_docs_aj.py、Rev. AN で量と単位の型付けを lib/qtysysml.py に移した）。根拠の頁と計算の照合は SSD-ANA-ORB-001 にある。
package SSD_ANA_ORB_001 {
    doc /* SSD-ANA-ORB-001 解析定義書（CO2 除去のトレード・質量特性・Δv・故障の木）。図104〜108 と同じ値・式・論理。質量・長さ・時間・加速度・速度は SysML v2 の量（ISQ）と単位で型付けした。 */
    private import ScalarValues::*;
    private import Quantities::*;
    private import ISQ::*;
    private import SI::*;
    private import USCustomaryUnits::*;
    calc def Ln { doc /* 自然対数（SysML v2 の標準ライブラリに無いので宣言だけ置く） */ in x : Real; return : Real; }
    constraint def NotAbove { doc /* x ≦ limit */ in x : ScalarQuantityValue; in limit : ScalarQuantityValue; x <= limit }
    constraint def WithinRange { doc /* lo ≦ x ≦ hi */ in x : ScalarQuantityValue; in lo : ScalarQuantityValue; in hi : ScalarQuantityValue; lo <= x and x <= hi }
    // ---- 1. CO2 除去のトレードスタディ（7人・10日）
    part def Co2RemovalAlternative {
        doc /* CO2 除去の案。値は 7人・10日（括弧の値は 16日） */
        attribute canisters : Integer { doc /* LiOH キャニスタの所要数（2日予備を含む） */ }
        attribute stowageLimit : Integer = 32;
        attribute canisterMass : MassValue { doc /* LiOH キャニスタの質量（lb） */ }
        attribute usableInAscentEntry : Boolean;
        attribute available : Boolean { doc /* 現在の機体で使えるか */ }
        attribute fitsStowage : Boolean = canisters <= stowageLimit;
    }
    part liohOnly : Co2RemovalAlternative { doc /* ALT-A LiOH キャニスタのみ */ :>> canisters = 42; :>> canisterMass = 282.7 [lb]; :>> usableInAscentEntry = true; :>> available = true; }
    part rcrs : Co2RemovalAlternative { doc /* ALT-B RCRS＋打上げ・突入用 LiOH */ :>> canisters = 9; :>> canisterMass = 60.6 [lb]; :>> usableInAscentEntry = false; :>> available = false; }
    analysis def Co2RemovalTrade {
        doc /* 収納上限（32個）と可用性は合否の制約、質量は比べる量。重みは付けない */
        subject alternatives : Co2RemovalAlternative[2];
        objective { doc /* 7人・10日では LiOH だけだと予備を含めて42個が要り、収納上限32個を10個超える（予備を除いても3個不足）。 */ }
    }
    analysis co2RemovalTrade : Co2RemovalTrade { subject :>> alternatives = (liohOnly, rcrs); }
    // ---- 2. 質量特性（着陸重量・重心・質量モーメント）
    part def LandingMassProperties {
        attribute landingWeight : MassValue { doc /* 着陸重量（lb） */ }
        attribute xcg : LengthValue { doc /* X 重心（in） */ }
        attribute landingWeightLimit : MassValue = 233000.0 [lb] { doc /* EOM の上限（MS-02） */ }
        attribute xcgForwardLimit : LengthValue = 1076.7 ['in'] { doc /* 前方限界（MS-09） */ }
        attribute xcgAftLimit : LengthValue = 1109.0 ['in'] { doc /* 後方限界（MS-11） */ }
        attribute massMoment : ScalarQuantityValue = landingWeight * (1172.3 ['in'] - xcg) { doc /* 質量モーメント（MC-05。lb·in で持ち、ft-lb への換算は単位が受け持つ） */ }
        attribute concreteRunwayRequired : Boolean = massMoment > 1540000.0 [lb*ft];
        assert constraint weightLimit : NotAbove { in x = landingWeight; in limit = landingWeightLimit; }
        assert constraint xcgEnvelope : WithinRange { in x = xcg; in lo = xcgForwardLimit; in hi = xcgAftLimit; }
    }
    part eomForwardCg : LandingMassProperties { doc /* 計算：質量モーメント 1,856,233 ft-lb（コンクリート滑走路が要る） */ :>> landingWeight = 233000.0 [lb]; :>> xcg = 1076.7 ['in']; }
    part eomAftCg : LandingMassProperties { doc /* 計算：質量モーメント 1,229,075 ft-lb */ :>> landingWeight = 233000.0 [lb]; :>> xcg = 1109.0 ['in']; }
    // ---- 3. OMS の Δv（ロケット方程式）
    constraint def RocketEquation {
        doc /* Δv = Isp・g0・ln(m0/m1) */
        in isp : DurationValue; in g0 : AccelerationValue; in m0 : MassValue; in m1 : MassValue; in dv : SpeedValue;
        dv == isp * g0 * Ln(m0 / m1)
    }
    part def OmsDeltaV {
        attribute isp : DurationValue = 313.2 [s] { doc /* DV-04 */ }
        attribute g0 : AccelerationValue = 32.174 ['ft/s²'];
        attribute m0 : MassValue { doc /* 燃焼前の質量（lb） */ }
        attribute propellant : MassValue = 25064.0 [lb] { doc /* OMS 満載（DV-01） */ }
        attribute deltaV : SpeedValue = isp * g0 * Ln(m0 / (m0 - propellant));
        assert constraint rocket : RocketEquation { in isp = OmsDeltaV::isp; in g0 = OmsDeltaV::g0; in m0 = OmsDeltaV::m0; in m1 = OmsDeltaV::m0 - propellant; in dv = deltaV; }
    }
    part omsFull220k : OmsDeltaV { doc /* 計算：Δv = 1,219 ft/s */ :>> m0 = 220000.0 [lb]; }
    part omsFull260k : OmsDeltaV { doc /* 計算：Δv = 1,021 ft/s */ :>> m0 = 260000.0 [lb]; }
    // ---- 4. 故障の木（事象＝Boolean の属性、ゲート＝and／or の式、頂上事象＝top）
    part def FaultTreeA {
        doc /* TOP-A 再突入中に 28 VDC の主直流電力をすべて失う（飛行制御・航法の電力を失い突入できない） */
        attribute e1 : Boolean { doc /* E1 燃料電池1の喪失（内部短絡・冷却喪失で9分以内に停止・反応剤供給の喪失） */ }
        attribute e2 : Boolean { doc /* E2 燃料電池2の喪失（同上） */ }
        attribute e3 : Boolean { doc /* E3 燃料電池3の喪失（同上） */ }
        attribute e4 : Boolean { doc /* E4 PRSD 中央マニホールドの漏れによる燃料電池2基の喪失（共通原因） */ }
        attribute e5 : Boolean { doc /* E5 主母線 MNA の短絡（MNA 下位母線と付属機器をすべて失う） */ }
        attribute e6 : Boolean { doc /* E6 主母線 MNB の短絡 */ }
        attribute e7 : Boolean { doc /* E7 主母線 MNC の短絡 */ }
        attribute g1 : Boolean = g2 or g3 { doc /* G1 OR：全電源の喪失、または全主母線の喪失（推定：主母線3本が直流負荷の主電源。予備バッテリが無いことは SSD-FD-EPS-FCP-001 F-EPS-FCP-08 による） */ }
        attribute g2 : Boolean = g4 or g5 { doc /* G2 OR：燃料電池3基をすべて失う（推定：各燃料電池は独立した電源） */ }
        attribute g4 : Boolean = e1 and e2 and e3 { doc /* G4 AND：燃料電池1・2・3がそれぞれ独立に故障する（1基喪失で単一故障許容→MDF、2基で0故障許容→次の PLS（規則 A9-1001 注[4]・[5]）） */ }
        attribute g5 : Boolean = e4 and e3 { doc /* G5 AND：共通原因：PRSD 中央マニホールドの漏れで2基を失い、残る1基も故障する（規則 A9-252 の根拠文が2基喪失を述べる。3基目との組合せは推定） */ }
        attribute g3 : Boolean = e5 and e6 and e7 { doc /* G3 AND：主母線 MNA・MNB・MNC の3本とも、バスタイで回復できない故障（短絡）で失う（推定：燃料電池だけの故障はバスタイで母線を回復できるが、短絡母線へはタイしない（SCOM）） */ }
        attribute top : Boolean = g1 { doc /* TOP-A */ }
    }
    part def FaultTreeB {
        doc /* TOP-B 再突入中に空力舵面（エレボン等）の作動器へ油圧を供給できない（突入・着陸の制御を失う） */
        attribute e1 : Boolean { doc /* E1 APU1 の故障（タービン・制御器・燃料供給。各 APU は専用の制御器と燃料タンクを持つ） */ }
        attribute e2 : Boolean { doc /* E2 系統1の主油圧ポンプの故障・作動油の漏れ */ }
        attribute e3 : Boolean { doc /* E3 系統1の水噴霧ボイラ（WSB）の冷却喪失 */ }
        attribute e4 : Boolean { doc /* E4 APU2 の故障 */ }
        attribute e5 : Boolean { doc /* E5 系統2の主油圧ポンプの故障・作動油の漏れ */ }
        attribute e6 : Boolean { doc /* E6 系統2の WSB の冷却喪失 */ }
        attribute e7 : Boolean { doc /* E7 APU3 の故障 */ }
        attribute e8 : Boolean { doc /* E8 系統3の主油圧ポンプの故障・作動油の漏れ */ }
        attribute e9 : Boolean { doc /* E9 系統3の WSB の冷却喪失 */ }
        attribute e10 : Boolean { doc /* E10 主直流母線2本の故障で APU の燃料タンク弁を開けない（共通原因。FTA-A からの波及） */ }
        attribute e11 : Boolean { doc /* E11 エレボン作動器の切替弁（待機1／待機2）が待機2位置に固着 */ }
        attribute g1 : Boolean = g2 or g6 { doc /* G1 OR：3系統すべての喪失、または作動器側の切替弁の共通故障（推定：各作動器は3系統から切替弁を通して受圧する） */ }
        attribute g2 : Boolean = g3 and g4 and g5 { doc /* G2 AND：APU/油圧系1・2・3をすべて失う（規則：突入には少なくとも1系統が要る（A10-21A.4））。1系統の喪失は EOM 継続、2系統で次の PLS・単一 APU 突入（規則 A10-21A） */ }
        attribute g3 : Boolean = e1 or e2 or e3 or e10 { doc /* G3 OR：系統1の喪失（推定：APU・主ポンプ・WSB のどれか1つで系統の圧力を失う） */ }
        attribute g4 : Boolean = e4 or e5 or e6 or e10 { doc /* G4 OR：系統2の喪失（同上） */ }
        attribute g5 : Boolean = e7 or e8 or e9 or e10 { doc /* G5 OR：系統3の喪失（同上） */ }
        attribute g6 : Boolean = e11 and g5 { doc /* G6 AND：待機2弁の待機2位置への固着（2系統の喪失）と、待機2系統の喪失（規則 A10-51 の定義。組合せは推定） */ }
        attribute top : Boolean = g1 { doc /* TOP-B */ }
    }
    part def FaultTreeC {
        doc /* TOP-C 軌道上でキャビンの PPCO2 を 7.6 mmHg 未満に保てない（船外パージで約2時間しかもたない） */
        attribute e1 : Boolean { doc /* E1 RCRS の制御器1・2の両方の故障（手動の代替は無い） */ }
        attribute e2 : Boolean { doc /* E2 真空ベント配管の閉塞または隔離弁の閉 */ }
        attribute e3 : Boolean { doc /* E3 火災の燃焼生成物（HCl・HF・HCN）によるアミン床の不可逆な劣化 */ }
        attribute e4 : Boolean { doc /* E4 PPCO2 の把握の喪失（計測喪失も RCRS 喪失とみなす） */ }
        attribute e5 : Boolean { doc /* E5 未使用の LiOH キャニスタの枯渇（2日予備＝乗員数と同数を使い切る） */ }
        attribute e6 : Boolean { doc /* E6 キャビンファン A・B の両方の故障（LiOH への流れを失う。推定） */ }
        attribute g1 : Boolean = g2 and g3 { doc /* G1 AND：RCRS を失い、かつ LiOH でも代替できない（規則：RCRS 喪失時は LiOH を装着しその数が EOM を決める（A17-155B.4）） */ }
        attribute g2 : Boolean = e1 or e2 or e3 or e4 { doc /* G2 OR：RCRS の喪失（規則：A17-106 の喪失の定義と根拠） */ }
        attribute g3 : Boolean = e5 or e6 { doc /* G3 OR：LiOH による代替ができない（推定） */ }
        attribute top : Boolean = g1 { doc /* TOP-C */ }
    }
}
