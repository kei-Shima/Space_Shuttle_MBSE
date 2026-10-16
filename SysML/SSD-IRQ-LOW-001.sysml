// SysML v2 テキスト：インタフェース要求書（ECLSS 以外の下位の IF）
// SSD-IRQ-LOW-001 インタフェース要求書（ECLSS 以外の下位の IF） の表から生成（lib/build_docs_cl.py・rev_cl/cldata.py）。根拠の頁は SSD-IRQ-LOW-001 にある。
package SSD_IRQ_LOW_001 {
    doc /* SSD-IRQ-LOW-001 インタフェース要求書（ECLSS 以外の下位の IF）。下位の IF のインタフェース要求を requirement、上位の要求からの導出、割付先の IF による充足、要求ごとの検証ケースと結果で示す。図252・253 と同じ内容。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_RQM_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::*;
    private import SSD_RQL_SYS_001;
    private import SSD_RQL_ECL_001;
    private import SSD_IRQ_SYS_001;
    // ---- インタフェース要求（IF ごとに1件）
    package <'IRQ'> InterfaceRequirements {
        doc /* 下位の IF（系の中の IF-<系>-nn）のインタフェース要求（インタフェース要求書（ECLSS 以外の下位の IF））。値と根拠は IF の行（所有の文書）の文と出典による */
        requirement <'IRQ-APU-01'> IRQ_APU_01 {
            subject s : Parts::Part;
            doc /* 燃料系は タービン・ギアボックス へ、加圧したヒドラジンを燃料タンク隔離弁とフィルタからガス発生器弁モジュールを経てガス発生器へ送り、ガス発生器が触媒で燃料を分解した高温ガスで単段・2回通過のタービンを回すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-02'> IRQ_APU_02 {
            subject s : Parts::Part;
            doc /* APU 制御器は ヒドラジン燃料供給 との間で、主燃料制御弁をパルス駆動して APU の回転数を保ち、主弁が電力を失って全開になると副弁をパルス駆動して回転数を制御し、各燃料タンクの温度と GN2 圧力を監視して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-APU-03'> IRQ_APU_03 {
            subject s : Parts::Part;
            doc /* APU 運用は ヒドラジン燃料供給 へ、パネル R2 の APU FUEL TK VLV 1・2・3 スイッチを OPEN にすると各 APU の2個の燃料タンク隔離弁を通電して開き、CLOSE にするか電力を失うと両弁を閉じること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-04'> IRQ_APU_04 {
            subject s : Parts::Part;
            doc /* タービンは 主油圧ポンプ・供給 へ、軸動力を減速ギアボックスを介して対応する主油圧ポンプへ送って通常 3,918 rpm で回し、HYD MAIN PUMP PRESS スイッチが NORM のままでは APU を始動できないようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "3,918 rpm"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-05'> IRQ_APU_05 {
            subject s : Parts::Part;
            doc /* APU の潤滑油系は 水噴霧ボイラ へ、各 APU の潤滑油を、対応する水噴霧ボイラの熱交換器に通して冷却する熱を伝え、ボイラは潤滑油を約 250°F に保ち、潤滑油はボイラを2回通ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "約 250°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-06'> IRQ_APU_06 {
            subject s : Parts::Part;
            doc /* APU 制御器は タービン・ギアボックス との間で、ギアボックス圧力が 5.2 psi 未満になると潤滑油系の GN2 加圧弁を通電して開いてギアボックス圧力を保ち、ガス発生器床ヒータを床温度センサの信号による比較器で 360〜425°F に保って双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "5.2 psi、360〜425°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-07'> IRQ_APU_07 {
            subject s : Parts::Part;
            doc /* 主油圧ポンプは 水噴霧ボイラ へ、送る作動油をボイラの油圧用熱交換器に通して冷却し、作動油が 210°F になるとボイラへ導かれ、190°F に下がると温度制御のバイパス弁でボイラを迂回させて熱を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "210°F で導入、190°F で迂回"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-08'> IRQ_APU_08 {
            subject s : Parts::Part;
            doc /* 循環ポンプは 主油圧ポンプ・供給 へ、高圧側で軌道上の休止中のアキュムレータ圧力を保ち、低圧側で作動油を油圧配管に循環させて低温部を温め、出口のアンローダ弁はアキュムレータ圧力が 2,563 psia を超えるまで高圧側の吐出をアキュムレータへ送って供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "アンローダ弁 2,563 psia"; phases = "PH-1（打上げ前）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-09'> IRQ_APU_09 {
            subject s : Parts::Part;
            doc /* 油圧系は MPS：油圧・推力方向制御 へ、3系統の油圧を MPS/TVC ISOL VLV スイッチで開閉する隔離弁を経て各 SSME の油圧作動弁5個の作動と推力方向制御のために供給し、各 SSME のサーボアクチュエータは3系統のうち2系統から油圧を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "SSME 油圧作動弁5個"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-10'> IRQ_APU_10 {
            subject s : Parts::Part;
            doc /* 油圧系は GN&C：舵面・推力方向制御駆動 へ、3系統の油圧を7面の空力舵面を駆動する油圧アクチュエータへ供給し、4基のエレボンのサーボアクチュエータにはそれぞれ3系統すべての油圧を供給し、主系の圧力が約 1,200〜1,500 psia に下がると切替弁が待機系に切り替えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "7面、約 1,200〜1,500 psia"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-12'> IRQ_APU_12 {
            subject s : Parts::Part;
            doc /* APU 制御器は DPS：飛行ソフトウェア・MMU へ、燃料タンクの温度と GN2 圧力を GPC へ送って燃料量を計算させ APU FUEL/H2O QTY 計に示させ、潤滑油ポンプの出口圧力・出口温度と WSB からの戻り温度を GPC 経由で BFS SM SYS SUMM 2 に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-13'> IRQ_APU_13 {
            subject s : Parts::Part;
            doc /* 循環ポンプの運用は DPS：飛行ソフトウェア・MMU との間で、HYD CIRC PUMP スイッチが GPC のとき SM GPC が油圧配管の温度とアキュムレータ圧力に基づく制御プログラムで循環ポンプを入り切りし、出口圧力と油圧配管・機器の温度を SM HYD THERMAL 表示（DISP 87）に示して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "DISP 87"; phases = "PH-1（打上げ前）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-APU-14'> IRQ_APU_14 {
            subject s : Parts::Part;
            doc /* 水噴霧ボイラは DPS：飛行ソフトウェア・MMU へ、各ボイラの GN2 容器と水タンクの冗長な圧力・温度センサの値を制御器を通して SM GPC へ送り、GPC が水タンクの量を計算して専用の MEDS 表示へ送り、軌道上では SM APU/HYD 表示（DISP 86）に示させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "DISP 86"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-16'> IRQ_APU_16 {
            subject s : Parts::Part;
            doc /* 油圧系は 警報系（C/W） へ、各油圧系のフィルタモジュールの圧力センサ A が、系統 1・2・3 のいずれかの圧力が 2,400 psi 未満になると F7 の黄色の HYD PRESS 灯へ入力を与え、赤の BACKUP C/W ALARM も点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "2,400 psi 未満"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-APU-17'> IRQ_APU_17 {
            subject s : Parts::Part;
            doc /* APU 制御器は 電力系（EPS）：直流配電 から、パネル R2 の APU CNTLR PWR スイッチを ON にすると 28 V 直流電力を受け、APU・燃料系・水系のヒータもパネル A12 のスイッチで給電されてサーモスタットで自動制御されること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "28 V 直流"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-18'> IRQ_APU_18 {
            subject s : Parts::Part;
            doc /* 循環ポンプは 電力系（EPS）：直流配電 から、パネル A12 の HYD CIRC PUMP POWER スイッチで選ぶ2系統の主母線のどちらかから給電を受け、公称では循環ポンプ 1・2・3 の電源をそれぞれ MNA・MNB・MNC とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MNA・MNB・MNC"; phases = "PH-1（打上げ前）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-19'> IRQ_APU_19 {
            subject s : Parts::Part;
            doc /* APU 運用は APU制御器 へ、パネル R2 の APU OPERATE スイッチを START/RUN にすると対応する制御器が APU の始動を開始してガス発生器と燃料ポンプのヒータの電力を自動で断ち、APU AUTO SHUT DOWN スイッチの ENABLE・INHIBIT で自動停止の機能を有効・禁止させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-20'> IRQ_APU_20 {
            subject s : Parts::Part;
            doc /* APU 運用は 主油圧ポンプ・供給 へ、パネル R2 の HYD MAIN PUMP PRESS スイッチを LOW にすると減圧弁を通電して主ポンプの吐出圧を 500〜1,000 psi に下げ、APU の始動後に NORM にすると通電を切って吐出圧を 2,900〜3,100 psi に上げること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "LOW 500〜1,000 psi、NORM 2,900〜3,100 psi"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-21'> IRQ_APU_21 {
            subject s : Parts::Part;
            doc /* APU 運用は 水噴霧ボイラ との間で、パネル R2 の BOILER N2 SUPPLY スイッチで各ボイラの窒素遮断弁を開閉し、制御器が有効・窒素遮断弁が開・蒸気ベントのノズル温度が 130°F 超・作動油のバイパス弁が正しい位置のとき APU/HYD READY TO START 表示へ準備完了の信号を送って双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "蒸気ベントのノズル温度 130°F 超"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-22'> IRQ_APU_22 {
            subject s : Parts::Part;
            doc /* タービンは 宇宙空間（船外） へ、各 APU のヒドラジンの分解ガスで回したタービンの排気を垂直尾翼付近の後部胴体上部の排気ダクトから機外へ出し、ガス温度を排気ダクトで約 1,000°F とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "約 1,700°F の分解ガス、排気ダクトで約 1,000°F"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-APU-23'> IRQ_APU_23 {
            subject s : Parts::Part;
            doc /* 水噴霧ボイラは 宇宙空間（船外） へ、蒸気を垂直尾翼の右舷側にあるボイラごとの排気ダクトから機外へ出し、給水弁が開くと作動油部に最大毎分10ポンド、潤滑油部に最大毎分5ポンドの水を流して、潤滑油を約 250°F、作動油を 210〜220°F に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "最大毎分10ポンド、毎分5ポンド、約 250°F、210〜220°F"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-24'> IRQ_APU_24 {
            subject s : Parts::Part;
            doc /* ギアボックスは ヒドラジン燃料供給 へ、燃料ポンプ・油圧ポンプ・潤滑油ポンプを駆動し、燃料ポンプは約 1,400〜1,500 psi を吐出して出口フィルタが詰まると約 1,725 psi でポンプ入口へ逃がし、シールの漏れは回収ボトルから約 45 psia で機外へ出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "約 1,400〜1,500 psi、約 1,725 psi、約 45 psia"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-APU-25'> IRQ_APU_25 {
            subject s : Parts::Part;
            doc /* 油圧系は DPS：データバス網・MDM から、系統 1 の作動油を脚のアップロック・ストラット作動器と NWS 切替弁へ流し、ブレーキ隔離弁は接地後の GPC 指令で、脚伸展隔離弁は Mach 0.8 で MDM 経由の指令で開くこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "Mach 0.8"; phases = "PH-1（打上げ前）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-01'> IRQ_CREW_01 {
            subject s : Parts::Part;
            doc /* ギャレー給水は 居住（CREW） へ、洗顔用の常温の温水を、ギャレーの補助ポートにつないだ個人衛生ホース（PHH）から供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-02'> IRQ_CREW_02 {
            subject s : Parts::Part;
            doc /* 医療は ECLSS：ギャレー給水 から、汚染除去キットの非常用洗眼器をギャレーの清水につないで目を洗うための清水を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-03'> IRQ_CREW_03 {
            subject s : Parts::Part;
            doc /* 脱出系は ECLSS：酸素供給 から、ACES の酸素マニホールドのホース継手を素早く離れる継手付きでオービタの酸素供給ホースにつなぎ、酸素を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-04'> IRQ_CREW_04 {
            subject s : Parts::Part;
            doc /* 医療は ECLSS：酸素供給 から、取り出した蘇生器を中甲板のパネル MO32M・MO69M と飛行甲板のパネル C6 でオービタの酸素供給につないで酸素を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-05'> IRQ_CREW_05 {
            subject s : Parts::Part;
            doc /* 生体計測系は C&T：計装・ペイロード通信 へ、心電図の信号をアビオニクスでデジタルデータに変え、実時間で地上へ送るか記録してあとで送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-06'> IRQ_CREW_06 {
            subject s : Parts::Part;
            doc /* 照明は 電力系：直流配電（EPS） から、非常照明の器具を必須母線からの別の電源入力で給電され、ペイロードベイの投光照明を中部電力制御組立から 10 A の遠隔電力制御器を通して給電されること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "遠隔電力制御器 10 A"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CREW-07'> IRQ_CREW_07 {
            subject s : Parts::Part;
            doc /* 脱出系は STR：乗員室（与圧）・窓 へ、側面ハッチの投棄で膨張チューブ組立にハッチのアダプタリングをオービタに留める70本の破断ボルトを割らせ、線形成形爆薬にヒンジを切らせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "破断ボルト70本"; phases = "PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-08'> IRQ_CREW_08 {
            subject s : Parts::Part;
            doc /* 収納は 居住・衛生 へ、個人の衛生用品を打上げ時に中甲板のロッカーや収納袋に収めて運び、軌道上で取り出して使えるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-09'> IRQ_CREW_09 {
            subject s : Parts::Part;
            doc /* 収納は 医療・生体・放射線 へ、SOMS の多くを中甲板のロッカー 1 つにまとめて収め、使うときに取り出して取り付けられるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "ロッカー1つ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-10'> IRQ_CREW_10 {
            subject s : Parts::Part;
            doc /* 乗員運用は 医療・生体・放射線 へ、機上の診断装置と乗員からの情報を管制センターの航空医官に伝え、相談して傷病を診断・治療すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CREW-11'> IRQ_CREW_11 {
            subject s : Parts::Part;
            doc /* 乗員運用は 脱出系 へ、ベイルアウトでは高度 50,000 ft でコマンダが乗員にバイザーを閉めて非常用酸素を作動させるよう指示し、40,000 ft でキャビンをベントさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "50,000 ft、40,000 ft"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-01'> IRQ_CT_01 {
            subject s : Parts::Part;
            doc /* S帯PM系は 追跡・通信網（TDRS・STDN） との間で、フォワードリンク（2,041.9 MHz 主・2,106.4 MHz 副）とリターンリンクを、STDN の地上局または TDRS との間で送受信して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "2,041.9 MHz（主）、2,106.4 MHz（副）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-02'> IRQ_CT_02 {
            subject s : Parts::Part;
            doc /* S帯FM系は 追跡・通信網（TDRS・STDN） へ、S帯FM 送信機から 2,250 MHz のリターンリンクで、FM 信号処理器が選んだ1つの源のデータを STDN または空軍の地上局へ送り、S帯PM のリターンリンクと同時に送れるが TDRS は経由しないこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "2,250 MHz"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-03'> IRQ_CT_03 {
            subject s : Parts::Part;
            doc /* Ku帯系は 追跡・通信網（TDRS・STDN）との間で、展開した Ku帯アンテナでオービタと TDRS の間に見通しがあるときに TDRS を介して地上と送受信し、3チャネルのデータを Ku帯信号処理器でリターンリンクにインタリーブして展開電子組立から Ku帯アンテナを通して TDRS へ送り、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "3チャネル"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-04'> IRQ_CT_04 {
            subject s : Parts::Part;
            doc /* UHF 系は 追跡・通信網（TDRS・STDN） との間で、UHF シンプレックス（ATC）系が上昇・再突入で STDN 地上局を介して MCC と S帯PM のバックアップの音声通信を行い、着陸時には航空交通管制と随伴機との音声通信にも使えるようにして双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-05'> IRQ_CT_05 {
            subject s : Parts::Part;
            doc /* S帯PM系は DPS：データバス網・MDM へ、NSP がフォワードリンクの地上コマンドを解読して FF MDM（NSP 1 は FF 1、NSP 2 は FF 3）を通して機上の計算機へ送り、GPC が飛行重要 MDM を通して要求したときにコマンドを検証して送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "NSP 1 は FF 1、NSP 2 は FF 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-06'> IRQ_CT_06 {
            subject s : Parts::Part;
            doc /* 計装系は DPS：データバス網・MDM との間で、各 GPC が専用の計装/PCMMU データバスで自らのダウンリストを働いている PCMMU へ送り、PCMMU が TFL に従って計装・ペイロードのデータとインタリーブし、OI と PDI のデータを SM と BFS の GPC へ供給して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-07'> IRQ_CT_07 {
            subject s : Parts::Part;
            doc /* 通信運用は DPS：データバス網・MDM から、GCIL で制御する通信系を組み替える指令を GPC から PF MDM 経由で GCIL へ受け、ペイロード通信系への指令もペイロード MDM 1・2 から GCILC を経て受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-08'> IRQ_CT_08 {
            subject s : Parts::Part;
            doc /* Ku帯系は GN&C：誘導・航法演算 へ、自動追尾モードでアンテナの角度・角速度・距離・距離変化率を MDM を通してランデブ・近傍運用のために送り、GNC 計算機のランデブの航法演算データの更新に使わせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-10'> IRQ_CT_10 {
            subject s : Parts::Part;
            doc /* UHF 系は 船外活動（EVA/EMU） との間で、SSOR が SSCS の時分割多重の網で EVA 乗員の宇宙服無線（SSER、最大3台）と ISS の無線（SSSR）と音声・データを交換して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "SSER 最大3台"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-12'> IRQ_CT_12 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）：直流配電は 音声分配系（ACCU） へ、ACCU の主系にパネル R14 の ESS 2CA AUD CTR 1、副系に MN C AUD CTR 2 の遮断器から、パネル C3 の AUDIO CENTER スイッチの選択に応じて直流電力を供給し、音声の各パネルにはパネル R14 の遮断器から給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-13'> IRQ_CT_13 {
            subject s : Parts::Part;
            doc /* CCTV は 電力系（EPS）：直流配電 から、VCU には GCIL のドライバにより DC Main A または B からパネル R14 を経て給電を受け、乗員と MCC が同時に VCU を入切するのを防ぎ、標準の CCTV 機器にはパネル R14 の遮断器から給電を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-14'> IRQ_CT_14 {
            subject s : Parts::Part;
            doc /* 計装系は S帯PM・FM通信 へ、PCMMU がインタリーブ・形式化したデータを NSP へ送り、NSP が ACCU からの A/G 音声と合わせて S帯PM のダウンリンクと Ku帯のリターンリンクのチャネル1で送り、SSR にも送って記録させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-15'> IRQ_CT_15 {
            subject s : Parts::Part;
            doc /* 音声分配系は S帯PM・FM通信 との間で、働いている NSP が ACCU から受けた1本（低データレート）または2本（高データレート）の A/G アナログ音声をデジタル化し、フォワードリンクでは逆に1本または2本のアナログ音声を ACCU へ出し、VOICE RECORD SELECT で選んだ音声を記録器へ送って双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "A/G 音声1本または2本"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-16'> IRQ_CT_16 {
            subject s : Parts::Part;
            doc /* Ku帯系は S帯PM・FM通信 との間で、通信モードで NSP がリターンリンクのデータ（音声とテレメトリ）を Ku帯信号処理器へも送り、フォワードリンクの音声とコマンドは Ku帯信号処理器から NSP へ送られ、フォワードリンクの源は GCIL か NSP UPLINK DATA スイッチで選んで双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-17'> IRQ_CT_17 {
            subject s : Parts::Part;
            doc /* UHF 系は 音声分配（ACCU・ATU）との間で、UHF MODE で SPLX・SPLX + G RCV・G T/R のいずれかを選ぶと UHF（ATC）送受信機を ACCU の A/A 音声ループにつなぎ、SSOR もパネル A1R の音声センタの UHF スイッチを通してオービタの音声系につなぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-18'> IRQ_CT_18 {
            subject s : Parts::Part;
            doc /* CCTV は Ku帯通信・レーダ へ、DTV が CCTV の映像を Ku帯のチャネル3で MCC へ送り、INCO が Ku帯をデジタル（チャネル3 PL MAX）とアナログ（チャネル3 TV）のダウンリンクの間で構成し、TV DOWNLINK スイッチで VSU からのアナログ出力を禁止できること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "チャネル3"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-19'> IRQ_CT_19 {
            subject s : Parts::Part;
            doc /* 通信運用は S帯PM・FM通信 へ、S帯PM のトランスポンダなどの選択を通常は GCIL を経た地上指令で行い、パネル C3 の S-BAND PM CONTROL スイッチが PANEL のときはパネル A1L のスイッチで行い、S帯FM の状態と構成も CONTROL スイッチの位置に応じてパネルまたは GCIL で選ぶこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-20'> IRQ_CT_20 {
            subject s : Parts::Part;
            doc /* 通信運用は Ku帯通信・レーダ へ、パネル A1U の KU BAND CONTROL スイッチで COMMAND（GCIL またはキーボード指令）と PANEL（パネルのスイッチ）のいずれで制御するかを選び、MCC が飛行ごとの理由で Ku帯の RF 搬送波を地上指令で禁止できること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-21'> IRQ_CT_21 {
            subject s : Parts::Part;
            doc /* S帯PM系は DPS：上昇系インタフェース（EIU）から、S帯FM のリターンリンクで打上げ中の EIU からの SSME 実時間データ（各 60 kbps）を受けて送り、上昇中の送信を必須とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "各 60 kbps"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-22'> IRQ_CT_22 {
            subject s : Parts::Part;
            doc /* 計装系は DPS：マスタタイミングユニット（MTU）から、MTU が PCMMU・COMSEC・ペイロード信号処理器・FM 信号処理器と各種ペイロードへ信号を出し、GPC が毎秒累算器の時刻と自分の時刻を比べて差が 1 ミリ秒未満なら累算器の時刻に合わせ、PCMMU が MTU から同期クロックを受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "差 1 ミリ秒未満"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-23'> IRQ_CT_23 {
            subject s : Parts::Part;
            doc /* S帯PM系は DPS：飛行ソフトウェア・MMU との間で、PCMMU のテレメトリを NSP を経て SSR へ送って記録させ、2台の SSR のデジタル音声と PCM データの記録・再生を MMU 1/2 として扱い、S帯FM または Ku帯でダウンリンクして双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CT-24'> IRQ_CT_24 {
            subject s : Parts::Part;
            doc /* Ku帯系は DPS：飛行ソフトウェア・MMU から、Mode 1 のリターンリンクを3チャネルとし、Ch 1 は運用データ 192 kbps、Ch 2 は 2 Mbps、Ch 3 は 50 Mbps の PL MAX とし、Mode 2 の Ch 3 は 4 Mbps とし、2台の SSR のデジタル音声と PCM データを MMU 1/2 から再生させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "Ch 1 192 kbps、Ch 2 2 Mbps、Ch 3 50 Mbps（Mode 2 は 4 Mbps）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CT-25'> IRQ_CT_25 {
            subject s : Parts::Part;
            doc /* S帯PM系は DPS：データバス網・MDM から、アンテナ切替電子装置が GPC 制御・アップリンク指令・パネル C3 のスイッチで選んだ切替指令を PF MDM 経由で切替組立へ受け、選択を STDN・AFSCF 地上局または TDRS への見通しの計算に基づかせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CW-02'> IRQ_CW_02 {
            subject s : Parts::Part;
            doc /* 主C/W は 環境制御・生命維持（ECLSS） から、客室圧力・PPO2・O2/N2流量・フレオンループ流量・水ループのポンプ出口圧などの ECLSS のパラメータを入力として受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CW-03'> IRQ_CW_03 {
            subject s : Parts::Part;
            doc /* 警報表示は 環境制御・生命維持（ECLSS） から、煙検知器が煙濃度 2,000（±200）μg/m3 を 5 秒以上検知すると SMOKE DETECTION 灯・MASTER ALARM 灯・サイレンを作動させ、ΔP/Δt センサが客室圧力の変化率が -0.08 psi/min を超える減圧で MASTER ALARM 灯とクラクソンを作動させる信号を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "煙濃度 2,000（±200）μg/m3 を 5 秒以上、-0.08 psi/min"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CW-04'> IRQ_CW_04 {
            subject s : Parts::Part;
            doc /* 主C/W は 表示・警報音 へ、警報で F7 の該当灯・4つの MASTER ALARM 灯・C/W トーンを作動させ、GPC の故障メッセージは出さないこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CW-05'> IRQ_CW_05 {
            subject s : Parts::Part;
            doc /* バックアップ C/W（GPC）は 表示・警報音 へ、前方またはペイロードの MDM を経て C/W 系 A・B の両方に信号を送り、MASTER ALARM 灯・B/U C&W 灯・C/W トーンを作動させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CW-06'> IRQ_CW_06 {
            subject s : Parts::Part;
            doc /* アラートは 表示・警報音 へ、限界外れで主 C/W へ離散信号を送ってアラートトーンを鳴らし、F7 の青い SM ALERT 灯を点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CW-07'> IRQ_CW_07 {
            subject s : Parts::Part;
            doc /* C/W 運用は 主C/W（ハードウェア） へ、パネル R13U の PARAMETER SELECT のつまみから、パラメータの有効化・抑止と限界の設定・読出しのための信号を C/W 電子装置へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CW-08'> IRQ_CW_08 {
            subject s : Parts::Part;
            doc /* C/W 運用は バックアップC/W（ソフト）へ、SPEC 60 で PASS SM のバックアップ C/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CW-09'> IRQ_CW_09 {
            subject s : Parts::Part;
            doc /* C/W 運用は アラート・限界表示 へ、アラートの前提条件付けに使う定数を、乗員または MCC が SPEC 60 で変えられるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-01'> IRQ_DPS_01 {
            subject s : Parts::Part;
            doc /* GPC は データバス網・MDM との間で、各 GPC の IOP がバス制御素子で24本のデータバスにつながって機体各系へ指令を送り応答データを受信・検証し、上昇・再突入では冗長セットの各 GPC が割り当てられた FC ストリングの指令元となり他の GNC GPC がそのストリングを聴取して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "データバス24本"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-02'> IRQ_DPS_02 {
            subject s : Parts::Part;
            doc /* GPC は 電力系（EPS）から、パネル O6 の電源スイッチで ESS 1BC・2CA・3AB の電力により働く RPC を通じて MN A・B・C の3つの主母線から直流電力を受け、1台の消費電力を 560 W とし、主母線または必須母線を2つ失っても正常に動作すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "560 W"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-03'> IRQ_DPS_03 {
            subject s : Parts::Part;
            doc /* データバス網は 誘導・航法・制御（GN&C）との間で、各 MDM が指令を割り当てられた GPC から受け、配線された GNC 機器から要求されたデータを取得して GPC へ送り、同種の GNC 機器は複数台を別々の MDM と飛行重要バスに配線して冗長な機器を別々のストリングに置くこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-04'> IRQ_DPS_04 {
            subject s : Parts::Part;
            doc /* 飛行ソフトウェアは 誘導・航法・制御（GN&C）から、CDR と PLT の RHC にある BFS ENGAGE 押しボタンの信号を予備飛行制御器（BFC）へ受け、BFC がエンゲージの論理を処理して BFS に機体の制御を移し、押しボタンを押すには約 8 lb の力を要し、軌道上では BFS の OUTPUT スイッチの再構成で実質的に無効にすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "約 8 lb"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-05'> IRQ_DPS_05 {
            subject s : Parts::Part;
            doc /* EIU は MPS：主エンジン制御器 との間で、冗長セットの GPC から受けたエンジン指令を検証し、制御器インタフェース組立（CIA）を通じて担当する SSME の制御器へ送り、エンジン制御器が車両データ表にまとめて送ったデータを GPC が要求するまで主・副のデータとしてバッファに保持して、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-06'> IRQ_DPS_06 {
            subject s : Parts::Part;
            doc /* 上昇系は 打上げ処理システム（LPS）との間で、2本の打上げデータバスで5台の GPC を GSE・打上げ処理システムとオービタの LF1・LM1・LA1 MDM に結び、主に地上点検と打上げ段階に使い、GSE との間に2台のデータバス絶縁増幅器を置いて双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "打上げデータバス2本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-12'> IRQ_DPS_12 {
            subject s : Parts::Part;
            doc /* 飛行ソフトウェアは 警報系（C/W）へ、GPC が MDM を通じた12の離散入力で C&W のマスタアラームの論理回路を使い、6つで予備 C&W 灯と C&W 音（クラス2）を、6つで SM アラート音（クラス3）を作動させ、FDA が限界外を検出すると故障メッセージを出して C&W 系 A・B に信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "離散入力12（6+6）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-13'> IRQ_DPS_13 {
            subject s : Parts::Part;
            doc /* 飛行ソフトウェアは ペイロード支援（PDRS・ODS）との間で、RMS の MCIU が SM GPC・表示・操作器・RMS の間の情報のやり取りを扱って評価し、打上げデータバス1を軌道上で SM GPC が RMS の制御器とのインタフェースに使って双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "打上げデータバス1"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-14'> IRQ_DPS_14 {
            subject s : Parts::Part;
            doc /* 上昇系は データバス網・MDM との間で、FC5〜8 が GPC を同じ4台の FF MDM・4台の FA MDM と2台の MEC・3台の EIU に結び、各データバスは各 EIU の1つの MIA につながり、公称の上昇構成では GPC 1〜4 がそれぞれ FC5〜8 に出力して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "FC5〜8、FF MDM 4台・FA MDM 4台、MEC 2台、EIU 3台"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-15'> IRQ_DPS_15 {
            subject s : Parts::Part;
            doc /* 飛行ソフトウェアは 汎用計算機・冗長セット へ、IPL 後の GPC にあるシステムソフトウェアに対し、応用ソフトウェアを OPS 遷移の際に MMU からロードさせ、各 MMU は1本の大容量記憶データバスで5台の GPC すべてにつなぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-16'> IRQ_DPS_16 {
            subject s : Parts::Part;
            doc /* マスタタイミングユニット（MTU）は 汎用計算機・冗長セット へ、累算器を通じて要求に応じたシリアルデジタルの時刻データ（GMT/MET）を送り、GPC が毎秒これを内部時刻と照合して差が 1 ms 未満なら内部時計を累算器の時刻に合わせられるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "照合は毎秒、差 1 ms 未満で内部時計を合わせる"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-17'> IRQ_DPS_17 {
            subject s : Parts::Part;
            doc /* 表示・キーボード（MEDS）は 汎用計算機・冗長セット との間で、IDP ごとに1本の表示/キーボード（DK）データバスを5台の GPC につなぎ、MAJ FUNC スイッチ・メモリ構成・GPC/CRT キー入力で決まる指令元の GPC からのデータで DPS 表示を更新し、GPC にポーリングされたときは乗員の入力と MEDS の状態を送って双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "DK バス 4本（IDP ごとに1本）、GPC 5台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-DPS-18'> IRQ_DPS_18 {
            subject s : Parts::Part;
            doc /* DPS の運用は 汎用計算機・冗長セット との間で、故障した GPC を上昇・再突入では MODE スイッチで HALT にし、それ以外では電源を切り、軌道上では DPS を構成し直して回復を試み、搭載と地上の監視による冗長セットの故障・分裂、GPC 故障、データ経路の故障の宣言を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-19'> IRQ_DPS_19 {
            subject s : Parts::Part;
            doc /* DPS の運用は データバス網・MDM へ、MECO 後の FC・ペイロード MDM の故障では、非普遍 I/O エラーの場合を除き、DPS UTILITY 表示の項目入力でどの有効な OPS のどのメジャーモードでもポートモードによる回復を試みさせ、データ経路の故障の後は MDM の電源を切って入れ直して出力をリセットすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-20'> IRQ_DPS_20 {
            subject s : Parts::Part;
            doc /* DPS の運用は マスタタイミングユニット へ、MTU と GPC の GMT の誤差を SPEC 2 TIME が使えるときは 100 ms 以下に保ち、誤差が閾値を超えたら 15 ms の更新を行い、MTU の BITE ビット4が立ち MCC が時刻差の増加を見た場合などは MECO 後から HAC 進入までの間に発振器を手動で切り替える指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "GMT の誤差 100 ms 以下、15 ms の更新"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-21'> IRQ_DPS_21 {
            subject s : Parts::Part;
            doc /* データバス網は 表示・キーボード へ、FC バス8本のうち FC1〜4 で GPC を FF MDM 4台・FA MDM 4台・IDP 4台・HUD 2台に結び、IDP は GPC 側で FC バス1〜4 と DK バス1本につながり、MEDS 側で 1553B データバスを制御して MDU と ADC 1組に接続すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "FC バス8本、IDP 4台、HUD 2台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-DPS-22'> IRQ_DPS_22 {
            subject s : Parts::Part;
            doc /* データバス網は GNC：乗員操縦・表示 へ、FC バスの FC1〜4 で GPC を IDP と HUD に結び、HUD の表示データを GPC から FC バス1または2（CDR の HUD）、3または4（PLT の HUD）で送り、パネル F6・F8 の HUD データバススイッチで選ぶこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-EPS-01'> IRQ_EPS_01 {
            subject s : Parts::Part;
            doc /* PRSD は 地上支援設備（GSE）から、打上げ前に燃料電池の反応剤の補給を受けて搭載量を満たし、T-2分35秒で充填を終えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "T-2分35秒で充填終了"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-02'> IRQ_EPS_02 {
            subject s : Parts::Part;
            doc /* 直流配電は 地上支援設備（GSE）から、T-50秒までは T-0 アンビリカルの地上電源と燃料電池で負荷を分担して受電し、その時点で地上電源を切って燃料電池が全負荷を受け持つようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "T-50秒で地上電源を切る"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-EPS-03'> IRQ_EPS_03 {
            subject s : Parts::Part;
            doc /* PRSD は 燃料電池発電装置（FCP×3）へ、リリーフ弁/フィルタと弁モジュールを経て共通マニホールドから、酸素を 803〜883 psia、水素を 200〜243 psia で反応剤として供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "酸素 803〜883 psia、水素 200〜243 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-04'> IRQ_EPS_04 {
            subject s : Parts::Part;
            doc /* PRSD の酸素弁モジュールは 圧力制御系（ECLSS） へ、ECLSS の大気圧力制御系 1・2 への酸素を供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-05'> IRQ_EPS_05 {
            subject s : Parts::Part;
            doc /* 燃料電池発電装置は 直流配電（EPDC-DC）へ、各燃料電池の直流電力を対応する分配器へ送り、燃料電池1は主母線 A、2は主母線 B、3は主母線 C に対応させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "FC 1・2・3 は主母線 A・B・C"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-EPS-06'> IRQ_EPS_06 {
            subject s : Parts::Part;
            doc /* 燃料電池発電装置は 給水・廃水系（ECLSS）へ、3基の燃料電池の生成水を単一の水リリーフ制御盤にまとめて通常は飲料水タンク A へ送り、主経路の閉塞に備えてタンク B への冗長経路を持つこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-07'> IRQ_EPS_07 {
            subject s : Parts::Part;
            doc /* 燃料電池発電装置は 熱制御：熱交換器網 へ、燃料電池の冷却材（フッ素系炭化水素）が燃料電池熱交換器を通じてスタックの排熱を中胴のフレオン21冷却ループへ移すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "フレオン21冷却ループ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-08'> IRQ_EPS_08 {
            subject s : Parts::Part;
            doc /* 燃料電池発電装置は 宇宙空間（船外）へ、水タンクが満杯または配管が閉塞した場合は水リリーフ弁が 45 psia で開いて生成水を排出し、パージ時は反応剤を流して不活性ガスなどの不純物をパージ配管から吹き出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "水リリーフ弁 45 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-09'> IRQ_EPS_09 {
            subject s : Parts::Part;
            doc /* 燃料電池発電装置は DPS との間で、自動パージでは GPC がパージ配管ヒータを入れて温度を確認し、燃料電池1・2・3のパージ弁を順に2分間開閉する指令と状態を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "各燃料電池のパージ弁を2分間"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-10'> IRQ_EPS_10 {
            subject s : Parts::Part;
            doc /* 直流配電は 交流発電・配電（EPDC-AC）へ、インバータ1には主母線 A のみ、インバータ2には主母線 B、インバータ3には主母線 C から給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "インバータ1・2・3 は主母線 A・B・C"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-11'> IRQ_EPS_11 {
            subject s : Parts::Part;
            doc /* 直流配電は 電力負荷（オービタ各系・SRB・ET・ペイロード）へ、28 V 直流電力を制御・分配して送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "28 V 直流"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-13'> IRQ_EPS_13 {
            subject s : Parts::Part;
            doc /* 交流発電・配電は 燃料電池発電装置（FCP×3）へ、燃料電池の冷却材ポンプを駆動する3相交流を送り、電子制御ユニットが冷却材ポンプと水素ポンプ／水分離器への交流電力を制御すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-EPS-14'> IRQ_EPS_14 {
            subject s : Parts::Part;
            doc /* EPS は 熱制御：熱交換器網 から、中胴の電気部品はコールドプレートに取り付けてフレオン21ループで冷却され、前部アビオニクスベイ1〜3の電力・負荷・モータ制御組立とインバータは水冷却ループで冷却され、インバータ配電組立は空冷で冷却されること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "フレオン21ループ、アビオニクスベイ1〜3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EPS-15'> IRQ_EPS_15 {
            subject s : Parts::Part;
            doc /* 直流配電は ペイロードへ、燃料電池 3 を主ペイロード母線（PRI PL）へつないで給電し、MN B・MN C も第2・第3の電源にでき、後部ペイロード母線 B・C と補助ペイロード母線 A・B からも 28 V 直流電力を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "28 V 直流、PRI PL は FC 3・MN B・MN C"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-EPS-16'> IRQ_EPS_16 {
            subject s : Parts::Part;
            doc /* 直流配電は 燃料電池発電装置へ、必須母線から電気制御ユニット（ECU）に給電し、ECU が冷却材ポンプ・水素ポンプ/水分離器・pH センサへの三相交流（パネル L4 の回路遮断器9個）を制御し、必須母線の電圧が 25 V DC 未満で SM ALERT を出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "25 V DC 未満で SM ALERT、回路遮断器9個"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ET-01'> IRQ_ET_01 {
            subject s : Parts::Part;
            doc /* LO2タンクは アンビリカル・弁・センサ へ、直径 17 in の供給管を通し、LO2 をインタタンクを通って ET の外へ出して右後部の ET/オービタのアンビリカルへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "供給管の直径 17 in"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ET-02'> IRQ_ET_02 {
            subject s : Parts::Part;
            doc /* LH2タンクは アンビリカル・弁・センサ へ、サイフォンの出口から LH2 を直径 17 in の管で左後部のアンビリカルへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "管の直径 17 in"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ET-03'> IRQ_ET_03 {
            subject s : Parts::Part;
            doc /* インタタンクは LO2タンク との間で、両端のフランジで LO2 タンクと LH2 タンクをつなぎ、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ET-04'> IRQ_ET_04 {
            subject s : Parts::Part;
            doc /* インタタンクは LH2タンク との間で、前部の SRB/ET 結合の推力ビームと金具により、SRB の荷重を LO2 タンクと LH2 タンクへ分配して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'IRQ-ET-05'> IRQ_ET_05 {
            subject s : Parts::Part;
            doc /* ET の TPS は LH2タンク へ、LH2 タンクの取付部に、空気にさらされる金属の液化を防ぎ LH2 への熱の流れを減らす断熱材を施すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ET-06'> IRQ_ET_06 {
            subject s : Parts::Part;
            doc /* ET 分離は アンビリカル・弁・センサ へ、オービタの GPC が ET の分離を指令すると、アンビリカル板を締結するボルトを火工品で切って構造を切り離すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ET-07'> IRQ_ET_07 {
            subject s : Parts::Part;
            doc /* ET 分離は LO2タンク へ、分離の直前にタンブル系を作動させ、LO2 タンク前部の 2 in の弁を開いて残りのガスを噴き出し、ET を回転させる推力とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "弁の直径 2 in"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-01'> IRQ_EVA_01 {
            subject s : Parts::Part;
            doc /* EVA の運用は EMU点検・準備 へ、キャビンを 10.2 psi にしてからの時間（12時間・24時間）に応じて EMU 内の前呼吸を 1時間15分・40分とし、14.7 psi のままなら 4時間とする条件を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "前呼吸 1時間15分（12時間）・40分（24時間）、14.7 psi は 4時間"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-02'> IRQ_EVA_02 {
            subject s : Parts::Part;
            doc /* EVA 点検は 減圧・再与圧 へ、EMU 内の前呼吸の時間が終わったら MCC に減圧の GO を確かめ、DEPRESS/REPRESS のキューカードで減圧を始めさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-EVA-03'> IRQ_EVA_03 {
            subject s : Parts::Part;
            doc /* EVA の工具・収納は EMU点検・準備 へ、EVA 準備で必要に応じて MWS と BRT を EMU に取り付け、MWS は EMU の前面に付けて工具を収め、作業場所で乗員をテザーで拘束する構成を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-EVA-04'> IRQ_EVA_04 {
            subject s : Parts::Part;
            doc /* 減圧・再与圧は 区画・減圧・再与圧（ALS）との間で、エアロック減圧弁でエアロックを 5.0 psi まで下げて EMU の漏れを点検してから 0 psi まで減圧し、再与圧は内側ハッチの均圧弁で 5.0 psi まで戻して気密を確かめてから乗員室の圧力に合わせ、容積 208 ft³ のエアロックで双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "5.0 psi で点検、エアロック容積 208 ft³"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-05'> IRQ_EVA_05 {
            subject s : Parts::Part;
            doc /* EVA の運用は 減圧・再与圧 へ、エアロックの構成（通常構成・トンネルアダプタ）ごとの DEPRESS/REPRESS キューカードに従って減圧・再与圧を行い、漏れ点検の不合格時の手順をその裏面の FAILED LEAK CHECK に載せる指示を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-EVA-06'> IRQ_EVA_06 {
            subject s : Parts::Part;
            doc /* 減圧・再与圧は EVA後の手入れ・再充填 へ、再与圧でエアロックの気密を確かめて O2 ACT を IV にした後に POST EVA へ移り、再与圧で DCS の症状が消えた場合は MCC に確かめるまで EMU を脱がないという条件を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-07'> IRQ_EVA_07 {
            subject s : Parts::Part;
            doc /* 非常時の EVA は 減圧・再与圧 へ、EMU の汚染が疑われた場合はエアロックを 5 psia まで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続け、汚染の除去では真空で 15 分保持した後にエアロックを 5 psi まで再与圧する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "5 psia で保持、真空で 15 分保持"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-08'> IRQ_EVA_08 {
            subject s : Parts::Part;
            doc /* EVA の工具収納は 非常時の手順 へ、非常時 EVA に使う中心線ラッチ工具・3点ラッチ工具、RMS ロープリール、調整式テザーを左舷の軽量工具収納組立（TSA）に収めて供え、ODS の 96 本ボルトの EVA では大型カッタと PRD 2 個も左舷の TSA に収めること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "96 本ボルト"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-EVA-09'> IRQ_EVA_09 {
            subject s : Parts::Part;
            doc /* EVA の整備・再充填は 工具・収納 へ、PGT の電池（2個）とヘルメットライトの電池（4個）を、EHIP 充電器とアダプタケーブルでオービタの電源から充電して送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "PGT 電池 2個、ヘルメットライト電池 4個"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-10'> IRQ_EVA_10 {
            subject s : Parts::Part;
            doc /* EVA の整備・再充填は 電力系（EPS）：直流配電 から、ミッドデッキの DC 電源コンセント（MUP）から EMU 電池の充電器に給電を受け、REBA の充電器は Y 形ケーブルでオービタの電源につなぎ、着用中の充電では延長ケーブルを使うこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-EVA-13'> IRQ_EVA_13 {
            subject s : Parts::Part;
            doc /* EVA の運用は 非常時の手順 へ、カフチェックリストで減圧症の区分を判断し、カフ4では ABORT EVA として患者をエアロックへ連れ戻して単独で再与圧し、DCS の処置の手順へ移る指示を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-EVA-14'> IRQ_EVA_14 {
            subject s : Parts::Part;
            doc /* EVA の運用は 圧力制御系（PCS）から、マスク前呼吸では LEH O2 弁から簡易着用マスクへ O2 を受け、10.2 psi の維持では PPO2 が 2.70 psia 未満なら DIRECT O2 弁で O2 を、キャビン圧が 10.40 psia 未満なら 14.7 CAB REG INLET SYS 1 弁で N2 を加えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "PPO2 2.70 psia 未満で O2、キャビン圧 10.40 psia 未満で N2"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-01'> IRQ_GNC_01 {
            subject s : Parts::Part;
            doc /* 慣性計測は 誘導・航法演算 へ、IMU の慣性姿勢と速度のデータを GNC ソフトウェアへ送り、IMU SOP が速度の M50 座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算などを行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-02'> IRQ_GNC_02 {
            subject s : Parts::Part;
            doc /* 航法の装置（TACAN・MLS・ADTA）は 誘導・航法演算 へ、TACAN の斜距離・磁方位、MLS の斜距離・方位角・仰角、ADTA の気圧高度を再突入の航法ソフトウェアへ送り、期待誤差の範囲内のデータを状態ベクトルの更新に取り込み、各装置を5台の GPC につながる8台の飛行重要 MDM の1台に配線すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "飛行重要 MDM 8台、GPC 5台"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-03'> IRQ_GNC_03 {
            subject s : Parts::Part;
            doc /* エアデータ系は DAP・飛行制御センサ へ、高度の航法の更新に加え、誘導の操舵・スピードブレーキ指令の計算と飛行制御則の計算の更新にデータを与え、エアデータを G&C に取り込まないときは飛行制御が迎角を一定値（7.5°）とし動圧を航法の対地相対速度の表から求めること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "迎角 7.5° 一定（エアデータを取り込まないとき）"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-04'> IRQ_GNC_04 {
            subject s : Parts::Part;
            doc /* 誘導は DAP・飛行制御センサ へ、航法の状態ベクトルと姿勢データから作る操舵指令を送り、飛行制御が IMU の姿勢データで舵面・エンジンジンバル・RCS ジェットの指令に変換し、状態ベクトルの情報で舵効を選んで制御ゲインを設定すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-05'> IRQ_GNC_05 {
            subject s : Parts::Part;
            doc /* 飛行制御は 舵面・推力方向制御駆動 との間で、飛行制御ソフトウェアの舵面と SSME・SRB の位置指令をフライトアフト MDM を経て ASA と ATVC へ送り、舵面の位置フィードバックを ASA を経て戻して SOP がエレボン・ラダー・スピードブレーキ・ボディフラップの角度に変換し、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-06'> IRQ_GNC_06 {
            subject s : Parts::Part;
            doc /* 操縦入力は DAP・飛行制御センサ へ、RHC の入力を冗長管理と RHC SOP を経てエアロジェット DAP に渡し、軸ごとに合成した回転指令を飛行制御ソフトウェアに与え、前方と後方の THC の冗長な信号も冗長管理と SOP を経て渡し、両者が相反する並進指令を出すと指令を出さないこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-07'> IRQ_GNC_07 {
            subject s : Parts::Part;
            doc /* 誘導・航法は 乗員操縦・表示 へ、機体と目標の状態ベクトルの情報を専用表示と GNC の DPS 表示で乗員に示し、HSI の SOURCE スイッチを NAV にすると航法処理部のデータを HSI に表示すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-GNC-08'> IRQ_GNC_08 {
            subject s : Parts::Part;
            doc /* GNC の操縦装置と航法は GNC運用管理 へ、TACAN・GPS・MSBLS の故障では SM ALERT と故障メッセージを、エアデータのジレンマでは AIR DATA と BACKUP C/W ALARM の警報灯を伝え、再突入前の AA・RGA・位置フィードバックの故障は SPEC 53 で選択解除できるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-GNC-09'> IRQ_GNC_09 {
            subject s : Parts::Part;
            doc /* GNC の運用は 舵面・推力方向制御駆動 へ、運用飛行規則 A8-107 に従いパネル C3 の FCS CHANNEL スイッチでチャネルを AUTO・OVERRIDE・OFF に切り替え、複数のスイッチを動かすときは 2 秒の間隔をあけ、同じアクチュエータに2つの故障があれば残りの FCS チャネルを OVERRIDE にする指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "スイッチ操作の間隔 2 秒"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-GNC-10'> IRQ_GNC_10 {
            subject s : Parts::Part;
            doc /* GNC の運用は 慣性計測・アライメント へ、運用飛行規則 A8-110 に従い IMU の恒星アラインメントをおよそ飛行日ごとに1回、軌道離脱噴射の 70 分前に IMU 間のアラインメントを GNC OPS 2 または 3 で 3〜6 分かけて行う指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "恒星アラインメントはほぼ毎飛行日、IMU 間は噴射の 70 分前に 3〜6 分"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-11'> IRQ_GNC_11 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 慣性計測 へ、各 IMU に2つの別々の遠隔電力制御器を通して冗長な 28 VDC を供給し、IMU 1・2・3 の電源スイッチをパネル O14・O15・O16 に置き、スタートラッカの扉を各扉2台の三相交流モータで開閉するよう給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "28 VDC、RPC 2つ、スイッチはパネル O14・O15・O16"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-12'> IRQ_GNC_12 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は エアデータ・航法装置 へ、MLS 1・2・3 にそれぞれ主母線 A・B・C から電力を供給し、GPS 受信機には単一の ESS 母線と前方電力制御器（FPC）の組合せから給電し、アンテナのプリアンプの遮断器をパネル O14・O15・O16 に置くこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MLS 1・2・3 は主母線 A・B・C"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-13'> IRQ_GNC_13 {
            subject s : Parts::Part;
            doc /* 地上航法局・GPS衛星は エアデータ・航法装置 へ、TACAN は地上局のビーコンのパルス対を L 帯で、MLS は着陸滑走路脇の地上局との機体の位置を、GPS は衛星の測距信号を電波で受けて位置と速度を求めさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-14'> IRQ_GNC_14 {
            subject s : Parts::Part;
            doc /* 飛行制御は RCS：噴射器駆動回路 へ、OMS 噴射中を除く軌道上の全期間は RCS DAP の噴射指令で、再突入ではエアロジェット DAP がピッチの角速度誤差を動圧 40 psf までジェットの指令に変えて、機体の姿勢と角速度を制御すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "動圧 40 psf まで"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-15'> IRQ_GNC_15 {
            subject s : Parts::Part;
            doc /* 飛行制御は OMS：推力方向制御（ジンバル）へ、OMS TVC DAP が誘導の要求速度を OMS のジンバル指令と点火・停止の指令に変換し、OMS 処理部が指定した推力方向を得るジンバルアクチュエータの指令を生成して、推力が重心を通るように伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-16'> IRQ_GNC_16 {
            subject s : Parts::Part;
            doc /* 舵面・推力方向制御駆動は 主推進系（MPS）へ、ATVC の4チャネルが各指令に相当するアナログ電圧を作り、SSME の油圧作動器の4つのサーボ弁へ送ってノズルをジンバルさせ、各 SSME のピッチとヨーの作動器を1基ずつ駆動すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "ATVC 4チャネル、サーボ弁4つ、作動器はピッチ・ヨー各1基"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-17'> IRQ_GNC_17 {
            subject s : Parts::Part;
            doc /* 誘導・航法は 主推進系（MPS）へ、第1段では事前に定めたスロットル計画に従って MPS のスロットル指令を送り、第2段では主エンジンのスロットル指令を 3 g を超えないように調整すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "加速度 3 g を超えない"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-19'> IRQ_GNC_19 {
            subject s : Parts::Part;
            doc /* 固体ロケットブースタ（SRB×2）は 飛行制御 へ、各 SRB の前部スカートの2台の SRB RGA が角速度に比例する電圧をフライトアフト MDM を経て GPC の SRB RGA SOP へ送り、1回の飛行より多く使わないこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "SRB RGA は各 SRB に2台、1回の飛行まで"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-GNC-20'> IRQ_GNC_20 {
            subject s : Parts::Part;
            doc /* 舵面・推力方向制御駆動は 警報系（C/W）へ、ASA がサーボ弁をバイパスするとパネル F7 の黄色の FCS CHANNEL 警報灯を、エレボンの位置またはヒンジモーメントが飽和すると赤の FCS SATURATION 警報灯を点灯させる信号を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-01'> IRQ_MECH_01 {
            subject s : Parts::Part;
            doc /* 電力系：直流配電（EPS）は 機構アクチュエータ へ、モータ制御組立（MCA）を通じてアクチュエータのモータとリミットスイッチの電力を供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-02'> IRQ_MECH_02 {
            subject s : Parts::Part;
            doc /* ペイロードベイドアは 構造（STR）との間で、各ドアを13のヒンジ（固定5・浮動8）で中胴につなぎ、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "ヒンジ13（固定5・浮動8）"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-03'> IRQ_MECH_03 {
            subject s : Parts::Part;
            doc /* 降着装置は 構造（STR）との間で、前脚を前胴の下部に、主脚を中胴に隣接する左右の翼の下部に収め、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-04'> IRQ_MECH_04 {
            subject s : Parts::Part;
            doc /* 能動ベント系は 構造（STR）との間で、胴体の左右各7つ、計14のベント口を通して区画の圧力を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "ベント口 14（左右各7）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-05'> IRQ_MECH_05 {
            subject s : Parts::Part;
            doc /* 機構アクチュエータは ペイロードベイドア へ、各ドアを2つの3相交流モータを持つ1つの電動アクチュエータで開閉し、各ラッチギャングも1つの電動アクチュエータで駆動すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "モータ2つ/ドア"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MECH-06'> IRQ_MECH_06 {
            subject s : Parts::Part;
            doc /* 機構アクチュエータは ベント・ETアンビリカル扉 へ、各ベント扉をそれぞれの電動アクチュエータで内側へ動かすこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MECH-07'> IRQ_MECH_07 {
            subject s : Parts::Part;
            doc /* 降着装置は 制動・操向・減速傘 へ、各主脚の3つのセンサが主脚の接地を検知して WOW を設定し、前輪操向とブレーキの条件にする信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "主脚のセンサ3つ/脚"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MECH-08'> IRQ_MECH_08 {
            subject s : Parts::Part;
            doc /* 降着装置の運用は 降着装置 へ、CDR（パネル F6）または PLT（パネル F8）が LANDING GEAR ARM ボタン、続いて DN ボタンを押して脚の展開を始める指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-MECH-09'> IRQ_MECH_09 {
            subject s : Parts::Part;
            doc /* 降着装置の運用は 制動・操向・減速傘 へ、ドラッグシュートを機首下げの前に CDR か PLT の冗長な指令で手動で展開すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-MECH-10'> IRQ_MECH_10 {
            subject s : Parts::Part;
            doc /* 降着装置の運用は ベント・ETアンビリカル扉 へ、ベント扉をマスタタイミングユニット・メジャーモードの移行・速度・DPS の項目入力で始まる GNC のソフトウェアのシーケンスで操作する指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-03'> IRQ_MPS_03 {
            subject s : Parts::Part;
            doc /* 打上げ処理システム（KSC）は MPS 推進薬ダンプ・排出系 へ、打上げ前に地上支援設備の LO2・LH2 をそれぞれの T-0 アンビリカルから外側・内側の充填排出弁を通って供給配管マニホールドへ送り、パネル R4 の PROPELLANT FILL/DRAIN スイッチを GND にして充填排出弁を制御すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "充填排出弁は外側・内側の直列"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-04'> IRQ_MPS_04 {
            subject s : Parts::Part;
            doc /* 打上げ処理システム（KSC） は MPS の推進薬管理系へ、T-0 アンビリカルから地上のヘリウムを送って ET 加圧マニホールドを通して ET を加圧し、T-0 のセルフシール式迅速継手を離昇時に切り離し、T-2分55秒に LPS が LO2 タンクのベント弁を閉じて地上支援設備のヘリウムで LO2 タンクを 21 psig に加圧すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "T-2分55秒、21 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-05'> IRQ_MPS_05 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 主エンジン制御器 へ、各制御器の DCU A・B を別々の交流母線から受電させ、どの2母線を失っても失うエンジンが1基だけになるよう3基の制御器に母線を割り当て、各制御器は3系統の交流母線のうち2系統から受電すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "交流母線3系統のうち2系統から受電"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-06'> IRQ_MPS_06 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は MPS ヘリウム系 へ、推進薬管理系とヘリウム系の弁・トランスデューサを動かす直流電力を供給し、ALC 1・2・3（APC 4・5・6）を失うと中央・左・右の SSME のヘリウム遮断弁 A が閉じること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-07'> IRQ_MPS_07 {
            subject s : Parts::Part;
            doc /* MPS ヘリウム系は 警報系（C/W）へ、ヘリウムのタンク圧（1,150 psia 未満）と調圧器 A の圧力（680 psia 未満・810 psia 超）の限界逸脱でパネル F7 の C/W マトリクスの MPS ライト（赤）を点灯させ、中央・左・右のタンク圧と調圧器圧をそれぞれ別のチャネルに割り当てる信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "タンク圧 1,150 psia 未満、調圧器 A 680 psia 未満・810 psia 超"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-08'> IRQ_MPS_08 {
            subject s : Parts::Part;
            doc /* 推進薬管理系は 警報系（C/W） へ、LH2 マニホールド圧が 65 psia を、LO2 マニホールド圧が 249 psia を超えたときに MPS ライトと BACKUP C/W ALARM を点灯させる信号を送り、MPS のソフトウェア C&W が無い軌道上（OPS 2）ではマニホールド圧の限界逸脱をハードウェア C&W（MPS ライトとマスタアラーム）だけで知らせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "LH2 65 psia、LO2 249 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-09'> IRQ_MPS_09 {
            subject s : Parts::Part;
            doc /* 主エンジン制御器は 主エンジン本体 との間で、エンジンのセンサ・弁・アクチュエータ・スパーク点火器とともに動作してエンジンの制御・点検・監視を行い、圧力・温度・流量・ターボポンプ回転数・弁位置・サーボ弁アクチュエータ位置を制御器へ双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-10'> IRQ_MPS_10 {
            subject s : Parts::Part;
            doc /* MPS の推進薬管理は 主エンジン本体 へ、各12インチ供給ラインの推進薬をプリバルブを通して、LH2 は低圧燃料ターボポンプ、LO2 は低圧酸化剤ターボポンプの入口からエンジンに入れ、LO2 は供給配管マニホールドから3本のエンジン用 LO2 供給ラインで分配すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "供給ライン各12インチ、LO2 供給ライン3本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-11'> IRQ_MPS_11 {
            subject s : Parts::Part;
            doc /* SSME は ET への推進薬供給（加圧）系へ、高圧酸化剤ターボポンプの主ポンプからの LO2 の一部を酸化剤熱交換器で気化した GO2 と、低圧燃料ターボポンプからの GH2 の一部を加圧ラインへ送り、GH2 は逆止弁 2個・オリフィス 2個・流量制御弁を通ってから ET へ入ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "逆止弁 2個、オリフィス 2個"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-12'> IRQ_MPS_12 {
            subject s : Parts::Part;
            doc /* MPS ヘリウム系は 主エンジン本体 へ、各タンク群のヘリウムを担当のエンジンへ送り、飛行中のパージと緊急の空圧停止でのエンジン弁の作動に使わせ、各 SSME の空圧制御組立がエンジン系統のヘリウムで加圧されて制御器の指令で中間シール空洞のパージ・ポゴ系のポストチャージ・空圧停止を行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-13'> IRQ_MPS_13 {
            subject s : Parts::Part;
            doc /* MPS ヘリウム系は 推進薬供給 へ、空圧ヘリウム供給タンクから推進薬管理系のすべての空圧作動弁を動かす圧力を供給し、タイプ1の弁では開・閉の各ポートの電磁弁に通電するとヘリウムの圧力で空圧弁を開閉させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-14'> IRQ_MPS_14 {
            subject s : Parts::Part;
            doc /* ヘリウム系は 充填・ダンプ・不活性化 へ、空圧ヘリウム調圧器下流のマニホールド加圧弁から通常の LO2 ダンプと再突入時の LH2・LO2 マニホールドの再加圧のためのヘリウムを送り、MECO+20秒に GPC が空圧ヘリウムとエンジンヘリウムの系統を相互接続して 10個のタンクすべてを共通のマニホールドにつなぎ、ダンプに十分なヘリウムを確保すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MECO+20秒、10個のタンク"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-15'> IRQ_MPS_15 {
            subject s : Parts::Part;
            doc /* MPS 推進薬ダンプ・排出系は 推進薬供給 との間で、LO2・LH2 の各マニホールドに内側と外側の充填排出弁を直列に持つ8インチの充填排出ラインをつなぎ、MECO 後のダンプではマニホールドの LH2 を内側・外側の充填排出弁とトッピング弁から2分間船外へ流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "充填排出ライン8インチ、ダンプ2分間"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-16'> IRQ_MPS_16 {
            subject s : Parts::Part;
            doc /* MPS の推力方向制御は 主エンジン本体 へ、MPS/TVC 遮断弁を開いて 5個の油圧作動エンジン弁（主燃料弁・主酸化剤弁・燃料プリバーナ酸化剤弁・酸化剤プリバーナ酸化剤弁・冷却材制御弁）に油圧をかけ、各 SSME のピッチ・ヨーのサーボアクチュエータでエンジンを首振りさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "5個の油圧作動エンジン弁"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-17'> IRQ_MPS_17 {
            subject s : Parts::Part;
            doc /* MPS 運用は 主エンジン制御器 との間で、パネル C3 の MAIN ENGINE SHUT DOWN 押しボタン（両接点が健全であること）による乗員の手動停止と、指令経路故障のエンジンの交流電源スイッチと押しボタンによる停止を伝え、パネル F7 の MAIN ENGINE STATUS ライトで停止・レッドライン超過は赤、指令経路故障・ロックアップ・データ経路故障は黄として双方向に知らせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-18'> IRQ_MPS_18 {
            subject s : Parts::Part;
            doc /* MPS 運用は ヘリウム・空圧 へ、パネル R2 の He ISOLATION A・B スイッチで各エンジン系統の遮断弁を個別に操作させ、He INTERCONNECT スイッチ（IN OPEN・GPC・OUT OPEN）で相互接続弁の組を 1個のスイッチで操作させる指令を送り、ヘリウム漏れの隔離手順を行えるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-19'> IRQ_MPS_19 {
            subject s : Parts::Part;
            doc /* MPS 運用は 充填・ダンプ・不活性化 へ、MPS PRPLT DUMP SEQUENCE スイッチの START で MECO+20秒以降のダンプを手動で始めさせ、STOP で ET 分離の遅れの間の自動ダンプを止めさせ、自動の真空不活性化が十分でないときは乗員が LO2・LH2 の供給系統を手動で真空不活性化できるようにする指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MECO+20秒"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-20'> IRQ_MPS_20 {
            subject s : Parts::Part;
            doc /* MPS 運用は 油圧・推力方向制御 へ、パネル R4 の HYDRAULICS MPS/TVC ISOL VLV SYS 1〜3 スイッチを軌道上では CLOSE にして遮断弁下流の油圧漏れから守る指令を送り、スイッチを OPEN にすれば弁が開き、スイッチ上のトークバックが開で OP、閉で CL を示すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-MPS-21'> IRQ_MPS_21 {
            subject s : Parts::Part;
            doc /* MPS 推進薬ダンプ・排出系は 宇宙空間（船外）へ、MECO 後の不活性化で LH2 加圧マニホールドをベントする管の H2 PRESS LINE VENT 弁を約1分開き、3基の主酸化剤弁を開いて残留 LO2 をエンジンノズルから、LH2 充填排出弁2個と燃料ブリード弁を開いて残留 LH2 を左翼の上へ排出すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "H2 PRESS LINE VENT 弁を約1分"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-MPS-22'> IRQ_MPS_22 {
            subject s : Parts::Part;
            doc /* SSME は STR：後胴・推力構造・ポッド へ、定格出力 100% は海面 375,000 ポンド・真空 470,000 ポンド、104% は海面 393,800 ポンド・真空 488,800 ポンド、109% は海面 417,300 ポンド・真空 513,250 ポンドの推力を、2台のサーボアクチュエータ（各々 3系統の油圧のうち 2系統から受ける）で SSME のパワーヘッドを首振りさせながら推力構造へ伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "100% 海面 375,000 ポンド・真空 470,000 ポンド、104% 海面 393,800 ポンド・真空 488,800 ポンド、109% 海面 417,300 ポンド・真空 513,250 ポンド"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-01'> IRQ_OMS_01 {
            subject s : Parts::Part;
            doc /* OMS ヘリウム加圧系は 推進薬貯蔵・分配 へ、各ポッドの 1基のヘリウムタンクから圧力弁・二重調圧器・逆止弁を経て約 250 psig に調圧したヘリウムで燃料タンクと酸化剤タンクを加圧し、両タンクを同じ圧力に保って混合比の誤りを避けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "約 250 psig"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-02'> IRQ_OMS_02 {
            subject s : Parts::Part;
            doc /* OMS 推進薬貯蔵・分配は OMS エンジン・GN2系 へ、タンク隔離弁 A・B の一組を開いて推進薬タンクの燃料と酸化剤を同じポッドの OMS エンジンと OMS クロスフィード弁へ流し、加圧された推進薬をエンジンの二元推進薬弁組立で受けて二元推進薬弁に噴射の開始・停止の流れを調整させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-03'> IRQ_OMS_03 {
            subject s : Parts::Part;
            doc /* OMS クロスフィードは OMS 推進薬貯蔵・分配 から、供給側ポッドのタンク隔離弁と OMS クロスフィード弁 A（または B）の組を開いてそのポッドの燃料と酸化剤を受け、左右のポッドを結ぶクロスフィード配管へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-04'> IRQ_OMS_04 {
            subject s : Parts::Part;
            doc /* OMS のクロスフィードは OMSエンジン・GN2系 へ、受け側ポッドのクロスフィード弁の組を開いて他方のポッドの燃料と酸化剤を受け側のポッドの OMS エンジンへ送り、受け側のタンク隔離弁は閉じておき、クロスフィード噴射では一方のポッドのタンク隔離弁（2個）を開、他方を閉とし、左右の OMS クロスフィード弁 B（2個）を開とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "タンク隔離弁2個、クロスフィード弁 B 2個"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-05'> IRQ_OMS_05 {
            subject s : Parts::Part;
            doc /* OMS 推力方向制御は OMS エンジン・GN2系 から、ジンバルリング組立の 2つの取付けパッドにエンジンを取り付け、エンジンの推力をリングで受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-06'> IRQ_OMS_06 {
            subject s : Parts::Part;
            doc /* OMS 運用は OMS エンジン・GN2系 へ、各噴射の前にパネル C3 の OMS ENG スイッチを ARM/PRESS にして GN2 の圧力隔離弁を開き、それ以外のときは OFF にしておく指令を送り、GN2 の制御弁 1・2 は C3 の OMS ENG スイッチが ARM か ARM/PRESS で O14（左）・O16（右）の OMS ENG VLV スイッチが ON のときに計算機の指令で開くこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-07'> IRQ_OMS_07 {
            subject s : Parts::Part;
            doc /* OMS 運用は ヘリウム加圧 へ、パネル O8 の LEFT・RIGHT OMS He PRESS/VAPOR ISOL スイッチ A・B でヘリウム圧力弁と蒸気隔離弁を手動で開閉させるか、GPC 位置にして噴射シーケンスの自動制御に任せる指令を送り、A か B のどちらかが OPEN なら両方の蒸気隔離弁を開き、両方が CLOSE なら両方を閉じること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-08'> IRQ_OMS_08 {
            subject s : Parts::Part;
            doc /* OMS 運用は クロスフィード・RCS連結 へ、パネル O8 の LEFT・RIGHT OMS CROSSFEED A・B スイッチで燃料・酸化剤のクロスフィード弁の組を開閉させ、軌道上のインタコネクトは O7 の RCS スイッチとあわせて手動で組ませ、スイッチが GPC 位置のときは A・B の弁の組を計算機の指令で自動的に開閉させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-09'> IRQ_OMS_09 {
            subject s : Parts::Part;
            doc /* OMS 推進薬貯蔵・分配は 運用管理（規則・処置） へ、トータライザの全量をパネル O3 の RCS/OMS PRPLT QTY 表示に、後室プローブの量を GNC SYS SUMM 2 の OMS AFT QTY に示し、OMS の使用可能推進薬を計測した量から配管・タンクに捕捉される量と分散を差し引いて定義して、推進薬の予算とレッドラインの管理に使わせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-10'> IRQ_OMS_10 {
            subject s : Parts::Part;
            doc /* OMS 運用は 推進薬熱管理 へ、パネル A14 の RCS/OMS HTR スイッチで左右ポッドと OMS クロスフィード配管のヒータの A・B 系統を選び、軌道上でヒータ系統を切り替える指令を送り、ヒータは飛行中に少なくとも 1回は冗長な系統（A か B）へ切り替えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "飛行中に少なくとも 1回"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-11'> IRQ_OMS_11 {
            subject s : Parts::Part;
            doc /* OMS クロスフィードは RCS の推進薬貯蔵・分配 へ、OMS－RCS インタコネクトで OMS クロスフィード配管と RCS クロスフィード弁を通してどちらかの OMS ポッドの推進薬を後部 RCS ジェットへ送り、OMS エンジンが故障した場合は後部 RCS の +X ジェットで予定の OMS 噴射を完了できるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-OMS-12'> IRQ_OMS_12 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は OMS 推進薬系 へ、後部モータ制御組立（AMC 1〜3）に主母線・AC 母線・主 RCS/OMS 母線・RCS/OMS AC 母線から電力を供給し、AC 母線で後部のタンク隔離弁・クロスフィード弁を駆動し、スイッチ、弁、計装、ジンバルアクチュエータ、ヒータを動かすこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-13'> IRQ_OMS_13 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は OMS 推力方向制御へ、主母線からジンバルアクチュエータの駆動系に給電し、MNA DA1 を失うと左エンジンの一次 TVC と右エンジンの二次 TVC が失われるので、MNVR 表示で左エンジンを二次、右エンジンを一次のジンバルに切り替えられること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-14'> IRQ_OMS_14 {
            subject s : Parts::Part;
            doc /* OMS エンジンは 警報系（C/W） へ、点火すべきときに燃焼室圧が 80% 未満か、停止すべきときに 80% 超になるとパネル F7 の LEFT・RIGHT OMS 警報灯を点灯させる信号を送り、C/W のハードウェアのチャネルは OMS ENG-L が 27、OMS ENG-R が 57であること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "燃焼室圧 80%、チャネル 27・57"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-15'> IRQ_OMS_15 {
            subject s : Parts::Part;
            doc /* OMS 推進薬タンクの圧力監視は 警報系（C/W） へ、推進薬タンク圧が 232 psia 未満か 284 psia 超になると、パネル F7 の LEFT・RIGHT OMS 警報灯を点灯させる信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "232 psia 未満・284 psia 超"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-16'> IRQ_OMS_16 {
            subject s : Parts::Part;
            doc /* OMS 推力方向制御は 警報系（C/W） へ、ピッチまたはヨーのジンバル故障を検知するとパネル F7 の OMS TVC 警報灯（ハードウェアのチャネル 67）を点灯させる信号を送り、LEFT または RIGHT OMS 灯も点くことがあり、指令位置とフィードバック位置に 2° の差があると L（R） OMS GMBL の故障メッセージを出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "チャネル 67、指令とフィードバックの差 2°"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-17'> IRQ_OMS_17 {
            subject s : Parts::Part;
            doc /* OMS エンジンは データ処理系（DPS） へ、OMS の圧力・温度・弁位置などの計測データを MDM 経由で GPC へ返し、GNC SYS SUMM 2 などの表示に使わせ、BFS の GNC SYS SUMM 2 にはヘリウム・推進薬タンク圧、N2 タンク圧・調圧圧、エンジン入口圧、ボール弁の位置、燃料噴射器温度、後室量を示させること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-18'> IRQ_OMS_18 {
            subject s : Parts::Part;
            doc /* OMS 推力方向制御は 構造（STR） へ、ジンバルリングの 2つのパッドでリングをオービタに取り付け、エンジンの推力をポッドとオービタへ伝え、OMS/RCS ポッドを軽微な修理で最大 100 回の飛行に再使用でき、オービタの整備のために取り外せること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "最大 100 回の飛行"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-OMS-19'> IRQ_OMS_19 {
            subject s : Parts::Part;
            doc /* 受動熱制御（PTC） は OMS 熱制御へ、ポッド内面のストリップヒータと断熱材、クロスフィード配管の巻付けヒータと断熱材で OMS のタンクと配管の推進薬を凍結から守り、各ポッドのヒータ区域の A・B 素子を素子ごとのサーモスタットで 55〜75°F に制御すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "55〜75°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PLS-01'> IRQ_PLS_01 {
            subject s : Parts::Part;
            doc /* 電力系：直流配電（EPS） は RMS アームへ、各関節の SPA に主母線 A の +28 V DC を送って関節の駆動に合わせ、肩の予備駆動増幅器には主母線 B の +28 V DC を使わせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "+28 V DC（主母線 A・B）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-02'> IRQ_PLS_02 {
            subject s : Parts::Part;
            doc /* 電力系：直流配電（EPS） は ODS へ、ドッキング系電源パネル（A6L）で ODS に関係する母線の遮断器と、APDS の操作パネル・電子箱・ドッキング照明への電力のスイッチを通して給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-03'> IRQ_PLS_03 {
            subject s : Parts::Part;
            doc /* RMS の MPM は STR：中胴・ペイロードベイ との間で、RMS をペイロードベイの左舷の縦通材に取り付け、受け台の 3つの MPM 台座の MRL で打上げ・突入の間アームを固定して、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MPM 台座 3つ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-04'> IRQ_PLS_04 {
            subject s : Parts::Part;
            doc /* ペイロード保持ラッチのブリッジ金具は STR：中胴・ペイロードベイ との間で、ペイロードの荷重をオービタ構造へ伝え、PRLA と AKA の構造の取付面となること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PLS-05'> IRQ_PLS_05 {
            subject s : Parts::Part;
            doc /* ODS のトラス組立は STR：中胴・ペイロードベイ との間で、ドッキング系の構成品を収める構造の基盤としてペイロードベイに取り付けられ、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PLS-06'> IRQ_PLS_06 {
            subject s : Parts::Part;
            doc /* RMS 制御（MCIU）は RMS アームとの間で、SM GPC・表示操作部・RMS との情報を交換・評価し、アームの電子装置（ABE）との通信のつながりを監視して双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-07'> IRQ_PLS_07 {
            subject s : Parts::Part;
            doc /* RMS の MPM は RMS アームへ、3つの台座の受け準備が整うと保持ラッチのフックが RMS の打撃棒をつかんでアームを固定すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "台座 3つ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-08'> IRQ_PLS_08 {
            subject s : Parts::Part;
            doc /* PDRS の運用は RMS 制御（MCIU・D&C） へ、RMS の運用の前に肩のブレースの解除、MPM の展開、SPEC 94 の呼出しと SM GPC とのインタフェースの確立を行わせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-PLS-09'> IRQ_PLS_09 {
            subject s : Parts::Part;
            doc /* PDRS の運用は ペイロード保持ラッチ へ、展開するペイロードの PRLA・AKA を回収が選択肢でなくなるまで閉じさせないこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-01'> IRQ_RCS_01 {
            subject s : Parts::Part;
            doc /* RCS ヘリウム加圧系は 推進薬貯蔵・分配 へ、ヘリウムタンクのガスを隔離弁・調圧器を経て、調圧器組立と推進薬タンクの間の逆止弁組立を通して燃料タンクと酸化剤タンクのアレージへ送り、調圧器は一次段で 242〜248 psig、二次段で 253〜259 psig に調圧すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "一次段 242〜248 psig、二次段 253〜259 psig"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-02'> IRQ_RCS_02 {
            subject s : Parts::Part;
            doc /* RCS 推進薬貯蔵・分配は 主・バーニア噴射器 へ、推進薬タンクの燃料・酸化剤をタンク隔離弁とマニホールド隔離弁を通して各マニホールドの噴射器へ送り、マニホールド 1〜4 は主噴射器、5 はバーニア噴射器に供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "マニホールド 1〜4 は主噴射器、5 はバーニア"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-03'> IRQ_RCS_03 {
            subject s : Parts::Part;
            doc /* RJD は 主・バーニア噴射器との間で、GPC の噴射指令を二元弁を開く電圧に変えて各噴射器の燃料・酸化剤の弁へ加えて噴射を開始させ、噴射器の燃焼室圧を RJD の電子回路で検知して 26 psia 未満では Pc 離散信号をゼロとして双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "26 psia 未満で Pc 離散信号ゼロ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-04'> IRQ_RCS_04 {
            subject s : Parts::Part;
            doc /* RJD は 噴射器冗長管理 へ、RJD が生成する燃焼室圧の離散信号を、実際に噴射したことの表示として RM へ送り、RM は Pc 離散信号・CMD B・ドライバ出力離散信号を噴射器の故障の検知に使うこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-05'> IRQ_RCS_05 {
            subject s : Parts::Part;
            doc /* RCS ジェットは 噴射器冗長管理 へ、各噴射器の燃料・酸化剤の噴射器温度を RM へ送り、RM の限界を 3周期続けて下回ると漏れ（fail-leak）と判定させ、漏れの限界は主噴射器で酸化剤 30°F・燃料 20°F、OPS 2 のバーニアで 130°F とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "主噴射器 酸化剤 30°F・燃料 20°F、バーニア 130°F"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-06'> IRQ_RCS_06 {
            subject s : Parts::Part;
            doc /* RCS 冗長管理（RM）は 推進薬貯蔵・分配 との間で、マニホールド隔離弁の4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）からマニホールドの状態を評価し、OPS 2・8 で fail-on が通報され AUTO MANF CL が有効でスイッチが GPC 位置なら、GPC が該当するマニホールドを自動で閉じる指令を送って、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "OPS 2・8"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-07'> IRQ_RCS_07 {
            subject s : Parts::Part;
            doc /* RCS ヒータは 主・バーニア噴射器 へ、各噴射器のヒータ（主噴射器 20 W、後ろ向きの 4基は 30 W、バーニア 10 W）で噴射器を安全な作動温度に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "主噴射器 20 W、後ろ向き 4基 30 W、バーニア 10 W"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-08'> IRQ_RCS_08 {
            subject s : Parts::Part;
            doc /* RCS ヒータは 推進薬貯蔵・分配 へ、前部モジュールのパネルヒータと各ポッドの9ゾーンのヒータ（A・B系）の熱で、タンクと配管の推進薬を概ね 55〜75°F に保ち、重要なヒータ回路は RCS のタンク・He 配管、推進薬配管、マニホールド配管を保護して、すべて冗長とすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "概ね 55〜75°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-09'> IRQ_RCS_09 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は RCS 推進薬貯蔵・分配 へ、前部 RCS の弁にはパネル MA73C の AC1・AC2・AC3 FWD RCS VLV の遮断器（9個）から、後部ポッドの弁には AFT POD VLV の遮断器（9個）から三相交流を供給し、MCA のロジック電源は MNA・MNB・MNC から受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "遮断器 9個ずつ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-10'> IRQ_RCS_10 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は RJD へ、パネル O14・O15・O16 のスイッチを通して主噴射器の RJD の LOGIC・DRIVER 電源（16個）とバーニアの RJD（L5・F5・R5 DRIVER）に給電し、各 RJD に冗長な 2系統の電源を持たせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "LOGIC・DRIVER 電源 16個、冗長 2系統"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-11'> IRQ_RCS_11 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は RCS ヒータへ、主母線の直流配電から噴射器ヒータに給電し、例えば主母線 MNA の DA1 を失うと後部 RCS 左右の JET 2 ヒータ（FSM 経由）が失われ、パネル A14 のコネクタ P9644 のソケット A には RCS JET ヒータ用の主母線 MNB の 24 V 直流電力が来ていること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "MNB 24 V 直流"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-12'> IRQ_RCS_12 {
            subject s : Parts::Part;
            doc /* RCS 推進薬貯蔵・分配は 警報系（C/W） へ、推進薬タンクのアレージ圧が 200 psia 未満か 312 psia 超になると該当する LEFT RCS・FWD RCS・RIGHT RCS の赤色灯を点灯させ、燃料と酸化剤の量の差が 9.5% を超えた場合も同じ灯を点灯させて BACKUP C/W ALARM を作動させ、DPS の表示に故障メッセージを送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "アレージ圧 200 psia 未満・312 psia 超、量の差 9.5%"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-14'> IRQ_RCS_14 {
            subject s : Parts::Part;
            doc /* RCS ヘリウム加圧系は 警報系（C/W） へ、ポッドのヘリウム圧（燃料か酸化剤）が 500 psi 未満になると F(L,R) He P の故障メッセージを出す信号を送り、このメッセージにはポケットチェックリストの RCS LEAK ISOL の手順で対処できるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "500 psi 未満"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-15'> IRQ_RCS_15 {
            subject s : Parts::Part;
            doc /* RCS ヒータは 警報系（C/W） へ、構造の温度が I-load の上下限を超えると SM アラート「S89 PRPLT THRM RCS」を出し（OPS 2）、故障処置 10.3a では前部 RCS の燃料（酸化剤）の温度が 46°F 未満か 105°F 超などで処置に入り、他方のヒータ系に切り替えて原因を切り分けられること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "46°F 未満、105°F 超"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-16'> IRQ_RCS_16 {
            subject s : Parts::Part;
            doc /* RCS 運用は 推進薬貯蔵・分配 へ、運用規則と手順に従ってパネル O7・O8 のスイッチで推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）を操作させ、トークバックは弁の対が開なら OP、閉なら CL、移動中や不一致ならバーバーポールを示すこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-17'> IRQ_RCS_17 {
            subject s : Parts::Part;
            doc /* RCS 運用は ヘリウム加圧 へ、パネル O7・O8 の He PRESS A・B スイッチでヘリウム隔離弁を操作させ、調圧器の故障では RCS REGULATOR RECONFIG の手順で使う加圧経路を切り替えさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-18'> IRQ_RCS_18 {
            subject s : Parts::Part;
            doc /* RCS 運用は 噴射器冗長管理 へ、SPEC 23 の項目入力で噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更を行わせ、マニホールドの自動閉（AUTO MANF CL）を SPEC 23 で有効にさせること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-RCS-19'> IRQ_RCS_19 {
            subject s : Parts::Part;
            doc /* RCS 運用は 熱制御（ヒータ） へ、運用規則に従ってパネル A14 のヒータスイッチでヒータ系（A・B）の選択と入切を行わせ、ヒータ系は飛行中に少なくとも一度は冗長側（A・B）へ切り替えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "飛行中に少なくとも一度"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-RCS-20'> IRQ_RCS_20 {
            subject s : Parts::Part;
            doc /* RCS ジェットは STR：後胴・推力構造・ポッド へ、計 44基（主 38・バーニア 6）の噴射器を前部は主 14・バーニア 2、後部は各ポッドに主 12・バーニア 2 として取り付け、主噴射器の真空推力 870 ポンド、バーニア 24 ポンドの荷重を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "主 38・バーニア 6、870 ポンド、24 ポンド"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-SRB-01'> IRQ_SRB_01 {
            subject s : Parts::Part;
            doc /* SRB の ET 結合は 外部タンク（ET） との間で、SRB の玉と ET の受けから成る前部の結合点を 1本のボルトで保持し、射場安全系のクロスストラップの配線も通して荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "ボルト 1本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-02'> IRQ_SRB_02 {
            subject s : Parts::Part;
            doc /* SRB の ET 結合は 外部タンク（ET） との間で、上・斜め・下の 3本の支柱から成る後部の結合点を設け、上の支柱は SRB と ET からオービタへのアンビリカルも通して荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "支柱 3本"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-03'> IRQ_SRB_03 {
            subject s : Parts::Part;
            doc /* SRB の保持ポストは 打上げ処理システム（KSC） との間で、各 SRB の4つの保持ポストを移動発射台の支持ポストに合わせ、保持ボルトで固定して、離昇まで荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "4つの保持ポスト"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-04'> IRQ_SRB_04 {
            subject s : Parts::Part;
            doc /* SRB 推力方向制御は 固体ロケットモータ へ、ロックとチルトのサーボアクチュエータがノズルをジンバルさせる力と制御を与えて推力方向制御を行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-05'> IRQ_SRB_05 {
            subject s : Parts::Part;
            doc /* SRB 電子装置は 推力方向制御（HPU） へ、APU の制御器の電子装置を ET の後部結合リングにある SRB の後部 IEA に置いて、制御の信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-SRB-06'> IRQ_SRB_06 {
            subject s : Parts::Part;
            doc /* SRB の保持・点火系は 固体ロケットモータ へ、点火では PIC が S&A 装置の火工品を点火し、S&A の薬が起爆剤を、起爆剤がモータの点火器を、点火器がモータの推進薬を点火する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-07'> IRQ_SRB_07 {
            subject s : Parts::Part;
            doc /* SRB モータは ET結合・分離 へ、両方の SRB の頭部の燃焼圧が 50 psi 以下になったときに SRB の分離を始める信号を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "頭部の燃焼圧 50 psi 以下"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-SRB-08'> IRQ_SRB_08 {
            subject s : Parts::Part;
            doc /* SRB 電子装置は 降下・回収 へ、各 SRB の回収用電池から RSS の系統 B と回収系に給電し、分離の手順で回収系の電源を入れること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-STR-01'> IRQ_STR_01 {
            subject s : Parts::Part;
            doc /* 前胴構造は ET：LH2タンク との間で、前部のオービタ/ET 結合金具を Xo=378 隔壁と前脚格納部の後方の外板構造に置き、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "Xo=378 隔壁"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-STR-02'> IRQ_STR_02 {
            subject s : Parts::Part;
            doc /* 後胴構造は ET：LH2タンク との間で、オービタ/ET の 2つの後部結合点を後胴の縦通材の金具で結合し、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "後部結合点 2つ"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-STR-03'> IRQ_STR_03 {
            subject s : Parts::Part;
            doc /* 中胴構造は 熱防護系（TPS） から、突入中はTPSの材料でアルミニウムとグラファイトエポキシの外板を 350°F を超える温度から守る熱の遮断を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "350°F"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-STR-04'> IRQ_STR_04 {
            subject s : Parts::Part;
            doc /* 乗員室構造は 前胴・前部RCSモジュール へ、乗員室を熱伝導を小さくするため前胴の中に 4つの取付点だけで支えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "取付点 4つ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-05'> IRQ_STR_05 {
            subject s : Parts::Part;
            doc /* 中胴構造は 前胴・前部RCSモジュール との間で、中胴の前後の端を開いたまま、補強した外板と縦通材を前胴・後胴の隔壁と結合し、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-06'> IRQ_STR_06 {
            subject s : Parts::Part;
            doc /* 後胴構造は 中胴・ペイロードベイ との間で、中胴の主縦通材への荷重経路と、前部隔壁を越える主翼桁の連続を受け持ち、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-07'> IRQ_STR_07 {
            subject s : Parts::Part;
            doc /* 翼構造は 中胴・ペイロードベイ との間で、翼を上面の引張ボルトの継手と、胴体の通し構造の下面のせん断継手で胴体に取り付け、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-08'> IRQ_STR_08 {
            subject s : Parts::Part;
            doc /* 垂直尾翼構造は 後胴・推力構造・ポッド との間で、垂直尾翼のフィンを前桁の根元の 2本の引張ボルトで後胴の前部隔壁に、後桁の根元の 8本のせん断ボルトで後胴の上面に取り付け、荷重を双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "引張ボルト 2本、せん断ボルト 8本"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-09'> IRQ_STR_09 {
            subject s : Parts::Part;
            doc /* 構造の運用は 乗員室（与圧）・窓 へ、圧力ペインか冗長ペインが故障したときは客室圧を 10.2 psi に下げ、軌道上では次の PLS で帰還する判断を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "客室圧 10.2 psi"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-STR-10'> IRQ_STR_10 {
            subject s : Parts::Part;
            doc /* 構造の運用は 中胴・ペイロードベイ へ、中胴の構造の応力が機体の温度勾配で生じるため、接着層の温度の限界を守るよう姿勢を管理する指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-LOW-001"; valueText = "—"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    // ---- 導出（上位の L1・L2・L3・上位の IF のインタフェース要求 → 下位の IF のインタフェース要求）
    package Derivation {
        #derivation connection <'LRQ-APU-11>IRQ-APU-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_11;
            end #derive ::> InterfaceRequirements::IRQ_APU_01;
        }
        #derivation connection <'LRQ-APU-08>IRQ-APU-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_08;
            end #derive ::> InterfaceRequirements::IRQ_APU_02;
        }
        #derivation connection <'REQ-APU-04>IRQ-APU-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> InterfaceRequirements::IRQ_APU_02;
        }
        #derivation connection <'LRQ-APU-22>IRQ-APU-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_22;
            end #derive ::> InterfaceRequirements::IRQ_APU_03;
        }
        #derivation connection <'REQ-APU-03>IRQ-APU-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> InterfaceRequirements::IRQ_APU_04;
        }
        #derivation connection <'REQ-APU-03>IRQ-APU-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> InterfaceRequirements::IRQ_APU_05;
        }
        #derivation connection <'LRQ-APU-05>IRQ-APU-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_APU_06;
        }
        #derivation connection <'LRQ-APU-01>IRQ-APU-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_01;
            end #derive ::> InterfaceRequirements::IRQ_APU_08;
        }
        #derivation connection <'REQ-APU-06>IRQ-APU-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> InterfaceRequirements::IRQ_APU_08;
        }
        #derivation connection <'IRQ-ORB-07>IRQ-APU-09'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_07;
            end #derive ::> InterfaceRequirements::IRQ_APU_09;
        }
        #derivation connection <'LRQ-APU-16>IRQ-APU-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_16;
            end #derive ::> InterfaceRequirements::IRQ_APU_09;
        }
        #derivation connection <'REQ-APU-05>IRQ-APU-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_APU_09;
        }
        #derivation connection <'IRQ-ORB-08>IRQ-APU-10'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_08;
            end #derive ::> InterfaceRequirements::IRQ_APU_10;
        }
        #derivation connection <'REQ-APU-05>IRQ-APU-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_APU_10;
        }
        #derivation connection <'IRQ-ORB-23>IRQ-APU-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_23;
            end #derive ::> InterfaceRequirements::IRQ_APU_12;
        }
        #derivation connection <'IRQ-ORB-23>IRQ-APU-13'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_23;
            end #derive ::> InterfaceRequirements::IRQ_APU_13;
        }
        #derivation connection <'IRQ-ORB-23>IRQ-APU-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_23;
            end #derive ::> InterfaceRequirements::IRQ_APU_14;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-APU-16'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_APU_16;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-APU-17'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_APU_17;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-APU-18'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_APU_18;
        }
        #derivation connection <'LRQ-APU-20>IRQ-APU-20'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_20;
            end #derive ::> InterfaceRequirements::IRQ_APU_20;
        }
        #derivation connection <'LRQ-APU-18>IRQ-APU-20'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_18;
            end #derive ::> InterfaceRequirements::IRQ_APU_20;
        }
        #derivation connection <'REQ-APU-03>IRQ-APU-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> InterfaceRequirements::IRQ_APU_22;
        }
        #derivation connection <'LRQ-APU-29>IRQ-APU-23'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_APU::LRQ_APU_29;
            end #derive ::> InterfaceRequirements::IRQ_APU_23;
        }
        #derivation connection <'REQ-APU-07>IRQ-APU-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
            end #derive ::> InterfaceRequirements::IRQ_APU_23;
        }
        #derivation connection <'REQ-APU-03>IRQ-APU-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> InterfaceRequirements::IRQ_APU_24;
        }
        #derivation connection <'IRQ-ORB-23>IRQ-APU-25'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_23;
            end #derive ::> InterfaceRequirements::IRQ_APU_25;
        }
        #derivation connection <'REQ-APU-05>IRQ-APU-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> InterfaceRequirements::IRQ_APU_25;
        }
        #derivation connection <'IRQ-ORB-44>IRQ-CREW-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_44;
            end #derive ::> InterfaceRequirements::IRQ_CREW_01;
        }
        #derivation connection <'IRQ-ORB-44>IRQ-CREW-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_44;
            end #derive ::> InterfaceRequirements::IRQ_CREW_02;
        }
        #derivation connection <'LRQ-CREW-12>IRQ-CREW-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_12;
            end #derive ::> InterfaceRequirements::IRQ_CREW_02;
        }
        #derivation connection <'LRQ-CREW-26>IRQ-CREW-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_26;
            end #derive ::> InterfaceRequirements::IRQ_CREW_03;
        }
        #derivation connection <'LRQ-CREW-12>IRQ-CREW-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_12;
            end #derive ::> InterfaceRequirements::IRQ_CREW_04;
        }
        #derivation connection <'LRQ-CREW-13>IRQ-CREW-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_13;
            end #derive ::> InterfaceRequirements::IRQ_CREW_05;
        }
        #derivation connection <'LRQ-CREW-06>IRQ-CREW-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_06;
            end #derive ::> InterfaceRequirements::IRQ_CREW_06;
        }
        #derivation connection <'REQ-CREW-07>IRQ-CREW-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> InterfaceRequirements::IRQ_CREW_06;
        }
        #derivation connection <'REQ-CREW-08>IRQ-CREW-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
            end #derive ::> InterfaceRequirements::IRQ_CREW_07;
        }
        #derivation connection <'REQ-CREW-09>IRQ-CREW-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
            end #derive ::> InterfaceRequirements::IRQ_CREW_07;
        }
        #derivation connection <'REQ-CREW-04>IRQ-CREW-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> InterfaceRequirements::IRQ_CREW_08;
        }
        #derivation connection <'LRQ-CREW-21>IRQ-CREW-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CREW::LRQ_CREW_21;
            end #derive ::> InterfaceRequirements::IRQ_CREW_09;
        }
        #derivation connection <'REQ-CREW-04>IRQ-CREW-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> InterfaceRequirements::IRQ_CREW_09;
        }
        #derivation connection <'REQ-CREW-05>IRQ-CREW-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> InterfaceRequirements::IRQ_CREW_10;
        }
        #derivation connection <'IRQ-ORB-16>IRQ-CT-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_16;
            end #derive ::> InterfaceRequirements::IRQ_CT_01;
        }
        #derivation connection <'LRQ-CT-23>IRQ-CT-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_23;
            end #derive ::> InterfaceRequirements::IRQ_CT_01;
        }
        #derivation connection <'IRQ-ORB-16>IRQ-CT-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_16;
            end #derive ::> InterfaceRequirements::IRQ_CT_02;
        }
        #derivation connection <'LRQ-CT-26>IRQ-CT-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_26;
            end #derive ::> InterfaceRequirements::IRQ_CT_02;
        }
        #derivation connection <'IRQ-ORB-16>IRQ-CT-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_16;
            end #derive ::> InterfaceRequirements::IRQ_CT_03;
        }
        #derivation connection <'REQ-CT-03>IRQ-CT-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> InterfaceRequirements::IRQ_CT_03;
        }
        #derivation connection <'IRQ-ORB-16>IRQ-CT-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_16;
            end #derive ::> InterfaceRequirements::IRQ_CT_04;
        }
        #derivation connection <'LRQ-CT-28>IRQ-CT-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_28;
            end #derive ::> InterfaceRequirements::IRQ_CT_04;
        }
        #derivation connection <'REQ-CT-05>IRQ-CT-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> InterfaceRequirements::IRQ_CT_04;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-05'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_05;
        }
        #derivation connection <'LRQ-CT-25>IRQ-CT-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_25;
            end #derive ::> InterfaceRequirements::IRQ_CT_05;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-06'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_06;
        }
        #derivation connection <'LRQ-CT-10>IRQ-CT-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_10;
            end #derive ::> InterfaceRequirements::IRQ_CT_06;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-07'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_07;
        }
        #derivation connection <'IRQ-ORB-24>IRQ-CT-08'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_24;
            end #derive ::> InterfaceRequirements::IRQ_CT_08;
        }
        #derivation connection <'LRQ-CT-16>IRQ-CT-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_16;
            end #derive ::> InterfaceRequirements::IRQ_CT_08;
        }
        #derivation connection <'IRQ-ORB-46>IRQ-CT-10'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_46;
            end #derive ::> InterfaceRequirements::IRQ_CT_10;
        }
        #derivation connection <'LRQ-CT-29>IRQ-CT-10'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_29;
            end #derive ::> InterfaceRequirements::IRQ_CT_10;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-CT-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_CT_12;
        }
        #derivation connection <'LRQ-CT-01>IRQ-CT-12'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_12;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-CT-13'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_CT_13;
        }
        #derivation connection <'LRQ-CT-06>IRQ-CT-13'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_06;
            end #derive ::> InterfaceRequirements::IRQ_CT_13;
        }
        #derivation connection <'LRQ-CT-10>IRQ-CT-14'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_10;
            end #derive ::> InterfaceRequirements::IRQ_CT_14;
        }
        #derivation connection <'LRQ-CT-02>IRQ-CT-15'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_02;
            end #derive ::> InterfaceRequirements::IRQ_CT_15;
        }
        #derivation connection <'LRQ-CT-14>IRQ-CT-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_14;
            end #derive ::> InterfaceRequirements::IRQ_CT_16;
        }
        #derivation connection <'LRQ-CT-28>IRQ-CT-17'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_28;
            end #derive ::> InterfaceRequirements::IRQ_CT_17;
        }
        #derivation connection <'LRQ-CT-08>IRQ-CT-18'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_08;
            end #derive ::> InterfaceRequirements::IRQ_CT_18;
        }
        #derivation connection <'LRQ-CT-19>IRQ-CT-19'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_19;
            end #derive ::> InterfaceRequirements::IRQ_CT_19;
        }
        #derivation connection <'LRQ-CT-20>IRQ-CT-20'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_20;
            end #derive ::> InterfaceRequirements::IRQ_CT_20;
        }
        #derivation connection <'REQ-CT-04>IRQ-CT-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_04;
            end #derive ::> InterfaceRequirements::IRQ_CT_20;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-21'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_21;
        }
        #derivation connection <'LRQ-CT-26>IRQ-CT-21'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_26;
            end #derive ::> InterfaceRequirements::IRQ_CT_21;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-22'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_22;
        }
        #derivation connection <'LRQ-CT-10>IRQ-CT-22'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_10;
            end #derive ::> InterfaceRequirements::IRQ_CT_22;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-23'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_23;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-24'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_24;
        }
        #derivation connection <'LRQ-CT-13>IRQ-CT-24'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_13;
            end #derive ::> InterfaceRequirements::IRQ_CT_24;
        }
        #derivation connection <'IRQ-ORB-01>IRQ-CT-25'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_01;
            end #derive ::> InterfaceRequirements::IRQ_CT_25;
        }
        #derivation connection <'LRQ-CT-24>IRQ-CT-25'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CT::LRQ_CT_24;
            end #derive ::> InterfaceRequirements::IRQ_CT_25;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-CW-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_CW_02;
        }
        #derivation connection <'LRQ-CW-01>IRQ-CW-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_01;
            end #derive ::> InterfaceRequirements::IRQ_CW_02;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-CW-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_CW_03;
        }
        #derivation connection <'LRQ-CW-05>IRQ-CW-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_05;
            end #derive ::> InterfaceRequirements::IRQ_CW_03;
        }
        #derivation connection <'LRQ-CW-06>IRQ-CW-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_06;
            end #derive ::> InterfaceRequirements::IRQ_CW_03;
        }
        #derivation connection <'REQ-CW-01>IRQ-CW-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
            end #derive ::> InterfaceRequirements::IRQ_CW_04;
        }
        #derivation connection <'LRQ-CW-10>IRQ-CW-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_10;
            end #derive ::> InterfaceRequirements::IRQ_CW_05;
        }
        #derivation connection <'LRQ-CW-15>IRQ-CW-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_15;
            end #derive ::> InterfaceRequirements::IRQ_CW_06;
        }
        #derivation connection <'LRQ-CW-19>IRQ-CW-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_19;
            end #derive ::> InterfaceRequirements::IRQ_CW_07;
        }
        #derivation connection <'REQ-CW-08>IRQ-CW-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> InterfaceRequirements::IRQ_CW_07;
        }
        #derivation connection <'LRQ-CW-20>IRQ-CW-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_20;
            end #derive ::> InterfaceRequirements::IRQ_CW_08;
        }
        #derivation connection <'REQ-CW-08>IRQ-CW-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> InterfaceRequirements::IRQ_CW_08;
        }
        #derivation connection <'LRQ-CW-20>IRQ-CW-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_CW::LRQ_CW_20;
            end #derive ::> InterfaceRequirements::IRQ_CW_09;
        }
        #derivation connection <'LRQ-DPS-16>IRQ-DPS-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_16;
            end #derive ::> InterfaceRequirements::IRQ_DPS_01;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-DPS-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_DPS_02;
        }
        #derivation connection <'REQ-DPS-03>IRQ-DPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
            end #derive ::> InterfaceRequirements::IRQ_DPS_02;
        }
        #derivation connection <'IRQ-ORB-02>IRQ-DPS-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_02;
            end #derive ::> InterfaceRequirements::IRQ_DPS_03;
        }
        #derivation connection <'REQ-DPS-06>IRQ-DPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> InterfaceRequirements::IRQ_DPS_03;
        }
        #derivation connection <'REQ-DPS-07>IRQ-DPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> InterfaceRequirements::IRQ_DPS_03;
        }
        #derivation connection <'IRQ-ORB-02>IRQ-DPS-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_02;
            end #derive ::> InterfaceRequirements::IRQ_DPS_04;
        }
        #derivation connection <'REQ-DPS-04>IRQ-DPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
            end #derive ::> InterfaceRequirements::IRQ_DPS_04;
        }
        #derivation connection <'IRQ-ORB-06>IRQ-DPS-05'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_06;
            end #derive ::> InterfaceRequirements::IRQ_DPS_05;
        }
        #derivation connection <'REQ-DPS-08>IRQ-DPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> InterfaceRequirements::IRQ_DPS_05;
        }
        #derivation connection <'IRQ-ORB-17>IRQ-DPS-06'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_17;
            end #derive ::> InterfaceRequirements::IRQ_DPS_06;
        }
        #derivation connection <'LRQ-DPS-03>IRQ-DPS-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_03;
            end #derive ::> InterfaceRequirements::IRQ_DPS_06;
        }
        #derivation connection <'IRQ-ORB-42>IRQ-DPS-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_42;
            end #derive ::> InterfaceRequirements::IRQ_DPS_12;
        }
        #derivation connection <'IRQ-ORB-48>IRQ-DPS-13'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_48;
            end #derive ::> InterfaceRequirements::IRQ_DPS_13;
        }
        #derivation connection <'LRQ-DPS-01>IRQ-DPS-14'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_01;
            end #derive ::> InterfaceRequirements::IRQ_DPS_14;
        }
        #derivation connection <'REQ-DPS-08>IRQ-DPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> InterfaceRequirements::IRQ_DPS_14;
        }
        #derivation connection <'REQ-DPS-05>IRQ-DPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
            end #derive ::> InterfaceRequirements::IRQ_DPS_15;
        }
        #derivation connection <'LRQ-DPS-22>IRQ-DPS-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_22;
            end #derive ::> InterfaceRequirements::IRQ_DPS_16;
        }
        #derivation connection <'REQ-DPS-11>IRQ-DPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
            end #derive ::> InterfaceRequirements::IRQ_DPS_16;
        }
        #derivation connection <'LRQ-DPS-21>IRQ-DPS-17'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_21;
            end #derive ::> InterfaceRequirements::IRQ_DPS_17;
        }
        #derivation connection <'LRQ-DPS-28>IRQ-DPS-18'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_DPS::LRQ_DPS_28;
            end #derive ::> InterfaceRequirements::IRQ_DPS_18;
        }
        #derivation connection <'REQ-DPS-12>IRQ-DPS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> InterfaceRequirements::IRQ_DPS_18;
        }
        #derivation connection <'REQ-DPS-06>IRQ-DPS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> InterfaceRequirements::IRQ_DPS_21;
        }
        #derivation connection <'IRQ-ORB-02>IRQ-DPS-22'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_02;
            end #derive ::> InterfaceRequirements::IRQ_DPS_22;
        }
        #derivation connection <'IRQ-ORB-30>IRQ-EPS-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_30;
            end #derive ::> InterfaceRequirements::IRQ_EPS_01;
        }
        #derivation connection <'IRQ-ORB-31>IRQ-EPS-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_31;
            end #derive ::> InterfaceRequirements::IRQ_EPS_02;
        }
        #derivation connection <'LRQ-EPS-01>IRQ-EPS-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_01;
            end #derive ::> InterfaceRequirements::IRQ_EPS_03;
        }
        #derivation connection <'REQ-EPS-03>IRQ-EPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
            end #derive ::> InterfaceRequirements::IRQ_EPS_05;
        }
        #derivation connection <'LRQ-EPS-07>IRQ-EPS-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_07;
            end #derive ::> InterfaceRequirements::IRQ_EPS_06;
        }
        #derivation connection <'REQ-EPS-16>IRQ-EPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
            end #derive ::> InterfaceRequirements::IRQ_EPS_06;
        }
        #derivation connection <'REQ-EPS-15>IRQ-EPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
            end #derive ::> InterfaceRequirements::IRQ_EPS_07;
        }
        #derivation connection <'LRQ-EPS-07>IRQ-EPS-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_07;
            end #derive ::> InterfaceRequirements::IRQ_EPS_08;
        }
        #derivation connection <'REQ-EPS-14>IRQ-EPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
            end #derive ::> InterfaceRequirements::IRQ_EPS_08;
        }
        #derivation connection <'IRQ-ORB-20>IRQ-EPS-09'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_20;
            end #derive ::> InterfaceRequirements::IRQ_EPS_09;
        }
        #derivation connection <'REQ-EPS-14>IRQ-EPS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_14;
            end #derive ::> InterfaceRequirements::IRQ_EPS_09;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-EPS-11'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_EPS_11;
        }
        #derivation connection <'IRQ-ORB-35>IRQ-EPS-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_35;
            end #derive ::> InterfaceRequirements::IRQ_EPS_14;
        }
        #derivation connection <'REQ-EPS-22>IRQ-EPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_22;
            end #derive ::> InterfaceRequirements::IRQ_EPS_14;
        }
        #derivation connection <'LRQ-EPS-12>IRQ-EPS-15'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_12;
            end #derive ::> InterfaceRequirements::IRQ_EPS_15;
        }
        #derivation connection <'REQ-EPS-19>IRQ-EPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
            end #derive ::> InterfaceRequirements::IRQ_EPS_15;
        }
        #derivation connection <'LRQ-EPS-08>IRQ-EPS-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EPS::LRQ_EPS_08;
            end #derive ::> InterfaceRequirements::IRQ_EPS_16;
        }
        #derivation connection <'LRQ-ET-12>IRQ-ET-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_12;
            end #derive ::> InterfaceRequirements::IRQ_ET_01;
        }
        #derivation connection <'REQ-ET-01>IRQ-ET-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> InterfaceRequirements::IRQ_ET_01;
        }
        #derivation connection <'LRQ-ET-07>IRQ-ET-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_07;
            end #derive ::> InterfaceRequirements::IRQ_ET_02;
        }
        #derivation connection <'REQ-ET-01>IRQ-ET-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> InterfaceRequirements::IRQ_ET_02;
        }
        #derivation connection <'LRQ-ET-01>IRQ-ET-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_01;
            end #derive ::> InterfaceRequirements::IRQ_ET_03;
        }
        #derivation connection <'REQ-ET-04>IRQ-ET-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_ET_03;
        }
        #derivation connection <'LRQ-ET-04>IRQ-ET-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_ET_04;
        }
        #derivation connection <'REQ-ET-04>IRQ-ET-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> InterfaceRequirements::IRQ_ET_04;
        }
        #derivation connection <'LRQ-ET-22>IRQ-ET-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_22;
            end #derive ::> InterfaceRequirements::IRQ_ET_05;
        }
        #derivation connection <'REQ-ET-07>IRQ-ET-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> InterfaceRequirements::IRQ_ET_05;
        }
        #derivation connection <'REQ-ET-08>IRQ-ET-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> InterfaceRequirements::IRQ_ET_06;
        }
        #derivation connection <'LRQ-ET-17>IRQ-ET-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_ET::LRQ_ET_17;
            end #derive ::> InterfaceRequirements::IRQ_ET_07;
        }
        #derivation connection <'LRQ-EVA-20>IRQ-EVA-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_20;
            end #derive ::> InterfaceRequirements::IRQ_EVA_01;
        }
        #derivation connection <'REQ-EVA-02>IRQ-EVA-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
            end #derive ::> InterfaceRequirements::IRQ_EVA_01;
        }
        #derivation connection <'REQ-EVA-02>IRQ-EVA-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
            end #derive ::> InterfaceRequirements::IRQ_EVA_02;
        }
        #derivation connection <'LRQ-EVA-29>IRQ-EVA-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_29;
            end #derive ::> InterfaceRequirements::IRQ_EVA_03;
        }
        #derivation connection <'IRQ-ORB-45>IRQ-EVA-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_45;
            end #derive ::> InterfaceRequirements::IRQ_EVA_04;
        }
        #derivation connection <'LRQ-EVA-07>IRQ-EVA-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_07;
            end #derive ::> InterfaceRequirements::IRQ_EVA_04;
        }
        #derivation connection <'REQ-EVA-03>IRQ-EVA-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> InterfaceRequirements::IRQ_EVA_04;
        }
        #derivation connection <'LRQ-EVA-07>IRQ-EVA-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_07;
            end #derive ::> InterfaceRequirements::IRQ_EVA_06;
        }
        #derivation connection <'LRQ-EVA-13>IRQ-EVA-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_13;
            end #derive ::> InterfaceRequirements::IRQ_EVA_07;
        }
        #derivation connection <'REQ-EVA-05>IRQ-EVA-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> InterfaceRequirements::IRQ_EVA_09;
        }
        #derivation connection <'LRQ-EVA-17>IRQ-EVA-10'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_17;
            end #derive ::> InterfaceRequirements::IRQ_EVA_10;
        }
        #derivation connection <'REQ-EVA-05>IRQ-EVA-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> InterfaceRequirements::IRQ_EVA_10;
        }
        #derivation connection <'LRQ-EVA-23>IRQ-EVA-13'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_23;
            end #derive ::> InterfaceRequirements::IRQ_EVA_13;
        }
        #derivation connection <'REQ-EVA-07>IRQ-EVA-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
            end #derive ::> InterfaceRequirements::IRQ_EVA_13;
        }
        #derivation connection <'IRQ-ORB-45>IRQ-EVA-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_45;
            end #derive ::> InterfaceRequirements::IRQ_EVA_14;
        }
        #derivation connection <'LRQ-EVA-21>IRQ-EVA-14'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_EVA::LRQ_EVA_21;
            end #derive ::> InterfaceRequirements::IRQ_EVA_14;
        }
        #derivation connection <'LRQ-GNC-17>IRQ-GNC-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_17;
            end #derive ::> InterfaceRequirements::IRQ_GNC_01;
        }
        #derivation connection <'LRQ-GNC-20>IRQ-GNC-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_20;
            end #derive ::> InterfaceRequirements::IRQ_GNC_02;
        }
        #derivation connection <'REQ-GNC-03>IRQ-GNC-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
            end #derive ::> InterfaceRequirements::IRQ_GNC_02;
        }
        #derivation connection <'LRQ-GNC-23>IRQ-GNC-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_23;
            end #derive ::> InterfaceRequirements::IRQ_GNC_02;
        }
        #derivation connection <'REQ-GNC-04>IRQ-GNC-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_04;
            end #derive ::> InterfaceRequirements::IRQ_GNC_03;
        }
        #derivation connection <'LRQ-GNC-22>IRQ-GNC-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_22;
            end #derive ::> InterfaceRequirements::IRQ_GNC_03;
        }
        #derivation connection <'LRQ-GNC-05>IRQ-GNC-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_05;
            end #derive ::> InterfaceRequirements::IRQ_GNC_06;
        }
        #derivation connection <'REQ-GNC-12>IRQ-GNC-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_12;
            end #derive ::> InterfaceRequirements::IRQ_GNC_06;
        }
        #derivation connection <'LRQ-GNC-26>IRQ-GNC-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_26;
            end #derive ::> InterfaceRequirements::IRQ_GNC_09;
        }
        #derivation connection <'REQ-GNC-02>IRQ-GNC-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
            end #derive ::> InterfaceRequirements::IRQ_GNC_10;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-GNC-11'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_GNC_11;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-GNC-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_GNC_12;
        }
        #derivation connection <'REQ-GNC-03>IRQ-GNC-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
            end #derive ::> InterfaceRequirements::IRQ_GNC_13;
        }
        #derivation connection <'IRQ-ORB-03>IRQ-GNC-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_03;
            end #derive ::> InterfaceRequirements::IRQ_GNC_14;
        }
        #derivation connection <'REQ-GNC-09>IRQ-GNC-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
            end #derive ::> InterfaceRequirements::IRQ_GNC_14;
        }
        #derivation connection <'IRQ-ORB-04>IRQ-GNC-15'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_04;
            end #derive ::> InterfaceRequirements::IRQ_GNC_15;
        }
        #derivation connection <'LRQ-GNC-10>IRQ-GNC-15'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_10;
            end #derive ::> InterfaceRequirements::IRQ_GNC_15;
        }
        #derivation connection <'IRQ-ORB-21>IRQ-GNC-16'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_21;
            end #derive ::> InterfaceRequirements::IRQ_GNC_16;
        }
        #derivation connection <'LRQ-GNC-04>IRQ-GNC-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_04;
            end #derive ::> InterfaceRequirements::IRQ_GNC_16;
        }
        #derivation connection <'REQ-GNC-11>IRQ-GNC-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> InterfaceRequirements::IRQ_GNC_16;
        }
        #derivation connection <'IRQ-ORB-21>IRQ-GNC-17'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_21;
            end #derive ::> InterfaceRequirements::IRQ_GNC_17;
        }
        #derivation connection <'LRQ-GNC-13>IRQ-GNC-17'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_13;
            end #derive ::> InterfaceRequirements::IRQ_GNC_17;
        }
        #derivation connection <'REQ-GNC-06>IRQ-GNC-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_06;
            end #derive ::> InterfaceRequirements::IRQ_GNC_17;
        }
        #derivation connection <'IRQ-ORB-22>IRQ-GNC-19'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_22;
            end #derive ::> InterfaceRequirements::IRQ_GNC_19;
        }
        #derivation connection <'LRQ-GNC-09>IRQ-GNC-19'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_09;
            end #derive ::> InterfaceRequirements::IRQ_GNC_19;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-GNC-20'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_GNC_20;
        }
        #derivation connection <'LRQ-GNC-03>IRQ-GNC-20'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_GNC::LRQ_GNC_03;
            end #derive ::> InterfaceRequirements::IRQ_GNC_20;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-MECH-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_MECH_01;
        }
        #derivation connection <'LRQ-MECH-02>IRQ-MECH-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MECH::LRQ_MECH_02;
            end #derive ::> InterfaceRequirements::IRQ_MECH_01;
        }
        #derivation connection <'IRQ-ORB-38>IRQ-MECH-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_38;
            end #derive ::> InterfaceRequirements::IRQ_MECH_02;
        }
        #derivation connection <'IRQ-ORB-38>IRQ-MECH-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_38;
            end #derive ::> InterfaceRequirements::IRQ_MECH_03;
        }
        #derivation connection <'IRQ-ORB-38>IRQ-MECH-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_38;
            end #derive ::> InterfaceRequirements::IRQ_MECH_04;
        }
        #derivation connection <'REQ-MECH-05>IRQ-MECH-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> InterfaceRequirements::IRQ_MECH_04;
        }
        #derivation connection <'REQ-MECH-01>IRQ-MECH-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> InterfaceRequirements::IRQ_MECH_05;
        }
        #derivation connection <'REQ-MECH-01>IRQ-MECH-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> InterfaceRequirements::IRQ_MECH_06;
        }
        #derivation connection <'REQ-MECH-05>IRQ-MECH-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> InterfaceRequirements::IRQ_MECH_10;
        }
        #derivation connection <'IRQ-ORB-29>IRQ-MPS-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_29;
            end #derive ::> InterfaceRequirements::IRQ_MPS_03;
        }
        #derivation connection <'LRQ-MPS-05>IRQ-MPS-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_05;
            end #derive ::> InterfaceRequirements::IRQ_MPS_03;
        }
        #derivation connection <'IRQ-ORB-29>IRQ-MPS-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_29;
            end #derive ::> InterfaceRequirements::IRQ_MPS_04;
        }
        #derivation connection <'REQ-MPS-08>IRQ-MPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
            end #derive ::> InterfaceRequirements::IRQ_MPS_04;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-MPS-05'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_MPS_05;
        }
        #derivation connection <'REQ-MPS-04>IRQ-MPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> InterfaceRequirements::IRQ_MPS_05;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-MPS-06'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_MPS_06;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-MPS-07'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_MPS_07;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-MPS-08'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_MPS_08;
        }
        #derivation connection <'LRQ-MPS-01>IRQ-MPS-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_01;
            end #derive ::> InterfaceRequirements::IRQ_MPS_09;
        }
        #derivation connection <'REQ-MPS-07>IRQ-MPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
            end #derive ::> InterfaceRequirements::IRQ_MPS_10;
        }
        #derivation connection <'REQ-MPS-11>IRQ-MPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> InterfaceRequirements::IRQ_MPS_12;
        }
        #derivation connection <'LRQ-MPS-11>IRQ-MPS-13'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_11;
            end #derive ::> InterfaceRequirements::IRQ_MPS_13;
        }
        #derivation connection <'REQ-MPS-11>IRQ-MPS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> InterfaceRequirements::IRQ_MPS_13;
        }
        #derivation connection <'LRQ-MPS-12>IRQ-MPS-14'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_12;
            end #derive ::> InterfaceRequirements::IRQ_MPS_14;
        }
        #derivation connection <'LRQ-MPS-05>IRQ-MPS-15'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_05;
            end #derive ::> InterfaceRequirements::IRQ_MPS_15;
        }
        #derivation connection <'REQ-MPS-10>IRQ-MPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> InterfaceRequirements::IRQ_MPS_15;
        }
        #derivation connection <'LRQ-MPS-25>IRQ-MPS-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_25;
            end #derive ::> InterfaceRequirements::IRQ_MPS_16;
        }
        #derivation connection <'REQ-MPS-12>IRQ-MPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> InterfaceRequirements::IRQ_MPS_16;
        }
        #derivation connection <'REQ-MPS-13>IRQ-MPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> InterfaceRequirements::IRQ_MPS_17;
        }
        #derivation connection <'LRQ-MPS-17>IRQ-MPS-18'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_17;
            end #derive ::> InterfaceRequirements::IRQ_MPS_18;
        }
        #derivation connection <'LRQ-MPS-08>IRQ-MPS-21'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_08;
            end #derive ::> InterfaceRequirements::IRQ_MPS_21;
        }
        #derivation connection <'REQ-MPS-10>IRQ-MPS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> InterfaceRequirements::IRQ_MPS_21;
        }
        #derivation connection <'LRQ-MPS-23>IRQ-MPS-22'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_MPS::LRQ_MPS_23;
            end #derive ::> InterfaceRequirements::IRQ_MPS_22;
        }
        #derivation connection <'REQ-OMS-04>IRQ-OMS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
            end #derive ::> InterfaceRequirements::IRQ_OMS_01;
        }
        #derivation connection <'LRQ-OMS-16>IRQ-OMS-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_16;
            end #derive ::> InterfaceRequirements::IRQ_OMS_02;
        }
        #derivation connection <'REQ-OMS-07>IRQ-OMS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> InterfaceRequirements::IRQ_OMS_03;
        }
        #derivation connection <'REQ-OMS-07>IRQ-OMS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> InterfaceRequirements::IRQ_OMS_04;
        }
        #derivation connection <'LRQ-OMS-12>IRQ-OMS-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_12;
            end #derive ::> InterfaceRequirements::IRQ_OMS_06;
        }
        #derivation connection <'LRQ-OMS-12>IRQ-OMS-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_12;
            end #derive ::> InterfaceRequirements::IRQ_OMS_07;
        }
        #derivation connection <'LRQ-OMS-15>IRQ-OMS-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_15;
            end #derive ::> InterfaceRequirements::IRQ_OMS_09;
        }
        #derivation connection <'IRQ-ORB-05>IRQ-OMS-11'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_05;
            end #derive ::> InterfaceRequirements::IRQ_OMS_11;
        }
        #derivation connection <'LRQ-OMS-27>IRQ-OMS-11'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_27;
            end #derive ::> InterfaceRequirements::IRQ_OMS_11;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-OMS-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_OMS_12;
        }
        #derivation connection <'LRQ-OMS-16>IRQ-OMS-12'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_16;
            end #derive ::> InterfaceRequirements::IRQ_OMS_12;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-OMS-13'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_OMS_13;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-OMS-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_OMS_14;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-OMS-15'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_OMS_15;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-OMS-16'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_OMS_16;
        }
        #derivation connection <'LRQ-OMS-23>IRQ-OMS-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_23;
            end #derive ::> InterfaceRequirements::IRQ_OMS_16;
        }
        #derivation connection <'LRQ-OMS-17>IRQ-OMS-19'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_OMS::LRQ_OMS_17;
            end #derive ::> InterfaceRequirements::IRQ_OMS_19;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-PLS-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_PLS_01;
        }
        #derivation connection <'LRQ-PLS-01>IRQ-PLS-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_01;
            end #derive ::> InterfaceRequirements::IRQ_PLS_01;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-PLS-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_PLS_02;
        }
        #derivation connection <'LRQ-PLS-18>IRQ-PLS-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_18;
            end #derive ::> InterfaceRequirements::IRQ_PLS_02;
        }
        #derivation connection <'IRQ-ORB-47>IRQ-PLS-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_47;
            end #derive ::> InterfaceRequirements::IRQ_PLS_03;
        }
        #derivation connection <'LRQ-PLS-13>IRQ-PLS-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_13;
            end #derive ::> InterfaceRequirements::IRQ_PLS_03;
        }
        #derivation connection <'IRQ-ORB-47>IRQ-PLS-04'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_47;
            end #derive ::> InterfaceRequirements::IRQ_PLS_04;
        }
        #derivation connection <'LRQ-PLS-24>IRQ-PLS-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_24;
            end #derive ::> InterfaceRequirements::IRQ_PLS_04;
        }
        #derivation connection <'IRQ-ORB-47>IRQ-PLS-05'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_47;
            end #derive ::> InterfaceRequirements::IRQ_PLS_05;
        }
        #derivation connection <'REQ-PLS-03>IRQ-PLS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> InterfaceRequirements::IRQ_PLS_06;
        }
        #derivation connection <'LRQ-PLS-13>IRQ-PLS-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_13;
            end #derive ::> InterfaceRequirements::IRQ_PLS_07;
        }
        #derivation connection <'LRQ-PLS-20>IRQ-PLS-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_20;
            end #derive ::> InterfaceRequirements::IRQ_PLS_08;
        }
        #derivation connection <'LRQ-PLS-22>IRQ-PLS-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_PLS::LRQ_PLS_22;
            end #derive ::> InterfaceRequirements::IRQ_PLS_09;
        }
        #derivation connection <'REQ-RCS-01>IRQ-RCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
            end #derive ::> InterfaceRequirements::IRQ_RCS_01;
        }
        #derivation connection <'REQ-RCS-02>IRQ-RCS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_02;
            end #derive ::> InterfaceRequirements::IRQ_RCS_02;
        }
        #derivation connection <'REQ-RCS-06>IRQ-RCS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> InterfaceRequirements::IRQ_RCS_03;
        }
        #derivation connection <'LRQ-RCS-23>IRQ-RCS-03'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_23;
            end #derive ::> InterfaceRequirements::IRQ_RCS_03;
        }
        #derivation connection <'REQ-RCS-06>IRQ-RCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> InterfaceRequirements::IRQ_RCS_04;
        }
        #derivation connection <'LRQ-RCS-12>IRQ-RCS-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_12;
            end #derive ::> InterfaceRequirements::IRQ_RCS_05;
        }
        #derivation connection <'LRQ-RCS-29>IRQ-RCS-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_29;
            end #derive ::> InterfaceRequirements::IRQ_RCS_06;
        }
        #derivation connection <'LRQ-RCS-27>IRQ-RCS-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_27;
            end #derive ::> InterfaceRequirements::IRQ_RCS_06;
        }
        #derivation connection <'LRQ-RCS-05>IRQ-RCS-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_05;
            end #derive ::> InterfaceRequirements::IRQ_RCS_07;
        }
        #derivation connection <'REQ-RCS-07>IRQ-RCS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> InterfaceRequirements::IRQ_RCS_08;
        }
        #derivation connection <'LRQ-RCS-06>IRQ-RCS-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_06;
            end #derive ::> InterfaceRequirements::IRQ_RCS_08;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-RCS-09'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_RCS_09;
        }
        #derivation connection <'LRQ-RCS-19>IRQ-RCS-09'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_19;
            end #derive ::> InterfaceRequirements::IRQ_RCS_09;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-RCS-10'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_RCS_10;
        }
        #derivation connection <'LRQ-RCS-25>IRQ-RCS-10'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_25;
            end #derive ::> InterfaceRequirements::IRQ_RCS_10;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-RCS-11'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_RCS_11;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-RCS-12'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_RCS_12;
        }
        #derivation connection <'REQ-RCS-03>IRQ-RCS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_03;
            end #derive ::> InterfaceRequirements::IRQ_RCS_12;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-RCS-14'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_RCS_14;
        }
        #derivation connection <'IRQ-ORB-41>IRQ-RCS-15'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_41;
            end #derive ::> InterfaceRequirements::IRQ_RCS_15;
        }
        #derivation connection <'LRQ-RCS-16>IRQ-RCS-16'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_16;
            end #derive ::> InterfaceRequirements::IRQ_RCS_16;
        }
        #derivation connection <'LRQ-RCS-16>IRQ-RCS-17'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_RCS::LRQ_RCS_16;
            end #derive ::> InterfaceRequirements::IRQ_RCS_17;
        }
        #derivation connection <'REQ-RCS-04>IRQ-RCS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
            end #derive ::> InterfaceRequirements::IRQ_RCS_20;
        }
        #derivation connection <'IRQ-SYS-02>IRQ-SRB-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_SYS_02;
            end #derive ::> InterfaceRequirements::IRQ_SRB_01;
        }
        #derivation connection <'LRQ-SRB-04>IRQ-SRB-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_04;
            end #derive ::> InterfaceRequirements::IRQ_SRB_01;
        }
        #derivation connection <'IRQ-SYS-02>IRQ-SRB-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_SYS_02;
            end #derive ::> InterfaceRequirements::IRQ_SRB_02;
        }
        #derivation connection <'LRQ-SRB-05>IRQ-SRB-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_05;
            end #derive ::> InterfaceRequirements::IRQ_SRB_02;
        }
        #derivation connection <'IRQ-SYS-10>IRQ-SRB-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_SYS_10;
            end #derive ::> InterfaceRequirements::IRQ_SRB_03;
        }
        #derivation connection <'REQ-SRB-03>IRQ-SRB-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
            end #derive ::> InterfaceRequirements::IRQ_SRB_03;
        }
        #derivation connection <'LRQ-SRB-22>IRQ-SRB-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_22;
            end #derive ::> InterfaceRequirements::IRQ_SRB_04;
        }
        #derivation connection <'REQ-SRB-05>IRQ-SRB-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> InterfaceRequirements::IRQ_SRB_04;
        }
        #derivation connection <'LRQ-SRB-06>IRQ-SRB-05'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_06;
            end #derive ::> InterfaceRequirements::IRQ_SRB_05;
        }
        #derivation connection <'LRQ-SRB-13>IRQ-SRB-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_13;
            end #derive ::> InterfaceRequirements::IRQ_SRB_06;
        }
        #derivation connection <'LRQ-SRB-08>IRQ-SRB-08'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_SRB::LRQ_SRB_08;
            end #derive ::> InterfaceRequirements::IRQ_SRB_08;
        }
        #derivation connection <'IRQ-ORB-36>IRQ-STR-01'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_36;
            end #derive ::> InterfaceRequirements::IRQ_STR_01;
        }
        #derivation connection <'LRQ-STR-13>IRQ-STR-01'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_STR::LRQ_STR_13;
            end #derive ::> InterfaceRequirements::IRQ_STR_01;
        }
        #derivation connection <'IRQ-ORB-36>IRQ-STR-02'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_36;
            end #derive ::> InterfaceRequirements::IRQ_STR_02;
        }
        #derivation connection <'LRQ-STR-03>IRQ-STR-02'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_STR::LRQ_STR_03;
            end #derive ::> InterfaceRequirements::IRQ_STR_02;
        }
        #derivation connection <'IRQ-ORB-37>IRQ-STR-03'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_37;
            end #derive ::> InterfaceRequirements::IRQ_STR_03;
        }
        #derivation connection <'LRQ-STR-08>IRQ-STR-04'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_STR::LRQ_STR_08;
            end #derive ::> InterfaceRequirements::IRQ_STR_04;
        }
        #derivation connection <'LRQ-STR-05>IRQ-STR-06'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_STR::LRQ_STR_05;
            end #derive ::> InterfaceRequirements::IRQ_STR_06;
        }
        #derivation connection <'LRQ-STR-26>IRQ-STR-07'> {
            end #original ::> SSD_RQL_SYS_001::LRQ_STR::LRQ_STR_26;
            end #derive ::> InterfaceRequirements::IRQ_STR_07;
        }
        #derivation connection <'REQ-STR-04>IRQ-STR-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> InterfaceRequirements::IRQ_STR_09;
        }
        #derivation connection <'REQ-STR-08>IRQ-STR-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
            end #derive ::> InterfaceRequirements::IRQ_STR_10;
        }
    }
    // ---- 充足（割付先の IF）
    package Satisfaction {
        satisfy InterfaceRequirements::IRQ_APU_01 by context.sts.orb.apu.IF_APU_01 { doc /* 割付先：IF-APU-01 */ }
        satisfy InterfaceRequirements::IRQ_APU_02 by context.sts.orb.apu.IF_APU_02 { doc /* 割付先：IF-APU-02 */ }
        satisfy InterfaceRequirements::IRQ_APU_03 by context.sts.orb.apu.IF_APU_03 { doc /* 割付先：IF-APU-03 */ }
        satisfy InterfaceRequirements::IRQ_APU_04 by context.sts.orb.apu.IF_APU_04 { doc /* 割付先：IF-APU-04 */ }
        satisfy InterfaceRequirements::IRQ_APU_05 by context.sts.orb.apu.IF_APU_05 { doc /* 割付先：IF-APU-05 */ }
        satisfy InterfaceRequirements::IRQ_APU_06 by context.sts.orb.apu.IF_APU_06 { doc /* 割付先：IF-APU-06 */ }
        satisfy InterfaceRequirements::IRQ_APU_07 by context.sts.orb.apu.IF_APU_07 { doc /* 割付先：IF-APU-07 */ }
        satisfy InterfaceRequirements::IRQ_APU_08 by context.sts.orb.apu.IF_APU_08 { doc /* 割付先：IF-APU-08 */ }
        satisfy InterfaceRequirements::IRQ_APU_09 by context.sts.orb.IF_APU_09 { doc /* 割付先：IF-APU-09 */ }
        satisfy InterfaceRequirements::IRQ_APU_10 by context.sts.orb.IF_APU_10 { doc /* 割付先：IF-APU-10 */ }
        satisfy InterfaceRequirements::IRQ_APU_12 by context.sts.orb.IF_APU_12 { doc /* 割付先：IF-APU-12 */ }
        satisfy InterfaceRequirements::IRQ_APU_13 by context.sts.orb.IF_APU_13 { doc /* 割付先：IF-APU-13 */ }
        satisfy InterfaceRequirements::IRQ_APU_14 by context.sts.orb.IF_APU_14 { doc /* 割付先：IF-APU-14 */ }
        satisfy InterfaceRequirements::IRQ_APU_16 by context.sts.orb.IF_APU_16 { doc /* 割付先：IF-APU-16 */ }
        satisfy InterfaceRequirements::IRQ_APU_17 by context.sts.orb.IF_APU_17 { doc /* 割付先：IF-APU-17 */ }
        satisfy InterfaceRequirements::IRQ_APU_18 by context.sts.orb.IF_APU_18 { doc /* 割付先：IF-APU-18 */ }
        satisfy InterfaceRequirements::IRQ_APU_19 by context.sts.orb.apu.IF_APU_19 { doc /* 割付先：IF-APU-19 */ }
        satisfy InterfaceRequirements::IRQ_APU_20 by context.sts.orb.apu.IF_APU_20 { doc /* 割付先：IF-APU-20 */ }
        satisfy InterfaceRequirements::IRQ_APU_21 by context.sts.orb.apu.IF_APU_21 { doc /* 割付先：IF-APU-21 */ }
        satisfy InterfaceRequirements::IRQ_APU_22 by context.IF_APU_22 { doc /* 割付先：IF-APU-22 */ }
        satisfy InterfaceRequirements::IRQ_APU_23 by context.IF_APU_23 { doc /* 割付先：IF-APU-23 */ }
        satisfy InterfaceRequirements::IRQ_APU_24 by context.sts.orb.apu.IF_APU_24 { doc /* 割付先：IF-APU-24 */ }
        satisfy InterfaceRequirements::IRQ_APU_25 by context.sts.orb.IF_APU_25 { doc /* 割付先：IF-APU-25 */ }
        satisfy InterfaceRequirements::IRQ_CREW_01 by context.sts.orb.IF_CREW_01 { doc /* 割付先：IF-CREW-01 */ }
        satisfy InterfaceRequirements::IRQ_CREW_02 by context.sts.orb.IF_CREW_02 { doc /* 割付先：IF-CREW-02 */ }
        satisfy InterfaceRequirements::IRQ_CREW_03 by context.sts.orb.IF_CREW_03 { doc /* 割付先：IF-CREW-03 */ }
        satisfy InterfaceRequirements::IRQ_CREW_04 by context.sts.orb.IF_CREW_04 { doc /* 割付先：IF-CREW-04 */ }
        satisfy InterfaceRequirements::IRQ_CREW_05 by context.sts.orb.IF_CREW_05 { doc /* 割付先：IF-CREW-05 */ }
        satisfy InterfaceRequirements::IRQ_CREW_06 by context.sts.orb.IF_CREW_06 { doc /* 割付先：IF-CREW-06 */ }
        satisfy InterfaceRequirements::IRQ_CREW_07 by context.sts.orb.IF_CREW_07 { doc /* 割付先：IF-CREW-07 */ }
        satisfy InterfaceRequirements::IRQ_CREW_08 by context.sts.orb.crew.IF_CREW_08 { doc /* 割付先：IF-CREW-08 */ }
        satisfy InterfaceRequirements::IRQ_CREW_09 by context.sts.orb.crew.IF_CREW_09 { doc /* 割付先：IF-CREW-09 */ }
        satisfy InterfaceRequirements::IRQ_CREW_10 by context.sts.orb.crew.IF_CREW_10 { doc /* 割付先：IF-CREW-10 */ }
        satisfy InterfaceRequirements::IRQ_CREW_11 by context.sts.orb.crew.IF_CREW_11 { doc /* 割付先：IF-CREW-11 */ }
        satisfy InterfaceRequirements::IRQ_CT_01 by context.IF_CT_01 { doc /* 割付先：IF-CT-01 */ }
        satisfy InterfaceRequirements::IRQ_CT_02 by context.IF_CT_02 { doc /* 割付先：IF-CT-02 */ }
        satisfy InterfaceRequirements::IRQ_CT_03 by context.IF_CT_03 { doc /* 割付先：IF-CT-03 */ }
        satisfy InterfaceRequirements::IRQ_CT_04 by context.IF_CT_04 { doc /* 割付先：IF-CT-04 */ }
        satisfy InterfaceRequirements::IRQ_CT_05 by context.sts.orb.IF_CT_05 { doc /* 割付先：IF-CT-05 */ }
        satisfy InterfaceRequirements::IRQ_CT_06 by context.sts.orb.IF_CT_06 { doc /* 割付先：IF-CT-06 */ }
        satisfy InterfaceRequirements::IRQ_CT_07 by context.sts.orb.IF_CT_07 { doc /* 割付先：IF-CT-07 */ }
        satisfy InterfaceRequirements::IRQ_CT_08 by context.sts.orb.IF_CT_08 { doc /* 割付先：IF-CT-08 */ }
        satisfy InterfaceRequirements::IRQ_CT_10 by context.sts.orb.IF_CT_10 { doc /* 割付先：IF-CT-10 */ }
        satisfy InterfaceRequirements::IRQ_CT_12 by context.sts.orb.IF_CT_12 { doc /* 割付先：IF-CT-12 */ }
        satisfy InterfaceRequirements::IRQ_CT_13 by context.sts.orb.IF_CT_13 { doc /* 割付先：IF-CT-13 */ }
        satisfy InterfaceRequirements::IRQ_CT_14 by context.sts.orb.ct.IF_CT_14 { doc /* 割付先：IF-CT-14 */ }
        satisfy InterfaceRequirements::IRQ_CT_15 by context.sts.orb.ct.IF_CT_15 { doc /* 割付先：IF-CT-15 */ }
        satisfy InterfaceRequirements::IRQ_CT_16 by context.sts.orb.ct.IF_CT_16 { doc /* 割付先：IF-CT-16 */ }
        satisfy InterfaceRequirements::IRQ_CT_17 by context.sts.orb.ct.IF_CT_17 { doc /* 割付先：IF-CT-17 */ }
        satisfy InterfaceRequirements::IRQ_CT_18 by context.sts.orb.ct.IF_CT_18 { doc /* 割付先：IF-CT-18 */ }
        satisfy InterfaceRequirements::IRQ_CT_19 by context.sts.orb.ct.IF_CT_19 { doc /* 割付先：IF-CT-19 */ }
        satisfy InterfaceRequirements::IRQ_CT_20 by context.sts.orb.ct.IF_CT_20 { doc /* 割付先：IF-CT-20 */ }
        satisfy InterfaceRequirements::IRQ_CT_21 by context.sts.orb.IF_CT_21 { doc /* 割付先：IF-CT-21 */ }
        satisfy InterfaceRequirements::IRQ_CT_22 by context.sts.orb.IF_CT_22 { doc /* 割付先：IF-CT-22 */ }
        satisfy InterfaceRequirements::IRQ_CT_23 by context.sts.orb.IF_CT_23 { doc /* 割付先：IF-CT-23 */ }
        satisfy InterfaceRequirements::IRQ_CT_24 by context.sts.orb.IF_CT_24 { doc /* 割付先：IF-CT-24 */ }
        satisfy InterfaceRequirements::IRQ_CT_25 by context.sts.orb.IF_CT_25 { doc /* 割付先：IF-CT-25 */ }
        satisfy InterfaceRequirements::IRQ_CW_02 by context.sts.orb.IF_CW_02 { doc /* 割付先：IF-CW-02 */ }
        satisfy InterfaceRequirements::IRQ_CW_03 by context.sts.orb.IF_CW_03 { doc /* 割付先：IF-CW-03 */ }
        satisfy InterfaceRequirements::IRQ_CW_04 by context.sts.orb.cw.IF_CW_04 { doc /* 割付先：IF-CW-04 */ }
        satisfy InterfaceRequirements::IRQ_CW_05 by context.sts.orb.cw.IF_CW_05 { doc /* 割付先：IF-CW-05 */ }
        satisfy InterfaceRequirements::IRQ_CW_06 by context.sts.orb.cw.IF_CW_06 { doc /* 割付先：IF-CW-06 */ }
        satisfy InterfaceRequirements::IRQ_CW_07 by context.sts.orb.cw.IF_CW_07 { doc /* 割付先：IF-CW-07 */ }
        satisfy InterfaceRequirements::IRQ_CW_08 by context.sts.orb.cw.IF_CW_08 { doc /* 割付先：IF-CW-08 */ }
        satisfy InterfaceRequirements::IRQ_CW_09 by context.sts.orb.cw.IF_CW_09 { doc /* 割付先：IF-CW-09 */ }
        satisfy InterfaceRequirements::IRQ_DPS_01 by context.sts.orb.dps.IF_DPS_01 { doc /* 割付先：IF-DPS-01 */ }
        satisfy InterfaceRequirements::IRQ_DPS_02 by context.sts.orb.IF_DPS_02 { doc /* 割付先：IF-DPS-02 */ }
        satisfy InterfaceRequirements::IRQ_DPS_03 by context.sts.orb.IF_DPS_03 { doc /* 割付先：IF-DPS-03 */ }
        satisfy InterfaceRequirements::IRQ_DPS_04 by context.sts.orb.IF_DPS_04 { doc /* 割付先：IF-DPS-04 */ }
        satisfy InterfaceRequirements::IRQ_DPS_05 by context.sts.orb.IF_DPS_05 { doc /* 割付先：IF-DPS-05 */ }
        satisfy InterfaceRequirements::IRQ_DPS_06 by context.IF_DPS_06 { doc /* 割付先：IF-DPS-06 */ }
        satisfy InterfaceRequirements::IRQ_DPS_12 by context.sts.orb.IF_DPS_12 { doc /* 割付先：IF-DPS-12 */ }
        satisfy InterfaceRequirements::IRQ_DPS_13 by context.sts.orb.IF_DPS_13 { doc /* 割付先：IF-DPS-13 */ }
        satisfy InterfaceRequirements::IRQ_DPS_14 by context.sts.orb.dps.IF_DPS_14 { doc /* 割付先：IF-DPS-14 */ }
        satisfy InterfaceRequirements::IRQ_DPS_15 by context.sts.orb.dps.IF_DPS_15 { doc /* 割付先：IF-DPS-15 */ }
        satisfy InterfaceRequirements::IRQ_DPS_16 by context.sts.orb.dps.IF_DPS_16 { doc /* 割付先：IF-DPS-16 */ }
        satisfy InterfaceRequirements::IRQ_DPS_17 by context.sts.orb.dps.IF_DPS_17 { doc /* 割付先：IF-DPS-17 */ }
        satisfy InterfaceRequirements::IRQ_DPS_18 by context.sts.orb.dps.IF_DPS_18 { doc /* 割付先：IF-DPS-18 */ }
        satisfy InterfaceRequirements::IRQ_DPS_19 by context.sts.orb.dps.IF_DPS_19 { doc /* 割付先：IF-DPS-19 */ }
        satisfy InterfaceRequirements::IRQ_DPS_20 by context.sts.orb.dps.IF_DPS_20 { doc /* 割付先：IF-DPS-20 */ }
        satisfy InterfaceRequirements::IRQ_DPS_21 by context.sts.orb.dps.IF_DPS_21 { doc /* 割付先：IF-DPS-21 */ }
        satisfy InterfaceRequirements::IRQ_DPS_22 by context.sts.orb.IF_DPS_22 { doc /* 割付先：IF-DPS-22 */ }
        satisfy InterfaceRequirements::IRQ_EPS_01 by context.IF_EPS_01 { doc /* 割付先：IF-EPS-01 */ }
        satisfy InterfaceRequirements::IRQ_EPS_02 by context.IF_EPS_02 { doc /* 割付先：IF-EPS-02 */ }
        satisfy InterfaceRequirements::IRQ_EPS_03 by context.sts.orb.eps.IF_EPS_03 { doc /* 割付先：IF-EPS-03 */ }
        satisfy InterfaceRequirements::IRQ_EPS_04 by context.sts.orb.IF_EPS_04 { doc /* 割付先：IF-EPS-04 */ }
        satisfy InterfaceRequirements::IRQ_EPS_05 by context.sts.orb.eps.IF_EPS_05 { doc /* 割付先：IF-EPS-05 */ }
        satisfy InterfaceRequirements::IRQ_EPS_06 by context.sts.orb.IF_EPS_06 { doc /* 割付先：IF-EPS-06 */ }
        satisfy InterfaceRequirements::IRQ_EPS_07 by context.sts.orb.IF_EPS_07 { doc /* 割付先：IF-EPS-07 */ }
        satisfy InterfaceRequirements::IRQ_EPS_08 by context.IF_EPS_08 { doc /* 割付先：IF-EPS-08 */ }
        satisfy InterfaceRequirements::IRQ_EPS_09 by context.sts.orb.IF_EPS_09 { doc /* 割付先：IF-EPS-09 */ }
        satisfy InterfaceRequirements::IRQ_EPS_10 by context.sts.orb.eps.IF_EPS_10 { doc /* 割付先：IF-EPS-10 */ }
        satisfy InterfaceRequirements::IRQ_EPS_11 by context.sts.IF_EPS_11 { doc /* 割付先：IF-EPS-11 */ }
        satisfy InterfaceRequirements::IRQ_EPS_13 by context.sts.orb.eps.IF_EPS_13 { doc /* 割付先：IF-EPS-13 */ }
        satisfy InterfaceRequirements::IRQ_EPS_14 by context.sts.orb.IF_EPS_14 { doc /* 割付先：IF-EPS-14 */ }
        satisfy InterfaceRequirements::IRQ_EPS_15 by context.IF_EPS_15 { doc /* 割付先：IF-EPS-15 */ }
        satisfy InterfaceRequirements::IRQ_EPS_16 by context.sts.orb.eps.IF_EPS_16 { doc /* 割付先：IF-EPS-16 */ }
        satisfy InterfaceRequirements::IRQ_ET_01 by context.sts.et.IF_ET_01 { doc /* 割付先：IF-ET-01 */ }
        satisfy InterfaceRequirements::IRQ_ET_02 by context.sts.et.IF_ET_02 { doc /* 割付先：IF-ET-02 */ }
        satisfy InterfaceRequirements::IRQ_ET_03 by context.sts.et.IF_ET_03 { doc /* 割付先：IF-ET-03 */ }
        satisfy InterfaceRequirements::IRQ_ET_04 by context.sts.et.IF_ET_04 { doc /* 割付先：IF-ET-04 */ }
        satisfy InterfaceRequirements::IRQ_ET_05 by context.sts.et.IF_ET_05 { doc /* 割付先：IF-ET-05 */ }
        satisfy InterfaceRequirements::IRQ_ET_06 by context.sts.et.IF_ET_06 { doc /* 割付先：IF-ET-06 */ }
        satisfy InterfaceRequirements::IRQ_ET_07 by context.sts.et.IF_ET_07 { doc /* 割付先：IF-ET-07 */ }
        satisfy InterfaceRequirements::IRQ_EVA_01 by context.sts.orb.eva.IF_EVA_01 { doc /* 割付先：IF-EVA-01 */ }
        satisfy InterfaceRequirements::IRQ_EVA_02 by context.sts.orb.eva.IF_EVA_02 { doc /* 割付先：IF-EVA-02 */ }
        satisfy InterfaceRequirements::IRQ_EVA_03 by context.sts.orb.eva.IF_EVA_03 { doc /* 割付先：IF-EVA-03 */ }
        satisfy InterfaceRequirements::IRQ_EVA_04 by context.sts.orb.IF_EVA_04 { doc /* 割付先：IF-EVA-04 */ }
        satisfy InterfaceRequirements::IRQ_EVA_05 by context.sts.orb.eva.IF_EVA_05 { doc /* 割付先：IF-EVA-05 */ }
        satisfy InterfaceRequirements::IRQ_EVA_06 by context.sts.orb.eva.IF_EVA_06 { doc /* 割付先：IF-EVA-06 */ }
        satisfy InterfaceRequirements::IRQ_EVA_07 by context.sts.orb.eva.IF_EVA_07 { doc /* 割付先：IF-EVA-07 */ }
        satisfy InterfaceRequirements::IRQ_EVA_08 by context.sts.orb.eva.IF_EVA_08 { doc /* 割付先：IF-EVA-08 */ }
        satisfy InterfaceRequirements::IRQ_EVA_09 by context.sts.orb.eva.IF_EVA_09 { doc /* 割付先：IF-EVA-09 */ }
        satisfy InterfaceRequirements::IRQ_EVA_10 by context.sts.orb.IF_EVA_10 { doc /* 割付先：IF-EVA-10 */ }
        satisfy InterfaceRequirements::IRQ_EVA_13 by context.sts.orb.eva.IF_EVA_13 { doc /* 割付先：IF-EVA-13 */ }
        satisfy InterfaceRequirements::IRQ_EVA_14 by context.sts.orb.IF_EVA_14 { doc /* 割付先：IF-EVA-14 */ }
        satisfy InterfaceRequirements::IRQ_GNC_01 by context.sts.orb.gnc.IF_GNC_01 { doc /* 割付先：IF-GNC-01 */ }
        satisfy InterfaceRequirements::IRQ_GNC_02 by context.sts.orb.gnc.IF_GNC_02 { doc /* 割付先：IF-GNC-02 */ }
        satisfy InterfaceRequirements::IRQ_GNC_03 by context.sts.orb.gnc.IF_GNC_03 { doc /* 割付先：IF-GNC-03 */ }
        satisfy InterfaceRequirements::IRQ_GNC_04 by context.sts.orb.gnc.IF_GNC_04 { doc /* 割付先：IF-GNC-04 */ }
        satisfy InterfaceRequirements::IRQ_GNC_05 by context.sts.orb.gnc.IF_GNC_05 { doc /* 割付先：IF-GNC-05 */ }
        satisfy InterfaceRequirements::IRQ_GNC_06 by context.sts.orb.gnc.IF_GNC_06 { doc /* 割付先：IF-GNC-06 */ }
        satisfy InterfaceRequirements::IRQ_GNC_07 by context.sts.orb.gnc.IF_GNC_07 { doc /* 割付先：IF-GNC-07 */ }
        satisfy InterfaceRequirements::IRQ_GNC_08 by context.sts.orb.gnc.IF_GNC_08 { doc /* 割付先：IF-GNC-08 */ }
        satisfy InterfaceRequirements::IRQ_GNC_09 by context.sts.orb.gnc.IF_GNC_09 { doc /* 割付先：IF-GNC-09 */ }
        satisfy InterfaceRequirements::IRQ_GNC_10 by context.sts.orb.gnc.IF_GNC_10 { doc /* 割付先：IF-GNC-10 */ }
        satisfy InterfaceRequirements::IRQ_GNC_11 by context.sts.orb.IF_GNC_11 { doc /* 割付先：IF-GNC-11 */ }
        satisfy InterfaceRequirements::IRQ_GNC_12 by context.sts.orb.IF_GNC_12 { doc /* 割付先：IF-GNC-12 */ }
        satisfy InterfaceRequirements::IRQ_GNC_13 by context.IF_GNC_13 { doc /* 割付先：IF-GNC-13 */ }
        satisfy InterfaceRequirements::IRQ_GNC_14 by context.sts.orb.IF_GNC_14 { doc /* 割付先：IF-GNC-14 */ }
        satisfy InterfaceRequirements::IRQ_GNC_15 by context.sts.orb.IF_GNC_15 { doc /* 割付先：IF-GNC-15 */ }
        satisfy InterfaceRequirements::IRQ_GNC_16 by context.sts.orb.IF_GNC_16 { doc /* 割付先：IF-GNC-16 */ }
        satisfy InterfaceRequirements::IRQ_GNC_17 by context.sts.orb.IF_GNC_17 { doc /* 割付先：IF-GNC-17 */ }
        satisfy InterfaceRequirements::IRQ_GNC_19 by context.sts.IF_GNC_19 { doc /* 割付先：IF-GNC-19 */ }
        satisfy InterfaceRequirements::IRQ_GNC_20 by context.sts.orb.IF_GNC_20 { doc /* 割付先：IF-GNC-20 */ }
        satisfy InterfaceRequirements::IRQ_MECH_01 by context.sts.orb.IF_MECH_01 { doc /* 割付先：IF-MECH-01 */ }
        satisfy InterfaceRequirements::IRQ_MECH_02 by context.sts.orb.IF_MECH_02 { doc /* 割付先：IF-MECH-02 */ }
        satisfy InterfaceRequirements::IRQ_MECH_03 by context.sts.orb.IF_MECH_03 { doc /* 割付先：IF-MECH-03 */ }
        satisfy InterfaceRequirements::IRQ_MECH_04 by context.sts.orb.IF_MECH_04 { doc /* 割付先：IF-MECH-04 */ }
        satisfy InterfaceRequirements::IRQ_MECH_05 by context.sts.orb.mech.IF_MECH_05 { doc /* 割付先：IF-MECH-05 */ }
        satisfy InterfaceRequirements::IRQ_MECH_06 by context.sts.orb.mech.IF_MECH_06 { doc /* 割付先：IF-MECH-06 */ }
        satisfy InterfaceRequirements::IRQ_MECH_07 by context.sts.orb.mech.IF_MECH_07 { doc /* 割付先：IF-MECH-07 */ }
        satisfy InterfaceRequirements::IRQ_MECH_08 by context.sts.orb.mech.IF_MECH_08 { doc /* 割付先：IF-MECH-08 */ }
        satisfy InterfaceRequirements::IRQ_MECH_09 by context.sts.orb.mech.IF_MECH_09 { doc /* 割付先：IF-MECH-09 */ }
        satisfy InterfaceRequirements::IRQ_MECH_10 by context.sts.orb.mech.IF_MECH_10 { doc /* 割付先：IF-MECH-10 */ }
        satisfy InterfaceRequirements::IRQ_MPS_03 by context.IF_MPS_03 { doc /* 割付先：IF-MPS-03 */ }
        satisfy InterfaceRequirements::IRQ_MPS_04 by context.IF_MPS_04 { doc /* 割付先：IF-MPS-04 */ }
        satisfy InterfaceRequirements::IRQ_MPS_05 by context.sts.orb.IF_MPS_05 { doc /* 割付先：IF-MPS-05 */ }
        satisfy InterfaceRequirements::IRQ_MPS_06 by context.sts.orb.IF_MPS_06 { doc /* 割付先：IF-MPS-06 */ }
        satisfy InterfaceRequirements::IRQ_MPS_07 by context.sts.orb.IF_MPS_07 { doc /* 割付先：IF-MPS-07 */ }
        satisfy InterfaceRequirements::IRQ_MPS_08 by context.sts.orb.IF_MPS_08 { doc /* 割付先：IF-MPS-08 */ }
        satisfy InterfaceRequirements::IRQ_MPS_09 by context.sts.orb.mps.IF_MPS_09 { doc /* 割付先：IF-MPS-09 */ }
        satisfy InterfaceRequirements::IRQ_MPS_10 by context.sts.orb.mps.IF_MPS_10 { doc /* 割付先：IF-MPS-10 */ }
        satisfy InterfaceRequirements::IRQ_MPS_11 by context.sts.orb.mps.IF_MPS_11 { doc /* 割付先：IF-MPS-11 */ }
        satisfy InterfaceRequirements::IRQ_MPS_12 by context.sts.orb.mps.IF_MPS_12 { doc /* 割付先：IF-MPS-12 */ }
        satisfy InterfaceRequirements::IRQ_MPS_13 by context.sts.orb.mps.IF_MPS_13 { doc /* 割付先：IF-MPS-13 */ }
        satisfy InterfaceRequirements::IRQ_MPS_14 by context.sts.orb.mps.IF_MPS_14 { doc /* 割付先：IF-MPS-14 */ }
        satisfy InterfaceRequirements::IRQ_MPS_15 by context.sts.orb.mps.IF_MPS_15 { doc /* 割付先：IF-MPS-15 */ }
        satisfy InterfaceRequirements::IRQ_MPS_16 by context.sts.orb.mps.IF_MPS_16 { doc /* 割付先：IF-MPS-16 */ }
        satisfy InterfaceRequirements::IRQ_MPS_17 by context.sts.orb.mps.IF_MPS_17 { doc /* 割付先：IF-MPS-17 */ }
        satisfy InterfaceRequirements::IRQ_MPS_18 by context.sts.orb.mps.IF_MPS_18 { doc /* 割付先：IF-MPS-18 */ }
        satisfy InterfaceRequirements::IRQ_MPS_19 by context.sts.orb.mps.IF_MPS_19 { doc /* 割付先：IF-MPS-19 */ }
        satisfy InterfaceRequirements::IRQ_MPS_20 by context.sts.orb.mps.IF_MPS_20 { doc /* 割付先：IF-MPS-20 */ }
        satisfy InterfaceRequirements::IRQ_MPS_21 by context.IF_MPS_21 { doc /* 割付先：IF-MPS-21 */ }
        satisfy InterfaceRequirements::IRQ_MPS_22 by context.sts.orb.IF_MPS_22 { doc /* 割付先：IF-MPS-22 */ }
        satisfy InterfaceRequirements::IRQ_OMS_01 by context.sts.orb.oms.IF_OMS_01 { doc /* 割付先：IF-OMS-01 */ }
        satisfy InterfaceRequirements::IRQ_OMS_02 by context.sts.orb.oms.IF_OMS_02 { doc /* 割付先：IF-OMS-02 */ }
        satisfy InterfaceRequirements::IRQ_OMS_03 by context.sts.orb.oms.IF_OMS_03 { doc /* 割付先：IF-OMS-03 */ }
        satisfy InterfaceRequirements::IRQ_OMS_04 by context.sts.orb.oms.IF_OMS_04 { doc /* 割付先：IF-OMS-04 */ }
        satisfy InterfaceRequirements::IRQ_OMS_05 by context.sts.orb.oms.IF_OMS_05 { doc /* 割付先：IF-OMS-05 */ }
        satisfy InterfaceRequirements::IRQ_OMS_06 by context.sts.orb.oms.IF_OMS_06 { doc /* 割付先：IF-OMS-06 */ }
        satisfy InterfaceRequirements::IRQ_OMS_07 by context.sts.orb.oms.IF_OMS_07 { doc /* 割付先：IF-OMS-07 */ }
        satisfy InterfaceRequirements::IRQ_OMS_08 by context.sts.orb.oms.IF_OMS_08 { doc /* 割付先：IF-OMS-08 */ }
        satisfy InterfaceRequirements::IRQ_OMS_09 by context.sts.orb.oms.IF_OMS_09 { doc /* 割付先：IF-OMS-09 */ }
        satisfy InterfaceRequirements::IRQ_OMS_10 by context.sts.orb.oms.IF_OMS_10 { doc /* 割付先：IF-OMS-10 */ }
        satisfy InterfaceRequirements::IRQ_OMS_11 by context.sts.orb.IF_OMS_11 { doc /* 割付先：IF-OMS-11 */ }
        satisfy InterfaceRequirements::IRQ_OMS_12 by context.sts.orb.IF_OMS_12 { doc /* 割付先：IF-OMS-12 */ }
        satisfy InterfaceRequirements::IRQ_OMS_13 by context.sts.orb.IF_OMS_13 { doc /* 割付先：IF-OMS-13 */ }
        satisfy InterfaceRequirements::IRQ_OMS_14 by context.sts.orb.IF_OMS_14 { doc /* 割付先：IF-OMS-14 */ }
        satisfy InterfaceRequirements::IRQ_OMS_15 by context.sts.orb.IF_OMS_15 { doc /* 割付先：IF-OMS-15 */ }
        satisfy InterfaceRequirements::IRQ_OMS_16 by context.sts.orb.IF_OMS_16 { doc /* 割付先：IF-OMS-16 */ }
        satisfy InterfaceRequirements::IRQ_OMS_17 by context.sts.orb.IF_OMS_17 { doc /* 割付先：IF-OMS-17 */ }
        satisfy InterfaceRequirements::IRQ_OMS_18 by context.sts.orb.IF_OMS_18 { doc /* 割付先：IF-OMS-18 */ }
        satisfy InterfaceRequirements::IRQ_OMS_19 by context.sts.orb.IF_OMS_19 { doc /* 割付先：IF-OMS-19 */ }
        satisfy InterfaceRequirements::IRQ_PLS_01 by context.sts.orb.IF_PLS_01 { doc /* 割付先：IF-PLS-01 */ }
        satisfy InterfaceRequirements::IRQ_PLS_02 by context.sts.orb.IF_PLS_02 { doc /* 割付先：IF-PLS-02 */ }
        satisfy InterfaceRequirements::IRQ_PLS_03 by context.sts.orb.IF_PLS_03 { doc /* 割付先：IF-PLS-03 */ }
        satisfy InterfaceRequirements::IRQ_PLS_04 by context.sts.orb.IF_PLS_04 { doc /* 割付先：IF-PLS-04 */ }
        satisfy InterfaceRequirements::IRQ_PLS_05 by context.sts.orb.IF_PLS_05 { doc /* 割付先：IF-PLS-05 */ }
        satisfy InterfaceRequirements::IRQ_PLS_06 by context.sts.orb.pls.IF_PLS_06 { doc /* 割付先：IF-PLS-06 */ }
        satisfy InterfaceRequirements::IRQ_PLS_07 by context.sts.orb.pls.IF_PLS_07 { doc /* 割付先：IF-PLS-07 */ }
        satisfy InterfaceRequirements::IRQ_PLS_08 by context.sts.orb.pls.IF_PLS_08 { doc /* 割付先：IF-PLS-08 */ }
        satisfy InterfaceRequirements::IRQ_PLS_09 by context.sts.orb.pls.IF_PLS_09 { doc /* 割付先：IF-PLS-09 */ }
        satisfy InterfaceRequirements::IRQ_RCS_01 by context.sts.orb.rcs.IF_RCS_01 { doc /* 割付先：IF-RCS-01 */ }
        satisfy InterfaceRequirements::IRQ_RCS_02 by context.sts.orb.rcs.IF_RCS_02 { doc /* 割付先：IF-RCS-02 */ }
        satisfy InterfaceRequirements::IRQ_RCS_03 by context.sts.orb.rcs.IF_RCS_03 { doc /* 割付先：IF-RCS-03 */ }
        satisfy InterfaceRequirements::IRQ_RCS_04 by context.sts.orb.rcs.IF_RCS_04 { doc /* 割付先：IF-RCS-04 */ }
        satisfy InterfaceRequirements::IRQ_RCS_05 by context.sts.orb.rcs.IF_RCS_05 { doc /* 割付先：IF-RCS-05 */ }
        satisfy InterfaceRequirements::IRQ_RCS_06 by context.sts.orb.rcs.IF_RCS_06 { doc /* 割付先：IF-RCS-06 */ }
        satisfy InterfaceRequirements::IRQ_RCS_07 by context.sts.orb.rcs.IF_RCS_07 { doc /* 割付先：IF-RCS-07 */ }
        satisfy InterfaceRequirements::IRQ_RCS_08 by context.sts.orb.rcs.IF_RCS_08 { doc /* 割付先：IF-RCS-08 */ }
        satisfy InterfaceRequirements::IRQ_RCS_09 by context.sts.orb.IF_RCS_09 { doc /* 割付先：IF-RCS-09 */ }
        satisfy InterfaceRequirements::IRQ_RCS_10 by context.sts.orb.IF_RCS_10 { doc /* 割付先：IF-RCS-10 */ }
        satisfy InterfaceRequirements::IRQ_RCS_11 by context.sts.orb.IF_RCS_11 { doc /* 割付先：IF-RCS-11 */ }
        satisfy InterfaceRequirements::IRQ_RCS_12 by context.sts.orb.IF_RCS_12 { doc /* 割付先：IF-RCS-12 */ }
        satisfy InterfaceRequirements::IRQ_RCS_14 by context.sts.orb.IF_RCS_14 { doc /* 割付先：IF-RCS-14 */ }
        satisfy InterfaceRequirements::IRQ_RCS_15 by context.sts.orb.IF_RCS_15 { doc /* 割付先：IF-RCS-15 */ }
        satisfy InterfaceRequirements::IRQ_RCS_16 by context.sts.orb.rcs.IF_RCS_16 { doc /* 割付先：IF-RCS-16 */ }
        satisfy InterfaceRequirements::IRQ_RCS_17 by context.sts.orb.rcs.IF_RCS_17 { doc /* 割付先：IF-RCS-17 */ }
        satisfy InterfaceRequirements::IRQ_RCS_18 by context.sts.orb.rcs.IF_RCS_18 { doc /* 割付先：IF-RCS-18 */ }
        satisfy InterfaceRequirements::IRQ_RCS_19 by context.sts.orb.rcs.IF_RCS_19 { doc /* 割付先：IF-RCS-19 */ }
        satisfy InterfaceRequirements::IRQ_RCS_20 by context.sts.orb.IF_RCS_20 { doc /* 割付先：IF-RCS-20 */ }
        satisfy InterfaceRequirements::IRQ_SRB_01 by context.sts.IF_SRB_01 { doc /* 割付先：IF-SRB-01 */ }
        satisfy InterfaceRequirements::IRQ_SRB_02 by context.sts.IF_SRB_02 { doc /* 割付先：IF-SRB-02 */ }
        satisfy InterfaceRequirements::IRQ_SRB_03 by context.IF_SRB_03 { doc /* 割付先：IF-SRB-03 */ }
        satisfy InterfaceRequirements::IRQ_SRB_04 by context.sts.srb.IF_SRB_04 { doc /* 割付先：IF-SRB-04 */ }
        satisfy InterfaceRequirements::IRQ_SRB_05 by context.sts.srb.IF_SRB_05 { doc /* 割付先：IF-SRB-05 */ }
        satisfy InterfaceRequirements::IRQ_SRB_06 by context.sts.srb.IF_SRB_06 { doc /* 割付先：IF-SRB-06 */ }
        satisfy InterfaceRequirements::IRQ_SRB_07 by context.sts.srb.IF_SRB_07 { doc /* 割付先：IF-SRB-07 */ }
        satisfy InterfaceRequirements::IRQ_SRB_08 by context.sts.srb.IF_SRB_08 { doc /* 割付先：IF-SRB-08 */ }
        satisfy InterfaceRequirements::IRQ_STR_01 by context.sts.IF_STR_01 { doc /* 割付先：IF-STR-01 */ }
        satisfy InterfaceRequirements::IRQ_STR_02 by context.sts.IF_STR_02 { doc /* 割付先：IF-STR-02 */ }
        satisfy InterfaceRequirements::IRQ_STR_03 by context.sts.orb.IF_STR_03 { doc /* 割付先：IF-STR-03 */ }
        satisfy InterfaceRequirements::IRQ_STR_04 by context.sts.orb.str.IF_STR_04 { doc /* 割付先：IF-STR-04 */ }
        satisfy InterfaceRequirements::IRQ_STR_05 by context.sts.orb.str.IF_STR_05 { doc /* 割付先：IF-STR-05 */ }
        satisfy InterfaceRequirements::IRQ_STR_06 by context.sts.orb.str.IF_STR_06 { doc /* 割付先：IF-STR-06 */ }
        satisfy InterfaceRequirements::IRQ_STR_07 by context.sts.orb.str.IF_STR_07 { doc /* 割付先：IF-STR-07 */ }
        satisfy InterfaceRequirements::IRQ_STR_08 by context.sts.orb.str.IF_STR_08 { doc /* 割付先：IF-STR-08 */ }
        satisfy InterfaceRequirements::IRQ_STR_09 by context.sts.orb.str.IF_STR_09 { doc /* 割付先：IF-STR-09 */ }
        satisfy InterfaceRequirements::IRQ_STR_10 by context.sts.orb.str.IF_STR_10 { doc /* 割付先：IF-STR-10 */ }
    }
    // ---- 検証ケース
    package Verification {
        verification def <'VC-IRQ-APU-01'> VC_IRQ_APU_01 {
            doc /* IRQ-APU-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-02'> VC_IRQ_APU_02 {
            doc /* IRQ-APU-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-03'> VC_IRQ_APU_03 {
            doc /* IRQ-APU-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-04'> VC_IRQ_APU_04 {
            doc /* IRQ-APU-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-05'> VC_IRQ_APU_05 {
            doc /* IRQ-APU-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-06'> VC_IRQ_APU_06 {
            doc /* IRQ-APU-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-07'> VC_IRQ_APU_07 {
            doc /* IRQ-APU-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-08'> VC_IRQ_APU_08 {
            doc /* IRQ-APU-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-09'> VC_IRQ_APU_09 {
            doc /* IRQ-APU-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-10'> VC_IRQ_APU_10 {
            doc /* IRQ-APU-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-12'> VC_IRQ_APU_12 {
            doc /* IRQ-APU-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-13'> VC_IRQ_APU_13 {
            doc /* IRQ-APU-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-14'> VC_IRQ_APU_14 {
            doc /* IRQ-APU-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-16'> VC_IRQ_APU_16 {
            doc /* IRQ-APU-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-17'> VC_IRQ_APU_17 {
            doc /* IRQ-APU-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-18'> VC_IRQ_APU_18 {
            doc /* IRQ-APU-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-19'> VC_IRQ_APU_19 {
            doc /* IRQ-APU-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-20'> VC_IRQ_APU_20 {
            doc /* IRQ-APU-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-21'> VC_IRQ_APU_21 {
            doc /* IRQ-APU-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-22'> VC_IRQ_APU_22 {
            doc /* IRQ-APU-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-23'> VC_IRQ_APU_23 {
            doc /* IRQ-APU-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-24'> VC_IRQ_APU_24 {
            doc /* IRQ-APU-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-APU-25'> VC_IRQ_APU_25 {
            doc /* IRQ-APU-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_APU_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-01'> VC_IRQ_CREW_01 {
            doc /* IRQ-CREW-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-02'> VC_IRQ_CREW_02 {
            doc /* IRQ-CREW-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-03'> VC_IRQ_CREW_03 {
            doc /* IRQ-CREW-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-04'> VC_IRQ_CREW_04 {
            doc /* IRQ-CREW-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-05'> VC_IRQ_CREW_05 {
            doc /* IRQ-CREW-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-06'> VC_IRQ_CREW_06 {
            doc /* IRQ-CREW-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-07'> VC_IRQ_CREW_07 {
            doc /* IRQ-CREW-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-08'> VC_IRQ_CREW_08 {
            doc /* IRQ-CREW-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-09'> VC_IRQ_CREW_09 {
            doc /* IRQ-CREW-09 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-10'> VC_IRQ_CREW_10 {
            doc /* IRQ-CREW-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CREW-11'> VC_IRQ_CREW_11 {
            doc /* IRQ-CREW-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CREW_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-01'> VC_IRQ_CT_01 {
            doc /* IRQ-CT-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-02'> VC_IRQ_CT_02 {
            doc /* IRQ-CT-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-03'> VC_IRQ_CT_03 {
            doc /* IRQ-CT-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-04'> VC_IRQ_CT_04 {
            doc /* IRQ-CT-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-05'> VC_IRQ_CT_05 {
            doc /* IRQ-CT-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-06'> VC_IRQ_CT_06 {
            doc /* IRQ-CT-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-07'> VC_IRQ_CT_07 {
            doc /* IRQ-CT-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-08'> VC_IRQ_CT_08 {
            doc /* IRQ-CT-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-10'> VC_IRQ_CT_10 {
            doc /* IRQ-CT-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-12'> VC_IRQ_CT_12 {
            doc /* IRQ-CT-12 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-13'> VC_IRQ_CT_13 {
            doc /* IRQ-CT-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-14'> VC_IRQ_CT_14 {
            doc /* IRQ-CT-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-15'> VC_IRQ_CT_15 {
            doc /* IRQ-CT-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-16'> VC_IRQ_CT_16 {
            doc /* IRQ-CT-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-17'> VC_IRQ_CT_17 {
            doc /* IRQ-CT-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-18'> VC_IRQ_CT_18 {
            doc /* IRQ-CT-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-19'> VC_IRQ_CT_19 {
            doc /* IRQ-CT-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-20'> VC_IRQ_CT_20 {
            doc /* IRQ-CT-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-21'> VC_IRQ_CT_21 {
            doc /* IRQ-CT-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-22'> VC_IRQ_CT_22 {
            doc /* IRQ-CT-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-23'> VC_IRQ_CT_23 {
            doc /* IRQ-CT-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-24'> VC_IRQ_CT_24 {
            doc /* IRQ-CT-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CT-25'> VC_IRQ_CT_25 {
            doc /* IRQ-CT-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CT_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-02'> VC_IRQ_CW_02 {
            doc /* IRQ-CW-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-03'> VC_IRQ_CW_03 {
            doc /* IRQ-CW-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-04'> VC_IRQ_CW_04 {
            doc /* IRQ-CW-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-05'> VC_IRQ_CW_05 {
            doc /* IRQ-CW-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-06'> VC_IRQ_CW_06 {
            doc /* IRQ-CW-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-07'> VC_IRQ_CW_07 {
            doc /* IRQ-CW-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-08'> VC_IRQ_CW_08 {
            doc /* IRQ-CW-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CW-09'> VC_IRQ_CW_09 {
            doc /* IRQ-CW-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CW_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-01'> VC_IRQ_DPS_01 {
            doc /* IRQ-DPS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-02'> VC_IRQ_DPS_02 {
            doc /* IRQ-DPS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-03'> VC_IRQ_DPS_03 {
            doc /* IRQ-DPS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-04'> VC_IRQ_DPS_04 {
            doc /* IRQ-DPS-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-05'> VC_IRQ_DPS_05 {
            doc /* IRQ-DPS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-06'> VC_IRQ_DPS_06 {
            doc /* IRQ-DPS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-12'> VC_IRQ_DPS_12 {
            doc /* IRQ-DPS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-13'> VC_IRQ_DPS_13 {
            doc /* IRQ-DPS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-14'> VC_IRQ_DPS_14 {
            doc /* IRQ-DPS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-15'> VC_IRQ_DPS_15 {
            doc /* IRQ-DPS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-16'> VC_IRQ_DPS_16 {
            doc /* IRQ-DPS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-17'> VC_IRQ_DPS_17 {
            doc /* IRQ-DPS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-18'> VC_IRQ_DPS_18 {
            doc /* IRQ-DPS-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-19'> VC_IRQ_DPS_19 {
            doc /* IRQ-DPS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-20'> VC_IRQ_DPS_20 {
            doc /* IRQ-DPS-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-21'> VC_IRQ_DPS_21 {
            doc /* IRQ-DPS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-DPS-22'> VC_IRQ_DPS_22 {
            doc /* IRQ-DPS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_DPS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-01'> VC_IRQ_EPS_01 {
            doc /* IRQ-EPS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-02'> VC_IRQ_EPS_02 {
            doc /* IRQ-EPS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-03'> VC_IRQ_EPS_03 {
            doc /* IRQ-EPS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-04'> VC_IRQ_EPS_04 {
            doc /* IRQ-EPS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-05'> VC_IRQ_EPS_05 {
            doc /* IRQ-EPS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-06'> VC_IRQ_EPS_06 {
            doc /* IRQ-EPS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-07'> VC_IRQ_EPS_07 {
            doc /* IRQ-EPS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-08'> VC_IRQ_EPS_08 {
            doc /* IRQ-EPS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-09'> VC_IRQ_EPS_09 {
            doc /* IRQ-EPS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-10'> VC_IRQ_EPS_10 {
            doc /* IRQ-EPS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-11'> VC_IRQ_EPS_11 {
            doc /* IRQ-EPS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-13'> VC_IRQ_EPS_13 {
            doc /* IRQ-EPS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-14'> VC_IRQ_EPS_14 {
            doc /* IRQ-EPS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-15'> VC_IRQ_EPS_15 {
            doc /* IRQ-EPS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EPS-16'> VC_IRQ_EPS_16 {
            doc /* IRQ-EPS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-01'> VC_IRQ_ET_01 {
            doc /* IRQ-ET-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-02'> VC_IRQ_ET_02 {
            doc /* IRQ-ET-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-03'> VC_IRQ_ET_03 {
            doc /* IRQ-ET-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-04'> VC_IRQ_ET_04 {
            doc /* IRQ-ET-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-05'> VC_IRQ_ET_05 {
            doc /* IRQ-ET-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-06'> VC_IRQ_ET_06 {
            doc /* IRQ-ET-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ET-07'> VC_IRQ_ET_07 {
            doc /* IRQ-ET-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ET_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-01'> VC_IRQ_EVA_01 {
            doc /* IRQ-EVA-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-02'> VC_IRQ_EVA_02 {
            doc /* IRQ-EVA-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-03'> VC_IRQ_EVA_03 {
            doc /* IRQ-EVA-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-04'> VC_IRQ_EVA_04 {
            doc /* IRQ-EVA-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-05'> VC_IRQ_EVA_05 {
            doc /* IRQ-EVA-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-06'> VC_IRQ_EVA_06 {
            doc /* IRQ-EVA-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-07'> VC_IRQ_EVA_07 {
            doc /* IRQ-EVA-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-08'> VC_IRQ_EVA_08 {
            doc /* IRQ-EVA-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-09'> VC_IRQ_EVA_09 {
            doc /* IRQ-EVA-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-10'> VC_IRQ_EVA_10 {
            doc /* IRQ-EVA-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-13'> VC_IRQ_EVA_13 {
            doc /* IRQ-EVA-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-EVA-14'> VC_IRQ_EVA_14 {
            doc /* IRQ-EVA-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_EVA_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-01'> VC_IRQ_GNC_01 {
            doc /* IRQ-GNC-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-02'> VC_IRQ_GNC_02 {
            doc /* IRQ-GNC-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-03'> VC_IRQ_GNC_03 {
            doc /* IRQ-GNC-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-04'> VC_IRQ_GNC_04 {
            doc /* IRQ-GNC-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-05'> VC_IRQ_GNC_05 {
            doc /* IRQ-GNC-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-06'> VC_IRQ_GNC_06 {
            doc /* IRQ-GNC-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-07'> VC_IRQ_GNC_07 {
            doc /* IRQ-GNC-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-08'> VC_IRQ_GNC_08 {
            doc /* IRQ-GNC-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-09'> VC_IRQ_GNC_09 {
            doc /* IRQ-GNC-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-10'> VC_IRQ_GNC_10 {
            doc /* IRQ-GNC-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-11'> VC_IRQ_GNC_11 {
            doc /* IRQ-GNC-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-12'> VC_IRQ_GNC_12 {
            doc /* IRQ-GNC-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-13'> VC_IRQ_GNC_13 {
            doc /* IRQ-GNC-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-14'> VC_IRQ_GNC_14 {
            doc /* IRQ-GNC-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-15'> VC_IRQ_GNC_15 {
            doc /* IRQ-GNC-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-16'> VC_IRQ_GNC_16 {
            doc /* IRQ-GNC-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-17'> VC_IRQ_GNC_17 {
            doc /* IRQ-GNC-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-19'> VC_IRQ_GNC_19 {
            doc /* IRQ-GNC-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-GNC-20'> VC_IRQ_GNC_20 {
            doc /* IRQ-GNC-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_GNC_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-01'> VC_IRQ_MECH_01 {
            doc /* IRQ-MECH-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-02'> VC_IRQ_MECH_02 {
            doc /* IRQ-MECH-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-03'> VC_IRQ_MECH_03 {
            doc /* IRQ-MECH-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-04'> VC_IRQ_MECH_04 {
            doc /* IRQ-MECH-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-05'> VC_IRQ_MECH_05 {
            doc /* IRQ-MECH-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-06'> VC_IRQ_MECH_06 {
            doc /* IRQ-MECH-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-07'> VC_IRQ_MECH_07 {
            doc /* IRQ-MECH-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-08'> VC_IRQ_MECH_08 {
            doc /* IRQ-MECH-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-09'> VC_IRQ_MECH_09 {
            doc /* IRQ-MECH-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MECH-10'> VC_IRQ_MECH_10 {
            doc /* IRQ-MECH-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MECH_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-03'> VC_IRQ_MPS_03 {
            doc /* IRQ-MPS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-04'> VC_IRQ_MPS_04 {
            doc /* IRQ-MPS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-05'> VC_IRQ_MPS_05 {
            doc /* IRQ-MPS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-06'> VC_IRQ_MPS_06 {
            doc /* IRQ-MPS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-07'> VC_IRQ_MPS_07 {
            doc /* IRQ-MPS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-08'> VC_IRQ_MPS_08 {
            doc /* IRQ-MPS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-09'> VC_IRQ_MPS_09 {
            doc /* IRQ-MPS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-10'> VC_IRQ_MPS_10 {
            doc /* IRQ-MPS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-11'> VC_IRQ_MPS_11 {
            doc /* IRQ-MPS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-12'> VC_IRQ_MPS_12 {
            doc /* IRQ-MPS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-13'> VC_IRQ_MPS_13 {
            doc /* IRQ-MPS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-14'> VC_IRQ_MPS_14 {
            doc /* IRQ-MPS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-15'> VC_IRQ_MPS_15 {
            doc /* IRQ-MPS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-16'> VC_IRQ_MPS_16 {
            doc /* IRQ-MPS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-17'> VC_IRQ_MPS_17 {
            doc /* IRQ-MPS-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-18'> VC_IRQ_MPS_18 {
            doc /* IRQ-MPS-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-19'> VC_IRQ_MPS_19 {
            doc /* IRQ-MPS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-20'> VC_IRQ_MPS_20 {
            doc /* IRQ-MPS-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-21'> VC_IRQ_MPS_21 {
            doc /* IRQ-MPS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-MPS-22'> VC_IRQ_MPS_22 {
            doc /* IRQ-MPS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_MPS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-01'> VC_IRQ_OMS_01 {
            doc /* IRQ-OMS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-02'> VC_IRQ_OMS_02 {
            doc /* IRQ-OMS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-03'> VC_IRQ_OMS_03 {
            doc /* IRQ-OMS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-04'> VC_IRQ_OMS_04 {
            doc /* IRQ-OMS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-05'> VC_IRQ_OMS_05 {
            doc /* IRQ-OMS-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-06'> VC_IRQ_OMS_06 {
            doc /* IRQ-OMS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-07'> VC_IRQ_OMS_07 {
            doc /* IRQ-OMS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-08'> VC_IRQ_OMS_08 {
            doc /* IRQ-OMS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-09'> VC_IRQ_OMS_09 {
            doc /* IRQ-OMS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-10'> VC_IRQ_OMS_10 {
            doc /* IRQ-OMS-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-11'> VC_IRQ_OMS_11 {
            doc /* IRQ-OMS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-12'> VC_IRQ_OMS_12 {
            doc /* IRQ-OMS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-13'> VC_IRQ_OMS_13 {
            doc /* IRQ-OMS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-14'> VC_IRQ_OMS_14 {
            doc /* IRQ-OMS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-15'> VC_IRQ_OMS_15 {
            doc /* IRQ-OMS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-16'> VC_IRQ_OMS_16 {
            doc /* IRQ-OMS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-17'> VC_IRQ_OMS_17 {
            doc /* IRQ-OMS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-18'> VC_IRQ_OMS_18 {
            doc /* IRQ-OMS-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-OMS-19'> VC_IRQ_OMS_19 {
            doc /* IRQ-OMS-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_OMS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-01'> VC_IRQ_PLS_01 {
            doc /* IRQ-PLS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-02'> VC_IRQ_PLS_02 {
            doc /* IRQ-PLS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-03'> VC_IRQ_PLS_03 {
            doc /* IRQ-PLS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-04'> VC_IRQ_PLS_04 {
            doc /* IRQ-PLS-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-05'> VC_IRQ_PLS_05 {
            doc /* IRQ-PLS-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-06'> VC_IRQ_PLS_06 {
            doc /* IRQ-PLS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-07'> VC_IRQ_PLS_07 {
            doc /* IRQ-PLS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-08'> VC_IRQ_PLS_08 {
            doc /* IRQ-PLS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PLS-09'> VC_IRQ_PLS_09 {
            doc /* IRQ-PLS-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PLS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-01'> VC_IRQ_RCS_01 {
            doc /* IRQ-RCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-02'> VC_IRQ_RCS_02 {
            doc /* IRQ-RCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-03'> VC_IRQ_RCS_03 {
            doc /* IRQ-RCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-04'> VC_IRQ_RCS_04 {
            doc /* IRQ-RCS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-05'> VC_IRQ_RCS_05 {
            doc /* IRQ-RCS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-06'> VC_IRQ_RCS_06 {
            doc /* IRQ-RCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-07'> VC_IRQ_RCS_07 {
            doc /* IRQ-RCS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-08'> VC_IRQ_RCS_08 {
            doc /* IRQ-RCS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-09'> VC_IRQ_RCS_09 {
            doc /* IRQ-RCS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-10'> VC_IRQ_RCS_10 {
            doc /* IRQ-RCS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-11'> VC_IRQ_RCS_11 {
            doc /* IRQ-RCS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-12'> VC_IRQ_RCS_12 {
            doc /* IRQ-RCS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-14'> VC_IRQ_RCS_14 {
            doc /* IRQ-RCS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-15'> VC_IRQ_RCS_15 {
            doc /* IRQ-RCS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-16'> VC_IRQ_RCS_16 {
            doc /* IRQ-RCS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-17'> VC_IRQ_RCS_17 {
            doc /* IRQ-RCS-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-18'> VC_IRQ_RCS_18 {
            doc /* IRQ-RCS-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-19'> VC_IRQ_RCS_19 {
            doc /* IRQ-RCS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCS-20'> VC_IRQ_RCS_20 {
            doc /* IRQ-RCS-20 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-01'> VC_IRQ_SRB_01 {
            doc /* IRQ-SRB-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-02'> VC_IRQ_SRB_02 {
            doc /* IRQ-SRB-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-03'> VC_IRQ_SRB_03 {
            doc /* IRQ-SRB-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-04'> VC_IRQ_SRB_04 {
            doc /* IRQ-SRB-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-05'> VC_IRQ_SRB_05 {
            doc /* IRQ-SRB-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-06'> VC_IRQ_SRB_06 {
            doc /* IRQ-SRB-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-07'> VC_IRQ_SRB_07 {
            doc /* IRQ-SRB-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-SRB-08'> VC_IRQ_SRB_08 {
            doc /* IRQ-SRB-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_SRB_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-01'> VC_IRQ_STR_01 {
            doc /* IRQ-STR-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-02'> VC_IRQ_STR_02 {
            doc /* IRQ-STR-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-03'> VC_IRQ_STR_03 {
            doc /* IRQ-STR-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-04'> VC_IRQ_STR_04 {
            doc /* IRQ-STR-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-05'> VC_IRQ_STR_05 {
            doc /* IRQ-STR-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-06'> VC_IRQ_STR_06 {
            doc /* IRQ-STR-06 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-07'> VC_IRQ_STR_07 {
            doc /* IRQ-STR-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-08'> VC_IRQ_STR_08 {
            doc /* IRQ-STR-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-09'> VC_IRQ_STR_09 {
            doc /* IRQ-STR-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-STR-10'> VC_IRQ_STR_10 {
            doc /* IRQ-STR-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_STR_10; }
            return verdict : VerdictKind;
        }
    }
    // ---- 検証の結果（対象は IF の送り側の部品。根拠ありは pass、根拠なしは inconclusive）
    package Results {
        verification vc_irq_apu_01 : Verification::VC_IRQ_APU_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_02 : Verification::VC_IRQ_APU_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_apu_03 : Verification::VC_IRQ_APU_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_04 : Verification::VC_IRQ_APU_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_05 : Verification::VC_IRQ_APU_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_06 : Verification::VC_IRQ_APU_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_07 : Verification::VC_IRQ_APU_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_08 : Verification::VC_IRQ_APU_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_09 : Verification::VC_IRQ_APU_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_10 : Verification::VC_IRQ_APU_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_12 : Verification::VC_IRQ_APU_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_13 : Verification::VC_IRQ_APU_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_apu_14 : Verification::VC_IRQ_APU_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_16 : Verification::VC_IRQ_APU_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_apu_17 : Verification::VC_IRQ_APU_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_18 : Verification::VC_IRQ_APU_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_19 : Verification::VC_IRQ_APU_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_20 : Verification::VC_IRQ_APU_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_21 : Verification::VC_IRQ_APU_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_22 : Verification::VC_IRQ_APU_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_apu_23 : Verification::VC_IRQ_APU_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_24 : Verification::VC_IRQ_APU_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_apu_25 : Verification::VC_IRQ_APU_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_01 : Verification::VC_IRQ_CREW_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_02 : Verification::VC_IRQ_CREW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_03 : Verification::VC_IRQ_CREW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_04 : Verification::VC_IRQ_CREW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_05 : Verification::VC_IRQ_CREW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_06 : Verification::VC_IRQ_CREW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_crew_07 : Verification::VC_IRQ_CREW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_08 : Verification::VC_IRQ_CREW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_09 : Verification::VC_IRQ_CREW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_10 : Verification::VC_IRQ_CREW_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_crew_11 : Verification::VC_IRQ_CREW_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_01 : Verification::VC_IRQ_CT_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_02 : Verification::VC_IRQ_CT_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_03 : Verification::VC_IRQ_CT_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_04 : Verification::VC_IRQ_CT_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_05 : Verification::VC_IRQ_CT_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_06 : Verification::VC_IRQ_CT_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_07 : Verification::VC_IRQ_CT_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_08 : Verification::VC_IRQ_CT_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_10 : Verification::VC_IRQ_CT_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_12 : Verification::VC_IRQ_CT_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_13 : Verification::VC_IRQ_CT_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_14 : Verification::VC_IRQ_CT_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_15 : Verification::VC_IRQ_CT_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_16 : Verification::VC_IRQ_CT_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_17 : Verification::VC_IRQ_CT_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_18 : Verification::VC_IRQ_CT_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_19 : Verification::VC_IRQ_CT_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_20 : Verification::VC_IRQ_CT_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_21 : Verification::VC_IRQ_CT_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_22 : Verification::VC_IRQ_CT_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_23 : Verification::VC_IRQ_CT_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ct_24 : Verification::VC_IRQ_CT_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ct_25 : Verification::VC_IRQ_CT_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cw_02 : Verification::VC_IRQ_CW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cw_03 : Verification::VC_IRQ_CW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cw_04 : Verification::VC_IRQ_CW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cw_05 : Verification::VC_IRQ_CW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cw_06 : Verification::VC_IRQ_CW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cw_07 : Verification::VC_IRQ_CW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cw_08 : Verification::VC_IRQ_CW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cw_09 : Verification::VC_IRQ_CW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_01 : Verification::VC_IRQ_DPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_02 : Verification::VC_IRQ_DPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_03 : Verification::VC_IRQ_DPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_04 : Verification::VC_IRQ_DPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_05 : Verification::VC_IRQ_DPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_06 : Verification::VC_IRQ_DPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_12 : Verification::VC_IRQ_DPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_13 : Verification::VC_IRQ_DPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_14 : Verification::VC_IRQ_DPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_15 : Verification::VC_IRQ_DPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_16 : Verification::VC_IRQ_DPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_17 : Verification::VC_IRQ_DPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_dps_18 : Verification::VC_IRQ_DPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_19 : Verification::VC_IRQ_DPS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_20 : Verification::VC_IRQ_DPS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_21 : Verification::VC_IRQ_DPS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_dps_22 : Verification::VC_IRQ_DPS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eps_01 : Verification::VC_IRQ_EPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_02 : Verification::VC_IRQ_EPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eps_03 : Verification::VC_IRQ_EPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_04 : Verification::VC_IRQ_EPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_05 : Verification::VC_IRQ_EPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eps_06 : Verification::VC_IRQ_EPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_07 : Verification::VC_IRQ_EPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_08 : Verification::VC_IRQ_EPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_09 : Verification::VC_IRQ_EPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_10 : Verification::VC_IRQ_EPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_11 : Verification::VC_IRQ_EPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_13 : Verification::VC_IRQ_EPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eps_14 : Verification::VC_IRQ_EPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eps_15 : Verification::VC_IRQ_EPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eps_16 : Verification::VC_IRQ_EPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_et_01 : Verification::VC_IRQ_ET_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_et_02 : Verification::VC_IRQ_ET_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_et_03 : Verification::VC_IRQ_ET_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_et_04 : Verification::VC_IRQ_ET_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_et_05 : Verification::VC_IRQ_ET_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_et_06 : Verification::VC_IRQ_ET_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_et_07 : Verification::VC_IRQ_ET_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_01 : Verification::VC_IRQ_EVA_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_02 : Verification::VC_IRQ_EVA_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eva_03 : Verification::VC_IRQ_EVA_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eva_04 : Verification::VC_IRQ_EVA_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_05 : Verification::VC_IRQ_EVA_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eva_06 : Verification::VC_IRQ_EVA_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_07 : Verification::VC_IRQ_EVA_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_08 : Verification::VC_IRQ_EVA_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eva_09 : Verification::VC_IRQ_EVA_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_10 : Verification::VC_IRQ_EVA_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_eva_13 : Verification::VC_IRQ_EVA_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_eva_14 : Verification::VC_IRQ_EVA_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_01 : Verification::VC_IRQ_GNC_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_02 : Verification::VC_IRQ_GNC_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_03 : Verification::VC_IRQ_GNC_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_04 : Verification::VC_IRQ_GNC_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_05 : Verification::VC_IRQ_GNC_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_06 : Verification::VC_IRQ_GNC_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_07 : Verification::VC_IRQ_GNC_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_gnc_08 : Verification::VC_IRQ_GNC_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_gnc_09 : Verification::VC_IRQ_GNC_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_gnc_10 : Verification::VC_IRQ_GNC_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_11 : Verification::VC_IRQ_GNC_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_12 : Verification::VC_IRQ_GNC_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_13 : Verification::VC_IRQ_GNC_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_14 : Verification::VC_IRQ_GNC_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_15 : Verification::VC_IRQ_GNC_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_16 : Verification::VC_IRQ_GNC_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_17 : Verification::VC_IRQ_GNC_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_19 : Verification::VC_IRQ_GNC_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_gnc_20 : Verification::VC_IRQ_GNC_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_01 : Verification::VC_IRQ_MECH_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_02 : Verification::VC_IRQ_MECH_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_03 : Verification::VC_IRQ_MECH_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_04 : Verification::VC_IRQ_MECH_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_05 : Verification::VC_IRQ_MECH_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mech_06 : Verification::VC_IRQ_MECH_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mech_07 : Verification::VC_IRQ_MECH_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mech_08 : Verification::VC_IRQ_MECH_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mech_09 : Verification::VC_IRQ_MECH_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mech_10 : Verification::VC_IRQ_MECH_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_03 : Verification::VC_IRQ_MPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_04 : Verification::VC_IRQ_MPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_05 : Verification::VC_IRQ_MPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_06 : Verification::VC_IRQ_MPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_07 : Verification::VC_IRQ_MPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_08 : Verification::VC_IRQ_MPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_09 : Verification::VC_IRQ_MPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_10 : Verification::VC_IRQ_MPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_11 : Verification::VC_IRQ_MPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_12 : Verification::VC_IRQ_MPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_13 : Verification::VC_IRQ_MPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_14 : Verification::VC_IRQ_MPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_15 : Verification::VC_IRQ_MPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_16 : Verification::VC_IRQ_MPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_17 : Verification::VC_IRQ_MPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_18 : Verification::VC_IRQ_MPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_19 : Verification::VC_IRQ_MPS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_20 : Verification::VC_IRQ_MPS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_mps_21 : Verification::VC_IRQ_MPS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_mps_22 : Verification::VC_IRQ_MPS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_01 : Verification::VC_IRQ_OMS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_02 : Verification::VC_IRQ_OMS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_03 : Verification::VC_IRQ_OMS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_04 : Verification::VC_IRQ_OMS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_05 : Verification::VC_IRQ_OMS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_06 : Verification::VC_IRQ_OMS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_07 : Verification::VC_IRQ_OMS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_08 : Verification::VC_IRQ_OMS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_09 : Verification::VC_IRQ_OMS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_10 : Verification::VC_IRQ_OMS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_11 : Verification::VC_IRQ_OMS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_oms_12 : Verification::VC_IRQ_OMS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_13 : Verification::VC_IRQ_OMS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_14 : Verification::VC_IRQ_OMS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_15 : Verification::VC_IRQ_OMS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_16 : Verification::VC_IRQ_OMS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_17 : Verification::VC_IRQ_OMS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_18 : Verification::VC_IRQ_OMS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_oms_19 : Verification::VC_IRQ_OMS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pls_01 : Verification::VC_IRQ_PLS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_02 : Verification::VC_IRQ_PLS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_03 : Verification::VC_IRQ_PLS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_04 : Verification::VC_IRQ_PLS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pls_05 : Verification::VC_IRQ_PLS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pls_06 : Verification::VC_IRQ_PLS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_07 : Verification::VC_IRQ_PLS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_08 : Verification::VC_IRQ_PLS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pls_09 : Verification::VC_IRQ_PLS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_01 : Verification::VC_IRQ_RCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_02 : Verification::VC_IRQ_RCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_03 : Verification::VC_IRQ_RCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_04 : Verification::VC_IRQ_RCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_05 : Verification::VC_IRQ_RCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_06 : Verification::VC_IRQ_RCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_07 : Verification::VC_IRQ_RCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_08 : Verification::VC_IRQ_RCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_09 : Verification::VC_IRQ_RCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_10 : Verification::VC_IRQ_RCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_11 : Verification::VC_IRQ_RCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_12 : Verification::VC_IRQ_RCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_14 : Verification::VC_IRQ_RCS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_15 : Verification::VC_IRQ_RCS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_16 : Verification::VC_IRQ_RCS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_17 : Verification::VC_IRQ_RCS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_18 : Verification::VC_IRQ_RCS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcs_19 : Verification::VC_IRQ_RCS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcs_20 : Verification::VC_IRQ_RCS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_srb_01 : Verification::VC_IRQ_SRB_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_02 : Verification::VC_IRQ_SRB_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_03 : Verification::VC_IRQ_SRB_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_04 : Verification::VC_IRQ_SRB_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_05 : Verification::VC_IRQ_SRB_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_srb_06 : Verification::VC_IRQ_SRB_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_07 : Verification::VC_IRQ_SRB_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_srb_08 : Verification::VC_IRQ_SRB_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_str_01 : Verification::VC_IRQ_STR_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_str_02 : Verification::VC_IRQ_STR_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_str_03 : Verification::VC_IRQ_STR_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_str_04 : Verification::VC_IRQ_STR_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_05 : Verification::VC_IRQ_STR_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_06 : Verification::VC_IRQ_STR_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_07 : Verification::VC_IRQ_STR_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_08 : Verification::VC_IRQ_STR_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_09 : Verification::VC_IRQ_STR_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_str_10 : Verification::VC_IRQ_STR_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::pass;
        }
    }
}
