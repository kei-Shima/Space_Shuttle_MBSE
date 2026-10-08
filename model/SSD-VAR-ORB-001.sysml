// SysML v2 テキスト：構成の違い（機体・ミッションキット）
// SSD-VAR-ORB-001 構成の違い定義書（機体・ミッションキット） の表から生成（lib/build_docs_ak.py）。根拠の頁は SSD-VAR-ORB-001 にある。
package SSD_VAR_ORB_001 {
    doc /* SSD-VAR-ORB-001 構成の違い定義書（機体・ミッションキット）。図109 機体・ミッションキットの構成行列 と同じ機体・特徴・キット。 */
    private import SSD_BLK_SYS_001::*;
    private import ScalarValues::*;
    enum def OrbiterVehicle { doc /* 機体（OV 番号） */ enum ov099; enum ov102; enum ov103; enum ov104; enum ov105; }
    metadata def VehicleFeature {
        doc /* 機体の特徴の値（特徴の ID・関係する機能説明書・値） */
        attribute feature : String; attribute block : String; attribute value : String;
    }
    metadata def BudgetBinding {
        doc /* 収支（SSD-BUD-ORB-001）の行への効き方 */
        attribute budgetRow : String; attribute effect : String;
    }
    // ---- 機体（構造のオービタを特化し、特徴の値を metadata で持つ）
    part def <'OV-099'> Ov099Configuration :> ORB {
        doc /* OV-099 チャレンジャー */
        attribute vehicle : OrbiterVehicle = OrbiterVehicle::ov099;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-02"; block = "SSD-FD-EPS-PRSD-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-03"; block = "SSD-FD-EPS-DC-001"; value = "—"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-05"; block = "SSD-FD-ECL-PCS-N2S-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-06"; block = "SSD-FD-ECL-PCS-RLF-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-07"; block = "SSD-FD-ECL-PCS-MON-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "—"; }
        @VehicleFeature { feature = "VF-09"; block = "SSD-FD-DPS-BUS-001"; value = "—"; }
        @VehicleFeature { feature = "VF-10"; block = "SSD-FD-TCS-HX-001"; value = "—"; }
        @VehicleFeature { feature = "VF-11"; block = "SSD-FD-CREW-LTG-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-12"; block = "SSD-FD-ARS-AVB-FAN-001"; value = "—"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-14"; block = "SSD-FD-MECH-VNT-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-15"; block = "SSD-FD-STR-AFT-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-18"; block = "SSD-FD-OMS-PSD-001"; value = "不明"; }
    }
    part def <'OV-102'> Ov102Configuration :> ORB {
        doc /* OV-102 コロンビア */
        attribute vehicle : OrbiterVehicle = OrbiterVehicle::ov102;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "5組の実績（STS-35）。タンク5あり（O2 タンク4・5はヒータ単一）"; }
        @VehicleFeature { feature = "VF-02"; block = "SSD-FD-EPS-PRSD-001"; value = "飛行実績あり（STS-65 が4回目）"; }
        @VehicleFeature { feature = "VF-03"; block = "SSD-FD-EPS-DC-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "RCRS の飛行実績（STS-65、LiOH で補助）"; }
        @VehicleFeature { feature = "VF-05"; block = "SSD-FD-ECL-PCS-N2S-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-06"; block = "SSD-FD-ECL-PCS-RLF-001"; value = "PPRV 15.9 psia"; }
        @VehicleFeature { feature = "VF-07"; block = "SSD-FD-ECL-PCS-MON-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-09"; block = "SSD-FD-DPS-BUS-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-10"; block = "SSD-FD-TCS-HX-001"; value = "—"; }
        @VehicleFeature { feature = "VF-11"; block = "SSD-FD-CREW-LTG-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-12"; block = "SSD-FD-ARS-AVB-FAN-001"; value = "従来型（改良の予定なし）"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "使用実績あり（STS-65）"; }
        @VehicleFeature { feature = "VF-14"; block = "SSD-FD-MECH-VNT-001"; value = "不明"; }
        @VehicleFeature { feature = "VF-15"; block = "SSD-FD-STR-AFT-001"; value = "拡散接合の推力構造"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "7回目の飛行の後に AFRSI 化。接着面温度の上限は別の値"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "15〜20%"; }
        @VehicleFeature { feature = "VF-18"; block = "SSD-FD-OMS-PSD-001"; value = "不明"; }
    }
    part def <'OV-103'> Ov103Configuration :> ORB {
        doc /* OV-103 ディスカバリー */
        attribute vehicle : OrbiterVehicle = OrbiterVehicle::ov103;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "5組の実績（STS-114）"; }
        @VehicleFeature { feature = "VF-02"; block = "SSD-FD-EPS-PRSD-001"; value = "搭載可（全機可）。実績の記載なし。A15 は SSPTS に転用"; }
        @VehicleFeature { feature = "VF-03"; block = "SSD-FD-EPS-DC-001"; value = "SSPTS（APCU から改修）"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "LiOH"; }
        @VehicleFeature { feature = "VF-05"; block = "SSD-FD-ECL-PCS-N2S-001"; value = "6基（標準）"; }
        @VehicleFeature { feature = "VF-06"; block = "SSD-FD-ECL-PCS-RLF-001"; value = "上限 15.36 psia、PPRV 15.9 psia"; }
        @VehicleFeature { feature = "VF-07"; block = "SSD-FD-ECL-PCS-MON-001"; value = "従来型（0〜5 lbm/hr）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "TACAN 3系統＋GPS 1台"; }
        @VehicleFeature { feature = "VF-09"; block = "SSD-FD-DPS-BUS-001"; value = "MDM（交換時に EMDM）"; }
        @VehicleFeature { feature = "VF-10"; block = "SSD-FD-TCS-HX-001"; value = "装備（未使用、A14 にヒータスイッチ）"; }
        @VehicleFeature { feature = "VF-11"; block = "SSD-FD-CREW-LTG-001"; value = "撤去（スイッチは無効）"; }
        @VehicleFeature { feature = "VF-12"; block = "SSD-FD-ARS-AVB-FAN-001"; value = "従来型（将来改良）"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "使用実績あり（STS-114）"; }
        @VehicleFeature { feature = "VF-14"; block = "SSD-FD-MECH-VNT-001"; value = "両舷とも閉止・駆動部撤去"; }
        @VehicleFeature { feature = "VF-15"; block = "SSD-FD-STR-AFT-001"; value = "拡散接合の推力構造。主翼は軽量化設計＋補強"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "LRSI の大部分を AFRSI 化"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "12〜16%"; }
        @VehicleFeature { feature = "VF-18"; block = "SSD-FD-OMS-PSD-001"; value = "最大 25064 lb、バラストはベイ13"; }
    }
    part def <'OV-104'> Ov104Configuration :> ORB {
        doc /* OV-104 アトランティス */
        attribute vehicle : OrbiterVehicle = OrbiterVehicle::ov104;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "不明（STS-135 で71時間の延長余裕）"; }
        @VehicleFeature { feature = "VF-02"; block = "SSD-FD-EPS-PRSD-001"; value = "搭載可（全機可）。実績の記載なし"; }
        @VehicleFeature { feature = "VF-03"; block = "SSD-FD-EPS-DC-001"; value = "単独型 APCU（2台）"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "LiOH（MO51F パネルはあり）"; }
        @VehicleFeature { feature = "VF-05"; block = "SSD-FD-ECL-PCS-N2S-001"; value = "5基（系統1に2・系統2に3）"; }
        @VehicleFeature { feature = "VF-06"; block = "SSD-FD-ECL-PCS-RLF-001"; value = "下限 13.74・上限 15.53 psia、PPRV 15.95 psia"; }
        @VehicleFeature { feature = "VF-07"; block = "SSD-FD-ECL-PCS-MON-001"; value = "新型（最大 25 lbm/hr、表示 12.4）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "TACAN 3系統＋GPS 1台（1系統 GPS の飛行）"; }
        @VehicleFeature { feature = "VF-09"; block = "SSD-FD-DPS-BUS-001"; value = "MDM と EMDM の混在"; }
        @VehicleFeature { feature = "VF-10"; block = "SSD-FD-TCS-HX-001"; value = "未装備（STS-114・STS-117 の後に改修予定）"; }
        @VehicleFeature { feature = "VF-11"; block = "SSD-FD-CREW-LTG-001"; value = "搭載"; }
        @VehicleFeature { feature = "VF-12"; block = "SSD-FD-ARS-AVB-FAN-001"; value = "Av Bay 3A に改良型（1999年1月）"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "使用実績あり（STS-122）"; }
        @VehicleFeature { feature = "VF-14"; block = "SSD-FD-MECH-VNT-001"; value = "両舷とも閉止・駆動部撤去"; }
        @VehicleFeature { feature = "VF-15"; block = "SSD-FD-STR-AFT-001"; value = "拡散接合の推力構造。主翼は軽量化設計＋補強"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "LRSI の大部分を AFRSI 化"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "12〜16%"; }
        @VehicleFeature { feature = "VF-18"; block = "SSD-FD-OMS-PSD-001"; value = "最大 25064 lb、バラストはベイ13"; }
    }
    part def <'OV-105'> Ov105Configuration :> ORB {
        doc /* OV-105 エンデバー */
        attribute vehicle : OrbiterVehicle = OrbiterVehicle::ov105;
        @VehicleFeature { feature = "VF-01"; block = "SSD-FD-EPS-PRSD-001"; value = "タンク5の計器選択あり（5組まで可）"; }
        @VehicleFeature { feature = "VF-02"; block = "SSD-FD-EPS-PRSD-001"; value = "当初から EDO 改修で組立。A15 は SSPTS に転用"; }
        @VehicleFeature { feature = "VF-03"; block = "SSD-FD-EPS-DC-001"; value = "SSPTS（APCU から改修）"; }
        @VehicleFeature { feature = "VF-04"; block = "SSD-FD-ARS-RCRS-001"; value = "RCRS の機器能力（SCOM）／撤去済み（訓練マニュアル）"; }
        @VehicleFeature { feature = "VF-05"; block = "SSD-FD-ECL-PCS-N2S-001"; value = "6基（標準）"; }
        @VehicleFeature { feature = "VF-06"; block = "SSD-FD-ECL-PCS-RLF-001"; value = "上限 15.35 psia、PPRV 15.8 psia"; }
        @VehicleFeature { feature = "VF-07"; block = "SSD-FD-ECL-PCS-MON-001"; value = "従来型（0〜5 lbm/hr）"; }
        @VehicleFeature { feature = "VF-08"; block = "SSD-FD-GNC-NAS-001"; value = "GPS 3系統"; }
        @VehicleFeature { feature = "VF-09"; block = "SSD-FD-DPS-BUS-001"; value = "EMDM"; }
        @VehicleFeature { feature = "VF-10"; block = "SSD-FD-TCS-HX-001"; value = "装備（未使用）"; }
        @VehicleFeature { feature = "VF-11"; block = "SSD-FD-CREW-LTG-001"; value = "撤去（スイッチは無効）"; }
        @VehicleFeature { feature = "VF-12"; block = "SSD-FD-ARS-AVB-FAN-001"; value = "従来型（将来改良）"; }
        @VehicleFeature { feature = "VF-13"; block = "SSD-FD-MECH-DEC-001"; value = "初飛行で初使用"; }
        @VehicleFeature { feature = "VF-14"; block = "SSD-FD-MECH-VNT-001"; value = "当初から装備なし"; }
        @VehicleFeature { feature = "VF-15"; block = "SSD-FD-STR-AFT-001"; value = "推力構造は鍛造品"; }
        @VehicleFeature { feature = "VF-16"; block = "SSD-FD-TPS-001"; value = "不明（上限は OV-103/104 と共通）"; }
        @VehicleFeature { feature = "VF-17"; block = "SSD-FD-APU-HYD-001"; value = "12〜16%"; }
        @VehicleFeature { feature = "VF-18"; block = "SSD-FD-OMS-PSD-001"; value = "不明"; }
    }
    variation part def OrbiterVariant :> ORB {
        doc /* オービタの機体の選択（どれか1機） */
        variant part ov099 : Ov099Configuration;
        variant part ov102 : Ov102Configuration;
        variant part ov103 : Ov103Configuration;
        variant part ov104 : Ov104Configuration;
        variant part ov105 : Ov105Configuration;
    }
    // ---- ミッションキット（必要な飛行で積む。収支への効き方は metadata）
    abstract part def MissionKit { doc /* ミッションキットの共通の型 */ }
    part def <'MK-01'> ExtraPrsdTankSets :> MissionKit {
        doc /* 追加の PRSD タンク組（中胴、3組→最大5組）（SSD-FD-EPS-PRSD-001）：3組で最大8日、5組で最大12日の軌道滞在。タンクのヒータはパネル A11 で操作する */
        @BudgetBinding { budgetRow = "BUD-PWR-05"; effect = "PRSD の組数で反応剤で足りる日数が決まる（3組8日・5組12日・8組18日）。現行は5組12日で、組数を機体・キットの変数にできる"; }
        @BudgetBinding { budgetRow = "BUD-PWR-06"; effect = "反応剤の量は組数×1組の量で、組数の変数と連動する"; }
    }
    part def <'MK-02'> EdoCryoPallet :> MissionKit {
        doc /* EDO クライオパレット（追加4組、タンク6〜9）（SSD-FD-EPS-PRSD-001）：8組で最大18日、EDO 全体で16＋2日。中央マニホールドを先に消費し、主電力は軌道上だけ入れ、DSC を追加する。OI-33 時点では使わない */
        @BudgetBinding { budgetRow = "BUD-PWR-05"; effect = "EDO パレットを積むと8組（最大18日）となり、余裕が大きく増える"; }
    }
    part def <'MK-03'> ExtraNitrogenTanks :> MissionKit {
        doc /* 追加の窒素タンク（SSD-FD-ECL-PCS-N2S-001）：常設4基（OV-103・105 は6基、OV-104 は5基）から最大8基に増やし、長期の漏洩とごみの排気を補う */
        @BudgetBinding { budgetRow = "BUD-CON-02"; effect = "追加の窒素タンクで最大8基（480 lb）まで増やせる"; }
    }
    part def <'MK-04'> RegenerableCo2Removal :> MissionKit {
        doc /* 再生式 CO2 除去装置（RCRS）（SSD-FD-ARS-RCRS-001）：LiOH は打上げと再突入の各1個に減り、木炭キャニスタ（10日超で中間交換）を使う。7人・10〜16日を可能にした */
        @BudgetBinding { budgetRow = "BUD-CON-04"; effect = "RCRS を積むと LiOH は打上げと再突入の各1個で足り、標準ミッションで必要な LiOH の搭載（42個）を減らせる"; }
        @BudgetBinding { budgetRow = "BUD-CON-05"; effect = "RCRS の機体では予備2日分の LiOH も RCRS の連続運転で賄える。ただし OI-33 時点で RCRS に対応する機体は無い"; }
    }
    part def <'MK-05'> EdoWasteCollection :> MissionKit {
        doc /* EDO 廃棄物収集系（EDO WCS）（SSD-FD-ECL-WCS-001）：長期飛行向けの WCS。STS-54（OV-105）で初飛行、STS-65（OV-102）でも使用 */
    }
    part def <'MK-06'> OrbiterDockingSystemKit :> MissionKit {
        doc /* オービタドッキング系（ODS：外部エアロック・トラス・APDS）（SSD-FD-PLS-ODS-001）：ISS とのドッキングを可能にし、外部エアロックで EVA を行う。合計の与圧容積は約 2,703 立方フィートになる */
        @BudgetBinding { budgetRow = "BUD-CON-04"; effect = "ISS に係留する飛行では ISS の CO2 除去で LiOH を節約でき（STS-108 で12個不要）、ドッキングの有無を変数にできる"; }
        @BudgetBinding { budgetRow = "BUD-CON-02"; effect = "外部エアロックで与圧容積が約 2,703 立方フィートに増え、構成で容積が変わるため窒素の所要量に効く"; }
    }
    part def <'MK-07'> ExternalAirlockPosition :> MissionKit {
        doc /* 外部エアロックの搭載位置（ベイ2／ベイ3）とトンネルアダプタ（SSD-FD-ECL-ALS-001）：位置で X-CG が 649 in／731 in となり、エアロック内の収納は 990 lb から EMU の重量を引いた値に限る */
    }
    part def <'MK-08'> StationPowerTransfer :> MissionKit {
        doc /* SSPTS（ISS からの電力受電）（SSD-FD-EPS-DC-001）：ドッキング中に ISS の 120 V 電力を 28 V 主母線へ送り、燃料電池の負荷と反応剤の消費を減らしてミッション延長日を生む（OV-103・105） */
        @BudgetBinding { budgetRow = "BUD-PWR-05"; effect = "SSPTS はドッキング中の燃料電池の負荷を下げ、浮いた反応剤をミッションの延長日に充てる（OV-103・105 のみ、ISS 飛行のみ）"; }
    }
    part def <'MK-09'> SpacehabModule :> MissionKit {
        doc /* Spacehab モジュール（SSD-FD-PLS-001）：中甲板の実験の場の拡張と ISS 補給品の輸送。ODS と併用時はトラニオンで単一モジュールを取り付ける */
    }
    part def <'MK-10'> SpacelabModule :> MissionKit {
        doc /* Spacelab モジュール（SSD-FD-PLS-001）：乗員区画に4つ目の区画を加え、トンネルアダプタが第2のエアロックとなる（STS-65 の IML-2） */
    }
    part def <'MK-11'> RemoteManipulatorKit :> MissionKit {
        doc /* 遠隔操作アーム（RMS）（SSD-FD-PLS-ARM-001）：必要なミッションでだけ左舷ロンジロンに取り付ける */
    }
    part def <'MK-12'> BoomSensorKit :> MissionKit {
        doc /* オービタブームセンサ系（OBSS）（SSD-FD-PLS-OPS-001）：右舷に 50 フィートのブームを積み、RMS で把持して熱防護の軌道上点検を行う（STS-114 から） */
    }
    part def <'MK-13'> OmsKit :> MissionKit {
        doc /* OMS キット（SSD-FD-OMS-001）：追加の OMS 推進薬の計画だったが使われる見込みはない（スイッチと計器は残るが働かない） */
    }
    part def MissionConfiguration {
        doc /* 1回の飛行の構成：機体（OrbiterVariant のどれか）と積むキット */
        part orbiter : OrbiterVariant;
        part kits : MissionKit[0..*];
    }
    // ---- 特徴が収支に効く仕方（機体の特徴）
    package FeatureBudgetBinding {
        comment <'VF-01>BUD-PWR-05'> /* VF-01 中胴の PRSD タンクの組数 → BUD-PWR-05：OV-104 の STS-135 では残量で平均 13.6 kW・71時間の延長が可能で、実績から余裕日数を照合できる */
        comment <'VF-05>BUD-CON-02'> /* VF-05 窒素タンクの常設数 → BUD-CON-02：窒素の容量は常設タンク数で決まり、OV-104 の5基では（143−83）lb×5＝300 lb に減る */
        comment <'VF-06>BUD-CON-02'> /* VF-06 乗員室圧の警報限界と正圧逃し弁の作動圧 → BUD-CON-02：経験則の窒素消費（OV-103/104、4人で 5.28 lb/日、1人ごとに +0.114 lb/日）は乗員数と機体の変数で表せる */
        comment <'VF-18>BUD-PRP-01'> /* VF-18 OMS の最大搭載量と固定バラスト → BUD-PRP-01：OMS の搭載量は OV-103/104 で最大 25064 lb・最小 10800 lb で、機体の変数として速度変化の能力の上限に効く */
    }
}
