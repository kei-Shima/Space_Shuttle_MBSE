// SysML v2 テキスト：インタフェース要求書（ECLSS の下位の IF）
// SSD-IRQ-ECL-001 インタフェース要求書（ECLSS の下位の IF） の表から生成（lib/build_docs_cl.py・rev_cl/cldata.py）。根拠の頁は SSD-IRQ-ECL-001 にある。
package SSD_IRQ_ECL_001 {
    doc /* SSD-IRQ-ECL-001 インタフェース要求書（ECLSS の下位の IF）。下位の IF のインタフェース要求を requirement、上位の要求からの導出、割付先の IF による充足、要求ごとの検証ケースと結果で示す。図252・253 と同じ内容。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_RQM_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::*;
    private import SSD_RQL_SYS_001;
    private import SSD_RQL_ECL_001;
    private import SSD_IRQ_SYS_001;
    // ---- インタフェース要求（IF ごとに1件）
    package <'IRQ'> InterfaceRequirements {
        doc /* 下位の IF（系の中の IF-<系>-nn）のインタフェース要求（インタフェース要求書（ECLSS の下位の IF））。値と根拠は IF の行（所有の文書）の文と出典による */
        requirement <'IRQ-ALS-01'> IRQ_ALS_01 {
            subject s : Parts::Part;
            doc /* エアロックの減圧・再与圧は 乗員室との間で、内側ハッチの均圧弁でエアロックを乗員室の圧力と等しくして隔離し、EVA 前は減圧弁の「5」位置で乗員室を 10.2 psia へ約30分で減圧することを、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "10.2 psia、約30分"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-02'> IRQ_ALS_02 {
            subject s : Parts::Part;
            doc /* エアロックの減圧・再与圧は 宇宙空間（船外）へ、減圧弁の「5」位置（0.59 インチのオリフィス）でエアロックを 5 psia へ、「0」位置（1.02 インチ）で 0 psia へ減圧し、非推進のT字管でペイロードベイへ排気し、ベスティビュールも真空へ排気すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "5 psia（0.59 インチ）、0 psia（1.02 インチ）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-03'> IRQ_ALS_03 {
            subject s : Parts::Part;
            doc /* 給水・廃水系（給水貯蔵・分配）は SCU へ、給水系の A・B 出口系統の水を、EMU からオービタへの汚染を防ぐフィルタ・逆止弁とその下流の給水遮断弁を通してエアロックへ送り、EMU の給水（昇華冷却用・飲用）に使わせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ALS-04'> IRQ_ALS_04 {
            subject s : Parts::Part;
            doc /* SCU は 廃棄物収集系：尿・EMU凝縮水収集へ、EVA を行う飛行で EMU の凝縮水をエアロックの廃水弁から排出し、WCS を EMU 排水モードにして受けさせ、処理した水を廃水タンクへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-ALS-05'> IRQ_ALS_05 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は EMU（船外活動ユニット）の電源・バッテリ充電器 へ、パネル AW18H で選んだ主母線 A・B のどちらかから EMU 1・2 に給電し、EMU をエアロックの電力を受ける構成にすればバッテリを失っても補えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-ALS-06'> IRQ_ALS_06 {
            subject s : Parts::Part;
            doc /* 船外活動ユニット（EMU）のサービスは EMU（船外活動ユニット） との間で、SCU の3本の水ホース、高圧 O2 ホース、電線、水圧調整器を通じて、電力、有線通信、O2、廃水排出、水冷却と、PLSS の O2 タンク・水リザーバ・バッテリの再充電を、PLSS の一次 O2 系は 850±50 psig で充填して、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "850±50 psig"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-07'> IRQ_ALS_07 {
            subject s : Parts::Part;
            doc /* 液冷服（LCG）の冷却は EMU との間で、SCU 接続中に EMU の液体輸送系のポンプが LCVG の水（約240 lb/hr）を SCU を通してオービタの熱交換器へも流して乗員を冷却し、冷却水はEMUごとの2本の閉ループでエアロックに出入りすることを、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約240 lb/hr、2本の閉ループ"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-08'> IRQ_ALS_08 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は エアロックのヒータへ、パネル ML86B の遮断器から主母線（MNA ほか）の電力を外部エアロックの水配管ヒータ（区域1・2）、構造ヒータ（区域1〜3）、ベスティビュールヒータへ系統ごとに供給し、通常は軌道投入後に MNA 系統を入れ、飛行中盤のヒータ再構成で MNB 系統に切り替えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-09'> IRQ_ALS_09 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は エアロックの換気へ、パネル MA73C の各3個の遮断器からブースタファン A へAC1、ファン B へAC2の三相交流電力を供給し、ファンはパネル MO13Q の ARLK FAN A・B スイッチで運転させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ALS-10'> IRQ_ALS_10 {
            subject s : Parts::Part;
            doc /* エアロックの監視は DPS・アビオニクス へ、エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を送り、SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "SM OPS 2 の SPEC 177"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ALS-11'> IRQ_ALS_11 {
            subject s : Parts::Part;
            doc /* エアロックの減圧・再与圧は 計測・表示へ、エアロックの圧力（EXT A/L PRESS）とエアロック・ベスティビュール間の差圧を計測して伝え、各ハッチの差圧は両側の差圧計にも表示すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-12'> IRQ_ALS_12 {
            subject s : Parts::Part;
            doc /* 液冷服（LCG）の冷却は 計測・表示へ、EV1・EV2 の LCG 供給配管の圧力（V64P0170A・V64P0171A）を計測して伝え、SPEC 177 に LCG 供給圧1・2を 0〜40 psig の範囲で表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "0〜40 psig"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-13'> IRQ_ALS_13 {
            subject s : Parts::Part;
            doc /* エアロックのヒータは 計測・表示へ、水配管の区域1・2に2個ずつの温度トランスデューサで、流れのないときの6本の配管の温度を代表するよう計測して伝え、構造温度センサはヒータのサーモスタットの作動を監視する位置で計測すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-14'> IRQ_ALS_14 {
            subject s : Parts::Part;
            doc /* エアロックのヒータは 液冷服冷却ループへ、LCG 供給・戻り配管（EMU ごとに1組）を区域ごとに各配管に巻いた3系統のヒータで加温し、LCVG 配管の2区域のサーモスタット制御ヒータで凍結を防ぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-15'> IRQ_ALS_15 {
            subject s : Parts::Part;
            doc /* エアロックのヒータは EMU補給・支援 へ、EMU 給水（ISS 移送兼用）の飲料水供給配管と廃水戻り配管を、与圧区画の外で区域ごとに各配管に巻いた3系統のヒータで加温して熱を伝え、ペイロードベイ内の給水・廃水配管は3重冗長のヒータで熱調整すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "3系統のヒータ"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-16'> IRQ_ALS_16 {
            subject s : Parts::Part;
            doc /* エアロックのヒータは 区画・減圧・再与圧へ、エアロック外殻の3区域の構造パッチヒータで、特に真空時にエアロック内部を氷点以上に保ち、壁・ハッチとドッキング用アビオニクスベイの結露を防ぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ALS-17'> IRQ_ALS_17 {
            subject s : Parts::Part;
            doc /* エアロックの換気は 区画・減圧・再与圧へ、ブースタファンとダクトでオービタの調整空気をエアロックへ送り、湿度を制御し、CO2・O2・N2 のよどみを防ぎ、EVA 中でダクトを外しているときはエアロック内部の能動的な熱制御を構造ヒータだけにすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-01'> IRQ_ARS_01 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は CO2・CO除去（LiOH・ATCO） へ、キャビンファン出口の空気の一部をダクト内のオリフィスで約 120 lb/hr ずつ 2個の LiOH キャニスタへ分流し、通過後の空気を主流に戻してキャビン熱交換器へ向かわせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約 120 lb/hr ずつ 2個の LiOH キャニスタ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-02'> IRQ_ARS_02 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は 再生式CO2除去装置（RCRS） へ、RCRS 搭載時にキャビン空気ループから乗員数に応じて 72 lb/hr または 110 lb/hr の空気を通すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "72 lb/hr または 110 lb/hr（乗員数による）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-03'> IRQ_ARS_03 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は キャビン温湿度制御 へ、暖まったキャビン空気をキャビンファンでキャビン熱交換器へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-04'> IRQ_ARS_04 {
            subject s : Parts::Part;
            doc /* 再生式CO2除去装置（RCRS）は キャビン温湿度制御 へ、RCRS で CO2 を除去した空気をキャビン熱交換器へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-05'> IRQ_ARS_05 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は CO2・CO除去（LiOH・ATCO） へ、キャビン熱交換器を出た再生・調整済み空気の一部を ATCO へ送って CO を CO2 に変換し、ATCO を通った空気を調整済み空気とともに乗員室へ戻して、生じた CO2 を LiOH キャニスタで除去させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-06'> IRQ_ARS_06 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は 水冷却ループ（2系統） へ、キャビン熱交換器で空気の熱を水冷却ループへ移すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-07'> IRQ_ARS_07 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は 水冷却ループ×2 へ、各アビオニクスベイの熱交換器でベイファン出口空気の熱を渡し、水冷却ループに冷却させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-08'> IRQ_ARS_08 {
            subject s : Parts::Part;
            doc /* IMU 冷却は 水冷却ループ×2 へ、IMU ファン出口空気の熱をフライトデッキの IMU 熱交換器で渡し、水冷却ループに冷却させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-09'> IRQ_ARS_09 {
            subject s : Parts::Part;
            doc /* 乗員室（制御対象） はキャビン空気循環へ、暖まったキャビン空気をキャビン空気ループへ吸い込ませ、300 ミクロンフィルタを通してキャビンファンで送らせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "フィルタ 300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-10'> IRQ_ARS_10 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は 乗員室 へ、熱交換器を通った空気とバイパス空気を合流させ、CDR・PLT コンソールと各所のダクト吹出口から給気すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-11'> IRQ_ARS_11 {
            subject s : Parts::Part;
            doc /* IMU 冷却は 乗員室（制御対象） との間で、IMU ファンがキャビン空気を 300 ミクロンフィルタを通して吸い込んで 3台の IMU に流し、IMU 熱交換器で冷やした後に乗員室へ戻す流れを双方向に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "フィルタ 300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-12'> IRQ_ARS_12 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は 給水・廃水系 へ、湿度分離器で分離した凝縮水を廃水タンクへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-13'> IRQ_ARS_13 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は エアロック支援系（ALS） へ、外部エアロックの空気循環系を通じて EVA 以外の期間にエアロックへ調整空気を送り、飛行中はハッチ越しにミッドデッキ床の継手からエアロックのブースタファンまでダクトを張ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-14'> IRQ_ARS_14 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は 煙検知・消火系（FDS） へ、A群煙感知器をミッドデッキ床下のキャビンファン・プレナム出口とフライトデッキの左戻り空気ダクトに、B群をフライトデッキの右戻り空気ダクトに置いて、空気を通すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-15'> IRQ_ARS_15 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は 煙検知・消火系（FDS） との間で、前方アビオニクスベイ 1・2・3A に A群・B群の煙感知器を各 1個ずつ置き、Halon 消火ボトルもベイ 1・2・3A に常設する関係を双方向に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-16'> IRQ_ARS_16 {
            subject s : Parts::Part;
            doc /* 再生式CO2除去装置（RCRS）は 宇宙空間（船外） へ、再生時にベッドを真空ベントダクトへ排気すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-17'> IRQ_ARS_17 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は DPS・アビオニクス へ、アビオニクスベイのファンによる強制空冷を、ベイ 1 の GPC 1・4、ベイ 2 の GPC 2・5、ベイ 3 の GPC 3 に供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ベイ 1：GPC 1・4、ベイ 2：GPC 2・5、ベイ 3：GPC 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-18'> IRQ_ARS_18 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は 電力系（EPS） へ、前方アビオニクスベイ 1〜3 のインバータ分配組立を、ベイの空気で空冷すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-19'> IRQ_ARS_19 {
            subject s : Parts::Part;
            doc /* IMU 冷却は 誘導・航法・制御（GN&C） へ、3台の IMU すべてに供する 3台のファンで強制空冷を行い、同時に使うのは 1台とすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン 3台、同時運転は 1台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-20'> IRQ_ARS_20 {
            subject s : Parts::Part;
            doc /* 水冷却ループは DPS・アビオニクス へ、前方アビオニクスベイの FF・PL・LF・LM MDM を水冷却ループのコールドプレートで冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-21'> IRQ_ARS_21 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 電力系（EPS） へ、前方アビオニクスベイ 1〜3 の電力制御組立・負荷制御組立・モータ制御組立・インバータを、コールドプレートを通して冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-22'> IRQ_ARS_22 {
            subject s : Parts::Part;
            doc /* エアロック支援系は 水冷却ループ へ、液冷服（LCG）熱交換器を水冷却ループの冷側経路に通して、EMU の液冷服の冷却を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-23'> IRQ_ARS_23 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 給水・廃水系（H2O） へ、冷側経路を飲料水チラーに通して飲料水を冷却する熱を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-24'> IRQ_ARS_24 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 乗員室 へ、Av Bay 2 経路の水で乗員室の窓の熱調整を行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-25'> IRQ_ARS_25 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は DPS・アビオニクス へ、主 C&W の AV BAY/CABIN AIR 灯を、キャビンファン差圧・Av Bay 1・2・3 空気出口温度・キャビン熱交換器空気温度の限界外で点灯させる信号を、ハードウェアチャネル 74、84・94・104、114 で送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ハードウェアチャネル 74、84・94・104、114"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-26'> IRQ_ARS_26 {
            subject s : Parts::Part;
            doc /* 再生式CO2除去装置（RCRS）は DPS・アビオニクス へ、RCRS の運転状態を OPS 2 の SPEC 66 ENVIRONMENT で確認できるよう伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-27'> IRQ_ARS_27 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は DPS・アビオニクス へ、キャビン熱交換器下流の温度センサのデータを AIR TEMP 計器へ直接送り、SM SYS SUMM 1 と SPEC 66 ENVIRONMENT にも表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-28'> IRQ_ARS_28 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は DPS・アビオニクス へ、ベイファン下流の温度センサのデータを AIR TEMP 計器へ直接送り、SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-29'> IRQ_ARS_29 {
            subject s : Parts::Part;
            doc /* IMU 冷却は DPS・アビオニクス へ、IMU ファン差圧を BFS の SM SYS SUMM 1（DISP 78）に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-30'> IRQ_ARS_30 {
            subject s : Parts::Part;
            doc /* DPS・アビオニクスは 水冷却ループ へ、H2O PUMP LOOP スイッチが GPC 位置のとき、OPS 2 で GPC が非稼働ループのポンプを4時間ごとに6分運転するよう指令すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "4時間ごとに6分"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ARS-31'> IRQ_ARS_31 {
            subject s : Parts::Part;
            doc /* 水冷却ループは DPS・アビオニクス へ、各ループのポンプ出口圧とポンプ差圧をシステム管理（SM）GPC へ送り、DISP 88 APU/ENVIRON THERM に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-32'> IRQ_ARS_32 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） はキャビン空気循環へ、キャビンファンを駆動する三相 115 V AC の電動機に給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "三相 115 V AC、495 W"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-33'> IRQ_ARS_33 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は再生式CO2除去装置（RCRS）へ、RCRS のコントローラ 1・2 の AC・DC 電源をパネル MO51F で操作できるように供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-34'> IRQ_ARS_34 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） はアビオニクスベイ冷却へ、ベイファンに三相交流母線から給電し、各ベイの 2台のファンを別々の母線につなぎ、単一の AC 母線の故障で 2つのベイの空冷を失いうる構成になった場合は次の PLS に入ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ベイ 1：AC1・AC2、ベイ 2：AC2・AC3、ベイ 3：AC3・AC1"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-35'> IRQ_ARS_35 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は IMU 冷却へ、IMU ファン 3台に三相交流母線から給電し、ファン A・B・C を AC1・AC2・AC3 につなぎ、ファンの信号調整器を AC3 の B相から給電させ、上昇中は湿度分離器と IMU ファンの信号調整器を断電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン A・B・C：AC1・AC2・AC3、信号調整器：AC3 の B相"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-36'> IRQ_ARS_36 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 水冷却ループ へ、ループ2のポンプにはON位置で AC3、GPC 位置では BFS が PL MDM を制御しているとき AC1 から給電し、AC1 側の回路遮断器を通常は引いておくこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-37'> IRQ_ARS_37 {
            subject s : Parts::Part;
            doc /* CO2・CO除去は DPS・アビオニクス へ、キャビン空気の CO2 分圧（PPCO2）を SM GPC へ送り、SM OPS 2・4 の DISP 66（ENVIRONMENT）に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-38'> IRQ_ARS_38 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は CO2・CO除去へ、AC1 φB の交流電力を CABIN AIR 信号調整器に供給し、この信号調整器から PPCO2 トランスデューサへ給電させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "AC1 φB"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-39'> IRQ_ARS_39 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は DPS・アビオニクス へ、キャビンファンが電子機器のそばを通して吸い込む空気で、乗員室の機器（CRT、DEU、IDP、CCTV モニタ、RCU/VSU など）を強制空冷すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-40'> IRQ_ARS_40 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は キャビン温湿度制御 へ、湿度分離器 A・B に AC1・AC2 の三相、キャビン温度コントローラ 1・2 に AC2・AC1 の φA、分離器の信号調整器に AC3 φA の交流電力を、パネル L4 の遮断器を通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-41'> IRQ_ARS_41 {
            subject s : Parts::Part;
            doc /* アビオニクスベイ冷却は 誘導・航法・制御（GN&C） へ、ベイファンで交流動作の Gould 製 TACAN を冷却し、冷却を回復できない場合はベイ内の TACAN と MLS を早急に断電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "冷却喪失から 5分以内に短絡しうる"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'IRQ-ARS-42'> IRQ_ARS_42 {
            subject s : Parts::Part;
            doc /* GNC は 水冷却ループ から、Av Bay 3B の水冷機器（マスタタイミングユニット、Ku 帯信号処理器、HUD 電子装置 1・2、GPS 2）を水冷却ループで冷却されること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-01'> IRQ_AVB_01 {
            subject s : Parts::Part;
            doc /* ベイ空気循環は ベイファン・逆止弁 へ、ベイの床から空冷機器と 300 ミクロンフィルタを通した空気をベイファンの入口へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "フィルタ 300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-02'> IRQ_AVB_02 {
            subject s : Parts::Part;
            doc /* ベイ空気循環は DPS・アビオニクス へ、ベイファンが循環させる空気で GPC 1・4（ベイ 1）、GPC 2・5（ベイ 2）、GPC 3（ベイ 3）を強制空冷し、ベイファンを止めてよい時間を GPC の冷却の制約から最大 26分とすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン停止は最大 26分（A18-501）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-03'> IRQ_AVB_03 {
            subject s : Parts::Part;
            doc /* ベイ空気循環は 電力系：交流配電（EPDC-AC） へ、前方ベイ 1〜3 のインバータ分配組立を、ベイの空気で空冷させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-04'> IRQ_AVB_04 {
            subject s : Parts::Part;
            doc /* ベイ空気循環は 誘導・航法・制御（GN&C） へ、ベイファンで交流動作の Gould 製 TACAN を冷却し、冷却を回復できない場合はベイ内の TACAN と MLS を早急に断電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "冷却喪失から 5分以内に短絡しうる"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-05'> IRQ_AVB_05 {
            subject s : Parts::Part;
            doc /* ベイファンは ベイ熱交換器 へ、ファンの出口空気をそのベイの熱交換器へ送り、非運転ファンの出口の逆止弁で逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-06'> IRQ_AVB_06 {
            subject s : Parts::Part;
            doc /* ベイファンは 温度・差圧監視 へ、各ベイのファン差圧センサで運転中のファンの差圧を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-07'> IRQ_AVB_07 {
            subject s : Parts::Part;
            doc /* 電力系：交流配電（EPDC-AC） はベイファンへ、パネル L4 の 3個の遮断器を通して三相交流を供給し、ベイ 1 のファン A・B は AC1・AC2、ベイ 2 は AC2・AC3、ベイ 3 は AC3・AC1 から受けさせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "三相 115 V AC、111 W の電動機（ベイ 1・2）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-08'> IRQ_AVB_08 {
            subject s : Parts::Part;
            doc /* ベイ冷却の運用は ベイファン・逆止弁 へ、運用規則に従ってパネル L1 の AV BAY 1・2・3 FAN A・B スイッチで運転するファンを選んで入切りする指令を送り、打上げ時には各ベイの 1台のファンが運転済みであること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-09'> IRQ_AVB_09 {
            subject s : Parts::Part;
            doc /* ベイ熱交換器は ベイ内循環・機器空冷 へ、水冷却ループにより冷やした空気をベイへ戻すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-10'> IRQ_AVB_10 {
            subject s : Parts::Part;
            doc /* ベイ熱交換器は 水冷却ループ：アビオニクス冷却経路 へ、各ベイの空気/水熱交換器でファン出口空気の熱を渡し、熱交換器を出る空気を水冷却ループのポンプ出口温度より約 10°F 高い温度に保つこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "熱交換器出口空気はポンプ出口温度より約 10°F 高い（A18-101C）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-AVB-11'> IRQ_AVB_11 {
            subject s : Parts::Part;
            doc /* ベイ熱交換器は 温度・差圧監視 へ、ミッドデッキ床下のファンプレナムでベイの空気/水熱交換器の近くにある温度センサにより、ベイの空気温度を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-AVB-12'> IRQ_AVB_12 {
            subject s : Parts::Part;
            doc /* ベイ冷却の監視は ベイ冷却運用管理 へ、ベイ温度とファン差圧の表示・警報を、ファンとベイ冷却の喪失判定（A17-103・105）と切替・処置の判断に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-13'> IRQ_AVB_13 {
            subject s : Parts::Part;
            doc /* ベイ冷却の監視は DPS・アビオニクス へ、ファン下流の温度センサのデータを AIR TEMP 計器と主 C&W のハードウェアチャネル 84・94・104（AV BAY/CABIN AIR 灯）へ送り、SM SYS SUMM 2 と SPEC 66 ENVIRONMENT にも表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "主 C&W ハードウェアチャネル 84・94・104"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-14'> IRQ_AVB_14 {
            subject s : Parts::Part;
            doc /* ベイ冷却の監視は DPS・アビオニクス へ、ファン差圧を SM SYS SUMM 2（DISP 79）と SPEC 66 に表示し、2.5 in H2O 未満または 4.3 in H2O 超（改良型ファンは 4.5・7.8）で SM 警報を出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "2.5 in H2O 未満または 4.3 in H2O 超（改良型 4.5・7.8）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-AVB-15'> IRQ_AVB_15 {
            subject s : Parts::Part;
            doc /* 電力系：交流配電（EPDC-AC） はベイ冷却の監視へ、Av Bay 1・2・3 の信号調整器に AC3・AC1・AC2 の B相をパネル L4 の遮断器から供給し、信号調整器を失った場合は両ファンを運転させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "Av Bay 1・2・3：AC3・AC1・AC2 の B相"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-01'> IRQ_CAC_01 {
            subject s : Parts::Part;
            doc /* 乗員室は 還流ダクト へ、乗員室の暖まった空気をフライトデッキ（電子機器のそばを通る）とミッドデッキの還流ダクトから吸い込ませ、WCS 区画の還流空気も取り込ませること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-02'> IRQ_CAC_02 {
            subject s : Parts::Part;
            doc /* 還流ダクトは キャビンファン・逆止弁 へ、300 ミクロンのフィルタを通った空気を2台のキャビンファンの入口へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CAC-03'> IRQ_CAC_03 {
            subject s : Parts::Part;
            doc /* 還流ダクトは 再生式 CO2 除去装置（RCRS） へ、RCRS 搭載時は、キャビンファンの上流からキャビン空気の一部（ARS の全流量の約6%）を RCRS へ引き出して除去後の空気をファンのフィルタの直上流に戻し、流量は乗員数に応じて 72 lb/hr または 110 lb/hr とすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約6%、72 lb/hr または 110 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CAC-04'> IRQ_CAC_04 {
            subject s : Parts::Part;
            doc /* 還流ダクトは 煙検知・消火系（FDS） へ、フライトデッキの左還流ダクトの A 群と右還流ダクトの B 群の煙感知器で還流空気の煙を検知すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CAC-05'> IRQ_CAC_05 {
            subject s : Parts::Part;
            doc /* キャビンファンは DPS・アビオニクス へ、還流空気を乗員室の電子機器のそばに通して吸い込み、強制空冷し、CCTV の RCU・VSU は温度センサを持たないこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-06'> IRQ_CAC_06 {
            subject s : Parts::Part;
            doc /* キャビンファンは 送風ダクト・分配 へ、運転中のファンが逆止弁を通して約 1,400 lb/hr の空気を出口ダクトへ送り、逆止弁が非運転ファンを通る逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約 1,400 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-07'> IRQ_CAC_07 {
            subject s : Parts::Part;
            doc /* キャビンファンは ファン差圧監視 へ、フィルタとファンの間とファン下流のダクトの圧力取出し口で、ファン前後の差圧を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-08'> IRQ_CAC_08 {
            subject s : Parts::Part;
            doc /* キャビンファンは 煙検知・消火系（FDS） へ、ミッドデッキ床下の ECLSS ベイのキャビンファン・プレナムの煙感知器で煙を検知し、パネル L1 の SMOKE DETECTION の CABIN 灯を点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CAC-09'> IRQ_CAC_09 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は キャビンファン へ、ファン A に AC3、B に AC2 の三相 115 V AC 電力を、パネル L4 の各3個の遮断器とパネル L1 の CABIN FAN スイッチを通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "三相 115 V AC"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-10'> IRQ_CAC_10 {
            subject s : Parts::Part;
            doc /* ファン運用は キャビンファン・逆止弁 へ、運用規則に従い、パネル L1 の CABIN FAN A・B スイッチで運転するファンを選び起動・停止する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-CAC-11'> IRQ_CAC_11 {
            subject s : Parts::Part;
            doc /* ファン差圧監視は ファン運用管理 へ、差圧の表示と警報を、ファンの喪失判定（A17-101）と切替・点検の判断に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-12'> IRQ_CAC_12 {
            subject s : Parts::Part;
            doc /* ファン差圧監視は DPS・アビオニクス へ、キャビンファン差圧を主 C&W のハードウェアチャネル 74（AV BAY/CABIN AIR 灯）と SM の表示（OPS 2・4 の PASS SM SYS SUMM 1 と SPEC 66、OPS 1・3 の BFS SM SYS SUMM 1）へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "チャネル 74"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-13'> IRQ_CAC_13 {
            subject s : Parts::Part;
            doc /* ダクト・分配は キャビン温湿度制御 へ、LiOH キャニスタへの分流を除いた主流を、キャビン温度制御弁とキャビン熱交換器（バイパスを含む）へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CAC-14'> IRQ_CAC_14 {
            subject s : Parts::Part;
            doc /* ダクト・分配は エアロック支援系 へ、ミッドデッキ床の継手から乗員が張るダクトを通して空気をエアロックのブースタファンへ送り、ダクトはハッチ越しに張ってハッチを閉じる前に外すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-CO2-01'> IRQ_CO2_01 {
            subject s : Parts::Part;
            doc /* キャビン空気循環は CO2 吸収 へ、キャビンファン出口の空気を、2個の LiOH キャニスタとオリフィスを並列に置いたダクトに送り、通過後の空気を同じダクトでキャビン温度制御弁とキャビン熱交換器へ向かわせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CO2-02'> IRQ_CO2_02 {
            subject s : Parts::Part;
            doc /* CO2 吸収は 交換式キャニスタ（LiOH・活性炭） へ、ダクト内のオリフィスで配分した各 120 lb/hr の空気を、2つのスロットに装着したキャニスタに通すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "各 120 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CO2-03'> IRQ_CO2_03 {
            subject s : Parts::Part;
            doc /* CO2 吸収は CO2・CO 監視 へ、PPCO2 トランスデューサを LiOH キャニスタへ分かれる手前のダクトに接続して、キャビンファン出口の空気の CO2 分圧を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CO2-04'> IRQ_CO2_04 {
            subject s : Parts::Part;
            doc /* CO2 除去用品の収納は 交換式キャニスタ（LiOH・活性炭）へ、予備のキャニスタを床下の収納区画（MD52M）に収め、交換時に取り出して使用位置（MD54G）へ装着できる構造・荷重の関係を支えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-CO2-05'> IRQ_CO2_05 {
            subject s : Parts::Part;
            doc /* キャビン温湿度制御は ATCO へ、キャビン熱交換器を出た再生・調整済み空気の一部を ATCO に送って CO を CO2 に変換させ、通過後の空気を乗員室へ戻して、生じた CO2 を LiOH キャニスタで除去させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CO2-06'> IRQ_CO2_06 {
            subject s : Parts::Part;
            doc /* CO2 監視は DPS・アビオニクス へ、キャビン空気の CO2 分圧を SM GPC へ送り、SM OPS 2・4 の DISP 66（ENVIRONMENT）に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "SM OPS 2・4 の DISP 66"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-CO2-07'> IRQ_CO2_07 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は CO2・CO 監視 へ、遮断器 AC1 CABIN AIR S/C を通じて CABIN AIR 信号調整器に AC1 φB の交流電力を供給し、この信号調整器が PPCO2 トランスデューサに給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-02'> IRQ_ECL_02 {
            subject s : Parts::Part;
            doc /* 与圧制御系（PCS）は 乗員室（制御対象） へ、14.7±0.2 psia に与圧した平均で窒素80%・酸素20%の混合気を、窒素貯蔵タンクの窒素を使って維持すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "14.7±0.2 psia、窒素80%・酸素20%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-03'> IRQ_ECL_03 {
            subject s : Parts::Part;
            doc /* 与圧制御系（PCS）は 給水・廃水系（H2O） へ、乗員室の窒素供給系から 15.5〜17.0 psig の窒素で各給水タンクと廃水タンクを加圧すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "15.5〜17.0 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-04'> IRQ_ECL_04 {
            subject s : Parts::Part;
            doc /* 与圧制御系（PCS）は エアロック支援系（ALS） へ、SCU 接続時に、オービタの酸素系から 900±500 psia の酸素をエアロック盤 AW82B を通じて供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "900±500 psia"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-05'> IRQ_ECL_05 {
            subject s : Parts::Part;
            doc /* ARS は 乗員室との間で、相対湿度を 30〜75% に制御し、二酸化炭素と一酸化炭素を無害な濃度に保ち、乗員室の温度と換気を制御することを、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "相対湿度 30〜75%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-06'> IRQ_ECL_06 {
            subject s : Parts::Part;
            doc /* ARS は ATCS へ、水冷却ループの熱を、水とフレオン21冷却ループの熱交換器（インターチェンジャ）で渡すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "フレオン21冷却ループ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-07'> IRQ_ECL_07 {
            subject s : Parts::Part;
            doc /* 給水・廃水系は ARS から、廃水タンクが ARS の湿度分離器と廃棄物収集系の廃水を受け入れること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-08'> IRQ_ECL_08 {
            subject s : Parts::Part;
            doc /* ARS は DPS・アビオニクスへ、水冷却ループを3つのアビオニクスベイの空気／水熱交換器とコールドプレートに通して、電子機器の熱を除くこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-11'> IRQ_ECL_11 {
            subject s : Parts::Part;
            doc /* ATCS は 油圧系（APU/HYD）との間で、軌道上の循環時にフレオン21ループがフレオン／油圧作動油熱交換器で油圧作動油を加温する熱を、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-12'> IRQ_ECL_12 {
            subject s : Parts::Part;
            doc /* 給水・廃水系は ATCS へ、FES 用の水を飲料水タンクから給水系統 A・B を通じて供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-13'> IRQ_ECL_13 {
            subject s : Parts::Part;
            doc /* 給水・廃水系は エアロック支援系（ALS）へ、タンク A・B の水をエアロックでの EMU 補給に使わせ、飲料水を 16±0.5 psi で EMU の給水リザーバへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "16±0.5 psi"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-14'> IRQ_ECL_14 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は 給水・廃水系（H2O） へ、尿を処理して廃水タンクへ送り、ARS の廃水も廃水タンクへ移すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-15'> IRQ_ECL_15 {
            subject s : Parts::Part;
            doc /* エアロック支援系は 大気再生系（ARS）へ、水冷却ループの経路に液冷服（LCG）熱交換器を含めて、LCG の熱を水冷却ループへ渡すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-16'> IRQ_ECL_16 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は エアロック支援系へ、エアロック盤 AW18H を通じて主母線 A または B の 28 VDC から 17±0.5 VDC・5 A を EMU へ供給し、EVA 後は PLSS のバッテリを充電させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "17±0.5 VDC・5 A"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-17'> IRQ_ECL_17 {
            subject s : Parts::Part;
            doc /* エアロック支援系は 乗員室との間で、内側ハッチの均圧弁でエアロックと乗員室の圧力を等しくして再与圧し、EVA 前は乗員室を 14.7 psi から 10.2 psi へ減圧することを、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "14.7 psi から 10.2 psi"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-18'> IRQ_ECL_18 {
            subject s : Parts::Part;
            doc /* 煙検知・消火系は DPS・アビオニクスへ、煙検知素子の警報と煙濃度の情報を CRT と計器盤 L1 に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-19'> IRQ_ECL_19 {
            subject s : Parts::Part;
            doc /* 煙検知・消火系は 乗員室へ、3つのアビオニクスベイにそれぞれ Freon 1301（Halon 1301）の消火ボトルを1本置き、計器盤の穴から携帯消火器のノズルを差し込んでパネル内部の火災に対処できること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-20'> IRQ_ECL_20 {
            subject s : Parts::Part;
            doc /* オービタは EMU との間で、サービス・冷却アンビリカル（SCU）を介して、EVA 準備時と終了後の EMU へ電力、酸素、液冷服の冷却、水を、双方向に供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-21'> IRQ_ECL_21 {
            subject s : Parts::Part;
            doc /* ATCS は 宇宙空間（船外）へ、軌道上は放熱器で排熱し、上昇と再突入のV = 12k（高度約175,000 ft）まではFES、その後は放熱器のコールドソーク、コールドソークが尽きた後はアンモニアボイラで排熱すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "V = 12k（高度約175,000 ft）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-22'> IRQ_ECL_22 {
            subject s : Parts::Part;
            doc /* 給水・廃水系は 宇宙空間（船外）へ、タンクの水を船外へダンプし、ダンプノズルをヒータで凍結から守ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-23'> IRQ_ECL_23 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は 宇宙空間（船外） へ、軌道上の不使用時に便器を真空ベント系に開放して固形物を乾燥させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-24'> IRQ_ECL_24 {
            subject s : Parts::Part;
            doc /* ATCS は 圧力制御系（PCS／ARPCS）へ、フレオンの一方の流路を ECLSS 酸素リストリクタに通して、ECLSS 用の PRSD 酸素を 40°F に加温すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "40°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-25'> IRQ_ECL_25 {
            subject s : Parts::Part;
            doc /* ATCS は DPS・アビオニクスへ、フレオンを中胴のコールドプレート網と後部アビオニクスベイ4・5・6に通して電子機器を冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-26'> IRQ_ECL_26 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は エアロック支援系から、エアロックからの EMU 凝縮水を受けて処理し、廃水タンクへ移すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-27'> IRQ_ECL_27 {
            subject s : Parts::Part;
            doc /* ARS は エアロック支援系（ALS）へ、EVA 以外の期間に空気循環系のダクトを通じて調整空気を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-28'> IRQ_ECL_28 {
            subject s : Parts::Part;
            doc /* DPS・アビオニクスは ATCS へ、FES 制御器を上昇時の高度 140,000 ft 超で BFS 計算機が自動でオンにし、再突入時の 100,000 ft でオフにし、アンモニア制御器を MM 304 の高度 120,000 ft の降下通過で BFS 計算機がオンにする指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "140,000 ft 超でオン、100,000 ft でオフ、120,000 ft でアンモニア制御器オン"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-29'> IRQ_ECL_29 {
            subject s : Parts::Part;
            doc /* ARS は DPS・アビオニクスとの間で、スイッチを GPC 位置にして GPC が水冷却ループのポンプを指令し、ポンプの出口圧力と差圧をシステム管理用 GPC へ送って DISP 88 に表示させ、キャビン熱交換器下流の温度とキャビン空気の CO2 分圧（PPCO2）を AIR TEMP 計器・SPEC 66 ENVIRONMENT・DISP 66 に表示させることを、双方向に伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-30'> IRQ_ECL_30 {
            subject s : Parts::Part;
            doc /* エアロックの減圧は 宇宙空間（船外） へ、2段階（5 psia、0 psia）でエアロック減圧弁から船外へ排気して行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "5 psia、0 psia の2段階"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-31'> IRQ_ECL_31 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は 乗員室（制御対象） との間で、乗員の生物系廃棄物をキャビン空気の気流で集め、ファンセパレータで分離した空気を臭気・細菌フィルタで浄化して乗員室へ戻し、ウェットトラッシュ区画の空気は真空ベント管から約 3 lb/day で船外へ排気すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約 3 lb/day"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-32'> IRQ_ECL_32 {
            subject s : Parts::Part;
            doc /* ARS は 誘導・航法・制御（GN&C）へ、IMU の強制空冷を3台すべてに供する3台のファンで行って同時に使うのは1台とし、ベイファンで交流駆動の Gould 製 TACAN を冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン3台（常用1）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-33'> IRQ_ECL_33 {
            subject s : Parts::Part;
            doc /* ARS は 電力系（EPS）へ、前方アビオニクスベイ1〜3のインバータ分配組立を空冷し、電力制御組立・負荷制御組立・モータ制御組立・インバータをコールドプレートに搭載して水冷却ループで冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-34'> IRQ_ECL_34 {
            subject s : Parts::Part;
            doc /* 打上げ処理システム（KSC）は ATCS へ、着陸後に地上冷却が始まったらアンモニアボイラを止めて GSE 熱交換器で排熱させ、射点ではパッド地上冷却系が GSE 熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-35'> IRQ_ECL_35 {
            subject s : Parts::Part;
            doc /* 給水・廃水系は データ処理系（DPS）へ、給水タンク量 A〜D と給水圧を軌道上は PASS SM の SPEC 66、上昇・再突入時は BFS の THERMAL 表示に送り、廃水タンク量と廃水圧を SPEC 66 ENVIRONMENT に送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-36'> IRQ_ECL_36 {
            subject s : Parts::Part;
            doc /* 与圧制御系（PCS）は データ処理系（DPS） へ、乗員室圧、PPO2 A・B、系統1・2の O2・N2 流量を主 C&W のハードウェアチャネル 4・14・24・34・44・54・64 へ送り、限界外で CABIN ATM 灯を点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "チャネル 4・14・24・34・44・54・64"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-37'> IRQ_ECL_37 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は データ処理系（DPS） へ、真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-38'> IRQ_ECL_38 {
            subject s : Parts::Part;
            doc /* エアロック支援系は データ処理系（DPS）へ、エアロックの雰囲気、ベスティビュール減圧弁、水配管、構造ヒータの計測値を、SM OPS 2 の SPEC 177 EXTERNAL AIRLOCK に表示させるよう伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-39'> IRQ_ECL_39 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は ARS へ、キャビンファンを三相 115 V AC の電動機（495 W）で駆動する交流電力を供給し、各ベイの2台のファンを別々の母線から給電すること、ベイ1のファン A・B は AC1・AC2、ベイ2は AC2・AC3、ベイ3は AC3・AC1につなぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "115 V AC（三相）、495 W"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-40'> IRQ_ECL_40 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 煙検知・消火系へ、パネル O14・O15・O16 の SMOKE DETN 遮断器から主母線 A・B・C の電力を感知器へ供給し、各ベイのボトルの PIC へは FIRE SUPPR BAY 1（主母線B、O15）・BAY 2（主母線C、O16）・BAY 3（主母線A、O14）の遮断器から電力を供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-41'> IRQ_ECL_41 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 給水・廃水系へ、パネル ML86B の A・B 列の遮断器から給水・廃水系の電動弁の電力を、MNA H2O LINE HTR A・MNB H2O LINE HTR B 遮断器から給水・廃水ダンプ配管のヒータの電力を供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-ECL-42'> IRQ_ECL_42 {
            subject s : Parts::Part;
            doc /* 与圧制御系（PCS）は 電力系（EPS） から、O14 の MNA と O15 の MNB にある O2/N2 CNTLR の遮断器でO2/N2 コントローラ1・2への給電を受け、O15 の MNB の PPO2 C CAB dP/dT 遮断器で dP/dT センサと PPO2 センサ C の電源を主母線 B から受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-ECL-43'> IRQ_ECL_43 {
            subject s : Parts::Part;
            doc /* 廃棄物収集系（WCS）は 電力系（EPS） から、ファンセパレータ1・2に MA73C の AC1・AC2 WCS FAN SEP 遮断器（計6個）から三相交流を、ML86B の MNA・MNB WCS CNTLR 遮断器から制御用の直流を受け、真空ベント隔離弁には MNA または MNB の直流を、真空ベント管の A・B ヒータには ML86B の H2O LINE HTR A・B 遮断器の電力を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "計6個の遮断器"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-FDS-01'> IRQ_FDS_01 {
            subject s : Parts::Part;
            doc /* ベイ空冷（ベイ内循環・機器空冷）は 煙感知器へ、各アビオニクスベイ（1・2・3A）の上部と下部の近くにある煙感知器 A・B へベイ内を循環する空気を吸引させ、ベイの両ファンが故障して空気が循環しない場合はそのベイの煙検知を喪失とみなす（A17-2A）運用条件を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-02'> IRQ_FDS_02 {
            subject s : Parts::Part;
            doc /* 煙感知器は 煙警報・回路試験へ、感知器が警報条件を満たすとトリップ信号を出し、パネル L1 の該当する SMOKE DETECTION 灯を点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-03'> IRQ_FDS_03 {
            subject s : Parts::Part;
            doc /* 煙感知器は DPS・アビオニクスへ、各感知器の濃度のアナログ出力を GPC へ送って SM SYS SUMM 1（SPEC 78）に表示させ、2.0 mg/m³ でバックアップ C&W が警報を出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "2.0 mg/m³"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-FDS-04'> IRQ_FDS_04 {
            subject s : Parts::Part;
            doc /* 直流配電（EPDC-DC）は 煙感知器へ、パネル O14・O15・O16 の SMOKE DETN 遮断器から主母線 A（L/R FLT DK、BAY 2A/3B）・B（BAY 1B/3A）・C（CABIN、BAY 1A/2B）の電力を供給し、主母線 A（DA1）を失うとフライトデッキ左右・ベイ2のA・ベイ3AのBの感知器が失われてキャビンの感知器は残ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-05'> IRQ_FDS_05 {
            subject s : Parts::Part;
            doc /* 煙警報は 煙感知器へ、パネル L1 の SENSOR RESET で感知器の論理回路をリセットし、CIRCUIT TEST で A 群または B 群の感知器に CNTL BUS BC3 の 28 V を加えて灯と20秒の時間遅れを試験させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "28 V、20秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-FDS-06'> IRQ_FDS_06 {
            subject s : Parts::Part;
            doc /* 煙警報は DPS・アビオニクスへ、煙警報で C&W のサイレンを鳴らしてパネル F2・F4・A7・MO52J の4つの MASTER ALARM 灯を点灯させ、C&W の電源 A（B）を失うと音声発生器 A（B）による煙警報音を失うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-07'> IRQ_FDS_07 {
            subject s : Parts::Part;
            doc /* 煙警報は 火災対応・運用管理へ、SMOKE DETECTION 灯・サイレンと DPS 表示の濃度を伝えて、乗員が火災の位置を特定し、実際の火災かを確かめられるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-08'> IRQ_FDS_08 {
            subject s : Parts::Part;
            doc /* ベイ空冷（ベイ内循環・機器空冷）は 固定消火ボトルから、AGENT DISCH で PIC がボトルの火工弁を作動させて Halon 1301 をアビオニクスベイへ放出し、ベイ内の Halon 濃度を 7.5〜9.5% にして消火に要る 4〜5% を超えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "7.5〜9.5%（消火に 4〜5%）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-09'> IRQ_FDS_09 {
            subject s : Parts::Part;
            doc /* 固定消火ボトルは DPS・アビオニクスへ、煙検知系と遠隔消火系の各種パラメータをテレメトリへ送り、MCC はボトルが空になったことは分かるが漏れの始まりや放出の時刻は分からない（A17-54A）関係を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-10'> IRQ_FDS_10 {
            subject s : Parts::Part;
            doc /* 直流配電（EPDC-DC）は 固定消火ボトルへ、各ベイのボトルの PIC へ FIRE SUPPR BAY 1（主母線B、O15）・BAY 2（主母線C、O16）・BAY 3（主母線A、O14）の遮断器から電力を供給し、ARM で AGENT DISCH 押しボタンに電力を加え、押すと1秒の時間遅れの後に主母線の電力を PIC へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "1秒の時間遅れ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-11'> IRQ_FDS_11 {
            subject s : Parts::Part;
            doc /* 携帯消火器は ベイ空冷（ベイ内循環・機器空冷）へ、アビオニクスベイの火災で固定ボトルの予備としてベイへ放出し、ベイ内の Halon 濃度を 6〜7% にし、煙検知を失ったベイでは再突入のための機器の電源投入前に放出する（A17-51A）ことを伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "6〜7%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-12'> IRQ_FDS_12 {
            subject s : Parts::Part;
            doc /* 携帯消火器は 乗員室へ、開放空間の火災では炎の根元へ、計器盤内部の火災では消火ポートにノズルを差し込んで放出し、Halon は乗員室ではキャビンファンを止めたときだけ有効で、空気が循環していると3本を放出しても濃度が 1% 未満にとどまること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "3本放出で 1% 未満（循環時）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-13'> IRQ_FDS_13 {
            subject s : Parts::Part;
            doc /* 消火の運用は ベイ固定消火ボトルへ、ベイの火災を確認したらそのベイの Halon ボトルを放出し、ベイファンを止める（A17-53A）指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-FDS-14'> IRQ_FDS_14 {
            subject s : Parts::Part;
            doc /* 消火の運用は 携帯消火器・消火ポートへ、乗員室の火災ではキャビンファンを止めてヘルメットを着けたうえで携帯の Halon ボトルを適切な消火ポートへ放出する指令を伝え、放出の前に乗員が火元を特定して火災を確かめる（A17-53B、A17-1A）指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-01'> IRQ_H2O_01 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水の受入は 給水貯蔵・分配へ、水素分離器と微生物フィルタを通った生成水をタンクAへ送り、満杯か入口弁が閉じているときは 1.5 psid の逆止弁を経てタンクB、さらにタンクC・Dへ送り、閉塞に備えて水素分離器を通らずにタンクBの入口マニホールドへ向かう冗長経路も持つこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "逆止弁 1.5 psid"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-02'> IRQ_H2O_02 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水の受入は 宇宙空間（船外）へ、水素分離器の銀パラジウム管を透過した水素を真空ベント配管を通して船外へ排出し、その排出量は約0.0000975 lb/hr であること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約0.0000975 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-03'> IRQ_H2O_03 {
            subject s : Parts::Part;
            doc /* 給水供給は 飲料水供給へ、タンクAの飲料水をギャレー給水弁を通してギャレーへ送り、ギャレー給水弁へは微生物フィルタの下流の給水を導くこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-04'> IRQ_H2O_04 {
            subject s : Parts::Part;
            doc /* 給水供給は 船外ダンプ・クロスタイへ、給水ダンプ配管をA-B側の出口マニホールドにつなぎ、タンクC・Dの水をクロスオーバ弁を経てダンプ配管へ送り、非常時は廃水タンクに入れた給水をクロスタイ経由で給水系へ戻して FES の冷却に使うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-05'> IRQ_H2O_05 {
            subject s : Parts::Part;
            doc /* 給水供給は DPS・アビオニクスへ、給水タンク量 A〜D と給水圧を軌道上は PASS SM の SPEC 66、上昇・再突入時は BFS の THERMAL 表示に送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-06'> IRQ_H2O_06 {
            subject s : Parts::Part;
            doc /* 直流配電（EPDC-DC）は 給水供給へ、パネル ML86B の A・B 列の遮断器からパネル R11L・ML31C で操作する給水・廃水系の電動弁の電力を供給し、電動弁は電力を失うとその位置にとどまってトークバックにバーバーポールを示すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-07'> IRQ_H2O_07 {
            subject s : Parts::Part;
            doc /* 廃水タンクは 廃棄物収集系：ファンセパレータ から、WCS で処理した尿と、エアロックからの EMU 凝縮水を受け入れること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-08'> IRQ_H2O_08 {
            subject s : Parts::Part;
            doc /* 廃水タンクは 船外ダンプ・クロスタイ へ、入口弁（出入口を兼ねる）を開いたときにタンクの廃水を廃水ダンプ配管へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-09'> IRQ_H2O_09 {
            subject s : Parts::Part;
            doc /* 廃水タンクは DPS・アビオニクス へ、廃水タンク量と廃水圧を SPEC 66 ENVIRONMENT に送り、廃水圧が 13 psig 未満か 22 psig 超で S66 WASTE H2O PRES の SM アラートを出させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "13〜22 psig"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-10'> IRQ_H2O_10 {
            subject s : Parts::Part;
            doc /* 給水・廃水ダンプは 宇宙空間（船外）へ、給水はダンプ隔離弁（乗員室内）とダンプ弁（中胴）を開いて、廃水は廃水ダンプ隔離弁とダンプ弁を開いて、それぞれのダンプノズルから船外へ捨てること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-11'> IRQ_H2O_11 {
            subject s : Parts::Part;
            doc /* 直流配電（EPDC-DC）は 給水・廃水ダンプへ、パネル ML86B の MNA H2O LINE HTR A・MNB H2O LINE HTR B 遮断器から給水・廃水ダンプ配管のヒータへ給電し、DUMP VLV ENABLE/NOZ HTR スイッチを ON にするとダンプノズルのヒータとダンプ弁スイッチに電力を入れること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-12'> IRQ_H2O_12 {
            subject s : Parts::Part;
            doc /* 給水・廃水ダンプは DPS・アビオニクスへ、給水・廃水のダンプ配管温度とノズル温度 A・B を SPEC 66 に送り、ダンプ配管温度が 45°F 未満か 125°F 超、またはノズル温度が 250°F 超で SM アラートを出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "配管 45°F 未満か 125°F 超、ノズル 250°F 超"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-13'> IRQ_H2O_13 {
            subject s : Parts::Part;
            doc /* 給水・廃水タンクの加圧は 給水貯蔵・分配へ、共通の H2O TK N2 マニホールドから給水タンク4基のベローズを加圧して水を系統へ押し出し、打上げ時はタンクA供給弁を閉じてベント弁を開き、タンクAだけを乗員室圧にすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-H2O-14'> IRQ_H2O_14 {
            subject s : Parts::Part;
            doc /* 給水・廃水タンクの加圧は 廃水貯蔵へ、給水タンクと同じ N2 マニホールドから廃水タンクを加圧すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-15'> IRQ_H2O_15 {
            subject s : Parts::Part;
            doc /* 廃水タンクは EMU補給・支援 から、EMU の補給後に廃水戻りラインを通るアレージダンプを受け入れ、EMU の給水は給水系の A-B 出口系統からフィルタと逆止弁を通ってエアロックへ送られること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-H2O-16'> IRQ_H2O_16 {
            subject s : Parts::Part;
            doc /* 給水・廃水タンクの加圧は 乗員室環境（制御対象）へ、上昇中にタンク A を乗員室へベントして生成水を受け入れ、燃料電池の浸水を防ぎ、タンク A 供給弁を開いたままベント弁をベントにすれば全タンクを乗員室圧にでき、水の代替加圧弁もマニホールドを乗員室へベントする予備の手段になること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-IMU-01'> IRQ_IMU_01 {
            subject s : Parts::Part;
            doc /* 乗員室（制御対象） は IMU 吸込み部へ、乗員室の空気を 300 ミクロンフィルタを通して吸い込ませ、3台の IMU へ導かせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "フィルタ 300 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-02'> IRQ_IMU_02 {
            subject s : Parts::Part;
            doc /* IMU 吸込み部は 誘導・航法・制御（GN&C） へ、ファンがキャビン空気を各 IMU の筐体に通して発熱を運び去り、3台の IMU に共通の 3台のファンのうち同時に 1台で強制空冷すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン 3台、同時運転は 1台"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-03'> IRQ_IMU_03 {
            subject s : Parts::Part;
            doc /* IMU 吸込み部は IMUファン・逆止弁 へ、IMU を通った空気を 3本の IMU 出口ホースと IMU マニホールドを通してIMUファンの入口へ送り、ファンのすぐ上流の 600 ミクロンフィルタでファンを保護すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "ファン上流のフィルタ 600 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-04'> IRQ_IMU_04 {
            subject s : Parts::Part;
            doc /* IMU ファンは IMU熱交換器・ダクト へ、運転中のファンが出口の逆止弁を通して公称 144 lb/hr の空気を IMU 熱交換器へ送り、逆止弁で非運転ファンを通る逆流を防ぐこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "公称 144 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-05'> IRQ_IMU_05 {
            subject s : Parts::Part;
            doc /* IMU ファンは ファン監視・表示 へ、IMU FAN 信号調整器が給電する回転数センサでファンが正常に回っていることを確かめ、ΔP センサでファンの差圧を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-IMU-06'> IRQ_IMU_06 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は IMU ファンへ、IMU ファン A・B・C に AC1・AC2・AC3 の三相 115 V AC 電力を、パネル L4 の各 3個の遮断器とパネル L1 の IMU FAN スイッチを通して別々の交流電源から供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "三相 115 V AC（A・B・C：AC1・AC2・AC3）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-07'> IRQ_IMU_07 {
            subject s : Parts::Part;
            doc /* IMU ファンの運用は IMUファン・逆止弁 へ、運用規則と故障処置手順に従ってパネル L1 の IMU FAN A・B・C スイッチで運転するファンを選んで入切する指令を送り、ON でファンが回り OFF で止まること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-IMU-08'> IRQ_IMU_08 {
            subject s : Parts::Part;
            doc /* IMU 熱交換器は 水冷却ループ：冷側熱交換器 へ、暖まった空気を IMU 熱交換器に通して熱を ARS の水冷却ループへ渡し、インターチェンジャで冷えた水が LCG 熱交換器・水チラー・キャビン熱交換器を経て IMU 熱交換器を流れること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-09'> IRQ_IMU_09 {
            subject s : Parts::Part;
            doc /* IMU 熱交換器は 乗員室（制御対象） へ、IMU 熱交換器で水冷却ループにより冷やした空気を乗員室へ戻すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-10'> IRQ_IMU_10 {
            subject s : Parts::Part;
            doc /* IMU ファンの監視は DPS・アビオニクス へ、IMU ファンの状態（運転中の「*」と回転数低下の「↓」など）を SM OPS 2 の PASS ENVIRONMENT（DISP 66）と SM SYS SUMM 1（DISP 78）に表示し、ΔP または回転数が限界を外れると SM アラートのメッセージを出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-11'> IRQ_IMU_11 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は IMU ファン監視 へ、IMU FAN 信号調整器にパネル L4 の遮断器（SIG CONDR IMU FAN）から AC3 の B 相の電力を、IMU ファン ΔP センサにパネル O14 の MNA の遮断器から電力を供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-IMU-12'> IRQ_IMU_12 {
            subject s : Parts::Part;
            doc /* IMU の監視は ファン運用管理 へ、ΔP と回転数の表示・SM アラートを、IMU ファンの喪失判定（A17-104）とファンの切替の判断に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-01'> IRQ_PCS_01 {
            subject s : Parts::Part;
            doc /* 酸素供給は O2/N2マニホールド・PPO2制御 へ、O2 レギュレータ入口弁を開くと 100 psig の O2 レギュレータで酸素を 100 psia に下げ、逆止弁を通してマニホールドへ送り、O2/N2 制御弁が閉じているときはマニホールド圧が 100 psi を下回ると酸素を補給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "100 psig、100 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-02'> IRQ_PCS_02 {
            subject s : Parts::Part;
            doc /* 窒素供給は O2/N2マニホールド・PPO2制御 へ、調圧した 200 psig の窒素を、O2/N2 コントローラが操作する O2/N2 制御弁で制御して流し、制御弁が開くと 200 psi の窒素でマニホールドを満たして O2 の逆止弁を閉じること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "200 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-03'> IRQ_PCS_03 {
            subject s : Parts::Part;
            doc /* O2/N2 マニホールドは 乗員室（制御対象） へ、乗員室圧が 14.7 psia を下回れば 14.7 psia キャビンレギュレータ（入口弁が開のとき）から、大きな漏れで 8 psia を下回れば 8 psia 非常用レギュレータから、MO10W の口を通して気体を流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "14.7 psia、8 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-04'> IRQ_PCS_04 {
            subject s : Parts::Part;
            doc /* 酸素供給は 乗員室（制御対象） へ、O2 クロスオーバマニホールドから C6・MO32M・MO69M の LEH クイックディスコネクトを通して LES のヘルメットへ呼吸用酸素を送り、直接 O2 弁からはミッドデッキへ約 20 lb/hr の酸素を流し、軌道上は LEH O2 8 のブリードオリフィスから代謝分の酸素を乗員室へ流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約 20 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-05'> IRQ_PCS_05 {
            subject s : Parts::Part;
            doc /* 酸素供給は エアロック支援系：EMU補給・支援 へ、エアロックの EMU 用 O2 供給弁から、EMU の補給と ISS への酸素移送のために O2 クロスオーバマニホールドの高圧の酸素を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-06'> IRQ_PCS_06 {
            subject s : Parts::Part;
            doc /* 窒素供給は 給水・廃水系：タンク加圧 へ、水タンク用 N2 レギュレータの入口弁を開くと 200 psi の窒素を 15.5〜17.0 psig に下げて流し、給水・廃水タンクを 17 psig に加圧して乗員の使用、船外ダンプ、FES への給水に必要な圧力で水を押し出させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "15.5〜17.0 psig、17 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-07'> IRQ_PCS_07 {
            subject s : Parts::Part;
            doc /* 圧力逃し弁は 乗員室（制御対象） との間で、CABIN RELIEF スイッチを ENABLE にすると電動弁が開いて乗員室圧を正圧逃し弁に導き、逃し弁が 15.5 psid で開いて 16.0 psid で全開となり、乗員室圧が外より低いときは並列の2個の負圧逃し弁が 0.2 psid で開いて外気を乗員室へ入れること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "15.5 psid 開、16.0 psid 全開、0.2 psid"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-08'> IRQ_PCS_08 {
            subject s : Parts::Part;
            doc /* 圧力逃し弁は 宇宙空間（船外） との間で、WCS 区画の後壁の裏にある正圧逃し弁とキャビンベント弁からペイロードベイへ逃がし、サイドハッチの下の負圧逃し弁から外気を乗員室へ入れ、ベント隔離弁とベント弁を両方開くと乗員室を中胴へ 2.0 psid で最大 1,080 lb/hr でベントすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "2.0 psid で最大 1,080 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-09'> IRQ_PCS_09 {
            subject s : Parts::Part;
            doc /* 窒素供給は 宇宙空間（船外） へ、200 psig の N2 レギュレータの逃し弁が 275 psig で開いて 245 psig で閉じ、レギュレータの故障による過圧から窒素系を守るために真空ベント管から船外へ窒素を逃がすこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "275 psig で開、245 psig で閉"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-10'> IRQ_PCS_10 {
            subject s : Parts::Part;
            doc /* PCS 監視は 乗員室（制御対象） から、乗員室の大気を乗員室圧トランスデューサ、PPO2 センサ A・B・C、ハードウェアの dP/dT センサで検知した値を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-11'> IRQ_PCS_11 {
            subject s : Parts::Part;
            doc /* PCS 監視は 酸素供給・分配 から、系統1・2の酸素系で O2 流量（0〜5 lbm/hr）と O2 レギュレータ圧（REG P）を計測した値を受け、SM SPEC 66 に表示すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "O2 流量 0〜5 lbm/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-12'> IRQ_PCS_12 {
            subject s : Parts::Part;
            doc /* PCS 監視は 窒素供給 から、系統1・2の窒素系で N2 流量（0〜5 lbm/hr）、N2 レギュレータ圧（REG P）、水タンクの N2 圧、N2 量のもとになる値を計測して受け、SM SPEC 66 に表示すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "N2 流量 0〜5 lbm/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-13'> IRQ_PCS_13 {
            subject s : Parts::Part;
            doc /* PCS 監視は O2/N2マニホールド・PPO2制御 へ、PPO2 センサ A のデータを O2/N2 コントローラ1に、センサ B のデータをコントローラ2に使わせ、PPO2 SNSR/VLV スイッチを REVERSE にすると対応を入れ替えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-14'> IRQ_PCS_14 {
            subject s : Parts::Part;
            doc /* PCS 監視は DPS・アビオニクス へ、乗員室圧、PPO2 A・B、系統1・2の O2・N2 流量を主 C&W のハードウェアチャネルへ送って限界外で CABIN ATM 灯を点灯させ、dP/dt センサの値が -0.08 psi/min を超えると 4つの MASTER ALARM 灯とクラクソン（クラス1）で急減圧を知らせること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "-0.08 psi/min"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-15'> IRQ_PCS_15 {
            subject s : Parts::Part;
            doc /* PCS 監視は 与圧運用管理 へ、14.7 psia に換算した等価 dP/dT を、上昇中の隔離できない漏れによる緊急中止（0.15 psia/min 超）と AOA（0.02〜0.15 psia/min）の判定に使う値として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "0.15 psia/min、0.02〜0.15 psia/min"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-16'> IRQ_PCS_16 {
            subject s : Parts::Part;
            doc /* PCS 運用管理は O2/N2マニホールド・PPO2制御 へ、軌道上では選んだ系統の 14.7 psia キャビンレギュレータ入口弁と O2 レギュレータ入口弁を開いて O2/N2 制御弁を AUTO にし、上昇・再突入では両系統の入口弁を閉じて PCS 1 の O2/N2 制御弁を開、PCS 2 を閉とする指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-17'> IRQ_PCS_17 {
            subject s : Parts::Part;
            doc /* PCS 運用管理は 酸素供給・分配 へ、PPO2 が 3.20 psia 未満なら飛行1日目の就寝前に O2 ブリードオリフィスを LEH のクイックディスコネクトに取り付けさせ、帰還日の軌道離脱準備で外させ、直接 O2 弁の流れを 10.2 psia の乗員室の維持といくつかの故障への対処に使うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "3.20 psia、10.2 psia"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-PCS-18'> IRQ_PCS_18 {
            subject s : Parts::Part;
            doc /* O2/N2 マニホールドは 電力系（EPS） から、O14 の MNA と O15 の MNB にある O2/N2 CNTLR の遮断器で O2/N2 コントローラ1・2への給電を受け、系統1の遮断器から L2 の SYS 1 O2/N2 CNTLR VLV スイッチにも主母線 A の電力を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-19'> IRQ_PCS_19 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は O2 クロスオーバ弁 へ、O14 の MNA O2 XOVR 1 遮断器から L2 の SYS 1 O2 XOVR スイッチに主母線 A の電力を供給し、O2 クロスオーバ弁は CLOSE 位置では通電されないこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-20'> IRQ_PCS_20 {
            subject s : Parts::Part;
            doc /* 窒素供給は 電力系（EPS） から、O14 の MNA の遮断器で L2 の N2 SYS 1 SUPPLY スイッチと SYS 1 N2 REG INLET スイッチに主母線 A の電力を受け、系統2の N2 SUPPLY スイッチと N2 REG INLET スイッチには O15 の MNB の遮断器から受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-21'> IRQ_PCS_21 {
            subject s : Parts::Part;
            doc /* 圧力逃し弁は 電力系（EPS） から、O14 の MNA の遮断器で L2 の CABIN VENT スイッチと CABIN VENT ISOL スイッチに主母線 A の電力を受け、CABIN RELIEF A スイッチには O15 の MNB、CABIN RELIEF B スイッチには O16 の MNC の遮断器から受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-22'> IRQ_PCS_22 {
            subject s : Parts::Part;
            doc /* PCS 監視は 電力系（EPS） から、O15 の MNB の PPO2 C CAB dP/dT 遮断器で dP/dT センサと PPO2 センサ C の電源を主母線 B から受け、その他の PCS の計測は専用信号調整器（DSC）から給電を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-PCS-23'> IRQ_PCS_23 {
            subject s : Parts::Part;
            doc /* 窒素供給は EVA：EVA後の手入れ・再充填 へ、MMU GN2 隔離弁を開くと N2 タンクと N2 供給弁の間から高圧の N2 を MMU へ供給でき、ISS への N2 移送は PCS N2 系統1だけで行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-RCRS-01'> IRQ_RCRS_01 {
            subject s : Parts::Part;
            doc /* RCRS ファンは 吸着・再生ベッド（A・B） へ、流量制御弁で設定した流量の空気を真空サイクル弁の空気ポペットを通して吸着中のベッドへ送り、流量を乗員数に応じて 72 lb/hr または 110 lb/hr とすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "72 lb/hr または 110 lb/hr（乗員数による）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCRS-02'> IRQ_RCRS_02 {
            subject s : Parts::Part;
            doc /* 吸着・再生ベッドは 温湿度制御：熱交換器・凝縮 へ、吸着中のベッドで CO2 を除いた空気を ARS の空気流へ戻し、キャビン熱交換器を通して乗員室へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "戻す位置はキャビンファンのフィルタのすぐ上流"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-03'> IRQ_RCRS_03 {
            subject s : Parts::Part;
            doc /* 吸着・再生ベッドは 宇宙空間（船外） へ、再生（脱着）中のベッドを機体の既存の真空ベント管へ開いて排気し、脱着した CO2 を船外へ捨て、標準構成ではパネル ML31C の真空ベント隔離弁を開にしておくこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-04'> IRQ_RCRS_04 {
            subject s : Parts::Part;
            doc /* 吸着・再生ベッドは 空気回収・均圧 へ、再生に入るベッドの空気を ullage-save 圧縮機が均圧弁を通して 75秒間吸い出して約 3 psia まで下げ、その後均圧弁で両ベッドの圧力をそろえ残る空気の半分を他方へ移すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "75秒、14.7 psia から約 3 psia"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-05'> IRQ_RCRS_05 {
            subject s : Parts::Part;
            doc /* RCRS の制御は 吸着・再生ベッド（A・B） へ、作動中の制御器が真空サイクル弁のアクチュエータ A・B を回してベッドの空気ポペットと真空ポペットを開閉し、吸着と再生を切り替える指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-RCRS-06'> IRQ_RCRS_06 {
            subject s : Parts::Part;
            doc /* RCRS の制御は 空気回収・均圧 へ、2台の制御器が 6個の均圧弁それぞれの 2つのコイルを 1つずつ受け持ち、作動中の制御器が工程に応じて均圧弁を開閉し ullage-save 圧縮機を動かす指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "圧縮機は起動 30秒後にベッド圧が開始時の 2/3 未満に下がったかを確かめる"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-07'> IRQ_RCRS_07 {
            subject s : Parts::Part;
            doc /* RCRS ファンは 計装・表示 へ、入口フィルタの差圧と入口空気温度を共通計装のセンサで測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-08'> IRQ_RCRS_08 {
            subject s : Parts::Part;
            doc /* 吸着・再生ベッドは 計装・表示 へ、各制御器が給電するベッドの圧力センサとベッド差圧センサ、共通計装の真空圧力センサで、ベッドと真空側の圧力を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-09'> IRQ_RCRS_09 {
            subject s : Parts::Part;
            doc /* RCRS の監視は 制御器・運転シーケンス へ、ベッド圧力・ベッド差圧などの計測値を作動中の制御器へ入力して故障検知に使わせ、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の表示が許容できないと自動停止の論理で RCRS を停止させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-10'> IRQ_RCRS_10 {
            subject s : Parts::Part;
            doc /* RCRS の監視は DPS・アビオニクス へ、RCRS の計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）を SM へ送り、SPEC 66 ENVIRONMENT の右下に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-11'> IRQ_RCRS_11 {
            subject s : Parts::Part;
            doc /* RCRS の制御は DPS・アビオニクス へ、制御器の状態を SPEC 66 の CO2 CNTLR 1・2 に示し、故障で停止すると故障ディスクリートのテレメトリを 6秒間「1」にし、制御器の故障かベッド圧力の異常で SM メッセージ「S66 CO2 RL SYS」を出すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "テレメトリ 6秒間「1」"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-12'> IRQ_RCRS_12 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は RCRS の制御へ、制御器 1 に AC1 と MN A、制御器 2 に AC3 と MN C の電力を、パネル MO51F の交流遮断器・電源スイッチとパネル ML86B:E の直流遮断器を通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "制御器 1：AC1・MN A、制御器 2：AC3・MN C"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-13'> IRQ_RCRS_13 {
            subject s : Parts::Part;
            doc /* 電力系（EPS） は RCRS の監視へ、共通計装のセンサにパネル ML86B の遮断器から MO51F の共通計装電源スイッチを通して MN B から給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "MN B"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-RCRS-14'> IRQ_RCRS_14 {
            subject s : Parts::Part;
            doc /* RCRS の運用は 制御器・運転シーケンス へ、運用規則と故障処置手順に従ってパネル MO51F のモードスイッチ（OPER/STBY）と電源スイッチで制御器を起動・停止し、故障時は他方の制御器に切り替える指令を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-RCRS-15'> IRQ_RCRS_15 {
            subject s : Parts::Part;
            doc /* RCRS の監視は RCRS運用管理 へ、PPCO2 と RCRS の表示・SM メッセージを、RCRS の喪失判定（PPCO2 7.6 mmHg、PPCO2 の把握）と故障処置の判断に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "PPCO2 7.6 mmHg"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-TCS-01'> IRQ_TCS_01 {
            subject s : Parts::Part;
            doc /* 熱交換器網は 大気再生系：水冷却ループ から、水冷却ループとフレオン21冷却ループの熱交換器（インターチェンジャ）で ARS の熱を受け取ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-02'> IRQ_TCS_02 {
            subject s : Parts::Part;
            doc /* 熱交換器網は 電力系：燃料電池 から、燃料電池熱交換器と中胴のコールドプレート網を並列に流れるフレオンで、燃料電池の排熱を受け取ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-03'> IRQ_TCS_03 {
            subject s : Parts::Part;
            doc /* 熱交換器網は 油圧系（APU/HYD） との間で、軌道上の循環時にフレオンがフレオン／油圧作動油熱交換器で油圧作動油を加温すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-04'> IRQ_TCS_04 {
            subject s : Parts::Part;
            doc /* 熱交換器網は 圧力制御系：PRSD O2 へ、フレオンの一方の流路を ECLSS 酸素リストリクタに通して、ECLSS 用の PRSD 酸素を 40°F に加温すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "40°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-TCS-05'> IRQ_TCS_05 {
            subject s : Parts::Part;
            doc /* 熱交換器網は DPS・アビオニクス へ、フレオンを中胴のコールドプレート網と後部アビオニクスベイ4・5・6、レートジャイロ組立のコールドプレートに通して電子機器を冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-06'> IRQ_TCS_06 {
            subject s : Parts::Part;
            doc /* 熱交換器網は ペイロード へ、フレオンの流路を流量配分弁を経てペイロード熱交換器と ARS インターチェンジャへ並列に流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-TCS-07'> IRQ_TCS_07 {
            subject s : Parts::Part;
            doc /* 熱交換器網は フレオン21冷却ループ×2 との間で、同一構成の2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、3種のヒートシンクで ATCS を構成すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-08'> IRQ_TCS_08 {
            subject s : Parts::Part;
            doc /* フレオン冷却ループは 放熱器（ラジエータ） へ、油圧熱交換器から放熱器へフレオンを流し、上昇・再突入時は放熱器のコールドソークによる冷却を使う場合を除いて、バイパス弁で放熱器を迂回させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-09'> IRQ_TCS_09 {
            subject s : Parts::Part;
            doc /* フレオン21冷却ループは フラッシュエバポレータ（FES） へ、FES が上昇時の高度 140,000 ft 超でフレオン21ループの熱を排出し、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約 100,000 ft まで排熱するように熱を送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "高度 140,000 ft 超、約 100,000 ft"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-10'> IRQ_TCS_10 {
            subject s : Parts::Part;
            doc /* フレオン21冷却ループは アンモニアボイラ（NH3） から、再突入でオービタが高度 400,000 ft を下回ってから、または着陸後の地上で冷却を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "高度 400,000 ft"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-11'> IRQ_TCS_11 {
            subject s : Parts::Part;
            doc /* フレオン21冷却ループは GSE熱交換器（地上冷却） へ、地上作業（点検・打上げ前・着陸後）にフレオン21ループ内の GSE 熱交換器が地上冷却によって機体の熱を排出させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-12'> IRQ_TCS_12 {
            subject s : Parts::Part;
            doc /* 放熱器は 宇宙空間（船外） へ、ペイロードベイドアを軌道上で開くと熱を宇宙空間へ放射すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-13'> IRQ_TCS_13 {
            subject s : Parts::Part;
            doc /* FES は 宇宙空間（船外） へ、トッピング蒸発器の蒸気を後部胴体両側の2つのソニックノズルから推力を生じずに排出し、高負荷蒸発器の蒸気は左側の1つのノズルから排出すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-14'> IRQ_TCS_14 {
            subject s : Parts::Part;
            doc /* アンモニアボイラは 宇宙空間（船外） へ、気化したアンモニアを垂直尾翼の右下付近の上部後部胴体から船外へ排出すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-TCS-15'> IRQ_TCS_15 {
            subject s : Parts::Part;
            doc /* GSE 熱交換器は 地上冷却・パージ設備 から、着陸後に地上冷却が始まるとアンモニアボイラを止めて GSE 熱交換器で排熱し、射点ではパッド地上冷却系が GSE 熱交換器を通じて機上ループを十分に冷やして軌道到達までの熱容量を確保すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-16'> IRQ_TCS_16 {
            subject s : Parts::Part;
            doc /* FES は 給水・廃水系（ECLSS） から、FES 用の水を飲料水タンクから給水系統 A・B を通じて受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-18'> IRQ_TCS_18 {
            subject s : Parts::Part;
            doc /* FES は DPS・アビオニクス から、GPC 位置の FES 制御器を、上昇時の高度 140,000 ft 超で BFS 計算機が自動でオンにし、再突入時の 100,000 ft でオフにする指令を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "140,000 ft、100,000 ft"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-19'> IRQ_TCS_19 {
            subject s : Parts::Part;
            doc /* アンモニアボイラは DPS・アビオニクス から、選択したアンモニア制御器（通常は B）を、オービタが MM 304 で高度 120,000 ft を降下通過するときに BFS 計算機がオンにする指令を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "高度 120,000 ft"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-TCS-21'> IRQ_TCS_21 {
            subject s : Parts::Part;
            doc /* フレオン冷却ループは DPS・アビオニクス から、FES 出口のフレオン温度を計器盤 O1 で監視させ、32.2°F 未満または 64.8°F 超（軌道投入後）でフレオンループの C/W 灯を点灯させる信号を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "32.2°F 未満、64.8°F 超"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-01'> IRQ_THC_01 {
            subject s : Parts::Part;
            doc /* 温度制御弁は キャビン熱交換器・凝縮 へ、迂回させなかった空気をキャビン熱交換器へ流し、FULL COOL では熱交換器への流量が最大、FULL HEAT では最小になること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-02'> IRQ_THC_02 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器は 温度制御弁・給気混合 へ、熱交換器で冷やした空気を、下流の給気ダクトでバイパス空気と合流させて送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-03'> IRQ_THC_03 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器は 水冷却ループの冷側熱交換器 へ、キャビン空気が拾った熱を ARS 水冷却ループへ移し、水冷却ループの冷えた水は液冷服熱交換器と飲料水チラーに続いてキャビン熱交換器を通ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-04'> IRQ_THC_04 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器は 湿度分離器・凝縮水排出 へ、熱交換器の slurper に集まった凝縮水を、湿度分離器が空気とともに吸い出せるよう、分離器の入口流量（空気と水）37〜41 lb/hr で渡すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "分離器入口流量 37〜41 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-05'> IRQ_THC_05 {
            subject s : Parts::Part;
            doc /* 湿度分離器は 給水・廃水系（廃水貯蔵） へ、分離した凝縮水を分離器の共通出口から排出ラインを経て廃水タンクへ送り、ISS 飛行では軌道上で凝縮水を CWC へ切り替えて溜めること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-06'> IRQ_THC_06 {
            subject s : Parts::Part;
            doc /* 湿度分離器は 乗員室 へ、分離器で水を除いた空気を 37 lb/hr で ECLSS ベイへ戻し、排気ダクトで乗員室へ返すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "37 lb/hr"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-07'> IRQ_THC_07 {
            subject s : Parts::Part;
            doc /* 温度制御弁・給気混合は 乗員室（制御対象） へ、給気ダクトで合流した空気を、CDR・PLT のコンソールと各所のダクト吹出口から吹き出して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-08'> IRQ_THC_08 {
            subject s : Parts::Part;
            doc /* キャビン熱交換器は 温度・分離器監視 へ、熱交換器の下流の空気出口温度センサで熱交換器を出た空気の温度を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-09'> IRQ_THC_09 {
            subject s : Parts::Part;
            doc /* 湿度分離器の回転検知（HUM SEP 信号調整器）は 温度・分離器監視 へ、HUM SEP 信号調整器が給電する回転数センサの出力を送り、湿度分離器が正常に回っているかを検知させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-10'> IRQ_THC_10 {
            subject s : Parts::Part;
            doc /* キャビン温度コントローラは 温度制御弁・給気混合 へ、有効なコントローラが給気ダクトと還流ダクトの温度を検知して乗員が選んだ温度に制御する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-11'> IRQ_THC_11 {
            subject s : Parts::Part;
            doc /* 温度・分離器の監視は DPS・アビオニクス へ、キャビン熱交換器下流の空気出口温度をパネル O1 の AIR TEMP 計器（CAB HX OUT）へ直接送り、SM SYS SUMM 1 と SPEC 66 ENVIRONMENT に表示し、145°F を超えるとパネル F7 の AV BAY/CABIN AIR 警報灯を点灯させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "145°F 超で警報灯"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-12'> IRQ_THC_12 {
            subject s : Parts::Part;
            doc /* 温度・分離器の監視は DPS・アビオニクス へ、湿度分離器 A・B の運転状態（HUMID SEP）とキャビン温度（CABIN T）を SM へ送って SPEC 66 ENVIRONMENT に表示させ、運転中の分離器の回転数が下がれば SM の警報 S66 HUMID SEP A(B) を出させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-13'> IRQ_THC_13 {
            subject s : Parts::Part;
            doc /* 温度・分離器の監視は 温湿度運用管理 へ、熱交換器出口温度・キャビン温度・分離器の運転状態の表示と警報を、キャビン大気制御の喪失判定（A17-102）と故障処置に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-14'> IRQ_THC_14 {
            subject s : Parts::Part;
            doc /* キャビン温湿度の運用は 温度制御弁・給気混合 へ、パネル L1 の CABIN TEMP CNTLR スイッチで有効なコントローラを選び、CABIN TEMP ロータリスイッチで温度を選ぶ指令を伝え、コントローラで弁を制御できなければ MD44F で弁アームを4つの固定穴の一つにピン止めすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "固定穴4つ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-15'> IRQ_THC_15 {
            subject s : Parts::Part;
            doc /* 温度・湿度の運用操作は 湿度分離器・凝縮水排出 へ、パネル L1 の HUMIDITY SEP A・B スイッチ（ON–OFF）の指令で、湿度分離器の電源を個別に入切りすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-THC-16'> IRQ_THC_16 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 温度制御弁 へ、キャビン温度コントローラ 1 に AC2 φA、コントローラ 2 に AC1 φA の交流電力を、パネル L4 の遮断器からパネル L1 のスイッチを通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-17'> IRQ_THC_17 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 湿度分離器 へ、分離器 A に AC1、B に AC2 の三相交流電力を、パネル L4 の各3個の遮断器からパネル L1 の HUMIDITY SEP スイッチを通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-THC-18'> IRQ_THC_18 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は 温度・分離器の監視 へ、遮断器 AC3 φA SIG CONDR HUM SEP を通じて湿度分離器の信号調整器に AC3 φA の交流電力を供給し、熱交換器空気出口温度とキャビン温度のセンサにはコントローラ 1 と同じ CABIN CNTLR 1 の遮断器から給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-01'> IRQ_WCL_01 {
            subject s : Parts::Part;
            doc /* ポンプパッケージは アビオニクス冷却経路 へ、ポンプを出た水を Av Bay 1、Av Bay 2 と窓、MDM と Av Bay 3A・3B の3つの並列経路に分けて送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "並列経路3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-02'> IRQ_WCL_02 {
            subject s : Parts::Part;
            doc /* アビオニクス冷却経路は インターチェンジャ・バイパス制御 へ、3つの並列経路をインターチェンジャの上流で合流させ、再び分けて一方をインターチェンジャへ、他方をバイパス経路へ流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-03'> IRQ_WCL_03 {
            subject s : Parts::Part;
            doc /* インターチェンジャは 冷側熱交換器 へ、インターチェンジャで冷えた水を液冷服熱交換器・飲料水チラー・キャビン熱交換器・IMU 熱交換器へ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-04'> IRQ_WCL_04 {
            subject s : Parts::Part;
            doc /* 冷側熱交換器は ポンプパッケージ へ、冷側の熱交換器を出た水をバイパス流と合流させてポンプパッケージへ戻すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-05'> IRQ_WCL_05 {
            subject s : Parts::Part;
            doc /* インターチェンジャ・バイパス経路は ポンプパッケージ へ、インターチェンジャと冷側の熱交換器を迂回する温水をポンプパッケージで冷側の水と合流させ、その量でポンプ出口の混合水温を決めること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-06'> IRQ_WCL_06 {
            subject s : Parts::Part;
            doc /* ポンプパッケージは インターチェンジャ・バイパス制御 へ、自動モードで、バイパス制御器がポンプ出口温度を設定値 63.0±2.5°F と比べてバイパス弁を開閉するための出口温度を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "63.0±2.5°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-07'> IRQ_WCL_07 {
            subject s : Parts::Part;
            doc /* ポンプパッケージは ループ計測・警報 へ、ポンプパッケージのアキュムレータ量、ポンプ出口圧、ポンプ出口温度、ポンプ差圧のセンサで計測して伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-08'> IRQ_WCL_08 {
            subject s : Parts::Part;
            doc /* インターチェンジャ経路は ループ計測・警報 へ、インターチェンジャ経路の流量センサと出口温度センサで、インターチェンジャ流量と出口温度を測って伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-09'> IRQ_WCL_09 {
            subject s : Parts::Part;
            doc /* ループ運用は ポンプパッケージ へ、パネル L1 の H2O PUMP LOOP 1 の A/B 選択スイッチと LOOP 1・2 の GPC/OFF/ON スイッチで、運転するポンプを選び起動・停止する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-10'> IRQ_WCL_10 {
            subject s : Parts::Part;
            doc /* ループ運用は インターチェンジャ・バイパス制御 へ、パネル L1 の LOOP 1・2 BYPASS MODE スイッチで自動・手動を選び、手動では MAN INCR/DECR スイッチでバイパス弁の位置を調整する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-11'> IRQ_WCL_11 {
            subject s : Parts::Part;
            doc /* ループ計測・警報は ループ運用管理 へ、ポンプ出口圧・アキュムレータ量・インターチェンジャ流量・ポンプ出口温度を、ARS 水ループの喪失判定（A18-101）とループ切替の判断に使う情報として伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-12'> IRQ_WCL_12 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は ポンプパッケージ へ、ループ1のポンプ A に AC1、B に AC2、ループ2のポンプに AC3 の三相電力を、パネル L4 の遮断器とパネル L1 の H2O PUMP スイッチを通して供給し、ループ2のポンプは GPC 位置では AC1 から給電し AC3 を失っても運転を続けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-13'> IRQ_WCL_13 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は インターチェンジャ経路 へ、バイパス弁を駆動する H2O CNTLR に、制御器 1 は AC3 の A 相、制御器 2 は AC1 の A 相をパネル L4 の遮断器を通して供給すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-14'> IRQ_WCL_14 {
            subject s : Parts::Part;
            doc /* 電力系（EPS）は ループ計測・警報 へ、パネル O14 の MN A からループ1のインターチェンジャ流量センサと IMU ファン差圧センサに、パネル O15 の MN B からループ2のインターチェンジャ流量センサに給電すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-15'> IRQ_WCL_15 {
            subject s : Parts::Part;
            doc /* DPS・アビオニクスは ポンプパッケージ へ、GPC 位置で SM GPC が PL MDM 1 経由でループ1のポンプを、PL MDM 2 経由でループ2のポンプを指令し、軌道上は6分 ON・4時間 OFF を繰り返させ、OPS 1・3・6 ではループ2の GPC-ON 指令を BFS に常駐させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "6分 ON・4時間 OFF"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-16'> IRQ_WCL_16 {
            subject s : Parts::Part;
            doc /* ループ計測・警報は DPS・アビオニクス へ、各ループのポンプ出口圧を主 C&W のハードウェアチャネル 105・115（パネル F7 の H2O LOOP 灯）とパネル O1 の計器へ送り、ポンプ出口圧・差圧・出口温度、アキュムレータ量、インターチェンジャ流量と出口温度、キャビン熱交換器入口温度を SM へ送って SPEC 88 に表示させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "チャネル 105・115"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-17'> IRQ_WCL_17 {
            subject s : Parts::Part;
            doc /* 水冷却ループは DPS・アビオニクス へ、前方アビオニクスベイの FF・PL・LF・LM MDM と、ミッドデッキ Av Bay 3B のマスタタイミングユニットをコールドプレートで冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-18'> IRQ_WCL_18 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 電力系（EPS） へ、前方アビオニクスベイ 1〜3 の電力制御組立・負荷制御組立・モータ制御組立・インバータをコールドプレートで冷却すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-19'> IRQ_WCL_19 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 乗員室 へ、Av Bay 2 経路の水でオービタのすべての窓の周りのシールを熱調整すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCL-20'> IRQ_WCL_20 {
            subject s : Parts::Part;
            doc /* 水冷却ループは 熱交換器・コールドプレート網 へ、水冷却ループが集めた熱をインターチェンジャで ATCS のフレオン冷却ループへ渡すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-21'> IRQ_WCL_21 {
            subject s : Parts::Part;
            doc /* エアロック支援系は 冷側熱交換器 へ、EMU ごとの閉じた LCVG 冷却ループの水を、エアロック内の LCVG 熱交換器でオービタの水冷却ループにより冷やし、水冷却ループの冷側経路はインターチェンジャの直後に液冷服熱交換器を通ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCL-22'> IRQ_WCL_22 {
            subject s : Parts::Part;
            doc /* 冷側経路は 給水・廃水系（飲料水供給） へ、飲料水チラーでギャレーへ送る給水の一方の経路を冷やすこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-01'> IRQ_WCS_01 {
            subject s : Parts::Part;
            doc /* 小便器は 乗員室（制御対象） から、乗員の尿を小便器のファンネルからキャビン空気の搬送気流（毎分 10 ft³ 以上）とともに吸い込むこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "毎分 10 ft³ 以上"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-02'> IRQ_WCS_02 {
            subject s : Parts::Part;
            doc /* 便器は 乗員室（制御対象） から、座面下の穴から毎分 30 ft³ で流れるキャビン空気とともに糞便を便器へ引き込み、使用前の便器の加圧もバラスト弁と校正オリフィスを通したキャビン空気で行うこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "毎分 30 ft³"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCS-03'> IRQ_WCS_03 {
            subject s : Parts::Part;
            doc /* 小便器は ファンセパレータ・フィルタ へ、尿と空気の混合物（EVA を行う飛行では EMU 凝縮水を含む）を、ホースブロックで選んだ一方のファンセパレータへ送ること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-04'> IRQ_WCS_04 {
            subject s : Parts::Part;
            doc /* 便器は ファンセパレータ・フィルタ へ、搬送空気を疎水性の多孔質ライナに通して自由な液体と細菌を除いたうえで、ファンセパレータへ引かれるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-05'> IRQ_WCS_05 {
            subject s : Parts::Part;
            doc /* 便器は 真空ベント へ、WCS を使わないときに便器（廃棄物収集器）を WCS の真空弁を通して真空ベント系にさらし、固形廃棄物を乾燥させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-06'> IRQ_WCS_06 {
            subject s : Parts::Part;
            doc /* ファンセパレータ・フィルタは 乗員室（制御対象） へ、ファンセパレータから出た空気を臭気・細菌フィルタに通し、キャビン空気と混ぜて毎分 38 ft³ で戻すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "毎分 38 ft³"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCS-07'> IRQ_WCS_07 {
            subject s : Parts::Part;
            doc /* 真空ベントは 乗員室（制御対象） から、ウェットトラッシュ区画の空気を真空ベント管から約 3 lb/day で船外へ排気し、少量のキャビン空気が常に WCS のウェットトラッシュ区画を通って船外へ抜けて WCS の臭気を抑えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "約 3 lb/day"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-08'> IRQ_WCS_08 {
            subject s : Parts::Part;
            doc /* 真空ベントは 給水・廃水系：船外ダンプ・クロスタイ との間で、真空ベント系が故障したときは真空ベント QD と非常用クロスタイの廃水 QD を移送ホースでつないで廃水ダンプ管から排気し、廃水タンクの弁が閉で故障した場合などは同じ QD で ARS の廃水を真空ベント管から船外へ捨てること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-09'> IRQ_WCS_09 {
            subject s : Parts::Part;
            doc /* 真空ベント系は 宇宙空間（船外）へ、真空ベント管の気体を、ヒータで凍結を防いだ管とノズルから船外へ排出し、隔離弁が閉でも弁板のオリフィスから 3.0±0.25 lb/hr を流すこと。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "3.0±0.25 lb/hr（隔離弁が閉のとき）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCS-10'> IRQ_WCS_10 {
            subject s : Parts::Part;
            doc /* ファンセパレータ・フィルタは 電力系（EPS） から、ファンセパレータ1・2に MA73C の AC1・AC2 WCS FAN SEP 遮断器（計6個）の三相交流と ML86B の MNA・MNB WCS CNTLR 遮断器の制御用の直流を受け、FAN SEP 選択スイッチが 1 のときは主母線 A の直流をファンセパレータ1に、2 のときは主母線 B の直流をファンセパレータ2に受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "計6個の遮断器"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-11'> IRQ_WCS_11 {
            subject s : Parts::Part;
            doc /* 真空ベントは 電力系（EPS） から、真空ベント隔離弁に MNA または MNB の直流を、真空ベント管の A・B ヒータに ML86B の H2O LINE HTR A・B 遮断器の電力を受け、MNA H2O LINE HTR A 遮断器から給水・廃水のダンプ管と真空ベント管のヒータに主母線 A の電力を受けること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCS-12'> IRQ_WCS_12 {
            subject s : Parts::Part;
            doc /* 真空ベントは DPS・アビオニクス へ、真空ベントノズル温度（VAC VT NOZ T）を SM の DISP 66 ENVIRONMENT に表示させ、廃棄物収集器の圧力は MCC が確認し、非常時の真空ベント運用では 1 psia 未満が5分続けば便器の使用を再開できるようにすること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "1 psia 未満が5分"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'IRQ-WCS-13'> IRQ_WCS_13 {
            subject s : Parts::Part;
            doc /* WCS 運用は ファンセパレータ・フィルタ へ、FAN SEP 選択スイッチで使うファンセパレータを選び、MODE スイッチが AUTO のときは小便器のホースをクレードルから外すと選んだ分離器を起動させ、リミットスイッチが故障したときはバイパススイッチで対応するリレーに直流を与えて分離器に交流を供給する指令を伝えること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-14'> IRQ_WCS_14 {
            subject s : Parts::Part;
            doc /* 便器・固形廃棄物の操作部（MODE スイッチ）は 便器・固形廃棄物 へ、MODE スイッチを OFF から動かすまで COMMODE CONTROL ハンドルを操作できないよう、機械的に連動させること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'IRQ-WCS-15'> IRQ_WCS_15 {
            subject s : Parts::Part;
            doc /* WCS 運用は 真空ベント へ、WCS の VACUUM VALVE で便器への真空ベント管を開閉する指令を伝え、軌道上は通常開き、打上げ・再突入と WCS の空気漏れなどの非常時に閉じ、真空ベント隔離弁は ML31C の WASTE H2O VACUUM VENT ISOL VLV CONTROL スイッチで開閉すること。 */
            @RequirementInfo { document = "SSD-IRQ-ECL-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
    }
    // ---- 導出（上位の L1・L2・L3・上位の IF のインタフェース要求 → 下位の IF のインタフェース要求）
    package Derivation {
        #derivation connection <'REQ-ALS-01>IRQ-ALS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_01;
            end #derive ::> InterfaceRequirements::IRQ_ALS_01;
        }
        #derivation connection <'REQ-ALS-02>IRQ-ALS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_02;
            end #derive ::> InterfaceRequirements::IRQ_ALS_01;
        }
        #derivation connection <'REQ-ALS-02>IRQ-ALS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_02;
            end #derive ::> InterfaceRequirements::IRQ_ALS_02;
        }
        #derivation connection <'REQ-ALS-08>IRQ-ALS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_08;
            end #derive ::> InterfaceRequirements::IRQ_ALS_03;
        }
        #derivation connection <'REQ-ALS-09>IRQ-ALS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_09;
            end #derive ::> InterfaceRequirements::IRQ_ALS_03;
        }
        #derivation connection <'REQ-ALS-08>IRQ-ALS-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_08;
            end #derive ::> InterfaceRequirements::IRQ_ALS_05;
        }
        #derivation connection <'REQ-ALS-08>IRQ-ALS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_08;
            end #derive ::> InterfaceRequirements::IRQ_ALS_06;
        }
        #derivation connection <'REQ-ALS-06>IRQ-ALS-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_06;
            end #derive ::> InterfaceRequirements::IRQ_ALS_07;
        }
        #derivation connection <'REQ-ALS-07>IRQ-ALS-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_07;
            end #derive ::> InterfaceRequirements::IRQ_ALS_07;
        }
        #derivation connection <'REQ-ALS-04>IRQ-ALS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_04;
            end #derive ::> InterfaceRequirements::IRQ_ALS_08;
        }
        #derivation connection <'REQ-ALS-05>IRQ-ALS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_05;
            end #derive ::> InterfaceRequirements::IRQ_ALS_08;
        }
        #derivation connection <'REQ-ALS-11>IRQ-ALS-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_11;
            end #derive ::> InterfaceRequirements::IRQ_ALS_09;
        }
        #derivation connection <'REQ-ALS-10>IRQ-ALS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_10;
            end #derive ::> InterfaceRequirements::IRQ_ALS_10;
        }
        #derivation connection <'REQ-ALS-03>IRQ-ALS-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_03;
            end #derive ::> InterfaceRequirements::IRQ_ALS_11;
        }
        #derivation connection <'REQ-ALS-07>IRQ-ALS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_07;
            end #derive ::> InterfaceRequirements::IRQ_ALS_12;
        }
        #derivation connection <'REQ-ALS-04>IRQ-ALS-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_04;
            end #derive ::> InterfaceRequirements::IRQ_ALS_13;
        }
        #derivation connection <'REQ-ALS-04>IRQ-ALS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_04;
            end #derive ::> InterfaceRequirements::IRQ_ALS_14;
        }
        #derivation connection <'REQ-ALS-04>IRQ-ALS-15'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_04;
            end #derive ::> InterfaceRequirements::IRQ_ALS_15;
        }
        #derivation connection <'REQ-ALS-05>IRQ-ALS-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_05;
            end #derive ::> InterfaceRequirements::IRQ_ALS_16;
        }
        #derivation connection <'REQ-ALS-11>IRQ-ALS-17'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ALS::REQ_ALS_11;
            end #derive ::> InterfaceRequirements::IRQ_ALS_17;
        }
        #derivation connection <'REQ-ARS-01>IRQ-ARS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_01;
            end #derive ::> InterfaceRequirements::IRQ_ARS_03;
        }
        #derivation connection <'REQ-ARS-24>IRQ-ARS-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_ARS_07;
        }
        #derivation connection <'REQ-ARS-29>IRQ-ARS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_ARS_08;
        }
        #derivation connection <'REQ-ARS-03>IRQ-ARS-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
            end #derive ::> InterfaceRequirements::IRQ_ARS_09;
        }
        #derivation connection <'REQ-ARS-20>IRQ-ARS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_20;
            end #derive ::> InterfaceRequirements::IRQ_ARS_10;
        }
        #derivation connection <'REQ-ARS-29>IRQ-ARS-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_ARS_11;
        }
        #derivation connection <'REQ-ARS-21>IRQ-ARS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
            end #derive ::> InterfaceRequirements::IRQ_ARS_12;
        }
        #derivation connection <'REQ-ARS-19>IRQ-ARS-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_19;
            end #derive ::> InterfaceRequirements::IRQ_ARS_16;
        }
        #derivation connection <'REQ-ARS-24>IRQ-ARS-17'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_ARS_17;
        }
        #derivation connection <'REQ-ARS-24>IRQ-ARS-18'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_ARS_18;
        }
        #derivation connection <'REQ-ARS-29>IRQ-ARS-19'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_ARS_19;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-20'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_20;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-21'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_21;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-22'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_22;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-23'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_23;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-24'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_24;
        }
        #derivation connection <'REQ-ARS-04>IRQ-ARS-25'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_04;
            end #derive ::> InterfaceRequirements::IRQ_ARS_25;
        }
        #derivation connection <'REQ-ARS-22>IRQ-ARS-27'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_22;
            end #derive ::> InterfaceRequirements::IRQ_ARS_27;
        }
        #derivation connection <'REQ-ARS-25>IRQ-ARS-28'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_25;
            end #derive ::> InterfaceRequirements::IRQ_ARS_28;
        }
        #derivation connection <'REQ-ARS-30>IRQ-ARS-29'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_30;
            end #derive ::> InterfaceRequirements::IRQ_ARS_29;
        }
        #derivation connection <'REQ-ARS-35>IRQ-ARS-30'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_35;
            end #derive ::> InterfaceRequirements::IRQ_ARS_30;
        }
        #derivation connection <'REQ-ARS-36>IRQ-ARS-31'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_36;
            end #derive ::> InterfaceRequirements::IRQ_ARS_31;
        }
        #derivation connection <'REQ-ARS-02>IRQ-ARS-32'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_02;
            end #derive ::> InterfaceRequirements::IRQ_ARS_32;
        }
        #derivation connection <'REQ-ARS-16>IRQ-ARS-33'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_16;
            end #derive ::> InterfaceRequirements::IRQ_ARS_33;
        }
        #derivation connection <'REQ-ARS-27>IRQ-ARS-34'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_27;
            end #derive ::> InterfaceRequirements::IRQ_ARS_34;
        }
        #derivation connection <'REQ-ARS-11>IRQ-ARS-37'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_11;
            end #derive ::> InterfaceRequirements::IRQ_ARS_37;
        }
        #derivation connection <'REQ-ARS-11>IRQ-ARS-38'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_11;
            end #derive ::> InterfaceRequirements::IRQ_ARS_38;
        }
        #derivation connection <'REQ-ARS-03>IRQ-ARS-39'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
            end #derive ::> InterfaceRequirements::IRQ_ARS_39;
        }
        #derivation connection <'REQ-ARS-26>IRQ-ARS-41'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_26;
            end #derive ::> InterfaceRequirements::IRQ_ARS_41;
        }
        #derivation connection <'REQ-ARS-33>IRQ-ARS-42'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_ARS_42;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_01;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_02;
        }
        #derivation connection <'REQ-ARS-26>IRQ-AVB-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_26;
            end #derive ::> InterfaceRequirements::IRQ_AVB_02;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_03;
        }
        #derivation connection <'REQ-ARS-26>IRQ-AVB-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_26;
            end #derive ::> InterfaceRequirements::IRQ_AVB_04;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_05;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_09;
        }
        #derivation connection <'REQ-ARS-24>IRQ-AVB-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_24;
            end #derive ::> InterfaceRequirements::IRQ_AVB_10;
        }
        #derivation connection <'REQ-ARS-26>IRQ-AVB-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_26;
            end #derive ::> InterfaceRequirements::IRQ_AVB_11;
        }
        #derivation connection <'REQ-ARS-25>IRQ-AVB-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_25;
            end #derive ::> InterfaceRequirements::IRQ_AVB_12;
        }
        #derivation connection <'REQ-ARS-25>IRQ-AVB-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_25;
            end #derive ::> InterfaceRequirements::IRQ_AVB_13;
        }
        #derivation connection <'REQ-ARS-25>IRQ-AVB-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_25;
            end #derive ::> InterfaceRequirements::IRQ_AVB_14;
        }
        #derivation connection <'REQ-ARS-03>IRQ-CAC-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
            end #derive ::> InterfaceRequirements::IRQ_CAC_01;
        }
        #derivation connection <'REQ-ARS-03>IRQ-CAC-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
            end #derive ::> InterfaceRequirements::IRQ_CAC_02;
        }
        #derivation connection <'REQ-ARS-15>IRQ-CAC-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_15;
            end #derive ::> InterfaceRequirements::IRQ_CAC_03;
        }
        #derivation connection <'REQ-ARS-03>IRQ-CAC-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_03;
            end #derive ::> InterfaceRequirements::IRQ_CAC_05;
        }
        #derivation connection <'REQ-ARS-01>IRQ-CAC-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_01;
            end #derive ::> InterfaceRequirements::IRQ_CAC_06;
        }
        #derivation connection <'REQ-ARS-02>IRQ-CAC-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_02;
            end #derive ::> InterfaceRequirements::IRQ_CAC_09;
        }
        #derivation connection <'REQ-ARS-05>IRQ-CAC-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_05;
            end #derive ::> InterfaceRequirements::IRQ_CAC_10;
        }
        #derivation connection <'REQ-ARS-05>IRQ-CAC-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_05;
            end #derive ::> InterfaceRequirements::IRQ_CAC_11;
        }
        #derivation connection <'REQ-ARS-04>IRQ-CAC-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_04;
            end #derive ::> InterfaceRequirements::IRQ_CAC_12;
        }
        #derivation connection <'REQ-ARS-01>IRQ-CAC-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_01;
            end #derive ::> InterfaceRequirements::IRQ_CAC_13;
        }
        #derivation connection <'REQ-ARS-07>IRQ-CAC-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_07;
            end #derive ::> InterfaceRequirements::IRQ_CAC_14;
        }
        #derivation connection <'REQ-ARS-08>IRQ-CO2-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_08;
            end #derive ::> InterfaceRequirements::IRQ_CO2_01;
        }
        #derivation connection <'REQ-ARS-08>IRQ-CO2-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_08;
            end #derive ::> InterfaceRequirements::IRQ_CO2_02;
        }
        #derivation connection <'REQ-ARS-12>IRQ-CO2-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_12;
            end #derive ::> InterfaceRequirements::IRQ_CO2_04;
        }
        #derivation connection <'REQ-ARS-13>IRQ-CO2-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_13;
            end #derive ::> InterfaceRequirements::IRQ_CO2_05;
        }
        #derivation connection <'REQ-ARS-11>IRQ-CO2-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_11;
            end #derive ::> InterfaceRequirements::IRQ_CO2_06;
        }
        #derivation connection <'REQ-ECLSS-01>IRQ-ECL-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_01;
            end #derive ::> InterfaceRequirements::IRQ_ECL_02;
        }
        #derivation connection <'REQ-ECLSS-04>IRQ-ECL-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> InterfaceRequirements::IRQ_ECL_04;
        }
        #derivation connection <'REQ-ECLSS-05>IRQ-ECL-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> InterfaceRequirements::IRQ_ECL_05;
        }
        #derivation connection <'REQ-ECLSS-07>IRQ-ECL-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> InterfaceRequirements::IRQ_ECL_06;
        }
        #derivation connection <'REQ-ECLSS-05>IRQ-ECL-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> InterfaceRequirements::IRQ_ECL_07;
        }
        #derivation connection <'IRQ-ORB-13>IRQ-ECL-08'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_13;
            end #derive ::> InterfaceRequirements::IRQ_ECL_08;
        }
        #derivation connection <'REQ-ECLSS-07>IRQ-ECL-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_07;
            end #derive ::> InterfaceRequirements::IRQ_ECL_08;
        }
        #derivation connection <'IRQ-ORB-12>IRQ-ECL-11'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_12;
            end #derive ::> InterfaceRequirements::IRQ_ECL_11;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ECL-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ECL_12;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ECL-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ECL_13;
        }
        #derivation connection <'REQ-ECLSS-13>IRQ-ECL-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> InterfaceRequirements::IRQ_ECL_14;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-16'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_16;
        }
        #derivation connection <'REQ-ECLSS-04>IRQ-ECL-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> InterfaceRequirements::IRQ_ECL_17;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-18'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_18;
        }
        #derivation connection <'REQ-ECLSS-11>IRQ-ECL-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> InterfaceRequirements::IRQ_ECL_18;
        }
        #derivation connection <'REQ-ECLSS-11>IRQ-ECL-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_11;
            end #derive ::> InterfaceRequirements::IRQ_ECL_19;
        }
        #derivation connection <'IRQ-ORB-45>IRQ-ECL-20'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_45;
            end #derive ::> InterfaceRequirements::IRQ_ECL_20;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ECL-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ECL_21;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ECL-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ECL_22;
        }
        #derivation connection <'IRQ-ORB-13>IRQ-ECL-25'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_13;
            end #derive ::> InterfaceRequirements::IRQ_ECL_25;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ECL-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ECL_25;
        }
        #derivation connection <'REQ-ECLSS-10>IRQ-ECL-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_10;
            end #derive ::> InterfaceRequirements::IRQ_ECL_26;
        }
        #derivation connection <'REQ-ECLSS-05>IRQ-ECL-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_05;
            end #derive ::> InterfaceRequirements::IRQ_ECL_27;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-28'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_28;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ECL-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ECL_28;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-29'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_29;
        }
        #derivation connection <'REQ-ECLSS-04>IRQ-ECL-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_04;
            end #derive ::> InterfaceRequirements::IRQ_ECL_30;
        }
        #derivation connection <'REQ-ECLSS-13>IRQ-ECL-31'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_13;
            end #derive ::> InterfaceRequirements::IRQ_ECL_31;
        }
        #derivation connection <'IRQ-ORB-34>IRQ-ECL-32'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_34;
            end #derive ::> InterfaceRequirements::IRQ_ECL_32;
        }
        #derivation connection <'IRQ-ORB-35>IRQ-ECL-33'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_35;
            end #derive ::> InterfaceRequirements::IRQ_ECL_33;
        }
        #derivation connection <'IRQ-ORB-32>IRQ-ECL-34'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_32;
            end #derive ::> InterfaceRequirements::IRQ_ECL_34;
        }
        #derivation connection <'REQ-ECLSS-08>IRQ-ECL-34'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ECLSS::REQ_ECLSS_08;
            end #derive ::> InterfaceRequirements::IRQ_ECL_34;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-35'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_35;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-36'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_36;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-37'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_37;
        }
        #derivation connection <'IRQ-ORB-19>IRQ-ECL-38'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_19;
            end #derive ::> InterfaceRequirements::IRQ_ECL_38;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-39'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_39;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-40'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_40;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-41'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_41;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-42'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_42;
        }
        #derivation connection <'IRQ-ORB-14>IRQ-ECL-43'> {
            end #original ::> SSD_IRQ_SYS_001::InterfaceRequirements::IRQ_ORB_14;
            end #derive ::> InterfaceRequirements::IRQ_ECL_43;
        }
        #derivation connection <'REQ-FDS-02>IRQ-FDS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_02;
            end #derive ::> InterfaceRequirements::IRQ_FDS_01;
        }
        #derivation connection <'REQ-FDS-01>IRQ-FDS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_01;
            end #derive ::> InterfaceRequirements::IRQ_FDS_02;
        }
        #derivation connection <'REQ-FDS-02>IRQ-FDS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_02;
            end #derive ::> InterfaceRequirements::IRQ_FDS_03;
        }
        #derivation connection <'REQ-FDS-03>IRQ-FDS-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_03;
            end #derive ::> InterfaceRequirements::IRQ_FDS_05;
        }
        #derivation connection <'REQ-FDS-03>IRQ-FDS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_03;
            end #derive ::> InterfaceRequirements::IRQ_FDS_06;
        }
        #derivation connection <'REQ-FDS-04>IRQ-FDS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_04;
            end #derive ::> InterfaceRequirements::IRQ_FDS_08;
        }
        #derivation connection <'REQ-FDS-05>IRQ-FDS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_05;
            end #derive ::> InterfaceRequirements::IRQ_FDS_08;
        }
        #derivation connection <'REQ-FDS-04>IRQ-FDS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_04;
            end #derive ::> InterfaceRequirements::IRQ_FDS_10;
        }
        #derivation connection <'REQ-FDS-06>IRQ-FDS-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_06;
            end #derive ::> InterfaceRequirements::IRQ_FDS_11;
        }
        #derivation connection <'REQ-FDS-06>IRQ-FDS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_06;
            end #derive ::> InterfaceRequirements::IRQ_FDS_12;
        }
        #derivation connection <'REQ-FDS-08>IRQ-FDS-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_08;
            end #derive ::> InterfaceRequirements::IRQ_FDS_13;
        }
        #derivation connection <'REQ-FDS-08>IRQ-FDS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_FDS::REQ_FDS_08;
            end #derive ::> InterfaceRequirements::IRQ_FDS_14;
        }
        #derivation connection <'REQ-WTR-01>IRQ-H2O-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_01;
            end #derive ::> InterfaceRequirements::IRQ_H2O_01;
        }
        #derivation connection <'REQ-WTR-01>IRQ-H2O-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_01;
            end #derive ::> InterfaceRequirements::IRQ_H2O_02;
        }
        #derivation connection <'REQ-WTR-08>IRQ-H2O-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_08;
            end #derive ::> InterfaceRequirements::IRQ_H2O_04;
        }
        #derivation connection <'REQ-WTR-04>IRQ-H2O-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_04;
            end #derive ::> InterfaceRequirements::IRQ_H2O_05;
        }
        #derivation connection <'REQ-WTR-11>IRQ-H2O-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_11;
            end #derive ::> InterfaceRequirements::IRQ_H2O_07;
        }
        #derivation connection <'REQ-WTR-12>IRQ-H2O-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_12;
            end #derive ::> InterfaceRequirements::IRQ_H2O_08;
        }
        #derivation connection <'REQ-WTR-07>IRQ-H2O-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_07;
            end #derive ::> InterfaceRequirements::IRQ_H2O_10;
        }
        #derivation connection <'REQ-WTR-03>IRQ-H2O-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_03;
            end #derive ::> InterfaceRequirements::IRQ_H2O_10;
        }
        #derivation connection <'REQ-WTR-03>IRQ-H2O-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_03;
            end #derive ::> InterfaceRequirements::IRQ_H2O_11;
        }
        #derivation connection <'REQ-WTR-07>IRQ-H2O-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_07;
            end #derive ::> InterfaceRequirements::IRQ_H2O_11;
        }
        #derivation connection <'REQ-WTR-07>IRQ-H2O-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_07;
            end #derive ::> InterfaceRequirements::IRQ_H2O_12;
        }
        #derivation connection <'REQ-WTR-05>IRQ-H2O-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_05;
            end #derive ::> InterfaceRequirements::IRQ_H2O_13;
        }
        #derivation connection <'REQ-WTR-05>IRQ-H2O-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_05;
            end #derive ::> InterfaceRequirements::IRQ_H2O_14;
        }
        #derivation connection <'REQ-WTR-06>IRQ-H2O-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WTR::REQ_WTR_06;
            end #derive ::> InterfaceRequirements::IRQ_H2O_16;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_01;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_02;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_03;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_04;
        }
        #derivation connection <'REQ-ARS-30>IRQ-IMU-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_30;
            end #derive ::> InterfaceRequirements::IRQ_IMU_05;
        }
        #derivation connection <'REQ-ARS-30>IRQ-IMU-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_30;
            end #derive ::> InterfaceRequirements::IRQ_IMU_07;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_08;
        }
        #derivation connection <'REQ-ARS-29>IRQ-IMU-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_29;
            end #derive ::> InterfaceRequirements::IRQ_IMU_09;
        }
        #derivation connection <'REQ-ARS-30>IRQ-IMU-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_30;
            end #derive ::> InterfaceRequirements::IRQ_IMU_10;
        }
        #derivation connection <'REQ-ARS-30>IRQ-IMU-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_30;
            end #derive ::> InterfaceRequirements::IRQ_IMU_12;
        }
        #derivation connection <'REQ-PCS-06>IRQ-PCS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_06;
            end #derive ::> InterfaceRequirements::IRQ_PCS_01;
        }
        #derivation connection <'REQ-PCS-03>IRQ-PCS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_03;
            end #derive ::> InterfaceRequirements::IRQ_PCS_02;
        }
        #derivation connection <'REQ-PCS-01>IRQ-PCS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_01;
            end #derive ::> InterfaceRequirements::IRQ_PCS_03;
        }
        #derivation connection <'REQ-PCS-07>IRQ-PCS-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_07;
            end #derive ::> InterfaceRequirements::IRQ_PCS_04;
        }
        #derivation connection <'REQ-PCS-04>IRQ-PCS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_04;
            end #derive ::> InterfaceRequirements::IRQ_PCS_06;
        }
        #derivation connection <'REQ-PCS-08>IRQ-PCS-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_08;
            end #derive ::> InterfaceRequirements::IRQ_PCS_07;
        }
        #derivation connection <'REQ-PCS-08>IRQ-PCS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_08;
            end #derive ::> InterfaceRequirements::IRQ_PCS_08;
        }
        #derivation connection <'REQ-PCS-09>IRQ-PCS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_09;
            end #derive ::> InterfaceRequirements::IRQ_PCS_08;
        }
        #derivation connection <'REQ-PCS-03>IRQ-PCS-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_03;
            end #derive ::> InterfaceRequirements::IRQ_PCS_09;
        }
        #derivation connection <'REQ-PCS-10>IRQ-PCS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_10;
            end #derive ::> InterfaceRequirements::IRQ_PCS_10;
        }
        #derivation connection <'REQ-PCS-10>IRQ-PCS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_10;
            end #derive ::> InterfaceRequirements::IRQ_PCS_14;
        }
        #derivation connection <'REQ-PCS-02>IRQ-PCS-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_02;
            end #derive ::> InterfaceRequirements::IRQ_PCS_16;
        }
        #derivation connection <'REQ-PCS-07>IRQ-PCS-17'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_07;
            end #derive ::> InterfaceRequirements::IRQ_PCS_17;
        }
        #derivation connection <'REQ-PCS-02>IRQ-PCS-18'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_02;
            end #derive ::> InterfaceRequirements::IRQ_PCS_18;
        }
        #derivation connection <'REQ-PCS-08>IRQ-PCS-21'> {
            end #original ::> SSD_RQL_ECL_001::REQ_PCS::REQ_PCS_08;
            end #derive ::> InterfaceRequirements::IRQ_PCS_21;
        }
        #derivation connection <'REQ-ARS-15>IRQ-RCRS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_15;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_01;
        }
        #derivation connection <'REQ-ARS-14>IRQ-RCRS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_14;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_02;
        }
        #derivation connection <'REQ-ARS-14>IRQ-RCRS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_14;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_03;
        }
        #derivation connection <'REQ-ARS-14>IRQ-RCRS-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_14;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_05;
        }
        #derivation connection <'REQ-ARS-14>IRQ-RCRS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_14;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_06;
        }
        #derivation connection <'REQ-ARS-17>IRQ-RCRS-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_17;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_09;
        }
        #derivation connection <'REQ-ARS-17>IRQ-RCRS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_17;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_10;
        }
        #derivation connection <'REQ-ARS-16>IRQ-RCRS-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_16;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_11;
        }
        #derivation connection <'REQ-ARS-16>IRQ-RCRS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_16;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_12;
        }
        #derivation connection <'REQ-ARS-17>IRQ-RCRS-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_17;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_13;
        }
        #derivation connection <'REQ-ARS-18>IRQ-RCRS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_18;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_14;
        }
        #derivation connection <'REQ-ARS-18>IRQ-RCRS-15'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_18;
            end #derive ::> InterfaceRequirements::IRQ_RCRS_15;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_01;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_02;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_03;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_04;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_05;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_06;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_07;
        }
        #derivation connection <'REQ-ATCS-02>IRQ-TCS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_02;
            end #derive ::> InterfaceRequirements::IRQ_TCS_08;
        }
        #derivation connection <'REQ-ATCS-05>IRQ-TCS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_05;
            end #derive ::> InterfaceRequirements::IRQ_TCS_12;
        }
        #derivation connection <'REQ-ATCS-04>IRQ-TCS-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_04;
            end #derive ::> InterfaceRequirements::IRQ_TCS_13;
        }
        #derivation connection <'REQ-ATCS-06>IRQ-TCS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_06;
            end #derive ::> InterfaceRequirements::IRQ_TCS_14;
        }
        #derivation connection <'REQ-ATCS-07>IRQ-TCS-15'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_07;
            end #derive ::> InterfaceRequirements::IRQ_TCS_15;
        }
        #derivation connection <'REQ-ATCS-04>IRQ-TCS-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_04;
            end #derive ::> InterfaceRequirements::IRQ_TCS_16;
        }
        #derivation connection <'REQ-ATCS-08>IRQ-TCS-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_08;
            end #derive ::> InterfaceRequirements::IRQ_TCS_16;
        }
        #derivation connection <'REQ-ATCS-04>IRQ-TCS-18'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_04;
            end #derive ::> InterfaceRequirements::IRQ_TCS_18;
        }
        #derivation connection <'REQ-ATCS-06>IRQ-TCS-19'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ATCS::REQ_ATCS_06;
            end #derive ::> InterfaceRequirements::IRQ_TCS_19;
        }
        #derivation connection <'REQ-ARS-20>IRQ-THC-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_20;
            end #derive ::> InterfaceRequirements::IRQ_THC_01;
        }
        #derivation connection <'REQ-ARS-21>IRQ-THC-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
            end #derive ::> InterfaceRequirements::IRQ_THC_04;
        }
        #derivation connection <'REQ-ARS-21>IRQ-THC-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
            end #derive ::> InterfaceRequirements::IRQ_THC_05;
        }
        #derivation connection <'REQ-ARS-21>IRQ-THC-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
            end #derive ::> InterfaceRequirements::IRQ_THC_06;
        }
        #derivation connection <'REQ-ARS-21>IRQ-THC-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_21;
            end #derive ::> InterfaceRequirements::IRQ_THC_09;
        }
        #derivation connection <'REQ-ARS-22>IRQ-THC-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_22;
            end #derive ::> InterfaceRequirements::IRQ_THC_11;
        }
        #derivation connection <'REQ-ARS-22>IRQ-THC-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_22;
            end #derive ::> InterfaceRequirements::IRQ_THC_12;
        }
        #derivation connection <'REQ-ARS-22>IRQ-THC-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_22;
            end #derive ::> InterfaceRequirements::IRQ_THC_13;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_02;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_04;
        }
        #derivation connection <'REQ-ARS-34>IRQ-WCL-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_34;
            end #derive ::> InterfaceRequirements::IRQ_WCL_05;
        }
        #derivation connection <'REQ-ARS-36>IRQ-WCL-07'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_36;
            end #derive ::> InterfaceRequirements::IRQ_WCL_07;
        }
        #derivation connection <'REQ-ARS-34>IRQ-WCL-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_34;
            end #derive ::> InterfaceRequirements::IRQ_WCL_08;
        }
        #derivation connection <'REQ-ARS-35>IRQ-WCL-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_35;
            end #derive ::> InterfaceRequirements::IRQ_WCL_09;
        }
        #derivation connection <'REQ-ARS-34>IRQ-WCL-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_34;
            end #derive ::> InterfaceRequirements::IRQ_WCL_10;
        }
        #derivation connection <'REQ-ARS-36>IRQ-WCL-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_36;
            end #derive ::> InterfaceRequirements::IRQ_WCL_11;
        }
        #derivation connection <'REQ-ARS-36>IRQ-WCL-16'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_36;
            end #derive ::> InterfaceRequirements::IRQ_WCL_16;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-17'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_17;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-18'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_18;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-19'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_19;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-21'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_21;
        }
        #derivation connection <'REQ-ARS-33>IRQ-WCL-22'> {
            end #original ::> SSD_RQL_ECL_001::REQ_ARS::REQ_ARS_33;
            end #derive ::> InterfaceRequirements::IRQ_WCL_22;
        }
        #derivation connection <'REQ-WCS-05>IRQ-WCS-01'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_05;
            end #derive ::> InterfaceRequirements::IRQ_WCS_01;
        }
        #derivation connection <'REQ-WCS-01>IRQ-WCS-02'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_01;
            end #derive ::> InterfaceRequirements::IRQ_WCS_02;
        }
        #derivation connection <'REQ-WCS-05>IRQ-WCS-03'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_05;
            end #derive ::> InterfaceRequirements::IRQ_WCS_03;
        }
        #derivation connection <'REQ-WCS-01>IRQ-WCS-04'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_01;
            end #derive ::> InterfaceRequirements::IRQ_WCS_04;
        }
        #derivation connection <'REQ-WCS-01>IRQ-WCS-05'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_01;
            end #derive ::> InterfaceRequirements::IRQ_WCS_05;
        }
        #derivation connection <'REQ-WCS-04>IRQ-WCS-06'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_04;
            end #derive ::> InterfaceRequirements::IRQ_WCS_06;
        }
        #derivation connection <'REQ-WCS-08>IRQ-WCS-08'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_08;
            end #derive ::> InterfaceRequirements::IRQ_WCS_08;
        }
        #derivation connection <'REQ-WCS-07>IRQ-WCS-09'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_07;
            end #derive ::> InterfaceRequirements::IRQ_WCS_09;
        }
        #derivation connection <'REQ-WCS-03>IRQ-WCS-10'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_03;
            end #derive ::> InterfaceRequirements::IRQ_WCS_10;
        }
        #derivation connection <'REQ-WCS-07>IRQ-WCS-11'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_07;
            end #derive ::> InterfaceRequirements::IRQ_WCS_11;
        }
        #derivation connection <'REQ-WCS-08>IRQ-WCS-12'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_08;
            end #derive ::> InterfaceRequirements::IRQ_WCS_12;
        }
        #derivation connection <'REQ-WCS-03>IRQ-WCS-13'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_03;
            end #derive ::> InterfaceRequirements::IRQ_WCS_13;
        }
        #derivation connection <'REQ-WCS-02>IRQ-WCS-14'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_02;
            end #derive ::> InterfaceRequirements::IRQ_WCS_14;
        }
        #derivation connection <'REQ-WCS-08>IRQ-WCS-15'> {
            end #original ::> SSD_RQL_ECL_001::REQ_WCS::REQ_WCS_08;
            end #derive ::> InterfaceRequirements::IRQ_WCS_15;
        }
    }
    // ---- 充足（割付先の IF）
    package Satisfaction {
        satisfy InterfaceRequirements::IRQ_ALS_01 by context.sts.orb.eclss.IF_ALS_01 { doc /* 割付先：IF-ALS-01 */ }
        satisfy InterfaceRequirements::IRQ_ALS_02 by context.IF_ALS_02 { doc /* 割付先：IF-ALS-02 */ }
        satisfy InterfaceRequirements::IRQ_ALS_03 by context.sts.orb.eclss.IF_ALS_03 { doc /* 割付先：IF-ALS-03 */ }
        satisfy InterfaceRequirements::IRQ_ALS_04 by context.sts.orb.eclss.IF_ALS_04 { doc /* 割付先：IF-ALS-04 */ }
        satisfy InterfaceRequirements::IRQ_ALS_05 by context.sts.orb.IF_ALS_05 { doc /* 割付先：IF-ALS-05 */ }
        satisfy InterfaceRequirements::IRQ_ALS_06 by context.sts.orb.IF_ALS_06 { doc /* 割付先：IF-ALS-06 */ }
        satisfy InterfaceRequirements::IRQ_ALS_07 by context.sts.orb.IF_ALS_07 { doc /* 割付先：IF-ALS-07 */ }
        satisfy InterfaceRequirements::IRQ_ALS_08 by context.sts.orb.IF_ALS_08 { doc /* 割付先：IF-ALS-08 */ }
        satisfy InterfaceRequirements::IRQ_ALS_09 by context.sts.orb.IF_ALS_09 { doc /* 割付先：IF-ALS-09 */ }
        satisfy InterfaceRequirements::IRQ_ALS_10 by context.sts.orb.IF_ALS_10 { doc /* 割付先：IF-ALS-10 */ }
        satisfy InterfaceRequirements::IRQ_ALS_11 by context.sts.orb.eclss.als.IF_ALS_11 { doc /* 割付先：IF-ALS-11 */ }
        satisfy InterfaceRequirements::IRQ_ALS_12 by context.sts.orb.eclss.als.IF_ALS_12 { doc /* 割付先：IF-ALS-12 */ }
        satisfy InterfaceRequirements::IRQ_ALS_13 by context.sts.orb.eclss.als.IF_ALS_13 { doc /* 割付先：IF-ALS-13 */ }
        satisfy InterfaceRequirements::IRQ_ALS_14 by context.sts.orb.eclss.als.IF_ALS_14 { doc /* 割付先：IF-ALS-14 */ }
        satisfy InterfaceRequirements::IRQ_ALS_15 by context.sts.orb.eclss.als.IF_ALS_15 { doc /* 割付先：IF-ALS-15 */ }
        satisfy InterfaceRequirements::IRQ_ALS_16 by context.sts.orb.eclss.als.IF_ALS_16 { doc /* 割付先：IF-ALS-16 */ }
        satisfy InterfaceRequirements::IRQ_ALS_17 by context.sts.orb.eclss.als.IF_ALS_17 { doc /* 割付先：IF-ALS-17 */ }
        satisfy InterfaceRequirements::IRQ_ARS_01 by context.sts.orb.eclss.ars.IF_ARS_01 { doc /* 割付先：IF-ARS-01 */ }
        satisfy InterfaceRequirements::IRQ_ARS_02 by context.sts.orb.eclss.ars.IF_ARS_02 { doc /* 割付先：IF-ARS-02 */ }
        satisfy InterfaceRequirements::IRQ_ARS_03 by context.sts.orb.eclss.ars.IF_ARS_03 { doc /* 割付先：IF-ARS-03 */ }
        satisfy InterfaceRequirements::IRQ_ARS_04 by context.sts.orb.eclss.ars.IF_ARS_04 { doc /* 割付先：IF-ARS-04 */ }
        satisfy InterfaceRequirements::IRQ_ARS_05 by context.sts.orb.eclss.ars.IF_ARS_05 { doc /* 割付先：IF-ARS-05 */ }
        satisfy InterfaceRequirements::IRQ_ARS_06 by context.sts.orb.eclss.ars.IF_ARS_06 { doc /* 割付先：IF-ARS-06 */ }
        satisfy InterfaceRequirements::IRQ_ARS_07 by context.sts.orb.eclss.ars.IF_ARS_07 { doc /* 割付先：IF-ARS-07 */ }
        satisfy InterfaceRequirements::IRQ_ARS_08 by context.sts.orb.eclss.ars.IF_ARS_08 { doc /* 割付先：IF-ARS-08 */ }
        satisfy InterfaceRequirements::IRQ_ARS_09 by context.sts.orb.eclss.IF_ARS_09 { doc /* 割付先：IF-ARS-09 */ }
        satisfy InterfaceRequirements::IRQ_ARS_10 by context.sts.orb.eclss.IF_ARS_10 { doc /* 割付先：IF-ARS-10 */ }
        satisfy InterfaceRequirements::IRQ_ARS_11 by context.sts.orb.eclss.IF_ARS_11 { doc /* 割付先：IF-ARS-11 */ }
        satisfy InterfaceRequirements::IRQ_ARS_12 by context.sts.orb.eclss.IF_ARS_12 { doc /* 割付先：IF-ARS-12 */ }
        satisfy InterfaceRequirements::IRQ_ARS_13 by context.sts.orb.eclss.IF_ARS_13 { doc /* 割付先：IF-ARS-13 */ }
        satisfy InterfaceRequirements::IRQ_ARS_14 by context.sts.orb.eclss.IF_ARS_14 { doc /* 割付先：IF-ARS-14 */ }
        satisfy InterfaceRequirements::IRQ_ARS_15 by context.sts.orb.eclss.IF_ARS_15 { doc /* 割付先：IF-ARS-15 */ }
        satisfy InterfaceRequirements::IRQ_ARS_16 by context.IF_ARS_16 { doc /* 割付先：IF-ARS-16 */ }
        satisfy InterfaceRequirements::IRQ_ARS_17 by context.sts.orb.IF_ARS_17 { doc /* 割付先：IF-ARS-17 */ }
        satisfy InterfaceRequirements::IRQ_ARS_18 by context.sts.orb.IF_ARS_18 { doc /* 割付先：IF-ARS-18 */ }
        satisfy InterfaceRequirements::IRQ_ARS_19 by context.sts.orb.IF_ARS_19 { doc /* 割付先：IF-ARS-19 */ }
        satisfy InterfaceRequirements::IRQ_ARS_20 by context.sts.orb.IF_ARS_20 { doc /* 割付先：IF-ARS-20 */ }
        satisfy InterfaceRequirements::IRQ_ARS_21 by context.sts.orb.IF_ARS_21 { doc /* 割付先：IF-ARS-21 */ }
        satisfy InterfaceRequirements::IRQ_ARS_22 by context.sts.orb.eclss.IF_ARS_22 { doc /* 割付先：IF-ARS-22 */ }
        satisfy InterfaceRequirements::IRQ_ARS_23 by context.sts.orb.eclss.IF_ARS_23 { doc /* 割付先：IF-ARS-23 */ }
        satisfy InterfaceRequirements::IRQ_ARS_24 by context.sts.orb.eclss.IF_ARS_24 { doc /* 割付先：IF-ARS-24 */ }
        satisfy InterfaceRequirements::IRQ_ARS_25 by context.sts.orb.IF_ARS_25 { doc /* 割付先：IF-ARS-25 */ }
        satisfy InterfaceRequirements::IRQ_ARS_26 by context.sts.orb.IF_ARS_26 { doc /* 割付先：IF-ARS-26 */ }
        satisfy InterfaceRequirements::IRQ_ARS_27 by context.sts.orb.IF_ARS_27 { doc /* 割付先：IF-ARS-27 */ }
        satisfy InterfaceRequirements::IRQ_ARS_28 by context.sts.orb.IF_ARS_28 { doc /* 割付先：IF-ARS-28 */ }
        satisfy InterfaceRequirements::IRQ_ARS_29 by context.sts.orb.IF_ARS_29 { doc /* 割付先：IF-ARS-29 */ }
        satisfy InterfaceRequirements::IRQ_ARS_30 by context.sts.orb.IF_ARS_30 { doc /* 割付先：IF-ARS-30 */ }
        satisfy InterfaceRequirements::IRQ_ARS_31 by context.sts.orb.IF_ARS_31 { doc /* 割付先：IF-ARS-31 */ }
        satisfy InterfaceRequirements::IRQ_ARS_32 by context.sts.orb.IF_ARS_32 { doc /* 割付先：IF-ARS-32 */ }
        satisfy InterfaceRequirements::IRQ_ARS_33 by context.sts.orb.IF_ARS_33 { doc /* 割付先：IF-ARS-33 */ }
        satisfy InterfaceRequirements::IRQ_ARS_34 by context.sts.orb.IF_ARS_34 { doc /* 割付先：IF-ARS-34 */ }
        satisfy InterfaceRequirements::IRQ_ARS_35 by context.sts.orb.IF_ARS_35 { doc /* 割付先：IF-ARS-35 */ }
        satisfy InterfaceRequirements::IRQ_ARS_36 by context.sts.orb.IF_ARS_36 { doc /* 割付先：IF-ARS-36 */ }
        satisfy InterfaceRequirements::IRQ_ARS_37 by context.sts.orb.IF_ARS_37 { doc /* 割付先：IF-ARS-37 */ }
        satisfy InterfaceRequirements::IRQ_ARS_38 by context.sts.orb.IF_ARS_38 { doc /* 割付先：IF-ARS-38 */ }
        satisfy InterfaceRequirements::IRQ_ARS_39 by context.sts.orb.IF_ARS_39 { doc /* 割付先：IF-ARS-39 */ }
        satisfy InterfaceRequirements::IRQ_ARS_40 by context.sts.orb.IF_ARS_40 { doc /* 割付先：IF-ARS-40 */ }
        satisfy InterfaceRequirements::IRQ_ARS_41 by context.sts.orb.IF_ARS_41 { doc /* 割付先：IF-ARS-41 */ }
        satisfy InterfaceRequirements::IRQ_ARS_42 by context.sts.orb.IF_ARS_42 { doc /* 割付先：IF-ARS-42 */ }
        satisfy InterfaceRequirements::IRQ_AVB_01 by context.sts.orb.eclss.ars.avb.IF_AVB_01 { doc /* 割付先：IF-AVB-01 */ }
        satisfy InterfaceRequirements::IRQ_AVB_02 by context.sts.orb.IF_AVB_02 { doc /* 割付先：IF-AVB-02 */ }
        satisfy InterfaceRequirements::IRQ_AVB_03 by context.sts.orb.IF_AVB_03 { doc /* 割付先：IF-AVB-03 */ }
        satisfy InterfaceRequirements::IRQ_AVB_04 by context.sts.orb.IF_AVB_04 { doc /* 割付先：IF-AVB-04 */ }
        satisfy InterfaceRequirements::IRQ_AVB_05 by context.sts.orb.eclss.ars.avb.IF_AVB_05 { doc /* 割付先：IF-AVB-05 */ }
        satisfy InterfaceRequirements::IRQ_AVB_06 by context.sts.orb.eclss.ars.avb.IF_AVB_06 { doc /* 割付先：IF-AVB-06 */ }
        satisfy InterfaceRequirements::IRQ_AVB_07 by context.sts.orb.IF_AVB_07 { doc /* 割付先：IF-AVB-07 */ }
        satisfy InterfaceRequirements::IRQ_AVB_08 by context.sts.orb.eclss.ars.avb.IF_AVB_08 { doc /* 割付先：IF-AVB-08 */ }
        satisfy InterfaceRequirements::IRQ_AVB_09 by context.sts.orb.eclss.ars.avb.IF_AVB_09 { doc /* 割付先：IF-AVB-09 */ }
        satisfy InterfaceRequirements::IRQ_AVB_10 by context.sts.orb.eclss.ars.IF_AVB_10 { doc /* 割付先：IF-AVB-10 */ }
        satisfy InterfaceRequirements::IRQ_AVB_11 by context.sts.orb.eclss.ars.avb.IF_AVB_11 { doc /* 割付先：IF-AVB-11 */ }
        satisfy InterfaceRequirements::IRQ_AVB_12 by context.sts.orb.eclss.ars.avb.IF_AVB_12 { doc /* 割付先：IF-AVB-12 */ }
        satisfy InterfaceRequirements::IRQ_AVB_13 by context.sts.orb.IF_AVB_13 { doc /* 割付先：IF-AVB-13 */ }
        satisfy InterfaceRequirements::IRQ_AVB_14 by context.sts.orb.IF_AVB_14 { doc /* 割付先：IF-AVB-14 */ }
        satisfy InterfaceRequirements::IRQ_AVB_15 by context.sts.orb.IF_AVB_15 { doc /* 割付先：IF-AVB-15 */ }
        satisfy InterfaceRequirements::IRQ_CAC_01 by context.sts.orb.eclss.IF_CAC_01 { doc /* 割付先：IF-CAC-01 */ }
        satisfy InterfaceRequirements::IRQ_CAC_02 by context.sts.orb.eclss.ars.cac.IF_CAC_02 { doc /* 割付先：IF-CAC-02 */ }
        satisfy InterfaceRequirements::IRQ_CAC_03 by context.sts.orb.eclss.ars.IF_CAC_03 { doc /* 割付先：IF-CAC-03 */ }
        satisfy InterfaceRequirements::IRQ_CAC_04 by context.sts.orb.eclss.IF_CAC_04 { doc /* 割付先：IF-CAC-04 */ }
        satisfy InterfaceRequirements::IRQ_CAC_05 by context.sts.orb.IF_CAC_05 { doc /* 割付先：IF-CAC-05 */ }
        satisfy InterfaceRequirements::IRQ_CAC_06 by context.sts.orb.eclss.ars.cac.IF_CAC_06 { doc /* 割付先：IF-CAC-06 */ }
        satisfy InterfaceRequirements::IRQ_CAC_07 by context.sts.orb.eclss.ars.cac.IF_CAC_07 { doc /* 割付先：IF-CAC-07 */ }
        satisfy InterfaceRequirements::IRQ_CAC_08 by context.sts.orb.eclss.IF_CAC_08 { doc /* 割付先：IF-CAC-08 */ }
        satisfy InterfaceRequirements::IRQ_CAC_09 by context.sts.orb.IF_CAC_09 { doc /* 割付先：IF-CAC-09 */ }
        satisfy InterfaceRequirements::IRQ_CAC_10 by context.sts.orb.eclss.ars.cac.IF_CAC_10 { doc /* 割付先：IF-CAC-10 */ }
        satisfy InterfaceRequirements::IRQ_CAC_11 by context.sts.orb.eclss.ars.cac.IF_CAC_11 { doc /* 割付先：IF-CAC-11 */ }
        satisfy InterfaceRequirements::IRQ_CAC_12 by context.sts.orb.IF_CAC_12 { doc /* 割付先：IF-CAC-12 */ }
        satisfy InterfaceRequirements::IRQ_CAC_13 by context.sts.orb.eclss.ars.IF_CAC_13 { doc /* 割付先：IF-CAC-13 */ }
        satisfy InterfaceRequirements::IRQ_CAC_14 by context.sts.orb.eclss.IF_CAC_14 { doc /* 割付先：IF-CAC-14 */ }
        satisfy InterfaceRequirements::IRQ_CO2_01 by context.sts.orb.eclss.ars.IF_CO2_01 { doc /* 割付先：IF-CO2-01 */ }
        satisfy InterfaceRequirements::IRQ_CO2_02 by context.sts.orb.eclss.ars.co2.IF_CO2_02 { doc /* 割付先：IF-CO2-02 */ }
        satisfy InterfaceRequirements::IRQ_CO2_03 by context.sts.orb.eclss.ars.co2.IF_CO2_03 { doc /* 割付先：IF-CO2-03 */ }
        satisfy InterfaceRequirements::IRQ_CO2_04 by context.sts.orb.eclss.ars.co2.IF_CO2_04 { doc /* 割付先：IF-CO2-04 */ }
        satisfy InterfaceRequirements::IRQ_CO2_05 by context.sts.orb.eclss.ars.IF_CO2_05 { doc /* 割付先：IF-CO2-05 */ }
        satisfy InterfaceRequirements::IRQ_CO2_06 by context.sts.orb.IF_CO2_06 { doc /* 割付先：IF-CO2-06 */ }
        satisfy InterfaceRequirements::IRQ_CO2_07 by context.sts.orb.IF_CO2_07 { doc /* 割付先：IF-CO2-07 */ }
        satisfy InterfaceRequirements::IRQ_ECL_02 by context.sts.orb.eclss.IF_ECL_02 { doc /* 割付先：IF-ECL-02 */ }
        satisfy InterfaceRequirements::IRQ_ECL_03 by context.sts.orb.eclss.IF_ECL_03 { doc /* 割付先：IF-ECL-03 */ }
        satisfy InterfaceRequirements::IRQ_ECL_04 by context.sts.orb.eclss.IF_ECL_04 { doc /* 割付先：IF-ECL-04 */ }
        satisfy InterfaceRequirements::IRQ_ECL_05 by context.sts.orb.eclss.IF_ECL_05 { doc /* 割付先：IF-ECL-05 */ }
        satisfy InterfaceRequirements::IRQ_ECL_06 by context.sts.orb.eclss.IF_ECL_06 { doc /* 割付先：IF-ECL-06 */ }
        satisfy InterfaceRequirements::IRQ_ECL_07 by context.sts.orb.eclss.IF_ECL_07 { doc /* 割付先：IF-ECL-07 */ }
        satisfy InterfaceRequirements::IRQ_ECL_08 by context.sts.orb.IF_ECL_08 { doc /* 割付先：IF-ECL-08 */ }
        satisfy InterfaceRequirements::IRQ_ECL_11 by context.sts.orb.IF_ECL_11 { doc /* 割付先：IF-ECL-11 */ }
        satisfy InterfaceRequirements::IRQ_ECL_12 by context.sts.orb.eclss.IF_ECL_12 { doc /* 割付先：IF-ECL-12 */ }
        satisfy InterfaceRequirements::IRQ_ECL_13 by context.sts.orb.eclss.IF_ECL_13 { doc /* 割付先：IF-ECL-13 */ }
        satisfy InterfaceRequirements::IRQ_ECL_14 by context.sts.orb.eclss.IF_ECL_14 { doc /* 割付先：IF-ECL-14 */ }
        satisfy InterfaceRequirements::IRQ_ECL_15 by context.sts.orb.eclss.IF_ECL_15 { doc /* 割付先：IF-ECL-15 */ }
        satisfy InterfaceRequirements::IRQ_ECL_16 by context.sts.orb.IF_ECL_16 { doc /* 割付先：IF-ECL-16 */ }
        satisfy InterfaceRequirements::IRQ_ECL_17 by context.sts.orb.eclss.IF_ECL_17 { doc /* 割付先：IF-ECL-17 */ }
        satisfy InterfaceRequirements::IRQ_ECL_18 by context.sts.orb.IF_ECL_18 { doc /* 割付先：IF-ECL-18 */ }
        satisfy InterfaceRequirements::IRQ_ECL_19 by context.sts.orb.eclss.IF_ECL_19 { doc /* 割付先：IF-ECL-19 */ }
        satisfy InterfaceRequirements::IRQ_ECL_20 by context.sts.orb.IF_ECL_20 { doc /* 割付先：IF-ECL-20 */ }
        satisfy InterfaceRequirements::IRQ_ECL_21 by context.IF_ECL_21 { doc /* 割付先：IF-ECL-21 */ }
        satisfy InterfaceRequirements::IRQ_ECL_22 by context.IF_ECL_22 { doc /* 割付先：IF-ECL-22 */ }
        satisfy InterfaceRequirements::IRQ_ECL_23 by context.IF_ECL_23 { doc /* 割付先：IF-ECL-23 */ }
        satisfy InterfaceRequirements::IRQ_ECL_24 by context.sts.orb.eclss.IF_ECL_24 { doc /* 割付先：IF-ECL-24 */ }
        satisfy InterfaceRequirements::IRQ_ECL_25 by context.sts.orb.IF_ECL_25 { doc /* 割付先：IF-ECL-25 */ }
        satisfy InterfaceRequirements::IRQ_ECL_26 by context.sts.orb.eclss.IF_ECL_26 { doc /* 割付先：IF-ECL-26 */ }
        satisfy InterfaceRequirements::IRQ_ECL_27 by context.sts.orb.eclss.IF_ECL_27 { doc /* 割付先：IF-ECL-27 */ }
        satisfy InterfaceRequirements::IRQ_ECL_28 by context.sts.orb.IF_ECL_28 { doc /* 割付先：IF-ECL-28 */ }
        satisfy InterfaceRequirements::IRQ_ECL_29 by context.sts.orb.IF_ECL_29 { doc /* 割付先：IF-ECL-29 */ }
        satisfy InterfaceRequirements::IRQ_ECL_30 by context.IF_ECL_30 { doc /* 割付先：IF-ECL-30 */ }
        satisfy InterfaceRequirements::IRQ_ECL_31 by context.sts.orb.eclss.IF_ECL_31 { doc /* 割付先：IF-ECL-31 */ }
        satisfy InterfaceRequirements::IRQ_ECL_32 by context.sts.orb.IF_ECL_32 { doc /* 割付先：IF-ECL-32 */ }
        satisfy InterfaceRequirements::IRQ_ECL_33 by context.sts.orb.IF_ECL_33 { doc /* 割付先：IF-ECL-33 */ }
        satisfy InterfaceRequirements::IRQ_ECL_34 by context.IF_ECL_34 { doc /* 割付先：IF-ECL-34 */ }
        satisfy InterfaceRequirements::IRQ_ECL_35 by context.sts.orb.IF_ECL_35 { doc /* 割付先：IF-ECL-35 */ }
        satisfy InterfaceRequirements::IRQ_ECL_36 by context.sts.orb.IF_ECL_36 { doc /* 割付先：IF-ECL-36 */ }
        satisfy InterfaceRequirements::IRQ_ECL_37 by context.sts.orb.IF_ECL_37 { doc /* 割付先：IF-ECL-37 */ }
        satisfy InterfaceRequirements::IRQ_ECL_38 by context.sts.orb.IF_ECL_38 { doc /* 割付先：IF-ECL-38 */ }
        satisfy InterfaceRequirements::IRQ_ECL_39 by context.sts.orb.IF_ECL_39 { doc /* 割付先：IF-ECL-39 */ }
        satisfy InterfaceRequirements::IRQ_ECL_40 by context.sts.orb.IF_ECL_40 { doc /* 割付先：IF-ECL-40 */ }
        satisfy InterfaceRequirements::IRQ_ECL_41 by context.sts.orb.IF_ECL_41 { doc /* 割付先：IF-ECL-41 */ }
        satisfy InterfaceRequirements::IRQ_ECL_42 by context.sts.orb.IF_ECL_42 { doc /* 割付先：IF-ECL-42 */ }
        satisfy InterfaceRequirements::IRQ_ECL_43 by context.sts.orb.IF_ECL_43 { doc /* 割付先：IF-ECL-43 */ }
        satisfy InterfaceRequirements::IRQ_FDS_01 by context.sts.orb.eclss.IF_FDS_01 { doc /* 割付先：IF-FDS-01 */ }
        satisfy InterfaceRequirements::IRQ_FDS_02 by context.sts.orb.eclss.fds.IF_FDS_02 { doc /* 割付先：IF-FDS-02 */ }
        satisfy InterfaceRequirements::IRQ_FDS_03 by context.sts.orb.IF_FDS_03 { doc /* 割付先：IF-FDS-03 */ }
        satisfy InterfaceRequirements::IRQ_FDS_04 by context.sts.orb.IF_FDS_04 { doc /* 割付先：IF-FDS-04 */ }
        satisfy InterfaceRequirements::IRQ_FDS_05 by context.sts.orb.eclss.fds.IF_FDS_05 { doc /* 割付先：IF-FDS-05 */ }
        satisfy InterfaceRequirements::IRQ_FDS_06 by context.sts.orb.IF_FDS_06 { doc /* 割付先：IF-FDS-06 */ }
        satisfy InterfaceRequirements::IRQ_FDS_07 by context.sts.orb.eclss.fds.IF_FDS_07 { doc /* 割付先：IF-FDS-07 */ }
        satisfy InterfaceRequirements::IRQ_FDS_08 by context.sts.orb.eclss.IF_FDS_08 { doc /* 割付先：IF-FDS-08 */ }
        satisfy InterfaceRequirements::IRQ_FDS_09 by context.sts.orb.IF_FDS_09 { doc /* 割付先：IF-FDS-09 */ }
        satisfy InterfaceRequirements::IRQ_FDS_10 by context.sts.orb.IF_FDS_10 { doc /* 割付先：IF-FDS-10 */ }
        satisfy InterfaceRequirements::IRQ_FDS_11 by context.sts.orb.eclss.IF_FDS_11 { doc /* 割付先：IF-FDS-11 */ }
        satisfy InterfaceRequirements::IRQ_FDS_12 by context.sts.orb.eclss.IF_FDS_12 { doc /* 割付先：IF-FDS-12 */ }
        satisfy InterfaceRequirements::IRQ_FDS_13 by context.sts.orb.eclss.fds.IF_FDS_13 { doc /* 割付先：IF-FDS-13 */ }
        satisfy InterfaceRequirements::IRQ_FDS_14 by context.sts.orb.eclss.fds.IF_FDS_14 { doc /* 割付先：IF-FDS-14 */ }
        satisfy InterfaceRequirements::IRQ_H2O_01 by context.sts.orb.eclss.h2o.IF_H2O_01 { doc /* 割付先：IF-H2O-01 */ }
        satisfy InterfaceRequirements::IRQ_H2O_02 by context.sts.orb.eclss.IF_H2O_02 { doc /* 割付先：IF-H2O-02 */ }
        satisfy InterfaceRequirements::IRQ_H2O_03 by context.sts.orb.eclss.h2o.IF_H2O_03 { doc /* 割付先：IF-H2O-03 */ }
        satisfy InterfaceRequirements::IRQ_H2O_04 by context.sts.orb.eclss.h2o.IF_H2O_04 { doc /* 割付先：IF-H2O-04 */ }
        satisfy InterfaceRequirements::IRQ_H2O_05 by context.sts.orb.IF_H2O_05 { doc /* 割付先：IF-H2O-05 */ }
        satisfy InterfaceRequirements::IRQ_H2O_06 by context.sts.orb.IF_H2O_06 { doc /* 割付先：IF-H2O-06 */ }
        satisfy InterfaceRequirements::IRQ_H2O_07 by context.sts.orb.eclss.IF_H2O_07 { doc /* 割付先：IF-H2O-07 */ }
        satisfy InterfaceRequirements::IRQ_H2O_08 by context.sts.orb.eclss.h2o.IF_H2O_08 { doc /* 割付先：IF-H2O-08 */ }
        satisfy InterfaceRequirements::IRQ_H2O_09 by context.sts.orb.IF_H2O_09 { doc /* 割付先：IF-H2O-09 */ }
        satisfy InterfaceRequirements::IRQ_H2O_10 by context.IF_H2O_10 { doc /* 割付先：IF-H2O-10 */ }
        satisfy InterfaceRequirements::IRQ_H2O_11 by context.sts.orb.IF_H2O_11 { doc /* 割付先：IF-H2O-11 */ }
        satisfy InterfaceRequirements::IRQ_H2O_12 by context.sts.orb.IF_H2O_12 { doc /* 割付先：IF-H2O-12 */ }
        satisfy InterfaceRequirements::IRQ_H2O_13 by context.sts.orb.eclss.h2o.IF_H2O_13 { doc /* 割付先：IF-H2O-13 */ }
        satisfy InterfaceRequirements::IRQ_H2O_14 by context.sts.orb.eclss.h2o.IF_H2O_14 { doc /* 割付先：IF-H2O-14 */ }
        satisfy InterfaceRequirements::IRQ_H2O_15 by context.sts.orb.eclss.IF_H2O_15 { doc /* 割付先：IF-H2O-15 */ }
        satisfy InterfaceRequirements::IRQ_H2O_16 by context.sts.orb.eclss.IF_H2O_16 { doc /* 割付先：IF-H2O-16 */ }
        satisfy InterfaceRequirements::IRQ_IMU_01 by context.sts.orb.eclss.IF_IMU_01 { doc /* 割付先：IF-IMU-01 */ }
        satisfy InterfaceRequirements::IRQ_IMU_02 by context.sts.orb.IF_IMU_02 { doc /* 割付先：IF-IMU-02 */ }
        satisfy InterfaceRequirements::IRQ_IMU_03 by context.sts.orb.eclss.ars.imu.IF_IMU_03 { doc /* 割付先：IF-IMU-03 */ }
        satisfy InterfaceRequirements::IRQ_IMU_04 by context.sts.orb.eclss.ars.imu.IF_IMU_04 { doc /* 割付先：IF-IMU-04 */ }
        satisfy InterfaceRequirements::IRQ_IMU_05 by context.sts.orb.eclss.ars.imu.IF_IMU_05 { doc /* 割付先：IF-IMU-05 */ }
        satisfy InterfaceRequirements::IRQ_IMU_06 by context.sts.orb.IF_IMU_06 { doc /* 割付先：IF-IMU-06 */ }
        satisfy InterfaceRequirements::IRQ_IMU_07 by context.sts.orb.eclss.ars.imu.IF_IMU_07 { doc /* 割付先：IF-IMU-07 */ }
        satisfy InterfaceRequirements::IRQ_IMU_08 by context.sts.orb.eclss.ars.IF_IMU_08 { doc /* 割付先：IF-IMU-08 */ }
        satisfy InterfaceRequirements::IRQ_IMU_09 by context.sts.orb.eclss.IF_IMU_09 { doc /* 割付先：IF-IMU-09 */ }
        satisfy InterfaceRequirements::IRQ_IMU_10 by context.sts.orb.IF_IMU_10 { doc /* 割付先：IF-IMU-10 */ }
        satisfy InterfaceRequirements::IRQ_IMU_11 by context.sts.orb.IF_IMU_11 { doc /* 割付先：IF-IMU-11 */ }
        satisfy InterfaceRequirements::IRQ_IMU_12 by context.sts.orb.eclss.ars.imu.IF_IMU_12 { doc /* 割付先：IF-IMU-12 */ }
        satisfy InterfaceRequirements::IRQ_PCS_01 by context.sts.orb.eclss.pcs.IF_PCS_01 { doc /* 割付先：IF-PCS-01 */ }
        satisfy InterfaceRequirements::IRQ_PCS_02 by context.sts.orb.eclss.pcs.IF_PCS_02 { doc /* 割付先：IF-PCS-02 */ }
        satisfy InterfaceRequirements::IRQ_PCS_03 by context.sts.orb.eclss.IF_PCS_03 { doc /* 割付先：IF-PCS-03 */ }
        satisfy InterfaceRequirements::IRQ_PCS_04 by context.sts.orb.eclss.IF_PCS_04 { doc /* 割付先：IF-PCS-04 */ }
        satisfy InterfaceRequirements::IRQ_PCS_05 by context.sts.orb.eclss.IF_PCS_05 { doc /* 割付先：IF-PCS-05 */ }
        satisfy InterfaceRequirements::IRQ_PCS_06 by context.sts.orb.eclss.IF_PCS_06 { doc /* 割付先：IF-PCS-06 */ }
        satisfy InterfaceRequirements::IRQ_PCS_07 by context.sts.orb.eclss.IF_PCS_07 { doc /* 割付先：IF-PCS-07 */ }
        satisfy InterfaceRequirements::IRQ_PCS_08 by context.IF_PCS_08 { doc /* 割付先：IF-PCS-08 */ }
        satisfy InterfaceRequirements::IRQ_PCS_09 by context.sts.orb.eclss.IF_PCS_09 { doc /* 割付先：IF-PCS-09 */ }
        satisfy InterfaceRequirements::IRQ_PCS_10 by context.sts.orb.eclss.IF_PCS_10 { doc /* 割付先：IF-PCS-10 */ }
        satisfy InterfaceRequirements::IRQ_PCS_11 by context.sts.orb.eclss.pcs.IF_PCS_11 { doc /* 割付先：IF-PCS-11 */ }
        satisfy InterfaceRequirements::IRQ_PCS_12 by context.sts.orb.eclss.pcs.IF_PCS_12 { doc /* 割付先：IF-PCS-12 */ }
        satisfy InterfaceRequirements::IRQ_PCS_13 by context.sts.orb.eclss.pcs.IF_PCS_13 { doc /* 割付先：IF-PCS-13 */ }
        satisfy InterfaceRequirements::IRQ_PCS_14 by context.sts.orb.IF_PCS_14 { doc /* 割付先：IF-PCS-14 */ }
        satisfy InterfaceRequirements::IRQ_PCS_15 by context.sts.orb.eclss.pcs.IF_PCS_15 { doc /* 割付先：IF-PCS-15 */ }
        satisfy InterfaceRequirements::IRQ_PCS_16 by context.sts.orb.eclss.pcs.IF_PCS_16 { doc /* 割付先：IF-PCS-16 */ }
        satisfy InterfaceRequirements::IRQ_PCS_17 by context.sts.orb.eclss.pcs.IF_PCS_17 { doc /* 割付先：IF-PCS-17 */ }
        satisfy InterfaceRequirements::IRQ_PCS_18 by context.sts.orb.IF_PCS_18 { doc /* 割付先：IF-PCS-18 */ }
        satisfy InterfaceRequirements::IRQ_PCS_19 by context.sts.orb.IF_PCS_19 { doc /* 割付先：IF-PCS-19 */ }
        satisfy InterfaceRequirements::IRQ_PCS_20 by context.sts.orb.IF_PCS_20 { doc /* 割付先：IF-PCS-20 */ }
        satisfy InterfaceRequirements::IRQ_PCS_21 by context.sts.orb.IF_PCS_21 { doc /* 割付先：IF-PCS-21 */ }
        satisfy InterfaceRequirements::IRQ_PCS_22 by context.sts.orb.IF_PCS_22 { doc /* 割付先：IF-PCS-22 */ }
        satisfy InterfaceRequirements::IRQ_PCS_23 by context.sts.orb.IF_PCS_23 { doc /* 割付先：IF-PCS-23 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_01 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_01 { doc /* 割付先：IF-RCRS-01 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_02 by context.sts.orb.eclss.ars.IF_RCRS_02 { doc /* 割付先：IF-RCRS-02 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_03 by context.sts.orb.eclss.IF_RCRS_03 { doc /* 割付先：IF-RCRS-03 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_04 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_04 { doc /* 割付先：IF-RCRS-04 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_05 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_05 { doc /* 割付先：IF-RCRS-05 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_06 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_06 { doc /* 割付先：IF-RCRS-06 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_07 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_07 { doc /* 割付先：IF-RCRS-07 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_08 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_08 { doc /* 割付先：IF-RCRS-08 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_09 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_09 { doc /* 割付先：IF-RCRS-09 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_10 by context.sts.orb.IF_RCRS_10 { doc /* 割付先：IF-RCRS-10 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_11 by context.sts.orb.IF_RCRS_11 { doc /* 割付先：IF-RCRS-11 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_12 by context.sts.orb.IF_RCRS_12 { doc /* 割付先：IF-RCRS-12 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_13 by context.sts.orb.IF_RCRS_13 { doc /* 割付先：IF-RCRS-13 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_14 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_14 { doc /* 割付先：IF-RCRS-14 */ }
        satisfy InterfaceRequirements::IRQ_RCRS_15 by context.sts.orb.eclss.ars.rcrs.IF_RCRS_15 { doc /* 割付先：IF-RCRS-15 */ }
        satisfy InterfaceRequirements::IRQ_TCS_01 by context.sts.orb.eclss.IF_TCS_01 { doc /* 割付先：IF-TCS-01 */ }
        satisfy InterfaceRequirements::IRQ_TCS_02 by context.sts.orb.IF_TCS_02 { doc /* 割付先：IF-TCS-02 */ }
        satisfy InterfaceRequirements::IRQ_TCS_03 by context.sts.orb.IF_TCS_03 { doc /* 割付先：IF-TCS-03 */ }
        satisfy InterfaceRequirements::IRQ_TCS_04 by context.sts.orb.eclss.IF_TCS_04 { doc /* 割付先：IF-TCS-04 */ }
        satisfy InterfaceRequirements::IRQ_TCS_05 by context.sts.orb.IF_TCS_05 { doc /* 割付先：IF-TCS-05 */ }
        satisfy InterfaceRequirements::IRQ_TCS_06 by context.IF_TCS_06 { doc /* 割付先：IF-TCS-06 */ }
        satisfy InterfaceRequirements::IRQ_TCS_07 by context.sts.orb.eclss.atcs.IF_TCS_07 { doc /* 割付先：IF-TCS-07 */ }
        satisfy InterfaceRequirements::IRQ_TCS_08 by context.sts.orb.eclss.atcs.IF_TCS_08 { doc /* 割付先：IF-TCS-08 */ }
        satisfy InterfaceRequirements::IRQ_TCS_09 by context.sts.orb.eclss.atcs.IF_TCS_09 { doc /* 割付先：IF-TCS-09 */ }
        satisfy InterfaceRequirements::IRQ_TCS_10 by context.sts.orb.eclss.atcs.IF_TCS_10 { doc /* 割付先：IF-TCS-10 */ }
        satisfy InterfaceRequirements::IRQ_TCS_11 by context.sts.orb.eclss.atcs.IF_TCS_11 { doc /* 割付先：IF-TCS-11 */ }
        satisfy InterfaceRequirements::IRQ_TCS_12 by context.IF_TCS_12 { doc /* 割付先：IF-TCS-12 */ }
        satisfy InterfaceRequirements::IRQ_TCS_13 by context.IF_TCS_13 { doc /* 割付先：IF-TCS-13 */ }
        satisfy InterfaceRequirements::IRQ_TCS_14 by context.IF_TCS_14 { doc /* 割付先：IF-TCS-14 */ }
        satisfy InterfaceRequirements::IRQ_TCS_15 by context.IF_TCS_15 { doc /* 割付先：IF-TCS-15 */ }
        satisfy InterfaceRequirements::IRQ_TCS_16 by context.sts.orb.eclss.IF_TCS_16 { doc /* 割付先：IF-TCS-16 */ }
        satisfy InterfaceRequirements::IRQ_TCS_18 by context.sts.orb.IF_TCS_18 { doc /* 割付先：IF-TCS-18 */ }
        satisfy InterfaceRequirements::IRQ_TCS_19 by context.sts.orb.IF_TCS_19 { doc /* 割付先：IF-TCS-19 */ }
        satisfy InterfaceRequirements::IRQ_TCS_21 by context.sts.orb.IF_TCS_21 { doc /* 割付先：IF-TCS-21 */ }
        satisfy InterfaceRequirements::IRQ_THC_01 by context.sts.orb.eclss.ars.thc.IF_THC_01 { doc /* 割付先：IF-THC-01 */ }
        satisfy InterfaceRequirements::IRQ_THC_02 by context.sts.orb.eclss.ars.thc.IF_THC_02 { doc /* 割付先：IF-THC-02 */ }
        satisfy InterfaceRequirements::IRQ_THC_03 by context.sts.orb.eclss.ars.IF_THC_03 { doc /* 割付先：IF-THC-03 */ }
        satisfy InterfaceRequirements::IRQ_THC_04 by context.sts.orb.eclss.ars.thc.IF_THC_04 { doc /* 割付先：IF-THC-04 */ }
        satisfy InterfaceRequirements::IRQ_THC_05 by context.sts.orb.eclss.IF_THC_05 { doc /* 割付先：IF-THC-05 */ }
        satisfy InterfaceRequirements::IRQ_THC_06 by context.sts.orb.eclss.IF_THC_06 { doc /* 割付先：IF-THC-06 */ }
        satisfy InterfaceRequirements::IRQ_THC_07 by context.sts.orb.eclss.IF_THC_07 { doc /* 割付先：IF-THC-07 */ }
        satisfy InterfaceRequirements::IRQ_THC_08 by context.sts.orb.eclss.ars.thc.IF_THC_08 { doc /* 割付先：IF-THC-08 */ }
        satisfy InterfaceRequirements::IRQ_THC_09 by context.sts.orb.eclss.ars.thc.IF_THC_09 { doc /* 割付先：IF-THC-09 */ }
        satisfy InterfaceRequirements::IRQ_THC_10 by context.sts.orb.eclss.ars.thc.IF_THC_10 { doc /* 割付先：IF-THC-10 */ }
        satisfy InterfaceRequirements::IRQ_THC_11 by context.sts.orb.IF_THC_11 { doc /* 割付先：IF-THC-11 */ }
        satisfy InterfaceRequirements::IRQ_THC_12 by context.sts.orb.IF_THC_12 { doc /* 割付先：IF-THC-12 */ }
        satisfy InterfaceRequirements::IRQ_THC_13 by context.sts.orb.eclss.ars.thc.IF_THC_13 { doc /* 割付先：IF-THC-13 */ }
        satisfy InterfaceRequirements::IRQ_THC_14 by context.sts.orb.eclss.ars.thc.IF_THC_14 { doc /* 割付先：IF-THC-14 */ }
        satisfy InterfaceRequirements::IRQ_THC_15 by context.sts.orb.eclss.ars.thc.IF_THC_15 { doc /* 割付先：IF-THC-15 */ }
        satisfy InterfaceRequirements::IRQ_THC_16 by context.sts.orb.IF_THC_16 { doc /* 割付先：IF-THC-16 */ }
        satisfy InterfaceRequirements::IRQ_THC_17 by context.sts.orb.IF_THC_17 { doc /* 割付先：IF-THC-17 */ }
        satisfy InterfaceRequirements::IRQ_THC_18 by context.sts.orb.IF_THC_18 { doc /* 割付先：IF-THC-18 */ }
        satisfy InterfaceRequirements::IRQ_WCL_01 by context.sts.orb.eclss.ars.wcl.IF_WCL_01 { doc /* 割付先：IF-WCL-01 */ }
        satisfy InterfaceRequirements::IRQ_WCL_02 by context.sts.orb.eclss.ars.wcl.IF_WCL_02 { doc /* 割付先：IF-WCL-02 */ }
        satisfy InterfaceRequirements::IRQ_WCL_03 by context.sts.orb.eclss.ars.wcl.IF_WCL_03 { doc /* 割付先：IF-WCL-03 */ }
        satisfy InterfaceRequirements::IRQ_WCL_04 by context.sts.orb.eclss.ars.wcl.IF_WCL_04 { doc /* 割付先：IF-WCL-04 */ }
        satisfy InterfaceRequirements::IRQ_WCL_05 by context.sts.orb.eclss.ars.wcl.IF_WCL_05 { doc /* 割付先：IF-WCL-05 */ }
        satisfy InterfaceRequirements::IRQ_WCL_06 by context.sts.orb.eclss.ars.wcl.IF_WCL_06 { doc /* 割付先：IF-WCL-06 */ }
        satisfy InterfaceRequirements::IRQ_WCL_07 by context.sts.orb.eclss.ars.wcl.IF_WCL_07 { doc /* 割付先：IF-WCL-07 */ }
        satisfy InterfaceRequirements::IRQ_WCL_08 by context.sts.orb.eclss.ars.wcl.IF_WCL_08 { doc /* 割付先：IF-WCL-08 */ }
        satisfy InterfaceRequirements::IRQ_WCL_09 by context.sts.orb.eclss.ars.wcl.IF_WCL_09 { doc /* 割付先：IF-WCL-09 */ }
        satisfy InterfaceRequirements::IRQ_WCL_10 by context.sts.orb.eclss.ars.wcl.IF_WCL_10 { doc /* 割付先：IF-WCL-10 */ }
        satisfy InterfaceRequirements::IRQ_WCL_11 by context.sts.orb.eclss.ars.wcl.IF_WCL_11 { doc /* 割付先：IF-WCL-11 */ }
        satisfy InterfaceRequirements::IRQ_WCL_12 by context.sts.orb.IF_WCL_12 { doc /* 割付先：IF-WCL-12 */ }
        satisfy InterfaceRequirements::IRQ_WCL_13 by context.sts.orb.IF_WCL_13 { doc /* 割付先：IF-WCL-13 */ }
        satisfy InterfaceRequirements::IRQ_WCL_14 by context.sts.orb.IF_WCL_14 { doc /* 割付先：IF-WCL-14 */ }
        satisfy InterfaceRequirements::IRQ_WCL_15 by context.sts.orb.IF_WCL_15 { doc /* 割付先：IF-WCL-15 */ }
        satisfy InterfaceRequirements::IRQ_WCL_16 by context.sts.orb.IF_WCL_16 { doc /* 割付先：IF-WCL-16 */ }
        satisfy InterfaceRequirements::IRQ_WCL_17 by context.sts.orb.IF_WCL_17 { doc /* 割付先：IF-WCL-17 */ }
        satisfy InterfaceRequirements::IRQ_WCL_18 by context.sts.orb.IF_WCL_18 { doc /* 割付先：IF-WCL-18 */ }
        satisfy InterfaceRequirements::IRQ_WCL_19 by context.sts.orb.eclss.IF_WCL_19 { doc /* 割付先：IF-WCL-19 */ }
        satisfy InterfaceRequirements::IRQ_WCL_20 by context.sts.orb.eclss.IF_WCL_20 { doc /* 割付先：IF-WCL-20 */ }
        satisfy InterfaceRequirements::IRQ_WCL_21 by context.sts.orb.eclss.IF_WCL_21 { doc /* 割付先：IF-WCL-21 */ }
        satisfy InterfaceRequirements::IRQ_WCL_22 by context.sts.orb.eclss.IF_WCL_22 { doc /* 割付先：IF-WCL-22 */ }
        satisfy InterfaceRequirements::IRQ_WCS_01 by context.sts.orb.eclss.IF_WCS_01 { doc /* 割付先：IF-WCS-01 */ }
        satisfy InterfaceRequirements::IRQ_WCS_02 by context.sts.orb.eclss.IF_WCS_02 { doc /* 割付先：IF-WCS-02 */ }
        satisfy InterfaceRequirements::IRQ_WCS_03 by context.sts.orb.eclss.wcs.IF_WCS_03 { doc /* 割付先：IF-WCS-03 */ }
        satisfy InterfaceRequirements::IRQ_WCS_04 by context.sts.orb.eclss.wcs.IF_WCS_04 { doc /* 割付先：IF-WCS-04 */ }
        satisfy InterfaceRequirements::IRQ_WCS_05 by context.sts.orb.eclss.wcs.IF_WCS_05 { doc /* 割付先：IF-WCS-05 */ }
        satisfy InterfaceRequirements::IRQ_WCS_06 by context.sts.orb.eclss.IF_WCS_06 { doc /* 割付先：IF-WCS-06 */ }
        satisfy InterfaceRequirements::IRQ_WCS_07 by context.sts.orb.eclss.IF_WCS_07 { doc /* 割付先：IF-WCS-07 */ }
        satisfy InterfaceRequirements::IRQ_WCS_08 by context.sts.orb.eclss.IF_WCS_08 { doc /* 割付先：IF-WCS-08 */ }
        satisfy InterfaceRequirements::IRQ_WCS_09 by context.IF_WCS_09 { doc /* 割付先：IF-WCS-09 */ }
        satisfy InterfaceRequirements::IRQ_WCS_10 by context.sts.orb.IF_WCS_10 { doc /* 割付先：IF-WCS-10 */ }
        satisfy InterfaceRequirements::IRQ_WCS_11 by context.sts.orb.IF_WCS_11 { doc /* 割付先：IF-WCS-11 */ }
        satisfy InterfaceRequirements::IRQ_WCS_12 by context.sts.orb.IF_WCS_12 { doc /* 割付先：IF-WCS-12 */ }
        satisfy InterfaceRequirements::IRQ_WCS_13 by context.sts.orb.eclss.wcs.IF_WCS_13 { doc /* 割付先：IF-WCS-13 */ }
        satisfy InterfaceRequirements::IRQ_WCS_14 by context.sts.orb.eclss.wcs.IF_WCS_14 { doc /* 割付先：IF-WCS-14 */ }
        satisfy InterfaceRequirements::IRQ_WCS_15 by context.sts.orb.eclss.wcs.IF_WCS_15 { doc /* 割付先：IF-WCS-15 */ }
    }
    // ---- 検証ケース
    package Verification {
        verification def <'VC-IRQ-ALS-01'> VC_IRQ_ALS_01 {
            doc /* IRQ-ALS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-02'> VC_IRQ_ALS_02 {
            doc /* IRQ-ALS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-03'> VC_IRQ_ALS_03 {
            doc /* IRQ-ALS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-04'> VC_IRQ_ALS_04 {
            doc /* IRQ-ALS-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-05'> VC_IRQ_ALS_05 {
            doc /* IRQ-ALS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-06'> VC_IRQ_ALS_06 {
            doc /* IRQ-ALS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-07'> VC_IRQ_ALS_07 {
            doc /* IRQ-ALS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-08'> VC_IRQ_ALS_08 {
            doc /* IRQ-ALS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-09'> VC_IRQ_ALS_09 {
            doc /* IRQ-ALS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-10'> VC_IRQ_ALS_10 {
            doc /* IRQ-ALS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-11'> VC_IRQ_ALS_11 {
            doc /* IRQ-ALS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-12'> VC_IRQ_ALS_12 {
            doc /* IRQ-ALS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-13'> VC_IRQ_ALS_13 {
            doc /* IRQ-ALS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-14'> VC_IRQ_ALS_14 {
            doc /* IRQ-ALS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-15'> VC_IRQ_ALS_15 {
            doc /* IRQ-ALS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-16'> VC_IRQ_ALS_16 {
            doc /* IRQ-ALS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ALS-17'> VC_IRQ_ALS_17 {
            doc /* IRQ-ALS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ALS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-01'> VC_IRQ_ARS_01 {
            doc /* IRQ-ARS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-02'> VC_IRQ_ARS_02 {
            doc /* IRQ-ARS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-03'> VC_IRQ_ARS_03 {
            doc /* IRQ-ARS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-04'> VC_IRQ_ARS_04 {
            doc /* IRQ-ARS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-05'> VC_IRQ_ARS_05 {
            doc /* IRQ-ARS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-06'> VC_IRQ_ARS_06 {
            doc /* IRQ-ARS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-07'> VC_IRQ_ARS_07 {
            doc /* IRQ-ARS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-08'> VC_IRQ_ARS_08 {
            doc /* IRQ-ARS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-09'> VC_IRQ_ARS_09 {
            doc /* IRQ-ARS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-10'> VC_IRQ_ARS_10 {
            doc /* IRQ-ARS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-11'> VC_IRQ_ARS_11 {
            doc /* IRQ-ARS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-12'> VC_IRQ_ARS_12 {
            doc /* IRQ-ARS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-13'> VC_IRQ_ARS_13 {
            doc /* IRQ-ARS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-14'> VC_IRQ_ARS_14 {
            doc /* IRQ-ARS-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-15'> VC_IRQ_ARS_15 {
            doc /* IRQ-ARS-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-16'> VC_IRQ_ARS_16 {
            doc /* IRQ-ARS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-17'> VC_IRQ_ARS_17 {
            doc /* IRQ-ARS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-18'> VC_IRQ_ARS_18 {
            doc /* IRQ-ARS-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-19'> VC_IRQ_ARS_19 {
            doc /* IRQ-ARS-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-20'> VC_IRQ_ARS_20 {
            doc /* IRQ-ARS-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-21'> VC_IRQ_ARS_21 {
            doc /* IRQ-ARS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-22'> VC_IRQ_ARS_22 {
            doc /* IRQ-ARS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-23'> VC_IRQ_ARS_23 {
            doc /* IRQ-ARS-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-24'> VC_IRQ_ARS_24 {
            doc /* IRQ-ARS-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-25'> VC_IRQ_ARS_25 {
            doc /* IRQ-ARS-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-26'> VC_IRQ_ARS_26 {
            doc /* IRQ-ARS-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-27'> VC_IRQ_ARS_27 {
            doc /* IRQ-ARS-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-28'> VC_IRQ_ARS_28 {
            doc /* IRQ-ARS-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-29'> VC_IRQ_ARS_29 {
            doc /* IRQ-ARS-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-30'> VC_IRQ_ARS_30 {
            doc /* IRQ-ARS-30 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-31'> VC_IRQ_ARS_31 {
            doc /* IRQ-ARS-31 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_31; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-32'> VC_IRQ_ARS_32 {
            doc /* IRQ-ARS-32 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_32; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-33'> VC_IRQ_ARS_33 {
            doc /* IRQ-ARS-33 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_33; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-34'> VC_IRQ_ARS_34 {
            doc /* IRQ-ARS-34 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_34; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-35'> VC_IRQ_ARS_35 {
            doc /* IRQ-ARS-35 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_35; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-36'> VC_IRQ_ARS_36 {
            doc /* IRQ-ARS-36 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_36; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-37'> VC_IRQ_ARS_37 {
            doc /* IRQ-ARS-37 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_37; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-38'> VC_IRQ_ARS_38 {
            doc /* IRQ-ARS-38 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_38; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-39'> VC_IRQ_ARS_39 {
            doc /* IRQ-ARS-39 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_39; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-40'> VC_IRQ_ARS_40 {
            doc /* IRQ-ARS-40 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_40; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-41'> VC_IRQ_ARS_41 {
            doc /* IRQ-ARS-41 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_41; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ARS-42'> VC_IRQ_ARS_42 {
            doc /* IRQ-ARS-42 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ARS_42; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-01'> VC_IRQ_AVB_01 {
            doc /* IRQ-AVB-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-02'> VC_IRQ_AVB_02 {
            doc /* IRQ-AVB-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-03'> VC_IRQ_AVB_03 {
            doc /* IRQ-AVB-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-04'> VC_IRQ_AVB_04 {
            doc /* IRQ-AVB-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-05'> VC_IRQ_AVB_05 {
            doc /* IRQ-AVB-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-06'> VC_IRQ_AVB_06 {
            doc /* IRQ-AVB-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-07'> VC_IRQ_AVB_07 {
            doc /* IRQ-AVB-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-08'> VC_IRQ_AVB_08 {
            doc /* IRQ-AVB-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-09'> VC_IRQ_AVB_09 {
            doc /* IRQ-AVB-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-10'> VC_IRQ_AVB_10 {
            doc /* IRQ-AVB-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-11'> VC_IRQ_AVB_11 {
            doc /* IRQ-AVB-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-12'> VC_IRQ_AVB_12 {
            doc /* IRQ-AVB-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-13'> VC_IRQ_AVB_13 {
            doc /* IRQ-AVB-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-14'> VC_IRQ_AVB_14 {
            doc /* IRQ-AVB-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-AVB-15'> VC_IRQ_AVB_15 {
            doc /* IRQ-AVB-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_AVB_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-01'> VC_IRQ_CAC_01 {
            doc /* IRQ-CAC-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-02'> VC_IRQ_CAC_02 {
            doc /* IRQ-CAC-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-03'> VC_IRQ_CAC_03 {
            doc /* IRQ-CAC-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-04'> VC_IRQ_CAC_04 {
            doc /* IRQ-CAC-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-05'> VC_IRQ_CAC_05 {
            doc /* IRQ-CAC-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-06'> VC_IRQ_CAC_06 {
            doc /* IRQ-CAC-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-07'> VC_IRQ_CAC_07 {
            doc /* IRQ-CAC-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-08'> VC_IRQ_CAC_08 {
            doc /* IRQ-CAC-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-09'> VC_IRQ_CAC_09 {
            doc /* IRQ-CAC-09 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-10'> VC_IRQ_CAC_10 {
            doc /* IRQ-CAC-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-11'> VC_IRQ_CAC_11 {
            doc /* IRQ-CAC-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-12'> VC_IRQ_CAC_12 {
            doc /* IRQ-CAC-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-13'> VC_IRQ_CAC_13 {
            doc /* IRQ-CAC-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CAC-14'> VC_IRQ_CAC_14 {
            doc /* IRQ-CAC-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CAC_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-01'> VC_IRQ_CO2_01 {
            doc /* IRQ-CO2-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-02'> VC_IRQ_CO2_02 {
            doc /* IRQ-CO2-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-03'> VC_IRQ_CO2_03 {
            doc /* IRQ-CO2-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-04'> VC_IRQ_CO2_04 {
            doc /* IRQ-CO2-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-05'> VC_IRQ_CO2_05 {
            doc /* IRQ-CO2-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-06'> VC_IRQ_CO2_06 {
            doc /* IRQ-CO2-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-CO2-07'> VC_IRQ_CO2_07 {
            doc /* IRQ-CO2-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_CO2_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-02'> VC_IRQ_ECL_02 {
            doc /* IRQ-ECL-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-03'> VC_IRQ_ECL_03 {
            doc /* IRQ-ECL-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-04'> VC_IRQ_ECL_04 {
            doc /* IRQ-ECL-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-05'> VC_IRQ_ECL_05 {
            doc /* IRQ-ECL-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-06'> VC_IRQ_ECL_06 {
            doc /* IRQ-ECL-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-07'> VC_IRQ_ECL_07 {
            doc /* IRQ-ECL-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-08'> VC_IRQ_ECL_08 {
            doc /* IRQ-ECL-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-11'> VC_IRQ_ECL_11 {
            doc /* IRQ-ECL-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-12'> VC_IRQ_ECL_12 {
            doc /* IRQ-ECL-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-13'> VC_IRQ_ECL_13 {
            doc /* IRQ-ECL-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-14'> VC_IRQ_ECL_14 {
            doc /* IRQ-ECL-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-15'> VC_IRQ_ECL_15 {
            doc /* IRQ-ECL-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-16'> VC_IRQ_ECL_16 {
            doc /* IRQ-ECL-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-17'> VC_IRQ_ECL_17 {
            doc /* IRQ-ECL-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-18'> VC_IRQ_ECL_18 {
            doc /* IRQ-ECL-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-19'> VC_IRQ_ECL_19 {
            doc /* IRQ-ECL-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-20'> VC_IRQ_ECL_20 {
            doc /* IRQ-ECL-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-21'> VC_IRQ_ECL_21 {
            doc /* IRQ-ECL-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-22'> VC_IRQ_ECL_22 {
            doc /* IRQ-ECL-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-23'> VC_IRQ_ECL_23 {
            doc /* IRQ-ECL-23 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-24'> VC_IRQ_ECL_24 {
            doc /* IRQ-ECL-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-25'> VC_IRQ_ECL_25 {
            doc /* IRQ-ECL-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-26'> VC_IRQ_ECL_26 {
            doc /* IRQ-ECL-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-27'> VC_IRQ_ECL_27 {
            doc /* IRQ-ECL-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-28'> VC_IRQ_ECL_28 {
            doc /* IRQ-ECL-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-29'> VC_IRQ_ECL_29 {
            doc /* IRQ-ECL-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-30'> VC_IRQ_ECL_30 {
            doc /* IRQ-ECL-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-31'> VC_IRQ_ECL_31 {
            doc /* IRQ-ECL-31 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_31; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-32'> VC_IRQ_ECL_32 {
            doc /* IRQ-ECL-32 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_32; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-33'> VC_IRQ_ECL_33 {
            doc /* IRQ-ECL-33 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_33; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-34'> VC_IRQ_ECL_34 {
            doc /* IRQ-ECL-34 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_34; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-35'> VC_IRQ_ECL_35 {
            doc /* IRQ-ECL-35 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_35; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-36'> VC_IRQ_ECL_36 {
            doc /* IRQ-ECL-36 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_36; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-37'> VC_IRQ_ECL_37 {
            doc /* IRQ-ECL-37 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_37; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-38'> VC_IRQ_ECL_38 {
            doc /* IRQ-ECL-38 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_38; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-39'> VC_IRQ_ECL_39 {
            doc /* IRQ-ECL-39 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_39; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-40'> VC_IRQ_ECL_40 {
            doc /* IRQ-ECL-40 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_40; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-41'> VC_IRQ_ECL_41 {
            doc /* IRQ-ECL-41 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_41; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-42'> VC_IRQ_ECL_42 {
            doc /* IRQ-ECL-42 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_42; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-ECL-43'> VC_IRQ_ECL_43 {
            doc /* IRQ-ECL-43 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_ECL_43; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-01'> VC_IRQ_FDS_01 {
            doc /* IRQ-FDS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-02'> VC_IRQ_FDS_02 {
            doc /* IRQ-FDS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-03'> VC_IRQ_FDS_03 {
            doc /* IRQ-FDS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-04'> VC_IRQ_FDS_04 {
            doc /* IRQ-FDS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-05'> VC_IRQ_FDS_05 {
            doc /* IRQ-FDS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-06'> VC_IRQ_FDS_06 {
            doc /* IRQ-FDS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-07'> VC_IRQ_FDS_07 {
            doc /* IRQ-FDS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-08'> VC_IRQ_FDS_08 {
            doc /* IRQ-FDS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-09'> VC_IRQ_FDS_09 {
            doc /* IRQ-FDS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-10'> VC_IRQ_FDS_10 {
            doc /* IRQ-FDS-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-11'> VC_IRQ_FDS_11 {
            doc /* IRQ-FDS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-12'> VC_IRQ_FDS_12 {
            doc /* IRQ-FDS-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-13'> VC_IRQ_FDS_13 {
            doc /* IRQ-FDS-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-FDS-14'> VC_IRQ_FDS_14 {
            doc /* IRQ-FDS-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_FDS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-01'> VC_IRQ_H2O_01 {
            doc /* IRQ-H2O-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-02'> VC_IRQ_H2O_02 {
            doc /* IRQ-H2O-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-03'> VC_IRQ_H2O_03 {
            doc /* IRQ-H2O-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-04'> VC_IRQ_H2O_04 {
            doc /* IRQ-H2O-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-05'> VC_IRQ_H2O_05 {
            doc /* IRQ-H2O-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-06'> VC_IRQ_H2O_06 {
            doc /* IRQ-H2O-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-07'> VC_IRQ_H2O_07 {
            doc /* IRQ-H2O-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-08'> VC_IRQ_H2O_08 {
            doc /* IRQ-H2O-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-09'> VC_IRQ_H2O_09 {
            doc /* IRQ-H2O-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-10'> VC_IRQ_H2O_10 {
            doc /* IRQ-H2O-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-11'> VC_IRQ_H2O_11 {
            doc /* IRQ-H2O-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-12'> VC_IRQ_H2O_12 {
            doc /* IRQ-H2O-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-13'> VC_IRQ_H2O_13 {
            doc /* IRQ-H2O-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-14'> VC_IRQ_H2O_14 {
            doc /* IRQ-H2O-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-15'> VC_IRQ_H2O_15 {
            doc /* IRQ-H2O-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-H2O-16'> VC_IRQ_H2O_16 {
            doc /* IRQ-H2O-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_H2O_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-01'> VC_IRQ_IMU_01 {
            doc /* IRQ-IMU-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-02'> VC_IRQ_IMU_02 {
            doc /* IRQ-IMU-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-03'> VC_IRQ_IMU_03 {
            doc /* IRQ-IMU-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-04'> VC_IRQ_IMU_04 {
            doc /* IRQ-IMU-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-05'> VC_IRQ_IMU_05 {
            doc /* IRQ-IMU-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-06'> VC_IRQ_IMU_06 {
            doc /* IRQ-IMU-06 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-07'> VC_IRQ_IMU_07 {
            doc /* IRQ-IMU-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-08'> VC_IRQ_IMU_08 {
            doc /* IRQ-IMU-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-09'> VC_IRQ_IMU_09 {
            doc /* IRQ-IMU-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-10'> VC_IRQ_IMU_10 {
            doc /* IRQ-IMU-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-11'> VC_IRQ_IMU_11 {
            doc /* IRQ-IMU-11 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-IMU-12'> VC_IRQ_IMU_12 {
            doc /* IRQ-IMU-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_IMU_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-01'> VC_IRQ_PCS_01 {
            doc /* IRQ-PCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-02'> VC_IRQ_PCS_02 {
            doc /* IRQ-PCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-03'> VC_IRQ_PCS_03 {
            doc /* IRQ-PCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-04'> VC_IRQ_PCS_04 {
            doc /* IRQ-PCS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-05'> VC_IRQ_PCS_05 {
            doc /* IRQ-PCS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-06'> VC_IRQ_PCS_06 {
            doc /* IRQ-PCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-07'> VC_IRQ_PCS_07 {
            doc /* IRQ-PCS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-08'> VC_IRQ_PCS_08 {
            doc /* IRQ-PCS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-09'> VC_IRQ_PCS_09 {
            doc /* IRQ-PCS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-10'> VC_IRQ_PCS_10 {
            doc /* IRQ-PCS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-11'> VC_IRQ_PCS_11 {
            doc /* IRQ-PCS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-12'> VC_IRQ_PCS_12 {
            doc /* IRQ-PCS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-13'> VC_IRQ_PCS_13 {
            doc /* IRQ-PCS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-14'> VC_IRQ_PCS_14 {
            doc /* IRQ-PCS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-15'> VC_IRQ_PCS_15 {
            doc /* IRQ-PCS-15 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-16'> VC_IRQ_PCS_16 {
            doc /* IRQ-PCS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-17'> VC_IRQ_PCS_17 {
            doc /* IRQ-PCS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-18'> VC_IRQ_PCS_18 {
            doc /* IRQ-PCS-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-19'> VC_IRQ_PCS_19 {
            doc /* IRQ-PCS-19 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-20'> VC_IRQ_PCS_20 {
            doc /* IRQ-PCS-20 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-21'> VC_IRQ_PCS_21 {
            doc /* IRQ-PCS-21 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-22'> VC_IRQ_PCS_22 {
            doc /* IRQ-PCS-22 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-PCS-23'> VC_IRQ_PCS_23 {
            doc /* IRQ-PCS-23 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_PCS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-01'> VC_IRQ_RCRS_01 {
            doc /* IRQ-RCRS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-02'> VC_IRQ_RCRS_02 {
            doc /* IRQ-RCRS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-03'> VC_IRQ_RCRS_03 {
            doc /* IRQ-RCRS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-04'> VC_IRQ_RCRS_04 {
            doc /* IRQ-RCRS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-05'> VC_IRQ_RCRS_05 {
            doc /* IRQ-RCRS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-06'> VC_IRQ_RCRS_06 {
            doc /* IRQ-RCRS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-07'> VC_IRQ_RCRS_07 {
            doc /* IRQ-RCRS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-08'> VC_IRQ_RCRS_08 {
            doc /* IRQ-RCRS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-09'> VC_IRQ_RCRS_09 {
            doc /* IRQ-RCRS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-10'> VC_IRQ_RCRS_10 {
            doc /* IRQ-RCRS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-11'> VC_IRQ_RCRS_11 {
            doc /* IRQ-RCRS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-12'> VC_IRQ_RCRS_12 {
            doc /* IRQ-RCRS-12 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-13'> VC_IRQ_RCRS_13 {
            doc /* IRQ-RCRS-13 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-14'> VC_IRQ_RCRS_14 {
            doc /* IRQ-RCRS-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-RCRS-15'> VC_IRQ_RCRS_15 {
            doc /* IRQ-RCRS-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_RCRS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-01'> VC_IRQ_TCS_01 {
            doc /* IRQ-TCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-02'> VC_IRQ_TCS_02 {
            doc /* IRQ-TCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-03'> VC_IRQ_TCS_03 {
            doc /* IRQ-TCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-04'> VC_IRQ_TCS_04 {
            doc /* IRQ-TCS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-05'> VC_IRQ_TCS_05 {
            doc /* IRQ-TCS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-06'> VC_IRQ_TCS_06 {
            doc /* IRQ-TCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-07'> VC_IRQ_TCS_07 {
            doc /* IRQ-TCS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-08'> VC_IRQ_TCS_08 {
            doc /* IRQ-TCS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-09'> VC_IRQ_TCS_09 {
            doc /* IRQ-TCS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-10'> VC_IRQ_TCS_10 {
            doc /* IRQ-TCS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-11'> VC_IRQ_TCS_11 {
            doc /* IRQ-TCS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-12'> VC_IRQ_TCS_12 {
            doc /* IRQ-TCS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-13'> VC_IRQ_TCS_13 {
            doc /* IRQ-TCS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-14'> VC_IRQ_TCS_14 {
            doc /* IRQ-TCS-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-15'> VC_IRQ_TCS_15 {
            doc /* IRQ-TCS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-16'> VC_IRQ_TCS_16 {
            doc /* IRQ-TCS-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-18'> VC_IRQ_TCS_18 {
            doc /* IRQ-TCS-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-19'> VC_IRQ_TCS_19 {
            doc /* IRQ-TCS-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-TCS-21'> VC_IRQ_TCS_21 {
            doc /* IRQ-TCS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_TCS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-01'> VC_IRQ_THC_01 {
            doc /* IRQ-THC-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-02'> VC_IRQ_THC_02 {
            doc /* IRQ-THC-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-03'> VC_IRQ_THC_03 {
            doc /* IRQ-THC-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-04'> VC_IRQ_THC_04 {
            doc /* IRQ-THC-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-05'> VC_IRQ_THC_05 {
            doc /* IRQ-THC-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-06'> VC_IRQ_THC_06 {
            doc /* IRQ-THC-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-07'> VC_IRQ_THC_07 {
            doc /* IRQ-THC-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-08'> VC_IRQ_THC_08 {
            doc /* IRQ-THC-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-09'> VC_IRQ_THC_09 {
            doc /* IRQ-THC-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-10'> VC_IRQ_THC_10 {
            doc /* IRQ-THC-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-11'> VC_IRQ_THC_11 {
            doc /* IRQ-THC-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-12'> VC_IRQ_THC_12 {
            doc /* IRQ-THC-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-13'> VC_IRQ_THC_13 {
            doc /* IRQ-THC-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-14'> VC_IRQ_THC_14 {
            doc /* IRQ-THC-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-15'> VC_IRQ_THC_15 {
            doc /* IRQ-THC-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-16'> VC_IRQ_THC_16 {
            doc /* IRQ-THC-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-17'> VC_IRQ_THC_17 {
            doc /* IRQ-THC-17 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-THC-18'> VC_IRQ_THC_18 {
            doc /* IRQ-THC-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_THC_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-01'> VC_IRQ_WCL_01 {
            doc /* IRQ-WCL-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-02'> VC_IRQ_WCL_02 {
            doc /* IRQ-WCL-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-03'> VC_IRQ_WCL_03 {
            doc /* IRQ-WCL-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-04'> VC_IRQ_WCL_04 {
            doc /* IRQ-WCL-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-05'> VC_IRQ_WCL_05 {
            doc /* IRQ-WCL-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-06'> VC_IRQ_WCL_06 {
            doc /* IRQ-WCL-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-07'> VC_IRQ_WCL_07 {
            doc /* IRQ-WCL-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-08'> VC_IRQ_WCL_08 {
            doc /* IRQ-WCL-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-09'> VC_IRQ_WCL_09 {
            doc /* IRQ-WCL-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-10'> VC_IRQ_WCL_10 {
            doc /* IRQ-WCL-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-11'> VC_IRQ_WCL_11 {
            doc /* IRQ-WCL-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-12'> VC_IRQ_WCL_12 {
            doc /* IRQ-WCL-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-13'> VC_IRQ_WCL_13 {
            doc /* IRQ-WCL-13 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-14'> VC_IRQ_WCL_14 {
            doc /* IRQ-WCL-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-15'> VC_IRQ_WCL_15 {
            doc /* IRQ-WCL-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-16'> VC_IRQ_WCL_16 {
            doc /* IRQ-WCL-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-17'> VC_IRQ_WCL_17 {
            doc /* IRQ-WCL-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-18'> VC_IRQ_WCL_18 {
            doc /* IRQ-WCL-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-19'> VC_IRQ_WCL_19 {
            doc /* IRQ-WCL-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-20'> VC_IRQ_WCL_20 {
            doc /* IRQ-WCL-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-21'> VC_IRQ_WCL_21 {
            doc /* IRQ-WCL-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCL-22'> VC_IRQ_WCL_22 {
            doc /* IRQ-WCL-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCL_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-01'> VC_IRQ_WCS_01 {
            doc /* IRQ-WCS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-02'> VC_IRQ_WCS_02 {
            doc /* IRQ-WCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-03'> VC_IRQ_WCS_03 {
            doc /* IRQ-WCS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-04'> VC_IRQ_WCS_04 {
            doc /* IRQ-WCS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-05'> VC_IRQ_WCS_05 {
            doc /* IRQ-WCS-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-06'> VC_IRQ_WCS_06 {
            doc /* IRQ-WCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-07'> VC_IRQ_WCS_07 {
            doc /* IRQ-WCS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-08'> VC_IRQ_WCS_08 {
            doc /* IRQ-WCS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-09'> VC_IRQ_WCS_09 {
            doc /* IRQ-WCS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-10'> VC_IRQ_WCS_10 {
            doc /* IRQ-WCS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-11'> VC_IRQ_WCS_11 {
            doc /* IRQ-WCS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-12'> VC_IRQ_WCS_12 {
            doc /* IRQ-WCS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-13'> VC_IRQ_WCS_13 {
            doc /* IRQ-WCS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-14'> VC_IRQ_WCS_14 {
            doc /* IRQ-WCS-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-IRQ-WCS-15'> VC_IRQ_WCS_15 {
            doc /* IRQ-WCS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify InterfaceRequirements::IRQ_WCS_15; }
            return verdict : VerdictKind;
        }
    }
    // ---- 検証の結果（対象は IF の送り側の部品。根拠ありは pass、根拠なしは inconclusive）
    package Results {
        verification vc_irq_als_01 : Verification::VC_IRQ_ALS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_02 : Verification::VC_IRQ_ALS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_03 : Verification::VC_IRQ_ALS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_als_04 : Verification::VC_IRQ_ALS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_als_05 : Verification::VC_IRQ_ALS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_als_06 : Verification::VC_IRQ_ALS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_07 : Verification::VC_IRQ_ALS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_08 : Verification::VC_IRQ_ALS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_09 : Verification::VC_IRQ_ALS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_als_10 : Verification::VC_IRQ_ALS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_als_11 : Verification::VC_IRQ_ALS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.dep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_12 : Verification::VC_IRQ_ALS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.lcg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_13 : Verification::VC_IRQ_ALS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_14 : Verification::VC_IRQ_ALS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_15 : Verification::VC_IRQ_ALS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_16 : Verification::VC_IRQ_ALS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_als_17 : Verification::VC_IRQ_ALS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als.vnt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_01 : Verification::VC_IRQ_ARS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_02 : Verification::VC_IRQ_ARS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_03 : Verification::VC_IRQ_ARS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_04 : Verification::VC_IRQ_ARS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_05 : Verification::VC_IRQ_ARS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_06 : Verification::VC_IRQ_ARS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_07 : Verification::VC_IRQ_ARS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_08 : Verification::VC_IRQ_ARS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_09 : Verification::VC_IRQ_ARS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_10 : Verification::VC_IRQ_ARS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_11 : Verification::VC_IRQ_ARS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_12 : Verification::VC_IRQ_ARS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_13 : Verification::VC_IRQ_ARS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_14 : Verification::VC_IRQ_ARS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_15 : Verification::VC_IRQ_ARS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_16 : Verification::VC_IRQ_ARS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_17 : Verification::VC_IRQ_ARS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_18 : Verification::VC_IRQ_ARS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_19 : Verification::VC_IRQ_ARS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_20 : Verification::VC_IRQ_ARS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_21 : Verification::VC_IRQ_ARS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_22 : Verification::VC_IRQ_ARS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_23 : Verification::VC_IRQ_ARS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_24 : Verification::VC_IRQ_ARS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_25 : Verification::VC_IRQ_ARS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_26 : Verification::VC_IRQ_ARS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_27 : Verification::VC_IRQ_ARS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_28 : Verification::VC_IRQ_ARS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_29 : Verification::VC_IRQ_ARS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_30 : Verification::VC_IRQ_ARS_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ars_31 : Verification::VC_IRQ_ARS_31 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_32 : Verification::VC_IRQ_ARS_32 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_33 : Verification::VC_IRQ_ARS_33 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_34 : Verification::VC_IRQ_ARS_34 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_35 : Verification::VC_IRQ_ARS_35 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_36 : Verification::VC_IRQ_ARS_36 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_37 : Verification::VC_IRQ_ARS_37 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_38 : Verification::VC_IRQ_ARS_38 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_39 : Verification::VC_IRQ_ARS_39 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_40 : Verification::VC_IRQ_ARS_40 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_41 : Verification::VC_IRQ_ARS_41 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ars_42 : Verification::VC_IRQ_ARS_42 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_01 : Verification::VC_IRQ_AVB_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.cir;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_02 : Verification::VC_IRQ_AVB_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_03 : Verification::VC_IRQ_AVB_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_04 : Verification::VC_IRQ_AVB_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_05 : Verification::VC_IRQ_AVB_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_06 : Verification::VC_IRQ_AVB_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_07 : Verification::VC_IRQ_AVB_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_08 : Verification::VC_IRQ_AVB_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_09 : Verification::VC_IRQ_AVB_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.hx;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_10 : Verification::VC_IRQ_AVB_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_avb_11 : Verification::VC_IRQ_AVB_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.hx;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_avb_12 : Verification::VC_IRQ_AVB_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.avb.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_13 : Verification::VC_IRQ_AVB_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_14 : Verification::VC_IRQ_AVB_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_avb_15 : Verification::VC_IRQ_AVB_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_01 : Verification::VC_IRQ_CAC_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_02 : Verification::VC_IRQ_CAC_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.rtn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cac_03 : Verification::VC_IRQ_CAC_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cac_04 : Verification::VC_IRQ_CAC_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cac_05 : Verification::VC_IRQ_CAC_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_06 : Verification::VC_IRQ_CAC_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_07 : Verification::VC_IRQ_CAC_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_08 : Verification::VC_IRQ_CAC_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cac_09 : Verification::VC_IRQ_CAC_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_10 : Verification::VC_IRQ_CAC_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_cac_11 : Verification::VC_IRQ_CAC_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_12 : Verification::VC_IRQ_CAC_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_13 : Verification::VC_IRQ_CAC_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.cac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_cac_14 : Verification::VC_IRQ_CAC_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_co2_01 : Verification::VC_IRQ_CO2_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_co2_02 : Verification::VC_IRQ_CO2_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2.abs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_co2_03 : Verification::VC_IRQ_CO2_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2.abs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_co2_04 : Verification::VC_IRQ_CO2_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2.stw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_co2_05 : Verification::VC_IRQ_CO2_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.co2;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_co2_06 : Verification::VC_IRQ_CO2_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_co2_07 : Verification::VC_IRQ_CO2_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_02 : Verification::VC_IRQ_ECL_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_03 : Verification::VC_IRQ_ECL_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_04 : Verification::VC_IRQ_ECL_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_05 : Verification::VC_IRQ_ECL_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_06 : Verification::VC_IRQ_ECL_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_07 : Verification::VC_IRQ_ECL_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_08 : Verification::VC_IRQ_ECL_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_11 : Verification::VC_IRQ_ECL_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_12 : Verification::VC_IRQ_ECL_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_13 : Verification::VC_IRQ_ECL_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_14 : Verification::VC_IRQ_ECL_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_15 : Verification::VC_IRQ_ECL_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_16 : Verification::VC_IRQ_ECL_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_17 : Verification::VC_IRQ_ECL_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_18 : Verification::VC_IRQ_ECL_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_19 : Verification::VC_IRQ_ECL_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_20 : Verification::VC_IRQ_ECL_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_21 : Verification::VC_IRQ_ECL_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_22 : Verification::VC_IRQ_ECL_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_23 : Verification::VC_IRQ_ECL_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_24 : Verification::VC_IRQ_ECL_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_25 : Verification::VC_IRQ_ECL_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_26 : Verification::VC_IRQ_ECL_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.als;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_27 : Verification::VC_IRQ_ECL_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_28 : Verification::VC_IRQ_ECL_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_29 : Verification::VC_IRQ_ECL_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_30 : Verification::VC_IRQ_ECL_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_31 : Verification::VC_IRQ_ECL_31 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_32 : Verification::VC_IRQ_ECL_32 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_33 : Verification::VC_IRQ_ECL_33 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_34 : Verification::VC_IRQ_ECL_34 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_35 : Verification::VC_IRQ_ECL_35 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_36 : Verification::VC_IRQ_ECL_36 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_37 : Verification::VC_IRQ_ECL_37 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_38 : Verification::VC_IRQ_ECL_38 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_39 : Verification::VC_IRQ_ECL_39 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_40 : Verification::VC_IRQ_ECL_40 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_41 : Verification::VC_IRQ_ECL_41 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_ecl_42 : Verification::VC_IRQ_ECL_42 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_ecl_43 : Verification::VC_IRQ_ECL_43 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_fds_01 : Verification::VC_IRQ_FDS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_02 : Verification::VC_IRQ_FDS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.det;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_03 : Verification::VC_IRQ_FDS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_fds_04 : Verification::VC_IRQ_FDS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_05 : Verification::VC_IRQ_FDS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.alm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_fds_06 : Verification::VC_IRQ_FDS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_07 : Verification::VC_IRQ_FDS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.alm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_08 : Verification::VC_IRQ_FDS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_09 : Verification::VC_IRQ_FDS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_10 : Verification::VC_IRQ_FDS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_11 : Verification::VC_IRQ_FDS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_12 : Verification::VC_IRQ_FDS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_13 : Verification::VC_IRQ_FDS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_fds_14 : Verification::VC_IRQ_FDS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.fds.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_01 : Verification::VC_IRQ_H2O_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.fcw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_02 : Verification::VC_IRQ_H2O_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_03 : Verification::VC_IRQ_H2O_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.spl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_04 : Verification::VC_IRQ_H2O_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.spl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_05 : Verification::VC_IRQ_H2O_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_06 : Verification::VC_IRQ_H2O_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_07 : Verification::VC_IRQ_H2O_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_08 : Verification::VC_IRQ_H2O_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.wst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_09 : Verification::VC_IRQ_H2O_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_10 : Verification::VC_IRQ_H2O_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_11 : Verification::VC_IRQ_H2O_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_12 : Verification::VC_IRQ_H2O_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_13 : Verification::VC_IRQ_H2O_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.prs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_h2o_14 : Verification::VC_IRQ_H2O_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o.prs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_15 : Verification::VC_IRQ_H2O_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_h2o_16 : Verification::VC_IRQ_H2O_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.h2o;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_imu_01 : Verification::VC_IRQ_IMU_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_02 : Verification::VC_IRQ_IMU_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_03 : Verification::VC_IRQ_IMU_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.inl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_04 : Verification::VC_IRQ_IMU_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_05 : Verification::VC_IRQ_IMU_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.fan;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_imu_06 : Verification::VC_IRQ_IMU_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_07 : Verification::VC_IRQ_IMU_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_imu_08 : Verification::VC_IRQ_IMU_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_09 : Verification::VC_IRQ_IMU_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_10 : Verification::VC_IRQ_IMU_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_11 : Verification::VC_IRQ_IMU_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_imu_12 : Verification::VC_IRQ_IMU_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.imu.mon;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_01 : Verification::VC_IRQ_PCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.o2s;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_02 : Verification::VC_IRQ_PCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.n2s;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_03 : Verification::VC_IRQ_PCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_04 : Verification::VC_IRQ_PCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_05 : Verification::VC_IRQ_PCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_06 : Verification::VC_IRQ_PCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_07 : Verification::VC_IRQ_PCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_08 : Verification::VC_IRQ_PCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_09 : Verification::VC_IRQ_PCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_10 : Verification::VC_IRQ_PCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_11 : Verification::VC_IRQ_PCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mon;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_12 : Verification::VC_IRQ_PCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_13 : Verification::VC_IRQ_PCS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_14 : Verification::VC_IRQ_PCS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_15 : Verification::VC_IRQ_PCS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_16 : Verification::VC_IRQ_PCS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_17 : Verification::VC_IRQ_PCS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.pcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_pcs_18 : Verification::VC_IRQ_PCS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_19 : Verification::VC_IRQ_PCS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_20 : Verification::VC_IRQ_PCS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_21 : Verification::VC_IRQ_PCS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_22 : Verification::VC_IRQ_PCS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_pcs_23 : Verification::VC_IRQ_PCS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcrs_01 : Verification::VC_IRQ_RCRS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.fan;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcrs_02 : Verification::VC_IRQ_RCRS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_03 : Verification::VC_IRQ_RCRS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_04 : Verification::VC_IRQ_RCRS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.bed;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_05 : Verification::VC_IRQ_RCRS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcrs_06 : Verification::VC_IRQ_RCRS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_07 : Verification::VC_IRQ_RCRS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.fan;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_08 : Verification::VC_IRQ_RCRS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.bed;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_09 : Verification::VC_IRQ_RCRS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_10 : Verification::VC_IRQ_RCRS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_11 : Verification::VC_IRQ_RCRS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_12 : Verification::VC_IRQ_RCRS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_13 : Verification::VC_IRQ_RCRS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_rcrs_14 : Verification::VC_IRQ_RCRS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_rcrs_15 : Verification::VC_IRQ_RCRS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.rcrs.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_tcs_01 : Verification::VC_IRQ_TCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_02 : Verification::VC_IRQ_TCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_03 : Verification::VC_IRQ_TCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_04 : Verification::VC_IRQ_TCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_tcs_05 : Verification::VC_IRQ_TCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_06 : Verification::VC_IRQ_TCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_tcs_07 : Verification::VC_IRQ_TCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.hx;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_08 : Verification::VC_IRQ_TCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_09 : Verification::VC_IRQ_TCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_10 : Verification::VC_IRQ_TCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_11 : Verification::VC_IRQ_TCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs.fcl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_12 : Verification::VC_IRQ_TCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_13 : Verification::VC_IRQ_TCS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_14 : Verification::VC_IRQ_TCS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_tcs_15 : Verification::VC_IRQ_TCS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_16 : Verification::VC_IRQ_TCS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.atcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_18 : Verification::VC_IRQ_TCS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_19 : Verification::VC_IRQ_TCS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_tcs_21 : Verification::VC_IRQ_TCS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_01 : Verification::VC_IRQ_THC_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.tcv;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_02 : Verification::VC_IRQ_THC_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.hx;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_03 : Verification::VC_IRQ_THC_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_04 : Verification::VC_IRQ_THC_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.hx;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_05 : Verification::VC_IRQ_THC_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_06 : Verification::VC_IRQ_THC_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_07 : Verification::VC_IRQ_THC_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_08 : Verification::VC_IRQ_THC_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.hx;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_09 : Verification::VC_IRQ_THC_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.sep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_10 : Verification::VC_IRQ_THC_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_11 : Verification::VC_IRQ_THC_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_12 : Verification::VC_IRQ_THC_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_13 : Verification::VC_IRQ_THC_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_14 : Verification::VC_IRQ_THC_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_15 : Verification::VC_IRQ_THC_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.thc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_thc_16 : Verification::VC_IRQ_THC_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_17 : Verification::VC_IRQ_THC_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_thc_18 : Verification::VC_IRQ_THC_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_01 : Verification::VC_IRQ_WCL_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.pmp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_02 : Verification::VC_IRQ_WCL_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.avl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_03 : Verification::VC_IRQ_WCL_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.ich;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_04 : Verification::VC_IRQ_WCL_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.cld;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_05 : Verification::VC_IRQ_WCL_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.ich;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_06 : Verification::VC_IRQ_WCL_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.pmp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_07 : Verification::VC_IRQ_WCL_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.pmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_08 : Verification::VC_IRQ_WCL_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.ich;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_09 : Verification::VC_IRQ_WCL_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_10 : Verification::VC_IRQ_WCL_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_11 : Verification::VC_IRQ_WCL_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars.wcl.mon;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_12 : Verification::VC_IRQ_WCL_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_13 : Verification::VC_IRQ_WCL_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_14 : Verification::VC_IRQ_WCL_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_15 : Verification::VC_IRQ_WCL_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_16 : Verification::VC_IRQ_WCL_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_17 : Verification::VC_IRQ_WCL_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_18 : Verification::VC_IRQ_WCL_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_19 : Verification::VC_IRQ_WCL_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcl_20 : Verification::VC_IRQ_WCL_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_21 : Verification::VC_IRQ_WCL_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcl_22 : Verification::VC_IRQ_WCL_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.ars;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_01 : Verification::VC_IRQ_WCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_02 : Verification::VC_IRQ_WCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcs_03 : Verification::VC_IRQ_WCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.urn;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_04 : Verification::VC_IRQ_WCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.cmd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_05 : Verification::VC_IRQ_WCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.cmd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_06 : Verification::VC_IRQ_WCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcs_07 : Verification::VC_IRQ_WCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_08 : Verification::VC_IRQ_WCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_09 : Verification::VC_IRQ_WCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcs_10 : Verification::VC_IRQ_WCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_11 : Verification::VC_IRQ_WCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcs_12 : Verification::VC_IRQ_WCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_irq_wcs_13 : Verification::VC_IRQ_WCS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_14 : Verification::VC_IRQ_WCS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_irq_wcs_15 : Verification::VC_IRQ_WCS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eclss.wcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
    }
}
