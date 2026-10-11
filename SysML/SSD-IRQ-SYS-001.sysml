// SysML v2 テキスト：インタフェース要求（上位の IF）と導出・充足・検証
// SSD-IRQ-SYS-001 インタフェース要求書（上位の IF：IF-SYS・IF-ORB） の表から生成（lib/build_docs_bv.py・rev_bv/bvdata.py）。根拠の頁は SSD-IRQ-SYS-001 にある。
package SSD_IRQ_SYS_001 {
    doc /* SSD-IRQ-SYS-001 インタフェース要求書（上位の IF：IF-SYS・IF-ORB）。インタフェース要求を requirement、上位の要求からの導出、割付先の IF による充足、要求ごとの検証ケースと結果で示す。図212・213 と同じ内容。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_RQM_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::*;
    // ---- インタフェース要求（IF ごとに1件）
    package <'IRQ'> InterfaceRequirements {
        doc /* 上位の IF（IF-SYS・IF-ORB）のインタフェース要求。値と根拠は IF 特性表（SSD-ICD-ORB-001）による */
        requirement <'IRQ-SYS-01'> IRQ_SYS_01 {
            subject s : Parts::Part;
            doc /* ET はオービタへ液体水素・液体酸素を、SSME 104% 時に LOX 約2,787 lb/s・LH2 465 lb/s で、LOX・LH2 各1本の17インチ配管により加圧供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "LOX 約2,787 lb/s・LH2 465 lb/s（SSME 104%時）、LOX・LH2 各1本（17インチ配管）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-02'> IRQ_SYS_02 {
            subject s : Parts::Part;
            doc /* SRB と ET の間で構造荷重（スタック全重量と SRB 推力）を、SRB 推力 約3,300,000 lb/本のもと、各 SRB の前1点・後3本ストラットの結合で、2本の SRB のそれぞれから伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "推力 約3,300,000 lb/本、結合 前1点・後3本ストラット、SRB 2本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-03'> IRQ_SYS_03 {
            subject s : Parts::Part;
            doc /* オービタは SRB へ点火・分離指令と TVC 指令を電気信号で、SRB MDM 4台・ATVC 4チャネル・点火信号 28 V直流により、TVC は4チャネルのサーボ弁の力加算多数決として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "SRB MDM 4台・ATVC 4チャネル・点火信号 28 V直流、4チャネル（力加算多数決）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-04'> IRQ_SYS_04 {
            subject s : Parts::Part;
            doc /* オービタは NET との間で S帯 PM・Ku帯の RF（音声・テレメトリ・コマンド）を、S帯 FL 72 kbps・RL 192 kbps、Ku帯 50 Mbps で、S帯 PM トランスポンダ2台の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "S帯 FL 72 kbps・RL 192 kbps、Ku帯 50 Mbps、S帯 PM トランスポンダ2台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-05'> IRQ_SYS_05 {
            subject s : Parts::Part;
            doc /* NET は MCC との間で運用ダウンリンクとコマンドアップリンク（データ・音声）を、TDRSS 経由の覆域 約80% で、TDRS 地上端局2（WSGT・STGT）により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "TDRSS 経由の覆域 約80%、TDRS 地上端局2（WSGT・STGT）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-06'> IRQ_SYS_06 {
            subject s : Parts::Part;
            doc /* オービタは LPS との間でシリアルディジタルデータを、打上げデータバス2本（双方向）で、打上げ用 MDM の2ポートの自動切替の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "打上げデータバス 2本（双方向）、打上げ用 MDM 2ポート（自動切替）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-07'> IRQ_SYS_07 {
            subject s : Parts::Part;
            doc /* オービタは ET との間で構造荷重を、結合点3（前部1・後部2）、前部 Xo = 378 の結合金具で伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "結合点3（前部1・後部2）、前部 Xo = 378"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-08'> IRQ_SYS_08 {
            subject s : Parts::Part;
            doc /* オービタは ET へ ET・SRB との情報を含む信号と電力を、28 V 直流（上限32 V・下限24 V）で、電気アンビリカル2本を通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "28 V直流（上限32 V・下限24 V）、電気アンビリカル2本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-09'> IRQ_SYS_09 {
            subject s : Parts::Part;
            doc /* LPS はオービタへ LOX・LH2、He、28 V直流、冷却・パージを、He 加圧 LOX 21 psig・LH2 42 psig、28 V直流で、T-0 アンビリカル左右2基を通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "He加圧 LOX 21 psig・LH2 42 psig、28 V直流、T-0アンビリカル左右2基"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-SYS-10'> IRQ_SYS_10 {
            subject s : Parts::Part;
            doc /* LPS は SRB へ構造荷重の固定と解放の起爆信号を、ポスト4本/SRB（計8本）・ボルト長28 in・径3.5 in で、各ナットの NSI 起爆器2個の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "ポスト4本/SRB（計8本）、ボルト長28 in・径3.5 in、各ナットに NSI 起爆器2個"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-01'> IRQ_ORB_01 {
            subject s : Parts::Part;
            doc /* CT は DPS へダウンリストとコマンドをシリアルディジタルで、GPC ダウンリスト等 128 kbps（運用データ 192 kbps 中）、PCMMU 2台・NSP 2台（各1台稼働）の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "GPC ダウンリスト等 128 kbps（運用データ 192 kbps 中）、PCMMU 2台・NSP 2台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-02'> IRQ_ORB_02 {
            subject s : Parts::Part;
            doc /* DPS は GNC へ GNC データと指令を FC データバス8本（4ストリング）・FF/FA MDM 各4台で、PASS GPC 4台の冗長セットと BFS 1台の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "FC データバス8本（4ストリング）・FF/FA MDM 各4台、PASS GPC 4台＋BFS 1台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-03'> IRQ_ORB_03 {
            subject s : Parts::Part;
            doc /* GNC は RCS へジェット噴射指令を電気信号で、ジェット44基（主38基 870 lb・バーニア6基 24 lb）に対し、主ジェットは多重の冗長でバーニアは冗長なしとして伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "ジェット44基（主38基 870 lb・バーニア6基 24 lb）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-04'> IRQ_ORB_04 {
            subject s : Parts::Part;
            doc /* GNC は OMS へ噴射・ジンバル位置指令を MDM 経由で、エンジン2基（各6,087 lb）・ジンバル ピッチ6°・ヨー7° に対し、各アクチュエータの主・副モータ2台の冗長により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "エンジン2基（各6,087 lb）、ジンバル ピッチ6°・ヨー7°、主・副モータ各2台"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-05'> IRQ_ORB_05 {
            subject s : Parts::Part;
            doc /* OMS は RCS へ OMS 推進薬（MMH・N2O4）を、1ポッドあたり1,000 lb超の供給が可能な量で、並列のクロスフィード弁2個（A・B）の冗長により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "1ポッドあたり1,000 lb超、クロスフィード弁2個（A・B）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-06'> IRQ_ORB_06 {
            subject s : Parts::Part;
            doc /* DPS は MPS へ SSME 指令とデータを FC データバス経由で、EIU 3台・指令4入力→3出力・データ経路2により、指令は3経路の2/3多数決、EIU は各 SSME 専用として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "EIU 3台、指令4入力→3出力、データ経路2、指令3経路（2/3多数決）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-07'> IRQ_ORB_07 {
            subject s : Parts::Part;
            doc /* APU は MPS へ作動油を、公称3,000 psi・0〜63 gpm/系統で、TVC アクチュエータ6基に、独立3系統（各アクチュエータは主・副2系統）の冗長により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "公称3,000 psi・0〜63 gpm/系統、TVC アクチュエータ6基"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-08'> IRQ_ORB_08 {
            subject s : Parts::Part;
            doc /* APU は GNC へ作動油を、公称3,000 psi・0〜63 gpm/系統で、空力舵面7面に、独立3系統と切替弁による主系から待機系への切替の冗長により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "公称3,000 psi・0〜63 gpm/系統、空力舵面7面"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-09'> IRQ_ORB_09 {
            subject s : Parts::Part;
            doc /* EPS は ECLSS へ超臨界の極低温酸素をガス状態で、供給圧 803〜883 psia・最大約25 lb/h（各系統）で、PCS 1・PCS 2 の2系統（クロスオーバ付き）により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "供給圧 803〜883 psia、最大約25 lb/h（各系統）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-10'> IRQ_ORB_10 {
            subject s : Parts::Part;
            doc /* EPS は ECLSS へ燃料電池の生成水（飲料水）を、最大25 lb/h（約0.77 lb/h/kW）・タンク165 lb×4で、主経路とタンクBへの並列の冗長経路により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "最大25 lb/h（約0.77 lb/h/kW）、タンク165 lb×4"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-11'> IRQ_ORB_11 {
            subject s : Parts::Part;
            doc /* EPS は ECLSS へ、燃料電池の排熱を燃料電池冷却材からフレオン21冷却ループ（2系統）へ、セルスタック運転温度 約200°F（負荷に依存）で伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "セルスタック運転温度 約200°F、フレオンループ2系統"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-12'> IRQ_ORB_12 {
            subject s : Parts::Part;
            doc /* ECLSS は APU へ、フレオン冷却ループの熱を油圧作動油（MIL-H-83282）へ、熱交換器入口 105°F 未満で通過・115°F 超でバイパスの条件で、油圧系ごとの熱交換器（3系統）を通して伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "入口 105°F 未満で通過、115°F 超でバイパス、3系統"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-13'> IRQ_ORB_13 {
            subject s : Parts::Part;
            doc /* ECLSS は DPS へ、アビオニクスの排熱を水冷却ループ（2系統、通常は1系統を使用）のコールドプレートと空冷で、水ポンプ出口 63.0±2.5°F・ベイ出口空気 130°F 超で注意灯の条件で除くこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "水ポンプ出口 63.0±2.5°F、ベイ出口空気 130°F 超で注意灯、水ループ2系統"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-14'> IRQ_ORB_14 {
            subject s : Parts::Part;
            doc /* EPS は全負荷へ、28 V 直流電力を主母線 27〜32 V 直流・燃料電池1基あたり連続最大10 kW の条件で、独立した3系統（母線タイで相互接続可）から供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "主母線 27〜32 V直流、燃料電池1基あたり連続最大10 kW、3系統"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-15'> IRQ_ORB_15 {
            subject s : Parts::Part;
            doc /* ET は MPS へ、液体水素・液体酸素を17インチ管（LO2・LH2 各1本）で、LO2 約2,787 lb/s・LH2 465 lb/s（104%時）の流量で供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "17インチ管、LO2 約2,787 lb/s・LH2 465 lb/s（104%時）、2本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-16'> IRQ_ORB_16 {
            subject s : Parts::Part;
            doc /* CT は NET との間で、S帯 PM・Ku帯・UHF の RF（音声・テレメトリ・指令）を、S帯 72/192 kbps・Ku帯 50 Mbps・UHF 259.7 MHz で、S帯 PM トランスポンダ2台の冗長により双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "S帯 72/192 kbps、Ku帯 50 Mbps、UHF 259.7 MHz、トランスポンダ2台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-17'> IRQ_ORB_17 {
            subject s : Parts::Part;
            doc /* DPS は LPS との間で、GPC 5台と GSE/LPS を結ぶ双方向のシリアルディジタルの打上げデータバス2本（LF1・LA1 のポートは自動切替）により、データ・指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "双方向データバス2本、ポートは自動切替"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ORB-18'> IRQ_ORB_18 {
            subject s : Parts::Part;
            doc /* DPS は SRB へ、データ・指令を打上げデータバス経由で、SRB の MDM 4台（LL1・LL2・LR1・LR2）に各 SRB 2台の構成で伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "SRB MDM 4台（LL1・LL2・LR1・LR2）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ORB-19'> IRQ_ORB_19 {
            subject s : Parts::Part;
            doc /* ECLSS は DPS との間で、計測信号・煙警報・GPC 指令を、煙警報 2,000±200 μg/m3・水ポンプ 4時間ごと6分運転の条件で、煙検知器 A・B の2グループにより双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "煙警報 2,000±200 μg/m3、水ポンプ 4時間ごと6分運転、煙検知器 A・B"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-20'> IRQ_ORB_20 {
            subject s : Parts::Part;
            doc /* EPS は DPS との間で、EPS 計測・SM 警報・パージ指令を、パージ弁 各2分・加温最大27分・主母線 27 V 以下で SM 警報の条件で、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "パージ弁 各2分・加温最大27分、主母線27 V以下で SM 警報"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-21'> IRQ_ORB_21 {
            subject s : Parts::Part;
            doc /* GNC は MPS へ、SSME 用6基のアナログ指令電圧（ピッチ最大10.5°・ヨー最大8.5°）を、4台の ATVC の4チャネル（力加算の多数決）により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "SSME 用6基、ピッチ最大10.5°・ヨー最大8.5°、4チャネル"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-22'> IRQ_ORB_22 {
            subject s : Parts::Part;
            doc /* GNC は SRB へ、SRB 用4基のアナログ指令電圧（ロック／チルト ±5°、ピッチ・ヨー換算 ±7°）を、4台の ATVC の4チャネル（2チャネルを超えるバイパス禁止）により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "SRB 用4基、ロック／チルト ±5°（ピッチ・ヨー換算 ±7°）、4チャネル"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-23'> IRQ_ORB_23 {
            subject s : Parts::Part;
            doc /* APU は DPS との間で、APU 計測と循環ポンプ制御のデータ・指令を、燃料量100%＝350 lb・循環ポンプは0°F/−10°F 未満で起動の条件で、APU 3基（循環ポンプは同時に1台）について伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "燃料量100%＝350 lb、循環ポンプは0°F/−10°F 未満で起動"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-24'> IRQ_ORB_24 {
            subject s : Parts::Part;
            doc /* CT は GNC へ、目標の角度・角速度・距離・距離変化率のデータを、スパイラル探索 最大30°・指定角の更新は2秒ごとで、Ku帯レーダ系から MDM 経由で伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "スパイラル探索 最大30°、指定角の更新は2秒ごと"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-25'> IRQ_ORB_25 {
            subject s : Parts::Part;
            doc /* DPS は ET へ、火工品の起爆指令を MEC から PIC へ、分離シーケンス約20秒・角速度0.7°/s 超で自動分離を禁止の条件で、MEC 2台により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "分離シーケンス約20秒、角速度0.7°/s 超で自動分離を禁止、MEC 2台"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-26'> IRQ_ORB_26 {
            subject s : Parts::Part;
            doc /* DPS は SRB へ、火工品の点火・分離指令を MEC から PIC へ 28 V 直流信号で、PIC コンデンサ 40 V 直流（最低20 V）・分離は30 ms 以内の条件で、MEC 2台と冗長な NSI 起爆器により伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "PIC コンデンサ 40 V直流（最低20 V）、分離は30 ms以内"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-27'> IRQ_ORB_27 {
            subject s : Parts::Part;
            doc /* EPS は ET へ、ET の計装・ヒータ用の +28 V 直流電力を、定常 26〜32 V・過渡 22.7〜36.7 V で、1系統により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "+28 V直流（定常 26〜32 V、過渡 22.7〜36.7 V）、1系統"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-28'> IRQ_ORB_28 {
            subject s : Parts::Part;
            doc /* EPS は SRB へ、SRB 母線 A・B・C の 28 V 直流電力を、公称28 V直流（上限32 V・下限24 V）で、3系統（主母線 C から A・B、B から C がバックアップ）により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "公称28 V直流（上限32 V・下限24 V）、3系統"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ORB-29'> IRQ_ORB_29 {
            subject s : Parts::Part;
            doc /* LPS は MPS へ、液体酸素・液体水素・ヘリウムを T-0 アンビリカル経由で、8インチ充填・排出弁・ET 加圧 LO2 21 psig・LH2 42 psig の条件で、LO2・LH2 各1系統（充填・排出弁2個直列）により供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "8インチ充填・排出弁、ET 加圧 LO2 21 psig・LH2 42 psig"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-30'> IRQ_ORB_30 {
            subject s : Parts::Part;
            doc /* LPS は EPS へ、燃料電池の反応剤の液体水素・液体酸素を、供給圧 水素 約280 psia・酸素 約960 psia で、T-2分35秒に充填を終えるまで供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "供給圧 水素 約280 psia・酸素 約960 psia、T-2分35秒で終了"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-31'> IRQ_ORB_31 {
            subject s : Parts::Part;
            doc /* LPS は EPS へ 28 V 直流の地上電源を T-0 アンビリカルで供給し、T-50秒で燃料電池（電流約220 A）へ移行させること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "28 V 直流、T-50秒で燃料電池へ移行（FC電流約220 A）、主母線3本（MN A は左、MN B・C は右の T-0）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-32'> IRQ_ORB_32 {
            subject s : Parts::Part;
            doc /* LPS は ECLSS へ、GSE 熱交換器で冷やした冷却をフレオンループ2系統へ与え、キャビン 95°F 超または FC 冷却材戻り 140°F 超を冷却喪失の判定とすること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "喪失判定はキャビン 95°F 超・FC 冷却材戻り 140°F 超、フレオンループ2系統"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-33'> IRQ_ORB_33 {
            subject s : Parts::Part;
            doc /* LPS は STR へ冷却空気（乾燥空気または窒素）のパージを接地後45分以内に始めて供給し、パージ空気の温度を約45°F とすること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "接地後45分以内に開始、パージ空気約45°F（STS-58 試験）"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-34'> IRQ_ORB_34 {
            subject s : Parts::Part;
            doc /* ECLSS は GNC へキャビン空気の強制空冷を、IMU ファン3台（常用1）とベイファン各2台（常用1）で供給し、ベイ出口 130°F 超で警報を出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "ベイ出口 130°F 超で警報、TACAN は冷却喪失の5分以内に短絡、IMU ファン3台・ベイファン各2台（常用1）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-35'> IRQ_ORB_35 {
            subject s : Parts::Part;
            doc /* ECLSS は EPS へ水冷却ループ2系統（常用1）とフレオンループ2系統のコールドプレートで冷却を供給し、FC 冷却材出口を 190〜210°F に保って FC 熱交換器でフレオンへ放熱させること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "FC 冷却材出口 190〜210°F、水ループ2系統（常用1）、フレオンループ2系統"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-36'> IRQ_ORB_36 {
            subject s : Parts::Part;
            doc /* STR は ET へ構造荷重を結合点3か所（前部1・後部2）で伝え、角速度が 0.7°/s を超えるときは分離を禁止すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "結合点3か所（前部1・後部2）、分離禁止は角速度 0.7°/s 超"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-37'> IRQ_ORB_37 {
            subject s : Parts::Part;
            doc /* TPS は STR へ再突入加熱を受動で遮り、表面が最大約 3,000°F になるときも外板を 350°F 以下に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "外板 350°F 以下、表面は最大約 3,000°F"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-38'> IRQ_ORB_38 {
            subject s : Parts::Part;
            doc /* MECH は STR へ、各扉のヒンジ13（せん断5・浮動8）とラッチ計32で構造荷重を伝え、ラッチ1群が開故障でも安全率 1.4 で再突入できること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "各扉ヒンジ13（せん断5・浮動8）、ラッチ計32、ラッチ1群の開故障でも再突入可（安全率1.4）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-4（離脱準備）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-39'> IRQ_ORB_39 {
            subject s : Parts::Part;
            doc /* APU は MECH へ 3,000 psi（制動 2,000 psig）の油圧作動油を3系統で供給し、約 1,000 psi 未満では系3へ切り替えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "3,000 psi（制動 2,000 psig）、約 1,000 psi 未満で系3へ、3系統"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-40'> IRQ_ORB_40 {
            subject s : Parts::Part;
            doc /* DPS は MECH へ GPC から MDM を経て MCA へ、アクチュエータごとの三相交流モータ2基へ別々の MDM から指令を出し、ベント扉の開閉を5秒で行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "三相交流モータ2基／アクチュエータ、ベント扉開閉5秒、各モータを別の MDM から指令（2重）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-41'> IRQ_ORB_41 {
            subject s : Parts::Part;
            doc /* 各系は CW へ変換器の計測信号を信号調整器または FF MDM を経て送り、主C/W の入力120（000〜119）をハードウェアで、バックアップ C/W をソフトウェアで監視させること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "主C/W 入力120（000〜119）、F7 の主C/W専用灯39、2重（主＝ハードウェア、バックアップ＝ソフトウェア）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-42'> IRQ_ORB_42 {
            subject s : Parts::Part;
            doc /* DPS は CW へ MDM 経由の計算機入力と SM アラート信号を送り、5分を超える処置を要する事象をクラス3（SM ALERT）として、SM FDA・GNC・BFS の3系統のソフトウェアで出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "5分を超える処置を要する事象はクラス3（SM ALERT）、3系統（SM FDA・GNC・BFS）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-43'> IRQ_ORB_43 {
            subject s : Parts::Part;
            doc /* CW は CT へ警報音を、サイレン・クラクソン・C/W・SM の4種のトーンで、トーン発生器 A・B の2重のもと C/W ループで送ること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "4種のトーン（サイレン・クラクソン・C/W・SM）、トーン発生器 A・B の2重、ACCU は内部冗長"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-44'> IRQ_ORB_44 {
            subject s : Parts::Part;
            doc /* ECLSS は CREW へ飲料水を、タンク A の供給水系統から、70〜120°F で12フィートのフレックスラインを通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "70〜120°F、12フィートのフレックスライン、タンク A の供給水系統1系統"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-45'> IRQ_ORB_45 {
            subject s : Parts::Part;
            doc /* ECLSS は EVA へ SCU 経由で酸素・冷却水・給排水・電力・有線通信を、EMU 2着分に酸素を 850±50 psig で充填し、水ホース3本と高圧 O2 ホース1本で供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "O2 充填 850±50 psig、水ホース3本・高圧 O2 ホース1本、EMU 2着分（O2 はエアロック酸素1・2）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-46'> IRQ_ORB_46 {
            subject s : Parts::Part;
            doc /* CT は EVA へ UHF の音声・データを 417.1 または 414.2 MHz の TDMA 5スロットで、低出力約 80 mW で伝え、主・予備の無線機（EVA STRING 1/2）を持つこと。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "417.1 または 414.2 MHz、TDMA 5スロット、低出力約 80 mW、主・予備の無線機（EVA STRING 1/2）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ORB-47'> IRQ_ORB_47 {
            subject s : Parts::Part;
            doc /* STR は PLS へ構造荷重を取付け金具で伝え、RMS を肩（Xo 679.5）と台座（Xo 911.05・1189・1256.5）の4か所で支えること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "RMS 支持4か所（肩 Xo 679.5、台座 911.05・1189・1256.5）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-48'> IRQ_ORB_48 {
            subject s : Parts::Part;
            doc /* DPS は PLS へ SM GPC と MCIU のデータ・指令を打上げデータバス1本で双方向に伝え、MCIU は1台とし、予備を搭載して軌道上で交換できること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "打上げデータバス1本（軌道上で RMS 制御器と接続）、MCIU 1台（予備を搭載し軌道上で交換可）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ORB-49'> IRQ_ORB_49 {
            subject s : Parts::Part;
            doc /* CT は PLS へ RS-170A（NTSC）のカラー映像と同期信号に重畳したカメラ指令を伝え、RMS カメラは手首・肘の同時に1台を使い、同期発生器2台を主母線 A・B から給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-SYS-001"; valueText = "RS-170A（NTSC）カラー映像、RMS カメラは手首・肘の同時1台、同期発生器2台（主母線 A・B）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    // ---- 導出（上位の L1・L2 の要求 → インタフェース要求）
    package Derivation {
        #derivation connection <'REQ-ET-01>IRQ-SYS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> InterfaceRequirements::IRQ_SYS_01;
        }
        #derivation connection <'REQ-MPS-07>IRQ-SYS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
            end #derive ::> InterfaceRequirements::IRQ_SYS_01;
        }
        #derivation connection <'REQ-SRB-01>IRQ-SYS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
            end #derive ::> InterfaceRequirements::IRQ_SYS_02;
        }
        #derivation connection <'REQ-ET-04>IRQ-SYS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_SYS_02;
        }
        #derivation connection <'REQ-DPS-09>IRQ-SYS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
            end #derive ::> InterfaceRequirements::IRQ_SYS_03;
        }
        #derivation connection <'REQ-GNC-11>IRQ-SYS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> InterfaceRequirements::IRQ_SYS_03;
        }
        #derivation connection <'REQ-SRB-04>IRQ-SYS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> InterfaceRequirements::IRQ_SYS_03;
        }
        #derivation connection <'REQ-CT-01>IRQ-SYS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> InterfaceRequirements::IRQ_SYS_04;
        }
        #derivation connection <'REQ-CT-02>IRQ-SYS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_02;
            end #derive ::> InterfaceRequirements::IRQ_SYS_04;
        }
        #derivation connection <'REQ-CT-01>IRQ-SYS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> InterfaceRequirements::IRQ_SYS_05;
        }
        #derivation connection <'REQ-CT-03>IRQ-SYS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> InterfaceRequirements::IRQ_SYS_05;
        }
        #derivation connection <'REQ-DPS-07>IRQ-SYS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_SYS_06;
        }
        #derivation connection <'REQ-DPS-06>IRQ-SYS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> InterfaceRequirements::IRQ_SYS_06;
        }
        #derivation connection <'REQ-STR-06>IRQ-SYS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> InterfaceRequirements::IRQ_SYS_07;
        }
        #derivation connection <'REQ-ET-04>IRQ-SYS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_SYS_07;
        }
        #derivation connection <'REQ-ET-05>IRQ-SYS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> InterfaceRequirements::IRQ_SYS_08;
        }
        #derivation connection <'REQ-SRB-06>IRQ-SYS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_06;
            end #derive ::> InterfaceRequirements::IRQ_SYS_08;
        }
        #derivation connection <'REQ-SYS-16>IRQ-SYS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
            end #derive ::> InterfaceRequirements::IRQ_SYS_09;
        }
        #derivation connection <'REQ-ET-05>IRQ-SYS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> InterfaceRequirements::IRQ_SYS_09;
        }
        #derivation connection <'REQ-SRB-03>IRQ-SYS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
            end #derive ::> InterfaceRequirements::IRQ_SYS_10;
        }
        #derivation connection <'REQ-SRB-04>IRQ-SYS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> InterfaceRequirements::IRQ_SYS_10;
        }
        #derivation connection <'REQ-CT-08>IRQ-ORB-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_01;
        }
        #derivation connection <'REQ-CT-09>IRQ-ORB-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
            end #derive ::> InterfaceRequirements::IRQ_ORB_01;
        }
        #derivation connection <'REQ-DPS-06>IRQ-ORB-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_02;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_02;
        }
        #derivation connection <'REQ-RCS-04>IRQ-ORB-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_03;
        }
        #derivation connection <'REQ-RCS-06>IRQ-ORB-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_03;
        }
        #derivation connection <'REQ-OMS-08>IRQ-ORB-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_04;
        }
        #derivation connection <'REQ-GNC-09>IRQ-ORB-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
            end #derive ::> InterfaceRequirements::IRQ_ORB_04;
        }
        #derivation connection <'REQ-OMS-07>IRQ-ORB-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_05;
        }
        #derivation connection <'REQ-RCS-09>IRQ-ORB-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
            end #derive ::> InterfaceRequirements::IRQ_ORB_05;
        }
        #derivation connection <'REQ-DPS-08>IRQ-ORB-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_06;
        }
        #derivation connection <'REQ-MPS-05>IRQ-ORB-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_06;
        }
        #derivation connection <'REQ-APU-05>IRQ-ORB-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_07;
        }
        #derivation connection <'REQ-GNC-11>IRQ-ORB-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> InterfaceRequirements::IRQ_ORB_07;
        }
        #derivation connection <'REQ-APU-05>IRQ-ORB-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_08;
        }
        #derivation connection <'REQ-GNC-10>IRQ-ORB-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
            end #derive ::> InterfaceRequirements::IRQ_ORB_08;
        }
        #derivation connection <'REQ-EPS-11>IRQ-ORB-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_11;
            end #derive ::> InterfaceRequirements::IRQ_ORB_09;
        }
        #derivation connection <'REQ-ECLSS-01>IRQ-ORB-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_09;
        }
        #derivation connection <'REQ-EPS-16>IRQ-ORB-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
            end #derive ::> InterfaceRequirements::IRQ_ORB_10;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ORB-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ORB_10;
        }
        #derivation connection <'REQ-EPS-15>IRQ-ORB-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
            end #derive ::> InterfaceRequirements::IRQ_ORB_11;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ORB-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_11;
        }
        #derivation connection <'REQ-APU-06>IRQ-ORB-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_12;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ORB-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_12;
        }
        #derivation connection <'REQ-ECLSS-07>IRQ-ORB-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_13;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ORB-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_13;
        }
        #derivation connection <'REQ-EPS-03>IRQ-ORB-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_14;
        }
        #derivation connection <'REQ-EPS-06>IRQ-ORB-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_14;
        }
        #derivation connection <'REQ-MPS-07>IRQ-ORB-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_15;
        }
        #derivation connection <'REQ-ET-01>IRQ-ORB-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_15;
        }
        #derivation connection <'REQ-CT-01>IRQ-ORB-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_16;
        }
        #derivation connection <'REQ-CT-03>IRQ-ORB-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_16;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_17;
        }
        #derivation connection <'REQ-SYS-10>IRQ-ORB-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_10;
            end #derive ::> InterfaceRequirements::IRQ_ORB_17;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_18;
        }
        #derivation connection <'REQ-SRB-04>IRQ-ORB-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_18;
        }
        #derivation connection <'REQ-ECLSS-11>IRQ-ORB-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> InterfaceRequirements::IRQ_ORB_19;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_19;
        }
        #derivation connection <'REQ-EPS-14>IRQ-ORB-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
            end #derive ::> InterfaceRequirements::IRQ_ORB_20;
        }
        #derivation connection <'REQ-EPS-06>IRQ-ORB-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_20;
        }
        #derivation connection <'REQ-GNC-11>IRQ-ORB-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> InterfaceRequirements::IRQ_ORB_21;
        }
        #derivation connection <'REQ-MPS-12>IRQ-ORB-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> InterfaceRequirements::IRQ_ORB_21;
        }
        #derivation connection <'REQ-GNC-11>IRQ-ORB-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> InterfaceRequirements::IRQ_ORB_22;
        }
        #derivation connection <'REQ-SRB-05>IRQ-ORB-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_22;
        }
        #derivation connection <'REQ-APU-06>IRQ-ORB-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_23;
        }
        #derivation connection <'REQ-APU-02>IRQ-ORB-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
            end #derive ::> InterfaceRequirements::IRQ_ORB_23;
        }
        #derivation connection <'REQ-CT-03>IRQ-ORB-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_24;
        }
        #derivation connection <'REQ-GNC-05>IRQ-ORB-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_24;
        }
        #derivation connection <'REQ-DPS-09>IRQ-ORB-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
            end #derive ::> InterfaceRequirements::IRQ_ORB_25;
        }
        #derivation connection <'REQ-ET-08>IRQ-ORB-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_25;
        }
        #derivation connection <'REQ-DPS-09>IRQ-ORB-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
            end #derive ::> InterfaceRequirements::IRQ_ORB_26;
        }
        #derivation connection <'REQ-SRB-04>IRQ-ORB-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_26;
        }
        #derivation connection <'REQ-EPS-01>IRQ-ORB-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_27;
        }
        #derivation connection <'REQ-ET-05>IRQ-ORB-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_27;
        }
        #derivation connection <'REQ-SRB-06>IRQ-ORB-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_28;
        }
        #derivation connection <'REQ-SYS-16>IRQ-ORB-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
            end #derive ::> InterfaceRequirements::IRQ_ORB_28;
        }
        #derivation connection <'REQ-MPS-07>IRQ-ORB-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_29;
        }
        #derivation connection <'REQ-ET-05>IRQ-ORB-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_29;
        }
        #derivation connection <'REQ-EPS-10>IRQ-ORB-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
            end #derive ::> InterfaceRequirements::IRQ_ORB_30;
        }
        #derivation connection <'REQ-EPS-12>IRQ-ORB-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_12;
            end #derive ::> InterfaceRequirements::IRQ_ORB_30;
        }
        #derivation connection <'REQ-EPS-02>IRQ-ORB-31'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_02;
            end #derive ::> InterfaceRequirements::IRQ_ORB_31;
        }
        #derivation connection <'REQ-SYS-16>IRQ-ORB-31'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_16;
            end #derive ::> InterfaceRequirements::IRQ_ORB_31;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ORB-32'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_32;
        }
        #derivation connection <'REQ-TPS-06>IRQ-ORB-32'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_32;
        }
        #derivation connection <'REQ-TPS-06>IRQ-ORB-33'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_33;
        }
        #derivation connection <'REQ-TPS-04>IRQ-ORB-33'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_33;
        }
        #derivation connection <'REQ-ECLSS-05>IRQ-ORB-34'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_34;
        }
        #derivation connection <'REQ-GNC-01>IRQ-ORB-34'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_34;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ORB-35'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_35;
        }
        #derivation connection <'REQ-EPS-15>IRQ-ORB-35'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
            end #derive ::> InterfaceRequirements::IRQ_ORB_35;
        }
        #derivation connection <'REQ-ET-04>IRQ-ORB-36'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_36;
        }
        #derivation connection <'REQ-ET-08>IRQ-ORB-36'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_36;
        }
        #derivation connection <'REQ-STR-06>IRQ-ORB-36'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_36;
        }
        #derivation connection <'REQ-TPS-01>IRQ-ORB-37'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_37;
        }
        #derivation connection <'REQ-STR-08>IRQ-ORB-37'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
            end #derive ::> InterfaceRequirements::IRQ_ORB_37;
        }
        #derivation connection <'REQ-MECH-03>IRQ-ORB-38'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_38;
        }
        #derivation connection <'REQ-MECH-04>IRQ-ORB-38'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_38;
        }
        #derivation connection <'REQ-APU-05>IRQ-ORB-39'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_39;
        }
        #derivation connection <'REQ-MECH-07>IRQ-ORB-39'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_39;
        }
        #derivation connection <'REQ-MECH-01>IRQ-ORB-40'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_40;
        }
        #derivation connection <'REQ-MECH-02>IRQ-ORB-40'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_02;
            end #derive ::> InterfaceRequirements::IRQ_ORB_40;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-40'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_40;
        }
        #derivation connection <'REQ-CW-01>IRQ-ORB-41'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_41;
        }
        #derivation connection <'REQ-SYS-14>IRQ-ORB-41'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SYS::REQ_SYS_14;
            end #derive ::> InterfaceRequirements::IRQ_ORB_41;
        }
        #derivation connection <'REQ-CW-04>IRQ-ORB-42'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_42;
        }
        #derivation connection <'REQ-CW-03>IRQ-ORB-42'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_42;
        }
        #derivation connection <'REQ-CW-06>IRQ-ORB-43'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_43;
        }
        #derivation connection <'REQ-CT-06>IRQ-ORB-43'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
            end #derive ::> InterfaceRequirements::IRQ_ORB_43;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ORB-44'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ORB_44;
        }
        #derivation connection <'REQ-CREW-01>IRQ-ORB-44'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_44;
        }
        #derivation connection <'REQ-EVA-05>IRQ-ORB-45'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_45;
        }
        #derivation connection <'REQ-ECLSS-04>IRQ-ORB-45'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_45;
        }
        #derivation connection <'REQ-CT-05>IRQ-ORB-46'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_46;
        }
        #derivation connection <'REQ-EVA-04>IRQ-ORB-46'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_46;
        }
        #derivation connection <'REQ-PLS-01>IRQ-ORB-47'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
            end #derive ::> InterfaceRequirements::IRQ_ORB_47;
        }
        #derivation connection <'REQ-PLS-05>IRQ-ORB-47'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
            end #derive ::> InterfaceRequirements::IRQ_ORB_47;
        }
        #derivation connection <'REQ-PLS-03>IRQ-ORB-48'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> InterfaceRequirements::IRQ_ORB_48;
        }
        #derivation connection <'REQ-DPS-07>IRQ-ORB-48'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_48;
        }
        #derivation connection <'REQ-CT-07>IRQ-ORB-49'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
            end #derive ::> InterfaceRequirements::IRQ_ORB_49;
        }
        #derivation connection <'REQ-PLS-04>IRQ-ORB-49'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
            end #derive ::> InterfaceRequirements::IRQ_ORB_49;
        }
    }
    // ---- 充足（割付先の IF）
    package Satisfaction {
        satisfy InterfaceRequirements::IRQ_SYS_01 by context.sts.IF_SYS_01 { doc /* 割付先：IF-SYS-01 */ }
        satisfy InterfaceRequirements::IRQ_SYS_02 by context.sts.IF_SYS_02 { doc /* 割付先：IF-SYS-02 */ }
        satisfy InterfaceRequirements::IRQ_SYS_03 by context.sts.IF_SYS_03 { doc /* 割付先：IF-SYS-03 */ }
        satisfy InterfaceRequirements::IRQ_SYS_04 by context.IF_SYS_04 { doc /* 割付先：IF-SYS-04 */ }
        satisfy InterfaceRequirements::IRQ_SYS_05 by context.ext.IF_SYS_05 { doc /* 割付先：IF-SYS-05 */ }
        satisfy InterfaceRequirements::IRQ_SYS_06 by context.IF_SYS_06 { doc /* 割付先：IF-SYS-06 */ }
        satisfy InterfaceRequirements::IRQ_SYS_07 by context.sts.IF_SYS_07 { doc /* 割付先：IF-SYS-07 */ }
        satisfy InterfaceRequirements::IRQ_SYS_08 by context.sts.IF_SYS_08 { doc /* 割付先：IF-SYS-08 */ }
        satisfy InterfaceRequirements::IRQ_SYS_09 by context.IF_SYS_09 { doc /* 割付先：IF-SYS-09 */ }
        satisfy InterfaceRequirements::IRQ_SYS_10 by context.IF_SYS_10 { doc /* 割付先：IF-SYS-10 */ }
        satisfy InterfaceRequirements::IRQ_ORB_01 by context.sts.orb.IF_ORB_01 { doc /* 割付先：IF-ORB-01 */ }
        satisfy InterfaceRequirements::IRQ_ORB_02 by context.sts.orb.IF_ORB_02 { doc /* 割付先：IF-ORB-02 */ }
        satisfy InterfaceRequirements::IRQ_ORB_03 by context.sts.orb.IF_ORB_03 { doc /* 割付先：IF-ORB-03 */ }
        satisfy InterfaceRequirements::IRQ_ORB_04 by context.sts.orb.IF_ORB_04 { doc /* 割付先：IF-ORB-04 */ }
        satisfy InterfaceRequirements::IRQ_ORB_05 by context.sts.orb.IF_ORB_05 { doc /* 割付先：IF-ORB-05 */ }
        satisfy InterfaceRequirements::IRQ_ORB_06 by context.sts.orb.IF_ORB_06 { doc /* 割付先：IF-ORB-06 */ }
        satisfy InterfaceRequirements::IRQ_ORB_07 by context.sts.orb.IF_ORB_07 { doc /* 割付先：IF-ORB-07 */ }
        satisfy InterfaceRequirements::IRQ_ORB_08 by context.sts.orb.IF_ORB_08 { doc /* 割付先：IF-ORB-08 */ }
        satisfy InterfaceRequirements::IRQ_ORB_09 by context.sts.orb.IF_ORB_09 { doc /* 割付先：IF-ORB-09 */ }
        satisfy InterfaceRequirements::IRQ_ORB_10 by context.sts.orb.IF_ORB_10 { doc /* 割付先：IF-ORB-10 */ }
        satisfy InterfaceRequirements::IRQ_ORB_11 by context.sts.orb.IF_ORB_11 { doc /* 割付先：IF-ORB-11 */ }
        satisfy InterfaceRequirements::IRQ_ORB_12 by context.sts.orb.IF_ORB_12 { doc /* 割付先：IF-ORB-12 */ }
        satisfy InterfaceRequirements::IRQ_ORB_13 by context.sts.orb.IF_ORB_13 { doc /* 割付先：IF-ORB-13 */ }
        satisfy InterfaceRequirements::IRQ_ORB_14 by context.sts.orb.IF_ORB_14 { doc /* 割付先：IF-ORB-14 */ }
        satisfy InterfaceRequirements::IRQ_ORB_15 by context.sts.IF_ORB_15 { doc /* 割付先：IF-ORB-15 */ }
        satisfy InterfaceRequirements::IRQ_ORB_16 by context.IF_ORB_16 { doc /* 割付先：IF-ORB-16 */ }
        satisfy InterfaceRequirements::IRQ_ORB_17 by context.IF_ORB_17 { doc /* 割付先：IF-ORB-17 */ }
        satisfy InterfaceRequirements::IRQ_ORB_18 by context.sts.IF_ORB_18 { doc /* 割付先：IF-ORB-18 */ }
        satisfy InterfaceRequirements::IRQ_ORB_19 by context.sts.orb.IF_ORB_19 { doc /* 割付先：IF-ORB-19 */ }
        satisfy InterfaceRequirements::IRQ_ORB_20 by context.sts.orb.IF_ORB_20 { doc /* 割付先：IF-ORB-20 */ }
        satisfy InterfaceRequirements::IRQ_ORB_21 by context.sts.orb.IF_ORB_21 { doc /* 割付先：IF-ORB-21 */ }
        satisfy InterfaceRequirements::IRQ_ORB_22 by context.sts.IF_ORB_22 { doc /* 割付先：IF-ORB-22 */ }
        satisfy InterfaceRequirements::IRQ_ORB_23 by context.sts.orb.IF_ORB_23 { doc /* 割付先：IF-ORB-23 */ }
        satisfy InterfaceRequirements::IRQ_ORB_24 by context.sts.orb.IF_ORB_24 { doc /* 割付先：IF-ORB-24 */ }
        satisfy InterfaceRequirements::IRQ_ORB_25 by context.sts.IF_ORB_25 { doc /* 割付先：IF-ORB-25 */ }
        satisfy InterfaceRequirements::IRQ_ORB_26 by context.sts.IF_ORB_26 { doc /* 割付先：IF-ORB-26 */ }
        satisfy InterfaceRequirements::IRQ_ORB_27 by context.sts.IF_ORB_27 { doc /* 割付先：IF-ORB-27 */ }
        satisfy InterfaceRequirements::IRQ_ORB_28 by context.sts.IF_ORB_28 { doc /* 割付先：IF-ORB-28 */ }
        satisfy InterfaceRequirements::IRQ_ORB_29 by context.IF_ORB_29 { doc /* 割付先：IF-ORB-29 */ }
        satisfy InterfaceRequirements::IRQ_ORB_30 by context.IF_ORB_30 { doc /* 割付先：IF-ORB-30 */ }
        satisfy InterfaceRequirements::IRQ_ORB_31 by context.IF_ORB_31 { doc /* 割付先：IF-ORB-31 */ }
        satisfy InterfaceRequirements::IRQ_ORB_32 by context.IF_ORB_32 { doc /* 割付先：IF-ORB-32 */ }
        satisfy InterfaceRequirements::IRQ_ORB_33 by context.IF_ORB_33 { doc /* 割付先：IF-ORB-33 */ }
        satisfy InterfaceRequirements::IRQ_ORB_34 by context.sts.orb.IF_ORB_34 { doc /* 割付先：IF-ORB-34 */ }
        satisfy InterfaceRequirements::IRQ_ORB_35 by context.sts.orb.IF_ORB_35 { doc /* 割付先：IF-ORB-35 */ }
        satisfy InterfaceRequirements::IRQ_ORB_36 by context.sts.IF_ORB_36 { doc /* 割付先：IF-ORB-36 */ }
        satisfy InterfaceRequirements::IRQ_ORB_37 by context.sts.orb.IF_ORB_37 { doc /* 割付先：IF-ORB-37 */ }
        satisfy InterfaceRequirements::IRQ_ORB_38 by context.sts.orb.IF_ORB_38 { doc /* 割付先：IF-ORB-38 */ }
        satisfy InterfaceRequirements::IRQ_ORB_39 by context.sts.orb.IF_ORB_39 { doc /* 割付先：IF-ORB-39 */ }
        satisfy InterfaceRequirements::IRQ_ORB_40 by context.sts.orb.IF_ORB_40 { doc /* 割付先：IF-ORB-40 */ }
        satisfy InterfaceRequirements::IRQ_ORB_41 by context.sts.orb.IF_ORB_41 { doc /* 割付先：IF-ORB-41 */ }
        satisfy InterfaceRequirements::IRQ_ORB_42 by context.sts.orb.IF_ORB_42 { doc /* 割付先：IF-ORB-42 */ }
        satisfy InterfaceRequirements::IRQ_ORB_43 by context.sts.orb.IF_ORB_43 { doc /* 割付先：IF-ORB-43 */ }
        satisfy InterfaceRequirements::IRQ_ORB_44 by context.sts.orb.IF_ORB_44 { doc /* 割付先：IF-ORB-44 */ }
        satisfy InterfaceRequirements::IRQ_ORB_45 by context.sts.orb.IF_ORB_45 { doc /* 割付先：IF-ORB-45 */ }
        satisfy InterfaceRequirements::IRQ_ORB_46 by context.sts.orb.IF_ORB_46 { doc /* 割付先：IF-ORB-46 */ }
        satisfy InterfaceRequirements::IRQ_ORB_47 by context.sts.orb.IF_ORB_47 { doc /* 割付先：IF-ORB-47 */ }
        satisfy InterfaceRequirements::IRQ_ORB_48 by context.sts.orb.IF_ORB_48 { doc /* 割付先：IF-ORB-48 */ }
        satisfy InterfaceRequirements::IRQ_ORB_49 by context.sts.orb.IF_ORB_49 { doc /* 割付先：IF-ORB-49 */ }
    }
    // ---- 検証ケース
    package Verification {
        verification def <'VC-IRQ-SYS-01'> VC_IRQ_SYS_01 {
            doc /* IRQ-SYS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-02'> VC_IRQ_SYS_02 {
            doc /* IRQ-SYS-02 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-03'> VC_IRQ_SYS_03 {
            doc /* IRQ-SYS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-04'> VC_IRQ_SYS_04 {
            doc /* IRQ-SYS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-05'> VC_IRQ_SYS_05 {
            doc /* IRQ-SYS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-06'> VC_IRQ_SYS_06 {
            doc /* IRQ-SYS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-07'> VC_IRQ_SYS_07 {
            doc /* IRQ-SYS-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-08'> VC_IRQ_SYS_08 {
            doc /* IRQ-SYS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-09'> VC_IRQ_SYS_09 {
            doc /* IRQ-SYS-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SYS-10'> VC_IRQ_SYS_10 {
            doc /* IRQ-SYS-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SYS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-01'> VC_IRQ_ORB_01 {
            doc /* IRQ-ORB-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-02'> VC_IRQ_ORB_02 {
            doc /* IRQ-ORB-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-03'> VC_IRQ_ORB_03 {
            doc /* IRQ-ORB-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-04'> VC_IRQ_ORB_04 {
            doc /* IRQ-ORB-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-05'> VC_IRQ_ORB_05 {
            doc /* IRQ-ORB-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-06'> VC_IRQ_ORB_06 {
            doc /* IRQ-ORB-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-07'> VC_IRQ_ORB_07 {
            doc /* IRQ-ORB-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-08'> VC_IRQ_ORB_08 {
            doc /* IRQ-ORB-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-09'> VC_IRQ_ORB_09 {
            doc /* IRQ-ORB-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-10'> VC_IRQ_ORB_10 {
            doc /* IRQ-ORB-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-11'> VC_IRQ_ORB_11 {
            doc /* IRQ-ORB-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-12'> VC_IRQ_ORB_12 {
            doc /* IRQ-ORB-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-13'> VC_IRQ_ORB_13 {
            doc /* IRQ-ORB-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-14'> VC_IRQ_ORB_14 {
            doc /* IRQ-ORB-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-15'> VC_IRQ_ORB_15 {
            doc /* IRQ-ORB-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-16'> VC_IRQ_ORB_16 {
            doc /* IRQ-ORB-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-17'> VC_IRQ_ORB_17 {
            doc /* IRQ-ORB-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-18'> VC_IRQ_ORB_18 {
            doc /* IRQ-ORB-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-19'> VC_IRQ_ORB_19 {
            doc /* IRQ-ORB-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-20'> VC_IRQ_ORB_20 {
            doc /* IRQ-ORB-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-21'> VC_IRQ_ORB_21 {
            doc /* IRQ-ORB-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-22'> VC_IRQ_ORB_22 {
            doc /* IRQ-ORB-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-23'> VC_IRQ_ORB_23 {
            doc /* IRQ-ORB-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-24'> VC_IRQ_ORB_24 {
            doc /* IRQ-ORB-24 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-25'> VC_IRQ_ORB_25 {
            doc /* IRQ-ORB-25 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-26'> VC_IRQ_ORB_26 {
            doc /* IRQ-ORB-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-27'> VC_IRQ_ORB_27 {
            doc /* IRQ-ORB-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-28'> VC_IRQ_ORB_28 {
            doc /* IRQ-ORB-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-29'> VC_IRQ_ORB_29 {
            doc /* IRQ-ORB-29 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-30'> VC_IRQ_ORB_30 {
            doc /* IRQ-ORB-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-31'> VC_IRQ_ORB_31 {
            doc /* IRQ-ORB-31 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_31; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-32'> VC_IRQ_ORB_32 {
            doc /* IRQ-ORB-32 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_32; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-33'> VC_IRQ_ORB_33 {
            doc /* IRQ-ORB-33 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_33; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-34'> VC_IRQ_ORB_34 {
            doc /* IRQ-ORB-34 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_34; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-35'> VC_IRQ_ORB_35 {
            doc /* IRQ-ORB-35 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_35; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-36'> VC_IRQ_ORB_36 {
            doc /* IRQ-ORB-36 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_36; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-37'> VC_IRQ_ORB_37 {
            doc /* IRQ-ORB-37 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_37; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-38'> VC_IRQ_ORB_38 {
            doc /* IRQ-ORB-38 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_38; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-39'> VC_IRQ_ORB_39 {
            doc /* IRQ-ORB-39 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_39; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-40'> VC_IRQ_ORB_40 {
            doc /* IRQ-ORB-40 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_40; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-41'> VC_IRQ_ORB_41 {
            doc /* IRQ-ORB-41 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_41; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-42'> VC_IRQ_ORB_42 {
            doc /* IRQ-ORB-42 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_42; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-43'> VC_IRQ_ORB_43 {
            doc /* IRQ-ORB-43 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_43; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-44'> VC_IRQ_ORB_44 {
            doc /* IRQ-ORB-44 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_44; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-45'> VC_IRQ_ORB_45 {
            doc /* IRQ-ORB-45 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_45; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-46'> VC_IRQ_ORB_46 {
            doc /* IRQ-ORB-46 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_46; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-47'> VC_IRQ_ORB_47 {
            doc /* IRQ-ORB-47 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_47; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-48'> VC_IRQ_ORB_48 {
            doc /* IRQ-ORB-48 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_48; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ORB-49'> VC_IRQ_ORB_49 {
            doc /* IRQ-ORB-49 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ORB_49; }
            return verdict : VerdictKind;
        }
    }
    // ---- 検証の結果（対象は IF の送り側の部品。根拠ありは pass、根拠なしは inconclusive）
    package Results {
        verification vc_irq_sys_01 : Verification::VC_IRQ_SYS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_02 : Verification::VC_IRQ_SYS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_03 : Verification::VC_IRQ_SYS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_04 : Verification::VC_IRQ_SYS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_05 : Verification::VC_IRQ_SYS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.ext.net;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_06 : Verification::VC_IRQ_SYS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_07 : Verification::VC_IRQ_SYS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_08 : Verification::VC_IRQ_SYS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_09 : Verification::VC_IRQ_SYS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_sys_10 : Verification::VC_IRQ_SYS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_01 : Verification::VC_IRQ_ORB_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_02 : Verification::VC_IRQ_ORB_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_03 : Verification::VC_IRQ_ORB_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_04 : Verification::VC_IRQ_ORB_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_05 : Verification::VC_IRQ_ORB_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_06 : Verification::VC_IRQ_ORB_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_07 : Verification::VC_IRQ_ORB_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_08 : Verification::VC_IRQ_ORB_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_09 : Verification::VC_IRQ_ORB_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_10 : Verification::VC_IRQ_ORB_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_11 : Verification::VC_IRQ_ORB_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_12 : Verification::VC_IRQ_ORB_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_13 : Verification::VC_IRQ_ORB_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_14 : Verification::VC_IRQ_ORB_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_15 : Verification::VC_IRQ_ORB_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_16 : Verification::VC_IRQ_ORB_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_17 : Verification::VC_IRQ_ORB_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_orb_18 : Verification::VC_IRQ_ORB_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_orb_19 : Verification::VC_IRQ_ORB_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_20 : Verification::VC_IRQ_ORB_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_21 : Verification::VC_IRQ_ORB_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_22 : Verification::VC_IRQ_ORB_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_23 : Verification::VC_IRQ_ORB_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_24 : Verification::VC_IRQ_ORB_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_25 : Verification::VC_IRQ_ORB_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_26 : Verification::VC_IRQ_ORB_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_27 : Verification::VC_IRQ_ORB_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_28 : Verification::VC_IRQ_ORB_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_orb_29 : Verification::VC_IRQ_ORB_29 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_30 : Verification::VC_IRQ_ORB_30 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_31 : Verification::VC_IRQ_ORB_31 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_32 : Verification::VC_IRQ_ORB_32 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_33 : Verification::VC_IRQ_ORB_33 {
            subject :>> s = SSD_BLK_SYS_001::context.ext;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_34 : Verification::VC_IRQ_ORB_34 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_35 : Verification::VC_IRQ_ORB_35 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_36 : Verification::VC_IRQ_ORB_36 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_37 : Verification::VC_IRQ_ORB_37 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_38 : Verification::VC_IRQ_ORB_38 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_39 : Verification::VC_IRQ_ORB_39 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_40 : Verification::VC_IRQ_ORB_40 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_41 : Verification::VC_IRQ_ORB_41 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_42 : Verification::VC_IRQ_ORB_42 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_43 : Verification::VC_IRQ_ORB_43 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_44 : Verification::VC_IRQ_ORB_44 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_45 : Verification::VC_IRQ_ORB_45 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_46 : Verification::VC_IRQ_ORB_46 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_orb_47 : Verification::VC_IRQ_ORB_47 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_48 : Verification::VC_IRQ_ORB_48 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_orb_49 : Verification::VC_IRQ_ORB_49 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
    }
}
