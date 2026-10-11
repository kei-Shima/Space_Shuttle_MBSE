// SysML v2 テキスト：事故の教訓（事象の連鎖・機能の故障モード・故障の木・勧告と改修）
// SSD-ACC-SYS-001 事故の教訓定義書（51-L・STS-107 の事象の連鎖、SRB・ET・TPS の機能の故障モード、故障の木、勧告と改修） の表から生成（lib/build_docs_bu.py・rev_bu/budata.py）。根拠の頁は SSD-ACC-SYS-001 にある。
package SSD_ACC_SYS_001 {
    doc /* SSD-ACC-SYS-001 事故の教訓定義書（51-L・STS-107 の事象の連鎖、SRB・ET・TPS の機能の故障モード、故障の木、勧告と改修）。図206〜211 と同じ内容。故障モードの型は SSD_FMM_ORB_001 の FailureMode、原因は SSD_HAZ_ORB_001 の HazardModel。故障の木は Boolean の式（確率は付けない）。 */
    private import ScalarValues::*;
    private import CauseAndEffect::*;
    private import SSD_HAZ_ORB_001::Involves;
    private import SSD_FMM_ORB_001::DetectedBy;
    // ---- 事象の連鎖（事故ごとの occurrence def。事象は時刻の順に first … then … でつなぐ）
    occurrence def Accident51L {
        doc /* 51-L（チャレンジャー、1986-01-28） の事象の連鎖（図206） */
        occurrence <'AE-51L-01'> ae_51l_01 { doc /* 背景・1977（開発試験）：1977 年の水圧破壊試験で、継手の舌とクレビスが閉じる方向ではなく離れる方向に曲がる『継手の回転』が見つかり、継手の隙間は設計の想定と逆に開くことが分かった。 */ }
        occurrence <'AE-51L-02'> ae_51l_02 { doc /* 背景・1980-11〜1983-03：継手は 1980-11 に CIL で Criticality 1R（冗長）に分類されたが、1982-12 に二次 O リングが冗長でないとして Criticality 1 に改められ、1983 年 3 月に Level I と II が免除を認めた。 */ }
        occurrence <'AE-51L-03'> ae_51l_03 { doc /* 背景・1981-11〜1985-07：STS-2 以来、継手の O リングの浸食とブローバイが続き、51-C（1985-01）では二次 O リングにも熱の影響が出て、51-B（1985-04）のノズル継手では一次が封止せず二次も浸食され、発射の制約が付いたが各飛行で免除された。Thiokol は 51-C の評価で初めて温度を要因に挙げた。 */ }
        occurrence <'AE-51L-04'> ae_51l_04 { doc /* 背景・1984-02〜1985-08：継手の漏れ検査の圧力を 50 psi から 100、200 psi へ上げると、パテの吹き抜けの孔と O リングの異常が増えたが、NASA 本部への説明（1985-08-19）は、浸食はパテのガスの通り道で起きるとしながら現行設計の飛行を続けた。 */ }
        occurrence <'AE-51L-05'> ae_51l_05 { doc /* 原因・T−1日（1986-01-27 夜）：前夜の電話会議で、Thiokol の技術者は 53°F を超える温度でなければ飛ばすべきでないと勧告したが、Thiokol の経営陣は Marshall の求めを受けて見解を覆し、打上げを勧告した。 */ }
        occurrence <'AE-51L-06'> ae_51l_06 { doc /* 原因・飛行前（組立〜打上げ）：右 SRM の後部現場継手のセグメントは、工場での寸法の差が 0.008 inch で、O リング位置の平均の隙間が 0.004 inch となり、O リングが圧縮されて溝の全面に触れうる状態で組み立てられていた。組立の損傷や汚染は本件の要因とは考えられなかった。 */ }
        occurrence <'AE-51L-07'> ae_51l_07 { doc /* 原因・T−0（1986-01-28）：打上げ時の気温は 36°F でそれまでより 15°F 低く、右 SRB の後部現場継手は約 28±5°F まで冷えていて、O リングの復元は遅く、継手内の水が凍っていた可能性もあった。 */ }
        occurrence <'AE-51L-08'> ae_51l_08 { doc /* 原因・報告書の認定（1986-06-06）：委員会は、事故の原因を右 SRM の後部現場継手の圧力シールの失敗とし、温度・寸法・材料の性質・再使用・処理・動的荷重への継手の反応に許しがたいほど敏感な、設計の欠陥によると認定した。 */ }
        occurrence <'AE-51L-09'> ae_51l_09 { doc /* 事象・T+0〜0.678 s：点火で継手の隙間が開き、O リングが追随して封止しないまま、右 SRB の後部現場継手から灰色の煙が噴き出した。打上げ直後の曲げ振動（約 3 cycles/s）で隙間はさらに約 10 パーセント広がる。 */ }
        occurrence <'AE-51L-10'> ae_51l_10 { doc /* 事象・T+0.836〜2.500 s：より黒い煙のパフが毎秒約4回、8回続き、継手のグリース・断熱材・O リングが高温ガスで燃えて浸食されていることを示した。 */ }
        occurrence <'AE-51L-11'> ae_51l_11 { doc /* 事象・T+37〜64 s：上空の風のせん断で制御系は過去のどの飛行よりも活発に動いたが、SRB の推力方向制御はすべての指令に応答した。 */ }
        occurrence <'AE-51L-12'> ae_51l_12 { doc /* 事象・T+58.788〜59.262 s：右 SRB の後部現場継手（周方向約 303 度）に最初の小さな炎が現れ、連続した明瞭なプルームに育った。回収された右 SRB の後部の部品には周方向 291〜318 度に大きな穴があった。 */ }
        occurrence <'AE-51L-13'> ae_51l_13 { doc /* 事象・T+60〜62 s：左右の SRB の燃焼室圧に差が出て（右が低い）、プルームは結合リングと SRB・外部タンクをつなぐ支柱に当たり、左 SRB の推力方向制御が右の推力低下によるヨーに対抗して動き始めた。 */ }
        occurrence <'AE-51L-14'> ae_51l_14 { doc /* 事象・T+64.660 s：プルームが外部タンクを破り、漏れた水素と混ざってプルームの形と色が変わった。液体水素タンクの加圧のテレメトリの変化が漏れを確認した。 */ }
        occurrence <'AE-51L-15'> ae_51l_15 { doc /* 結果・T+72.20 s：SRB と外部タンクを結ぶ下部の支柱が切れるか引き抜かれ、右 SRB が上部の結合を中心に回転して、左右の SRB のヨー・ピッチ角速度が発散した。 */ }
        occurrence <'AE-51L-16'> ae_51l_16 { doc /* 結果・T+73.124〜73.137 s：外部タンクの液体水素タンクの下部ドームとインタタンクの領域が壊れ、水素と酸素が爆発的に燃えた。SSME は燃料の入口圧が下がるまで正常に運転した。 */ }
        occurrence <'AE-51L-17'> ae_51l_17 { doc /* 結果・T+73 s 以降：機体はマッハ 1.92・高度 46,000 ft で爆発的燃焼に包まれ、オービタは空力荷重で壊れ、乗員7名が死亡した。2本の SRB は火球から出て、110 s に射場安全担当官が破壊した。 */ }
        first ae_51l_01 then ae_51l_02;
        first ae_51l_02 then ae_51l_03;
        first ae_51l_03 then ae_51l_04;
        first ae_51l_04 then ae_51l_05;
        first ae_51l_05 then ae_51l_06;
        first ae_51l_06 then ae_51l_07;
        first ae_51l_07 then ae_51l_08;
        first ae_51l_08 then ae_51l_09;
        first ae_51l_09 then ae_51l_10;
        first ae_51l_10 then ae_51l_11;
        first ae_51l_11 then ae_51l_12;
        first ae_51l_12 then ae_51l_13;
        first ae_51l_13 then ae_51l_14;
        first ae_51l_14 then ae_51l_15;
        first ae_51l_15 then ae_51l_16;
        first ae_51l_16 then ae_51l_17;
    }
    occurrence def AccidentSts107 {
        doc /* STS-107（コロンビア、2003-02-01） の事象の連鎖（図207） */
        occurrence <'AE-107-01'> ae_107_01 { doc /* 背景・1983-06-18（STS-7）：STS-7で ET の左バイポッドランプの泡（19×12インチ）が剥がれたのが、判明している最初の喪失であった。In-Flight Anomaly は次の飛行の審査で、オービタ TPS の補修を根拠に閉じられ、泡が剥がれる原因の是正は審査の文書に書かれていなかった。 */ }
        occurrence <'AE-107-02'> ae_107_02 { doc /* 背景・1990-01-09〜1992-06-25（STS-32R・STS-50）：STS-32R で ET の泡に5つのくぼみ、STS-50 で左バイポッドランプ域の約26×10インチの断片が剥がれ、タイルに9×4.5×0.5インチのくぼみ（シャトル史上最大のタイル損傷域）ができた。Integration Office は accepted flight risk、ET プロジェクトは safety-of-flight の問題ではないとして In-Flight Anomaly を閉じた。 */ }
        occurrence <'AE-107-03'> ae_107_03 { doc /* 背景・2002-10-07（STS-112）：STS-112で、打上げ後33秒に ET から離れた物体が SRB/ET 取付けリングに当たり、ET 分離後の撮影で左バイポッドランプの4×5×12インチの角が欠けているのが分かった。Program Requirements Control Board は In-Flight Anomaly とせず、ET プロジェクトに根本原因を調べる action を課した。 */ }
        occurrence <'AE-107-04'> ae_107_04 { doc /* 背景・2002-10-31（STS-113 の飛行準備審査）：STS-113の飛行準備審査で、ET の泡の喪失は安全性の問題になったことがないという根拠が示され、STS-112 の根本原因が決まらないまま2ミッションを飛ばす形で受け入れられた。ISS の Node 2 の日程を守る必要も影響したとみられる。 */ }
        occurrence <'AE-107-05'> ae_107_05 { doc /* 原因・飛行前（ET-93 の製造・施工）：左バイポッドランプは金具に手吹きで成形され、内部に空洞・ポケット・異物の欠陥があった可能性が高い。CAIB は、欠陥だけでも、クライオ効果だけでも泡の喪失は説明できず、複数の要因の組合せで泡が失われたと結論した。 */ }
        occurrence <'AE-107-06'> ae_107_06 { doc /* 事象・2003-01-16 10:39（EST）：STS-107（コロンビア）が打ち上げられた。打上げの2分7秒後に SRB が分離し、約8分半後に SSME が正常に停止して ET が分離した。 */ }
        occurrence <'AE-107-07'> ae_107_07 { doc /* 事象・T+81.9 s（高度 65,860 ft）：ET の左バイポッドランプから剥がれた泡（試験用の想定は19×11.5×5.5インチ・1.67 lb）が、オービタに対し約775 ft/s（約545 mph）で左翼下面の RCC パネル6〜9付近に当たった。ランプが失われた時の飛行条件はマッハ2.46・迎え角2.08度であった。 */ }
        occurrence <'AE-107-08'> ae_107_08 { doc /* 原因・T+81.9 s（認定）：CAIB は、物理的な原因を、左バイポッドランプから剥がれた泡の衝突による左翼前縁の TPS の破れと認定した。破れの位置は RCC パネル8の下半分の付近で、衝撃試験ではこの種の泡の衝突が RCC に約16×17インチの穴を作りうると示した。 */ }
        occurrence <'AE-107-09'> ae_107_09 { doc /* 事象・フライトデイ2（2003-01-17）：午前10:30〜11:00ごろ、オービタから小物体が0.7〜3.4 mph の離脱速度で離れた。管制もクルーも気づかず、事後のレーダ解析で、RCC パネルの破片のレーダ断面積と面積質量比に一致する物体と分かった。 */ }
        occurrence <'AE-107-10'> ae_107_10 { doc /* 事象・フライトデイ6〜9（2003-01-21〜24）：Intercenter Photo Working Group は打上げ翌日に泡の衝突に気づき、軌道上の画像を要請した。Debris Assessment Team の画像要望は管理層に断られ、Crater モデルで評価した。1月23日にクルーへ「再突入の懸念は全くない」と伝え、1月24日に Mission Management Team は破片衝突を turnaround の問題とみなして画像要求を進めなかった。 */ }
        occurrence <'AE-107-11'> ae_107_11 { doc /* 事象・2003-02-01 8:15:30〜8:44:09（EST）：デオービットバーンは8:15:30に実行され正常だった。再突入インタフェース（EI）は8:44:09に太平洋上で起きた。 */ }
        occurrence <'AE-107-12'> ae_107_12 { doc /* 事象・EI+270〜EI+290：EI+270に左翼前縁スパー上のひずみゲージが従来より高いひずみを示し、EI+290にスパー前面のクレビス温度がゆっくり上昇し始めた。これらは MADS だけに記録され、地上のテレメトリには出なかった。 */ }
        occurrence <'AE-107-13'> ae_107_13 { doc /* 事象・EI+487（遅くとも）〜EI+522：過熱空気が RCC パネル8の破れから入って前縁スパーを焼き抜き、スパー裏の配線束のセンサ信号がEI+487〜497に次々と失われた。スパーの破れはEI+522までに上下に少なくとも9インチに広がった。 */ }
        occurrence <'AE-107-14'> ae_107_14 { doc /* 事象・EI+555：コロンビアはカリフォルニア沿岸を通過し、地上の人々が機体から破片が剥がれるのを見て撮影した。OMS ポッドと胴体側面の加熱の増加とロール・ヨーの変化は、パネル9付近の前縁の大きな損傷と一致した。 */ }
        occurrence <'AE-107-15'> ae_107_15 { doc /* 結果・EI+601〜EI+613：EI+601に車輪格納部の温度が急上昇し、EI+602に左翼の揚力が増える向きにロール傾向が反転した。管制がテレメトリで最初の異常を見たのは、EI+613の油圧センサ4本のケーブルの故障であった。 */ }
        occurrence <'AE-107-16'> ae_107_16 { doc /* 結果・EI+917〜EI+970：左翼の損傷の進行で左ヨーが増え、飛行制御系は右ヨージェット4基をすべて噴射しエルロントリムも最大にしたが制御できず、EI+970に機体の制御を失った。テレメトリの喪失はEI+923であった。 */ }
        occurrence <'AE-107-17'> ae_107_17 { doc /* 結果・EI+970 以降：オービタは空中分解し、乗員7名とオービタを失った。分解は現在の設計では乗員が生存できる可能性のない飛行域で起きた。 */ }
        first ae_107_01 then ae_107_02;
        first ae_107_02 then ae_107_03;
        first ae_107_03 then ae_107_04;
        first ae_107_04 then ae_107_05;
        first ae_107_05 then ae_107_06;
        first ae_107_06 then ae_107_07;
        first ae_107_07 then ae_107_08;
        first ae_107_08 then ae_107_09;
        first ae_107_09 then ae_107_10;
        first ae_107_10 then ae_107_11;
        first ae_107_11 then ae_107_12;
        first ae_107_12 then ae_107_13;
        first ae_107_13 then ae_107_14;
        first ae_107_14 then ae_107_15;
        first ae_107_15 then ae_107_16;
        first ae_107_16 then ae_107_17;
    }
    // ---- 機能の故障モード（SRB・ET・TPS）
    package FunctionalFailureModes {
        #cause occurrence <'FMA-SRB-01'> fma_srb_01 : SSD_FMM_ORB_001::FailureMode { doc /* 現場継手の一次 O リングが点火の過渡で封止せず、高温の燃焼ガスが継手を通って漏れる（ブローバイと浸食）（外部漏れ）。事故で起きた事象：AE-51L-06・AE-51L-07・AE-51L-09・AE-51L-10・AE-51L-12 */ attribute :>> itemName = "現場継手の一次 O リングが点火の過渡で封止せず、高温の燃焼ガスが継手を通って漏れる（ブローバイと浸食）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-02'> fma_srb_02 : SSD_FMM_ORB_001::FailureMode { doc /* 二次 O リングが一次の代わりにならない（冗長でない）：継手の回転で圧縮を失う、または継手内の氷で座から外れる（喪失）。事故で起きた事象：AE-51L-02・AE-51L-03 */ attribute :>> itemName = "二次 O リングが一次の代わりにならない（冗長でない）：継手の回転で圧縮を失う、または継手内の氷で座から外れる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-03'> fma_srb_03 : SSD_FMM_ORB_001::FailureMode { doc /* 断熱パテが O リングの圧力作動を遅らせ、またパテに吹き抜けの孔ができて、高温ガスが一次 O リングに集中して当たる（劣化）。事故で起きた事象：AE-51L-04 */ attribute :>> itemName = "断熱パテが O リングの圧力作動を遅らせ、またパテに吹き抜けの孔ができて、高温ガスが一次 O リングに集中して当たる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-04'> fma_srb_04 : SSD_FMM_ORB_001::FailureMode { doc /* ノズルとケースの継手の一次 O リングが浸食され、封止しないままガスが回り込む（外部漏れ）。事故で起きた事象：AE-51L-03 */ attribute :>> itemName = "ノズルとケースの継手の一次 O リングが浸食され、封止しないままガスが回り込む"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-05'> fma_srb_05 : SSD_FMM_ORB_001::FailureMode { doc /* 点火器の継手の O リングを燃焼ガスが回り込む（ブローバイ）（外部漏れ）。事故で起きた事象：AE-51L-03 */ attribute :>> itemName = "点火器の継手の O リングを燃焼ガスが回り込む（ブローバイ）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-06'> fma_srb_06 : SSD_FMM_ORB_001::FailureMode { doc /* ケース壁（膜）の破れとケースの破裂（外部漏れ） */ attribute :>> itemName = "ケース壁（膜）の破れとケースの破裂"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-07'> fma_srb_07 : SSD_FMM_ORB_001::FailureMode { doc /* 推進薬グレインの割れ・剥離で燃焼面が増え、燃焼室圧が異常になる（劣化） */ attribute :>> itemName = "推進薬グレインの割れ・剥離で燃焼面が増え、燃焼室圧が異常になる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-08'> fma_srb_08 : SSD_FMM_ORB_001::FailureMode { doc /* 左右の SRM の推力の不釣合い（推力の差）が大きくなる（劣化）。事故で起きた事象：AE-51L-13 */ attribute :>> itemName = "左右の SRM の推力の不釣合い（推力の差）が大きくなる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-09'> fma_srb_09 : SSD_FMM_ORB_001::FailureMode { doc /* 再使用で、セグメントの寸法と真円度が変わって継手の隙間と O リングの圧縮が設計値から外れる（劣化）。事故で起きた事象：AE-51L-06 */ attribute :>> itemName = "再使用で、セグメントの寸法と真円度が変わって継手の隙間と O リングの圧縮が設計値から外れる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-10'> fma_srb_10 : SSD_FMM_ORB_001::FailureMode { doc /* 後部結合の下部の支柱が切れるか外れ、SRB が外部タンクに結合した状態を保てない（喪失）。事故で起きた事象：AE-51L-13・AE-51L-15 */ attribute :>> itemName = "後部結合の下部の支柱が切れるか外れ、SRB が外部タンクに結合した状態を保てない"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-11'> fma_srb_11 : SSD_FMM_ORB_001::FailureMode { doc /* 前部結合のせん断ボルトの NSI 圧力カートリッジの NSI が、発火時に元の位置に残らない（誤作動） */ attribute :>> itemName = "前部結合のせん断ボルトの NSI 圧力カートリッジの NSI が、発火時に元の位置に残らない"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-12'> fma_srb_12 : SSD_FMM_ORB_001::FailureMode { doc /* ブースタ分離モータ（BSM）の点火器の点火が不安定になる（劣化） */ attribute :>> itemName = "ブースタ分離モータ（BSM）の点火器の点火が不安定になる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-13'> fma_srb_13 : SSD_FMM_ORB_001::FailureMode { doc /* 射場安全系が誤って起爆する（早期の destruct）（誤作動） */ attribute :>> itemName = "射場安全系が誤って起爆する（早期の destruct）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-14'> fma_srb_14 : SSD_FMM_ORB_001::FailureMode { doc /* SRB レートジャイロ（SRGA）が電源を失い、偽の角速度を飛行制御へ出す（誤作動） */ attribute :>> itemName = "SRB レートジャイロ（SRGA）が電源を失い、偽の角速度を飛行制御へ出す"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-15'> fma_srb_15 : SSD_FMM_ORB_001::FailureMode { doc /* ホールドダウンの PIC が低電圧になり、点火指令を出せない（喪失） */ attribute :>> itemName = "ホールドダウンの PIC が低電圧になり、点火指令を出せない"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-16'> fma_srb_16 : SSD_FMM_ORB_001::FailureMode { doc /* 破断ナットの破片で、ホールドダウンポストのデブリ封じ込めのプランジャが閉じない（劣化） */ attribute :>> itemName = "破断ナットの破片で、ホールドダウンポストのデブリ封じ込めのプランジャが閉じない"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-17'> fma_srb_17 : SSD_FMM_ORB_001::FailureMode { doc /* 着水後に主パラシュートとフラスタム（ドローグ）が回収できず失われる（喪失） */ attribute :>> itemName = "着水後に主パラシュートとフラスタム（ドローグ）が回収できず失われる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-18'> fma_srb_18 : SSD_FMM_ORB_001::FailureMode { doc /* パラシュートのリボン切れと、着水の衝撃による SRB 構造の損傷（劣化） */ attribute :>> itemName = "パラシュートのリボン切れと、着水の衝撃による SRB 構造の損傷"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-19'> fma_srb_19 : SSD_FMM_ORB_001::FailureMode { doc /* 同じ SRB の2台の HPU がともに油圧を失い、推力方向制御（TVC）を失う（喪失） */ attribute :>> itemName = "同じ SRB の2台の HPU がともに油圧を失い、推力方向制御（TVC）を失う"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-SRB-20'> fma_srb_20 : SSD_FMM_ORB_001::FailureMode { doc /* サーボ作動器のサーボ弁が誤った指令を出す（誤作動） */ attribute :>> itemName = "サーボ作動器のサーボ弁が誤った指令を出す"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-01'> fma_et_01 : SSD_FMM_ORB_001::FailureMode { doc /* 打上げ前の LH2 タンクの予備加圧サイクル数が LCC の限度（13回）に達する（充填・加圧の異常）（誤作動） */ attribute :>> itemName = "打上げ前の LH2 タンクの予備加圧サイクル数が LCC の限度（13回）に達する（充填・加圧の異常）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-02'> fma_et_02 : SSD_FMM_ORB_001::FailureMode { doc /* インタータンク/LH2タンクのフランジの閉じ込め部の泡が飛行中に剥がれる（インタータンクの通気と泡内の流体の滞留）（劣化） */ attribute :>> itemName = "インタータンク/LH2タンクのフランジの閉じ込め部の泡が飛行中に剥がれる（インタータンクの通気と泡内の流体の滞留）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-03'> fma_et_03 : SSD_FMM_ORB_001::FailureMode { doc /* LH2 タンクのアレージ圧の低下（アレージ漏れ、または GH2 加圧系の異常）（喪失） */ attribute :>> itemName = "LH2 タンクのアレージ圧の低下（アレージ漏れ、または GH2 加圧系の異常）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-04'> fma_et_04 : SSD_FMM_ORB_001::FailureMode { doc /* 上昇の第1段中に LH2 タンクのベント/リリーフ弁が開く（手動加圧でアレージ圧が上がり過ぎる）（誤作動） */ attribute :>> itemName = "上昇の第1段中に LH2 タンクのベント/リリーフ弁が開く（手動加圧でアレージ圧が上がり過ぎる）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-05'> fma_et_05 : SSD_FMM_ORB_001::FailureMode { doc /* LO2 供給管のベローズ・ブラケットに氷や霜が付き、飛行中に剥がれる（劣化） */ attribute :>> itemName = "LO2 供給管のベローズ・ブラケットに氷や霜が付き、飛行中に剥がれる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-06'> fma_et_06 : SSD_FMM_ORB_001::FailureMode { doc /* 風のせん断で LO2 の揺動が大きく長引く（揺動防止装置があっても低周波の振動が持続）（劣化） */ attribute :>> itemName = "風のせん断で LO2 の揺動が大きく長引く（揺動防止装置があっても低周波の振動が持続）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-07'> fma_et_07 : SSD_FMM_ORB_001::FailureMode { doc /* ET/オービタの17インチ切離し弁の閉鎖が確認できず、ET 分離が抑止・遅延される（誤作動） */ attribute :>> itemName = "ET/オービタの17インチ切離し弁の閉鎖が確認できず、ET 分離が抑止・遅延される"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-08'> fma_et_08 : SSD_FMM_ORB_001::FailureMode { doc /* 同じ ET タンクの推進薬低レベルセンサ3つ以上が乾きに故障する（誤作動） */ attribute :>> itemName = "同じ ET タンクの推進薬低レベルセンサ3つ以上が乾きに故障する"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-09'> fma_et_09 : SSD_FMM_ORB_001::FailureMode { doc /* LH2 の ECO（枯渇）センサ表示が、乾きを指令しても湿りのままになる（誤作動） */ attribute :>> itemName = "LH2 の ECO（枯渇）センサ表示が、乾きを指令しても湿りのままになる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-10'> fma_et_10 : SSD_FMM_ORB_001::FailureMode { doc /* バイポッドランプの泡が飛行中に剥がれる（手吹きの泡の欠陥）（劣化）。事故で起きた事象：AE-107-01・AE-107-03・AE-107-05・AE-107-07 */ attribute :>> itemName = "バイポッドランプの泡が飛行中に剥がれる（手吹きの泡の欠陥）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-11'> fma_et_11 : SSD_FMM_ORB_001::FailureMode { doc /* PAL ランプ・氷/霜ランプなど、バイポッド以外の成形部の泡が剥がれる（劣化） */ attribute :>> itemName = "PAL ランプ・氷/霜ランプなど、バイポッド以外の成形部の泡が剥がれる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-12'> fma_et_12 : SSD_FMM_ORB_001::FailureMode { doc /* アクレージの泡が内部の流体の膨張で細かく剥がれる（ポップコーンニング）（劣化） */ attribute :>> itemName = "アクレージの泡が内部の流体の膨張で細かく剥がれる（ポップコーンニング）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-ET-13'> fma_et_13 : SSD_FMM_ORB_001::FailureMode { doc /* ET のアンビリカル域やブラケットに付いた氷などが飛行中に剥がれる（劣化） */ attribute :>> itemName = "ET のアンビリカル域やブラケットに付いた氷などが飛行中に剥がれる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-01'> fma_tps_01 : SSD_FMM_ORB_001::FailureMode { doc /* 翼前縁の RCC パネルが破れ（貫通し）、再突入で過熱空気が前縁の内部に入る（喪失）。事故で起きた事象：AE-107-07・AE-107-08・AE-107-09・AE-107-12・AE-107-13・AE-107-14・AE-107-15・AE-107-16・AE-107-17 */ attribute :>> itemName = "翼前縁の RCC パネルが破れ（貫通し）、再突入で過熱空気が前縁の内部に入る"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-02'> fma_tps_02 : SSD_FMM_ORB_001::FailureMode { doc /* RCC の酸化・被膜の欠損・ピンホールで強度が下がる（劣化） */ attribute :>> itemName = "RCC の酸化・被膜の欠損・ピンホールで強度が下がる"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-03'> fma_tps_03 : SSD_FMM_ORB_001::FailureMode { doc /* RCC パネルの背後への熱の浸入（T シールの隙間・断熱材の脇を回る漏れ流）（外部漏れ）。事故で起きた事象：AE-107-12・AE-107-13 */ attribute :>> itemName = "RCC パネルの背後への熱の浸入（T シールの隙間・断熱材の脇を回る漏れ流）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-04'> fma_tps_04 : SSD_FMM_ORB_001::FailureMode { doc /* HRSI タイルが破片の衝撃で損傷・脱落する（劣化）。事故で起きた事象：AE-107-02 */ attribute :>> itemName = "HRSI タイルが破片の衝撃で損傷・脱落する"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-05'> fma_tps_05 : SSD_FMM_ORB_001::FailureMode { doc /* ギャップフィラーがタイルの面から突き出し、再突入の境界層が早く遷移する（誤作動） */ attribute :>> itemName = "ギャップフィラーがタイルの面から突き出し、再突入の境界層が早く遷移する"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-06'> fma_tps_06 : SSD_FMM_ORB_001::FailureMode { doc /* タイルの隙間から高温ガスが入り、裏側のシール（フィラーバー）を傷める（外部漏れ） */ attribute :>> itemName = "タイルの隙間から高温ガスが入り、裏側のシール（フィラーバー）を傷める"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-07'> fma_tps_07 : SSD_FMM_ORB_001::FailureMode { doc /* 姿勢の管理に失敗し、TPS の接着層の温度が-170°F を下回る（または再突入開始の最大温度を超える）（劣化） */ attribute :>> itemName = "姿勢の管理に失敗し、TPS の接着層の温度が-170°F を下回る（または再突入開始の最大温度を超える）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #cause occurrence <'FMA-TPS-08'> fma_tps_08 : SSD_FMM_ORB_001::FailureMode { doc /* 冗長な TCS ヒータの回路が故障する（凍結防止・温度保持の喪失）（喪失） */ attribute :>> itemName = "冗長な TCS ヒータの回路が故障する（凍結防止・温度保持の喪失）"; attribute :>> sourceTable = "SSD-ACC-SYS-001"; }
        #causation connection <'FMA-SRB-08>HC-41'> fma_srb_08_hc_41 connect fma_srb_08 to SSD_HAZ_ORB_001::HazardModel::hc41;
        #causation connection <'FMA-SRB-14>HC-49'> fma_srb_14_hc_49 connect fma_srb_14 to SSD_HAZ_ORB_001::HazardModel::hc49;
        #causation connection <'FMA-SRB-19>HC-39'> fma_srb_19_hc_39 connect fma_srb_19 to SSD_HAZ_ORB_001::HazardModel::hc39;
        #causation connection <'FMA-SRB-20>HC-40'> fma_srb_20_hc_40 connect fma_srb_20 to SSD_HAZ_ORB_001::HazardModel::hc40;
        #causation connection <'FMA-ET-02>HC-29'> fma_et_02_hc_29 connect fma_et_02 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-ET-03>HC-24'> fma_et_03_hc_24 connect fma_et_03 to SSD_HAZ_ORB_001::HazardModel::hc24;
        #causation connection <'FMA-ET-04>HC-24'> fma_et_04_hc_24 connect fma_et_04 to SSD_HAZ_ORB_001::HazardModel::hc24;
        #causation connection <'FMA-ET-05>HC-29'> fma_et_05_hc_29 connect fma_et_05 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-ET-10>HC-29'> fma_et_10_hc_29 connect fma_et_10 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-ET-11>HC-29'> fma_et_11_hc_29 connect fma_et_11 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-ET-12>HC-29'> fma_et_12_hc_29 connect fma_et_12 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-ET-13>HC-29'> fma_et_13_hc_29 connect fma_et_13 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-TPS-01>HC-29'> fma_tps_01_hc_29 connect fma_tps_01 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-TPS-04>HC-29'> fma_tps_04_hc_29 connect fma_tps_04 to SSD_HAZ_ORB_001::HazardModel::hc29;
        #causation connection <'FMA-TPS-05>HC-31'> fma_tps_05_hc_31 connect fma_tps_05 to SSD_HAZ_ORB_001::HazardModel::hc31;
        #causation connection <'FMA-TPS-06>HC-31'> fma_tps_06_hc_31 connect fma_tps_06 to SSD_HAZ_ORB_001::HazardModel::hc31;
        #causation connection <'FMA-TPS-07>HC-31'> fma_tps_07_hc_31 connect fma_tps_07 to SSD_HAZ_ORB_001::HazardModel::hc31;
    }
    #Involves dependency <'FMA-SRB-01>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_01 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-02>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_02 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-03>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_03 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-04>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_04 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-05>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_05 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-06>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_06 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-07>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_07 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-08>SSD-FD-SRB-MTR-001'> from FunctionalFailureModes::fma_srb_08 to SSD_BLK_SYS_001::SRB_MTR;
    #Involves dependency <'FMA-SRB-09>SSD-FD-SRB-001'> from FunctionalFailureModes::fma_srb_09 to SSD_BLK_SYS_001::SRB;
    #Involves dependency <'FMA-SRB-10>SSD-FD-SRB-ATT-001'> from FunctionalFailureModes::fma_srb_10 to SSD_BLK_SYS_001::SRB_ATT;
    #Involves dependency <'FMA-SRB-11>SSD-FD-SRB-ATT-001'> from FunctionalFailureModes::fma_srb_11 to SSD_BLK_SYS_001::SRB_ATT;
    #Involves dependency <'FMA-SRB-12>SSD-FD-SRB-ATT-001'> from FunctionalFailureModes::fma_srb_12 to SSD_BLK_SYS_001::SRB_ATT;
    #Involves dependency <'FMA-SRB-13>SSD-FD-SRB-AVN-001'> from FunctionalFailureModes::fma_srb_13 to SSD_BLK_SYS_001::SRB_AVN;
    #Involves dependency <'FMA-SRB-14>SSD-FD-SRB-AVN-001'> from FunctionalFailureModes::fma_srb_14 to SSD_BLK_SYS_001::SRB_AVN;
    #Involves dependency <'FMA-SRB-15>SSD-FD-SRB-HDP-001'> from FunctionalFailureModes::fma_srb_15 to SSD_BLK_SYS_001::SRB_HDP;
    #Involves dependency <'FMA-SRB-16>SSD-FD-SRB-HDP-001'> from FunctionalFailureModes::fma_srb_16 to SSD_BLK_SYS_001::SRB_HDP;
    #Involves dependency <'FMA-SRB-17>SSD-FD-SRB-REC-001'> from FunctionalFailureModes::fma_srb_17 to SSD_BLK_SYS_001::SRB_REC;
    #Involves dependency <'FMA-SRB-18>SSD-FD-SRB-REC-001'> from FunctionalFailureModes::fma_srb_18 to SSD_BLK_SYS_001::SRB_REC;
    #Involves dependency <'FMA-SRB-19>SSD-FD-SRB-TVC-001'> from FunctionalFailureModes::fma_srb_19 to SSD_BLK_SYS_001::SRB_TVC;
    #Involves dependency <'FMA-SRB-20>SSD-FD-SRB-TVC-001'> from FunctionalFailureModes::fma_srb_20 to SSD_BLK_SYS_001::SRB_TVC;
    #Involves dependency <'FMA-ET-01>SSD-FD-ET-001'> from FunctionalFailureModes::fma_et_01 to SSD_BLK_SYS_001::ET;
    #Involves dependency <'FMA-ET-02>SSD-FD-ET-ITK-001'> from FunctionalFailureModes::fma_et_02 to SSD_BLK_SYS_001::ET_ITK;
    #Involves dependency <'FMA-ET-03>SSD-FD-ET-LH2-001'> from FunctionalFailureModes::fma_et_03 to SSD_BLK_SYS_001::ET_LH2;
    #Involves dependency <'FMA-ET-04>SSD-FD-ET-UMB-001'> from FunctionalFailureModes::fma_et_04 to SSD_BLK_SYS_001::ET_UMB;
    #Involves dependency <'FMA-ET-05>SSD-FD-ET-LOX-001'> from FunctionalFailureModes::fma_et_05 to SSD_BLK_SYS_001::ET_LOX;
    #Involves dependency <'FMA-ET-06>SSD-FD-ET-LOX-001'> from FunctionalFailureModes::fma_et_06 to SSD_BLK_SYS_001::ET_LOX;
    #Involves dependency <'FMA-ET-07>SSD-FD-ET-SEP-001'> from FunctionalFailureModes::fma_et_07 to SSD_BLK_SYS_001::ET_SEP;
    #Involves dependency <'FMA-ET-08>SSD-FD-ET-SEP-001'> from FunctionalFailureModes::fma_et_08 to SSD_BLK_SYS_001::ET_SEP;
    #Involves dependency <'FMA-ET-09>SSD-FD-ET-UMB-001'> from FunctionalFailureModes::fma_et_09 to SSD_BLK_SYS_001::ET_UMB;
    #Involves dependency <'FMA-ET-10>SSD-FD-ET-TPS-001'> from FunctionalFailureModes::fma_et_10 to SSD_BLK_SYS_001::ET_TPS;
    #Involves dependency <'FMA-ET-11>SSD-FD-ET-TPS-001'> from FunctionalFailureModes::fma_et_11 to SSD_BLK_SYS_001::ET_TPS;
    #Involves dependency <'FMA-ET-12>SSD-FD-ET-TPS-001'> from FunctionalFailureModes::fma_et_12 to SSD_BLK_SYS_001::ET_TPS;
    #Involves dependency <'FMA-ET-13>SSD-FD-ET-TPS-001'> from FunctionalFailureModes::fma_et_13 to SSD_BLK_SYS_001::ET_TPS;
    #Involves dependency <'FMA-TPS-01>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_01 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-02>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_02 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-03>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_03 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-04>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_04 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-05>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_05 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-06>SSD-FD-TPS-001'> from FunctionalFailureModes::fma_tps_06 to SSD_BLK_SYS_001::TPS;
    #Involves dependency <'FMA-TPS-07>SSD-FD-TCS-001'> from FunctionalFailureModes::fma_tps_07 to SSD_BLK_SYS_001::TCS;
    #Involves dependency <'FMA-TPS-08>SSD-FD-TCS-PTC-001'> from FunctionalFailureModes::fma_tps_08 to SSD_BLK_SYS_001::TCS_PTC;
    // ---- 故障の木（事象＝Boolean の属性、ゲート＝and／or の式、頂上事象＝top）
    part def FaultTreeA1 {
        doc /* FTA-A1 上昇中の機体の喪失（SRB の継手からの燃焼ガスの漏れ） */
        attribute b1 : Boolean { doc /* B1 低温（約 28±5°F）で O リングの復元が遅れ、圧力作動が間に合わない（対応：FMA-SRB-01） */ }
        attribute b2 : Boolean { doc /* B2 組立の隙間の縮小（平均 0.004 inch）で O リングが溝を満たし、圧力作動が妨げられる（対応：FMA-SRB-01） */ }
        attribute b3 : Boolean { doc /* B3 断熱パテの圧力作動の遅れ・吹き抜けの孔（対応：FMA-SRB-03） */ }
        attribute b4 : Boolean { doc /* B4 組立中の損傷・金属片などの汚染（報告書は本件の要因とせず）（対応：FMA-SRB-01） */ }
        attribute b5 : Boolean { doc /* B5 継手の回転で二次 O リングが座から離れ、圧縮を失う（対応：FMA-SRB-02） */ }
        attribute b6 : Boolean { doc /* B6 継手内の水が凍って二次 O リングを座から外す（対応：FMA-SRB-02） */ }
        attribute b7 : Boolean { doc /* B7 懸念が打上げ判断で止められなかった（技術者の勧告が覆され、発射の制約が免除された） */ }
        attribute b8 : Boolean { doc /* B8 ケース壁（膜）の破れ（報告書は支持せず）（対応：FMA-SRB-06） */ }
        attribute b9 : Boolean { doc /* B9 推進薬のひび・剥離（報告書は除いた）（対応：FMA-SRB-07） */ }
        attribute b10 : Boolean { doc /* B10 ノズル継手の O リングの破れ（本件の穴は現場継手にあった）（対応：FMA-SRB-04） */ }
        attribute b11 : Boolean { doc /* B11 射場安全系の誤起爆（73 s には起爆していない）（対応：FMA-SRB-13） */ }
        attribute g5 : Boolean = b8 or b9 or b10 or b11 { doc /* G5 OR：ほかの経路での機体の喪失（報告書が検討して退けたもの） */ }
        attribute g4 : Boolean = b5 or b6 { doc /* G4 OR：二次 O リングが一次の代わりに封止しない */ }
        attribute g3 : Boolean = b1 or b2 or b3 or b4 { doc /* G3 OR：一次 O リングが封止しない */ }
        attribute g2 : Boolean = g3 and g4 and b7 { doc /* G2 AND：現場継手の燃焼ガスの漏れが続き、結合部・外部タンクを破る */ }
        attribute g1 : Boolean = g2 or g5 { doc /* G1 OR：上昇中の機体の喪失（SRB の継手からの燃焼ガスの漏れ） */ }
        attribute top : Boolean = g1 { doc /* 頂上事象：上昇中の機体の喪失（SRB の継手からの燃焼ガスの漏れ） */ }
    }
    part def FaultTreeA2 {
        doc /* FTA-A2 再突入中の機体の喪失（翼前縁の熱防護の破れ） */
        attribute b1 : Boolean { doc /* B1 左バイポッドランプの泡の剥離（手吹きの欠陥と飛行環境の組合せ）（対応：FMA-ET-10） */ }
        attribute b2 : Boolean { doc /* B2 ET の他の部位の泡の剥離（PAL ランプ・フランジの閉じ込め部・アクレージ）（対応：FMA-ET-11） */ }
        attribute b3 : Boolean { doc /* B3 ET の氷の剥離（LO2 供給管のベローズ・ブラケット）（対応：FMA-ET-05） */ }
        attribute b4 : Boolean { doc /* B4 剥がれた破片が左翼前縁に向かって当たる（衝突の位置・速度） */ }
        attribute b5 : Boolean { doc /* B5 RCC の耐衝撃性が不足し、衝撃が固有の強さを超える（対応：FMA-TPS-01） */ }
        attribute b6 : Boolean { doc /* B6 RCC の酸化・被膜の欠損・ピンホールによる強度の低下（対応：FMA-TPS-02） */ }
        attribute b7 : Boolean { doc /* B7 軌道デブリ・微小隕石の衝突（CAIB は証拠がほとんどないとした）（対応：HC-30） */ }
        attribute b8 : Boolean { doc /* B8 SRB ボルトキャッチャーの破片の衝突（CAIB は可能性が低いとした） */ }
        attribute b9 : Boolean { doc /* B9 高解像度の画像がなく、破れに気づけない */ }
        attribute b10 : Boolean { doc /* B10 損傷評価の道具（Crater モデル）が不適で、損傷を過小評価する */ }
        attribute b11 : Boolean { doc /* B11 軌道上で補修・救出する実用的な能力がない（修理案は高リスク） */ }
        attribute g7 : Boolean = b9 or b10 { doc /* G7 OR：破れの検知・評価の失敗 */ }
        attribute g6 : Boolean = g7 and b11 { doc /* G6 AND：破れが再突入の前に補修・回避されない */ }
        attribute g5 : Boolean = b5 or b6 { doc /* G5 OR：RCC が衝撃に耐えない */ }
        attribute g4 : Boolean = b1 or b2 or b3 { doc /* G4 OR：ET の TPS から破片が出る */ }
        attribute g3 : Boolean = g4 and b4 and g5 { doc /* G3 AND：上昇中の破片が翼前縁を破る */ }
        attribute g2 : Boolean = g3 or b7 or b8 { doc /* G2 OR：再突入の開始までに翼前縁に破れが生じる */ }
        attribute g1 : Boolean = g2 and g6 { doc /* G1 AND：再突入中の機体の喪失（翼前縁の熱防護の破れ） */ }
        attribute top : Boolean = g1 { doc /* 頂上事象：再突入中の機体の喪失（翼前縁の熱防護の破れ） */ }
    }
    // ---- 勧告と改修（教訓。関係する機能ブロックの part def に付ける。機能ブロックの無いものは系全体 STS に付ける）
    metadata def LessonLearned { attribute recommendation : String; attribute change : String; attribute category : String; }
    metadata <'AL-51L-01'> al_51l_01 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：欠陥のある固体ロケットモータの継手とシールを変更する。継手は理解・試験・検証され、寸法の公差・取扱い・組立・検査と試験・環境・内圧・再使用・荷重に鈍感であること"; change = "現場継手を再設計：舌の捕捉ラッチ、カスタムシム、クレビスの O リングの溝の拡大（溝の 90 パーセント以下）、3本目の O リング、リーク検査口の追加"; category = "設計"; }
    metadata <'AL-51L-02'> al_51l_02 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：すべての固体ロケットモータの継手が同じ要求を満たすこと"; change = "ノズルとケースの継手に封止した半径方向ボルト・拭い取り O リング・流れの邪魔板付きフラップを加え、ノズルの金属部品・耐熱材・シールを冗長で検証できるよう再設計、点火器のチャンバの壁を厚く、工場の継手に断熱とシールを追加"; category = "設計"; }
    metadata <'AL-51L-03'> al_51l_03 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：継手の完全性が環境の影響（温度）に鈍感であること"; change = "外部ヒータと一体の気象シールで現場継手のシールを 75°F 以上に保ち、水の侵入を防ぐ。SRB の地上インタフェースは打上げ前のヒータ電力と加熱した窒素のパージ・ガスを供給（STS-114 の待機中もヒータが作動）"; category = "設計"; }
    metadata <'AL-51L-04'> al_51l_04 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：継手の完全性が検査と試験の手順に鈍感であること"; change = "漏れ検査で吹き抜けの孔ができるパテをやめ、たわみ逃がしフラップ付きの封止断熱に変更。リーク検査口を一次 O リングの前に追加し、組立後の漏れと O リングの位置を確かめる"; category = "設計"; }
    metadata <'AL-51L-05'> al_51l_05 : LessonLearned about SSD_BLK_SYS_001::SRB_ATT { recommendation = "Recommendation I（Design）：継手の完全性が飛行と着水の荷重に鈍感であること"; change = "SRB の ET 後部結合リングを約 270 度の回り込みから 360 度へ改め、後部スカートのボルトの強度を上げ、ガセットとブラケットを足して強化（SRB の重量は約 450 pounds 増えた）"; category = "設計"; }
    metadata <'AL-51L-06'> al_51l_06 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：継手の完全性が寸法の公差・輸送と取扱い・組立・再使用に鈍感であること"; change = "地上支援設備を再設計：ケースの測定と丸めを改善、ガイドと丸めリングで舌をクレビスの形に合わせて組み立て、全ケースセグメントを複数回の耐圧試験で寸法安定化"; category = "運用"; }
    metadata <'AL-51L-07'> al_51l_07 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：新しい設計の認証は、打上げの構成にできるだけ近い試験と、温度を含む運用条件の全範囲の試験を含むこと。実際の飛行の構成の静止燃焼を垂直姿勢で行うことを十分に検討する"; change = "全規模の静止燃焼（工学試験1・開発2・認証3）を打上げ前に行う計画。静止燃焼の姿勢は水平を維持（勧告の垂直姿勢の検討に対する NASA の判断）。継手環境シミュレータの試験は 51-L 構成も模擬した"; category = "試験・検証"; }
    metadata <'AL-51L-08'> al_51l_08 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Independent Oversight（Recommendation I の見出しの下）：NASA 長官は National Research Council に独立した固体ロケットモータ設計監視委員会の設置を依頼する"; change = "National Research Council の独立監視パネル（議長 H. Guyford Stever）が NASA 長官に直接報告し、設計・検証の解析・試験の計画を審査"; category = "試験・検証"; }
    metadata <'AL-51L-09'> al_51l_09 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Recommendation III（Criticality Review and Hazard Analysis）：NASA と主要な請負業者が Criticality 1・1R・2・2R のすべての品目とハザード解析を見直す。National Research Council の監査委員会が妥当性を確認する"; change = "損失に至る故障モードを持つ品目の免除をすべて取り消して NSTS 部長への再提出を求めた。National Research Council の監査委員会（議長 Alton Slay）が NASA 長官に直接報告"; category = "試験・検証"; }
    metadata <'AL-51L-10'> al_51l_10 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Recommendation V（Improved Communications）：発射の制約の設定と解除を定める方針を作る"; change = "NSTS は発射の制約を特定し定義する正式な手続を作り、制約の設定・解除・免除は NSTS 部長の責任とし、各飛行の制約は FRR で審査。各プロジェクト管理者と請負業者は FRR で飛行準備の証明書に署名"; category = "運用"; }
    metadata <'AL-51L-11'> al_51l_11 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Recommendation V（Improved Communications）：FRR と飛行管理チームの会議を記録する。飛行乗員の指揮官か代理が FRR に出席して、乗員が準備できていることを証明する"; change = "FRR と MMT の議事を記録して正式な議事録を公表。Flight Crew Operations Directorate を project element とし、その部長か代理が FRR に参加して MMT の構成員となり、乗員の準備と未解決の問題が無いことを証明"; category = "運用"; }
    metadata <'AL-51L-12'> al_51l_12 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Recommendation IV（Safety Organization）：NASA 長官に直接報告する Office of Safety, Reliability and Quality Assurance を設ける"; change = "Office of Safety, Reliability, Maintainability, and Quality Assurance（SRM&QA）を設置し、NASA 長官に直接報告する Associate Administrator for SRM&QA の職を新設"; category = "組織・管理"; }
    metadata <'AL-51L-13'> al_51l_13 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "Recommendation II（Shuttle Management Structure）：プログラム管理者に全 STS 運用の権限を与える。STS 安全助言パネルを設ける"; change = "要素のプロジェクト管理者が NSTS 部長にプログラム上で報告する管理構造にして管理の孤立を減らし、STS 安全助言パネルを安全室の代表を含めて置いた（パネルの議長は組織上 NSTS 副部長に報告）"; category = "組織・管理"; }
    metadata <'AL-51L-14'> al_51l_14 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "（Recommendation I の実施結果の確認）飛行再開の STS-26 の飛行後の点検"; change = "STS-26 の SRB は異常も打上げ条件の違反も無く、飛行後の継手の点検で異常な挙動の証拠は無く、すべての O リングは優れた状態だった。捕捉ラッチの脚にこすり傷（冷間圧接）があった"; category = "試験・検証"; }
    metadata <'AL-51L-15'> al_51l_15 : LessonLearned about SSD_BLK_SYS_001::SRB_MTR { recommendation = "Recommendation I（Design）：継手の完全性が検査の手順に鈍感であること（非破壊検査）"; change = "全セグメントの X 線検査を近い飛行について再開し、空軍と共同で推進薬と断熱材の接着面の超音波検査などの非破壊検査を開発"; category = "試験・検証"; }
    metadata <'AL-107-01'> al_107_01 : LessonLearned about SSD_BLK_SYS_001::ET_TPS { recommendation = "CAIB R3.2-1：ET の TPS の破片放出を発生源で断つ積極的なプログラム（特にバイポッド支柱の取付け域）"; change = "バイポッドランプの泡を廃止して金具の閉じ込め部を再設計しヒータを設け、LH2/インタータンクのフランジの閉じ込め部の再設計、LO2 供給管ベローズの着氷対策（ドリップリップと前方ベローズのヒータ）、インタータンクのベント増設、手吹き工程の管理と検査の強化を行った。RTF TG は、ET はなお危険な破片を出すとして勧告の趣旨を満たさないとした。改修後の STS-114・122・135 でも ET の泡の剥離が記録された"; category = "設計"; }
    metadata <'AL-107-02'> al_107_02 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.3-1：RCC 全部品の構造健全性を調べる総合的な検査計画（先進の非破壊検査を活用）"; change = "各オービタの翼前縁・機首キャップ・チンパネルの RCC を取り外してメーカーで超音波・X線・渦電流とフラッシュサーモグラフィにより検査し、飛行済みパネル3枚を破壊試験した。機上で使える非破壊検査の技術を開発した。RTF TG は趣旨を満たしたとした"; category = "試験・検証"; }
    metadata <'AL-107-03'> al_107_03 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.3-2・R3.3-3：小さな破片の損傷に耐え、前縁の軽微な損傷でも再突入できる能力（耐衝撃 RCC・外板タイル）"; change = "RCC パネル5〜13の背後に流れ制限器と追加の断熱材を設け、側面の窓1・6の外側の熱ペインを0.30インチ厚くするなど、強化の第1段階を実施した。残りのパネルは帰還飛行の後に回し、初期の長期強化計画はシャトルの退役方針の決定後に取りやめられた。RTF TG は趣旨を十分には満たさなかったとした"; category = "設計"; }
    metadata <'AL-107-04'> al_107_04 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "CAIB R3.4-1：打上げから SRB 分離まで、どの上昇方位でも3つ以上の有用な視点の画像"; change = "射点周囲に近距離3・中距離7・遠距離9の追尾カメラ（各カメラに予備）を置き、51.6度の打上げ方位に最適化した。RTF TG は趣旨を満たしたとした"; category = "設計"; }
    metadata <'AL-107-05'> al_107_05 : LessonLearned about SSD_BLK_SYS_001::ET { recommendation = "CAIB R3.4-2：分離後の ET の高解像度画像を取得してダウンリンクする"; change = "アンビリカル格納部のフィルムカメラをデジタルカメラに替えて画像を飛行中にダウンリンクできるようにし、ET の LO2 供給管フェアリングと各 SRB の前部スカートにカメラを設けた。クルーの手持ちカメラの撮影も続ける"; category = "設計"; }
    metadata <'AL-107-06'> al_107_06 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.4-3：オービタの翼前縁の下面と両翼前部のタイルの高解像度画像を取得してダウンリンクする（早期の軌道上点検を含む R6.4-1）"; change = "OBSS（50 ft のブーム、LDRI と LCS）を新設して機首キャップと翼前縁を走査し、ISS から R-bar ピッチ機動でタイルを撮影し、翼前縁に加速度計・温度センサの衝突検知システムを設けた。STS-114の上昇中の検知と OBSS の点検で翼前縁の損傷がないことを確認した"; category = "設計"; }
    metadata <'AL-107-07'> al_107_07 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R6.4-1：ISS ミッションでは TPS（タイルと RCC）の幅広い損傷を点検して応急修理する実用的な能力"; change = "RCC は NOAX とプラグ、タイルはエミッタンスウォッシュと CIPA の修理案を STS-114 で試験した。ISS のロボットアームでオービタを裏返す ORM も用意した。RTF TG は、修理は趣旨を満たさず（点検は満たした）、修理技術は実用的な能力とするには成熟していないとした。STS-114では EVA で突き出たギャップフィラーを取り外した"; category = "運用"; }
    metadata <'AL-107-08'> al_107_08 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.6-1・R3.6-2：MADS の計器とセンサを更新し、工学性能・機体健全性の情報を含めて飛行中に再構成できるよう再設計する"; change = "資料に無い（RTF TG の取り込んだ頁では、MADS の更新は帰還飛行の条件に含まれていない）"; category = "設計"; }
    metadata <'AL-107-09'> al_107_09 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.8-2：破片の衝突による TPS 損傷を評価する物理に基づく計算モデルの開発・検証と、是正措置を起こす損傷のしきい値"; change = "Orbiter Damage Impact Assessment Team が、タイル・RCC・窓の耐衝撃性と損傷許容性を試験と解析で求め、RCC は耐衝撃性はあるが損傷許容性が小さいことや、タイルの部位ごとの損傷の許容深さ（ゾーンと空洞の定義）を認定した。前方 RCS スラスタを覆うバッチャー紙は窓を傷めるため Tyvek に替えた"; category = "試験・検証"; }
    metadata <'AL-107-10'> al_107_10 : LessonLearned about SSD_BLK_SYS_001::TPS { recommendation = "CAIB R3.8-1：RCC の予備パネルを十分に確保し、RCC の保守の判断が日程や費用の圧力を受けないようにする"; change = "資料に無い（RTF TG は、予備の RCC パネルが1機分しかなく製造に長い時間がかかることを懸念したと述べるのみ）"; category = "運用"; }
    metadata <'AL-107-11'> al_107_11 : LessonLearned about SSD_BLK_SYS_001::ET_ITK { recommendation = "CAIB R4.2-1：飛行品のボルトキャッチャーの試験と認定"; change = "既存品の認定にとどまらず、SRB のボルトキャッチャーを再設計して新設計を認定した。RTF TG は CAIB の趣旨を大きく超えたと評価した"; category = "試験・検証"; }
    metadata <'AL-107-12'> al_107_12 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "CAIB R4.2-3・R4.2-5：最終クローズアウトと手吹き作業に2人以上の立会い、KSC の FOD の定義を業界標準に戻す"; change = "すべての場所の最終点検で2人以上が立ち会う手順に改め、KSC と USA が FOD の定義を業界標準に合わせて processing debris の区分を廃止した。RTF TG は趣旨を満たしたとした"; category = "運用"; }
    metadata <'AL-107-13'> al_107_13 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "CAIB R6.3-1・R6.3-2：Mission Management Team の訓練の拡充と、NIMA との協定による軌道上の撮像の標準化"; change = "MMT の新しい訓練計画を作り、10回超の対面を含む模擬訓練を行った。NASA と NGA（NIMA の後継）の協定を改め、必要な機密取扱いの資格を得た。RTF TG は趣旨を満たしたとした"; category = "組織・管理"; }
    metadata <'AL-107-14'> al_107_14 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "CAIB R6.2-1：利用可能な資源に見合った飛行日程の採用・維持"; change = "日程圧力を防ぐ新しい道具と工程を設けた。RTF TG は趣旨を満たしたが、シャトルの退役予定との関係に注意が要るとした"; category = "組織・管理"; }
    metadata <'AL-107-15'> al_107_15 : LessonLearned about SSD_BLK_SYS_001::SpaceTransportationSystem { recommendation = "CAIB R7.5-1〜R7.5-3・R9.1-1：独立した技術権限、安全組織の直接の指揮権限、統合室の再編、組織変更の計画"; change = "独立した技術権限の計画は CAIB の趣旨に沿うが抵抗が残るとされた。安全・ミッション保証(R7.5-2)への計画は NASA が意図的に勧告と異なる案をとった。システム工学・統合(R7.5-3)の実施は一様でないとされた。RTF TG は勧告 9.1-1 の趣旨を満たしたが、実際の変更の評価は一様でないとした"; category = "組織・管理"; }
}
