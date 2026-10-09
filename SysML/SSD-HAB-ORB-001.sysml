// SysML v2 テキスト：居住性と医療（居住・医療の機能、乗員の1日、ユースケース）
// SSD-HAB-ORB-001 居住性・医療定義書（居住・医療の機能、乗員の1日、ユースケース） の表から生成（lib/build_docs_bd.py・rev_bd/bddata.py）。根拠の頁は SSD-HAB-ORB-001 にある。
package SSD_HAB_ORB_001 {
    doc /* SSD-HAB-ORB-001 居住性・医療定義書（居住・医療の機能、乗員の1日、ユースケース）。図154・155 と同じ内容。主体は乗員系（SSD_BLK_SYS_001::CREW）。 */
    private import ScalarValues::*;
    private import SSD_BLK_SYS_001::*;
    metadata def EvaluatedBy { doc /* 居住・医療の機能を評価する照合表の 3001 の要求 */ }
    package Functions {
        doc /* 居住・医療の機能 */
        action def <'HF-01'> Hf01 { doc /* 食事（ギャレー・食料）：中甲板のギャレー（オーブン・復水ステーション・温水タンク）で1人が1食分を調理し、メニュー・パントリー・生鮮の食品と48時間分の非常食を積む。飛行前に試食し栄養士と個人のメニューを作り、食事はトレイの拘束具つきの食事面でとる。 */ }
        action def <'HF-02'> Hf02 { doc /* 飲料水：燃料電池の生成水を4基の給水タンクに貯め、タンクA の水を飲用に充てる。微生物フィルタでヨウ素を加え、ギャレーのヨウ素除去装置（GIRA）で冷水の管のヨウ素を除き、復水ステーション（温水・冷水）と補助ポートで水を出す。 */ }
        action def <'HF-03'> Hf03 { doc /* 個人衛生：各乗員に個人衛生キット（歯磨き・整髪・ひげそり・爪の手入れ）と洗面タオル・タオルを与え、ギャレーの補助ポートの個人衛生ホース（PHH）の常温の温水とウェットワイプで体を拭く。 */ }
        action def <'HF-04'> Hf04 { doc /* 排泄（WCS）：中甲板の側面ハッチの後ろの WMC に WCS（便器・男女兼用の小便器・ファンセパレータ・臭気・細菌フィルタ）を置き、尿は廃水タンクへ送って船外へ捨てる。WCS が使えないときは便袋・UCD・吸収パンツを使う。 */ }
        action def <'HF-05'> Hf05 { doc /* 睡眠：各乗員に寝袋（枕・頭部の拘束具・調整できる帯）と睡眠キット（アイマスク・耳栓）を与え、24時間運用では4段の固定式睡眠ステーション（各段に照明・換気の吸気口と排気口・個人の収納）を中甲板右舷に置く。1交代では全員が同時に眠り、1人がヘッドセットを着ける。 */ }
        action def <'HF-06'> Hf06 { doc /* 運動：中甲板の床のスタッドに取り付ける自転車エルゴメータ（CE）で、CDR・PLT・MS2 に処方の運動を組む。運動の処方は飛行前に航空医官が説明し、必要なら PMC で話す。 */ }
        action def <'HF-07'> Hf07 { doc /* 被服：飛行前に各乗員が必須・任意の飛行装備の一覧から被服と着用装備を選び、軌道上ではズボン・上着・シャツ・睡眠用ショーツなどを着る。g スーツは突入のときだけ着る。 */ }
        action def <'HF-08'> Hf08 { doc /* 清掃・ごみ：各乗員が1日に何度か家事（WMC・食事区域・空気フィルタの清掃、ごみの処理、LiOH の交換）を行い、殺菌性の洗浄剤・使い捨ての手袋・ワイプ・掃除機を使う。乾いたごみは3つの袋に、湿ったごみは船外へ排気する区画に収める。 */ }
        action def <'HF-09'> Hf09 { doc /* 収納：交換できるモジュラーロッカー（ばね付きの拘束ボルト、磁気ラッチの扉）と床下の区画に装備を収め、足ループ・保持ネット・ベルクロ・バンジーなどの拘束具で取り出した物を留める。 */ }
        action def <'HF-10'> Hf10 { doc /* プライバシー：WMC の扉と2枚の目隠しカーテンで排泄・体の清拭の間のプライバシーを保ち、医学の相談は私的な通信（PMC）で行い、医学的なデータは乗員を番号で示して秘密を守る。 */ }
        action def <'HF-11'> Hf11 { doc /* 余暇・心理の支援：個人の好みのキット（PPK）を床下の Volume E に収め、乗員の好みで OCAC を積んで睡眠のための白色雑音を得る。 */ }
        action def <'HF-12'> Hf12 { doc /* 医療（キット・診断・相談）：SOMS（用途別のサブパックに分けた医療キット・鋭利物の容器・患者と救助者の拘束具・蘇生器）を中甲板のロッカーに収め、機上の Medical Checklist で品の場所を示し、機上の診断装置と乗員の情報で管制センターの航空医官と相談して診断・治療する。 */ }
        action def <'HF-13'> Hf13 { doc /* 私的医学会議（PMC）：全飛行日に PMC を組み（通常は就寝前の活動の間、着陸日は軌道離脱の準備の前）、MET 72 時間より前の EVA・着陸の前にも組む。CDR・航空医官・フライトディレクタが必要に応じて求められる。 */ }
        action def <'HF-14'> Hf14 { doc /* 健康の監視（線量・生体）：各乗員が飛行の全期間に受動線量計（TLD）を着け、非常時は能動線量計を読み出し、TEPC で線量率を記録する。OBS は航空医官の求めで心電図を地上へ送るか記録する。 */ }
        action def <'HF-15'> Hf15 { doc /* 飛行後の回復：軌道離脱の前に全乗員が水と食塩錠で水分負荷を行い、11日を超える飛行では耐Gスーツを膨らませる。着陸から1時間以内に医学の検査を行い、着陸場の医療担当官と救急医療体制（EMSS）が傷病の乗員を運ぶ。 */ }
    }
    #EvaluatedBy dependency <'HF-01>HSI-191'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7001;
    #EvaluatedBy dependency <'HF-01>HSI-192'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7002;
    #EvaluatedBy dependency <'HF-01>HSI-193'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7003;
    #EvaluatedBy dependency <'HF-01>HSI-194'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7004;
    #EvaluatedBy dependency <'HF-01>HSI-195'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7100;
    #EvaluatedBy dependency <'HF-01>HSI-196'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7110;
    #EvaluatedBy dependency <'HF-01>HSI-197'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7111;
    #EvaluatedBy dependency <'HF-01>HSI-198'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7007;
    #EvaluatedBy dependency <'HF-01>HSI-199'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7112;
    #EvaluatedBy dependency <'HF-01>HSI-200'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7010;
    #EvaluatedBy dependency <'HF-01>HSI-201'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7008;
    #EvaluatedBy dependency <'HF-01>HSI-202'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7009;
    #EvaluatedBy dependency <'HF-01>HSI-203'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7011;
    #EvaluatedBy dependency <'HF-01>HSI-204'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7014;
    #EvaluatedBy dependency <'HF-01>HSI-205'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7015;
    #EvaluatedBy dependency <'HF-01>HSI-206'> from Functions::Hf01 to SSD_HSI_SYS_001::V2Criteria::V2_7012;
    #EvaluatedBy dependency <'HF-01>HSI-043'> from Functions::Hf01 to SSD_HSI_SYS_001::V1Criteria::V1_4020;
    #EvaluatedBy dependency <'HF-02>HSI-129'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6026;
    #EvaluatedBy dependency <'HF-02>HSI-131'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6046;
    #EvaluatedBy dependency <'HF-02>HSI-132'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6051;
    #EvaluatedBy dependency <'HF-02>HSI-133'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6109;
    #EvaluatedBy dependency <'HF-02>HSI-134'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6110;
    #EvaluatedBy dependency <'HF-02>HSI-135'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6039;
    #EvaluatedBy dependency <'HF-02>HSI-136'> from Functions::Hf02 to SSD_HSI_SYS_001::V2Criteria::V2_6040;
    #EvaluatedBy dependency <'HF-03>HSI-207'> from Functions::Hf03 to SSD_HSI_SYS_001::V2Criteria::V2_7016;
    #EvaluatedBy dependency <'HF-03>HSI-208'> from Functions::Hf03 to SSD_HSI_SYS_001::V2Criteria::V2_7017;
    #EvaluatedBy dependency <'HF-03>HSI-209'> from Functions::Hf03 to SSD_HSI_SYS_001::V2Criteria::V2_7019;
    #EvaluatedBy dependency <'HF-04>HSI-210'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7020;
    #EvaluatedBy dependency <'HF-04>HSI-211'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7021;
    #EvaluatedBy dependency <'HF-04>HSI-212'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7022;
    #EvaluatedBy dependency <'HF-04>HSI-213'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7023;
    #EvaluatedBy dependency <'HF-04>HSI-214'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7024;
    #EvaluatedBy dependency <'HF-04>HSI-215'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7025;
    #EvaluatedBy dependency <'HF-04>HSI-216'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7026;
    #EvaluatedBy dependency <'HF-04>HSI-217'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7027;
    #EvaluatedBy dependency <'HF-04>HSI-218'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7029;
    #EvaluatedBy dependency <'HF-04>HSI-219'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7101;
    #EvaluatedBy dependency <'HF-04>HSI-220'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7102;
    #EvaluatedBy dependency <'HF-04>HSI-221'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7085;
    #EvaluatedBy dependency <'HF-04>HSI-222'> from Functions::Hf04 to SSD_HSI_SYS_001::V2Criteria::V2_7035;
    #EvaluatedBy dependency <'HF-05>HSI-248'> from Functions::Hf05 to SSD_HSI_SYS_001::V2Criteria::V2_7070;
    #EvaluatedBy dependency <'HF-05>HSI-250'> from Functions::Hf05 to SSD_HSI_SYS_001::V2Criteria::V2_7073;
    #EvaluatedBy dependency <'HF-05>HSI-037'> from Functions::Hf05 to SSD_HSI_SYS_001::V1Criteria::V1_4014;
    #EvaluatedBy dependency <'HF-05>HSI-066'> from Functions::Hf05 to SSD_HSI_SYS_001::V1Criteria::V1_6001;
    #EvaluatedBy dependency <'HF-05>HSI-163'> from Functions::Hf05 to SSD_HSI_SYS_001::V2Criteria::V2_6079;
    #EvaluatedBy dependency <'HF-06>HSI-223'> from Functions::Hf06 to SSD_HSI_SYS_001::V2Criteria::V2_7038;
    #EvaluatedBy dependency <'HF-06>HSI-224'> from Functions::Hf06 to SSD_HSI_SYS_001::V2Criteria::V2_7040;
    #EvaluatedBy dependency <'HF-06>HSI-024'> from Functions::Hf06 to SSD_HSI_SYS_001::V1Criteria::V1_4001;
    #EvaluatedBy dependency <'HF-06>HSI-026'> from Functions::Hf06 to SSD_HSI_SYS_001::V1Criteria::V1_4003;
    #EvaluatedBy dependency <'HF-06>HSI-046'> from Functions::Hf06 to SSD_HSI_SYS_001::V1Criteria::V1_4024;
    #EvaluatedBy dependency <'HF-06>HSI-116'> from Functions::Hf06 to SSD_HSI_SYS_001::V2Criteria::V2_7041;
    #EvaluatedBy dependency <'HF-07>HSI-251'> from Functions::Hf07 to SSD_HSI_SYS_001::V2Criteria::V2_7074;
    #EvaluatedBy dependency <'HF-07>HSI-252'> from Functions::Hf07 to SSD_HSI_SYS_001::V2Criteria::V2_7075;
    #EvaluatedBy dependency <'HF-07>HSI-253'> from Functions::Hf07 to SSD_HSI_SYS_001::V2Criteria::V2_7076;
    #EvaluatedBy dependency <'HF-08>HSI-244'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7064;
    #EvaluatedBy dependency <'HF-08>HSI-245'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7065;
    #EvaluatedBy dependency <'HF-08>HSI-246'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7066;
    #EvaluatedBy dependency <'HF-08>HSI-247'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7069;
    #EvaluatedBy dependency <'HF-08>HSI-254'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7079;
    #EvaluatedBy dependency <'HF-08>HSI-255'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7080;
    #EvaluatedBy dependency <'HF-08>HSI-256'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7081;
    #EvaluatedBy dependency <'HF-08>HSI-257'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7082;
    #EvaluatedBy dependency <'HF-08>HSI-258'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_7083;
    #EvaluatedBy dependency <'HF-08>HSI-259'> from Functions::Hf08 to SSD_HSI_SYS_001::V2Criteria::V2_6058;
    #EvaluatedBy dependency <'HF-09>HSI-230'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7050;
    #EvaluatedBy dependency <'HF-09>HSI-231'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7051;
    #EvaluatedBy dependency <'HF-09>HSI-232'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7052;
    #EvaluatedBy dependency <'HF-09>HSI-233'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7053;
    #EvaluatedBy dependency <'HF-09>HSI-234'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7054;
    #EvaluatedBy dependency <'HF-09>HSI-235'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7055;
    #EvaluatedBy dependency <'HF-09>HSI-236'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7056;
    #EvaluatedBy dependency <'HF-09>HSI-237'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7057;
    #EvaluatedBy dependency <'HF-09>HSI-238'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7058;
    #EvaluatedBy dependency <'HF-09>HSI-239'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7059;
    #EvaluatedBy dependency <'HF-09>HSI-240'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7060;
    #EvaluatedBy dependency <'HF-09>HSI-241'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7061;
    #EvaluatedBy dependency <'HF-09>HSI-242'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7062;
    #EvaluatedBy dependency <'HF-09>HSI-243'> from Functions::Hf09 to SSD_HSI_SYS_001::V2Criteria::V2_7063;
    #EvaluatedBy dependency <'HF-10>HSI-208'> from Functions::Hf10 to SSD_HSI_SYS_001::V2Criteria::V2_7017;
    #EvaluatedBy dependency <'HF-10>HSI-212'> from Functions::Hf10 to SSD_HSI_SYS_001::V2Criteria::V2_7022;
    #EvaluatedBy dependency <'HF-10>HSI-249'> from Functions::Hf10 to SSD_HSI_SYS_001::V2Criteria::V2_7071;
    #EvaluatedBy dependency <'HF-10>HSI-068'> from Functions::Hf10 to SSD_HSI_SYS_001::V1Criteria::V1_6003;
    #EvaluatedBy dependency <'HF-10>HSI-077'> from Functions::Hf10 to SSD_HSI_SYS_001::V1Criteria::V1_7003;
    #EvaluatedBy dependency <'HF-11>HSI-260'> from Functions::Hf11 to SSD_HSI_SYS_001::V2Criteria::V2_7084;
    #EvaluatedBy dependency <'HF-11>HSI-069'> from Functions::Hf11 to SSD_HSI_SYS_001::V1Criteria::V1_6004;
    #EvaluatedBy dependency <'HF-11>HSI-072'> from Functions::Hf11 to SSD_HSI_SYS_001::V1Criteria::V1_6010;
    #EvaluatedBy dependency <'HF-11>HSI-073'> from Functions::Hf11 to SSD_HSI_SYS_001::V1Criteria::V1_6011;
    #EvaluatedBy dependency <'HF-11>HSI-064'> from Functions::Hf11 to SSD_HSI_SYS_001::V1Criteria::V1_5008;
    #EvaluatedBy dependency <'HF-11>HSI-034'> from Functions::Hf11 to SSD_HSI_SYS_001::V1Criteria::V1_4011;
    #EvaluatedBy dependency <'HF-12>HSI-001'> from Functions::Hf12 to SSD_HSI_SYS_001::V1Criteria::V1_3000;
    #EvaluatedBy dependency <'HF-12>HSI-005'> from Functions::Hf12 to SSD_HSI_SYS_001::V1Criteria::V1_3004;
    #EvaluatedBy dependency <'HF-12>HSI-006'> from Functions::Hf12 to SSD_HSI_SYS_001::V1Criteria::V1_3007;
    #EvaluatedBy dependency <'HF-12>HSI-007'> from Functions::Hf12 to SSD_HSI_SYS_001::V1Criteria::V1_3008;
    #EvaluatedBy dependency <'HF-12>HSI-226'> from Functions::Hf12 to SSD_HSI_SYS_001::V2Criteria::V2_7043;
    #EvaluatedBy dependency <'HF-12>HSI-227'> from Functions::Hf12 to SSD_HSI_SYS_001::V2Criteria::V2_7045;
    #EvaluatedBy dependency <'HF-12>HSI-228'> from Functions::Hf12 to SSD_HSI_SYS_001::V2Criteria::V2_7046;
    #EvaluatedBy dependency <'HF-12>HSI-229'> from Functions::Hf12 to SSD_HSI_SYS_001::V2Criteria::V2_7115;
    #EvaluatedBy dependency <'HF-12>HSI-056'> from Functions::Hf12 to SSD_HSI_SYS_001::V1Criteria::V1_5001;
    #EvaluatedBy dependency <'HF-13>HSI-067'> from Functions::Hf13 to SSD_HSI_SYS_001::V1Criteria::V1_6002;
    #EvaluatedBy dependency <'HF-13>HSI-068'> from Functions::Hf13 to SSD_HSI_SYS_001::V1Criteria::V1_6003;
    #EvaluatedBy dependency <'HF-13>HSI-070'> from Functions::Hf13 to SSD_HSI_SYS_001::V1Criteria::V1_6006;
    #EvaluatedBy dependency <'HF-13>HSI-029'> from Functions::Hf13 to SSD_HSI_SYS_001::V1Criteria::V1_4006;
    #EvaluatedBy dependency <'HF-14>HSI-004'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_3003;
    #EvaluatedBy dependency <'HF-14>HSI-051'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_4029;
    #EvaluatedBy dependency <'HF-14>HSI-052'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_4030;
    #EvaluatedBy dependency <'HF-14>HSI-053'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_4031;
    #EvaluatedBy dependency <'HF-14>HSI-075'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_7001;
    #EvaluatedBy dependency <'HF-14>HSI-076'> from Functions::Hf14 to SSD_HSI_SYS_001::V1Criteria::V1_7002;
    #EvaluatedBy dependency <'HF-15>HSI-225'> from Functions::Hf15 to SSD_HSI_SYS_001::V2Criteria::V2_7042;
    #EvaluatedBy dependency <'HF-15>HSI-021'> from Functions::Hf15 to SSD_HSI_SYS_001::V1Criteria::V1_3016;
    #EvaluatedBy dependency <'HF-15>HSI-022'> from Functions::Hf15 to SSD_HSI_SYS_001::V1Criteria::V1_3017;
    #EvaluatedBy dependency <'HF-15>HSI-023'> from Functions::Hf15 to SSD_HSI_SYS_001::V1Criteria::V1_3018;
    #EvaluatedBy dependency <'HF-15>HSI-027'> from Functions::Hf15 to SSD_HSI_SYS_001::V1Criteria::V1_4004;
    #EvaluatedBy dependency <'HF-15>HSI-033'> from Functions::Hf15 to SSD_HSI_SYS_001::V1Criteria::V1_4010;
    occurrence def CrewDay {
        doc /* 乗員の1日（覚醒 16 h・睡眠 8 h）。区分の時刻は起床からの時間 */
        timeslice <'CD-01'> cd01 { doc /* 起床後の活動（照明・通信の再構成、LiOH の交換、朝食の調理と片付け、家事）：起床 + 0 h から 3 h */ }
        timeslice <'CD-02'> cd02 { doc /* 作業（ペイロード・機体の運用）：起床 + 3 h から 3 h */ }
        timeslice <'CD-03'> cd03 { doc /* 昼食：起床 + 6 h から 1 h */ }
        timeslice <'CD-04'> cd04 { doc /* 作業（ペイロード・機体の運用）：起床 + 7 h から 2.5 h */ }
        timeslice <'CD-05'> cd05 { doc /* 運動（処方の運動、CDR・PLT・MS2 は少なくとも1日おき）：起床 + 9.5 h から 0.5 h */ }
        timeslice <'CD-06'> cd06 { doc /* 夕食：起床 + 10 h から 1 h */ }
        timeslice <'CD-07'> cd07 { doc /* 作業（翌日の装備の準備・記録）：起床 + 11 h から 2 h */ }
        timeslice <'CD-08'> cd08 { doc /* 就寝前の活動（家事・WCS の清掃・LiOH の交換・PMC・睡眠の姿勢への移行）：起床 + 13 h から 3 h */ }
        timeslice <'CD-09'> cd09 { doc /* 睡眠（全員が同時に眠り、1人がヘッドセットを着ける）：起床 + 16 h から 8 h */ }
        first cd01 then cd02;
        first cd02 then cd03;
        first cd03 then cd04;
        first cd04 then cd05;
        first cd05 then cd06;
        first cd06 then cd07;
        first cd07 then cd08;
        first cd08 then cd09;
    }
    // ---- アクタ
    part def <'ACT-01'> Actor01 { doc /* 乗員 */ }
    part def <'ACT-02'> Actor02 { doc /* 指揮官（CDR） */ }
    part def <'ACT-03'> Actor03 { doc /* 航空医官（地上） */ }
    part def <'ACT-04'> Actor04 { doc /* 飛行管制（MCC・フライトディレクタ） */ }
    part def <'ACT-05'> Actor05 { doc /* 栄養士・食料系の担当（地上） */ }
    part def <'ACT-06'> Actor06 { doc /* 着陸場の医療担当官・救急医療（EMSS） */ }
    // ---- ユースケース（主体は乗員系）
    use case def <'UC-H01'> UcUCH01 {
        doc /* 食事をとる（ギャレーで復水・加温する）。機能：HF-01・HF-02 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H02'> UcUCH02 {
        doc /* 試食して個人のメニューを作る（飛行前）。機能：HF-01 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act05 : Actor05;
    }
    use case def <'UC-H03'> UcUCH03 {
        doc /* 飲料水を飲む（ヨウ素を除いた冷水・温水）。機能：HF-02 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H04'> UcUCH04 {
        doc /* 身だしなみを整え体を拭く。機能：HF-03・HF-10 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H05'> UcUCH05 {
        doc /* WCS で排泄する（使えなければ予備の袋を使う）。機能：HF-04・HF-10 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H06'> UcUCH06 {
        doc /* 眠る（寝袋・睡眠キット、1人がヘッドセットで地上の呼出しを受ける）。機能：HF-05・HF-11 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act04 : Actor04;
    }
    use case def <'UC-H07'> UcUCH07 {
        doc /* 処方の運動をする（自転車エルゴメータ）。機能：HF-06 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act03 : Actor03;
    }
    use case def <'UC-H08'> UcUCH08 {
        doc /* 清掃し、ごみを処理する。機能：HF-08 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H09'> UcUCH09 {
        doc /* 物と私物（PPK）を取り出し・収納する。機能：HF-09・HF-07・HF-11 */
        subject crew : CREW;
        actor act01 : Actor01;
    }
    use case def <'UC-H10'> UcUCH10 {
        doc /* 医療キットで処置する（航空医官と相談する）。機能：HF-12 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act02 : Actor02;
        actor act03 : Actor03;
    }
    use case def <'UC-H11'> UcUCH11 {
        doc /* 航空医官と私的に相談する（PMC）。機能：HF-13・HF-10 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act02 : Actor02;
        actor act03 : Actor03;
        actor act04 : Actor04;
    }
    use case def <'UC-H12'> UcUCH12 {
        doc /* 被ばくを測る（受動線量計を着け、非常時に能動線量計を読み出す）。機能：HF-14 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act04 : Actor04;
    }
    use case def <'UC-H13'> UcUCH13 {
        doc /* 帰還に備える（水分負荷・耐Gスーツの加圧）。機能：HF-15 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act03 : Actor03;
    }
    use case def <'UC-H14'> UcUCH14 {
        doc /* 着陸後に医学の検査を受ける（傷病なら搬送する）。機能：HF-15・HF-12 */
        subject crew : CREW;
        actor act01 : Actor01;
        actor act03 : Actor03;
        actor act06 : Actor06;
    }
}
