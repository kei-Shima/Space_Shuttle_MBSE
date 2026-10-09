// SysML v2 テキスト：居住の資源と収支（食料・衛生・就寝・廃棄物・収納）
// SSD-HRS-ORB-001 居住の資源と収支定義書（食料・衛生・就寝・廃棄物・収納の量、標準ミッションの収支） の表から生成（lib/build_docs_bo.py・rev_bo/bodata.py）。根拠の頁は SSD-HRS-ORB-001 にある。
package SSD_HRS_ORB_001 {
    doc /* SSD-HRS-ORB-001 居住の資源と収支定義書（食料・衛生・就寝・廃棄物・収納の量、標準ミッションの収支）。図185・186 と同じ内容。値は資料の単位で、単位は doc に書く。 */
    private import ScalarValues::*;
    metadata def CriterionFrom { doc /* 照合の基準の出どころ（照合表の 3001 の要求） */ }
    part def HabitabilityProvisions {
        doc /* 乗員1人1日・1飛行の居住の資源の量（HBX-P の表。値の無いものは属性だけ） */
        attribute <'HBX-P01'> p01 : Real = 3.4 { doc /* 食料の質量（包装込み）（lb、人・日） */ }
        attribute <'HBX-P02'> p02 : Real = 1.0 { doc /* 包装の質量（lb、人・日） */ }
        attribute <'HBX-P03'> p03 : Real = 2.4 { doc /* 食料の質量（包装なし）（lb、人・日） */ }
        attribute <'HBX-P04'> p04 : Real = 2.0 { doc /* 非常食（パントリー）の日数（日、飛行） */ }
        attribute <'HBX-P05'> p05 : Real = 2700.0 { doc /* メニューの食料の熱量（kcal、人・日） */ }
        attribute <'HBX-P06'> p06 : Real = 2100.0 { doc /* パントリー（非常食・間食）の熱量（kcal、人・日） */ }
        attribute <'HBX-P07'> p07 : Real = 7.0 { doc /* メニューの周期（日、周期） */ }
        attribute <'HBX-P08'> p08 : Real = 20.0 { doc /* 1日のメニューの包装の数（包、人・日） */ }
        attribute <'HBX-P09'> p09 : Real = 1.0 { doc /* 食事の時間（h、食（1日3回）） */ }
        attribute <'HBX-P10'> p10 : Real = 35.0 { doc /* 4人分の食事の準備（用意＋復水・加温）（min、食） */ }
        attribute <'HBX-P11'> p11 : Real = 8.0 { doc /* 復水の水（1回に出す量）（oz、回） */ }
        attribute <'HBX-P12'> p12 : Real = 1710.8 { doc /* 復水の水（1人1日）（g、人・日） */ }
        attribute <'HBX-P13'> p13 : Real = 160.0 { doc /* ギャレーの湯の温度（°F、—） */ }
        attribute <'HBX-P14'> p14 : Real = 50.0 { doc /* 冷水の温度（°F、—） */ }
        attribute <'HBX-P15'> p15 : Real = 12.0 { doc /* ギャレーの湯のタンク（lb（水）、個） */ }
        attribute <'HBX-P16'> p16 : Real = 14.0 { doc /* オーブンの容量と温度（包（上の区画）／包（下の区画）、個） */ }
        attribute <'HBX-P17'> p17 : Real = 164.0 { doc /* ギャレーの質量（lb、個） */ }
        attribute <'HBX-P18'> p18 : Real = 4.0 { doc /* 食品加温器の能力（人分／1時間、個） */ }
        attribute <'HBX-P19'> p19 : Real = 1.0 { doc /* 飲料水の空容器（個、人・日） */ }
        attribute <'HBX-P20'> p20 : Real = 50.0 { doc /* EVA の服内の果物バー（g（170 kcal）、本） */ }
        attribute <'HBX-P30'> p30 : Real = 1.0 { doc /* タオル（枚（約0.4 lb）、人・日） */ }
        attribute <'HBX-P31'> p31 : Real = 2.0 { doc /* 洗面タオル（枚（約0.1 lb）、人・日） */ }
        attribute <'HBX-P32'> p32 : Real = 1.0 { doc /* ウェットウォッシュのディスペンサー（個、人・7日） */ }
        attribute <'HBX-P33'> p33 : Real = 1.0 { doc /* 個人衛生キット（PHK）（個（hi は最大 lb）、人） */ }
        attribute <'HBX-P34'> p34 : Real { doc /* 典型的な飛行の衛生用品（WMC と中甲板のロッカー）（—、飛行） */ }
        attribute <'HBX-P35'> p35 : Real = 2.55 { doc /* 洗浄の水（lb（hi は1回の最大）、人・日） */ }
        attribute <'HBX-P36'> p36 : Real = 75.0 { doc /* 個人衛生の水（°F、—） */ }
        attribute <'HBX-P37'> p37 : Real = 26.0 { doc /* 消毒用ワイプ（食器）（枚、包） */ }
        attribute <'HBX-P40'> p40 : Real { doc /* 被服の量（—、人） */ }
        attribute <'HBX-P41'> p41 : Real { doc /* 被服の交換の頻度（—、—） */ }
        attribute <'HBX-P42'> p42 : Real = 3.0 { doc /* 飛行用のブーツ（lb、足） */ }
        attribute <'HBX-P50'> p50 : Real { doc /* 乾いたごみの量（lb、人・日） */ }
        attribute <'HBX-P51'> p51 : Real { doc /* 湿ったごみの量（lb、人・日） */ }
        attribute <'HBX-P52'> p52 : Real = 3.0 { doc /* 湿ったごみの区画の排気（lb（空気）、日） */ }
        attribute <'HBX-P53'> p53 : Real = 8.8 { doc /* 尿（設計の最大）（lb（hi は1回の最大）、人・日） */ }
        attribute <'HBX-P54'> p54 : Real = 0.27 { doc /* 便（公称）（lb、人・日） */ }
        attribute <'HBX-P55'> p55 : Real = 2.4 { doc /* 便器の収納容積（ft3、個） */ }
        attribute <'HBX-P56'> p56 : Real = 8.0 { doc /* ごみの袋の内袋（枚（装着1＋予備7）、袋） */ }
        attribute <'HBX-P60'> p60 : Real = 8.0 { doc /* 睡眠の時間（h、人・日） */ }
        attribute <'HBX-P61'> p61 : Real = 1.0 { doc /* 寝袋（個、人） */ }
        attribute <'HBX-P62'> p62 : Real = 4.0 { doc /* 固定式睡眠ステーション（段、個） */ }
        attribute <'HBX-P63'> p63 : Real = 2.0 { doc /* 耳栓（個、人・2日） */ }
        attribute <'HBX-P70'> p70 : Real = 31.0 { doc /* エルゴメータと枠の打上げ質量（kg、個） */ }
        attribute <'HBX-P71'> p71 : Real = 20.0 { doc /* 有酸素の運動（1回）（min 以上、回） */ }
        attribute <'HBX-P72'> p72 : Real = 15.0 { doc /* 家事の時間（min（1日に何度か）、人） */ }
        attribute <'HBX-P80'> p80 : Real = 150.0 { doc /* 収納の全容積（ft3、機） */ }
        attribute <'HBX-P81'> p81 : Real = 127.5 { doc /* 使える収納（MLE）（MLE、機） */ }
        attribute <'HBX-P82'> p82 : Real = 2.0 { doc /* ロッカー1つの容積と質量（ft3（hi は lb）、個） */ }
        attribute <'HBX-P83'> p83 : Real = 30.0 { doc /* 収納の密度の上限（lb/ft3、—） */ }
    }
    part def Stowage {
        doc /* 収納の場所と容積（HBX-S の表） */
        attribute <'HBX-S01'> s01 : Real = 66.0 { doc /* 中甲板 前方ロッカー（アビオニクスベイ）（33 個、ft3） */ }
        attribute <'HBX-S02'> s02 : Real = 22.0 { doc /* 中甲板 エアロック右舷のロッカー（11 個、ft3） */ }
        attribute <'HBX-S03'> s03 : Real = 84.0 { doc /* モジュラーロッカー（FOM Vol. 12 の最大）（42 個、ft3） */ }
        attribute <'HBX-S04'> s04 : Real = 3.0 { doc /* Volume A（MF57A）食料のパントリー（1 個、ft3） */ }
        attribute <'HBX-S05'> s05 : Real = 7.0 { doc /* Volume B 乾いたごみ・タオル・汚れた衣類（1 個、ft3） */ }
        attribute <'HBX-S06'> s06 : Real = 8.0 { doc /* Volume F（MD76M）湿ったごみ（床下）（1 個、ft3） */ }
        attribute <'HBX-S07'> s07 : Real = 8.0 { doc /* Volume D（MD52C）EVA の工具・G スーツなど（床下）（1 個、ft3） */ }
        attribute <'HBX-S08'> s08 : Real = 6.5 { doc /* Volume E・G・H（床下：公式の飛行キット・非常用の衛生用品・EVA の付属品）（3 個、ft3） */ }
        attribute <'HBX-S09'> s09 : Real = 34.08 { doc /* 床下の区画の合計（ 個、ft3） */ }
        attribute <'HBX-S10'> s10 : Real { doc /* 床下の LiOH の予備キャニスタのロッカー（30 個、ft3） */ }
        attribute <'HBX-S11'> s11 : Real = 1.85 { doc /* WMC の湿ったごみの区画（1 個、ft3） */ }
        attribute <'HBX-S12'> s12 : Real = 5.0 { doc /* WMC の収納区画（ 個、ft3） */ }
        attribute <'HBX-S13'> s13 : Real = 2.4 { doc /* WCS の便器（固形の排泄物）（1 個、ft3） */ }
        attribute <'HBX-S14'> s14 : Real = 0.46 { doc /* ギャレーの収納区画（ 個、ft3） */ }
        attribute <'HBX-S15'> s15 : Real = 4.31 { doc /* 飛行甲板 後部区画（ 個、ft3） */ }
        attribute <'HBX-S16'> s16 : Real = 0.76 { doc /* 飛行甲板 FDF 容器（C4F・C4A・R3F・R3A）（4 個、ft3） */ }
        attribute <'HBX-S17'> s17 : Real = 0.22 { doc /* 専門家の座席の収納（ 個、ft3） */ }
        attribute <'HBX-S18'> s18 : Real = 15.0 { doc /* MAR／軽量 MAR（側面ハッチの前方）（1 個、ft3） */ }
        attribute <'HBX-S19'> s19 : Real = 80.0 { doc /* 中甲板後方の5 MLE の袋（8 個、ft3） */ }
        attribute <'HBX-S20'> s20 : Real { doc /* Volume 3B（MA73J）（1 個、ft3） */ }
        attribute <'HBX-S21'> s21 : Real { doc /* 乾いたごみの袋・容器（3 個、ft3） */ }
        attribute <'HBX-S22'> s22 : Real { doc /* 機内用収納袋（打上げの装備）（10 個、ft3） */ }
        attribute <'HBX-S23'> s23 : Real = 138.83 { doc /* 収納の合計（FOM Vol. 12 の表 3.1-2）（ 個、ft3） */ }
    }
    part def StandardMissionHabitability :> HabitabilityProvisions {
        doc /* 標準ミッション（7人・10日）の居住の資源の収支（HBX-B の表、本書の計算） */
        attribute <'HBX-B01'> b01 : Real = 238.0 { doc /* 食料（包装込み、メニュー分）（lb）。本書の計算：3.4 lb × 7人 × 10日 = 238 lb（108 kg）。 */ }
        attribute <'HBX-B02'> b02 : Real = 47.6 { doc /* 非常食（パントリー、OPS の2日分）（lb）。本書の計算：3.4 lb × 7人 × 2日 = 47.6 lb。合計 285.6 lb（130 kg）。61-B の実績 191.56 lb（7人・7日）を10日に比例させると約274 lb。 */ }
        attribute <'HBX-B03'> b03 : Real = 70.0 { doc /* 食料の包装（ごみ）（lb）。本書の計算：1 lb × 7人 × 10日 = 70 lb。容積は資料に無い。 */ }
        attribute <'HBX-B04'> b04 : Real = 42.0 { doc /* タオルと洗面タオル（lb）。本書の計算：タオル 70枚 × 0.4 lb = 28 lb、洗面タオル 140枚 × 0.1 lb = 14 lb、合計 42 lb。 */ }
        attribute <'HBX-B05'> b05 : Real { doc /* 復水の水（lb）。本書の計算：OFT の実績 1.39〜1.71 kg/人・日 なら 7人・10日で 97〜120 kg（214〜264 lb）、HIDH の 0.5 kg/人・日 なら 35 kg（77 lb）。燃料電池の生成水で賄う（SSD-BUD-ORB-001 の飲料水の行は 6 lb/人・日 の代謝の水だけ）。 */ }
        attribute <'HBX-B06'> b06 : Real = 178.5 { doc /* 洗浄の水（lb）。本書の計算：2.55 lb × 7人 × 10日 = 178.5 lb（81 kg）。 */ }
        attribute <'HBX-B07'> b07 : Real = 240.8 { doc /* 尿（公称）（lb）。本書の計算：(3.31 + 0.13) lb × 70 人・日 = 240.8 lb（109 kg）、廃水タンク 165 lb を超えるのでダンプが要る。3001 の Vu = 3 + 2.5 × 10 = 28 L/人 なら 196 L。 */ }
        attribute <'HBX-B08'> b08 : Real = 18.9 { doc /* 便（公称）と便器（lb）。本書の計算：0.27 lb × 70 人・日 = 18.9 lb。便器の収納 2.4 ft3 に乾燥して溜める。3001 の平均 300 g/人・日 なら 21 kg（46 lb）。 */ }
        attribute <'HBX-B09'> b09 : Real = 73.5 { doc /* 寝袋（7人）（lb）。本書の計算：(3 + 6.5 + 1) lb × 7 = 73.5 lb。4人を超える分はライナーなので実際はこれより軽い。 */ }
        attribute <'HBX-B10'> b10 : Real { doc /* 食料の収納容積（ft3）。資料に無い。本書の計算：285.6 lb をロッカーの密度の上限 20〜30 lb/ft3 で割ると 9.5〜14.3 ft3（ロッカー5〜8個）が下限。 */ }
    }
    // ---- 照合表の行（値を示す。判定は照合表のまま）
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-193'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7003;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-194'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7004;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-195'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7100;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-202'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7009;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-203'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7011;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-207'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7016;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-213'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7023;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-220'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7102;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-222'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7035;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-223'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7038;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-224'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7040;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-230'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7050;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-232'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7052;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-244'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7064;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-245'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7065;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-246'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7066;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-248'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7070;
    #CriterionFrom dependency <'SSD-HRS-ORB-001>HSI-251'> from StandardMissionHabitability to SSD_HSI_SYS_001::V2Criteria::V2_7074;
}
