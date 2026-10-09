// SysML v2 テキスト：ECLSS 下位要求（L3）と導出・充足・検証
// SSD-RQL-ECL-001 ECLSS 下位要求書（L3：ARS・PCS・給水廃水・WCS・FDS・ALS・ATCS） の表から生成（lib/build_docs_bk.py・rev_bk/bkdata.py）。根拠と検証の根拠の頁は SSD-RQL-ECL-001 にある。
package SSD_RQL_ECL_001 {
    doc /* SSD-RQL-ECL-001 ECLSS 下位要求書（L3：ARS・PCS・給水廃水・WCS・FDS・ALS・ATCS）。L3 の要求を requirement、REQ-ECLSS（L2）からの導出、割付先の機能行の部品への充足、要求ごとの検証ケースと結果で表す。要求モデル SSD_RQM_SYS_001 と構造モデル SSD_BLK_SYS_001 を読み込んでから読む。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_RQM_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::*;
    package <'REQ-ARS'> REQ_ARS {
        doc /* 大気再生系（ARS）の L3 要求（SSD-FD-ECL-ARS-001 の下位） */
        requirement <'REQ-ARS-01'> REQ_ARS_01 {
            subject s : Parts::Part;
            doc /* 2台のキャビンファン（通常は1台を運転し、各出口に逆止弁を置く）で乗員室の空気を公称 1,400 lb/hr で循環させ、乗員室容積 2,300 ft3 を約7分で1回入れ替えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "1,400 lb/hr（ファン1台）、330 ft3/min、逆止弁の開弁差圧 2 in H2O"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-02'> REQ_ARS_02 {
            subject s : Parts::Part;
            doc /* キャビンファンは運転中に交流の1相を失っても2相で運転を続けられ、1相を失ったファンは止めずに運転を続けること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-03'> REQ_ARS_03 {
            subject s : Parts::Part;
            doc /* 還流空気を 300 ミクロンのフィルタでろ過してからキャビンファンへ吸い込み、その経路で乗員室の電子機器を強制空冷すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-04'> REQ_ARS_04 {
            subject s : Parts::Part;
            doc /* キャビンファンの差圧を計測して表示し、4.2 in H2O 未満または 6.8 in H2O 超で AV BAY/CABIN AIR 警報灯を点灯させること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "4.2〜6.8 in H2O"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-05'> REQ_ARS_05 {
            subject s : Parts::Part;
            doc /* キャビンファンの喪失を差圧 4.20 in H2O 未満または 6.80 in H2O 超と乗員による気流の喪失の確認で判定し、MECO 前を除いて予備のファンへ切り替え、冷却に要る最低流量 1,400 lb/hr を保ち、軌道上のファンの停止を MDU 搭載で 30 分（旧 DDU 搭載で 20 分）以内とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "最低 1,400 lb/hr、停止 30 分（旧 DDU 20 分）以内"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-06'> REQ_ARS_06 {
            subject s : Parts::Part;
            doc /* 乗員室の火災ではキャビンファンを止め、鎮火後は WCS の活性炭フィルタ・ATCO・LiOH キャニスタで乗員室の大気から燃焼生成物を除くこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-07'> REQ_ARS_07 {
            subject s : Parts::Part;
            doc /* エアロックへはミッドデッキ床の継手からダクトとブースタファン（2台、1台ずつ使用）で調整空気を送り、湿度を制御して CO2・O2・N2 のよどみを防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "541〜767 lb/hr（ブースタファン1台）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-08'> REQ_ARS_08 {
            subject s : Parts::Part;
            doc /* キャビンファン出口のダクトのオリフィスで、約 120 lb/hr ずつを2個の LiOH キャニスタへ分流すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "約 120 lb/hr × 2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-09'> REQ_ARS_09 {
            subject s : Parts::Part;
            doc /* LiOH キャニスタは LiOH で二酸化炭素を、活性炭で臭気と微量の汚染物質を除き、1個あたり 48 man-hours の能力を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "48 man-hours／個"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-10'> REQ_ARS_10 {
            subject s : Parts::Part;
            doc /* 乗員室の PPCO2 を長期では 7.6 mmHg 未満に保つよう LiOH キャニスタを就寝前と起床後、または PPCO2 が 7.6 mmHg 以上と確かめたときに交換し、15 mmHg 未満を保てなければ QDM を着けて次の PLS で飛行を終えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "7.6 mmHg（長期）、15 mmHg（最大2時間）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-11'> REQ_ARS_11 {
            subject s : Parts::Part;
            doc /* キャビン空気の PPCO2 を LiOH キャニスタへの分岐の手前で計測し、SM の SPEC 66 ENVIRONMENT に表示すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-12'> REQ_ARS_12 {
            subject s : Parts::Part;
            doc /* 予備の LiOH キャニスタを最大 30 個ミッドデッキ床下に収め、未使用のキャニスタを飛行の終わりまで常に2日分以上予備として持つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "最大 30 個、未使用 2日分以上（目安は乗員数と同数）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-13'> REQ_ARS_13 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器を出た空気の一部を ATCO（白金 2%・炭素担体の触媒）に通し、乗員と非金属材料のガス放出による一酸化炭素を二酸化炭素に変えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "触媒 白金 2%・炭素担体"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-14'> REQ_ARS_14 {
            subject s : Parts::Part;
            doc /* 長期滞在の飛行では、RCRS の2個の固体アミン樹脂ベッドの一方で CO2 を吸着し、他方を加熱と真空排気で再生して、13分ごとに自動で切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "13分ごとに切替（1周期 26分）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-15'> REQ_ARS_15 {
            subject s : Parts::Part;
            doc /* RCRS の流量制御弁を打上げ前に乗員数に合わせて設定し、ARS のキャビンファンの上流から取り出した空気を 72 lb/hr（乗員4名）または 110 lb/hr（5〜7名）で RCRS に流すこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "72 lb/hr・110 lb/hr（ARS の全流量の約6%）"; phases = "PH-1（打上げ前）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-16'> REQ_ARS_16 {
            subject s : Parts::Part;
            doc /* RCRS は冗長の制御器2台の一方で自動運転し、故障を検知したら RCRS を止めて MO51F の該当する制御器の故障灯を点灯させること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "制御器 2台（作動は1台）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-17'> REQ_ARS_17 {
            subject s : Parts::Part;
            doc /* RCRS のベッド圧力・ベッド差圧と、共通計装の CO2 分圧・真空圧力・フィルタ差圧・入口温度を計測し、SPEC 66 に表示すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-18'> REQ_ARS_18 {
            subject s : Parts::Part;
            doc /* RCRS は真空源の無い上昇・再突入では止めて LiOH キャニスタで PPCO2 を管理し、軌道上は OMS-2 後なるべく早く起動して軌道離脱噴射前なるべく遅く止め、PPCO2 を 7.6 mmHg 未満に保てないか PPCO2 を把握できなくなったときは喪失として LiOH キャニスタを装着すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "PPCO2 7.6 mmHg"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-19'> REQ_ARS_19 {
            subject s : Parts::Part;
            doc /* 再生に入るベッドの空気を ullage-save 圧縮機と均圧弁で最大 90% 回収し、真空へ失うキャビン空気を約 1.6 lb/日に抑えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "回収 最大 90%、損失 約 1.6 lb/日"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-20'> REQ_ARS_20 {
            subject s : Parts::Part;
            doc /* キャビン温度制御弁でキャビン熱交換器を迂回する空気を 0〜70% の範囲で配分し、2台のキャビン温度コントローラの一方で乗員の選んだ温度（約 65〜80°F）に自動で制御し、コントローラが使えないときは弁アームを4つの固定穴の一つに手動でピン止めできること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "迂回 0〜70%、全COOL 約65°F・全WARM 約80°F、固定穴 4"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-21'> REQ_ARS_21 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器で凝縮した水分を2台の湿度分離器の一方（通常は1台を運転）で空気から分離し、水を廃水タンクへ、空気を乗員室へ戻して、乗員室の相対湿度を通常 30〜65% に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "除水 公称 約1 lb/hr・最大 約4 lb/hr、相対湿度 30〜65%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-22'> REQ_ARS_22 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器の空気出口温度を AIR TEMP 計器と SM 表示で示して 145°F を超えると AV BAY/CABIN AIR 警報灯を点灯させ、湿度分離器の回転数の低下を SM 警報で知らせること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "145°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-23'> REQ_ARS_23 {
            subject s : Parts::Part;
            doc /* 上昇・再突入ではバイパス弁を FULL COOL とし、キャビン温度を 95（90）°F 未満に保てない場合や、廃水タンクの増加率（通常 6±1 lb/day/人）の説明できない低下や結露で湿度制御の失敗が分かった場合は、キャビン大気制御の喪失と判定すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "95（90）°F、6±1 lb/day/人"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-24'> REQ_ARS_24 {
            subject s : Parts::Part;
            doc /* 3つのアビオニクスベイは、ベイごとに2台のファン（通常は1台を運転）でベイの床から空冷機器と 300 ミクロンフィルタを通して空気を吸い込み、床下のベイ熱交換器で水冷却ループにより冷やしてベイへ戻し、非運転ファンの出口の逆止弁で逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ファン 2台/ベイ、875 lb/hr/ベイ、フィルタ 300 µm"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-25'> REQ_ARS_25 {
            subject s : Parts::Part;
            doc /* 各ベイのファン出口の空気温度を AIR TEMP 計器と SM 表示で示して 130°F を超えると AV BAY/CABIN AIR 警報灯を点灯させ、ファン差圧が 2.5 in H2O 未満または 4.3 in H2O 超（改良型ファンは 4.5 未満または 7.8 超）でベイファンの喪失と判定すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "130°F、2.5〜4.3 in H2O（改良型 4.5〜7.8 in H2O）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-26'> REQ_ARS_26 {
            subject s : Parts::Part;
            doc /* ベイの空気出口温度を上昇・再突入で 130（125）°F 未満、軌道上（14.7 psi）で稼働 GPC が 2台なら 120（115）°F 未満などに保てない場合はベイ冷却の喪失とし、ベイファンの停止は GPC の冷却の制約から 26 分以内とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "130（125）°F、120（115）°F（GPC 2台）、停止 26 min"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-27'> REQ_ARS_27 {
            subject s : Parts::Part;
            doc /* 1ベイの両ファンの喪失と IMU ファン3台の喪失は軌道到達可とし、単一の AC 母線の故障で2つのベイの空冷を失いうる場合は次の PLS に入るなど、生命維持の Go/No-Go 基準（A17-1001）でベイと IMU の冷却の喪失時の飛行の継続を判断すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "A17-1001 注[4]〜[9]"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-28'> REQ_ARS_28 {
            subject s : Parts::Part;
            doc /* アビオニクスベイの火災では、そのベイの Halon ボトルを放出してベイファンを止め、放出後のベイの電源断でも IMU ファンは止めずに運転を続けること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-29'> REQ_ARS_29 {
            subject s : Parts::Part;
            doc /* 3台の IMU は、3台の IMU ファン（どの1台でも3台の IMU を冷却でき、通常は1台を運転）でキャビン空気を 300 ミクロンフィルタを通して IMU に流し、フライトデッキの IMU 熱交換器で水冷却ループにより冷やして乗員室へ戻し、非運転ファンの出口の逆止弁で逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ファン 3台、公称 144 lb/hr、フィルタ 300 µm"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-30'> REQ_ARS_30 {
            subject s : Parts::Part;
            doc /* IMU ファンの差圧と回転数を SM 表示と SM 警報で監視し、差圧が 3.70（3.94）in H2O 未満または 4.95（4.71）in H2O 超か、選択したファンの回転数が 10,000±240〜12,720±700 rpm の範囲外ならファンの喪失と判定して、別のファンへ切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "3.70（3.94）〜4.95（4.71）in H2O、10,000±240〜12,720±700 rpm、最低 144 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-31'> REQ_ARS_31 {
            subject s : Parts::Part;
            doc /* IMU ファンの停止は IMU の冷却の制約から 45 分以内とし、吸込みスクリーン・デブリトラップの目詰まりはフィルタの清掃で、3台のファンの喪失やダクトの閉塞は掃除機を使う IMU の緊急冷却で、冷却を回復できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "停止 45 min"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-32'> REQ_ARS_32 {
            subject s : Parts::Part;
            doc /* 水冷却ループは独立した2系統とし、ループ1（予備）はポンプ2台、ループ2（常用）はポンプ1台を持ち、各ループのアキュムレータを GN2 で 19〜35 psi に加圧してポンプ入口に正圧を与えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ポンプ 970±15 lb/hr・昇圧 46.5±1.2 psid、アキュムレータ 19〜35 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-33'> REQ_ARS_33 {
            subject s : Parts::Part;
            doc /* 各水冷却ループはポンプの下流で3つの並列経路に分かれてアビオニクスベイ 1・2・3A・3B の熱交換器とコールドプレート、MDM コールドプレートと窓の熱調整を冷やし、合流後にインターチェンジャで冷えた水を液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU 熱交換器へ流してポンプへ戻すこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "並列経路 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-34'> REQ_ARS_34 {
            subject s : Parts::Part;
            doc /* バイパス弁でインターチェンジャを迂回する水量を調整し、AUTO ではポンプ出口温度を 63.0±2.5°F に保ち、上昇・再突入では両ループとも MAN でインターチェンジャ流量を 950±50 lb/hr に設定し、ループ2を稼働ループとすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "63.0±2.5°F、950±50 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-35'> REQ_ARS_35 {
            subject s : Parts::Part;
            doc /* 軌道上（OPS 2）でポンプのスイッチを GPC にしたとき、GPC が待機ループのポンプを4時間ごとに6分運転して、静止したループを熱調整すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "6 min／4 h"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-36'> REQ_ARS_36 {
            subject s : Parts::Part;
            doc /* 各ループのポンプ出口圧・差圧・出口温度、アキュムレータ量、インターチェンジャ流量・出口温度、キャビン熱交換器入口温度を計測して表示し、ポンプ出口圧がループ1で 19.5 psia 未満・79.5 psia 超、ループ2で 45 psia 未満・81 psia 超なら H2O LOOP 警報灯を点灯させること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ループ1 19.5〜79.5 psia、ループ2 45〜81 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ARS-37'> REQ_ARS_37 {
            subject s : Parts::Part;
            doc /* アキュムレータ量 0（5）%、MIN BYP でインターチェンジャ流量 600（649）lb/hr 以上を保てない、14.7 psia で稼働ループのポンプ出口温度を 85（82.75）°F 未満に保てない、ループ間漏れの確認のいずれかで水ループの喪失と判定し、水ループの停止は 10 分以内とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0（5）%、600（649）lb/hr、85（82.75）°F、停止 10 min"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-38'> REQ_ARS_38 {
            subject s : Parts::Part;
            doc /* 1ループの喪失ではゼロフォールトトレラントとして上昇中は初日の PLS とし、両ループの喪失では上昇中は AOA、軌道上は故障から4時間以内の着陸とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "AOA、4 h"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ARS-39'> REQ_ARS_39 {
            subject s : Parts::Part;
            doc /* 両フレオンループの蒸発器出口温度が 32°F 未満になれば両水ループを運転して水の凍結を防ぎ、インターチェンジャ出口 35°F 未満・キャビン熱交換器入口 34°F 未満の低温を SM 警報で知らせること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "32°F、35°F・34°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
    }
    package <'REQ-PCS'> REQ_PCS {
        doc /* 与圧系（PCS）の L3 要求（SSD-FD-ECL-PCS-001 の下位） */
        requirement <'REQ-PCS-01'> REQ_PCS_01 {
            subject s : Parts::Part;
            doc /* 14.7 psia キャビンレギュレータは乗員室圧を 14.7±0.2 psia に、8 psia 非常用レギュレータは 8±0.2 psia に調圧し、どちらも仕様上少なくとも 75 lb/hr の最大流量で補給できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "14.7±0.2 psia・8±0.2 psia、最大流量 75 lb/hr 以上"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-02'> REQ_PCS_02 {
            subject s : Parts::Part;
            doc /* O2/N2 コントローラは PPO2 が 2.95 psia 未満で O2/N2 制御弁を閉じて酸素を、3.45 psia を超えると開いて窒素を流し、PPO2 センサ A・B をコントローラ 1・2 に対応させて酸素分圧を自動で制御すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "PPO2 2.95〜3.45 psia"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-03'> REQ_PCS_03 {
            subject s : Parts::Part;
            doc /* 窒素系は 3300 psia のタンクの窒素を N2 レギュレータで調圧して各系統少なくとも 125 lbm/hr を供給し、レギュレータの故障による過圧を 275 psig で開く逃し弁で船外へ逃がすこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "125 lbm/hr 以上、逃し弁 275 psig（245 psig で閉）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-04'> REQ_PCS_04 {
            subject s : Parts::Part;
            doc /* 水タンク用 N2 レギュレータは 200 psi の窒素を 15.5〜17.0 psig に下げて給水・廃水タンクを加圧し、2段目は 18.5±1.5 psig で乗員室へ逃がすこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "15.5〜17.0 psig、逃し 18.5±1.5 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-05'> REQ_PCS_05 {
            subject s : Parts::Part;
            doc /* 窒素タンク（最大8基）に、機体の漏れ・ベント・EVA の再与圧の使用量に加えて、0.45 インチの穴の漏れで 8 psia を保ち 165 分後に着陸できる量の窒素を搭載すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "8 psia・165 分"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-PCS-06'> REQ_PCS_06 {
            subject s : Parts::Part;
            doc /* PRSD の酸素は、系統1は 23.9±1 lb/hr のリストリクタ1個、系統2は 12.0±0.5 lb/hr のリストリクタ2個で流量を制限して燃料電池の極低温系を守り、100 psig の O2 レギュレータ（逃し弁 245 psig）を経て O2/N2 マニホールドへ送ること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "23.9±1 lb/hr（系統1）、12.0±0.5 lb/hr×2（系統2）、100 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-07'> REQ_PCS_07 {
            subject s : Parts::Part;
            doc /* 打上げ・帰還では LES ヘルメットへ乗員1人あたり少なくとも 2.5 lb/hr の酸素を送り、軌道上は乗員数に合わせたブリードオリフィス（4〜5人 0.24 lbm/hr、6〜7人 0.36 lbm/hr）で代謝用の酸素を補うこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "2.5 lb/hr/人、0.24・0.36 lbm/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'REQ-PCS-08'> REQ_PCS_08 {
            subject s : Parts::Part;
            doc /* 2個の正圧逃し弁は 15.5 psid で開いて 16.0 psid で全開（150 lb/hr）となり、2個の負圧逃し弁は外気圧が乗員室圧を 0.2 psid 上回ると開き、正圧逃し弁はすべての飛行段階で有効にしておくこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "15.5〜16.0 psid（150 lb/hr）、負圧 0.2 psid"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'REQ-PCS-09'> REQ_PCS_09 {
            subject s : Parts::Part;
            doc /* キャビンベント弁は打上げ前の気密点検（16.7 psia で 35 分間圧力の低下が無いこと）の後に閉じ、上昇後は遮断器を開いて着陸後の引渡しまで開かないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "16.7 psia・35 分"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-10'> REQ_PCS_10 {
            subject s : Parts::Part;
            doc /* dP/dt が −0.08 psi/min を超えるとクラクソンと MASTER ALARM（クラス1）で急減圧を知らせ、CABIN ATM 灯は乗員室圧 13.8〜15.2 psia・PPO2 2.7〜3.6 psia の限界外で点灯すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "dP/dt −0.08 psi/min、13.8〜15.2 psia、PPO2 2.7〜3.6 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-11'> REQ_PCS_11 {
            subject s : Parts::Part;
            doc /* EVA 前の 10.2 psia 運用では乗員室圧を 10.0〜10.4 psia、PPO2 を 2.55〜2.80 psia（指示値）に保ち、O2 濃度は 14.7 psia で 25.9% 未満、10.2 psia で 30.0% 未満とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "10.0〜10.4 psia、PPO2 2.55〜2.80 psia、O2 25.9%・30.0% 未満"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PCS-12'> REQ_PCS_12 {
            subject s : Parts::Part;
            doc /* 上昇中に隔離できない 0.15 psia/min を超える乗員室の漏れでは最も早く帰還・着陸できるアボートを選び、漏れで消耗品が足りない場合は 14.7 psia のキャビンレギュレータ入口弁を閉じて乗員室を 8 psia まで下げること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0.15 psia/min、8 psia"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
    }
    package <'REQ-WTR'> REQ_WTR {
        doc /* 給水・廃水系（H2O）の L3 要求（SSD-FD-ECL-H2O-001 の下位） */
        requirement <'REQ-WTR-01'> REQ_WTR_01 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水を水素分離器に通して余剰水素の 85% を除き、微生物フィルタで約 0.5 ppm のヨウ素を加えてタンクAへ受け入れ、タンクAが満杯のときは 1.5 psid の逆止弁でタンクB、次いでタンクC・Dへ流し、主経路の閉塞に備えてタンクBへの冗長経路を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "生成水 最大 25 lb/h、水素除去 85%、ヨウ素 約 0.5 ppm、逆止弁 1.5 psid"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-02'> REQ_WTR_02 {
            subject s : Parts::Part;
            doc /* 窒素で加圧する4基の給水タンク（各 165 lb）を持ち、出口マニホールドをクロスオーバ弁でA-B側とC-D側に分けて、FES の給水系統A・Bへそれぞれ給水すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "給水タンク 4（各 165 lb）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-03'> REQ_WTR_03 {
            subject s : Parts::Part;
            doc /* 約 100 ft の FES 給水配管と給水ダンプ配管・ノズルをヒータで凍結から守り、ノズルヒータに給電しなければ給水ダンプ弁を開けず、ダンプ後はパージ装置でダンプ弁の残水を除くこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "FES 給水配管 約 100 ft"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-04'> REQ_WTR_04 {
            subject s : Parts::Part;
            doc /* いつでも帰還できるよう給水を 175 lbm 以上、通常の構成では PLS 点火の4時間前に 281 lbm を確保し、タンクAには少なくとも 76%（128 lb）を残すこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "175 lbm、281 lbm（PLS 点火の4時間前）、タンクA 76%（128 lb）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-05'> REQ_WTR_05 {
            subject s : Parts::Part;
            doc /* 給水・廃水タンクを窒素系統1・2のいずれか単独で 15.5〜17.0 psig に加圧し、18.5±1.5 psig で乗員室へ逃がして過圧を防ぎ、窒素で加圧できないときは代替加圧弁で乗員室圧を加えられること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "15.5〜17.0 psig、リリーフ 18.5±1.5 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-06'> REQ_WTR_06 {
            subject s : Parts::Part;
            doc /* 打上げではタンクAを窒素加圧から切り離して乗員室へベントし、生成水を給水タンクへ受け入れて燃料電池の浸水を防ぎ、タンクAが 98（93）% に達する前とタンクBが空になる前に加圧へ戻すこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "98（93）%、ベローズ差圧 15 psid"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-07'> REQ_WTR_07 {
            subject s : Parts::Part;
            doc /* 給水・廃水を船外へダンプでき、給水ダンプはノズル温度 100°F 以上で始めてノズル温度A・Bがともに 90°F 未満で中止し、廃水ダンプはノズル温度 150°F 超で始め、ヒータ作動中のノズル温度を 350°F 以下に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "給水 開始 100°F・中止 90°F、廃水 開始 150°F・上限 350°F"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-08'> REQ_WTR_08 {
            subject s : Parts::Part;
            doc /* 給水・廃水ダンプ配管の非常用クロスタイで一方のノズルから他方の水をダンプでき、CWC（公称 95 lb）に給水・廃水を貯めて ISS への移送や後のダンプに使えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "CWC 公称 95 lb"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-09'> REQ_WTR_09 {
            subject s : Parts::Part;
            doc /* ギャレー給水弁を開けば給水をチラーで冷やす経路と常温の経路でギャレー（非搭載時は Apollo 給水器）へ送り、復水ステーションで 0.5〜8 オンスを 0.5 オンス刻みで温水 145〜165°F・冷水 40〜60°F として給水できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0.5〜8 オンス（0.5 オンス刻み）、温水 145〜165°F、冷水 40〜60°F"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-10'> REQ_WTR_10 {
            subject s : Parts::Part;
            doc /* 飛行1日目にギャレーのヨウ素除去装置（GIRA または LIRS）を取り付け、乗員のヨウ素摂取を1人1日 1 mg 未満に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "1 mg/日/人 未満"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-WTR-11'> REQ_WTR_11 {
            subject s : Parts::Part;
            doc /* 1基の廃水タンク（排出可能量 165 lb）に尿と湿度分離器の凝縮水を受け入れて処分まで貯め、給水タンクと同じ窒素源で加圧すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "廃水タンク 1（165 lb、残量 3.3 lb）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-WTR-12'> REQ_WTR_12 {
            subject s : Parts::Part;
            doc /* 廃水量が 80% に達する前に廃水をダンプし、0（5）% まではダンプしないこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "80%、0（5）%"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'REQ-WCS'> REQ_WCS {
        doc /* 廃棄物収集系（WCS）の L3 要求（SSD-FD-ECL-WCS-001 の下位） */
        requirement <'REQ-WCS-01'> REQ_WCS_01 {
            subject s : Parts::Part;
            doc /* 便器は座面下を毎分 30 ft³ で流れるキャビン空気で糞便を多孔質ライナへ引き込み、疎水性材で自由な液体と細菌を収集器から出さず、不使用時は真空にさらして固形廃棄物を乾燥させること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "30 ft³/min"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-02'> REQ_WCS_02 {
            subject s : Parts::Part;
            doc /* MODE スイッチと COMMODE CONTROL ハンドルを機械的に連動させて望ましくない構成を防ぎ、便器を約 15 秒で加圧してからスライド弁を開き、使用後はハンドルを完全に下げてキャビン空気の損失を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "加圧 約 15 秒"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-03'> REQ_WCS_03 {
            subject s : Parts::Part;
            doc /* 2台のファンセパレータ（回転室 5,800 rpm、115±5 V 三相交流）のどちらかで搬送空気から尿を分離して廃水タンクへ送り、逆止弁で停止側の分離器を通る逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "5,800 rpm、分離能力 0.09 lb/s、115±5 V 三相"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-04'> REQ_WCS_04 {
            subject s : Parts::Part;
            doc /* WCS のすべての気体を臭気・細菌フィルタ（活性炭、0.45 μm を超える粒子の 99.999% を除去）に通して毎分 38 ft³ で乗員室へ戻し、フィルタを飛行中に交換できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0.45 μm・99.999%、38 ft³/min"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-05'> REQ_WCS_05 {
            subject s : Parts::Part;
            doc /* 小便器はファンセパレータが作る毎分 10 ft³ 以上の気流で尿（公称 0.05 lb/s、1回最大 1.8 lb）を廃水タンクへ運び、プレフィルタで気流中の異物を捕らえること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "10 ft³/min 以上、尿 公称 0.05 lb/s・1回最大 1.8 lb"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-06'> REQ_WCS_06 {
            subject s : Parts::Part;
            doc /* EMU の排水中は小便器を使わず（分離器の最大廃水流量 0.09 lbm/s）、乗員室の再与圧中は WCS を使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0.09 lbm/s"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-WCS-07'> REQ_WCS_07 {
            subject s : Parts::Part;
            doc /* 真空ベント系は隔離弁が閉じても弁板のオリフィス（14.7 psia で 3.0±0.25 lb/hr）で水素分離器の H2 を船外へ排出し続け、軌道上は管とノズルのヒータで管内の凍結を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "3.0±0.25 lb/hr（14.7 psia）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-WCS-08'> REQ_WCS_08 {
            subject s : Parts::Part;
            doc /* 真空ベント機能を失った（隔離弁が閉で故障し、便器不使用時の収集器圧力が 1.0 psia 超）場合は、WCS の真空弁を再突入まで開いたまま保ち、廃水ダンプ管を使う非常用の真空ベントで機能を回復するまで便器を使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "収集器圧力 1.0 psia"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-WCS-09'> REQ_WCS_09 {
            subject s : Parts::Part;
            doc /* 便器や尿収集を失ったときに備えて便袋 40 枚、UCD 58 個・UAS 36 個（少なくとも PLS＋2日分）を積み、WCS の喪失の基準を満たせば代替の収集具に切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "便袋 40、UCD 58、UAS 36（PLS＋2日分）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'REQ-FDS'> REQ_FDS {
        doc /* 火災検知・消火系（FDS）の L3 要求（SSD-FD-ECL-FDS-001 の下位） */
        requirement <'REQ-FDS-01'> REQ_FDS_01 {
            subject s : Parts::Part;
            doc /* 乗員室とアビオニクスベイ1・2・3A に煙感知器を計9個（A群5個・B群4個、各ベイに2個）置き、各感知器は煙濃度 2,000±200 µg/m3 が5秒以上続くか、毎秒 22 µg/m3 の増加が20秒間に8回続くと警報信号を出すこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "感知器 9（A群 5・B群 4）、2,000±200 µg/m3（5秒以上）、22 µg/m3/s（20秒間に8回）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-02'> REQ_FDS_02 {
            subject s : Parts::Part;
            doc /* 煙感知器は周囲の空気を連続して吸引して 2ミクロン以下の粒子だけをイオン化式の感知室に入れ、警報と濃度計測の2つの独立な指示を出し、各区画のファンによる空気の循環のもとで働くこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "粒子 2ミクロン以下、所要電力 約 6.5 W"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-03'> REQ_FDS_03 {
            subject s : Parts::Part;
            doc /* 感知器のトリップで、MDM やソフトウェアを介さずにパネル L1 の SMOKE DETECTION 灯・4つの MASTER ALARM 灯・サイレンを作動させ、警報は SENSOR RESET までラッチし、A群と B群を独立にし、CIRCUIT TEST で A・B 群の感知器・灯・20秒の時間遅れを試験できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "MASTER ALARM 灯 4、時間遅れ 20秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-04'> REQ_FDS_04 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ1・2・3A に Halon 消火ボトルを1本ずつ常設し、パネル L1 でアームして AGENT DISCH 押しボタンを2秒以上押すと放出して、ベイの Halon 濃度を消火に要る 4〜5% を超える 7.5〜9.5% にすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ボトル 3（各 3.74〜3.8 lb）、ベイ濃度 7.5〜9.5%（必要 4〜5%）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-05'> REQ_FDS_05 {
            subject s : Parts::Part;
            doc /* 放出したベイの Halon 濃度を、消火に要る 4% を超えて50時間（冷却を強化し能動冷却のペイロードを置いたベイ3Aは28時間）保ち、これを過ぎたか放出音の無い AGENT DISCH 灯の点灯でそのベイの消火を喪失とすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "50時間（ベイ3A 28時間）、4%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-FDS-06'> REQ_FDS_06 {
            subject s : Parts::Part;
            doc /* 乗員室に Halon 1301 の携帯消火器を3本（ミッドデッキに2本、フライトデッキに1本）置き、片手で2秒以内に外せて、先細のノズルを計器盤・ベイの消火ポートに差し込んで全量を放出できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "3本（各 約 3.75 lb）、放出 1 g で 18±2秒・無重量で 30±5秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-07'> REQ_FDS_07 {
            subject s : Parts::Part;
            doc /* 乗員の Halon 1301 への暴露を、7% 以下で15分、7〜10% で1分、10〜15% で30秒までとし、15% を超える暴露を避けること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "7% 以下 15分、7〜10% 1分、10〜15% 30秒、15% 超 不可"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-FDS-08'> REQ_FDS_08 {
            subject s : Parts::Part;
            doc /* 火災は乗員の目視か同じ区画の2個の感知器の 2,000 µg/m3 超などで確かめ、ベイでは Halon の放出とベイファンの停止、乗員室ではキャビンファンの停止・ヘルメットの着用・携帯消火器の放出を直ちに行い、火災後はベイを船外へ 3 lb/hr 以上でパージすること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "2,000 µg/m3、ベイのパージ 3 lb/hr 以上"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-FDS-09'> REQ_FDS_09 {
            subject s : Parts::Part;
            doc /* 回路試験・電源・両ファンの故障で区画の煙検知の喪失を判定し、喪失時はベイ1・2の空冷機器とベイファンの電源を切り、乗員室では乗員1人が常に起きて監視し、指示が2つしか残らなければ毎日回路試験を行うこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'REQ-ALS'> REQ_ALS {
        doc /* エアロック支援系（ALS）の L3 要求（SSD-FD-ECL-ALS-001 の下位） */
        requirement <'REQ-ALS-01'> REQ_ALS_01 {
            subject s : Parts::Part;
            doc /* 外部エアロックは内側・EV・ドッキングの3枚の与圧シール付きハッチを持ち、各ハッチの2個の均圧弁（14.5 psid で NORM 240 lb/hr、EMER 1,278 lb/hr）でエアロックを乗員室と均圧・隔離できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ハッチ 3、均圧弁 2/ハッチ、240・1,278 lb/hr（14.5 psid）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-02'> REQ_ALS_02 {
            subject s : Parts::Part;
            doc /* エアロック減圧弁は「5」位置（0.59 インチのオリフィス）でエアロックを 5 psia へ、「0」位置（1.02 インチ）で 0 psia へ減圧し、同じ弁で乗員室を 14.7 psia から 10.2 psia へ約30分で減圧できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "5・0 psia（0.59・1.02 in）、10.2 psia まで約30分"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-03'> REQ_ALS_03 {
            subject s : Parts::Part;
            doc /* ハッチの漏れによるエアロックの圧力低下を 0.2 psi/min 以下に保ち、乗員室の気密を保ったままエアロックを減圧・再与圧できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "0.2 psi/min"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-04'> REQ_ALS_04 {
            subject s : Parts::Part;
            doc /* 与圧区画の外の6本の水配管は2区域で各配管に3系統のヒータ（1系統ずつ使用）を巻き、区域1・2の配管温度を 32°F（40°F）超に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "6本・2区域・3系統、32°F（40°F）超"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-05'> REQ_ALS_05 {
            subject s : Parts::Part;
            doc /* エアロック外殻の3区域の二重冗長の構造ヒータを軌道上でできるだけ早く入れ、真空時もエアロック内部を氷点以上に保って内部の水配管の凍結と結露を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "3区域・二重冗長、氷点以上"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-06'> REQ_ALS_06 {
            subject s : Parts::Part;
            doc /* EVA の前後は SCU を通じて LCVG の冷却水を2本の閉ループでエアロックへ流し、エアロック内の LCVG 熱交換器でオービタの水冷却ループにより冷やすこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "閉ループ 2"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-07'> REQ_ALS_07 {
            subject s : Parts::Part;
            doc /* LCG 配管の圧力は SCU を外した状態で 28.1 psig（SCU の認定最大使用圧力）以下、SCU を EMU につなぎ EMU が非通電の状態で 18 psig 以下に保ち、有人の EMU へは LCG2 配管の温度が両区域で 92°F 以下のときに水を循環させること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "28.1 psig・18 psig、92°F"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-08'> REQ_ALS_08 {
            subject s : Parts::Part;
            doc /* SCU で EMU へ電力・通信・O2・水冷却・給水を供給し、PLSS の一次 O2 を 850±50 psig で、EMU の給水タンク（約9 lb）をオービタの飲料水で充填できること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "850±50 psig、給水 約9 lb"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-09'> REQ_ALS_09 {
            subject s : Parts::Part;
            doc /* EMU の O2 補給は O2 供給ラインの温度が 80°F（指示値）以下、給水の再充填は給水配管の温度が両区域で 95°F 以下のときに行い、EVA 乗員は EMU の消耗品が残り30分になったらエアロックに入って SCU に接続すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "80°F・95°F、残り30分"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ALS-10'> REQ_ALS_10 {
            subject s : Parts::Part;
            doc /* エアロックの空気と水の圧力、水と構造の温度、ベスティビュール弁の状態を乗員と MCC に示し、SM OPS 2 の SPEC 177 に表示し、各ハッチの差圧を両側の差圧計に表示すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ALS-11'> REQ_ALS_11 {
            subject s : Parts::Part;
            doc /* 吹出口の無いエアロックへ、ダクトとブースタファン（2台、1台ずつ使用、541〜767 lb/hr）でオービタの調整空気を送り、湿度を制御して CO2・O2・N2 のよどみを防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ファン 2台（1台ずつ）、541〜767 lb/hr"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'REQ-ATCS'> REQ_ATCS {
        doc /* 能動熱制御系（ATCS）の L3 要求（SSD-FD-ECL-ATCS-001 の下位） */
        requirement <'REQ-ATCS-01'> REQ_ATCS_01 {
            subject s : Parts::Part;
            doc /* フレオン21冷却ループを同じ構成の2系統とし、各ループはポンプ2台と窒素で加圧したアキュムレータを持ち、通常運用では両ループをそれぞれ1台のポンプで運転すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "ループ 2、ポンプ 各ループ 2台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-02'> REQ_ATCS_02 {
            subject s : Parts::Part;
            doc /* フレオンループは燃料電池熱交換器・中胴コールドプレート・水／フレオン熱交換器・ペイロード熱交換器・後部アビオニクスベイ4〜6のコールドプレートから熱を集め、ECLSS の酸素を約 40°F に温め、左舷の放熱器をループ1、右舷をループ2に直列につなぐこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "O2 約 40°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-03'> REQ_ATCS_03 {
            subject s : Parts::Part;
            doc /* 1ループでの再突入を支えるため、各フレオンループはインターチェンジャの流量 1800 lb/hr 以上と後部コールドプレートの流量 211 lb/hr 以上を保ち、保てないループは喪失と判定すること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "インターチェンジャ 1800 lb/hr、後部コールドプレート 211 lb/hr"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-04'> REQ_ATCS_04 {
            subject s : Parts::Part;
            doc /* FES は上昇中の高度 140,000 ft 超から排熱し、軌道上では放熱器を補い、再突入では高度約 100,000 ft まで排熱して、主制御器でフレオンの出口温度を 39±1°F に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "出口 39±1°F（副制御器 62°F）、水 1 lb あたり約 1,000 Btu"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-05'> REQ_ATCS_05 {
            subject s : Parts::Part;
            doc /* 軌道上はペイロードベイドア内面の放熱器（有効放熱面積 1,195 ft2）で排熱して放熱器の出口温度を 38±2°F（HI では 57±2°F）に保ち、軌道離脱の準備で放熱器をコールドソークして再突入の後段のヒートシンクに使うこと。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "1,195 ft2、出口 38±2°F（HI 57±2°F）"; phases = "PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-06'> REQ_ATCS_06 {
            subject s : Parts::Part;
            doc /* 独立した2系統（各 49 lb）のアンモニア供給系と共通のボイラで、再突入の低高度と着陸後に地上冷却がつながるまでフレオンループを冷やし、主制御器の故障で出口温度が 31.25°F を10秒を超えて下回れば副制御器へ自動で切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "タンク 2（各 49 lb）、31.25°F・10秒"; phases = "PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ATCS-07'> REQ_ATCS_07 {
            subject s : Parts::Part;
            doc /* 打上げ前と着陸後は T-0 アンビリカルの GSE 熱交換器を地上冷却につないで排熱し、リフトオフから FES の起動まではループの熱容量で温度上昇を抑えること。 */
            @RequirementInfo { document = "SSD-RQL-ECL-001"; valueText = "冷却カートの接続 着陸後 約30分以内"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    // ---- L2（REQ-ECLSS）から L3 への導出（本書の「上位」の欄）
    package Derivation {
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_01;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_02;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_03;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_04;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_05;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_06;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_07;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_08;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_09;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_10;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_11;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_12;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_13;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_14;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_15;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_16;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_17;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_18;
        }
        #derivation connection <'REQ-ECLSS-06>REQ-ARS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_06;
            end #derive ::> REQ_ARS::REQ_ARS_19;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_20;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_21;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_22;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_23;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_24;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_25;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_26;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_27;
        }
        #derivation connection <'REQ-ECLSS-12>REQ-ARS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
            end #derive ::> REQ_ARS::REQ_ARS_27;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_28;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-ARS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_ARS::REQ_ARS_28;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_29;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_30;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ARS-31'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ARS::REQ_ARS_31;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-32'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_32;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-33'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_33;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-34'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_34;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-35'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_35;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-36'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_36;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-37'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_37;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-38'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_38;
        }
        #derivation connection <'REQ-ECLSS-09>REQ-ARS-38'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
            end #derive ::> REQ_ARS::REQ_ARS_38;
        }
        #derivation connection <'REQ-ECLSS-07>REQ-ARS-39'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> REQ_ARS::REQ_ARS_39;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_01;
        }
        #derivation connection <'REQ-ECLSS-03>REQ-PCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
            end #derive ::> REQ_PCS::REQ_PCS_01;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_02;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_03;
        }
        #derivation connection <'REQ-ECLSS-03>REQ-PCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
            end #derive ::> REQ_PCS::REQ_PCS_04;
        }
        #derivation connection <'REQ-ECLSS-03>REQ-PCS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
            end #derive ::> REQ_PCS::REQ_PCS_05;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_06;
        }
        #derivation connection <'REQ-ECLSS-03>REQ-PCS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
            end #derive ::> REQ_PCS::REQ_PCS_07;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_07;
        }
        #derivation connection <'REQ-ECLSS-02>REQ-PCS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
            end #derive ::> REQ_PCS::REQ_PCS_08;
        }
        #derivation connection <'REQ-ECLSS-02>REQ-PCS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
            end #derive ::> REQ_PCS::REQ_PCS_09;
        }
        #derivation connection <'REQ-ECLSS-02>REQ-PCS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
            end #derive ::> REQ_PCS::REQ_PCS_10;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_10;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-PCS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_PCS::REQ_PCS_11;
        }
        #derivation connection <'REQ-ECLSS-01>REQ-PCS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> REQ_PCS::REQ_PCS_11;
        }
        #derivation connection <'REQ-ECLSS-03>REQ-PCS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_03;
            end #derive ::> REQ_PCS::REQ_PCS_12;
        }
        #derivation connection <'REQ-ECLSS-02>REQ-PCS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_02;
            end #derive ::> REQ_PCS::REQ_PCS_12;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_01;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_02;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_03;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_04;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_05;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_06;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_07;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_08;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_09;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_10;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_11;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-WTR-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_WTR::REQ_WTR_12;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_01;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_02;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_03;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_04;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_05;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_06;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_07;
        }
        #derivation connection <'REQ-ECLSS-13>REQ-WCS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> REQ_WCS::REQ_WCS_08;
        }
        #derivation connection <'REQ-ECLSS-12>REQ-WCS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
            end #derive ::> REQ_WCS::REQ_WCS_09;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_01;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_02;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_03;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_04;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_05;
        }
        #derivation connection <'REQ-ECLSS-12>REQ-FDS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
            end #derive ::> REQ_FDS::REQ_FDS_05;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_06;
        }
        #derivation connection <'REQ-ECLSS-11>REQ-FDS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> REQ_FDS::REQ_FDS_07;
        }
        #derivation connection <'REQ-ECLSS-12>REQ-FDS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
            end #derive ::> REQ_FDS::REQ_FDS_08;
        }
        #derivation connection <'REQ-ECLSS-12>REQ-FDS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_12;
            end #derive ::> REQ_FDS::REQ_FDS_09;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_01;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_02;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_03;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-ALS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_ALS::REQ_ALS_04;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-ALS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_ALS::REQ_ALS_05;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_05;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_06;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_07;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_08;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_09;
        }
        #derivation connection <'REQ-ECLSS-04>REQ-ALS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> REQ_ALS::REQ_ALS_10;
        }
        #derivation connection <'REQ-ECLSS-10>REQ-ALS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> REQ_ALS::REQ_ALS_10;
        }
        #derivation connection <'REQ-ECLSS-05>REQ-ALS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> REQ_ALS::REQ_ALS_11;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_01;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_02;
        }
        #derivation connection <'REQ-ECLSS-09>REQ-ATCS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_09;
            end #derive ::> REQ_ATCS::REQ_ATCS_03;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_04;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_05;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_06;
        }
        #derivation connection <'REQ-ECLSS-08>REQ-ATCS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> REQ_ATCS::REQ_ATCS_07;
        }
    }
    // ---- 充足（割付先の機能行を持つ機能説明書の部品）
    package Satisfaction {
        satisfy REQ_ARS::REQ_ARS_01 by context.sts.orb.eclss.ars.cac { doc /* 割付先：F-ARS-CAC-01・F-ARS-CAC-02・F-ARS-CAC-03・F-ARS-CAC-04 */ }
        satisfy REQ_ARS::REQ_ARS_01 by context.sts.orb.eclss.ars.cac.fan { doc /* 割付先：F-CAC-FAN-01・F-CAC-FAN-02・F-CAC-FAN-03・F-CAC-FAN-04・F-CAC-FAN-05・F-CAC-FAN-06 */ }
        satisfy REQ_ARS::REQ_ARS_01 by context.sts.orb.eclss.ars.cac.dct { doc /* 割付先：F-CAC-DCT-03・F-CAC-DCT-04 */ }
        satisfy REQ_ARS::REQ_ARS_02 by context.sts.orb.eclss.ars.cac { doc /* 割付先：F-ARS-CAC-05・F-ARS-CAC-10 */ }
        satisfy REQ_ARS::REQ_ARS_02 by context.sts.orb.eclss.ars.cac.fan { doc /* 割付先：F-CAC-FAN-07・F-CAC-FAN-08・F-CAC-FAN-09 */ }
        satisfy REQ_ARS::REQ_ARS_02 by context.sts.orb.eclss.ars.cac.ops { doc /* 割付先：F-CAC-OPS-06・F-CAC-OPS-07・F-CAC-OPS-08・F-CAC-OPS-09 */ }
        satisfy REQ_ARS::REQ_ARS_03 by context.sts.orb.eclss.ars.cac { doc /* 割付先：F-ARS-CAC-11 */ }
        satisfy REQ_ARS::REQ_ARS_03 by context.sts.orb.eclss.ars.cac.rtn { doc /* 割付先：F-CAC-RTN-01・F-CAC-RTN-02・F-CAC-RTN-03・F-CAC-RTN-04・F-CAC-RTN-05・F-CAC-RTN-06・F-CAC-RTN-07・F-CAC-RTN-08 */ }
        satisfy REQ_ARS::REQ_ARS_04 by context.sts.orb.eclss.ars.cac { doc /* 割付先：F-ARS-CAC-06 */ }
        satisfy REQ_ARS::REQ_ARS_04 by context.sts.orb.eclss.ars.cac.mon { doc /* 割付先：F-CAC-MON-01・F-CAC-MON-02・F-CAC-MON-03・F-CAC-MON-04・F-CAC-MON-05・F-CAC-MON-06・F-CAC-MON-07・F-CAC-MON-08・F-CAC-MON-11・F-CAC-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_05 by context.sts.orb.eclss.ars.cac { doc /* 割付先：F-ARS-CAC-07・F-ARS-CAC-08・F-ARS-CAC-09 */ }
        satisfy REQ_ARS::REQ_ARS_05 by context.sts.orb.eclss.ars.cac.ops { doc /* 割付先：F-CAC-OPS-01・F-CAC-OPS-02・F-CAC-OPS-03・F-CAC-OPS-04・F-CAC-OPS-05・F-CAC-OPS-10・F-CAC-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_05 by context.sts.orb.eclss.ars.cac.mon { doc /* 割付先：F-CAC-MON-09・F-CAC-MON-10 */ }
        satisfy REQ_ARS::REQ_ARS_05 by context.sts.orb.eclss.ars.cac.dct { doc /* 割付先：F-CAC-DCT-11 */ }
        satisfy REQ_ARS::REQ_ARS_06 by context.sts.orb.eclss.ars.cac.ops { doc /* 割付先：F-CAC-OPS-11 */ }
        satisfy REQ_ARS::REQ_ARS_06 by context.sts.orb.eclss.ars.cac.rtn { doc /* 割付先：F-CAC-RTN-12 */ }
        satisfy REQ_ARS::REQ_ARS_06 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-06 */ }
        satisfy REQ_ARS::REQ_ARS_06 by context.sts.orb.eclss.ars.co2.atco { doc /* 割付先：F-CO2-ATCO-08 */ }
        satisfy REQ_ARS::REQ_ARS_06 by context.sts.orb.eclss.ars.co2.can { doc /* 割付先：F-CO2-CAN-09・F-CO2-CAN-11・F-CO2-CAN-12 */ }
        satisfy REQ_ARS::REQ_ARS_07 by context.sts.orb.eclss.ars.cac.dct { doc /* 割付先：F-CAC-DCT-06・F-CAC-DCT-07・F-CAC-DCT-08・F-CAC-DCT-09 */ }
        satisfy REQ_ARS::REQ_ARS_08 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-01 */ }
        satisfy REQ_ARS::REQ_ARS_08 by context.sts.orb.eclss.ars.cac.dct { doc /* 割付先：F-CAC-DCT-01・F-CAC-DCT-02 */ }
        satisfy REQ_ARS::REQ_ARS_08 by context.sts.orb.eclss.ars.co2.abs { doc /* 割付先：F-CO2-ABS-01・F-CO2-ABS-02・F-CO2-ABS-03・F-CO2-ABS-04・F-CO2-ABS-05・F-CO2-ABS-06 */ }
        satisfy REQ_ARS::REQ_ARS_09 by context.sts.orb.eclss.ars.co2.can { doc /* 割付先：F-CO2-CAN-01・F-CO2-CAN-02・F-CO2-CAN-03・F-CO2-CAN-04・F-CO2-CAN-05・F-CO2-CAN-06・F-CO2-CAN-07・F-CO2-CAN-08・F-CO2-CAN-10 */ }
        satisfy REQ_ARS::REQ_ARS_10 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-02・F-ARS-CO2-04・F-ARS-CO2-07・F-ARS-CO2-09・F-ARS-CO2-10 */ }
        satisfy REQ_ARS::REQ_ARS_10 by context.sts.orb.eclss.ars.co2.mon { doc /* 割付先：F-CO2-MON-05 */ }
        satisfy REQ_ARS::REQ_ARS_10 by context.sts.orb.eclss.ars.co2.stw { doc /* 割付先：F-CO2-STW-03・F-CO2-STW-04・F-CO2-STW-05・F-CO2-STW-06・F-CO2-STW-07・F-CO2-STW-08・F-CO2-STW-10 */ }
        satisfy REQ_ARS::REQ_ARS_11 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-11 */ }
        satisfy REQ_ARS::REQ_ARS_11 by context.sts.orb.eclss.ars.co2.mon { doc /* 割付先：F-CO2-MON-01・F-CO2-MON-02・F-CO2-MON-03・F-CO2-MON-04・F-CO2-MON-07・F-CO2-MON-08・F-CO2-MON-09・F-CO2-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_12 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-03・F-ARS-CO2-08 */ }
        satisfy REQ_ARS::REQ_ARS_12 by context.sts.orb.eclss.ars.co2.stw { doc /* 割付先：F-CO2-STW-01・F-CO2-STW-02・F-CO2-STW-09・F-CO2-STW-11・F-CO2-STW-12 */ }
        satisfy REQ_ARS::REQ_ARS_13 by context.sts.orb.eclss.ars.co2 { doc /* 割付先：F-ARS-CO2-05 */ }
        satisfy REQ_ARS::REQ_ARS_13 by context.sts.orb.eclss.ars.co2.atco { doc /* 割付先：F-CO2-ATCO-01・F-CO2-ATCO-02・F-CO2-ATCO-03・F-CO2-ATCO-04・F-CO2-ATCO-05・F-CO2-ATCO-06・F-CO2-ATCO-07・F-CO2-ATCO-10 */ }
        satisfy REQ_ARS::REQ_ARS_14 by context.sts.orb.eclss.ars.rcrs { doc /* 割付先：F-ARS-RCRS-01・F-ARS-RCRS-02・F-ARS-RCRS-03・F-ARS-RCRS-05 */ }
        satisfy REQ_ARS::REQ_ARS_14 by context.sts.orb.eclss.ars.rcrs.bed { doc /* 割付先：F-ARS-RCRS-BED-01・F-ARS-RCRS-BED-02・F-ARS-RCRS-BED-03・F-ARS-RCRS-BED-04・F-ARS-RCRS-BED-05・F-ARS-RCRS-BED-06・F-ARS-RCRS-BED-07・F-ARS-RCRS-BED-08・F-ARS-RCRS-BED-09 */ }
        satisfy REQ_ARS::REQ_ARS_14 by context.sts.orb.eclss.ars.rcrs.ctl { doc /* 割付先：F-ARS-RCRS-CTL-03・F-ARS-RCRS-CTL-04・F-ARS-RCRS-CTL-05・F-ARS-RCRS-CTL-11 */ }
        satisfy REQ_ARS::REQ_ARS_15 by context.sts.orb.eclss.ars.rcrs { doc /* 割付先：F-ARS-RCRS-06 */ }
        satisfy REQ_ARS::REQ_ARS_15 by context.sts.orb.eclss.ars.rcrs.fan { doc /* 割付先：F-ARS-RCRS-FAN-01・F-ARS-RCRS-FAN-02・F-ARS-RCRS-FAN-03・F-ARS-RCRS-FAN-04・F-ARS-RCRS-FAN-05・F-ARS-RCRS-FAN-06・F-ARS-RCRS-FAN-07・F-ARS-RCRS-FAN-08 */ }
        satisfy REQ_ARS::REQ_ARS_15 by context.sts.orb.eclss.ars.cac.rtn { doc /* 割付先：F-CAC-RTN-10 */ }
        satisfy REQ_ARS::REQ_ARS_16 by context.sts.orb.eclss.ars.rcrs { doc /* 割付先：F-ARS-RCRS-07 */ }
        satisfy REQ_ARS::REQ_ARS_16 by context.sts.orb.eclss.ars.rcrs.ctl { doc /* 割付先：F-ARS-RCRS-CTL-01・F-ARS-RCRS-CTL-02・F-ARS-RCRS-CTL-06・F-ARS-RCRS-CTL-07・F-ARS-RCRS-CTL-08・F-ARS-RCRS-CTL-09・F-ARS-RCRS-CTL-10・F-ARS-RCRS-CTL-12 */ }
        satisfy REQ_ARS::REQ_ARS_17 by context.sts.orb.eclss.ars.rcrs.mon { doc /* 割付先：F-ARS-RCRS-MON-01・F-ARS-RCRS-MON-02・F-ARS-RCRS-MON-03・F-ARS-RCRS-MON-04・F-ARS-RCRS-MON-05・F-ARS-RCRS-MON-06・F-ARS-RCRS-MON-07・F-ARS-RCRS-MON-08・F-ARS-RCRS-MON-09 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.rcrs { doc /* 割付先：F-ARS-RCRS-04・F-ARS-RCRS-08・F-ARS-RCRS-09・F-ARS-RCRS-10 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.rcrs.ops { doc /* 割付先：F-ARS-RCRS-OPS-01・F-ARS-RCRS-OPS-02・F-ARS-RCRS-OPS-03・F-ARS-RCRS-OPS-04・F-ARS-RCRS-OPS-05・F-ARS-RCRS-OPS-06・F-ARS-RCRS-OPS-07・F-ARS-RCRS-OPS-08・F-ARS-RCRS-OPS-09・F-ARS-RCRS-OPS-10・F-ARS-RCRS-OPS-11・F-ARS-RCRS-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.rcrs.bed { doc /* 割付先：F-ARS-RCRS-BED-10・F-ARS-RCRS-BED-11 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.rcrs.mon { doc /* 割付先：F-ARS-RCRS-MON-10 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.rcrs.fan { doc /* 割付先：F-ARS-RCRS-FAN-09 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.co2.mon { doc /* 割付先：F-CO2-MON-06 */ }
        satisfy REQ_ARS::REQ_ARS_18 by context.sts.orb.eclss.ars.co2.abs { doc /* 割付先：F-CO2-ABS-07 */ }
        satisfy REQ_ARS::REQ_ARS_19 by context.sts.orb.eclss.ars.rcrs { doc /* 割付先：F-ARS-RCRS-11 */ }
        satisfy REQ_ARS::REQ_ARS_19 by context.sts.orb.eclss.ars.rcrs.usc { doc /* 割付先：F-ARS-RCRS-USC-01・F-ARS-RCRS-USC-02・F-ARS-RCRS-USC-03・F-ARS-RCRS-USC-04・F-ARS-RCRS-USC-05・F-ARS-RCRS-USC-06・F-ARS-RCRS-USC-07・F-ARS-RCRS-USC-08・F-ARS-RCRS-USC-09・F-ARS-RCRS-USC-10・F-ARS-RCRS-USC-11 */ }
        satisfy REQ_ARS::REQ_ARS_20 by context.sts.orb.eclss.ars.thc { doc /* 割付先：F-ARS-THC-01・F-ARS-THC-02・F-ARS-THC-03・F-ARS-THC-06 */ }
        satisfy REQ_ARS::REQ_ARS_20 by context.sts.orb.eclss.ars.thc.tcv { doc /* 割付先：F-ARS-THC-TCV-01・F-ARS-THC-TCV-02・F-ARS-THC-TCV-03・F-ARS-THC-TCV-04・F-ARS-THC-TCV-05・F-ARS-THC-TCV-06・F-ARS-THC-TCV-07・F-ARS-THC-TCV-08・F-ARS-THC-TCV-09・F-ARS-THC-TCV-10・F-ARS-THC-TCV-11 */ }
        satisfy REQ_ARS::REQ_ARS_21 by context.sts.orb.eclss.ars.thc { doc /* 割付先：F-ARS-THC-07・F-ARS-THC-08・F-ARS-THC-09 */ }
        satisfy REQ_ARS::REQ_ARS_21 by context.sts.orb.eclss.ars.thc.hx { doc /* 割付先：F-ARS-THC-HX-01・F-ARS-THC-HX-02・F-ARS-THC-HX-03・F-ARS-THC-HX-04・F-ARS-THC-HX-05・F-ARS-THC-HX-06・F-ARS-THC-HX-07・F-ARS-THC-HX-09・F-ARS-THC-HX-10 */ }
        satisfy REQ_ARS::REQ_ARS_21 by context.sts.orb.eclss.ars.thc.sep { doc /* 割付先：F-ARS-THC-SEP-01・F-ARS-THC-SEP-02・F-ARS-THC-SEP-03・F-ARS-THC-SEP-04・F-ARS-THC-SEP-05・F-ARS-THC-SEP-06・F-ARS-THC-SEP-07・F-ARS-THC-SEP-08・F-ARS-THC-SEP-09・F-ARS-THC-SEP-11 */ }
        satisfy REQ_ARS::REQ_ARS_22 by context.sts.orb.eclss.ars.thc { doc /* 割付先：F-ARS-THC-05・F-ARS-THC-11 */ }
        satisfy REQ_ARS::REQ_ARS_22 by context.sts.orb.eclss.ars.thc.mon { doc /* 割付先：F-ARS-THC-MON-01・F-ARS-THC-MON-02・F-ARS-THC-MON-03・F-ARS-THC-MON-04・F-ARS-THC-MON-05・F-ARS-THC-MON-06・F-ARS-THC-MON-07・F-ARS-THC-MON-08・F-ARS-THC-MON-09・F-ARS-THC-MON-10・F-ARS-THC-MON-11・F-ARS-THC-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_23 by context.sts.orb.eclss.ars.thc { doc /* 割付先：F-ARS-THC-04・F-ARS-THC-10 */ }
        satisfy REQ_ARS::REQ_ARS_23 by context.sts.orb.eclss.ars.thc.ops { doc /* 割付先：F-ARS-THC-OPS-01・F-ARS-THC-OPS-02・F-ARS-THC-OPS-03・F-ARS-THC-OPS-04・F-ARS-THC-OPS-05・F-ARS-THC-OPS-06・F-ARS-THC-OPS-07・F-ARS-THC-OPS-08・F-ARS-THC-OPS-09・F-ARS-THC-OPS-10・F-ARS-THC-OPS-11・F-ARS-THC-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_23 by context.sts.orb.eclss.ars.thc.hx { doc /* 割付先：F-ARS-THC-HX-08 */ }
        satisfy REQ_ARS::REQ_ARS_23 by context.sts.orb.eclss.ars.thc.sep { doc /* 割付先：F-ARS-THC-SEP-10・F-ARS-THC-SEP-12 */ }
        satisfy REQ_ARS::REQ_ARS_24 by context.sts.orb.eclss.ars.avb { doc /* 割付先：F-ARS-AVB-01・F-ARS-AVB-02・F-ARS-AVB-03・F-ARS-AVB-05 */ }
        satisfy REQ_ARS::REQ_ARS_24 by context.sts.orb.eclss.ars.avb.cir { doc /* 割付先：F-ARS-AVB-CIR-01・F-ARS-AVB-CIR-02・F-ARS-AVB-CIR-03・F-ARS-AVB-CIR-04・F-ARS-AVB-CIR-08・F-ARS-AVB-CIR-09・F-ARS-AVB-CIR-10・F-ARS-AVB-CIR-11 */ }
        satisfy REQ_ARS::REQ_ARS_24 by context.sts.orb.eclss.ars.avb.fan { doc /* 割付先：F-ARS-AVB-FAN-01・F-ARS-AVB-FAN-02・F-ARS-AVB-FAN-03・F-ARS-AVB-FAN-04・F-ARS-AVB-FAN-05・F-ARS-AVB-FAN-06・F-ARS-AVB-FAN-07・F-ARS-AVB-FAN-08・F-ARS-AVB-FAN-09 */ }
        satisfy REQ_ARS::REQ_ARS_24 by context.sts.orb.eclss.ars.avb.hx { doc /* 割付先：F-ARS-AVB-HX-01・F-ARS-AVB-HX-02・F-ARS-AVB-HX-03・F-ARS-AVB-HX-04・F-ARS-AVB-HX-05 */ }
        satisfy REQ_ARS::REQ_ARS_25 by context.sts.orb.eclss.ars.avb { doc /* 割付先：F-ARS-AVB-04・F-ARS-AVB-07・F-ARS-AVB-12 */ }
        satisfy REQ_ARS::REQ_ARS_25 by context.sts.orb.eclss.ars.avb.mon { doc /* 割付先：F-ARS-AVB-MON-01・F-ARS-AVB-MON-02・F-ARS-AVB-MON-03・F-ARS-AVB-MON-04・F-ARS-AVB-MON-05・F-ARS-AVB-MON-06・F-ARS-AVB-MON-07・F-ARS-AVB-MON-08・F-ARS-AVB-MON-09・F-ARS-AVB-MON-10・F-ARS-AVB-MON-11・F-ARS-AVB-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_25 by context.sts.orb.eclss.ars.avb.ops { doc /* 割付先：F-ARS-AVB-OPS-01・F-ARS-AVB-OPS-05 */ }
        satisfy REQ_ARS::REQ_ARS_26 by context.sts.orb.eclss.ars.avb { doc /* 割付先：F-ARS-AVB-06・F-ARS-AVB-08・F-ARS-AVB-09・F-ARS-AVB-11 */ }
        satisfy REQ_ARS::REQ_ARS_26 by context.sts.orb.eclss.ars.avb.cir { doc /* 割付先：F-ARS-AVB-CIR-05・F-ARS-AVB-CIR-06・F-ARS-AVB-CIR-07 */ }
        satisfy REQ_ARS::REQ_ARS_26 by context.sts.orb.eclss.ars.avb.fan { doc /* 割付先：F-ARS-AVB-FAN-10・F-ARS-AVB-FAN-11・F-ARS-AVB-FAN-12 */ }
        satisfy REQ_ARS::REQ_ARS_26 by context.sts.orb.eclss.ars.avb.hx { doc /* 割付先：F-ARS-AVB-HX-06・F-ARS-AVB-HX-07・F-ARS-AVB-HX-08・F-ARS-AVB-HX-09・F-ARS-AVB-HX-10 */ }
        satisfy REQ_ARS::REQ_ARS_26 by context.sts.orb.eclss.ars.avb.ops { doc /* 割付先：F-ARS-AVB-OPS-02・F-ARS-AVB-OPS-03・F-ARS-AVB-OPS-04・F-ARS-AVB-OPS-06・F-ARS-AVB-OPS-07・F-ARS-AVB-OPS-11・F-ARS-AVB-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_27 by context.sts.orb.eclss.ars.avb { doc /* 割付先：F-ARS-AVB-10 */ }
        satisfy REQ_ARS::REQ_ARS_27 by context.sts.orb.eclss.ars.avb.ops { doc /* 割付先：F-ARS-AVB-OPS-09・F-ARS-AVB-OPS-10 */ }
        satisfy REQ_ARS::REQ_ARS_27 by context.sts.orb.eclss.ars.imu { doc /* 割付先：F-ARS-IMU-09 */ }
        satisfy REQ_ARS::REQ_ARS_27 by context.sts.orb.eclss.ars.imu.ops { doc /* 割付先：F-ARS-IMU-OPS-09 */ }
        satisfy REQ_ARS::REQ_ARS_28 by context.sts.orb.eclss.ars.avb.ops { doc /* 割付先：F-ARS-AVB-OPS-08 */ }
        satisfy REQ_ARS::REQ_ARS_28 by context.sts.orb.eclss.ars.imu.ops { doc /* 割付先：F-ARS-IMU-OPS-08 */ }
        satisfy REQ_ARS::REQ_ARS_29 by context.sts.orb.eclss.ars.imu { doc /* 割付先：F-ARS-IMU-01・F-ARS-IMU-02・F-ARS-IMU-03・F-ARS-IMU-04 */ }
        satisfy REQ_ARS::REQ_ARS_29 by context.sts.orb.eclss.ars.imu.fan { doc /* 割付先：F-ARS-IMU-FAN-01・F-ARS-IMU-FAN-02・F-ARS-IMU-FAN-03・F-ARS-IMU-FAN-04・F-ARS-IMU-FAN-05・F-ARS-IMU-FAN-06・F-ARS-IMU-FAN-07・F-ARS-IMU-FAN-08・F-ARS-IMU-FAN-10・F-ARS-IMU-FAN-11 */ }
        satisfy REQ_ARS::REQ_ARS_29 by context.sts.orb.eclss.ars.imu.hex { doc /* 割付先：F-ARS-IMU-HEX-01・F-ARS-IMU-HEX-02・F-ARS-IMU-HEX-03・F-ARS-IMU-HEX-04・F-ARS-IMU-HEX-05・F-ARS-IMU-HEX-06・F-ARS-IMU-HEX-07・F-ARS-IMU-HEX-11・F-ARS-IMU-HEX-12 */ }
        satisfy REQ_ARS::REQ_ARS_29 by context.sts.orb.eclss.ars.imu.inl { doc /* 割付先：F-ARS-IMU-INL-01・F-ARS-IMU-INL-02・F-ARS-IMU-INL-03・F-ARS-IMU-INL-04・F-ARS-IMU-INL-09・F-ARS-IMU-INL-10 */ }
        satisfy REQ_ARS::REQ_ARS_30 by context.sts.orb.eclss.ars.imu { doc /* 割付先：F-ARS-IMU-06・F-ARS-IMU-07・F-ARS-IMU-08 */ }
        satisfy REQ_ARS::REQ_ARS_30 by context.sts.orb.eclss.ars.imu.fan { doc /* 割付先：F-ARS-IMU-FAN-09 */ }
        satisfy REQ_ARS::REQ_ARS_30 by context.sts.orb.eclss.ars.imu.hex { doc /* 割付先：F-ARS-IMU-HEX-08 */ }
        satisfy REQ_ARS::REQ_ARS_30 by context.sts.orb.eclss.ars.imu.mon { doc /* 割付先：F-ARS-IMU-MON-01・F-ARS-IMU-MON-02・F-ARS-IMU-MON-03・F-ARS-IMU-MON-04・F-ARS-IMU-MON-05・F-ARS-IMU-MON-06・F-ARS-IMU-MON-07・F-ARS-IMU-MON-08・F-ARS-IMU-MON-09・F-ARS-IMU-MON-10・F-ARS-IMU-MON-11・F-ARS-IMU-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_30 by context.sts.orb.eclss.ars.imu.ops { doc /* 割付先：F-ARS-IMU-OPS-03・F-ARS-IMU-OPS-04・F-ARS-IMU-OPS-05 */ }
        satisfy REQ_ARS::REQ_ARS_31 by context.sts.orb.eclss.ars.imu { doc /* 割付先：F-ARS-IMU-05・F-ARS-IMU-10・F-ARS-IMU-11 */ }
        satisfy REQ_ARS::REQ_ARS_31 by context.sts.orb.eclss.ars.imu.hex { doc /* 割付先：F-ARS-IMU-HEX-09・F-ARS-IMU-HEX-10 */ }
        satisfy REQ_ARS::REQ_ARS_31 by context.sts.orb.eclss.ars.imu.inl { doc /* 割付先：F-ARS-IMU-INL-05・F-ARS-IMU-INL-06・F-ARS-IMU-INL-07・F-ARS-IMU-INL-08 */ }
        satisfy REQ_ARS::REQ_ARS_31 by context.sts.orb.eclss.ars.imu.ops { doc /* 割付先：F-ARS-IMU-OPS-01・F-ARS-IMU-OPS-02・F-ARS-IMU-OPS-06・F-ARS-IMU-OPS-07・F-ARS-IMU-OPS-10・F-ARS-IMU-OPS-11・F-ARS-IMU-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_32 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-01・F-ARS-WCL-06 */ }
        satisfy REQ_ARS::REQ_ARS_32 by context.sts.orb.eclss.ars.wcl.pmp { doc /* 割付先：F-ARS-WCL-PMP-01・F-ARS-WCL-PMP-02・F-ARS-WCL-PMP-03・F-ARS-WCL-PMP-04・F-ARS-WCL-PMP-05・F-ARS-WCL-PMP-06・F-ARS-WCL-PMP-07・F-ARS-WCL-PMP-08・F-ARS-WCL-PMP-10・F-ARS-WCL-PMP-12 */ }
        satisfy REQ_ARS::REQ_ARS_33 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-02・F-ARS-WCL-03 */ }
        satisfy REQ_ARS::REQ_ARS_33 by context.sts.orb.eclss.ars.wcl.avl { doc /* 割付先：F-ARS-WCL-AVL-01・F-ARS-WCL-AVL-02・F-ARS-WCL-AVL-03・F-ARS-WCL-AVL-04・F-ARS-WCL-AVL-05・F-ARS-WCL-AVL-06・F-ARS-WCL-AVL-07・F-ARS-WCL-AVL-08・F-ARS-WCL-AVL-10・F-ARS-WCL-AVL-11 */ }
        satisfy REQ_ARS::REQ_ARS_33 by context.sts.orb.eclss.ars.wcl.cld { doc /* 割付先：F-ARS-WCL-CLD-01・F-ARS-WCL-CLD-02・F-ARS-WCL-CLD-03・F-ARS-WCL-CLD-04・F-ARS-WCL-CLD-05・F-ARS-WCL-CLD-06・F-ARS-WCL-CLD-07・F-ARS-WCL-CLD-09・F-ARS-WCL-CLD-10・F-ARS-WCL-CLD-11 */ }
        satisfy REQ_ARS::REQ_ARS_34 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-04・F-ARS-WCL-05・F-ARS-WCL-10 */ }
        satisfy REQ_ARS::REQ_ARS_34 by context.sts.orb.eclss.ars.wcl.ich { doc /* 割付先：F-ARS-WCL-ICH-01・F-ARS-WCL-ICH-02・F-ARS-WCL-ICH-03・F-ARS-WCL-ICH-04・F-ARS-WCL-ICH-05・F-ARS-WCL-ICH-06・F-ARS-WCL-ICH-07・F-ARS-WCL-ICH-08・F-ARS-WCL-ICH-09・F-ARS-WCL-ICH-12 */ }
        satisfy REQ_ARS::REQ_ARS_34 by context.sts.orb.eclss.ars.wcl.ops { doc /* 割付先：F-ARS-WCL-OPS-01・F-ARS-WCL-OPS-02 */ }
        satisfy REQ_ARS::REQ_ARS_35 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-08 */ }
        satisfy REQ_ARS::REQ_ARS_35 by context.sts.orb.eclss.ars.wcl.ops { doc /* 割付先：F-ARS-WCL-OPS-03・F-ARS-WCL-OPS-04・F-ARS-WCL-OPS-05 */ }
        satisfy REQ_ARS::REQ_ARS_36 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-07・F-ARS-WCL-14 */ }
        satisfy REQ_ARS::REQ_ARS_36 by context.sts.orb.eclss.ars.wcl.mon { doc /* 割付先：F-ARS-WCL-MON-01・F-ARS-WCL-MON-02・F-ARS-WCL-MON-03・F-ARS-WCL-MON-04・F-ARS-WCL-MON-05・F-ARS-WCL-MON-06・F-ARS-WCL-MON-07・F-ARS-WCL-MON-08・F-ARS-WCL-MON-09・F-ARS-WCL-MON-10・F-ARS-WCL-MON-12 */ }
        satisfy REQ_ARS::REQ_ARS_36 by context.sts.orb.eclss.ars.wcl.pmp { doc /* 割付先：F-ARS-WCL-PMP-09 */ }
        satisfy REQ_ARS::REQ_ARS_37 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-09・F-ARS-WCL-12 */ }
        satisfy REQ_ARS::REQ_ARS_37 by context.sts.orb.eclss.ars.wcl.avl { doc /* 割付先：F-ARS-WCL-AVL-09 */ }
        satisfy REQ_ARS::REQ_ARS_37 by context.sts.orb.eclss.ars.wcl.pmp { doc /* 割付先：F-ARS-WCL-PMP-11 */ }
        satisfy REQ_ARS::REQ_ARS_37 by context.sts.orb.eclss.ars.wcl.ops { doc /* 割付先：F-ARS-WCL-OPS-06・F-ARS-WCL-OPS-07・F-ARS-WCL-OPS-08・F-ARS-WCL-OPS-09・F-ARS-WCL-OPS-11・F-ARS-WCL-OPS-12 */ }
        satisfy REQ_ARS::REQ_ARS_38 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-13 */ }
        satisfy REQ_ARS::REQ_ARS_38 by context.sts.orb.eclss.ars.wcl.ops { doc /* 割付先：F-ARS-WCL-OPS-10 */ }
        satisfy REQ_ARS::REQ_ARS_39 by context.sts.orb.eclss.ars.wcl { doc /* 割付先：F-ARS-WCL-11 */ }
        satisfy REQ_ARS::REQ_ARS_39 by context.sts.orb.eclss.ars.wcl.ich { doc /* 割付先：F-ARS-WCL-ICH-10・F-ARS-WCL-ICH-11 */ }
        satisfy REQ_ARS::REQ_ARS_39 by context.sts.orb.eclss.ars.wcl.cld { doc /* 割付先：F-ARS-WCL-CLD-08 */ }
        satisfy REQ_ARS::REQ_ARS_39 by context.sts.orb.eclss.ars.wcl.mon { doc /* 割付先：F-ARS-WCL-MON-11 */ }
        satisfy REQ_PCS::REQ_PCS_01 by context.sts.orb.eclss.pcs.mnf { doc /* 割付先：F-ECL-PCS-MNF-01・F-ECL-PCS-MNF-02・F-ECL-PCS-MNF-03・F-ECL-PCS-MNF-04 */ }
        satisfy REQ_PCS::REQ_PCS_02 by context.sts.orb.eclss.pcs.mnf { doc /* 割付先：F-ECL-PCS-MNF-05・F-ECL-PCS-MNF-06・F-ECL-PCS-MNF-07・F-ECL-PCS-MNF-08・F-ECL-PCS-MNF-09・F-ECL-PCS-MNF-10 */ }
        satisfy REQ_PCS::REQ_PCS_02 by context.sts.orb.eclss.pcs.ops { doc /* 割付先：F-ECL-PCS-OPS-01 */ }
        satisfy REQ_PCS::REQ_PCS_03 by context.sts.orb.eclss.pcs.n2s { doc /* 割付先：F-ECL-PCS-N2S-04・F-ECL-PCS-N2S-05・F-ECL-PCS-N2S-06・F-ECL-PCS-N2S-09・F-ECL-PCS-N2S-10 */ }
        satisfy REQ_PCS::REQ_PCS_04 by context.sts.orb.eclss.pcs.n2s { doc /* 割付先：F-ECL-PCS-N2S-07・F-ECL-PCS-N2S-08 */ }
        satisfy REQ_PCS::REQ_PCS_05 by context.sts.orb.eclss.pcs.n2s { doc /* 割付先：F-ECL-PCS-N2S-01・F-ECL-PCS-N2S-02・F-ECL-PCS-N2S-03・F-ECL-PCS-N2S-11 */ }
        satisfy REQ_PCS::REQ_PCS_05 by context.sts.orb.eclss.pcs.ops { doc /* 割付先：F-ECL-PCS-OPS-10・F-ECL-PCS-OPS-12 */ }
        satisfy REQ_PCS::REQ_PCS_06 by context.sts.orb.eclss.pcs.o2s { doc /* 割付先：F-ECL-PCS-O2S-01・F-ECL-PCS-O2S-02・F-ECL-PCS-O2S-03・F-ECL-PCS-O2S-04・F-ECL-PCS-O2S-05・F-ECL-PCS-O2S-07・F-ECL-PCS-O2S-08 */ }
        satisfy REQ_PCS::REQ_PCS_07 by context.sts.orb.eclss.pcs.o2s { doc /* 割付先：F-ECL-PCS-O2S-06・F-ECL-PCS-O2S-10・F-ECL-PCS-O2S-11・F-ECL-PCS-O2S-12 */ }
        satisfy REQ_PCS::REQ_PCS_07 by context.sts.orb.eclss.pcs.ops { doc /* 割付先：F-ECL-PCS-OPS-03 */ }
        satisfy REQ_PCS::REQ_PCS_08 by context.sts.orb.eclss.pcs.rlf { doc /* 割付先：F-ECL-PCS-RLF-01・F-ECL-PCS-RLF-02・F-ECL-PCS-RLF-03・F-ECL-PCS-RLF-04・F-ECL-PCS-RLF-07・F-ECL-PCS-RLF-09 */ }
        satisfy REQ_PCS::REQ_PCS_09 by context.sts.orb.eclss.pcs.rlf { doc /* 割付先：F-ECL-PCS-RLF-05・F-ECL-PCS-RLF-06・F-ECL-PCS-RLF-08 */ }
        satisfy REQ_PCS::REQ_PCS_10 by context.sts.orb.eclss.pcs.mon { doc /* 割付先：F-ECL-PCS-MON-01・F-ECL-PCS-MON-02・F-ECL-PCS-MON-03・F-ECL-PCS-MON-04・F-ECL-PCS-MON-05・F-ECL-PCS-MON-06・F-ECL-PCS-MON-07・F-ECL-PCS-MON-08・F-ECL-PCS-MON-09・F-ECL-PCS-MON-10 */ }
        satisfy REQ_PCS::REQ_PCS_11 by context.sts.orb.eclss.pcs.ops { doc /* 割付先：F-ECL-PCS-OPS-04・F-ECL-PCS-OPS-05・F-ECL-PCS-OPS-06・F-ECL-PCS-OPS-07・F-ECL-PCS-OPS-08 */ }
        satisfy REQ_PCS::REQ_PCS_12 by context.sts.orb.eclss.pcs.ops { doc /* 割付先：F-ECL-PCS-OPS-02・F-ECL-PCS-OPS-09・F-ECL-PCS-OPS-11・F-ECL-PCS-OPS-12 */ }
        satisfy REQ_WTR::REQ_WTR_01 by context.sts.orb.eclss.h2o.fcw { doc /* 割付先：F-ECL-H2O-FCW-01・F-ECL-H2O-FCW-02・F-ECL-H2O-FCW-03・F-ECL-H2O-FCW-04・F-ECL-H2O-FCW-05・F-ECL-H2O-FCW-06・F-ECL-H2O-FCW-07・F-ECL-H2O-FCW-08 */ }
        satisfy REQ_WTR::REQ_WTR_02 by context.sts.orb.eclss.h2o.spl { doc /* 割付先：F-ECL-H2O-SPL-01・F-ECL-H2O-SPL-02・F-ECL-H2O-SPL-03・F-ECL-H2O-SPL-04・F-ECL-H2O-SPL-05 */ }
        satisfy REQ_WTR::REQ_WTR_03 by context.sts.orb.eclss.h2o.spl { doc /* 割付先：F-ECL-H2O-SPL-06 */ }
        satisfy REQ_WTR::REQ_WTR_03 by context.sts.orb.eclss.h2o.dmp { doc /* 割付先：F-ECL-H2O-DMP-02・F-ECL-H2O-DMP-03・F-ECL-H2O-DMP-04 */ }
        satisfy REQ_WTR::REQ_WTR_04 by context.sts.orb.eclss.h2o.spl { doc /* 割付先：F-ECL-H2O-SPL-07・F-ECL-H2O-SPL-08・F-ECL-H2O-SPL-10・F-ECL-H2O-SPL-11 */ }
        satisfy REQ_WTR::REQ_WTR_05 by context.sts.orb.eclss.h2o.prs { doc /* 割付先：F-ECL-H2O-PRS-01・F-ECL-H2O-PRS-02・F-ECL-H2O-PRS-03・F-ECL-H2O-PRS-07・F-ECL-H2O-PRS-08・F-ECL-H2O-PRS-09・F-ECL-H2O-PRS-10 */ }
        satisfy REQ_WTR::REQ_WTR_06 by context.sts.orb.eclss.h2o.prs { doc /* 割付先：F-ECL-H2O-PRS-04・F-ECL-H2O-PRS-05・F-ECL-H2O-PRS-06 */ }
        satisfy REQ_WTR::REQ_WTR_07 by context.sts.orb.eclss.h2o.dmp { doc /* 割付先：F-ECL-H2O-DMP-01・F-ECL-H2O-DMP-07・F-ECL-H2O-DMP-08・F-ECL-H2O-DMP-09・F-ECL-H2O-DMP-10・F-ECL-H2O-DMP-12 */ }
        satisfy REQ_WTR::REQ_WTR_08 by context.sts.orb.eclss.h2o.dmp { doc /* 割付先：F-ECL-H2O-DMP-05・F-ECL-H2O-DMP-06・F-ECL-H2O-DMP-11 */ }
        satisfy REQ_WTR::REQ_WTR_08 by context.sts.orb.eclss.h2o.gal { doc /* 割付先：F-ECL-H2O-GAL-09・F-ECL-H2O-GAL-10 */ }
        satisfy REQ_WTR::REQ_WTR_08 by context.sts.orb.eclss.h2o.spl { doc /* 割付先：F-ECL-H2O-SPL-09 */ }
        satisfy REQ_WTR::REQ_WTR_08 by context.sts.orb.eclss.h2o.wst { doc /* 割付先：F-ECL-H2O-WST-06・F-ECL-H2O-WST-11 */ }
        satisfy REQ_WTR::REQ_WTR_09 by context.sts.orb.eclss.h2o.gal { doc /* 割付先：F-ECL-H2O-GAL-01・F-ECL-H2O-GAL-02・F-ECL-H2O-GAL-03・F-ECL-H2O-GAL-04・F-ECL-H2O-GAL-05・F-ECL-H2O-GAL-11・F-ECL-H2O-GAL-12 */ }
        satisfy REQ_WTR::REQ_WTR_10 by context.sts.orb.eclss.h2o.gal { doc /* 割付先：F-ECL-H2O-GAL-06・F-ECL-H2O-GAL-07・F-ECL-H2O-GAL-08 */ }
        satisfy REQ_WTR::REQ_WTR_11 by context.sts.orb.eclss.h2o.wst { doc /* 割付先：F-ECL-H2O-WST-01・F-ECL-H2O-WST-02・F-ECL-H2O-WST-03・F-ECL-H2O-WST-04・F-ECL-H2O-WST-09・F-ECL-H2O-WST-10 */ }
        satisfy REQ_WTR::REQ_WTR_12 by context.sts.orb.eclss.h2o.wst { doc /* 割付先：F-ECL-H2O-WST-05・F-ECL-H2O-WST-07・F-ECL-H2O-WST-08・F-ECL-H2O-WST-12 */ }
        satisfy REQ_WCS::REQ_WCS_01 by context.sts.orb.eclss.wcs.cmd { doc /* 割付先：F-ECL-WCS-CMD-01・F-ECL-WCS-CMD-02・F-ECL-WCS-CMD-04・F-ECL-WCS-CMD-05・F-ECL-WCS-CMD-07・F-ECL-WCS-CMD-08 */ }
        satisfy REQ_WCS::REQ_WCS_02 by context.sts.orb.eclss.wcs.cmd { doc /* 割付先：F-ECL-WCS-CMD-03・F-ECL-WCS-CMD-06・F-ECL-WCS-CMD-10・F-ECL-WCS-CMD-11・F-ECL-WCS-CMD-12 */ }
        satisfy REQ_WCS::REQ_WCS_02 by context.sts.orb.eclss.wcs.ops { doc /* 割付先：F-ECL-WCS-OPS-01・F-ECL-WCS-OPS-02 */ }
        satisfy REQ_WCS::REQ_WCS_03 by context.sts.orb.eclss.wcs.fsp { doc /* 割付先：F-ECL-WCS-FSP-01・F-ECL-WCS-FSP-05・F-ECL-WCS-FSP-06・F-ECL-WCS-FSP-07・F-ECL-WCS-FSP-12 */ }
        satisfy REQ_WCS::REQ_WCS_03 by context.sts.orb.eclss.wcs.ops { doc /* 割付先：F-ECL-WCS-OPS-03・F-ECL-WCS-OPS-04・F-ECL-WCS-OPS-10 */ }
        satisfy REQ_WCS::REQ_WCS_04 by context.sts.orb.eclss.wcs.fsp { doc /* 割付先：F-ECL-WCS-FSP-02・F-ECL-WCS-FSP-03・F-ECL-WCS-FSP-04・F-ECL-WCS-FSP-10・F-ECL-WCS-FSP-11 */ }
        satisfy REQ_WCS::REQ_WCS_05 by context.sts.orb.eclss.wcs.urn { doc /* 割付先：F-ECL-WCS-URN-01・F-ECL-WCS-URN-02・F-ECL-WCS-URN-03・F-ECL-WCS-URN-04・F-ECL-WCS-URN-07・F-ECL-WCS-URN-09・F-ECL-WCS-URN-10・F-ECL-WCS-URN-11・F-ECL-WCS-URN-12 */ }
        satisfy REQ_WCS::REQ_WCS_06 by context.sts.orb.eclss.wcs.urn { doc /* 割付先：F-ECL-WCS-URN-05・F-ECL-WCS-URN-06 */ }
        satisfy REQ_WCS::REQ_WCS_06 by context.sts.orb.eclss.wcs.ops { doc /* 割付先：F-ECL-WCS-OPS-05・F-ECL-WCS-OPS-06・F-ECL-WCS-OPS-11 */ }
        satisfy REQ_WCS::REQ_WCS_07 by context.sts.orb.eclss.wcs.vac { doc /* 割付先：F-ECL-WCS-VAC-01・F-ECL-WCS-VAC-02・F-ECL-WCS-VAC-03・F-ECL-WCS-VAC-04・F-ECL-WCS-VAC-06・F-ECL-WCS-VAC-07・F-ECL-WCS-VAC-08・F-ECL-WCS-VAC-09 */ }
        satisfy REQ_WCS::REQ_WCS_08 by context.sts.orb.eclss.wcs.vac { doc /* 割付先：F-ECL-WCS-VAC-05・F-ECL-WCS-VAC-10・F-ECL-WCS-VAC-11・F-ECL-WCS-VAC-12 */ }
        satisfy REQ_WCS::REQ_WCS_08 by context.sts.orb.eclss.wcs.ops { doc /* 割付先：F-ECL-WCS-OPS-08 */ }
        satisfy REQ_WCS::REQ_WCS_09 by context.sts.orb.eclss.wcs.ops { doc /* 割付先：F-ECL-WCS-OPS-07・F-ECL-WCS-OPS-09 */ }
        satisfy REQ_WCS::REQ_WCS_09 by context.sts.orb.eclss.wcs.cmd { doc /* 割付先：F-ECL-WCS-CMD-09 */ }
        satisfy REQ_WCS::REQ_WCS_09 by context.sts.orb.eclss.wcs.fsp { doc /* 割付先：F-ECL-WCS-FSP-08・F-ECL-WCS-FSP-09 */ }
        satisfy REQ_WCS::REQ_WCS_09 by context.sts.orb.eclss.wcs.urn { doc /* 割付先：F-ECL-WCS-URN-08 */ }
        satisfy REQ_FDS::REQ_FDS_01 by context.sts.orb.eclss.fds.det { doc /* 割付先：F-ECL-FDS-DET-01・F-ECL-FDS-DET-02・F-ECL-FDS-DET-05・F-ECL-FDS-DET-12 */ }
        satisfy REQ_FDS::REQ_FDS_02 by context.sts.orb.eclss.fds.det { doc /* 割付先：F-ECL-FDS-DET-03・F-ECL-FDS-DET-04・F-ECL-FDS-DET-06・F-ECL-FDS-DET-07・F-ECL-FDS-DET-08・F-ECL-FDS-DET-09・F-ECL-FDS-DET-10・F-ECL-FDS-DET-11 */ }
        satisfy REQ_FDS::REQ_FDS_03 by context.sts.orb.eclss.fds.alm { doc /* 割付先：F-ECL-FDS-ALM-01・F-ECL-FDS-ALM-02・F-ECL-FDS-ALM-03・F-ECL-FDS-ALM-04・F-ECL-FDS-ALM-05・F-ECL-FDS-ALM-06・F-ECL-FDS-ALM-07・F-ECL-FDS-ALM-08・F-ECL-FDS-ALM-09・F-ECL-FDS-ALM-10・F-ECL-FDS-ALM-11・F-ECL-FDS-ALM-12 */ }
        satisfy REQ_FDS::REQ_FDS_04 by context.sts.orb.eclss.fds.fix { doc /* 割付先：F-ECL-FDS-FIX-01・F-ECL-FDS-FIX-02・F-ECL-FDS-FIX-03・F-ECL-FDS-FIX-04・F-ECL-FDS-FIX-05・F-ECL-FDS-FIX-06・F-ECL-FDS-FIX-07・F-ECL-FDS-FIX-09・F-ECL-FDS-FIX-11・F-ECL-FDS-FIX-12 */ }
        satisfy REQ_FDS::REQ_FDS_05 by context.sts.orb.eclss.fds.fix { doc /* 割付先：F-ECL-FDS-FIX-08・F-ECL-FDS-FIX-10 */ }
        satisfy REQ_FDS::REQ_FDS_06 by context.sts.orb.eclss.fds.pfe { doc /* 割付先：F-ECL-FDS-PFE-01・F-ECL-FDS-PFE-02・F-ECL-FDS-PFE-03・F-ECL-FDS-PFE-04・F-ECL-FDS-PFE-05・F-ECL-FDS-PFE-06・F-ECL-FDS-PFE-07 */ }
        satisfy REQ_FDS::REQ_FDS_07 by context.sts.orb.eclss.fds.pfe { doc /* 割付先：F-ECL-FDS-PFE-08・F-ECL-FDS-PFE-09・F-ECL-FDS-PFE-10 */ }
        satisfy REQ_FDS::REQ_FDS_07 by context.sts.orb.eclss.fds.ops { doc /* 割付先：F-ECL-FDS-OPS-10 */ }
        satisfy REQ_FDS::REQ_FDS_08 by context.sts.orb.eclss.fds.ops { doc /* 割付先：F-ECL-FDS-OPS-01・F-ECL-FDS-OPS-02・F-ECL-FDS-OPS-07・F-ECL-FDS-OPS-08・F-ECL-FDS-OPS-09・F-ECL-FDS-OPS-11・F-ECL-FDS-OPS-12 */ }
        satisfy REQ_FDS::REQ_FDS_09 by context.sts.orb.eclss.fds.ops { doc /* 割付先：F-ECL-FDS-OPS-03・F-ECL-FDS-OPS-04・F-ECL-FDS-OPS-05・F-ECL-FDS-OPS-06 */ }
        satisfy REQ_ALS::REQ_ALS_01 by context.sts.orb.eclss.als.dep { doc /* 割付先：F-ECL-ALS-DEP-01・F-ECL-ALS-DEP-02・F-ECL-ALS-DEP-03・F-ECL-ALS-DEP-04・F-ECL-ALS-DEP-05 */ }
        satisfy REQ_ALS::REQ_ALS_02 by context.sts.orb.eclss.als.dep { doc /* 割付先：F-ECL-ALS-DEP-06・F-ECL-ALS-DEP-07・F-ECL-ALS-DEP-08・F-ECL-ALS-DEP-10 */ }
        satisfy REQ_ALS::REQ_ALS_03 by context.sts.orb.eclss.als.dep { doc /* 割付先：F-ECL-ALS-DEP-09・F-ECL-ALS-DEP-11・F-ECL-ALS-DEP-12 */ }
        satisfy REQ_ALS::REQ_ALS_04 by context.sts.orb.eclss.als.htr { doc /* 割付先：F-ECL-ALS-HTR-01・F-ECL-ALS-HTR-04・F-ECL-ALS-HTR-07・F-ECL-ALS-HTR-10・F-ECL-ALS-HTR-11・F-ECL-ALS-HTR-12 */ }
        satisfy REQ_ALS::REQ_ALS_05 by context.sts.orb.eclss.als.htr { doc /* 割付先：F-ECL-ALS-HTR-02・F-ECL-ALS-HTR-03・F-ECL-ALS-HTR-05・F-ECL-ALS-HTR-06・F-ECL-ALS-HTR-08・F-ECL-ALS-HTR-09 */ }
        satisfy REQ_ALS::REQ_ALS_06 by context.sts.orb.eclss.als.lcg { doc /* 割付先：F-ECL-ALS-LCG-01・F-ECL-ALS-LCG-02・F-ECL-ALS-LCG-03・F-ECL-ALS-LCG-04 */ }
        satisfy REQ_ALS::REQ_ALS_07 by context.sts.orb.eclss.als.lcg { doc /* 割付先：F-ECL-ALS-LCG-05・F-ECL-ALS-LCG-06・F-ECL-ALS-LCG-07・F-ECL-ALS-LCG-08・F-ECL-ALS-LCG-09・F-ECL-ALS-LCG-10・F-ECL-ALS-LCG-11 */ }
        satisfy REQ_ALS::REQ_ALS_08 by context.sts.orb.eclss.als.scu { doc /* 割付先：F-ECL-ALS-SCU-01・F-ECL-ALS-SCU-02・F-ECL-ALS-SCU-03・F-ECL-ALS-SCU-04・F-ECL-ALS-SCU-05・F-ECL-ALS-SCU-06・F-ECL-ALS-SCU-07・F-ECL-ALS-SCU-08・F-ECL-ALS-SCU-09 */ }
        satisfy REQ_ALS::REQ_ALS_09 by context.sts.orb.eclss.als.scu { doc /* 割付先：F-ECL-ALS-SCU-10・F-ECL-ALS-SCU-11・F-ECL-ALS-SCU-12 */ }
        satisfy REQ_ALS::REQ_ALS_10 by context.sts.orb.eclss.als.mon { doc /* 割付先：F-ECL-ALS-MON-01・F-ECL-ALS-MON-02・F-ECL-ALS-MON-03・F-ECL-ALS-MON-04・F-ECL-ALS-MON-05・F-ECL-ALS-MON-06・F-ECL-ALS-MON-07・F-ECL-ALS-MON-08・F-ECL-ALS-MON-09・F-ECL-ALS-MON-10 */ }
        satisfy REQ_ALS::REQ_ALS_11 by context.sts.orb.eclss.als.vnt { doc /* 割付先：F-ECL-ALS-VNT-01・F-ECL-ALS-VNT-02・F-ECL-ALS-VNT-03・F-ECL-ALS-VNT-04・F-ECL-ALS-VNT-06・F-ECL-ALS-VNT-07・F-ECL-ALS-VNT-08・F-ECL-ALS-VNT-09・F-ECL-ALS-VNT-10・F-ECL-ALS-VNT-12 */ }
        satisfy REQ_ATCS::REQ_ATCS_01 by context.sts.orb.eclss.atcs.fcl { doc /* 割付先：F-TCS-FCL-01・F-TCS-FCL-02 */ }
        satisfy REQ_ATCS::REQ_ATCS_02 by context.sts.orb.eclss.atcs.fcl { doc /* 割付先：F-TCS-FCL-03・F-TCS-FCL-04・F-TCS-FCL-05 */ }
        satisfy REQ_ATCS::REQ_ATCS_02 by context.sts.orb.eclss.atcs.hx { doc /* 割付先：F-TCS-HX-01・F-TCS-HX-02・F-TCS-HX-03・F-TCS-HX-04・F-TCS-HX-05 */ }
        satisfy REQ_ATCS::REQ_ATCS_03 by context.sts.orb.eclss.atcs.fcl { doc /* 割付先：F-TCS-FCL-06 */ }
        satisfy REQ_ATCS::REQ_ATCS_04 by context.sts.orb.eclss.atcs.fes { doc /* 割付先：F-TCS-FES-01・F-TCS-FES-02・F-TCS-FES-03・F-TCS-FES-04・F-TCS-FES-06 */ }
        satisfy REQ_ATCS::REQ_ATCS_05 by context.sts.orb.eclss.atcs.rad { doc /* 割付先：F-TCS-RAD-01・F-TCS-RAD-02・F-TCS-RAD-03・F-TCS-RAD-04・F-TCS-RAD-05 */ }
        satisfy REQ_ATCS::REQ_ATCS_06 by context.sts.orb.eclss.atcs.nh3 { doc /* 割付先：F-TCS-NH3-01・F-TCS-NH3-02・F-TCS-NH3-03・F-TCS-NH3-04・F-TCS-NH3-05・F-TCS-NH3-06 */ }
        satisfy REQ_ATCS::REQ_ATCS_07 by context.sts.orb.eclss.atcs.gse { doc /* 割付先：F-TCS-GSE-01・F-TCS-GSE-02・F-TCS-GSE-03・F-TCS-GSE-04・F-TCS-GSE-05 */ }
    }
    // ---- 検証ケース（要求ごと）と結果
    package Verification {
        verification def <'VC-REQ-ARS-01'> VC_REQ_ARS_01 {
            doc /* REQ-ARS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-02'> VC_REQ_ARS_02 {
            doc /* REQ-ARS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-03'> VC_REQ_ARS_03 {
            doc /* REQ-ARS-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-04'> VC_REQ_ARS_04 {
            doc /* REQ-ARS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-05'> VC_REQ_ARS_05 {
            doc /* REQ-ARS-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-06'> VC_REQ_ARS_06 {
            doc /* REQ-ARS-06 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-07'> VC_REQ_ARS_07 {
            doc /* REQ-ARS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-08'> VC_REQ_ARS_08 {
            doc /* REQ-ARS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-09'> VC_REQ_ARS_09 {
            doc /* REQ-ARS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-10'> VC_REQ_ARS_10 {
            doc /* REQ-ARS-10 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-11'> VC_REQ_ARS_11 {
            doc /* REQ-ARS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-12'> VC_REQ_ARS_12 {
            doc /* REQ-ARS-12 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-13'> VC_REQ_ARS_13 {
            doc /* REQ-ARS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-14'> VC_REQ_ARS_14 {
            doc /* REQ-ARS-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-15'> VC_REQ_ARS_15 {
            doc /* REQ-ARS-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-16'> VC_REQ_ARS_16 {
            doc /* REQ-ARS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-17'> VC_REQ_ARS_17 {
            doc /* REQ-ARS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-18'> VC_REQ_ARS_18 {
            doc /* REQ-ARS-18 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-19'> VC_REQ_ARS_19 {
            doc /* REQ-ARS-19 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-20'> VC_REQ_ARS_20 {
            doc /* REQ-ARS-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-21'> VC_REQ_ARS_21 {
            doc /* REQ-ARS-21 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-22'> VC_REQ_ARS_22 {
            doc /* REQ-ARS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-23'> VC_REQ_ARS_23 {
            doc /* REQ-ARS-23 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-24'> VC_REQ_ARS_24 {
            doc /* REQ-ARS-24 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-25'> VC_REQ_ARS_25 {
            doc /* REQ-ARS-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-26'> VC_REQ_ARS_26 {
            doc /* REQ-ARS-26 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-27'> VC_REQ_ARS_27 {
            doc /* REQ-ARS-27 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-28'> VC_REQ_ARS_28 {
            doc /* REQ-ARS-28 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-29'> VC_REQ_ARS_29 {
            doc /* REQ-ARS-29 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-30'> VC_REQ_ARS_30 {
            doc /* REQ-ARS-30 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-31'> VC_REQ_ARS_31 {
            doc /* REQ-ARS-31 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_31; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-32'> VC_REQ_ARS_32 {
            doc /* REQ-ARS-32 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_32; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-33'> VC_REQ_ARS_33 {
            doc /* REQ-ARS-33 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_33; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-34'> VC_REQ_ARS_34 {
            doc /* REQ-ARS-34 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_34; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-35'> VC_REQ_ARS_35 {
            doc /* REQ-ARS-35 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_35; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-36'> VC_REQ_ARS_36 {
            doc /* REQ-ARS-36 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_36; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-37'> VC_REQ_ARS_37 {
            doc /* REQ-ARS-37 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_37; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-38'> VC_REQ_ARS_38 {
            doc /* REQ-ARS-38 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_38; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ARS-39'> VC_REQ_ARS_39 {
            doc /* REQ-ARS-39 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ARS::REQ_ARS_39; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-01'> VC_REQ_PCS_01 {
            doc /* REQ-PCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-02'> VC_REQ_PCS_02 {
            doc /* REQ-PCS-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-03'> VC_REQ_PCS_03 {
            doc /* REQ-PCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-04'> VC_REQ_PCS_04 {
            doc /* REQ-PCS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-05'> VC_REQ_PCS_05 {
            doc /* REQ-PCS-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-06'> VC_REQ_PCS_06 {
            doc /* REQ-PCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-07'> VC_REQ_PCS_07 {
            doc /* REQ-PCS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-08'> VC_REQ_PCS_08 {
            doc /* REQ-PCS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-09'> VC_REQ_PCS_09 {
            doc /* REQ-PCS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-10'> VC_REQ_PCS_10 {
            doc /* REQ-PCS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-11'> VC_REQ_PCS_11 {
            doc /* REQ-PCS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-PCS-12'> VC_REQ_PCS_12 {
            doc /* REQ-PCS-12 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_PCS::REQ_PCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-01'> VC_REQ_WTR_01 {
            doc /* REQ-WTR-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-02'> VC_REQ_WTR_02 {
            doc /* REQ-WTR-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-03'> VC_REQ_WTR_03 {
            doc /* REQ-WTR-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-04'> VC_REQ_WTR_04 {
            doc /* REQ-WTR-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-05'> VC_REQ_WTR_05 {
            doc /* REQ-WTR-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-06'> VC_REQ_WTR_06 {
            doc /* REQ-WTR-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-07'> VC_REQ_WTR_07 {
            doc /* REQ-WTR-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-08'> VC_REQ_WTR_08 {
            doc /* REQ-WTR-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-09'> VC_REQ_WTR_09 {
            doc /* REQ-WTR-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-10'> VC_REQ_WTR_10 {
            doc /* REQ-WTR-10 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-11'> VC_REQ_WTR_11 {
            doc /* REQ-WTR-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WTR-12'> VC_REQ_WTR_12 {
            doc /* REQ-WTR-12 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WTR::REQ_WTR_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-01'> VC_REQ_WCS_01 {
            doc /* REQ-WCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-02'> VC_REQ_WCS_02 {
            doc /* REQ-WCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-03'> VC_REQ_WCS_03 {
            doc /* REQ-WCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-04'> VC_REQ_WCS_04 {
            doc /* REQ-WCS-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-05'> VC_REQ_WCS_05 {
            doc /* REQ-WCS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-06'> VC_REQ_WCS_06 {
            doc /* REQ-WCS-06 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-07'> VC_REQ_WCS_07 {
            doc /* REQ-WCS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-08'> VC_REQ_WCS_08 {
            doc /* REQ-WCS-08 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-WCS-09'> VC_REQ_WCS_09 {
            doc /* REQ-WCS-09 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_WCS::REQ_WCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-01'> VC_REQ_FDS_01 {
            doc /* REQ-FDS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-02'> VC_REQ_FDS_02 {
            doc /* REQ-FDS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-03'> VC_REQ_FDS_03 {
            doc /* REQ-FDS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-04'> VC_REQ_FDS_04 {
            doc /* REQ-FDS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-05'> VC_REQ_FDS_05 {
            doc /* REQ-FDS-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-06'> VC_REQ_FDS_06 {
            doc /* REQ-FDS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-07'> VC_REQ_FDS_07 {
            doc /* REQ-FDS-07 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-08'> VC_REQ_FDS_08 {
            doc /* REQ-FDS-08 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-FDS-09'> VC_REQ_FDS_09 {
            doc /* REQ-FDS-09 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_FDS::REQ_FDS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-01'> VC_REQ_ALS_01 {
            doc /* REQ-ALS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-02'> VC_REQ_ALS_02 {
            doc /* REQ-ALS-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-03'> VC_REQ_ALS_03 {
            doc /* REQ-ALS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-04'> VC_REQ_ALS_04 {
            doc /* REQ-ALS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-05'> VC_REQ_ALS_05 {
            doc /* REQ-ALS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-06'> VC_REQ_ALS_06 {
            doc /* REQ-ALS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-07'> VC_REQ_ALS_07 {
            doc /* REQ-ALS-07 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-08'> VC_REQ_ALS_08 {
            doc /* REQ-ALS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-09'> VC_REQ_ALS_09 {
            doc /* REQ-ALS-09 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-10'> VC_REQ_ALS_10 {
            doc /* REQ-ALS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ALS-11'> VC_REQ_ALS_11 {
            doc /* REQ-ALS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ALS::REQ_ALS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-01'> VC_REQ_ATCS_01 {
            doc /* REQ-ATCS-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-02'> VC_REQ_ATCS_02 {
            doc /* REQ-ATCS-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-03'> VC_REQ_ATCS_03 {
            doc /* REQ-ATCS-03 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-04'> VC_REQ_ATCS_04 {
            doc /* REQ-ATCS-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-05'> VC_REQ_ATCS_05 {
            doc /* REQ-ATCS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-06'> VC_REQ_ATCS_06 {
            doc /* REQ-ATCS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-REQ-ATCS-07'> VC_REQ_ATCS_07 {
            doc /* REQ-ATCS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify REQ_ATCS::REQ_ATCS_07; }
            return verdict : VerdictKind;
        }
    }
    package Results {
        verification vc_req_ars_01 : Verification::VC_REQ_ARS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_02 : Verification::VC_REQ_ARS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_03 : Verification::VC_REQ_ARS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_04 : Verification::VC_REQ_ARS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_05 : Verification::VC_REQ_ARS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_06 : Verification::VC_REQ_ARS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_07 : Verification::VC_REQ_ARS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.dct;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_08 : Verification::VC_REQ_ARS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_09 : Verification::VC_REQ_ARS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2.can;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_10 : Verification::VC_REQ_ARS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_11 : Verification::VC_REQ_ARS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_12 : Verification::VC_REQ_ARS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_13 : Verification::VC_REQ_ARS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_14 : Verification::VC_REQ_ARS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_15 : Verification::VC_REQ_ARS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_16 : Verification::VC_REQ_ARS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_17 : Verification::VC_REQ_ARS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_18 : Verification::VC_REQ_ARS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_19 : Verification::VC_REQ_ARS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_20 : Verification::VC_REQ_ARS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_21 : Verification::VC_REQ_ARS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_22 : Verification::VC_REQ_ARS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_23 : Verification::VC_REQ_ARS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_24 : Verification::VC_REQ_ARS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_25 : Verification::VC_REQ_ARS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_26 : Verification::VC_REQ_ARS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_27 : Verification::VC_REQ_ARS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_28 : Verification::VC_REQ_ARS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_29 : Verification::VC_REQ_ARS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_30 : Verification::VC_REQ_ARS_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_31 : Verification::VC_REQ_ARS_31 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_32 : Verification::VC_REQ_ARS_32 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_33 : Verification::VC_REQ_ARS_33 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_34 : Verification::VC_REQ_ARS_34 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_35 : Verification::VC_REQ_ARS_35 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_36 : Verification::VC_REQ_ARS_36 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_ars_37 : Verification::VC_REQ_ARS_37 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_38 : Verification::VC_REQ_ARS_38 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_ars_39 : Verification::VC_REQ_ARS_39 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_pcs_01 : Verification::VC_REQ_PCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mnf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_02 : Verification::VC_REQ_PCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mnf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_03 : Verification::VC_REQ_PCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.n2s;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_04 : Verification::VC_REQ_PCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.n2s;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_05 : Verification::VC_REQ_PCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.n2s;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_pcs_06 : Verification::VC_REQ_PCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.o2s;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_07 : Verification::VC_REQ_PCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.o2s;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_pcs_08 : Verification::VC_REQ_PCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.rlf;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_pcs_09 : Verification::VC_REQ_PCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.rlf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_10 : Verification::VC_REQ_PCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mon;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_11 : Verification::VC_REQ_PCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_pcs_12 : Verification::VC_REQ_PCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_wtr_01 : Verification::VC_REQ_WTR_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.fcw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_02 : Verification::VC_REQ_WTR_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.spl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_03 : Verification::VC_REQ_WTR_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.spl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_04 : Verification::VC_REQ_WTR_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.spl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_05 : Verification::VC_REQ_WTR_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.prs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_06 : Verification::VC_REQ_WTR_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.prs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_07 : Verification::VC_REQ_WTR_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_08 : Verification::VC_REQ_WTR_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_09 : Verification::VC_REQ_WTR_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.gal;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_10 : Verification::VC_REQ_WTR_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.gal;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_wtr_11 : Verification::VC_REQ_WTR_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.wst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wtr_12 : Verification::VC_REQ_WTR_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.wst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_01 : Verification::VC_REQ_WCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.cmd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_02 : Verification::VC_REQ_WCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.cmd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_03 : Verification::VC_REQ_WCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.fsp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_04 : Verification::VC_REQ_WCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.fsp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_05 : Verification::VC_REQ_WCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.urn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_06 : Verification::VC_REQ_WCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.urn;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_wcs_07 : Verification::VC_REQ_WCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.vac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_wcs_08 : Verification::VC_REQ_WCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.vac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_wcs_09 : Verification::VC_REQ_WCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_01 : Verification::VC_REQ_FDS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.det;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_02 : Verification::VC_REQ_FDS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.det;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_03 : Verification::VC_REQ_FDS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.alm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_04 : Verification::VC_REQ_FDS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.fix;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_05 : Verification::VC_REQ_FDS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.fix;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_fds_06 : Verification::VC_REQ_FDS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.pfe;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_07 : Verification::VC_REQ_FDS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.pfe;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_fds_08 : Verification::VC_REQ_FDS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_fds_09 : Verification::VC_REQ_FDS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_01 : Verification::VC_REQ_ALS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.dep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_02 : Verification::VC_REQ_ALS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.dep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_03 : Verification::VC_REQ_ALS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.dep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_04 : Verification::VC_REQ_ALS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_05 : Verification::VC_REQ_ALS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_06 : Verification::VC_REQ_ALS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.lcg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_07 : Verification::VC_REQ_ALS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.lcg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_08 : Verification::VC_REQ_ALS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.scu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_09 : Verification::VC_REQ_ALS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.scu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_req_als_10 : Verification::VC_REQ_ALS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.mon;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_als_11 : Verification::VC_REQ_ALS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_01 : Verification::VC_REQ_ATCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_02 : Verification::VC_REQ_ATCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_03 : Verification::VC_REQ_ATCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_04 : Verification::VC_REQ_ATCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fes;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_05 : Verification::VC_REQ_ATCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.rad;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_06 : Verification::VC_REQ_ATCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.nh3;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_req_atcs_07 : Verification::VC_REQ_ATCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.gse;
            return :>> verdict = VerdictKind::pass;
        }
    }
}
