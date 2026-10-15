// SysML v2 テキスト：下位要求（L3：ECLSS 以外の17系）と導出・充足・検証
// SSD-RQL-SYS-001 下位要求書（L3：ECLSS 以外の17系の機能ブロック） の表から生成（lib/build_docs_bx.py・rev_bx/bxdata.py）。根拠の頁は SSD-RQL-SYS-001 にある。
package SSD_RQL_SYS_001 {
    doc /* SSD-RQL-SYS-001 下位要求書（L3：ECLSS 以外の17系の機能ブロック）。系ごとの L3 の要求を requirement、L2 の要求（SSD-REQ-<系>-001）からの導出、割付先の機能行の部品への充足、要求ごとの検証ケースと結果で示す。図225・226 と同じ内容。 */
    private import SSD_BLK_SYS_001::*;
    private import SSD_RQM_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::*;
    package <'LRQ-APU'> LRQ_APU {
        doc /* 補助動力装置・油圧系（APU/HYD）の L3 要求（SSD-FD-APU-001 の下位の機能ブロック） */
        requirement <'LRQ-APU-01'> LRQ_APU_01 {
            subject s : Parts::Part;
            doc /* 循環ポンプは1台の電動機で駆動する2台の固定容量形歯車ポンプを直列にしたものとし、高圧・小流量側（2,500 psig）で休止中のアキュムレータ圧力を維持し、低圧・大流量側（350 psig）で作動油を循環させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "高圧側 2,500 psig・低圧側 350 psig"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-02'> LRQ_APU_02 {
            subject s : Parts::Part;
            doc /* 循環ポンプは APU 制御器が対応する APU の運転指令を出すと自動的に切り離されること、APU が止まっているときは MPS/TVC 隔離弁とブレーキ隔離弁の操作に要る 100 psid 以上の圧力を循環ポンプで与えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "操作に要する差圧 100 psid 以上"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-03'> LRQ_APU_03 {
            subject s : Parts::Part;
            doc /* 循環ポンプの本体温度または運転中のリザーバ温度が 230°F を超えると循環ポンプを喪失とするが、循環ポンプの喪失だけでは油圧系の喪失としないこと、また起動時の大きな突入電流・4〜5 V の母線電圧の低下・電磁干渉のため、オービタが電力を与える火工品を使うペイロード展開の間は入り切りさせないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "喪失 230°F 超、母線電圧の低下 4〜5 V"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-04'> LRQ_APU_04 {
            subject s : Parts::Part;
            doc /* 循環ポンプは、FES の故障時のフレオンループの補助冷却と、APU の始動が突入インタフェースの 13 分前より遅れるときの作動油の加温にも使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "突入インタフェース−13 分"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-05'> LRQ_APU_05 {
            subject s : Parts::Part;
            doc /* APU 制御器はタービン回転数の制御に加えてギアボックスの加圧を制御し、燃料ポンプとガス発生器のヒータを制御すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-06'> LRQ_APU_06 {
            subject s : Parts::Part;
            doc /* APU SPEED SELECT スイッチの HIGH では回転数を 81,360 rpm（113%±8%）に制御し、HIGH での第2の予備を 82,800 rpm（115%）とし、副制御弁は 113% で制御しようとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "HIGH 81,360 rpm（113%±8%）、第2の予備 82,800 rpm（115%）"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-07'> LRQ_APU_07 {
            subject s : Parts::Part;
            doc /* 始動の論理は、始動指令から 10.5 秒間は低速度の検査を遅らせて正常な回転数に達する時間を与え、過速度の検査は遅らせず、APU/HYD READY TO START 表示はガス発生器温度 190°F 超・タービン回転数 80% 未満・WSB 制御器の準備完了・燃料タンク隔離弁の開・主油圧ポンプの減圧がそろうと灰色になること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "検査の遅れ 10.5 秒、ガス発生器温度 190°F 超"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-08'> LRQ_APU_08 {
            subject s : Parts::Part;
            doc /* APU AUTO SHUT DOWN スイッチを INHIBIT にすると自動停止だけが禁止され、回転数が 80% 未満・129% 超になると APU UNDERSPEED・APU OVERSPEED の灯と警報音は出続け、主燃料制御弁のパルスは油圧の負荷で決まり、回転数が目標を超えると弁が閉じて燃料はバイパス管で燃料ポンプの入口へ戻ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "禁止の対象は自動停止のみ、80% 未満・129% 超で警報は継続"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-09'> LRQ_APU_09 {
            subject s : Parts::Part;
            doc /* 燃料タンク隔離弁は電磁弁とし、両弁を閉じた後の熱の戻りで下流の圧力がタンク圧力より 40〜200 psi 高くなると逆方向に逃がし、弁の温度を弁ごとに2点（APU ごとに4点）計測すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "逆流の逃がし 40〜200 psi 高、温度計測 弁ごとに2点"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-10'> LRQ_APU_10 {
            subject s : Parts::Part;
            doc /* 燃料ポンプは約 1,400〜1,500 psi を吐出し、出口のフィルタが詰まると約 1,725 psi でポンプ入口へ逃がし、軸シールの漏れは APU ごとの 500 cc の回収ボトルへ導いて、満杯になると約 45 psia の破裂板が破れて機外へ排出すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "吐出 約 1,400〜1,500 psi、逃がし 約 1,725 psi、回収ボトル 500 cc・約 45 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-11'> LRQ_APU_11 {
            subject s : Parts::Part;
            doc /* 回転数は燃料ポンプの下流に直列に置いた主・副の電磁パルス式燃料制御弁で制御し、主弁は電力を失うと全開になり、副弁は電力を失うと閉じて APU を停止させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主弁 電力喪失で全開、副弁 電力喪失で閉"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-12'> LRQ_APU_12 {
            subject s : Parts::Part;
            doc /* 燃料タンク・燃料配管・水配管のヒータは A・B の冗長な系に分け、パネル A12 のスイッチで1系統ずつ選んで使い、サーモスタットで 55〜65°F に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "サーモスタット 55〜65°F、A・B から1系統"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-13'> LRQ_APU_13 {
            subject s : Parts::Part;
            doc /* 主油圧ポンプは高速のとき最大 69.6 gpm を送り、APU の始動時は電動の減圧弁で吐出圧を 2,900〜3,100 psi から 500〜1,000 psi に下げること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "高速 最大 69.6 gpm、始動時 500〜1,000 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-14'> LRQ_APU_14 {
            subject s : Parts::Part;
            doc /* 各油圧系のフィルタモジュールの高圧逃がし弁は供給管の圧力が 3,850 psid を超えると戻り管へ逃がし、主ポンプが止まるとプライオリティ弁が閉じてアキュムレータが約 2,500 psi を保ち、主ポンプの入口に約 62 psia（確実な始動に必要な最低入口圧力は 20 psia）を与えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "逃がし 3,850 psid、アキュムレータ 約 2,500 psi、入口 約 62 psia（最低 20 psia）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-15'> LRQ_APU_15 {
            subject s : Parts::Part;
            doc /* 各リザーバの容量は 8 ガロンで作動油は合成炭化水素の MIL-H-83282 とし、アキュムレータはベローズ式で 70°F の GN2 予圧を 1,700 psig（GN2 容積 115 立方インチ・作動油容積 51 立方インチ）とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "リザーバ 8 gal、予圧 1,700 psig（70°F）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-16'> LRQ_APU_16 {
            subject s : Parts::Part;
            doc /* MPS/TVC 隔離弁は軌道上では閉じ、SSME の油圧の再加圧と再配置のときだけ開き、上昇中の油圧の漏れへの対処は MECO の後とし、MECO の後に該当する隔離弁を閉じて、隔離できなければ低圧（LOW PRESS）にするか APU を停止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "対処は MECO 後、隔離できなければ LOW PRESS か APU 停止"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-17'> LRQ_APU_17 {
            subject s : Parts::Part;
            doc /* WSB 制御器は打上げの 8 時間前に電源を入れて水タンクを加圧し、APU の起動は燃料を節約するためできるだけ遅らせて T−5 分に3台を起動し、T−4 分 5 秒までに3系統の主ポンプ圧力が 2,800 psi を超えなければ GLS が自動で打上げを保留すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "WSB 制御器は T−8 時間、APU 起動 T−5 分、保留しきい値 2,800 psi（T−4:05）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-18'> LRQ_APU_18 {
            subject s : Parts::Part;
            doc /* APU と WSB は主エンジンのパージ・投棄・格納のシーケンスが終わると停止するが、AOA を宣言した場合は APU を止めずに油圧ポンプを減圧して燃料の消費を抑えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "停止は MPS ダンプの完了後、AOA は APU 継続・ポンプ減圧"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-19'> LRQ_APU_19 {
            subject s : Parts::Part;
            doc /* 軌道離脱の前日には MCC が選んだ1台の APU を起動し、主ポンプを通常の圧力にして空力舵面の駆動を確かめる FCS チェックアウトを約 5 分行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "FCS チェックアウト 約 5 分・APU 1台"; phases = "PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-20'> LRQ_APU_20 {
            subject s : Parts::Part;
            doc /* 軌道離脱噴射の 5 分前に MCC が選んだ1台を低圧のまま起動し、突入インタフェースの 13 分前に残る2台を起動して3系統を通常の圧力にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "起動 噴射の 5 分前（1台）・EI の 13 分前（2台）"; phases = "PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-21'> LRQ_APU_21 {
            subject s : Parts::Part;
            doc /* 突入・アボートと計画では、空力舵面のための2系統、脚展開の冗長、必要時の前輪操舵、半分のブレーキ能力の冗長を確保するために APU を「必要」と定義し、単一の APU/油圧系での着陸は認定されていないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "必要な APU：舵面2系統・脚展開の冗長・半分のブレーキ"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-22'> LRQ_APU_22 {
            subject s : Parts::Part;
            doc /* APU の燃料と窒素の漏れは量が少なくなるまで区別できないため燃料の漏れとして扱い、MECO の後は APU を停止して燃料タンク隔離弁を閉じ、隔離できなければ再起動して燃料を使い切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "漏れは燃料の漏れとして扱う"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-APU-23'> LRQ_APU_23 {
            subject s : Parts::Part;
            doc /* 噴射器の水冷却系は約 180 分の通常の冷却期間がとれない場合だけ使い、噴射器の分岐流路を 400°F 未満に冷やし、水タンクは3台で共用して約 9 lb（連続 21 分）の水を 120 psi の GN2 で押し出し、高温での再起動の約 6 回分に足りること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "冷却 400°F 未満、水 約 9 lb（連続 21 分）、再起動 約 6 回分、GN2 120 psi"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-24'> LRQ_APU_24 {
            subject s : Parts::Part;
            doc /* 改良型 APU の燃料ポンプとガス発生器弁モジュールはヒートシンクと遮熱板で受動冷却して熱の戻りを防ぎ、燃料ポンプが 210°F 超またはガス発生器弁モジュールが 200°F 超のときは爆発のおそれがあるため再起動しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "再起動禁止：燃料ポンプ 210°F 超・ガス発生器弁モジュール 200°F 超"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-25'> LRQ_APU_25 {
            subject s : Parts::Part;
            doc /* パネル A12 の APU HEATER GAS GEN/FUEL PUMP スイッチのヒータ（A・B 系）は燃料ポンプとガス発生器弁モジュールを約 100°F に保ち、APU HEATER LUBE OIL LINE スイッチのヒータは潤滑油配管を 55〜65°F に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "約 100°F（燃料ポンプ・弁モジュール）、55〜65°F（潤滑油配管）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-26'> LRQ_APU_26 {
            subject s : Parts::Part;
            doc /* MECO の後に潤滑油出口温度が 325°F 超またはギアボックス軸受温度が 350°F 超になると MCC の判断で APU を停止し、ボイラによる潤滑油の冷却をすべて失うと全運転温度の APU は 2〜3 分で軸受が焼き付くことを前提とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "停止：潤滑油出口 325°F 超・軸受 350°F 超、焼き付き 2〜3 分"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-27'> LRQ_APU_27 {
            subject s : Parts::Part;
            doc /* WSB の GN2 は直径 6 インチの球形容器に 70°F で 2,400 psi・0.77 lb を入れ、遮断弁と 24.5〜26 psig に調圧する調圧器を経て水タンクを加圧し、N2 供給弁は APU の運転の準備と運転中を除いて閉じておくこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "GN2 2,400 psi（70°F）・0.77 lb、調圧 24.5〜26 psig"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-28'> LRQ_APU_28 {
            subject s : Parts::Part;
            doc /* 打上げ時は各 WSB に最大 4.86 lb の PGME/水の混合液を入れておくプールモードとし、上昇中に水が沸騰し尽くすと打上げの約 13 分後に噴霧モードに移り、作動油は上昇中は通常は噴霧冷却を要しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "混合液 最大 4.86 lb、噴霧モードへ 打上げの約 13 分後"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-29'> LRQ_APU_29 {
            subject s : Parts::Part;
            doc /* 運転中の制御器は作動油と潤滑油の出口温度をそれぞれ 208°F・250°F の設定点と比べて給水弁を開き、水は最大で作動油部に毎分 10 lb、潤滑油部に毎分 5 lb流し、ボイラ前後の差圧が 49 psi を超えるとばね式のポペット弁で逃がして、作動油流量の一時的な急増（最大 63 gpm）でも流量を制限しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "設定点 208°F・250°F、水 最大 10 lb/分・5 lb/分、ポペット 49 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-APU-30'> LRQ_APU_30 {
            subject s : Parts::Part;
            doc /* WSB は、N2・H2O の漏れが消耗品のレッドラインを割る場合、制御器 A・B のどちらでも潤滑油戻り温度 325°F 未満・リザーバ温度 230°F 未満を保てない場合、2つの蒸気ベントヒータをともに失った場合などに喪失とし、WSB の喪失はやがて対応する APU・油圧系の喪失につながること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "潤滑油戻り 325°F 未満・リザーバ 230°F 未満"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'LRQ-CREW'> LRQ_CREW {
        doc /* 乗員系・脱出系（CREW）の L3 要求（SSD-FD-CREW-001 の下位の機能ブロック） */
        requirement <'LRQ-CREW-01'> LRQ_CREW_01 {
            subject s : Parts::Part;
            doc /* 24時間運用のミッションの4段の固定式睡眠ステーションは、各段に寝袋とライナー、個人用の収納、段ごとの照明と換気の吸気口・排気口を持ち、吸気口を頭の側、排気口を足の側に置いて、乗員の頭を気密室の側、足を前方アビオニクスベイの側にそろえること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "段 4、寝袋 1＋ライナー 2/段、照明 1/段、吸気は頭・排気は足"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-02'> LRQ_CREW_02 {
            subject s : Parts::Part;
            doc /* 1ミッションの乗員1人あたり、洗面用のタオルを1日1枚、ウォッシュクロスを1日2枚用意し、廃棄物管理系が使えなくなったときのために、尿収集器具・おむつ・糞便袋などを Volume G に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "タオル 1枚/日・ウォッシュクロス 2枚/日、非常用衛生用品は Volume G"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-03'> LRQ_CREW_03 {
            subject s : Parts::Part;
            doc /* 運動器具の自転車エルゴメータは、フライホイールとブレーキバンドで抵抗力をつくり、制御パネルまたは手動で抵抗を調整でき、軌道上で取付枠を組み替えて飛行甲板か中甲板の座席スタッドに付けられること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "取付先＝中甲板の床スタッド（軌道上で飛行甲板の座席スタッドにも取付可）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-04'> LRQ_CREW_04 {
            subject s : Parts::Part;
            doc /* 毎日の5〜15分の清掃作業のために、掃除機（交流または直流）、殺菌性洗剤、使い捨て手袋、汎用ワイプを備え、乗員室の空気フィルタの清掃を飛行中にできること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "清掃作業 5〜15分/回"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-05'> LRQ_CREW_05 {
            subject s : Parts::Part;
            doc /* Volume F の湿ったごみの区画には、医療キットの品（針を除く）、嘔吐袋、尿収集器具、糞便袋、WCS の臭気/細菌フィルタ、食品の包装を収め、船外への排気には WCS の真空排気弁を開けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "収納する湿ったごみ 6種、排気は WCS の真空排気弁を開く"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-06'> LRQ_CREW_06 {
            subject s : Parts::Part;
            doc /* 非常照明は、必須母線からの別の電源入力で給電される選ばれた器具で、パネル C3 と ML18F の2つのスイッチが同じ位置にあるときに点き、点灯すると全明るさになり、最小限の照明の運用のためにケミカルライトを備えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "非常スイッチ 2（C3・ML18F）、点灯時は全明るさ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-07'> LRQ_CREW_07 {
            subject s : Parts::Part;
            doc /* 中甲板の天井の8つの投光照明器具は半透明のポリカーボネートの内側に置き、パネル MO13Q の MID DECK FLOODS スイッチで個別に入切できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "器具 8、個別スイッチ 8"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-08'> LRQ_CREW_08 {
            subject s : Parts::Part;
            doc /* 表示灯は、非常と警告を赤、注意を黄、助言を白・緑・黄・青の色で表し、ランプ試験スイッチ（パネル O6・O8）の LEFT と RIGHT でそれぞれ半分ずつの表示灯を点灯させて試験できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "色 非常・警告＝赤、注意＝黄、助言＝白・緑・黄・青"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-09'> LRQ_CREW_09 {
            subject s : Parts::Part;
            doc /* ペイロードベイの投光照明は、点けてから 2〜3分で全明るさになり、点けたら最低 10分は点けたままにし、5分で全明るさにならなければ消し、消したら 10〜16分は再点灯しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "全明るさまで 2〜3分、最低点灯 10分、再点灯まで 10〜16分、5分で未達なら消す"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-10'> LRQ_CREW_10 {
            subject s : Parts::Part;
            doc /* ペイロードベイの投光照明のDC/DC電源は投光照明電子組立に付けてフレオンループで冷やし、ドッキング用と前方隔壁の投光照明は水ループの冷却板で冷やすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "冷却＝フレオンループ（ペイロードベイ）、水ループ（ドッキング・前方隔壁、OV-104 のみ）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-11'> LRQ_CREW_11 {
            subject s : Parts::Part;
            doc /* SOMS は用途別のサブパック（薬、気道、眼耳鼻喉、静脈投与、外傷など）に分けた医療キットで、生理食塩水を計 3100 ml 積み、補助キット（MAK）を1飛行に2つ積むこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "生理食塩水 計 3100 ml、MAK 2/飛行"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-12'> LRQ_CREW_12 {
            subject s : Parts::Part;
            doc /* 蘇生器は、マスクと手動/要求流量の酸素供給弁と長さ 6 ft のホースと迅速継手を持ち、手動と要求流量の2つの方式で 100% の補助酸素を与え、洗眼器はギャレーの清水につなぐこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ホース 6 ft、方式 2（手動・要求流量）、酸素 100%"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-13'> LRQ_CREW_13 {
            subject s : Parts::Part;
            doc /* 生体計測系は、胸の3つの電極（下部 LC・上部 UC・接地 G）の心電図の信号を 0〜5 V の信号調整器で整え、2つの生体計測チャネル（パネル R10）で地上へ送るか記録し、軌道上では航空医官の要請の場合だけ使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電極 3、出力 0〜5 V、チャネル 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-14'> LRQ_CREW_14 {
            subject s : Parts::Part;
            doc /* 乗員は受動線量計を飛行の間ずっと（EVA を含めて）着け、能動線量計 TEPC を FD1 に起動し、太陽フレアなどの要請時に高線量率線量計（HRD）で 0〜600 rad を読み出せること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "受動線量計 全員、HRD 0〜600 rad"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-15'> LRQ_CREW_15 {
            subject s : Parts::Part;
            doc /* 空気サンプリングは、採気容器 GSC を1飛行に2個積んで1個を火災・煙などの非常時に、1個をデオービット準備時に使い、一酸化炭素・シアン化水素・塩化水素を実時間で調べる分析器 CSA-CP を FD1 に起動すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "GSC 2個/飛行、CSA-CP＝CO・HCN・HCl の3種"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-16'> LRQ_CREW_16 {
            subject s : Parts::Part;
            doc /* 医師の承認が必要な医療キットの品を使ったときは、使った品を機内でキット内の個別の記録カードに記録し、飛行後の報告で航空医官に伝えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "記録＝個別カード、報告＝飛行後の報告"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-17'> LRQ_CREW_17 {
            subject s : Parts::Part;
            doc /* 航空医官との私的な医療の連絡（PMC）は全飛行日に設け、EVA の前と MET 72時間より早い着陸の前にも設けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PMC＝毎飛行日、EVA の前・MET 72時間前の着陸の前"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-18'> LRQ_CREW_18 {
            subject s : Parts::Part;
            doc /* 打上げ中は、医療上の理由で中止する判断をせず、軌道上の乗員の健康に関わる飛行の早期終了は実時間の判断とし、許容できる治療が軌道上でできないときだけ考えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "上昇中の医療上の中止＝なし"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-19'> LRQ_CREW_19 {
            subject s : Parts::Part;
            doc /* 居住区画の騒音は、24時間平均が 74 dBA 未満に収まる前提で、機器ごとの短時間の上限を 76〜80 dBA は 5分、81〜85 dBA は 1分とし、86 dBA 以上は許さないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "76〜80 dBA＝5分、81〜85 dBA＝1分、≧86 dBA＝不可"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-20'> LRQ_CREW_20 {
            subject s : Parts::Part;
            doc /* 乗員の被ばくは、1日に投影する線量が体内臓器 2.5 rad・眼 10 rad・皮膚 15 rad のいずれかに達する高線量率の状態を限度とし、30日の被ばく限度と ALARA を守ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "高線量率 BFO 2.5 rad/日・眼 10 rad/日・皮膚 15 rad/日"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-21'> LRQ_CREW_21 {
            subject s : Parts::Part;
            doc /* モジュラーロッカーは、ばね付きの拘束ボルトでオービタに取り付け、トレイは4種類で、扉の2つの1/4回転ラッチを回すと 180° 開き、扉が閉まらないときは取り外してターンバックルで構造の支えをつくれること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "トレイ 4種、扉 180°、ロッカー 2 ft3・68 lb 以下"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-22'> LRQ_CREW_22 {
            subject s : Parts::Part;
            doc /* 床下の7つの収納区画は、Volume F を湿ったごみ（8 ft3）、Volume G を非常用の衛生用品、Volume H を EVA の付属品、Volume D を約 8 ft3 の EVA 工具などに使い、Volume A を 3 ft3 の食品庫とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "区画 7、Volume F＝8 ft3、Volume D＝約 8 ft3、Volume A＝3 ft3"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CREW-23'> LRQ_CREW_23 {
            subject s : Parts::Part;
            doc /* 拘束具と移動補助具は、乗込み（機体は垂直で 1 g）、退出（水平で 1 g）、軌道飛行（向き任意）で使えるようにし、足ループは粘着テープで床に付け、中甲板に非常脱出ネット（トランポリン）と甲板間のはしごを備えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "足ループ＝粘着で床に付ける、非常脱出ネット 1、はしご 1"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-24'> LRQ_CREW_24 {
            subject s : Parts::Part;
            doc /* 中甲板収納ラック（MAR）は約 15 ft3 の内容積で最大約 340 lb、軽量版の LWMAR は約 390 lb まで収められ、LWMAR は上下に開く2枚の扉を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MAR 約 15 ft3・約 340 lb、LWMAR 約 390 lb"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-25'> LRQ_CREW_25 {
            subject s : Parts::Part;
            doc /* ACES は、客室の圧力高度が約 35,000 ft に上がると与圧を始め、60,000 ft を超えると 3.67 psia の全加圧にし、手袋の着用・バイザーを下げて固定・BIP プラグの装着の3つが揃わなければ与圧されないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "与圧開始 約 35,000 ft、全加圧 3.67 psia（>60,000 ft）、条件 3"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-26'> LRQ_CREW_26 {
            subject s : Parts::Part;
            doc /* ACES の酸素マニホールドは、オービタの酸素ホースに素早く離れる継手でつなぎ、パラシュートハーネスの非常用酸素 2本（3000 psi を 70 psi に減圧）から合計 401 L を供給し、38 L/min で海面上 10分以上持たせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "非常用酸素ボトル 2本、3000→70 psi、401 L、38 L/min で ≧10分"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-27'> LRQ_CREW_27 {
            subject s : Parts::Part;
            doc /* キャビンベントは、高度 40,000 ft で作動させると約 75秒で客室の圧力を外気に等しくし（約 31,000 ft で均圧）、ペイロードベイとの間に 15 in2 の穴を開け、側面ハッチ投棄の前に必ず作動させ、着陸後の脱出には使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "穴 15 in2、40,000 ft から約 75秒、均圧 約 31,000 ft、ハッチ分離速度 約 45 ft/s"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-28'> LRQ_CREW_28 {
            subject s : Parts::Part;
            doc /* ベイルアウトでは、高度 50,000 ft でバイザーを閉じて非常用酸素を作動させ、40,000 ft でキャビンをベントし、ハッチ投棄後に脱出ポールの8本のランヤードで1人ずつ降り、最大の8人が約2分で脱出し、ポールは制御された滑空飛行にだけ使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ランヤード 8本、8人で約2分、50,000 ft・40,000 ft"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-29'> LRQ_CREW_29 {
            subject s : Parts::Part;
            doc /* 左舷の頭上窓（窓8）は、操縦室中央のコンソール C3 の前方のリングハンドルで投棄し、外側の窓ガラスを先に上後方へ飛ばして 0.3秒後に内側の窓ガラスを開き、地上要員が外から作動させることもでき、7個の降下器 Sky Genie を乗員1人に1個ずつ置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "内側ガラスの遅れ 0.3秒、降下器 7個"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CREW-30'> LRQ_CREW_30 {
            subject s : Parts::Part;
            doc /* 射点の非常脱出では、固定サービス構造から西側の着地域まで約 1,200 ft に張った7本のスライドワイヤのバスケットで降り、バスケットは約 55 mph で滑って約30秒で止まり、着地域に M-113 を待機させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スライドワイヤ 7本・約 1,200 ft、約 55 mph・約30秒"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
    }
    package <'LRQ-CT'> LRQ_CT {
        doc /* 通信・追跡系（C&T）の L3 要求（SSD-FD-CT-001 の下位の機能ブロック） */
        requirement <'LRQ-CT-01'> LRQ_CT_01 {
            subject s : Parts::Part;
            doc /* 音声分配系の ACCU は同じ筐体に冗長な2台を持って一度に1台だけを使い、パネルC3 の AUDIO CENTER スイッチの位置で主系・副系の遮断器から給電し、OFF では ACCU の電力をすべて断てること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ACCU 主系 ESS 2CA AUD CTR 1、副系 MN C AUD CTR 2（パネルR14）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-02'> LRQ_CT_02 {
            subject s : Parts::Part;
            doc /* A/G 1・2 を S帯 PM・Ku帯の地上通信、EVA 中の SSOR による EV 乗員との通信に割り当て、A/A を UHF の地上局経由の MCC 通信に割り当て、パネルA1R の音声センタで SSOR・ISS の音声と記録するループを選べること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ループ A/G 1・A/G 2・A/A、VOICE RECORD SELECT ノブ 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-5（EVA）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-03'> LRQ_CT_03 {
            subject s : Parts::Part;
            doc /* ACCU は打上げアンビリカルの ICOM A・B のチャネルを働かせ、どの乗員局の ATU も LCC とインターコムで通話でき、打上げ・再突入では各乗員が CCA ヘッドセットを HIU・通信ケーブル・CCU を介して ATU につなげること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "アンビリカルで扱う音声は ICOM のみ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-04'> LRQ_CT_04 {
            subject s : Parts::Part;
            doc /* ATU は乗員室の6か所に置いて各音声ループの選択と音量を制御し、電源スイッチは AUD/TONE・AUD・OFF の3位置を持ち、スピーカユニットの上のスピーカを音声用、下のスピーカをクラクソン・サイレン専用にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ATU 6か所、電源 3位置、スピーカユニット 2基（パネルA2・MO29J）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-05'> LRQ_CT_05 {
            subject s : Parts::Part;
            doc /* ペイロードベイに CTVC（カラー）・ITVC（白黒・低照度）・Videospection の3種のカメラを載せ、カメラと PTU は -8°C で入り 0°C で切れるサーモスタット制御のヒータを持ち、PTU は正負各 170° のパン・チルトを高速 12°/s、低速 1.2°/s で動かせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ヒータ -8°C 入り・0°C 切り、PTU ±170°、12°/s・1.2°/s"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-06'> LRQ_CT_06 {
            subject s : Parts::Part;
            doc /* RCU は乗員と MCC のすべての CCTV 指令を受けて MCC のアップリンク指令をパネルA7U の TV POWER CONTROL スイッチが CMD のときだけ受け付け、VSU はカメラの ID・温度・パン/チルト角を読み、45°C を超えるカメラを検知すると RCU へ過熱警告を送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "過熱警告 45°C、VCU は RCU と VSU の2つの LRU"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-07'> LRQ_CT_07 {
            subject s : Parts::Part;
            doc /* OBSS は右舷シルに格納した 50 ft のブームの後端に2つのセンサパッケージを持ち、TPS の点検映像とデータを Ku帯で MCC へ送れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ブーム 50 ft、センサパッケージ 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-08'> LRQ_CT_08 {
            subject s : Parts::Part;
            doc /* VPU（STS-92 から）は CCTV から ISS へ2本、ISS から CCTV へ1本の映像を渡し、DTV（STS-110 から）は CCTV のアナログ NTSC 映像をデジタルに変換して記録または Ku帯のチャネル3（PAYLOAD MAX）で MCC へ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ISS 向け2本・ISS から1本"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-09'> LRQ_CT_09 {
            subject s : Parts::Part;
            doc /* DSC はセンサの信号を MDM が受け付ける 0〜5 V dc に変換し、14台を前方4、後方3、ペイロードベイ下3、左右の尾部4に分けて置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "出力 0〜5 V dc、前方4・後方3・PLB 下3・尾部4"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-10'> LRQ_CT_10 {
            subject s : Parts::Part;
            doc /* PCMMU は OI MDM のデータ、GPC のダウンリスト、PDI のペイロードテレメトリを TFL に従ってインタリーブ・形式化し、電源を切ると TFL が PROM の固定形式に変わり、MDM の主ポートは PCMMU 1、副ポートは PCMMU 2 につながること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "形式メモリ PROM と RAM、MDM ポート 主 PCMMU 1・副 PCMMU 2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-11'> LRQ_CT_11 {
            subject s : Parts::Part;
            doc /* PDI は付属・分離したペイロードからの最大6入力と地上支援装置の1入力を受け、4台のデコミュテータで最大4つのデータ流を処理して PCMMU へ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "入力 6+1、デコミュテータ 4"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-12'> LRQ_CT_12 {
            subject s : Parts::Part;
            doc /* PI は分離したペイロードと全二重の RF 通信を行い、PSP と互換のテレメトリは PSP が副搬送波から復調して PDI へ送り、互換でないものは Ku帯系へ直接送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "互換でないデータはベントパイプで Ku帯へ"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-13'> LRQ_CT_13 {
            subject s : Parts::Part;
            doc /* Ku帯のリターンリンクはモード1でチャネル2を 2 Mbps の低データレート源、チャネル3を 50 Mbps の PL MAX とし、モード2ではチャネル3を 4 Mbps の高データレート源にして、ペイロードのデータや実時間の CCTV 映像を選べること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ch2 2 Mbps、ch3 50 Mbps（モード1）、ch3 4 Mbps（モード2）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-14'> LRQ_CT_14 {
            subject s : Parts::Part;
            doc /* Ku帯の COMM モードでは、NSP がリターンリンクのデータを Ku帯信号処理器と S帯 PM のトランスポンダの両方へ送り、フォワードリンクは Ku帯と S帯 PM の一方だけを処理し、モード1のフォワードは運用データ 72 kbps と OCA のアップリンク 128 kbps を含むこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "フォワード 72 kbps + OCA 128 kbps"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-15'> LRQ_CT_15 {
            subject s : Parts::Part;
            doc /* Ku帯の展開アンテナ組立は右舷のシルロンジロンに付けた直径3 ft のグラファイトエポキシ製パラボラの2軸ジンバルアンテナとし、ベータジンバルが 162° に限られるため極の周り直径4°、ペイロードベイ側直径32° の非カバー域を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "組立 180 lb、系全体 304 lb、非カバー域 4° と 32°"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-16'> LRQ_CT_16 {
            subject s : Parts::Part;
            doc /* ランデブでは Ku帯が RDR PASSIVE の受動モードで目標の角度・角速度・距離変化率を GNC 計算機に与え、GPC モードで GNC の目標位置を SM のアンテナ管理プログラムへ送って探索・自動追尾させ、使用前の自己試験に合格すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "モード RDR PASSIVE（RDR COOP は未使用）、SPEC 33 の指令 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-17'> LRQ_CT_17 {
            subject s : Parts::Part;
            doc /* MCC は Ku帯の放射でペイロード・EVA 乗員・ISS を守るため地上指令でベータ角のマスクと EVA 防護域を設定し、アンテナの格納中に ISS の構造を放射する場合も電界を ISS の被曝限度（125 V/m）未満に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ISS の被曝限度 125 V/m"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-18'> LRQ_CT_18 {
            subject s : Parts::Part;
            doc /* SM が使えるときはサイトインビューの旗がなければ SM ソフトウェアがアップリンクの指令を自動で遮断し、SM も暗号化も使えないときは乗員がパネルC3 の UPLINK スイッチで遮断できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "遮断 自動（SM）／手動（パネルC3 UPLINK）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-19'> LRQ_CT_19 {
            subject s : Parts::Part;
            doc /* S帯 PM 系は系統2の LRU を飛行全体で指令により選び、機上のスイッチは系統1の構成のまま、バックアップの系統1を OMRSD に従って連続 24 ± 4 時間運用して点検し、上昇中に飛行を打ち切る通信の故障はなく S帯 PM の音声を主に UHF をバックアップに構成すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "バックアップ系統 連続 24 ± 4 h"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-20'> LRQ_CT_20 {
            subject s : Parts::Part;
            doc /* Ku帯系は、ペイロードがペイロードベイドアの包絡域を超えない限り 21° の beta plus mask で運用してベイの各部が 10 V/m を超えないようにし、ベータマスクやオービタ構造で守られる区域の EVA では AOS 中は制約なしに運用し LOS 中は待機にして EMU の仕様の 20 V/m 未満を保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ベイ 10 V/m、EMU 20 V/m、beta plus mask 21°"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-21'> LRQ_CT_21 {
            subject s : Parts::Part;
            doc /* 記録器は地上から管理して各 LOS の間に1台が記録しているようにし、運用データと音声（192 kbps）は活動の多い期間か乗員の音声記録が要るときに記録し、それ以外はデータ（128 kbps）だけを記録すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "音声つき 192 kbps、データのみ 128 kbps"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-22'> LRQ_CT_22 {
            subject s : Parts::Part;
            doc /* PCMMU を1台失うと MDF、2台失うと次の PLS とし、ACCU を1台失ったときは ACCU バイパス IFM の半分（J4）を行って飛行を続けて失敗すれば次の PLS とし、全音声を失ったときはバイパスコネクタを付けて Ku帯の OCA で通話を試み、なお得られなければ翌日の PLS へ軌道離脱すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PCMMU 1台失 MDF／2台失 次の PLS、全音声喪失 翌日 PLS"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-CT-23'> LRQ_CT_23 {
            subject s : Parts::Part;
            doc /* S帯 PM 系は電力モードを SGLS・STDN LO・STDN HI・TDRS DATA・TDRS RNG から選び、高電力モード（TDRS と STDN HI）では受信を前置増幅器（約 25 dB）、送信を電力増幅器（約 17 dB）に通し、低電力モードでは増幅しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "モード 5、前置増幅器 約 25 dB、電力増幅器 約 17 dB、PA の予熱 140 s"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-24'> LRQ_CT_24 {
            subject s : Parts::Part;
            doc /* S帯 PM 系の前方胴体の4基のクワッドアンテナ（各2ビームで実質8）は、GPC 制御（PASS SM または BFS）、アップリンクコマンド、パネルC3 の手動のいずれでも選択できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "クワッド 4基・約 90° おき、ビーム 8"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-25'> LRQ_CT_25 {
            subject s : Parts::Part;
            doc /* NSP は2台を冗長にして NSP 1 は FF 1、NSP 2 は FF 3 へ地上コマンドを渡し、COMSEC 装置と組んで SELECT/RCV モードでアップリンク（音声とコマンド）だけを暗号化すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "NSP 2、COMSEC SELECT/RCV はアップリンクのみ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-26'> LRQ_CT_26 {
            subject s : Parts::Part;
            doc /* S帯 FM 系の FM 信号処理器は一度に1台を使い、前方胴体の上下に約 180° 離れた2基のヘミアンテナは GPC モードで SM 計算機が STDN または AFSCF の地上局への見通しから選び、送信機の出力が変動しても冗長な側へ切り替えてダウンリンクを続けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ヘミアンテナ 2基（約 180° 離れる）、送信機 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-27'> LRQ_CT_27 {
            subject s : Parts::Part;
            doc /* UHF SPLX は XMIT FREQ スイッチで 259.7 MHz（主）か 296.8 MHz（副）を選び、SPLX PWR AMPL スイッチの ON で 10 W、OFF で電力増幅回路を迂回して 0.25 W で送信し、UHF MODE の SPLX + G RCV と G T/R で 243.0 MHz のガードの受信・送受信を行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "10 W／0.25 W、ガード 243.0 MHz"; phases = "PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-28'> LRQ_CT_28 {
            subject s : Parts::Part;
            doc /* UHF（ATC）系は上昇・再突入で S帯 PM のバックアップとして STDN 地上局経由で MCC と通信し、SPLX・GUARD モードでは UHF 送受信機が ACCU の A/A ループの音声を前方胴体下面の外部アンテナで送受信し、送信と受信を同時にはしないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "同時の送受信は不可、A/A ループ"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-29'> LRQ_CT_29 {
            subject s : Parts::Part;
            doc /* SSOR は主・予備の2組の無線機（EVA STRING で1・2を選び1が主）を持ち、低電力 19.1 dBm（約 80 mW）と高電力 31.6 dBm（約 1.44 W）の送信電力のうち高電力は FCC の限度を超えるので使わず、主アンテナをエアロックトラスの右舷側に、EVA 点検用のアンテナをエアロック内に置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "低電力 19.1 dBm（約 80 mW）、高電力 31.6 dBm（約 1.44 W）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CT-30'> LRQ_CT_30 {
            subject s : Parts::Part;
            doc /* SSOR の状態（主・予備、フレーム同期、処理器の状態）は SM COMMUNICATIONS（SPEC 76）と SM OIU（SPEC 212）に示し、EVA の通信構成ではパネルR14 の MNA UHF EVA と MNC UHF EVA の遮断器の閉を確かめて送信周波数 259.7/414.2、EVA STRING 1、UHF MODE EVA にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "259.7/414.2 MHz、EVA STRING 1、遮断器 2"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'LRQ-CW'> LRQ_CW {
        doc /* 警報系（C/W）の L3 要求（SSD-FD-CW-001 の下位の機能ブロック） */
        requirement <'LRQ-CW-01'> LRQ_CW_01 {
            subject s : Parts::Part;
            doc /* 主C/W の120入力は、95を変換器から直接、5をGPCの入出力処理装置から、18をGPCソフトウェアからMDM経由で受け、2を予備とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "直接 95・IOP 5・ソフトウェア 18・予備 2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-02'> LRQ_CW_02 {
            subject s : Parts::Part;
            doc /* 主C/W の入力はアナログ（0〜5 V DC）または2値の離散信号とし、すべての入力で上限・下限の検出ができること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "アナログ 0〜5 V DC・離散 2 値"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-03'> LRQ_CW_03 {
            subject s : Parts::Part;
            doc /* 基準の限界値はアビオニクスベイ3のC/W電子装置に格納し、パネル R13U で変更できるが、電源を失って回復したときは元の基準値に戻ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "格納：アビオニクスベイ3（変更後も電源回復で元の値）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-04'> LRQ_CW_04 {
            subject s : Parts::Part;
            doc /* 電源Aを失ったときは、BACKUP C/W ALARM 灯を除く F7 の全灯を点灯し、R13U の状態灯・機能と主C/W の限界監視を失ったことを乗員に示すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電源 A 喪失 → F7 全灯点灯（BACKUP を除く）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-05'> LRQ_CW_05 {
            subject s : Parts::Part;
            doc /* 客室圧力の変化率が −0.08 psi/min を超える減圧を ΔP/Δt センサが検知したときは、4つの MASTER ALARM 灯を点灯し、クラクソンを鳴らすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "−0.08 psi/min（負の値のときだけ）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-06'> LRQ_CW_06 {
            subject s : Parts::Part;
            doc /* 煙検知器が煙濃度 2,000（±200）μg/m3 を5秒以上検知したときは、SMOKE DETECTION 灯・MASTER ALARM 灯・サイレンをハードウェアで作動させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2,000（±200）μg/m3・5 秒以上"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-07'> LRQ_CW_07 {
            subject s : Parts::Part;
            doc /* 各トーン発生器の2番目の出力はクラクソンとサイレンの警報だけに使い、専用のスピーカへ直接送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "トーン発生器 2（A：フライトデッキのスピーカ・B：中甲板のスピーカ）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-08'> LRQ_CW_08 {
            subject s : Parts::Part;
            doc /* MASTER ALARM 押しボタン表示器はパネル F2・F4・A7・MO52J に置き、どれか1つを押すと SM トーンを含むすべてのトーンをリセットすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "押しボタン 4（F2・F4・A7・MO52J）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-09'> LRQ_CW_09 {
            subject s : Parts::Part;
            doc /* F7 の表示灯は駆動するすべてのパラメータが限界内に戻るか抑止されるまで消えず、上昇モードでは通常モードと同じ動作でコマンダの MASTER ALARM 灯だけ点灯しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "BACKUP C/W ALARM 灯は MSG RESET で消灯"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-10'> LRQ_CW_10 {
            subject s : Parts::Part;
            doc /* GPC は前方またはペイロードの MDM を経て C/W 系 A・B の両方に信号を送り、MASTER ALARM 灯・B/U C&W 灯・C/W トーンを作動させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "C/W 系 A・B の両方へ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-11'> LRQ_CW_11 {
            subject s : Parts::Part;
            doc /* GNC ソフトウェアは限界外れを検知したとき GNC 警報インタフェース（GAX）へ信号を送り、警報の要否は GAX が決めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "GAX 経由"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-12'> LRQ_CW_12 {
            subject s : Parts::Part;
            doc /* BFS が待機（STANDBY）のときはペイロードバスを制御しないため、表示灯とトーンは出さず、DPS 表示の故障メッセージと状態表示だけにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "STANDBY：灯・トーンなし"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-13'> LRQ_CW_13 {
            subject s : Parts::Part;
            doc /* 故障メッセージは ACK キーを押すまで点滅し、MSG RESET キーで消すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ACK 点滅解除・MSG RESET 消去"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-14'> LRQ_CW_14 {
            subject s : Parts::Part;
            doc /* 同じ故障メッセージが4.8秒以内に重ねて出るときは、FDA の論理が新しいメッセージを抑止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "4.8 秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-15'> LRQ_CW_15 {
            subject s : Parts::Part;
            doc /* アラートのパラメータが限界を外れたときは、F7 の青い SM ALERT 灯を点灯し、主C/W へ離散信号を送ってアラートトーンを鳴らし、故障メッセージを出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SM ALERT 灯（青）・離散信号 1"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-16'> LRQ_CW_16 {
            subject s : Parts::Part;
            doc /* SM アラートトーンは、搭載計算機の入力で C/W 電子装置が発生する所定の長さの連続音とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "連続音（所定の長さ）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-17'> LRQ_CW_17 {
            subject s : Parts::Part;
            doc /* 水ループ2のポンプ出口圧は、ポンプが動いているときは故障したポンプを検出する限界を、止まっているときは漏れを検出する限界を使い分けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "限界 2 組（ポンプ運転中・停止中）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-18'> LRQ_CW_18 {
            subject s : Parts::Part;
            doc /* R13U を使わないときは、PARAMETER SELECT のつまみを119より大きい値にしておくこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "119 より大きい値"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-CW-19'> LRQ_CW_19 {
            subject s : Parts::Part;
            doc /* 飛行段階で変わる限界と監視するパラメータの一覧は、乗員が R13U の PARAM ENABLE/INHIBIT と LIMIT のスイッチで現在の構成に合わせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スイッチ 2 種（PARAM ENABLE/INHIBIT・LIMIT）"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-20'> LRQ_CW_20 {
            subject s : Parts::Part;
            doc /* SPEC 60 SM TABLE MAINT で、PASS SM のバックアップ C/W・アラートの各パラメータの上下限、ノイズフィルタ値、有効/抑止を読み、変えられること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "上下限・ノイズフィルタ値・有効/抑止の3項目"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-21'> LRQ_CW_21 {
            subject s : Parts::Part;
            doc /* 地上は、飛行中のテーブル保守ブロック更新（TMBU）のアップリンクで、アラートやバックアップ C/W の限界を乗員の操作なしに変えられること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "TMBU（地上のアップリンク）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-CW-22'> LRQ_CW_22 {
            subject s : Parts::Part;
            doc /* 電源AとBの両方を失ったときは主・バックアップ・SMのすべてのC&W灯とトーンを失ったとみなし、電源Aの喪失や自己試験の失敗のときは主C&Wを失ったとみなすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電源 A・B 両方喪失 → 全 C&W 喪失"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
    }
    package <'LRQ-DPS'> LRQ_DPS {
        doc /* データ処理系（DPS）の L3 要求（SSD-FD-DPS-001 の下位の機能ブロック） */
        requirement <'LRQ-DPS-01'> LRQ_DPS_01 {
            subject s : Parts::Part;
            doc /* 各 EIU は1基の SSME の制御器とだけ通信し、受けた4つのエンジン指令から CIA 3 の選択論理で3つの出力指令を作ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "入力指令 4 → 出力指令 3（EIU ごとに 1 エンジン）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-02'> LRQ_DPS_02 {
            subject s : Parts::Part;
            doc /* 各 EIU はパネル O17 の EIU スイッチで個別に給電し、EIU が電力を失ったときは対応するエンジンがスロットル・停止・ダンプの指令を受けられず GPC とも通信できない状態として扱うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "EIU 3（スイッチはパネル O17）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-03'> LRQ_DPS_03 {
            subject s : Parts::Part;
            doc /* 打上げデータバス2本は主に地上点検と打上げ段階に使い、打上げ前に LF1 または LA1 の MDM で入出力エラーを検出したときは乗員の操作なしに自動でポートを切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "打上げデータバス 2、MDM は LF1・LM1・LA1 ほか"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-04'> LRQ_DPS_04 {
            subject s : Parts::Part;
            doc /* 軌道投入後はパネル O17 のスイッチで4台の ATVC、3台の EIU、2台の MEC の電源をすべて切れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ATVC 4・EIU 3・MEC 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-05'> LRQ_DPS_05 {
            subject s : Parts::Part;
            doc /* 上昇・再突入では冗長セットの4台の GNC GPC に別々の飛行重要ストリングを割り当て、各 GPC は自分のストリングの指令元となり、他の GPC は聴取して4本すべてのデータの写しを得ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "GPC 4 ↔ ストリング 4"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-06'> LRQ_DPS_06 {
            subject s : Parts::Part;
            doc /* FC MDM は通常ポート1で動作し、ポート1が故障したときは乗員がポート2を選び、ストリングの2台の MDM を同時に切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ポート 2（ストリングの MDM 2 台を同時に切替）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-07'> LRQ_DPS_07 {
            subject s : Parts::Part;
            doc /* ペイロードバス2本は5台の GPC をペイロード MDM 2台と PDI に結び、計装/PCMMU バス5本は各 GPC に1本ずつ専用とし、計算機間通信バス5本で PASS の GPC どうしが入出力エラー・故障メッセージ・キーボード入力・MTU の時刻・状態ベクトルなどを交換すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ペイロードバス 2・計装/PCMMU バス 5・ICC バス 5"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-08'> LRQ_DPS_08 {
            subject s : Parts::Part;
            doc /* FF・PL・LF・LM MDM は前方アビオニクスベイの水冷却ループで、LA・FA MDM は後部アビオニクスベイのフレオン冷却ループのコールドプレートで冷やし、MDM は約38.5 lb、消費電力80 W未満に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "13×11×7 in、約38.5 lb、80 W 未満"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-09'> LRQ_DPS_09 {
            subject s : Parts::Part;
            doc /* 応用ソフトウェアは GNC・SM・ペイロードの3つの主機能に分け、冗長セットの同期は GNC だけで行い、SM とペイロードは一度に1台の GPC だけが処理すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "同期は GNC のみ・SM は単独の GPC"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-10'> LRQ_DPS_10 {
            subject s : Parts::Part;
            doc /* 上昇用のメモリ構成1は OPS 1（上昇）と OPS 6（RTLS）を併せ持ち、RTLS で新しいソフトウェアをロードする時間を要しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "メモリ構成 CONFIG 0 ＋ 8 種"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-11'> LRQ_DPS_11 {
            subject s : Parts::Part;
            doc /* SM GPC の故障に備えて選んだデータを定期的に MMU にチェックポイントとして書き、書込みに失敗したときは再試行できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MMU 2（チェックポイントは SM GPC のデータ）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-12'> LRQ_DPS_12 {
            subject s : Parts::Part;
            doc /* エンゲージ前の BFS は飛行重要バスで PASS の要求と応答を聴取して PASS に同期し、2本以上のストリングを聴取している間は状態ベクトルなど機体を飛ばすための情報を保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "聴取するストリング 2 本以上（PASS の追従）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-13'> LRQ_DPS_13 {
            subject s : Parts::Part;
            doc /* GPC 1・4 をアビオニクスベイ1、GPC 2・5 をベイ2、GPC 3 をベイ3に置き、各ベイのファン2台のうち同時に使うのは1台として強制空冷すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ファン 2 台/ベイ（同時に使うのは 1 台）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-14'> LRQ_DPS_14 {
            subject s : Parts::Part;
            doc /* アビオニクスベイのファンが2台とも故障した場合でも、GPC が過熱して動作が保証されなくなるまでに 25 分（14.7 psi）または 17 分（10.2 psi）の余裕を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "25 分（14.7 psi）／17 分（10.2 psi）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-15'> LRQ_DPS_15 {
            subject s : Parts::Part;
            doc /* 主記憶は揮発性とし、GPC の電源断の間は電池パックが内容を保持し、記憶容量256 kフルワードのうち通常は下位128 kフルワードをソフトウェアの処理に使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "256 kフルワード（通常使用 128 kフルワード）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-16'> LRQ_DPS_16 {
            subject s : Parts::Part;
            doc /* IOP は BCE で24本のデータバスにつながり、機体各系への指令を整形・送信して、応答データを受信・検証すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "データバス 24"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-17'> LRQ_DPS_17 {
            subject s : Parts::Part;
            doc /* 各 GPC の OUTPUT スイッチで飛行重要バスへの出力をハードウェアで禁止でき、PASS の GNC GPC は NORMAL、BFS の GPC 5 は BACKUP、軌道上の SM GPC は TERMINATE とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "BACKUP・NORMAL・TERMINATE の3位置"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-18'> LRQ_DPS_18 {
            subject s : Parts::Part;
            doc /* PASS が同時に駆動できるのは4台の IDP のうち3台までとし、どの GPC からも駆動されない IDP は DPS 表示に大きな「X」を出して POLL FAIL メッセージを表示すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "同時駆動 IDP 3（4台中）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-19'> LRQ_DPS_19 {
            subject s : Parts::Part;
            doc /* IDP は MEDS と GPC のインタフェースとして、自身と他の MEDS の取替え品の状態を BITE と自己試験で監視し、異常を乗員に BITE 故障メッセージで知らせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "IDP 4（BITE と自己試験）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-20'> LRQ_DPS_20 {
            subject s : Parts::Part;
            doc /* ADC は MPS・HYD・APU・OMS・SPI のアナログデータを12ビットのデジタルデータに変換して IDP に渡し、ADC 1A・1B は MPS・OMS・SPI、ADC 2A・2B は APU・HYD の信号を受け持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ADC 4、12ビット"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-21'> LRQ_DPS_21 {
            subject s : Parts::Part;
            doc /* IDP ごとの MAJ FUNC スイッチ（GNC・SM・PL）の位置を GPC に知らせ、その主機能の応用ソフトウェアを持つ GPC がそのIDPのDPS表示を駆動すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MAJ FUNC 3位置（GNC・SM・PL）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-22'> LRQ_DPS_22 {
            subject s : Parts::Part;
            doc /* GPC は毎秒、MTU の累算器1の時刻と自身の内部時刻を照合し、差が許容外なら他の累算器、さらに番号の最も小さい GPC の時刻を試すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "照合 毎秒 1 回（累算器 1→他の累算器→最小番号の GPC）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-23'> LRQ_DPS_23 {
            subject s : Parts::Part;
            doc /* PASS の GPC は MTU から受け取る MET を使わず、現在の GMT とリフトオフ時刻から MET を計算すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MET ＝ GMT − リフトオフ時刻"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-24'> LRQ_DPS_24 {
            subject s : Parts::Part;
            doc /* パネル O6 の MASTER TIMING UNIT スイッチが AUTO のとき、MTU は一方の発振器の時刻信号が許容外になれば自動で他方に切り替え、通常は発振器2を使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "発振器 2（通常は発振器 2）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-25'> LRQ_DPS_25 {
            subject s : Parts::Part;
            doc /* MTU は運用前に12時間の暖機をし、運用温度に達するまで所定の精度と安定度が得られないものとして扱うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "暖機 12 時間"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-26'> LRQ_DPS_26 {
            subject s : Parts::Part;
            doc /* 軌道上の公称の GPC 構成は、GPC 1 を GNC 2、GPC 2 を GNC 2（電力節約のためフリーズドライ可）、GPC 3 を GNC 2 または GNC 3 のフリーズドライ、GPC 4 を SM 2、GPC 5 を BFS とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "G2 ×2＋G3FD ×1・SM 1・BFS 1"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-27'> LRQ_DPS_27 {
            subject s : Parts::Part;
            doc /* 一時故障の GPC は、軌道上では安全上重要な運用を除いて冗長な GNC GPC に使い、電力節約のためフリーズドライの GNC 2 にもでき、再突入に使うときはストリング4を割り当てること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "再突入はストリング 4"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-28'> LRQ_DPS_28 {
            subject s : Parts::Part;
            doc /* 軌道上で単独の GPC が故障した場合は、動作中の PASS GPC のソフトウェアダンプと故障 GPC のハードウェアダンプを取り、IPL で回復を試み、回復した GPC を冗長な G2・G2FD・SM のいずれかにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ダンプ 2 種（ソフトウェア・ハードウェア HISAM）＋IPL"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-DPS-29'> LRQ_DPS_29 {
            subject s : Parts::Part;
            doc /* 2台の GNC GPC での軌道上の公称のストリング割当ては、ストリング1・3 を一方、ストリング2・4 を他方とし、一方の GNC GPC が故障しても連続して機体を制御できるようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ストリング 4（1・3 と 2・4）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-DPS-30'> LRQ_DPS_30 {
            subject s : Parts::Part;
            doc /* アビオニクスベイの冷却を失った場合は、G2・SM・BFS の機能を冷却の効くベイの GPC へ移し、冷却のないベイの GPC には G3FD・G2FD を置いて HALT にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "冷却のないベイの GPC は HALT"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
    }
    package <'LRQ-EPS'> LRQ_EPS {
        doc /* 電力系（EPS）の L3 要求（SSD-FD-EPS-001 の下位の機能ブロック） */
        requirement <'LRQ-EPS-01'> LRQ_EPS_01 {
            subject s : Parts::Part;
            doc /* PRSD は反応剤を、水素は 200〜243 psia、酸素は 803〜883 psia でマニフォールドへ供給し、各タンクの出口に 12 ミクロンのフィルタを置いて燃料電池の性能を損なう汚染物を除くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "H2 200〜243 psia・O2 803〜883 psia・フィルタ 12 ミクロン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-02'> LRQ_EPS_02 {
            subject s : Parts::Part;
            doc /* タンクのリリーフ弁は酸素 1,005 psia・水素 302 psia で過剰圧力を船外へ逃がし、タンク 1・2 のマニフォールドリリーフ弁は水素 290 psi・酸素 975 psi で閉じ込められた反応剤をタンクへ戻すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "タンク O2 1,005 psia・H2 302 psia、マニフォールド H2 290 psi・O2 975 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-03'> LRQ_EPS_03 {
            subject s : Parts::Part;
            doc /* 酸素タンクの各ヒータは、2 系統の電流レベル検出器が出入りの電流差 0.9 A 以上を 5 ミリ秒検出したらヒータの電力を遮断し、ヒータ素子温度が 344°F 以上で O2 HEATER TEMP 警告灯を点灯すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電流差 ≧ 0.9 A（5 ms）で遮断・ヒータ 344°F 以上で警告灯"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-04'> LRQ_EPS_04 {
            subject s : Parts::Part;
            doc /* マニフォールド弁 1・2 のどちらか一方を閉じても 3 基すべての燃料電池へ反応剤を供給でき、マニフォールドの水素圧力が 150 psia、酸素圧力が 200 psia を下回ったときは SM ALERT を出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SM ALERT：H2 < 150 psia・O2 < 200 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-05'> LRQ_EPS_05 {
            subject s : Parts::Part;
            doc /* 各燃料電池はサブスタックごとの差電圧（ΔV）をセル性能モニタ（CPM）で監視し、打上げ前の基線から 50 mV を超えて上がったときは母線タイを行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ΔV > 基線 + 50 mV で母線タイ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-06'> LRQ_EPS_06 {
            subject s : Parts::Part;
            doc /* 燃料電池の起動では START スイッチを COOLANT PUMP ΔP の表示が灰色（約 3〜4 秒）になるまで保持し、READY FOR LOAD は 30 秒タイマの満了とスタック出口温度 187°F 超のうち遅い方で示し、起動から運用可能まで 25 分を超えないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "READY FOR LOAD：30 秒かつ 187°F 超・運用可能まで 25 分以内"; phases = "PH-1（打上げ前）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-07'> LRQ_EPS_07 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水は水素ポンプ／水分離器で取り出して飲料水タンク A へ送り、満杯になれば B、C、D の順に送り、タンクが満杯または配管が閉塞したときは水リリーフ弁が 45 psia で開いて船外へ排出し、逆止弁でタンクから水が戻らないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "水リリーフ弁 45 psia・送水順 A→B→C・D"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-08'> LRQ_EPS_08 {
            subject s : Parts::Part;
            doc /* 各燃料電池の電子制御ユニット（ECU）は必須母線から FC CNTLR スイッチ経由で給電し、冷却材ポンプ・水素ポンプ／水分離器・pH センサへの三相交流（パネル L4 の回路遮断器 9 個）を制御し、必須母線の電圧が 25 V DC 未満になったときは SM ALERT を出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "必須母線 < 25 V DC で SM ALERT・回路遮断器 9 個"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-09'> LRQ_EPS_09 {
            subject s : Parts::Part;
            doc /* 生成水に電解質（水酸化カリウム）が混入したときは、水素ポンプ／水分離器の下流の pH センサで検知し、SM ALERT と SM SPEC 69 の表示で乗員に知らせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "pH センサ：燃料電池ごと・タンク入口に共通 1"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-10'> LRQ_EPS_10 {
            subject s : Parts::Part;
            doc /* 直流配電は、主母線（MN A・B・C）3 本、必須母線（ESS 1BC・2CA・3AB）3 本、制御母線 9 本（CNTL AB・BC・CA の各 1〜3）、地上作業専用の予備母線（PREFLT 1・2）2 本を備え、複数の主母線から受電する負荷の受電は冗長のためだけとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主 3・必須 3・制御 9・予備 2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-11'> LRQ_EPS_11 {
            subject s : Parts::Part;
            doc /* 制御母線は操作スイッチへの制御電力だけを供給して系の負荷には給電せず、制御母線電圧が 24.5 V DC 未満のときは SM ALERT を出し、CONTROL BUS PWR スイッチの RESET で RPC の電源を切ってトリップした RPC を復帰できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "制御母線 < 24.5 V DC で SM ALERT"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-12'> LRQ_EPS_12 {
            subject s : Parts::Part;
            doc /* 主ペイロード母線（PRI PL）は FC 3・MN B・MN C の 3 つの電源から給電でき、後部ペイロード母線 B・C は AFT MN B・AFT MN C スイッチで給電し、補助ペイロード母線 A・B は主母線 A・B から給電すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PRI PL の電源 3・後部ペイロード母線 2・補助ペイロード母線 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-13'> LRQ_EPS_13 {
            subject s : Parts::Part;
            doc /* 主母線の母線タイは、結ぶ 2 本に対応する MN BUS TIE スイッチを両方 ON にして成立させ、両母線の電圧が一致することで確認でき、上昇中に行っても主エンジン制御器に影響しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MN BUS TIE スイッチ 2 個を ON・電圧一致で確認"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-14'> LRQ_EPS_14 {
            subject s : Parts::Part;
            doc /* 交流母線センサは、母線電圧が 123〜127 V AC を 50〜90 ミリ秒超えたとき過電圧、102〜108 V AC を 6.5〜8.5 ミリ秒下回ったとき不足電圧と判定すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "過電圧 123〜127 V（50〜90 ms）・不足電圧 102〜108 V（6.5〜8.5 ms）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-15'> LRQ_EPS_15 {
            subject s : Parts::Part;
            doc /* 交流母線センサは、いずれかの相電流が 14.5 A を 10〜20 秒、または 17.3〜21.1 A を 4〜6 秒超えたとき過負荷と判定し、AUTO TRIP の位置では AC OVERLOAD 灯を点灯して該当のインバータをその相の母線から切り離すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "14.5 A 10〜20 秒・17.3〜21.1 A 4〜6 秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EPS-16'> LRQ_EPS_16 {
            subject s : Parts::Part;
            doc /* 不足電圧ではインバータを切り離さずに警告灯だけを点灯し、切り離されたインバータの復旧は、AC BUS SNSR スイッチを OFF にして切離し信号を解除してから INV/AC BUS スイッチを ON にして行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "不足電圧は警報のみ・復旧は SNSR OFF の後に INV/AC BUS ON"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-17'> LRQ_EPS_17 {
            subject s : Parts::Part;
            doc /* 10 台のモータ制御組立のうち、前方 3 台（FMC 1〜3）と後方 3 台（AMC 1〜3）は MN A/AC 1・MN B/AC 2・MN C/AC 3 に対応させ、中部 4 台（MMC 1〜4）は 2 本の主直流母線と対応する 2 本の交流母線を持ち、ベントドア・ペイロードベイドアとラッチ・ラジエータの展開機構などの交流モータ負荷へ給電すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "モータ制御組立 10（前方 3・中部 4・後方 3）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-EPS-18'> LRQ_EPS_18 {
            subject s : Parts::Part;
            doc /* AC 1・2・3 は INV PWR 1・2・3 スイッチでそれぞれ MN A・MN B・MN C から給電し、各交流母線の 3 台のインバータがすべて運転し、すべてが母線へ接続されて初めてタルクバックが ON を示し、交流を確立した後は誤操作を防ぐため AC CONTR 回路遮断器を開くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "AC 1←MN A・AC 2←MN B・AC 3←MN C"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
    }
    package <'LRQ-EVA'> LRQ_EVA {
        doc /* 船外活動（EVA）の L3 要求（SSD-FD-EVA-001 の下位の機能ブロック） */
        requirement <'LRQ-EVA-01'> LRQ_EVA_01 {
            subject s : Parts::Part;
            doc /* 主調圧器の点検の自動漏れ点検で LEAKAGE HI（ΔP 0.3 psi 超）の表示が出たときは FAILED LEAK CHECK（14.7/10.2 PSI）のキューカードに移り、エアロックの電源を入れるときは EMU を電池電源にしておくこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "LEAKAGE HI は ΔP 0.3 psi 超"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-02'> LRQ_EVA_02 {
            subject s : Parts::Part;
            doc /* ファン・ポンプの点検では O2 ACT を OFF にしたままのファンの運転を約2分以内にとどめて LCVG に冷却水が流れ水温が下がることを確かめ、SOP の点検では第1段の調圧を 600 psig 未満に保てなければ計画・計画外 EVA で EMU を NO-GO とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ファン運転 約2分以内、SOP 第1段 600 psig 未満"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-03'> LRQ_EVA_03 {
            subject s : Parts::Part;
            doc /* SAFER の点検では自己試験で24個のスラスタの作動音を数え、GN2・電力の残量と電池電圧・製造番号を MCC に報告し、電源を入れている時間を約1分にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スラスタ 24、電源 約1分"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-04'> LRQ_EVA_04 {
            subject s : Parts::Part;
            doc /* ペイロードベイの投光器は EMU の熱的な限界を超えるため、EVA 乗員が近くで作業する場合はミッドデッキ準備の時点で消し（冷えるまで最長6時間）、無線ビデオのヒータは EVA の4時間以上前に入れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "冷却 最長6時間、ヒータ 4時間以上前"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-05'> LRQ_EVA_05 {
            subject s : Parts::Part;
            doc /* 着用後の窒素パージはキャビン圧 10.2 psi で8分、14.7 psi で12分とし、10.2 psi キャビンの EMU 内の最終前呼吸は 10.2 psi に 24 時間いたとき 40 分、12 時間いたとき 75 分とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "パージ 8分（10.2 psi）・12分（14.7 psi）、最終前呼吸 40分・75分"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-06'> LRQ_EVA_06 {
            subject s : Parts::Part;
            doc /* 減圧は前呼吸の完了後に始め、減圧中は服圧計が 5.5 を超えないことを見て超えたら減圧を止めて MCC に確かめ、エアロックの減圧率は 10.2 psia から 5 psia で 2.8 psia/min であること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "服圧 5.5 以下、減圧率 2.8 psia/min（10.2→5 psia）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-07'> LRQ_EVA_07 {
            subject s : Parts::Part;
            doc /* 再与圧は内側ハッチの均圧弁でエアロックを 5.0 psi まで戻して止め、2分間の ΔP が 0.1 psi 以下であることでエアロックの気密を確かめてから乗員室の圧力に合わせ、SCU をつないで昇華器の水を切って2分経つまで外部ハッチを閉じないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "5.0 psi で停止、2分で ΔP 0.1 psi 以下、水切り 2分"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-08'> LRQ_EVA_08 {
            subject s : Parts::Part;
            doc /* エアロックを乗員室の気密を保ったまま減圧・再与圧できないときと、いずれかのハッチの漏れによるエアロック圧の低下が 0.2 psi/min を超えるときは EVA 能力の喪失とし、EMU の正圧逃し弁が閉じたまま開かない場合は EMU を EVA に NO-GO とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "漏れ 0.2 psi/min 超で喪失"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-09'> LRQ_EVA_09 {
            subject s : Parts::Part;
            doc /* エアロックの減圧は外部ハッチの右舷・左舷どちらの均圧弁でも行え、片方の弁（または減圧弁）が使えなくなっても残る均圧弁で減圧を完了できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "均圧弁 2基（右舷・左舷）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-10'> LRQ_EVA_10 {
            subject s : Parts::Part;
            doc /* EVA 中は外部エアロックの上部・後部ハッチの保温カバーを閉じておき、開いた場合は乗員が次の都合のよい機会に戻って閉じ、エアロック内の水配管を真空中で凍らせないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "保温カバー 閉"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-11'> LRQ_EVA_11 {
            subject s : Parts::Part;
            doc /* 非常時の EVA は、放熱器アクチュエータ、ペイロードベイドア、隔壁ラッチ、中心線ラッチ、エアロックハッチ、RMS、隔壁カメラ、Ku帯アンテナ、ET 扉の故障を想定し、故障ごとの処置（切り離し、ウインチ、ラッチ工具、手動操作など）を表に定めて、どのミッションでも練習できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "想定する故障 9 種"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-12'> LRQ_EVA_12 {
            subject s : Parts::Part;
            doc /* 着用中に電池を交換しても EMU が計算する TIME EV・TIME LF はリセットされないので、リセットにはコールドリスタートを使い、これはファンと O2 を止めるためエアロック圧 8.0 psi 以上でだけ、できるだけ速く行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "コールドリスタート ≥ 8.0 psi"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-13'> LRQ_EVA_13 {
            subject s : Parts::Part;
            doc /* EMU の化学汚染が確かめられた場合は進入から脱衣までに 1 時間 55 分（ISS のスラスタによる汚染は 2 時間 10 分）、疑いの場合は 55 分（同 1 時間 10 分）の EMU 消耗品を残すよう EVA 作業を後回しにし、SCU につないだベークアウトではヘルメットのパージ弁を開けて LiOH を消費しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "確認 1 h 55 min（2 h 10 min）、疑い 55 min（1 h 10 min）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-14'> LRQ_EVA_14 {
            subject s : Parts::Part;
            doc /* SAFER は EMU の PLSS の下に付ける単一系統の推進式背負い装置とし、24個の GN2 スラスタで6自由度の制御を行い、電池は最低 13 分もたせて、ISS などの大きな構造物にドッキング中で離れた EVA 乗員が自力で戻れるようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スラスタ 24、電池 最低 13 分、6自由度"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-15'> LRQ_EVA_15 {
            subject s : Parts::Part;
            doc /* 減圧症治療アダプタ（BTA）による処置は、カフ2・3では 6 psid から始めて症状が消えなければ 8 psid に上げ、カフ4では 8 psid から始め、処置の時間と圧力の変更は地上の医師が決めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "カフ2・3：6→8 psid、カフ4：8 psid"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-16'> LRQ_EVA_16 {
            subject s : Parts::Part;
            doc /* EMU の O2 の再充填は O2 圧が約 850 になれば完了とし、水の充填は給水タンク B から満充填に約 15 分かけて水圧が 8〜15 psi で約 30 秒安定すれば完了とし、外部エアロックの給水配管の温度が両区域で 95°F 以下のときに行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "満充填 約 15 分、給水タンク B の約 6% を使う、配管 95°F 以下"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-17'> LRQ_EVA_17 {
            subject s : Parts::Part;
            doc /* SCU を通した EMU 内での電池の充電は確認に 15 分以上、満充電に最長 20 時間をかけ、EMU 電池の交換はエアロックの電源を切り EMU の電源スイッチを SCU 位置にして行い、電池を壁にぶつけてアルミ製のカバーを傷めないよう扱うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "確認 15 分以上、満充電 最長 20 時間"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-18'> LRQ_EVA_18 {
            subject s : Parts::Part;
            doc /* LiOH カートリッジの交換では、10.2 psi キャビンを使った場合にカートリッジのキャップの前後に差圧が生じうるため、ポートを顔に向けず、キャップを外したポートの露出時間を短くすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "10.2 psi キャビンでキャップ前後に差圧"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-19'> LRQ_EVA_19 {
            subject s : Parts::Part;
            doc /* EVA 後の帰還準備では EMU O2 隔離弁と SCU の O2 弁・給水弁を閉じ、着陸前に EMU TV とヘルメットライトを外して EMU を着陸構成で拘束袋に固定し、帰還前日の EVA は単一シフトの飛行では就寝 7 時間前までにエアロックへの進入を終える場合に限ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "帰還準備 45 分（SAFER なし）、進入は就寝 7 時間前まで"; phases = "PH-5（EVA）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-20'> LRQ_EVA_20 {
            subject s : Parts::Part;
            doc /* 計画 EVA ではマスク前呼吸を EV1・EV2 が 45 分を終えるまで減圧を始めず、キャビンが 10.2 psia に達して 1 時間の前呼吸を終えるまで終えず、前呼吸の選択肢 1・2 は初期前呼吸 60 分、10.2 psia で 12 または 24 時間、EMU 内 75 または 40 分とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "初期前呼吸 60 分、EMU 内 75 分または 40 分"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-21'> LRQ_EVA_21 {
            subject s : Parts::Part;
            doc /* 10.2 psia の運用ではキャビン圧を 10.0〜10.4 psia、PPO2 を 2.55〜2.80 psia（指示値）に手動で保ち、減圧中はキャビンの O2 濃度を 28.5% 未満にし、14.7 CAB REG INLET SYS 1 から N2 を流す間は WCS を使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "キャビン圧 10.0〜10.4 psia、PPO2 2.55〜2.80 psia、O2 28.5% 未満"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-22'> LRQ_EVA_22 {
            subject s : Parts::Part;
            doc /* EMU の搭載替え（30 分）ではエアロックの EMU とミッドデッキの EMU を入れ替え、搭載した EMU を点検する前にその SCU の O2 弁を閉じ、エアロックの空気循環系のブースタファンにつなぐダクトは、減圧のために乗員室とエアロックの間のハッチを閉じる前に外すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "搭載替え 30 分"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-23'> LRQ_EVA_23 {
            subject s : Parts::Part;
            doc /* 減圧症のカフ区分は 1〜4 とし、カフ1は EVA を続けて EVA 後の PMC で報告し、カフ2は作業場所を片付けて TERMINATE EVA、カフ3は患者をエアロックへ補助しペイロードベイを安全にして TERMINATE EVA、カフ4は ABORT EVA として患者を単独で再与圧し、手首のバンドに付けたカフチェックリストを使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "カフ区分 1〜4、カフチェックリスト 約 4×5 インチ"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-24'> LRQ_EVA_24 {
            subject s : Parts::Part;
            doc /* 計画外 EVA は最初の 24 時間には行わず、MET 72 時間より前に行うには飛行医の健康評価とフライトディレクタの承認を要し、帰還日には EVA を行わず、EVA の終わりにはペイロードベイを軌道離脱のために次の EVA が要らない構成にしておくこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "最初の 24 時間 不可、72 時間より前は承認"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-25'> LRQ_EVA_25 {
            subject s : Parts::Part;
            doc /* 工具は使用中は常に乗員にテザーでつなぎ、安全テザーはエアロックを出る前に腰テザーに付けて EVA 中は常に付けておき、浮遊した工具がオービタに当たって損傷させないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "工具テザー 常時、安全テザー 腰テザー"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-26'> LRQ_EVA_26 {
            subject s : Parts::Part;
            doc /* EVA の付属品（LCVG、EMU の電池とライト、工具など）はミッドデッキ床の Volume H（MD23R）に収納し、エアロック収納袋の中身は減圧前に取り出し、EVA バッグ（カメラ・保温ミトン・工具キャディなど）は EVA 中もエアロックに置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "Volume H（MD23R）"; phases = "PH-1（打上げ前）・PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-EVA-27'> LRQ_EVA_27 {
            subject s : Parts::Part;
            doc /* 左舷の軽量工具収納組立（TSA）の扉は4個のラッチのうち3個が掛かっていれば帰還に支障なく、ラッチが回らないときは PGT で EVA 用の手動オーバーライドボルトを緩めて開け、扉を閉じるときは固定タブの矢印どうしを合わせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ラッチ 4個中 3個で可"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-28'> LRQ_EVA_28 {
            subject s : Parts::Part;
            doc /* PGT は使用前に電池を入れて校正し、トリガで電池電圧と両方向の回転を確かめてモード・トルク・回転数の設定を設定表と比べ、標準設定はトルク A1〜A7 が 2.5〜9.2 ft-lb、B1〜B7 が 12.0〜25.5 ft-lb、回転数 10・30・60 rpm、異常表示では再校正を試みて回復しなければラチェットモードで使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "A1〜A7 2.5〜9.2 ft-lb、B1〜B7 12.0〜25.5 ft-lb、10・30・60 rpm"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-EVA-29'> LRQ_EVA_29 {
            subject s : Parts::Part;
            doc /* ミニワークステーション（MWS）は EMU の前面に付けて工具を収めて作業場所で乗員をテザーで拘束し、RMS に付けた足部拘束具（MFR）・PAD は RMS が EMU に過大な荷重をかけない範囲でだけ使い、衝撃に最も弱い PLSS は直径 2 インチの球・2 ft/s で 400 lb の衝撃までとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PLSS 衝撃 400 lb（直径 2 インチの球・2 ft/s）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
    }
    package <'LRQ-GNC'> LRQ_GNC {
        doc /* 誘導・航法・制御（GN&C）の L3 要求（SSD-FD-GNC-001 の下位の機能ブロック） */
        requirement <'LRQ-GNC-01'> LRQ_GNC_01 {
            subject s : Parts::Part;
            doc /* 各舵面の4つのフライトコントロールチャネルのうち、サーボ弁の指令を出す ASA 4台を後部アビオニクスベイ4・5・6に置き、各 ASA が各舵面の1つの弁だけを指令し、その電源スイッチをパネル O14・O15・O16 に置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ASA 4台（ベイ4・5・6）、電源スイッチ O14・O15・O16"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-02'> LRQ_GNC_02 {
            subject s : Parts::Part;
            doc /* 各エレボンのアクチュエータに3系統の油圧系から圧力を供給し、主系統の圧力が約 1,200〜1,500 psia に下がると、切替弁で第1待機系統、さらに第2待機系統へ切り替えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "切替しきい値 約 1,200〜1,500 psia（主系統）、待機系統 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-GNC-03'> LRQ_GNC_03 {
            subject s : Parts::Part;
            doc /* パネル C3 の4個の FCS CHANNEL スイッチ（OVERRIDE・AUTO・OFF）を、高い二次差圧による自動の切り離しの制御に使い、OFF ではそのチャネルを全アクチュエータでバイパスし、切り離しは FCS CHANNEL 警報灯と「FCS CH X」のメッセージで知らせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スイッチ 4個×3位置、バイパスは当該チャネルの全アクチュエータ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-04'> LRQ_GNC_04 {
            subject s : Parts::Part;
            doc /* ATVC の4台は、各 FCS チャネルに SSME 用の6つのドライバと SRB 用の4つのドライバを持ち、10基のアクチュエータが4つの ATVC から同じ指令を受け、コールドプレートとフレオン系で冷却されること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ドライバ 6（SSME）＋4（SRB）、アクチュエータ 10、指令の源 4"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-05'> LRQ_GNC_05 {
            subject s : Parts::Part;
            doc /* 上昇以外の段階では RHC の変位がソフトウェアのデテントを超えるとその軸を自動から CSS に移し、上昇中はパネル F2 または F4 の CSS プッシュボタンの操作でだけ CSS に移ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "デテント超過で自動→CSS（上昇はボタン操作のみ）"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-06'> LRQ_GNC_06 {
            subject s : Parts::Part;
            doc /* DDU を CDR・PLT・後部の各ステーションに1台ずつ置き、RHC・THC・SBTC・RPTA に直流と交流の電力を供給し、THC は各軸の正負の方向に1個ずつ計6個の3接点スイッチで軌道上の RCS ジェットの並進を指令すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "DDU 3台、THC スイッチ 6個（3接点）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-07'> LRQ_GNC_07 {
            subject s : Parts::Part;
            doc /* SBTC は上昇中の SSME のスロットルと再突入中のスピードブレーキの2つの機能を持ち、RPTA は滑空中は運用上使わず接地後の滑走で前輪の操向に使い、ボディフラップスイッチ（パネル L2・C3）は主エンジンの熱防護とエレボン変位を減らすピッチトリムのために位置を手動で決めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SBTC 変換器 3、RPTA 変換器 3、ボディフラップスイッチ 2個"; phases = "PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-GNC-08'> LRQ_GNC_08 {
            subject s : Parts::Part;
            doc /* RGA はペイロードベイ床下の後部隔壁に置いてフレオン冷却ループのコールドプレートで冷やし、冗長管理は中間値選択に妥当性限界による故障検出を加え、電源を失った RGA は SMRD で外すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "RGA 4台、故障検出は妥当性限界＋SMRD"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-09'> LRQ_GNC_09 {
            subject s : Parts::Part;
            doc /* 4台の AA はそれぞれ横（Y軸）と垂直（Z軸）の加速度計2個を持ってミッドデッキ前部アビオニクスベイ1・2に置き、SRB RGA は各 SRB に2台で第1段上昇中だけ使い、SRB 分離の2〜3秒前に解除してオービタ RGA のデータに置き換えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "AA 4台（加速度計 各2個）、SRB RGA 各 SRB 2台、解除は SRB 分離の2〜3秒前"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-10'> LRQ_GNC_10 {
            subject s : Parts::Part;
            doc /* OMS TVC DAP は誘導の要求速度を OMS のジンバル指令に変換し、OMS の点火・停止の指令と、OMS エンジンの故障時に姿勢を保つ RCS の指令を生成し、遷移 DAP は OMS-1・OMS-2 の噴射で OMS の TVC と RCS を使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "OMS 噴射 OMS-1・OMS-2"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-11'> LRQ_GNC_11 {
            subject s : Parts::Part;
            doc /* 再突入のロールモードは標準でエルロンを主な舵効とするラップアラウンド DAP とし、後部 RCS の推進薬が 10% 未満の場合か後部のヨージェットを失った場合は No Yaw Jet モードを使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "No Yaw Jet の条件：後部 RCS 推進薬 10% 未満、または後部ヨージェットの喪失"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-12'> LRQ_GNC_12 {
            subject s : Parts::Part;
            doc /* 軌道離脱・再突入では3系統 GPS の機体は選択した GPS のベクトルを 42 秒ごと（17,000 ft 以下は 9 秒ごと）に取り込み、MLS が使えるときは GPS の更新を自動で禁止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "GPS 取込み 42 s（17,000 ft 以下は 9 s）、MLS 使用時は GPS 更新を自動禁止"; phases = "PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-13'> LRQ_GNC_13 {
            subject s : Parts::Part;
            doc /* 第1段の誘導は事前に計画した相対速度に対する姿勢表を使い、MPS のスロットルにも事前に定めたスロットル計画に従って指令を送り、動圧を制限内に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "動圧の制限 620 psf（STS-1 の飛行前の拘束）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-14'> LRQ_GNC_14 {
            subject s : Parts::Part;
            doc /* 再突入の誘導は方位誤差に応じてロール反転を指令し、迎角とバンク角の組合せで抗力を調整して、抗力加速度のプロファイルから外れないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ロール反転は方位誤差に応じて指令"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-15'> LRQ_GNC_15 {
            subject s : Parts::Part;
            doc /* TAEM の誘導はエネルギー対距離のプロファイルに従って HAC を回り、A/L の誘導は外側グライドスロープからプレフレアと最終フレアを経て滑走路中心線へ導き、TAEM から A/L への切り替えを滑らかに行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "TAEM → A/L の切替"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-16'> LRQ_GNC_16 {
            subject s : Parts::Part;
            doc /* IMU はヒータだけに給電する暖機・待機モードと運転モードを持ち、冷えた状態から運転温度に達するまで約8時間、運転指令から慣性基準になるまで約85秒とし、電力節約で切る場合を除いて打上げ前から飛行の終わりまで運転モードのままとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "暖機 約8時間、立上げ 約85秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-17'> LRQ_GNC_17 {
            subject s : Parts::Part;
            doc /* IMU SOP は速度の M50 座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算、ソフトウェア BITE、スタートラッカまたは他の IMU によるずれに基づくトルク指令の計算を行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SOP の機能 5"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-18'> LRQ_GNC_18 {
            subject s : Parts::Part;
            doc /* スタートラッカは −Y 軸と −Z 軸の2台を航法ベースの延長部に置き、冗長管理を持たずに独立して全作業を行い、単独でも同時にも運用でき、ランデブ時は目標の追尾と視線ベクトルの算出にも使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スタートラッカ 2台（−Y・−Z）、冗長管理なし"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-19'> LRQ_GNC_19 {
            subject s : Parts::Part;
            doc /* スタートラッカで得た2つの恒星の視線ベクトルから機体の慣性姿勢を定めて IMU との差のトルク角でジャイロのドリフトを除き、IMU のずれが 1.4° を超える場合は先に HUD で 1.4° 以内に合わせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ずれの限度 1.4°"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-20'> LRQ_GNC_20 {
            subject s : Parts::Part;
            doc /* 再突入では2台以上の TACAN がロックすると TACAN の距離・方位を MLS の捕捉（約 18,000 ft）まで状態ベクトルの更新に使い、中間値選択で故障を検出すると SM ALERT を点灯して GPC の故障メッセージを出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "TACAN 2台以上のロック、MLS 捕捉 約 18,000 ft まで"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-21'> LRQ_GNC_21 {
            subject s : Parts::Part;
            doc /* GPS の選択フィルタは使える受信機が3台なら中間値、2台なら平均、1台ならその1台を選び、1台もなければ最後の有効なデータを伝播し、有効なデータから 18 秒を超えるとそれを航法の更新に使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "有効データの寿命 18 s"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-GNC-22'> LRQ_GNC_22 {
            subject s : Parts::Part;
            doc /* エアデータ系は左プローブの圧力・温度を ADTA 1・3 へ、右プローブを ADTA 2・4 へ導き、各プローブは2台の交流モータで展開し1台でも 30 秒で展開し、ADTA SOP は4台の圧力が一致すれば各プローブの1組を平均してソフトウェアに渡すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "展開 1モータ 30 s、ADTA 1・3／2・4 の組"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-23'> LRQ_GNC_23 {
            subject s : Parts::Part;
            doc /* MLS は着陸滑走路脇の地上局に対する斜距離・方位角・仰角を求め、3台が有効なら中間値を選び、電波高度計 2台は 0〜5,000 ft の高度を測って航法には使わず乗員の監視用にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電波高度計 2台（0〜5,000 ft、監視用）"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-24'> LRQ_GNC_24 {
            subject s : Parts::Part;
            doc /* GNC のパラメータは共通の冗長出力との差が I-load の RM 追従限界を超えると故障とし、冗長出力を持たない LRU（IMU・TACAN・MSBLS など）ではパラメータの喪失を LRU の喪失とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "I-load の RM 追従限界、冗長出力なしの LRU は喪失扱い"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-25'> LRQ_GNC_25 {
            subject s : Parts::Part;
            doc /* 搭載の RM がジレンマを宣言した IMU・TACAN・ADTA・MLS の故障では、地上レーダのデータとの比較で故障した LRU を特定すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "対象 LRU：IMU・TACAN・ADTA・MLS"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-GNC-26'> LRQ_GNC_26 {
            subject s : Parts::Part;
            doc /* GPC の故障による再割当てでは各 GPC に同数の ASA を割り当て、FA MDM または GPC の故障時は対応する FCS チャネルを切り、1つのアクチュエータに良いチャネルが2つだけ残れば両方を OVERRIDE にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "良いチャネルが2つだけなら OVERRIDE"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-GNC-27'> LRQ_GNC_27 {
            subject s : Parts::Part;
            doc /* PASS の RGA・AA・舵面の故障検出・切り離し（FDIR）は最初の故障で終わり、以後は乗員による選択フィルタの管理を要し、BFS の選択フィルタは常に乗員の管理を要すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PASS の FDIR は最初の故障まで"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
    }
    package <'LRQ-MECH'> LRQ_MECH {
        doc /* 機械系（MECH）の L3 要求（SSD-FD-MECH-001 の下位の機能ブロック） */
        requirement <'LRQ-MECH-01'> LRQ_MECH_01 {
            subject s : Parts::Part;
            doc /* 電動アクチュエータ（PDU）は、ET扉のセンタラインラッチを除き、モータの出力軸にトルクリミッタを持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "トルクリミッタ付き（ET扉のセンタラインラッチを除く）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-02'> LRQ_MECH_02 {
            subject s : Parts::Part;
            doc /* モータとリミットスイッチの電力は、パネルMA73CのMCA LOGICスイッチと遮断器で給電されるMCAから供給すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "給電元：MA73C のスイッチと遮断器"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-03'> LRQ_MECH_03 {
            subject s : Parts::Part;
            doc /* モータの入切の指令は、GPC、DPSの項目入力、ハードワイヤのスイッチの3経路のいずれからもMCAへ出せること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "指令の経路 3"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-04'> LRQ_MECH_04 {
            subject s : Parts::Part;
            doc /* 2モータ駆動の機構は、飛行ごとに2モータ時間の限度内で所定の位置まで動いたことを確かめられること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2モータ時間の限度（例：エアデータプローブ 14秒）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-05'> LRQ_MECH_05 {
            subject s : Parts::Part;
            doc /* ドラッグシュートは、火工品で収納部の扉を外し、モータで9 ftのパイロットシュートを出して40 ftの主傘を引き出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "パイロットシュート 9 ft・主傘 40 ft"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-06'> LRQ_MECH_06 {
            subject s : Parts::Part;
            doc /* ドラッグシュートは、主脚接地の後で機首下げ（前脚接地）の前に展開すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "展開 ＞ 主脚接地、＜ 前脚接地"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-07'> LRQ_MECH_07 {
            subject s : Parts::Part;
            doc /* 4つの主輪は、主脚の荷重の検知から約1.9秒後からそれぞれ制動すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "荷重検知から約 1.9秒"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-08'> LRQ_MECH_08 {
            subject s : Parts::Part;
            doc /* 前輪操向アクチュエータは、機長と操縦手のどちらのラダーペダルの電子指令にも応答すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ペダル 2席（機長・操縦手）"; phases = "PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-09'> LRQ_MECH_09 {
            subject s : Parts::Part;
            doc /* 脚の展開の操作は、ARMボタンで展開弁の継電器を準備して火工品の制御器を活性化してから、DNボタンで油圧系1・2の展開弁を開く順にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ARM → DN の2段"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-10'> LRQ_MECH_10 {
            subject s : Parts::Part;
            doc /* 前脚は2枚、各主脚は1枚の扉を持ち、脚を下ろすと扉が自動で開くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前脚扉 2・主脚扉 各1"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-11'> LRQ_MECH_11 {
            subject s : Parts::Part;
            doc /* 油圧系1の圧力が無いときは、脚の展開の指令の1秒後に、各脚のアップロックフックの火工品が自動でフックを外すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "指令の1秒後"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-12'> LRQ_MECH_12 {
            subject s : Parts::Part;
            doc /* 脚は地上作業でだけ格納でき、飛行中には引き込めないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "飛行中の格納は不可"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-13'> LRQ_MECH_13 {
            subject s : Parts::Part;
            doc /* 緩衝支柱は、前脚の接地の沈下率が設計要求の11.0 ft/sec以下となるように着陸の衝撃を和らげること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前脚の沈下率 ≦ 11.0 ft/sec"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-14'> LRQ_MECH_14 {
            subject s : Parts::Part;
            doc /* MMACSのGo/No-Go基準は、PLBD駆動モータを扉あたり2基、ラッチ駆動モータをギャングあたり2基として扱うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "PLBD 2基／扉・ラッチ 2基／ギャング"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-15'> LRQ_MECH_15 {
            subject s : Parts::Part;
            doc /* ベント扉・PLBD・放熱器・ET扉・ペイロード保持ラッチの駆動は、駆動時間が1モータの時間を超えたときに故障とみなすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "判定：駆動時間 ＞ 1モータの時間"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-16'> LRQ_MECH_16 {
            subject s : Parts::Part;
            doc /* 軌道上ではベント扉を通常すべて開けておき、扉1・2の閉の冗長を失ったときは反対側の扉に開の冗長があれば閉じること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "通常：全扉開"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-17'> LRQ_MECH_17 {
            subject s : Parts::Part;
            doc /* ET扉の閉の項目入力は、手動の閉操作が成功せず、センタラインラッチの収納と両扉のラッチの準備が確かめられたとき、またはAOAのときだけ使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "使用の条件 2"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-18'> LRQ_MECH_18 {
            subject s : Parts::Part;
            doc /* 各ペイロードベイドアは、伸縮継手でつないだ5つの区分から成り、長さ約60 ftとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "5区分・長さ約 60 ft"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-19'> LRQ_MECH_19 {
            subject s : Parts::Part;
            doc /* 各ペイロードベイドアは、固定の5つと熱膨張を許す浮動の8つの計13のヒンジで中胴につなぐこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ヒンジ 13（固定5・浮動8）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-20'> LRQ_MECH_20 {
            subject s : Parts::Part;
            doc /* 各ペイロードベイドアは、2つの3相交流モータを持つ1つの電動アクチュエータで開閉し、開閉を2モータ時間内に完了すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電動アクチュエータ 1基／扉・モータ 2"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-21'> LRQ_MECH_21 {
            subject s : Parts::Part;
            doc /* センタラインのラッチは4つずつ4組に分け、各組を1つの電動アクチュエータで駆動し、1組の開閉を2モータで20秒とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "4組・各組 4ラッチ・20秒（2モータ）"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-22'> LRQ_MECH_22 {
            subject s : Parts::Part;
            doc /* 右舷のドアはセンタラインのフックを、左舷のドアはローラを持ち、フックが回ってローラをつかむこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "右舷：フック／左舷：ローラ"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-23'> LRQ_MECH_23 {
            subject s : Parts::Part;
            doc /* 各ベント扉は圧力シールと熱シールを持ち、それぞれの電動アクチュエータで内側へ動くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "扉ごとに専用アクチュエータ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MECH-24'> LRQ_MECH_24 {
            subject s : Parts::Part;
            doc /* ベント扉の一部は、地上のパージのための中間位置を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "中間位置：一部の扉"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-25'> LRQ_MECH_25 {
            subject s : Parts::Part;
            doc /* ベント扉は、秒読みのT-28秒にRSLSが開のシーケンスを呼び、T-4秒までに全扉が開いていること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "全扉開：T-4秒まで（呼び出し T-28秒）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-26'> LRQ_MECH_26 {
            subject s : Parts::Part;
            doc /* ET分離後のET扉の閉鎖は、各機構の動作時間の合計が2モータ運転で36秒以内となること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "36秒以内（2モータ）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MECH-27'> LRQ_MECH_27 {
            subject s : Parts::Part;
            doc /* ET扉は、上昇中に扉を開いたまま保つセンタラインラッチと、閉じた扉を固定するアップロックラッチを持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ラッチ 2種（センタライン・アップロック）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'LRQ-MPS'> LRQ_MPS {
        doc /* 主推進系（MPS）の L3 要求（SSD-FD-MPS-001 の下位の機能ブロック） */
        requirement <'LRQ-MPS-01'> LRQ_MPS_01 {
            subject s : Parts::Part;
            doc /* 制御器は低圧燃料ターボポンプ側の冷却材出口マニホールドに取り付けた与圧・温度調節された電子機器として2台のDCUを持ち、通常はDCU Aが制御してDCU Bは作動しても制御せず、エンジン制御要素への指示を20ミリ秒ごとに更新すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "DCU 2（A制御・B待機）、更新 毎秒50回（20 ms）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-02'> LRQ_MPS_02 {
            subject s : Parts::Part;
            doc /* 制御器は交流の3相すべてと100 Vrms以上の電圧がある間だけ動作し、500ミリ秒を超えて100 Vrmsを下回るとチャネルをAからBへ切り替えるかエンジンを停止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "100 Vrms以上・3相、500 ms 超で切替または停止"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-03'> LRQ_MPS_03 {
            subject s : Parts::Part;
            doc /* 制御器がLH2流量計または主燃焼室圧力センサのデータを失ったときは弁を最後の指令位置に保持する電気的ロックアップとし、エンジンが推力を変えられなくても停止の指令には従わせ、一次・二次のデータをともに失えばデータ経路故障としてMPS DATA C(L,R)メッセージとパネルF7の黄色のライトで知らせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ロックアップ後も停止指令に従う"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-04'> LRQ_MPS_04 {
            subject s : Parts::Part;
            doc /* 制御器は高圧燃料ターボポンプ吐出温度1,860°R超、高圧酸化剤ターボポンプ吐出温度1,660°R超または720°R未満、中間シールパージ圧159 psia未満などのレッドラインを超えたとき、リミットが有効なら自動でエンジンを停止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "1,860°R・1,660°R・720°R・159 psia"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-05'> LRQ_MPS_05 {
            subject s : Parts::Part;
            doc /* LO2・LH2それぞれに直径8インチの外側・内側の充填排出弁を直列に置き、打上げ前の充填ではパネルR4のPROPELLANT FILL/DRAINスイッチをGNDにして打上げ処理システムが弁を制御し、ETへのLH2の予加圧は14回未満に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "弁 8 in×直列2（LO2・LH2）、LH2予加圧 13回以内"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-06'> LRQ_MPS_06 {
            subject s : Parts::Part;
            doc /* MECOの10秒後にLH2バックアップダンプ弁を2分間開き、LH2マニホールドの圧力で供給ライン逃がし弁が作動しないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MECO+10秒・2分間"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-07'> LRQ_MPS_07 {
            subject s : Parts::Part;
            doc /* MPSダンプは完全に自動でMECOの2分後に始め、MECO+20秒以降は乗員がMPS PRPLT DUMP SEQUENCEスイッチで手動でも始められ、LH2マニホールド圧が60 psiを超えたらMECO+2分より前に自動で始め、LO2ダンプは約9〜11 fpsの軌道速度変化を与えて90秒間続くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "手動開始 MECO+20秒以降、60 psi 超で早期開始、LO2ダンプ 90秒・9〜11 fps"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-08'> LRQ_MPS_08 {
            subject s : Parts::Part;
            doc /* OMS 2燃焼後のMM 106への移行時にLH2系の2回目の真空不活性化（約3分）を行い、真空不活性化の後も内側充填排出弁を開いたままとして弁間の圧力上昇を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2回目の真空不活性化 約3分"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-09'> LRQ_MPS_09 {
            subject s : Parts::Part;
            doc /* RTLSのダンプはMM 602で始め、LO2は自己沸騰で、LH2はRTLSマニホールド加圧弁を通るヘリウムで2分間押し出して排出し、再突入ではVREL 5,300 fpsでマニホールド加圧弁を開いて汚染物の侵入を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "RTLSダンプ MM 602、LH2押し出し 2分、再突入 VREL 5,300 fps"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-10'> LRQ_MPS_10 {
            subject s : Parts::Part;
            doc /* ヘリウムは4.7 ft3のタンク7個と17.3 ft3のタンク3個に貯え、打上げ前に4,100〜4,500 psiに充填し、打上げ前の期間に系が満足に働くことを確かめること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "10タンク、充填 4,100〜4,500 psi"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-11'> LRQ_MPS_11 {
            subject s : Parts::Part;
            doc /* 空圧系統の調圧器は冗長にせず715〜770 psigに調圧し、その調圧器が故障または漏れたときは左エンジン系統とのクロスオーバ弁で左エンジンの調圧したヘリウムを空圧分配系へ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "空圧調圧 715〜770 psig（冗長なし）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-12'> LRQ_MPS_12 {
            subject s : Parts::Part;
            doc /* 上昇中は4つのヘリウム系統を独立に動作させ、ダンプ・パージや漏れのときだけ、各エンジン系統の2個の相互接続弁（IN OPENとOUT OPEN、逆止弁で一方向）で他の系統からヘリウムを引き込むこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "相互接続弁 2個/エンジン系統"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-13'> LRQ_MPS_13 {
            subject s : Parts::Part;
            doc /* 再突入でVREL 5,300 fpsになるとヘリウムブローダウン弁を開き、後部区画・OMSポッド・LH2アンビリカル空洞を650秒間連続してパージし、この弁は手動で操作できないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "VREL 5,300 fps、650秒連続パージ"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-14'> LRQ_MPS_14 {
            subject s : Parts::Part;
            doc /* MAIN ENGINE LIMIT SHUT DNスイッチがAUTOのとき1基の停止直後に残りのエンジンのリミットが抑止されるので、1基停止でBFSを結合していなければ乗員はスイッチをENABLE、AUTOの順に操作してリミットを再び有効にし、2基停止ならMECOまで抑止したままとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "1基停止：ENABLE→AUTO、2基停止：MECOまで抑止"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-15'> LRQ_MPS_15 {
            subject s : Parts::Part;
            doc /* 油圧・電気的ロックアップで最低出力より上に固着したエンジンは、3基運転のノミナル/ATOではMECO付近のLO2 NPSPを守るためVI = 23K fpsで停止押しボタンにより手動停止し、2基運転・RTLS・TALでは処置を求めず、データ経路故障の背後でエンジンが停止したとMCCが確かめたときは停止押しボタンを押してプリバルブを閉じること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "VI = 23K fps（3基運転）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-16'> LRQ_MPS_16 {
            subject s : Parts::Part;
            doc /* エンジン停止・制御器の冗長性の喪失・1チャネルの全レッドラインセンサの停止投票のときは、交流母線センサの単一故障で制御器への交流の1相を失わないよう、パネルR1の3個のAC BUS SNSRスイッチをOFFにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "AC BUS SNSR スイッチ 3個"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-17'> LRQ_MPS_17 {
            subject s : Parts::Part;
            doc /* MPSエンジン系統の大きなヘリウム漏れは、隔離でエンジンが停止しない限り隔離手順を行い、補う相互接続はタンク圧1,150 psiaか両調圧器の圧力が715（679）psia未満のとき行い、3基運転中は空圧系統だけを相互接続し、主母線・APC・ALCの故障で脚Aの遮断弁が閉じているときは脚Bを閉じないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "タンク圧 1,150 psia、調圧器 715（679）psia 未満で相互接続"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-18'> LRQ_MPS_18 {
            subject s : Parts::Part;
            doc /* ETのLH2アレージの漏れまたは3個のGH2流量制御弁の閉故障で低LH2 NPSPとなった場合は、最も早く複数エンジンの停止に耐える能力を得られるTALかACLSへのアボートを行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "TAL または ACLS へのアボート"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-19'> LRQ_MPS_19 {
            subject s : Parts::Part;
            doc /* MPSの弁は、大きな荷重のかかる液体推進薬の流れには空圧弁を、気体推進薬のような軽い荷重には電気弁を使い、17インチ切離し弁・プリバルブ・充填排出弁・LH2の4インチ再循環切離し弁には開閉ともに空圧を要するタイプ1の弁を使い、プリバルブはパネルR4のスイッチ（OPEN・GPC・CLOSE）でも操作できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "タイプ1（双安定）、プリバルブスイッチ 3位置"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-20'> LRQ_MPS_20 {
            subject s : Parts::Part;
            doc /* LH2アレージ圧の流量制御弁の制御系は単一系統とし、圧力センサ1・2・3をそれぞれ中央・左・右のSSMEの電子回路だけにつなぎ、流量制御弁1個の閉故障ではアレージ圧が28.0 psiaを下回らず、28 psiaを下回ったらパネルR2のMPS LH2 ULL PRESSスイッチをOPENにして3個の弁を全開にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "28.0 psia、流量制御弁 1個閉故障まで許容"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-21'> LRQ_MPS_21 {
            subject s : Parts::Part;
            doc /* 上昇中のLO2タンクのアレージ圧は固定オリフィスで保ち、30 psigを超えたらLO2タンクのベント・逃がし弁から逃がすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "逃がし開始 30 psig"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-22'> LRQ_MPS_22 {
            subject s : Parts::Part;
            doc /* 推進薬の低液位による停止では、LO2の枯渇は供給配管マニホールドの4個のセンサで、LH2の枯渇はLH2タンク底部の4個のセンサで検知し、いずれかの系で4個のうち2個が乾きを示したらGPCが制御器にMECOを指令すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "4個中2個で MECO 指令"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-23'> LRQ_MPS_23 {
            subject s : Parts::Part;
            doc /* 推力は定格の1%刻みで調整でき、104%で海面393,800 lb・真空488,800 lb、109%で海面417,300 lb・真空513,250 lbを出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "104%：393,800 / 488,800 lb、109%：417,300 / 513,250 lb"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-24'> LRQ_MPS_24 {
            subject s : Parts::Part;
            doc /* 低圧燃料ターボポンプは液体水素を30 psiaから276 psiaへ、高圧燃料ターボポンプは276 psiaから6,515 psiaへ、低圧酸化剤ターボポンプは液体酸素を100 psiaから422 psiaへ、高圧酸化剤ターボポンプの主ポンプは422 psiaから4,300 psiaへ昇圧すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "30→276→6,515 psia（LH2）、100→422→4,300 psia（LO2）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-25'> LRQ_MPS_25 {
            subject s : Parts::Part;
            doc /* 各エンジンの5個の推進薬弁（酸化剤プリバーナ酸化剤弁・燃料プリバーナ酸化剤弁・主酸化剤弁・主燃料弁・冷却材制御弁）は油圧で駆動して制御器の電気信号で制御し、バックアップとしてエンジン用ヘリウムで全閉できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "推進薬弁 5個/エンジン"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-26'> LRQ_MPS_26 {
            subject s : Parts::Part;
            doc /* 高圧酸化剤ターボポンプのタービンとポンプの間の空洞を運転中ずっとエンジン用ヘリウムでパージし、空洞のヘリウム圧が運転限界を下回ったら制御器がエンジンを自動で停止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "中間シールパージ圧 159 psia 未満で停止"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-27'> LRQ_MPS_27 {
            subject s : Parts::Part;
            doc /* 各エンジンの油圧作動弁は同じ系統の油圧を受け（中央エンジンは1系統、左は2系統、右は3系統）、サーボアクチュエータの主/副の系統は中央がピッチ1/3・ヨー3/1、左がピッチ2/1・ヨー1/2、右がピッチ3/2・ヨー2/3とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "中央 1系統、左 2系統、右 3系統"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-28'> LRQ_MPS_28 {
            subject s : Parts::Part;
            doc /* T-3分25秒にジンバル試験を始めて各ジンバル・アクチュエータを所定の伸縮の動作で動かし、すべて正常ならT-2分15秒にエンジンを所定の位置へ首振りさせて点火まで保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "T-3:25 試験開始、T-2:15 所定位置"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-MPS-29'> LRQ_MPS_29 {
            subject s : Parts::Part;
            doc /* 制御器が5個の油圧作動エンジン弁のいずれかを想定外の位置に検知したときは、5個の弁すべてを最後の位置で油圧的に隔離する油圧ロックアップとし、その後の停止はエンジンのヘリウムによる空圧で行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "油圧ロックアップ、停止は空圧"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-MPS-30'> LRQ_MPS_30 {
            subject s : Parts::Part;
            doc /* 軌道上ではHYDRAULICS MPS/TVC ISOL VLV SYS 1〜3スイッチをCLOSEにして遮断弁下流の油圧漏れから守り、MPSダンプの後に再突入の格納位置へ首振りさせ、軌道離脱準備でATVCに再び通電してずれたノズルをその位置へ戻すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "軌道上 CLOSE、離脱準備でATVC再通電"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'LRQ-OMS'> LRQ_OMS {
        doc /* 軌道制御系（OMS）の L3 要求（SSD-FD-OMS-001 の下位の機能ブロック） */
        requirement <'LRQ-OMS-01'> LRQ_OMS_01 {
            subject s : Parts::Part;
            doc /* OMSエンジンは噴射の最短時間を2秒とし、通常運用での噴射間の最小休止時間を240秒、安全にエンジンを運転できる最低高度を70,000 ftとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "最短噴射 2 s、休止 240 s、最低高度 70,000 ft"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-02'> LRQ_OMS_02 {
            subject s : Parts::Part;
            doc /* 噴射していないときのエンジン入口圧は推進薬タンク圧（通常254 psi）に一致し、噴射中は燃料が約220〜235 psi、酸化剤が約200〜206 psiに下がって推進薬流量の間接的な指標となり、燃料噴射器温度は噴射中約218°Fとなること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "入口圧 燃料 220〜235 psi・酸化剤 200〜206 psi、噴射器温度 218°F"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-03'> LRQ_OMS_03 {
            subject s : Parts::Part;
            doc /* GN2系は調圧器でタンク圧（最大3,000 psig）を作動圧315〜360 psigに下げ、19立方インチのアキュムレータで圧力隔離弁が閉じていても少なくとも1回はボール弁を作動させ、ボール弁は2個の制御弁が両方働かないと開かないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "3,000 psig → 315〜360 psig、アキュムレータ 19 in3"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-04'> LRQ_OMS_04 {
            subject s : Parts::Part;
            doc /* 冗長管理ソフトウェアは、PASSでは速度比較（MECO後のみ）と燃焼室圧比較、BFSでは燃焼室圧比較だけでエンジンの故障を検知し、燃料噴射器温度が260°Fを超えて燃料入口圧がエンジンの製造番号（101〜117）ごとの上限以上ならボール弁より下流の燃料の閉塞としてエンジンを喪失とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "260°F、製造番号 101〜117 ごとの入口圧上限"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-05'> LRQ_OMS_05 {
            subject s : Parts::Part;
            doc /* ヘリウム圧力弁A・Bは並列の冗長な経路としてばねで閉・ソレノイドで開とし、噴射以外は閉じておき、スイッチがGPC位置なら自動の噴射シーケンスが噴射の開始時に開いて終了時に閉じ、手動で開くときはAとBの間に2秒置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "AとBの間隔 2秒"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-06'> LRQ_OMS_06 {
            subject s : Parts::Part;
            doc /* 各調圧器組立は一次の調圧器が故障したときに二次の調圧器（259〜269 psig）が圧力制御を続け、調圧器の下流の逃がし弁は286 psigで開いて280 psigで再着座し、破裂板は303〜313 psigで破れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "二次 259〜269 psig、逃がし弁 286/280 psig、破裂板 303〜313 psig"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-07'> LRQ_OMS_07 {
            subject s : Parts::Part;
            doc /* ヘリウムタンクの使用圧力範囲は4,800〜390 psiaとし、推進薬の残量が最大ブローダウン（OMSタンクで約39%）を下回ったら残ったヘリウムの圧力だけでタンクの推進薬を使い切れるようにし、タンク圧が390 psia未満になるかすべての加圧経路が閉じたらヘリウムタンクを喪失とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "4,800〜390 psia、最大ブローダウン 約39%"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-08'> LRQ_OMS_08 {
            subject s : Parts::Part;
            doc /* 酸化剤タンクへの加圧配管だけに並列の蒸気隔離弁を置いて酸化剤の蒸気が燃料系へ移ってハイパーゴリック反応を起こすのを防ぎ、4個の独立した逆止弁を直並列につないだ逆止弁組立の入口にフィルタを置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "蒸気隔離弁 酸化剤側のみ・逆止弁 4個（直並列）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-09'> LRQ_OMS_09 {
            subject s : Parts::Part;
            doc /* 6 fps未満の速度変化にはRCSを使い、6 fpsを超える場合はエンジンの寿命の点で始動回数を減らすため1基の噴射を好み、大きな速度変化や重要な噴射には2基を使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "境界 6 fps"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-10'> LRQ_OMS_10 {
            subject s : Parts::Part;
            doc /* OMS噴射はMM 104・105・202・302でのみ行い、乗員はMNVR表示で2基・1基・RCSを選んでPEG 4またはPEG 7の目標を入れ、点火の15秒前に点滅するEXECの表示でEXECキーを押して点火を許可すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "MM 104・105・202・302、点火15秒前にEXEC"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-11'> LRQ_OMS_11 {
            subject s : Parts::Part;
            doc /* 軌道上のOMS噴射の準備ではOMS/MPS表示でヘリウムタンク圧が1,500 psiaを超え、N2タンク圧が564 psiaを超えることを確かめ、限界内でなければ噴射しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "He 1,500 psia 超、N2 564 psia 超"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-12'> LRQ_OMS_12 {
            subject s : Parts::Part;
            doc /* 噴射シーケンスは選ばれたエンジンに応じてヘリウム蒸気隔離弁とGN2制御弁を開く指令を出し、エンジン故障フラグを監視して乗員がOMS ENGスイッチをOFFにして故障を確認すると停止指令を出し、OMS噴射中は44.8 kbpsの高速GNCダウンリストを必要とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ダウンリスト 44.8 kbps"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-13'> LRQ_OMS_13 {
            subject s : Parts::Part;
            doc /* 後室量が11%未満でスクリーンが露出しているときは、ヘリウムの吸込みを防ぐためOMSエンジンを再始動する前にRCSの+Xジェット2基で15秒の沈降噴射を行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "後室量 11% 未満、+Xジェット 2基・15秒"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-14'> LRQ_OMS_14 {
            subject s : Parts::Part;
            doc /* 打上げ時の搭載量はポッドあたり燃料2,038〜4,711.5 lb・酸化剤3,362〜7,743.5 lbの範囲とし、TAEMインタフェースでは酸化剤1,707 lb・燃料1,032 lb未満（搭載量の約22%）とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "燃料 2,038〜4,711.5 lb、酸化剤 3,362〜7,743.5 lb/ポッド"; phases = "PH-1（打上げ前）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-15'> LRQ_OMS_15 {
            subject s : Parts::Part;
            doc /* トータライザは噴射開始から14.8秒間は既定の流量で表示量を減じてからプローブの出力で更新し、残量が5%に下がると低レベル信号を出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "既定流量 14.8 s、低レベル 5%"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-16'> LRQ_OMS_16 {
            subject s : Parts::Part;
            doc /* タンク隔離弁A・Bは各ポッドで推進薬タンクとエンジン・クロスフィード弁の間に並列に置き、三相（2相でも可）の交流モータで駆動し、弁が指令位置に達したら電動機制御組立の論理が弁アクチュエータの電力を切り、スイッチ上のトークバックが開・過渡・閉を示すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "交流モータ 三相（2相可）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-17'> LRQ_OMS_17 {
            subject s : Parts::Part;
            doc /* 各OMS/RCSポッドは8つのヒータ区域に分け、各区域のA・B素子を素子ごとのサーモスタットで55〜75°Fに制御し、後部胴体のクロスフィード配管は11のヒータ区域に分けて各区域をA・B系統が並列に加熱し、過温度サーモスタットを各回路に置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ポッド 8区域・クロスフィード 11区域、55〜75°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-18'> LRQ_OMS_18 {
            subject s : Parts::Part;
            doc /* 上昇中（OPS 1）はポッドのヒータをすべて切り、突入のための着席時からもポッドのヒータは切っておき、クロスフィード配管のヒータは軌道上では一方（AかB）を入れ、突入のための着席時からA・B両方を入れて突入中も入れたままにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ポッド：上昇・突入で切、配管：軌道上は片系・突入はA・B両方"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-19'> LRQ_OMS_19 {
            subject s : Parts::Part;
            doc /* ポッドのヒータはA・Bのパッチが重ねて貼られているため同時には使わず、クロスフィード配管のヒータはA・B回路を1本に巻いているため両方を同時に入れられるようにし、故障処置手順（MAL 11.3）はSPEC 89やBFS THERMAL表示の限界外れに対してA14でもう一方のヒータ・サーモスタット回路へ切り替えて切り分けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ポッド：A/B同時使用禁止、配管：同時可"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-20'> LRQ_OMS_20 {
            subject s : Parts::Part;
            doc /* ポッド内とクロスフィード配管のサーモスタット付近の温度センサの値は、SM SPEC 89 PRPLT THERMAL表示とテレメトリに送り、ヒータの性能を冗長な計測で監視すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SM SPEC 89（POD・OMS CRSFD）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-21'> LRQ_OMS_21 {
            subject s : Parts::Part;
            doc /* OMSエンジンは1基で噴射するときは推力を重心に向け、2基のときは両方の推力をX軸に平行にし、1基の噴射ではRCSによるロール制御を行うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "1基：重心指向、2基：X軸に平行"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-22'> LRQ_OMS_22 {
            subject s : Parts::Part;
            doc /* ジンバルアクチュエータは一次の電子制御器からのGPCの位置指令で一次の直流電動機を動かし、一次が働かないときは二次の電子制御器の指令で二次の電動機を動かし、乗員はMNVR表示の項目入力（PRI 28・29、SEC 30・31）で一次・二次の電動機を選ぶか切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "一次 PRI 28・29、二次 SEC 30・31"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-23'> LRQ_OMS_23 {
            subject s : Parts::Part;
            doc /* ジンバルの故障検知は動くべきときに閾値以上動いたかを確かめ、故障の計数がIロード値の4に達するとアクチュエータを故障と宣言し、乗員がMNVR表示の項目入力で二次のアクチュエータ電子回路を選べること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "故障計数 4（Iロード）"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-24'> LRQ_OMS_24 {
            subject s : Parts::Part;
            doc /* 上昇中の高動圧域でTVCの動きが2つの情報源で確認された場合は、エンジンベルが空力で損傷したおそれがあるため、アボートの推進薬投棄を含むすべての用途でそのエンジンを故障とし、OMS ENGスイッチを直ちにOFFにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2つの情報源で確認"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-25'> LRQ_OMS_25 {
            subject s : Parts::Part;
            doc /* OMS－RCSインタコネクトは、RCSタンク隔離弁を閉じてRCSクロスフィード弁を開いた後にOMSクロスフィード弁の1個（B弁）を開き、非供給側のOMSクロスフィード弁を閉じたままにする順序で組み、OMSとRCSのタンクが直接つながらないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "順序：RCSタンク隔離弁閉→RCSクロスフィード弁開→OMSクロスフィード弁B開"; phases = "PH-3（軌道）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-26'> LRQ_OMS_26 {
            subject s : Parts::Part;
            doc /* RCSタンクはOMSエンジンが必要とする流量を支えられないので後部RCSからOMSへ推進薬を送らず、クロスフィード配管の圧力変換器は計測誤差（34 psia）が大きいため、軌道上ではRCSマニホールドの圧力でクロスフィード配管の状態を確かめてからタンクから再加圧し、酸化剤49 psia・燃料35 psia未満なら配管を故障とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "誤差 34 psia、故障判定 酸化剤 49 psia・燃料 35 psia 未満"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-27'> LRQ_OMS_27 {
            subject s : Parts::Part;
            doc /* OMS－RCSインタコネクトは上昇アボート（正の+X沈降力がある場合）、OMS噴射中、軌道上の運用に限って認め、加速度や推進薬量が制約を外れる突入の段階では認めないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "上昇アボート・OMS噴射中・軌道上に限る"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-OMS-28'> LRQ_OMS_28 {
            subject s : Parts::Part;
            doc /* 軌道上のインタコネクトはORBITAL DAPでFREEを選んでからパネルO7で後部RCSタンク隔離弁を閉じてRCSクロスフィード弁を開き、O8で供給側のOMSクロスフィード弁Bを開いて、SPEC 23のOMS PRESS ENAで計量を始め、インタコネクト中のOMS推進薬の使用量をRCSジェットの噴射時間の積分で求めて左右の累計を保持すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "計量：噴射時間の積分、SPEC 23 OMS PRESS ENA"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-OMS-29'> LRQ_OMS_29 {
            subject s : Parts::Part;
            doc /* 推進薬が故障したときの混合クロスフィード（OMS SSR-1）ではメモリの読み書きでタンク隔離弁とクロスフィード弁の指令を設定して使えるタンクを反対側のエンジンにつなぎ、OMSタンクを自動で再加圧するソフトウェアはOMSやRCSの漏れに推進薬を送り続けるため通常は使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "OMS SSR-1（メモリ書込み）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
    }
    package <'LRQ-PLS'> LRQ_PLS {
        doc /* ペイロード支援（PLS）の L3 要求（SSD-FD-PLS-001 の下位の機能ブロック） */
        requirement <'LRQ-PLS-01'> LRQ_PLS_01 {
            subject s : Parts::Part;
            doc /* アームの各関節の駆動部は、肩・肘・手首の6関節に同一の可逆ブラシレス直流モータを使い、26個のヒータ（最大 525 W、28 V DC）を主母線 A 系と主母線 B 系の2系統に分け、1系統だけで温度を保てること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ヒータ 26個・最大 525 W・2系統（1系統で足りる）、関節ヒータは 14°F で入り 43°F で切れる"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-02'> LRQ_PLS_02 {
            subject s : Parts::Part;
            doc /* 肩のブレースは、打上げの荷重から肩ピッチの歯車列を守り、軌道上で肩ブレース解除スイッチ（パネル A8U）により解除でき、解除後は軌道上で再ラッチできないが再突入と着陸の前に再ラッチしなくてよいこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "解除スイッチは RELEASE 表示がグレーになってから 2秒保持"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-03'> LRQ_PLS_03 {
            subject s : Parts::Part;
            doc /* 上腕・下腕のブームは、剛性の基準を満たす薄肉の円管で、関節ハウジングと電子部のハウジングとともにアームを成し、アームの重量 905 lb・系全体 994 lb・直径 15 in に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "アーム 905 lb、系全体 994 lb、直径 15 in"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-04'> LRQ_PLS_04 {
            subject s : Parts::Part;
            doc /* 関節のブレーキは、乗員の BRAKES スイッチ（パネル A8U）で入切でき、MCIU は SPA の特定の故障を検知したとき自動でブレーキをかけ、アームを使わない間はブレーキを入れた状態で駐機できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "BRAKES スイッチ 1、自動ブレーキは SPA の故障時"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-05'> LRQ_PLS_05 {
            subject s : Parts::Part;
            doc /* エンドエフェクタは、回転リングで3本のワイヤスネアをペイロード側の把持具に閉じ、スネアリング全体を引き込んで把持具の基板を先端に密着させて固定（rigidize）し、手首ロールの誤差が 10° までなら把持できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ワイヤスネア 3本、手首ロール誤差 ≦ 10°"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-06'> LRQ_PLS_06 {
            subject s : Parts::Part;
            doc /* MCIU は、組込み試験で重大な故障を検知するか SM GPC との通信が切れたとき、SAFING スイッチが AUTO ならアームを止める動作（safing）を自分で始め、CANCEL でその状態を解くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SAFING スイッチ 3位置（SAFE・AUTO・CANCEL）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-07'> LRQ_PLS_07 {
            subject s : Parts::Part;
            doc /* 回転ハンドコントローラの握りは、速度保持（RATE HOLD）、VERNIER/COARSE の速度切替、捕獲/解放（CAPTURE/RELEASE）の3つのスイッチを持ち、解放側は誤って押さないよう指のガードで覆うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "握りのスイッチ 3、解放側にガード"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-08'> LRQ_PLS_08 {
            subject s : Parts::Part;
            doc /* アームの運用モードは、単一関節（SINGLE・DIRECT・BACKUP）、ハンドコントローラによる手動補強、SM GPC が軌跡を制御する自動の3種とし、自動列は最大 200点を 20組に分けて登録できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "自動列 最大 200点・20組、AUTO 1〜4 の4枠"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-09'> LRQ_PLS_09 {
            subject s : Parts::Part;
            doc /* 関節の可動限界の手前で、ソフトウェアが REACH LIM 灯・マスターアラーム・SM トーン・DPS の表示で運用者に知らせ、さらに進めばソフトストップで手動補強モードを禁じ、機械的ストップの手前で止めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "手首ピッチ ±114.4°（警告）・±116.4°（ソフトストップ）・±121.4°（機械的ストップ）、手首ロール ±440°・±442°・±447°"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-10'> LRQ_PLS_10 {
            subject s : Parts::Part;
            doc /* RMS 専用の警告表示（パネル A8U）は、赤の MCIU・DERIGIDIZE・ABE・RELEASE・GPC DATA と、黄の CHECK CRT・CONTR ERR・REACH LIM・PORT TEMP・SINGULAR を持ち、オービタの C/W 系とは別に動くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "赤 5灯・黄 5灯"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-11'> LRQ_PLS_11 {
            subject s : Parts::Part;
            doc /* 右舷の MPM は、OBSS を支える台座を X=679.5・911.05・1256.5 の3か所に置き、3つとも保持ラッチを持ち、前方の MPM は OBSS がラッチされている間ヒータ電力を与えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "台座 3、X=679.5・911.05・1256.5"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-12'> LRQ_PLS_12 {
            subject s : Parts::Part;
            doc /* MPM の駆動系は、展開位置と収納位置の2つの過中心ロックを持ち、荷物を持つ運用は展開位置でだけ行い、ペイロードベイドアを閉じる前に収納できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "過中心ロック 2"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-13'> LRQ_PLS_13 {
            subject s : Parts::Part;
            doc /* 保持ラッチは、左舷では縦通材に沿って後・中・前の3か所でアームを留め、3つの受け準備が揃ってから LATCH にし、右舷の OBSS 用の保持ラッチのスイッチには誤解放を防ぐレバーロックを付けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ラッチ 3（後・中・前）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-14'> LRQ_PLS_14 {
            subject s : Parts::Part;
            doc /* 投棄系は、左舷の肩と3つの台座、右舷の3つの台座の分離点ごとに個別に作動でき、冗長な圧力カートリッジで4個の過中心タイダウンフックを引き戻し、肩では配線束を先に火工品のギロチンで切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "分離点 左舷 4・右舷 3、タイダウンフック 4"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-15'> LRQ_PLS_15 {
            subject s : Parts::Part;
            doc /* APDS は打上げ時にリングを収納位置に整列させ、ドッキングの前にリングを最終位置から 15.7 in の初期位置まで毎分約 4.3 in で伸ばし、到達の 1秒後にモータを止めて電源を切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "初期位置 15.7 in、速度 約 4.3 in/min、最大 前方位置 20.4 in"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-16'> LRQ_PLS_16 {
            subject s : Parts::Part;
            doc /* ODS は、3つのセンサーのうち短い捕獲接点の系列の少なくとも一方が揃い、長い接点6つのうち1つが閉じたとき捕獲を示し、リングを引き込んで12対のフックを閉じ、フックの準備信号は4つのうち3つ、気密表示は3つのうち2つで出すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "捕獲接点 短 3×2 系列・長 6、準備 3/4、気密 2/3、フック閉 約 10秒"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-17'> LRQ_PLS_17 {
            subject s : Parts::Part;
            doc /* アンドッキングは、APDS CIRC PROT OFF と UNDOCKING の2つのスイッチだけでフックを開き、圧縮したばね 4本の合計約 700 lb の力で小さな分離速度を与えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ばね 4本・合計約 700 lb、操作 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-18'> LRQ_PLS_18 {
            subject s : Parts::Part;
            doc /* ODS の9つの電子箱は、通電の連続を 2時間までにして30分休ませ、操作パネルの押しボタンは 2〜3秒より長く押さず、機能の実行は3つの電源系のうち2つが入っている間は続けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "連続通電 2時間・休止 30分、押しボタン 2〜3秒、電源 3系のうち 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-19'> LRQ_PLS_19 {
            subject s : Parts::Part;
            doc /* フックが閉じたまま開かない場合に備え、ODS は火工品のボルトをフックごとに1本持ち、各ボルトに冗長な点火器2個を付け、それでも分離しなければEVA で外部エアロックの前室を留める96本のボルトを外せること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "火工品ボルト 1本/フック・点火器 2個/薬、EVA で 96本のボルト"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-20'> LRQ_PLS_20 {
            subject s : Parts::Part;
            doc /* 軌道上の初期化は、荷物を持つ運用があるときだけ MPM を展開し、肩ブレースを解除して PDRS CONTROL（SPEC 94）を呼び出し、SM GPC とのインタフェースを約 MET 2.5 時間に確立すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "初期化 約 MET 2.5 時間"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-21'> LRQ_PLS_21 {
            subject s : Parts::Part;
            doc /* RMS とペイロードを投棄するときは、できる限り1つの単位として投棄し、宇宙に浮かぶ物体の数を減らすこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "投棄の単位 1"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-22'> LRQ_PLS_22 {
            subject s : Parts::Part;
            doc /* 展開するペイロードの PRLA を berthing の前に確認するときは、目で確かめた合図か、解放表示の2つのうち少なくとも1つを全 PRLA・AKA で得てから V ガイドに入れ、解放しない PRLA は EVA で開閉を考え、AKA は EVA の駆動も接近もできないので対象から外すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "解放表示 2つのうち ≧ 1"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-23'> LRQ_PLS_23 {
            subject s : Parts::Part;
            doc /* RMS の運用では、エンドエフェクタの固定カメラ・肘のパン・チルトカメラ・ペイロードベイの4台のカメラを使い、操縦室後部の2台のモニタで各2つの視野、合わせて4つの視野を見られること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "視野 4（モニタ 2台×2）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-24'> LRQ_PLS_24 {
            subject s : Parts::Part;
            doc /* ブリッジ金具は、縦通材側を片側 13個、キール側を 12個まで飛行ごとに選んで取り付け、標準はチタン、軽量はアルミニウムとし、取り付けるベイごとに寸法が異なること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "縦通材 13個/側、キール 12個、標準＝チタン・軽量＝アルミニウム"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-25'> LRQ_PLS_25 {
            subject s : Parts::Part;
            doc /* 縦通材のラッチは1つのペイロードに3〜4個、主ラッチ2個が X・Z 方向の荷重を受け、安定ラッチ1〜2個は X 方向に自由に動き、キールのラッチは X 方向に ±2.75 in 動けて、縦通材のラッチより先に閉じること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ラッチ 3〜4個/ペイロード、主 2・安定 1〜2、キールの動き ±2.75 in"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-PLS-26'> LRQ_PLS_26 {
            subject s : Parts::Part;
            doc /* 保持ラッチは、2つの電動機が動くときの作動時間が 30秒、1つだけが動くときは 60秒で、解放の指令は表示が出ないまま 60秒より長く続けず、PAYLOAD SELECT スイッチで1ペイロードあたり最大 5個のラッチを選べること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "作動時間 30秒（2モータ）・60秒（1モータ）、5個/ペイロード"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-PLS-27'> LRQ_PLS_27 {
            subject s : Parts::Part;
            doc /* ペイロードのトラニオンは縦通材側が直径 3.24 in、キール側が直径 3 in で、V 形のガイドに入れて収納し、収納・取出しの速度は Z=414〜-438 でおよそ 0.01〜0.02 ft/s に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "縦通材トラニオン φ3.24 in、キール φ3 in、速度 0.01〜0.02 ft/s"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'LRQ-RCS'> LRQ_RCS {
        doc /* 姿勢制御系（RCS）の L3 要求（SSD-FD-RCS-001 の下位の機能ブロック） */
        requirement <'LRQ-RCS-01'> LRQ_RCS_01 {
            subject s : Parts::Part;
            doc /* ヘリウムタンクの故障に備え、公称のアレージ圧のままで最大のΔVが得られる推進薬量（最大ブローダウン）を前部 RCS で 22%、後部 RCS で 24% とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "最大ブローダウン 前部 22%・後部 24%"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-02'> LRQ_RCS_02 {
            subject s : Parts::Part;
            doc /* ヘリウム逃し弁組立は、バースト膜を 324〜340 psig で破り、逃し弁を最小 315 psig で開いて 310 psig で再着座させ、調圧器の全開故障時のヘリウム流量を処理できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "バースト膜 324〜340 psig、逃し弁 開 最小 315 psig・再着座 310 psig"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-03'> LRQ_RCS_03 {
            subject s : Parts::Part;
            doc /* ヘリウム隔離弁を、前部はパネル O8、後部はパネル O7 の He PRESS A・B スイッチ（OPEN・GPC・CLOSE）で操作し、各スイッチが燃料側と酸化剤側の2個の弁を制御して、調圧器の経路を A・B で切り替えられること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "スイッチ 3位置（OPEN・GPC・CLOSE）、1スイッチ＝弁2個"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-04'> LRQ_RCS_04 {
            subject s : Parts::Part;
            doc /* ヘリウムの供給圧を、パネル O3 のロータリスイッチを RCS He X10 にして OXID・FUEL 計器で監視でき、タンクの喪失は圧力 400（456）psia 未満か加圧経路がすべて閉じた場合とし、冗長な加圧経路が残る間は調圧器の経路の切り分けにブローダウン運転を使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "喪失 400（456）psia 未満、O3 は RCS He X10"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-05'> LRQ_RCS_05 {
            subject s : Parts::Part;
            doc /* 噴射器のヒータは主噴射器を各 20 W（後ろ向きの4基は 30 W）、バーニア噴射器を各 10 W とし、後部ポッドは9つのヒータゾーンを A・B のヒータ系で並列に制御すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主 20 W（後ろ向き 4基 30 W）・バーニア 10 W、ポッド 9ゾーン"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-06'> LRQ_RCS_06 {
            subject s : Parts::Part;
            doc /* 噴射器ヒータの AUTO では、主噴射器は約 66〜76°F で ON・約 94〜109°F で OFF、バーニアは約 140〜150°F で ON・約 184〜194°F で OFF にし、パネルヒータは約 55°F で ON・約 75°F で OFF にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主 66〜76°F ON／94〜109°F OFF、バーニア 140〜150°F ON／184〜194°F OFF、パネル 55°F ON／75°F OFF"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-07'> LRQ_RCS_07 {
            subject s : Parts::Part;
            doc /* 主噴射器のヒータは上昇中を OFF（発射場の気温が 50°F 未満の場合を除く）、ほかの飛行段階を ON とし、バーニアのヒータは打上げ前に ON・突入で OFF にし、ポッドのヒータは A・B のどちらか片方の系だけを使い、前部モジュールのヒータは SM の GPC が動いていないときは OFF にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "上昇中 OFF（気温 50°F 未満を除く）、ポッドは A・B 片系のみ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-08'> LRQ_RCS_08 {
            subject s : Parts::Part;
            doc /* 主噴射器のヒータが OFF に故障した場合は、手動の噴射・優先度の変更・姿勢の変更で噴射器温度を 42（47）°F 超に保ち、噴射器温度が 162（157）°F を超えている間は原則として噴射しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "下限 42（47）°F、噴射禁止 162（157）°F 超"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-09'> LRQ_RCS_09 {
            subject s : Parts::Part;
            doc /* 後部 RCS のタンク温度が 68（70）°F 未満になったときは、突入時のZOT を避けるため、非干渉の範囲で姿勢を変えて推進薬を温めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "手段：姿勢変更による加温"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-10'> LRQ_RCS_10 {
            subject s : Parts::Part;
            doc /* 軌道上のホットファイアで、38基の主噴射器のすべてが 1 パルスにつき 0.240 秒以上の噴射をできること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主噴射器 38基・0.240 秒／パルス以上"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-11'> LRQ_RCS_11 {
            subject s : Parts::Part;
            doc /* バーニア噴射器は、下向きの1基を失うとバーニアモード全体を失い、横向きの1基の喪失では一部の RMS 荷重下の運用を除いて制御を保てること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "下向き1基喪失＝バーニアモード喪失、横向き1基喪失＝制御維持"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-12'> LRQ_RCS_12 {
            subject s : Parts::Part;
            doc /* 主噴射器は酸化剤の噴射器温度が 30°F 未満か燃料が 20°F 未満、バーニアは噴射器温度が 130°F 未満になったときに、弁からの漏れとして噴射器の喪失と判定すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主：酸化剤 30°F・燃料 20°F 未満、バーニア 130°F 未満"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-13'> LRQ_RCS_13 {
            subject s : Parts::Part;
            doc /* 主噴射器の定常噴射は1ミッションの緊急時の上限を後部（+X）で 800 秒、前部（-X）で 300 秒とし、バーニアの噴射指令は1時間あたり 1000 回以下とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "緊急時 後部 800 秒・前部 300 秒、バーニア指令 1000 回／時間以下"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-14'> LRQ_RCS_14 {
            subject s : Parts::Part;
            doc /* 上昇中の RCS は ET と結合した惰行中の回転制御と ET 分離時の -Z 並進に使い、ET 分離の -Z 並進を自動で行う唯一の RCS の並進とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ET 分離の -Z 並進は自動"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-15'> LRQ_RCS_15 {
            subject s : Parts::Part;
            doc /* OMS-2 噴射の後の軌道上の姿勢保持には通常バーニア噴射器を選び、主噴射器は残留速度の打ち消しと軌道上の小さな並進に使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "姿勢保持は通常バーニア"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-16'> LRQ_RCS_16 {
            subject s : Parts::Part;
            doc /* 系統を閉じるときはマニホールドからヘリウムタンクへ向かって、開くときはヘリウムタンクからマニホールドへ向かって操作し、両方のマニホールド圧が 130 psia 超なら隔離弁で直接再加圧し、130 psia 未満なら弁のバウンスと ZOT を避ける段階的な手順を使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "再加圧のしきい値 130 psia"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-17'> LRQ_RCS_17 {
            subject s : Parts::Part;
            doc /* 冗長管理の検知機能（fail-off・leak・on・全体）を失った場合は、軌道上の主噴射器を1方向・1ポッドあたり1基で姿勢を保てるものとし、時間・安全上重要な事象には2基を要すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "姿勢保持 1基／方向／ポッド、重要な事象 2基"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-18'> LRQ_RCS_18 {
            subject s : Parts::Part;
            doc /* 突入（EI〜マッハ1）には、重心位置に応じて後部 RCS の推進薬 1,175 lb か 1,375 lb を予約すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "予約 1,175 lb または 1,375 lb"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-19'> LRQ_RCS_19 {
            subject s : Parts::Part;
            doc /* タンク隔離弁は、前部 RCS と後部の 1/2 マニホールド系には1対、後部の 3/4/5 マニホールド系には A・B の2対を並列に入れ、交流電動弁として電動機制御組立が指令位置で給電を断つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前部・後部 1/2＝1対、後部 3/4/5＝2対（A・B）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-20'> LRQ_RCS_20 {
            subject s : Parts::Part;
            doc /* マニホールド隔離弁の1〜4番は交流電動弁で GPC 位置を OPS 2・8 でだけ使えるものとし、5番はバーニア噴射器だけに送るソレノイド式のラッチ弁でスイッチを GPC 位置へのばね戻りにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "1〜4番：GPC 位置は OPS 2・8、5番：ラッチ弁・ばね戻り"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-21'> LRQ_RCS_21 {
            subject s : Parts::Part;
            doc /* 前部 RCS は後部 RCS とのクロスフィードも OMS との連結もできないものとし、後部 RCS の噴射器はストレートフィード・クロスフィード・連結のいずれかで推進薬を受けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前部：クロスフィード・連結なし／後部：3通り"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-22'> LRQ_RCS_22 {
            subject s : Parts::Part;
            doc /* 搭載した推進薬の量を、搭載量（酸化剤・燃料の lb）として記録し、残量をPASS の PVT 計算で出して消費量を搭載量と残量の差として確かめること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "公称満載 酸化剤 1,464 lb・燃料 923 lb（タンクごと）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-23'> LRQ_RCS_23 {
            subject s : Parts::Part;
            doc /* 上昇・突入時は、DAP の噴射器選択論理が 38 個の噴射器の ON・OFF 指令を RCS 指令サブシステムに出し、これが各 RJD への二重の噴射指令 A と B を作ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "噴射器 38、指令 A・B の二重"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-24'> LRQ_RCS_24 {
            subject s : Parts::Part;
            doc /* RJD の弁電源出力が高に故障するか燃料・酸化剤の両弁が開故障した場合を fail-on、RJD の出力離散信号が低に故障するか弁の一方が閉故障した場合を fail-off と区別すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "fail-on／fail-off の2区分"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-25'> LRQ_RCS_25 {
            subject s : Parts::Part;
            doc /* 乗員の就寝中は RJD の電源を切るが、RJD のロジック電源回路の故障をテレメトリで検知した場合は2つのマニホールドの噴射器を恒久的に失うため電源を入れたままにし、バーニアを失った場合の手順ではバーニアの RJD（L5・F5・R5 DRIVER）を OFF にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "RJD の故障率は試験で100億時間に1回"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-26'> LRQ_RCS_26 {
            subject s : Parts::Part;
            doc /* fail-off は、CMD B があるのに Pc 離散信号がない状態が3周期続くと検知し、Pc 離散信号のしきい値は約 26 psia として、故障フラグを立てて通報すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "3周期、Pc 離散のしきい値 約 26 psia"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-27'> LRQ_RCS_27 {
            subject s : Parts::Part;
            doc /* fail-on は、CMD B が出ていないのにドライバ出力離散信号がある状態が3周期続くと検知し、OPS 2（8）で AUT MANF CL が有効なら該当するマニホールドの弁に閉指令を送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "3周期、OPS 2（8）で自動閉"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-RCS-28'> LRQ_RCS_28 {
            subject s : Parts::Part;
            doc /* fail-leak は、酸化剤か燃料の噴射器温度が RM の限界を3周期続けて下回ると検知し、ポッドの限度に達していなければ噴射器を選択解除し、バーニアの故障は OPS 2 と 8 でだけ通報すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "3周期、バーニアの通報は OPS 2・8"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-29'> LRQ_RCS_29 {
            subject s : Parts::Part;
            doc /* RM はマニホールド弁の状態を4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）から独自に評価し、閉になったマニホールドの噴射器を可用表から外し、ジレンマ（RCS RM DLMA）と電源故障（RCS PWR FAIL）を検知すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "離散信号 4（OX OP・OX CL・FU OP・FU CL）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-RCS-30'> LRQ_RCS_30 {
            subject s : Parts::Part;
            doc /* RM のフラグ・状態・計数は OPS の移行をまたいで引き継ぎ、BFS を結合するとすべて消去して初期化し、BFS は SPEC 23 を持たず、結合されたときだけ fail-off と fail-on を通報して fail-leak は通報しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "BFS：fail-leak は通報しない"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
    }
    package <'LRQ-STR'> LRQ_STR {
        doc /* 構造（STR）の L3 要求（SSD-FD-STR-001 の下位の機能ブロック） */
        requirement <'LRQ-STR-01'> LRQ_STR_01 {
            subject s : Parts::Part;
            doc /* 内部の推力構造は、上部で上のSSMEを、下部で下の2基のSSMEを支えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "上部 1基・下部 2基"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-02'> LRQ_STR_02 {
            subject s : Parts::Part;
            doc /* 内部の推力構造は、主に28本の拡散接合したチタンのトラス部材で造り、OV-105は鍛造品とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "トラス部材 28本"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-03'> LRQ_STR_03 {
            subject s : Parts::Part;
            doc /* オービタ/ETの2つの後部結合点は縦通材の金具で結合し、ET分離ではこの結合が正常に外れて結合孔が塞がれること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "後部結合点 2"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-04'> LRQ_STR_04 {
            subject s : Parts::Part;
            doc /* OMS/RCSポッドは、162 dBの音響と−170〜+135°Fの温度に耐えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "162 dB・−170〜+135°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-05'> LRQ_STR_05 {
            subject s : Parts::Part;
            doc /* 後胴は、中胴の主縦通材への荷重経路、前部隔壁を越える主翼桁の連続、ボディフラップの支持を受け持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "荷重経路 3（縦通材・主翼桁・ボディフラップ）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-06'> LRQ_STR_06 {
            subject s : Parts::Part;
            doc /* 乗員室は、側面ハッチ、中甲板からエアロックへのハッチ、エアロックからペイロードベイへのハッチの3つのハッチを持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ハッチ 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-07'> LRQ_STR_07 {
            subject s : Parts::Part;
            doc /* 圧力殻の約300の貫通部は、プレートと金具で封じること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "貫通部 約300"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-08'> LRQ_STR_08 {
            subject s : Parts::Part;
            doc /* 乗員室は、前胴との熱伝導を小さくするため、前胴の中に4つの取付点だけで支えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "取付点 4"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-09'> LRQ_STR_09 {
            subject s : Parts::Part;
            doc /* 前方の窓は6枚とし、それぞれ3枚の板ガラスで造ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前方の窓 6"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-10'> LRQ_STR_10 {
            subject s : Parts::Part;
            doc /* 窓の外側の板は前胴に、中央と内側の板は乗員室に取り付け、各窓に冗長なシールを使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "シール：窓ごとに冗長"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-11'> LRQ_STR_11 {
            subject s : Parts::Part;
            doc /* 前胴は、2024アルミ合金のスキン・ストリンガのパネル、フレーム、隔壁で造り、主フレームの間隔を30〜36 inとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2024アルミ合金・主フレーム間隔 30〜36 in"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-12'> LRQ_STR_12 {
            subject s : Parts::Part;
            doc /* ノーズキャップは強化炭素・炭素（RCC）の再使用TPSとし、ノーズキャップと構造の境に熱障壁を持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "RCC・境に熱障壁"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-13'> LRQ_STR_13 {
            subject s : Parts::Part;
            doc /* 前部のオービタ/ET結合金具は、Xo=378隔壁と前脚格納部の後方の外板構造に置き、ET分離で正常に外れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "Xo = 378"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-14'> LRQ_STR_14 {
            subject s : Parts::Part;
            doc /* 前胴は、Xo=582の柔軟な膜でペイロードベイと仕切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "仕切り：Xo = 582"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-15'> LRQ_STR_15 {
            subject s : Parts::Part;
            doc /* 中胴は12の主フレーム組立で安定させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主フレーム組立 12"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-16'> LRQ_STR_16 {
            subject s : Parts::Part;
            doc /* 縦通材は主な曲げ部材とし、ペイロードベイのペイロードからの縦方向の荷重を受けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主な曲げ部材"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-17'> LRQ_STR_17 {
            subject s : Parts::Part;
            doc /* シルの縦通材は、マニピュレータアーム、Ku帯アンテナ、ペイロードベイドアの作動系の取付けの基盤となること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "取付け対象 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-18'> LRQ_STR_18 {
            subject s : Parts::Part;
            doc /* 翼の前方の側壁は主脚の内側の支えとなり、脚の横方向の荷重はすべて中胴が受けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "横方向の荷重：すべて中胴"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-19'> LRQ_STR_19 {
            subject s : Parts::Part;
            doc /* 下部の中胴の縦通材に捩り帯を足し、降下時の熱勾配に対して正の安全余裕を確保すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "安全余裕 ＞ 0（降下時の熱勾配）"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-20'> LRQ_STR_20 {
            subject s : Parts::Part;
            doc /* 熱ペインは破片が欠けたときに故障とみなし、RTLSの境界より前に前方の窓か側面ハッチの熱ペインが故障したらRTLSでアボートすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "判定：破片の欠け。RTLS 境界より前は RTLS"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-21'> LRQ_STR_21 {
            subject s : Parts::Part;
            doc /* 窓系の与圧の冗長は圧力ペインと冗長ペインで満たし、熱ペインは与圧の冗長に数えないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "与圧の冗長：圧力ペイン＋冗長ペイン（熱ペインは数えない）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-22'> LRQ_STR_22 {
            subject s : Parts::Part;
            doc /* ビューポートを使わないときは、外側の覆いを閉じておくこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "覆い：使わないときは閉"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-23'> LRQ_STR_23 {
            subject s : Parts::Part;
            doc /* 軌道離脱の準備の姿勢の手順の前にすべての熱の制約を満たすことが解析で示されれば、軌道離脱の実時間の熱解析を要らないとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "条件：事前の解析で全熱制約を満足"; phases = "PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-24'> LRQ_STR_24 {
            subject s : Parts::Part;
            doc /* 翼の4本の主桁は、熱荷重を抑えるため波形のアルミニウムで造ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "主桁 4・波形アルミニウム"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-STR-25'> LRQ_STR_25 {
            subject s : Parts::Part;
            doc /* エレボンは各翼で2つの区分に分かれ、各区分は3つのヒンジで支えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "区分 2／翼・ヒンジ 3／区分"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-26'> LRQ_STR_26 {
            subject s : Parts::Part;
            doc /* 翼は上面の引張ボルトの継手と下面のせん断継手で胴体に取り付け、飛行中の舵面の応答が設計の限度に収まること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "継手：上面 引張ボルト・下面 せん断"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-27'> LRQ_STR_27 {
            subject s : Parts::Part;
            doc /* 垂直尾翼のラダーは2つに割れてスピードブレーキになること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ラダー 2分割＝スピードブレーキ"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-STR-28'> LRQ_STR_28 {
            subject s : Parts::Part;
            doc /* 垂直尾翼の構造は、163 dBの音響と最高350°Fに耐えるよう設計すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "163 dB・350°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'LRQ-TPS'> LRQ_TPS {
        doc /* 熱防護・熱制御（TPS・TCS）の L3 要求（SSD-FD-TPS-001 の下位の機能ブロック） */
        requirement <'LRQ-TPS-01'> LRQ_TPS_01 {
            subject s : Parts::Part;
            doc /* タイルは Nomex フェルトのひずみ緩和パッドを介してシリコーン接着剤で機体に接着し、タイル間の隙間は 0.028〜0.2 inch に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "隙間 0.028〜0.2 inch"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-TPS-02'> LRQ_TPS_02 {
            subject s : Parts::Part;
            doc /* タイルは主に嵩密度 9 lb/ft3 の LI-900 とし、着陸脚ドアや窓の周りなど強度が要る部位は 22 lb/ft3 の LI-2200、一部の部位は 12 lb/ft3 の FRCI-12 とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "LI-900 9 lb/ft3・LI-2200 22 lb/ft3・FRCI-12 12 lb/ft3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-TPS-03'> LRQ_TPS_03 {
            subject s : Parts::Part;
            doc /* 各主翼の前縁は 22 枚の RCC パネルで構成し、RCC は −250°F から 3,000°F の使用温度範囲に耐えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "22 枚/主翼・−250〜3,000°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-04'> LRQ_TPS_04 {
            subject s : Parts::Part;
            doc /* FRSI は白いシリコーン膜を持つ厚さ 0.16〜0.32 inch のフェルトのブランケットとし、1 機あたり平均約 1,860 平方フィートを使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "厚さ 0.16〜0.32 inch・平均 1,860 ft2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-05'> LRQ_TPS_05 {
            subject s : Parts::Part;
            doc /* ペイロードベイドアは打上げから約 1 時間 25 分で開き、開放を不可とする故障があるときは地上管制の許可を出さずに扉を閉じたまま第 1 日の主着陸地へ降りること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "開放：打上げ後 約 1 時間 25 分"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-06'> LRQ_TPS_06 {
            subject s : Parts::Part;
            doc /* 再突入の準備では、TIG-4:00 までに尾部を太陽へ向ける冷却姿勢（tail sun/cold soak）を完了し、TIG-2:55 でラジエータをバイパスして FES を点検し、TIG-2:40 にペイロードベイドアを閉じ始めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "TIG-4:00 冷却姿勢・TIG-2:55 ラジエータバイパス・TIG-2:40 扉閉鎖"; phases = "PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-TPS-07'> LRQ_TPS_07 {
            subject s : Parts::Part;
            doc /* 軌道上の外面温度の変動（約 90 分の周期で −200°F から +200°F）に対して、機首太陽向き・尾部太陽向き・上面太陽向きと受動熱制御の長時間の姿勢で、各部の温度を所要の範囲に保てること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "外面 −200〜+200°F（約 90 分）・4 つの熱試験姿勢"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-08'> LRQ_TPS_08 {
            subject s : Parts::Part;
            doc /* 断熱ブランケットは、密度 2 lb/ft3 の繊維質のバルク型と、Kapton の反射膜 16 層を Dacron のネットで隔てた多層型の 2 種とし、バルク型の Kapton カバーには 1 平方フィートあたり 13,500 個の排気穴を設けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "バルク 2 lb/ft3・多層 反射膜 16 層・排気穴 13,500 個/ft2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-TPS-09'> LRQ_TPS_09 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水の排出配管と水リリーフ配管・ベントノズルには冗長な A・B 2 系統のサーモスタット制御ヒータを巻き、配管温度を 53°F 以上に、リリーフ弁の使用中の温度を 70〜100°F に保つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "配管 ≧ 53°F・リリーフ弁 70〜100°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-10'> LRQ_TPS_10 {
            subject s : Parts::Part;
            doc /* OMS のクロスフィード配管の熱制御は機体後部を 11 の加熱区画に分け、各区画を A・B 2 系統のヒータで並列に加熱して制御サーモスタットで 55〜75°F に保ち、ヒータの入りっぱなしに備えた過熱防止サーモスタットを置くこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "加熱区画 11・55〜75°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-TPS-11'> LRQ_TPS_11 {
            subject s : Parts::Part;
            doc /* カウントダウン中はベントドアをパージ位置に置いて非与圧区画を乾燥空気または窒素でパージし、T-28 秒から約 2.5 秒間隔でドアを順に開き、全ドアが開いたことを T-4 秒の打上げの基準とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "開放開始 T-28 秒・間隔 約 2.5 秒・全ドア開 T-4 秒"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-TPS-12'> LRQ_TPS_12 {
            subject s : Parts::Part;
            doc /* 再突入の準備ではベントドアをいったん全て閉じてからベントドア 1・2・8・9 を再び開き（MM304 で閉じる）、着陸後はベントドア 1・2・6・8・9 をパージ位置へ戻して地上冷却に備えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "再突入：1・2・8・9 を再開／着陸後：1・2・6・8・9 をパージ位置"; phases = "PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'LRQ-ET'> LRQ_ET {
        doc /* 外部タンク（ET）の L3 要求（SSD-FD-ET-001 の下位の機能ブロック） */
        requirement <'LRQ-ET-01'> LRQ_ET_01 {
            subject s : Parts::Part;
            doc /* インタタンクは鋼/アルミのセミモノコックの円筒構造とし、両端のフランジでLO2タンクとLH2タンクをつなぎ、8枚の補強アルミ合金パネルを縦継手で結合すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "パネル 8枚（推力パネル 2枚）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-02'> LRQ_ET_02 {
            subject s : Parts::Part;
            doc /* インタタンクを飛行前にパージし、内部に酸素・水素の有意な濃度を生じさせないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-03'> LRQ_ET_03 {
            subject s : Parts::Part;
            doc /* インタタンクは飛行中にベントし、推力パネルのベント経路でフォーム内の圧力上昇を抑えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-04'> LRQ_ET_04 {
            subject s : Parts::Part;
            doc /* インタタンクの前部SRB/ET結合の推力ビームと金具で、SRBの荷重をLO2タンクとLH2タンクへ分配すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-05'> LRQ_ET_05 {
            subject s : Parts::Part;
            doc /* インタタンクは長さ270 in・直径331 in・重量12,100 lbとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "270 in・331 in・12,100 lb"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-06'> LRQ_ET_06 {
            subject s : Parts::Part;
            doc /* LH2タンクのアレージ圧が27.7 psia未満のときは LH2 ULLAGE PRESS スイッチで手動制御し、35 psiaを超えないようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "27.7 psia 未満で手動・上限 35 psia"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-07'> LRQ_ET_07 {
            subject s : Parts::Part;
            doc /* LH2タンクは渦防止のバッフルとサイフォンの出口を持ち、LH2を直径17 inの管で左後部のアンビリカルへ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "供給管 17 in"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-08'> LRQ_ET_08 {
            subject s : Parts::Part;
            doc /* LH2タンクの前端にET/オービタ前部結合のポッド支柱を、後端に2つの後部結合のボール金具とSRB/ETの後部安定支柱の取付けを持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "後部結合 2・前部結合 1"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-09'> LRQ_ET_09 {
            subject s : Parts::Part;
            doc /* LH2タンクは直径331 in・長さ1,160 in・容積53,518 ft3・乾燥重量29,000 lbの溶接アルミのセミモノコックで、5つの主リングフレームと前後の楕円ドームを持つこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "331 in・1,160 in・53,518 ft3・29,000 lb"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-10'> LRQ_ET_10 {
            subject s : Parts::Part;
            doc /* LO2タンクは化学切削のゴア・パネル・削り出し金具・リングコードを溶接したアルミのモノコックで、直径331 in・長さ592 in・空虚重量12,000 lbとし、前方のLO2タンク・インタタンク・後方のLH2タンクの3部のうちの前方を成すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "331 in・592 in・12,000 lb"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-11'> LRQ_ET_11 {
            subject s : Parts::Part;
            doc /* LO2タンクは揺動防止と渦防止の装置を持ち、供給管への気体の巻き込みと液の動きを抑えること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-12'> LRQ_ET_12 {
            subject s : Parts::Part;
            doc /* LO2は直径17 inの供給管でインタタンクを通ってETの外へ出し、右後部のアンビリカルへ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "供給管 17 in"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-13'> LRQ_ET_13 {
            subject s : Parts::Part;
            doc /* LO2タンクの二重くさびのノーズコーンは抗力と加熱を減らし、電気部品を収め、避雷針となること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-14'> LRQ_ET_14 {
            subject s : Parts::Part;
            doc /* LO2タンクの加圧系は、エンジン始動から飛行を通じて機能し、上昇中のアレージ圧の一時低下（スランプ）があってもタンクを加圧し続けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-15'> LRQ_ET_15 {
            subject s : Parts::Part;
            doc /* MECOの後に機体の角速度が0.7 deg/sを超えるか供給管の切離しが故障したときは、「ET SEP INH」を出して通常ミッションとATOでは分離を抑止すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-16'> LRQ_ET_16 {
            subject s : Parts::Part;
            doc /* RTLSではベントのための短い遅れのあと自動でETを分離し、17 inの切離し弁の閉鎖を確かめられないときは弁の推力の減衰を待って分離を遅らせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "遅延 MECO＋6分まで"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-17'> LRQ_ET_17 {
            subject s : Parts::Part;
            doc /* 分離の直前にオービタの信号でタンブル系を作動させ、LO2タンク前部の2 inの弁を開いて残りのガスを噴き出し、ETを回転させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "弁 2 in"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-18'> LRQ_ET_18 {
            subject s : Parts::Part;
            doc /* ETは回収せず、大気に再突入して分解させ、落下を飛行ごとに予測した落下区域の内に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-19'> LRQ_ET_19 {
            subject s : Parts::Part;
            doc /* 射場安全系は秒読み中の閉ループ試験で冗長な機器の組合せを確かめ、S&A 装置を作動させて抑止を解除したうえで打上げること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-20'> LRQ_ET_20 {
            subject s : Parts::Part;
            doc /* 吹付けのポリイソシアヌレート発泡材（CPR-488）を、LO2タンク・インタタンク・LH2タンクの胴の発泡材とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "CPR-488"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-21'> LRQ_ET_21 {
            subject s : Parts::Part;
            doc /* TPSは吹付け・真空成形・成形品の接着などの方法で施工し、アブレータと発泡材を使い分けること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-22'> LRQ_ET_22 {
            subject s : Parts::Part;
            doc /* LH2タンクの取付部に、空気にさらされる金属の液化を防ぎLH2への熱の流れを減らす断熱を施すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-23'> LRQ_ET_23 {
            subject s : Parts::Part;
            doc /* 秒読みでは固定サービス構造の振り腕のキャップでLO2タンクのベントを覆い、酸素の蒸気を吸い取ってETの氷を防ぐこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-24'> LRQ_ET_24 {
            subject s : Parts::Part;
            doc /* ETのTPSの重量は4,823 lbとすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "4,823 lb"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-25'> LRQ_ET_25 {
            subject s : Parts::Part;
            doc /* 後部の結合部のアンビリカルで、液体・気体・電気信号・電力をタンクとオービタの間で伝え、オービタとSRBの間の信号も通すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "後部結合 2か所"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-26'> LRQ_ET_26 {
            subject s : Parts::Part;
            doc /* 2つの後部のETアンビリカル板をオービタ側の板とボルトで締結し、分離の指令で火工品を作動させてボルトを切ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ボルト火工品 2系統（A・B）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-27'> LRQ_ET_27 {
            subject s : Parts::Part;
            doc /* ETは、オービタのアンビリカルとつながる5つの推進薬のアンビリカル弁（LO2タンク2・LH2タンク3）を持ち、LH2の中間径のアンビリカルは打上げ前のLH2予冷の再循環にだけ使うこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "弁 5（LO2 2・LH2 3）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-ET-28'> LRQ_ET_28 {
            subject s : Parts::Part;
            doc /* ETの2つの電気アンビリカルで、オービタからタンクと2本のSRBへ電力を送り、SRBとETの情報をオービタへ送ること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "電気アンビリカル 2"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-ET-29'> LRQ_ET_29 {
            subject s : Parts::Part;
            doc /* 推進薬の枯渇センサは規定の質量を過ぎてから2つが乾きを検知するとエンジンを停止する構成とし、打上げには各推進薬の4つすべてが作動していること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "センサ 4／推進薬（打上げは 4/4）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    package <'LRQ-SRB'> LRQ_SRB {
        doc /* 固体ロケットブースタ（SRB）の L3 要求（SSD-FD-SRB-001 の下位の機能ブロック） */
        requirement <'LRQ-SRB-01'> LRQ_SRB_01 {
            subject s : Parts::Part;
            doc /* SRBの分離は両方のSRBの頭部の燃焼圧が50 psi以下になったときに始め、センサの偏りに備えて点火からの時間でも分離を指令すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "50 psi 以下・時間による分離"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-02'> LRQ_SRB_02 {
            subject s : Parts::Part;
            doc /* 分離の手順でATVCがアクチュエータを中立に戻し、SSMEを第2段の構成にして、SRBの推力が100,000 lb未満になるようにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SRB 推力 100,000 lb 未満"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-03'> LRQ_SRB_03 {
            subject s : Parts::Part;
            doc /* 各SRBの両端に4基ずつの分離モータ（BSM、長さ31.1 in・直径12.8 in）を置き、分離時に1.02秒燃焼させてSRBをETから離すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "燃焼 1.02秒・31.1 in・12.8 in"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-04'> LRQ_SRB_04 {
            subject s : Parts::Part;
            doc /* 前部の結合点の1本のボルトと後部の3本の支柱の各ボルトは、両端にNSIの圧力カートリッジを持ち、火工品の発火の指令で切断されること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前部 1本・後部 3本"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-05'> LRQ_SRB_05 {
            subject s : Parts::Part;
            doc /* ETは各SRBの後部フレームで2つの横の振れ止めと斜めの結合でつなぎ、SRBの前端は前部スカートでETに結合させ、結合リングの最小安全率は1.4とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "安全率 1.4"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-06'> LRQ_SRB_06 {
            subject s : Parts::Part;
            doc /* 各SRBの前部スカートと結合リングに統合電子組立（IEA）を1つずつ置き、後部IEAが点火の指令とノズルの推力方向制御を前部IEAとオービタのアビオニクスへつなぎ、各IEAにMDMを持たせること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "IEA 2／本・MDM 各 1"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-07'> LRQ_SRB_07 {
            subject s : Parts::Part;
            doc /* SRBのレートジャイロ組立（SRGA）は入替え可能な中間値選択でピッチ・ヨーの角速度を与え、1回の飛行より多く使わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "中間値選択・使用 1飛行"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-08'> LRQ_SRB_08 {
            subject s : Parts::Part;
            doc /* 分離の手順でSRBのRSSの電源を切り、回収系の電源を入れること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-09'> LRQ_SRB_09 {
            subject s : Parts::Part;
            doc /* 各SRBのRSSは、秒読み中の閉ループ試験でS&A装置を作動させ抑止を解除したうえで、地上局からのarmとfireの2つの指令だけで作動する構成とすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "指令 2（arm・fire）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-10'> LRQ_SRB_10 {
            subject s : Parts::Part;
            doc /* 保持ボルト（長さ28 in・直径3.5 in）は上のナットだけを破断式とし、点火の指令で2つのNSIを作動させ、解放後のボルトは砂の入った減速台で止めて、ナットは爆風容器に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ボルト 28 in・3.5 in"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-11'> LRQ_SRB_11 {
            subject s : Parts::Part;
            doc /* 点火の指令は2つのマスターイベントコントローラ（MEC）から独立した2系統（A・B）で保持ポストのPICへ送り、各ナットの2つの起爆器をA系とB系で分け、一方のMECや経路が故障しても作動すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "2系統（A・B）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-12'> LRQ_SRB_12 {
            subject s : Parts::Part;
            doc /* 打上げ前の最後の16秒間、発射処理システムで保持PICの低電圧を監視し、低電圧なら打上げを保留すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "最後の16秒"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-13'> LRQ_SRB_13 {
            subject s : Parts::Part;
            doc /* PICは、armの信号でコンデンサを40 V直流（最小20 V直流）に充電し、fire 1・fire 2の信号がそろったときだけ起爆器へ放電して発火させ、S&A装置から点火器・推進薬へ順に点火すること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "arm 40 V DC（最小 20 V DC）"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-14'> LRQ_SRB_14 {
            subject s : Parts::Part;
            doc /* 離昇時に、SSMEとSRBの推力の立上げと保持ボルトの解放の時機を、荷重解析で用いた許容の内に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "—"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-15'> LRQ_SRB_15 {
            subject s : Parts::Part;
            doc /* 点火から離昇までの時間は、頭部の燃焼圧が563.5 psiaに達する時点までを0.23秒とし、点火の過渡を170〜340 msに収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "離昇 563.5 psia・0.23 s・過渡 170〜340 ms"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-16'> LRQ_SRB_16 {
            subject s : Parts::Part;
            doc /* 推進薬は2分あまりで燃え尽きる設計とし、ウェブ時間を105.4〜116.7秒、作用時間を115.2〜131.2秒（60°F PMBT）に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ウェブ 105.4〜116.7 s・作用 115.2〜131.2 s"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-17'> LRQ_SRB_17 {
            subject s : Parts::Part;
            doc /* 各SRBは長さ約149 ft・直径12 ft、打上げ時の重量約1,300,000 lb（推進薬約1,100,000 lb）とし、推進薬の充填量を1,103,750 lb超にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "約 149 ft・12 ft・1,300,000 lb・推進薬 > 1,103,750 lb"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-18'> LRQ_SRB_18 {
            subject s : Parts::Part;
            doc /* 推進薬は過塩素酸アンモニウム69.6%・アルミニウム16%・酸化鉄0.4%・結合剤12.04%・硬化剤1.96%の混合とし、燃焼速度を予測の内に収めること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "APCP 69.6/16/0.4/12.04/1.96 %"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-19'> LRQ_SRB_19 {
            subject s : Parts::Part;
            doc /* 62〜80秒の圧力–時間の波形の形状の変動を許容の3.2%以内に収め、2本の推力差を仕様の限度85 klbf以内にすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "波形の変動 3.2%・推力差 85 klbf"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-20'> LRQ_SRB_20 {
            subject s : Parts::Part;
            doc /* 各HPUは、打上げ28秒前から SRB 分離まで、ヒドラジン22 lbを収め400 psiの窒素で加圧した燃料タンクを持つAPUで油圧ポンプを回すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "ヒドラジン 22 lb・窒素 400 psi・T-28 s"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-21'> LRQ_SRB_21 {
            subject s : Parts::Part;
            doc /* 各HPUは両方のサーボアクチュエータにつながり、主の油圧が2,050 psi未満になると切替弁で副の油圧に切り替え、両方の油圧が1,000 psig以下になるまでTVCを失わないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "切替 2,050 psi・TVC 喪失 1,000 psig 以下"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-22'> LRQ_SRB_22 {
            subject s : Parts::Part;
            doc /* ロックとチルトの2つの油圧ジンバルサーボアクチュエータがノズルを動かして推力の方向を制御し、上昇中の変位を指令どおりに追従させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "アクチュエータ 2／本"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-23'> LRQ_SRB_23 {
            subject s : Parts::Part;
            doc /* 各アクチュエータの4つの独立したサーボ弁は力の和による多数決で、1つの誤った指令が動きに影響しないようにし、誤りが続くときはその弁の油圧を切り離すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "サーボ弁 4／アクチュエータ"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-24'> LRQ_SRB_24 {
            subject s : Parts::Part;
            doc /* APU/HPUと油圧系は20回のミッションに再使用できること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "再使用 20回"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-25'> LRQ_SRB_25 {
            subject s : Parts::Part;
            doc /* 回収は高高度の気圧スイッチでノーズキャップのスラスタを作動させて始め、分離188秒後・高度15,700 ftでパイロットシュートを出し、直径54 ftのドローグシュートでSRBを安定させること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "分離後 188 s・15,700 ft・ドローグ 54 ft"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-26'> LRQ_SRB_26 {
            subject s : Parts::Part;
            doc /* 低高度の気圧スイッチで高度5,500 ft・分離243秒後にフラスタムを前部スカートから分離し、ドローグシュートがそれを引き離すこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "5,500 ft・分離後 243 s"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-27'> LRQ_SRB_27 {
            subject s : Parts::Part;
            doc /* 着水したSRBは空の燃焼室に残る空気で前端を約30 ft水面に出して浮き、主傘3本の1本が開かずに着水速度が上がっても、後部スカートの構造と内部の部品を大きく損傷しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "前端 約 30 ft 浮上"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'LRQ-SRB-28'> LRQ_SRB_28 {
            subject s : Parts::Part;
            doc /* 主傘は着水後に海水作動の放出装置（SWAR）で外れ、回収船が来るまでSRBにつながれたままにすること。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "SWAR"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'LRQ-SRB-29'> LRQ_SRB_29 {
            subject s : Parts::Part;
            doc /* 回収したSRBは発射場へ曳航して分解・洗浄し、モータセグメント・点火器・ノズルを製造元へ送って再整備し、ノーズキャップとノズルの延長部は回収しないこと。 */
            @RequirementInfo { document = "SSD-RQL-SYS-001"; valueText = "非回収：ノーズキャップ・ノズル延長部"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    // ---- 導出（L2 の要求 → L3 の要求）
    package Derivation {
        #derivation connection <'REQ-APU-06>LRQ-APU-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> LRQ_APU::LRQ_APU_01;
        }
        #derivation connection <'REQ-APU-06>LRQ-APU-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> LRQ_APU::LRQ_APU_02;
        }
        #derivation connection <'REQ-APU-06>LRQ-APU-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> LRQ_APU::LRQ_APU_03;
        }
        #derivation connection <'REQ-APU-06>LRQ-APU-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_06;
            end #derive ::> LRQ_APU::LRQ_APU_04;
        }
        #derivation connection <'REQ-APU-04>LRQ-APU-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> LRQ_APU::LRQ_APU_05;
        }
        #derivation connection <'REQ-APU-04>LRQ-APU-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> LRQ_APU::LRQ_APU_06;
        }
        #derivation connection <'REQ-APU-04>LRQ-APU-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> LRQ_APU::LRQ_APU_07;
        }
        #derivation connection <'REQ-APU-04>LRQ-APU-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> LRQ_APU::LRQ_APU_08;
        }
        #derivation connection <'REQ-APU-01>LRQ-APU-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
            end #derive ::> LRQ_APU::LRQ_APU_09;
        }
        #derivation connection <'REQ-APU-02>LRQ-APU-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
            end #derive ::> LRQ_APU::LRQ_APU_09;
        }
        #derivation connection <'REQ-APU-01>LRQ-APU-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
            end #derive ::> LRQ_APU::LRQ_APU_10;
        }
        #derivation connection <'REQ-APU-01>LRQ-APU-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
            end #derive ::> LRQ_APU::LRQ_APU_11;
        }
        #derivation connection <'REQ-APU-04>LRQ-APU-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_04;
            end #derive ::> LRQ_APU::LRQ_APU_11;
        }
        #derivation connection <'REQ-APU-02>LRQ-APU-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
            end #derive ::> LRQ_APU::LRQ_APU_12;
        }
        #derivation connection <'REQ-APU-05>LRQ-APU-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> LRQ_APU::LRQ_APU_13;
        }
        #derivation connection <'REQ-APU-05>LRQ-APU-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> LRQ_APU::LRQ_APU_14;
        }
        #derivation connection <'REQ-APU-05>LRQ-APU-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> LRQ_APU::LRQ_APU_15;
        }
        #derivation connection <'REQ-APU-05>LRQ-APU-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_05;
            end #derive ::> LRQ_APU::LRQ_APU_16;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_16;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_17;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_18;
        }
        #derivation connection <'REQ-APU-09>LRQ-APU-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_09;
            end #derive ::> LRQ_APU::LRQ_APU_18;
        }
        #derivation connection <'REQ-APU-09>LRQ-APU-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_09;
            end #derive ::> LRQ_APU::LRQ_APU_19;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_20;
        }
        #derivation connection <'REQ-APU-09>LRQ-APU-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_09;
            end #derive ::> LRQ_APU::LRQ_APU_20;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_21;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_22;
        }
        #derivation connection <'REQ-APU-01>LRQ-APU-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_01;
            end #derive ::> LRQ_APU::LRQ_APU_22;
        }
        #derivation connection <'REQ-APU-03>LRQ-APU-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> LRQ_APU::LRQ_APU_23;
        }
        #derivation connection <'REQ-APU-03>LRQ-APU-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> LRQ_APU::LRQ_APU_24;
        }
        #derivation connection <'REQ-APU-02>LRQ-APU-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_02;
            end #derive ::> LRQ_APU::LRQ_APU_25;
        }
        #derivation connection <'REQ-APU-03>LRQ-APU-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> LRQ_APU::LRQ_APU_25;
        }
        #derivation connection <'REQ-APU-03>LRQ-APU-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_03;
            end #derive ::> LRQ_APU::LRQ_APU_26;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_26;
        }
        #derivation connection <'REQ-APU-07>LRQ-APU-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
            end #derive ::> LRQ_APU::LRQ_APU_27;
        }
        #derivation connection <'REQ-APU-07>LRQ-APU-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
            end #derive ::> LRQ_APU::LRQ_APU_28;
        }
        #derivation connection <'REQ-APU-07>LRQ-APU-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
            end #derive ::> LRQ_APU::LRQ_APU_29;
        }
        #derivation connection <'REQ-APU-07>LRQ-APU-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_07;
            end #derive ::> LRQ_APU::LRQ_APU_30;
        }
        #derivation connection <'REQ-APU-08>LRQ-APU-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_APU::REQ_APU_08;
            end #derive ::> LRQ_APU::LRQ_APU_30;
        }
        #derivation connection <'REQ-CREW-01>LRQ-CREW-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
            end #derive ::> LRQ_CREW::LRQ_CREW_01;
        }
        #derivation connection <'REQ-CREW-01>LRQ-CREW-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_01;
            end #derive ::> LRQ_CREW::LRQ_CREW_02;
        }
        #derivation connection <'REQ-CREW-02>LRQ-CREW-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_02;
            end #derive ::> LRQ_CREW::LRQ_CREW_03;
        }
        #derivation connection <'REQ-CREW-03>LRQ-CREW-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
            end #derive ::> LRQ_CREW::LRQ_CREW_04;
        }
        #derivation connection <'REQ-CREW-03>LRQ-CREW-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
            end #derive ::> LRQ_CREW::LRQ_CREW_05;
        }
        #derivation connection <'REQ-CREW-07>LRQ-CREW-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> LRQ_CREW::LRQ_CREW_06;
        }
        #derivation connection <'REQ-CREW-07>LRQ-CREW-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> LRQ_CREW::LRQ_CREW_07;
        }
        #derivation connection <'REQ-CREW-07>LRQ-CREW-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> LRQ_CREW::LRQ_CREW_08;
        }
        #derivation connection <'REQ-CREW-07>LRQ-CREW-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> LRQ_CREW::LRQ_CREW_09;
        }
        #derivation connection <'REQ-CREW-07>LRQ-CREW-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_07;
            end #derive ::> LRQ_CREW::LRQ_CREW_10;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_11;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_12;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_13;
        }
        #derivation connection <'REQ-CREW-06>LRQ-CREW-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
            end #derive ::> LRQ_CREW::LRQ_CREW_14;
        }
        #derivation connection <'REQ-CREW-06>LRQ-CREW-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
            end #derive ::> LRQ_CREW::LRQ_CREW_15;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_16;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_17;
        }
        #derivation connection <'REQ-CREW-05>LRQ-CREW-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_05;
            end #derive ::> LRQ_CREW::LRQ_CREW_18;
        }
        #derivation connection <'REQ-CREW-03>LRQ-CREW-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_03;
            end #derive ::> LRQ_CREW::LRQ_CREW_19;
        }
        #derivation connection <'REQ-CREW-06>LRQ-CREW-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_06;
            end #derive ::> LRQ_CREW::LRQ_CREW_20;
        }
        #derivation connection <'REQ-CREW-04>LRQ-CREW-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> LRQ_CREW::LRQ_CREW_21;
        }
        #derivation connection <'REQ-CREW-04>LRQ-CREW-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> LRQ_CREW::LRQ_CREW_22;
        }
        #derivation connection <'REQ-CREW-04>LRQ-CREW-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> LRQ_CREW::LRQ_CREW_23;
        }
        #derivation connection <'REQ-CREW-04>LRQ-CREW-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_04;
            end #derive ::> LRQ_CREW::LRQ_CREW_24;
        }
        #derivation connection <'REQ-CREW-08>LRQ-CREW-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
            end #derive ::> LRQ_CREW::LRQ_CREW_25;
        }
        #derivation connection <'REQ-CREW-08>LRQ-CREW-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
            end #derive ::> LRQ_CREW::LRQ_CREW_26;
        }
        #derivation connection <'REQ-CREW-08>LRQ-CREW-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
            end #derive ::> LRQ_CREW::LRQ_CREW_27;
        }
        #derivation connection <'REQ-CREW-09>LRQ-CREW-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
            end #derive ::> LRQ_CREW::LRQ_CREW_27;
        }
        #derivation connection <'REQ-CREW-08>LRQ-CREW-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_08;
            end #derive ::> LRQ_CREW::LRQ_CREW_28;
        }
        #derivation connection <'REQ-CREW-09>LRQ-CREW-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
            end #derive ::> LRQ_CREW::LRQ_CREW_29;
        }
        #derivation connection <'REQ-CREW-09>LRQ-CREW-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CREW::REQ_CREW_09;
            end #derive ::> LRQ_CREW::LRQ_CREW_30;
        }
        #derivation connection <'REQ-CT-06>LRQ-CT-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
            end #derive ::> LRQ_CT::LRQ_CT_01;
        }
        #derivation connection <'REQ-CT-06>LRQ-CT-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
            end #derive ::> LRQ_CT::LRQ_CT_02;
        }
        #derivation connection <'REQ-CT-05>LRQ-CT-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> LRQ_CT::LRQ_CT_02;
        }
        #derivation connection <'REQ-CT-06>LRQ-CT-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
            end #derive ::> LRQ_CT::LRQ_CT_03;
        }
        #derivation connection <'REQ-CT-06>LRQ-CT-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_06;
            end #derive ::> LRQ_CT::LRQ_CT_04;
        }
        #derivation connection <'REQ-CT-07>LRQ-CT-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
            end #derive ::> LRQ_CT::LRQ_CT_05;
        }
        #derivation connection <'REQ-CT-07>LRQ-CT-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
            end #derive ::> LRQ_CT::LRQ_CT_06;
        }
        #derivation connection <'REQ-CT-07>LRQ-CT-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
            end #derive ::> LRQ_CT::LRQ_CT_07;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_07;
        }
        #derivation connection <'REQ-CT-07>LRQ-CT-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_07;
            end #derive ::> LRQ_CT::LRQ_CT_08;
        }
        #derivation connection <'REQ-CT-08>LRQ-CT-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> LRQ_CT::LRQ_CT_09;
        }
        #derivation connection <'REQ-CT-08>LRQ-CT-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> LRQ_CT::LRQ_CT_10;
        }
        #derivation connection <'REQ-CT-08>LRQ-CT-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> LRQ_CT::LRQ_CT_11;
        }
        #derivation connection <'REQ-CT-08>LRQ-CT-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> LRQ_CT::LRQ_CT_12;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_12;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_13;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_14;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_15;
        }
        #derivation connection <'REQ-CT-03>LRQ-CT-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_03;
            end #derive ::> LRQ_CT::LRQ_CT_16;
        }
        #derivation connection <'REQ-CT-04>LRQ-CT-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_04;
            end #derive ::> LRQ_CT::LRQ_CT_17;
        }
        #derivation connection <'REQ-CT-09>LRQ-CT-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
            end #derive ::> LRQ_CT::LRQ_CT_18;
        }
        #derivation connection <'REQ-CT-09>LRQ-CT-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
            end #derive ::> LRQ_CT::LRQ_CT_19;
        }
        #derivation connection <'REQ-CT-01>LRQ-CT-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> LRQ_CT::LRQ_CT_19;
        }
        #derivation connection <'REQ-CT-04>LRQ-CT-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_04;
            end #derive ::> LRQ_CT::LRQ_CT_20;
        }
        #derivation connection <'REQ-CT-09>LRQ-CT-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
            end #derive ::> LRQ_CT::LRQ_CT_21;
        }
        #derivation connection <'REQ-CT-08>LRQ-CT-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_08;
            end #derive ::> LRQ_CT::LRQ_CT_21;
        }
        #derivation connection <'REQ-CT-09>LRQ-CT-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_09;
            end #derive ::> LRQ_CT::LRQ_CT_22;
        }
        #derivation connection <'REQ-CT-01>LRQ-CT-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> LRQ_CT::LRQ_CT_23;
        }
        #derivation connection <'REQ-CT-01>LRQ-CT-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> LRQ_CT::LRQ_CT_24;
        }
        #derivation connection <'REQ-CT-01>LRQ-CT-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_01;
            end #derive ::> LRQ_CT::LRQ_CT_25;
        }
        #derivation connection <'REQ-CT-02>LRQ-CT-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_02;
            end #derive ::> LRQ_CT::LRQ_CT_26;
        }
        #derivation connection <'REQ-CT-05>LRQ-CT-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> LRQ_CT::LRQ_CT_27;
        }
        #derivation connection <'REQ-CT-05>LRQ-CT-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> LRQ_CT::LRQ_CT_28;
        }
        #derivation connection <'REQ-CT-05>LRQ-CT-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> LRQ_CT::LRQ_CT_29;
        }
        #derivation connection <'REQ-CT-05>LRQ-CT-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CT::REQ_CT_05;
            end #derive ::> LRQ_CT::LRQ_CT_30;
        }
        #derivation connection <'REQ-CW-01>LRQ-CW-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
            end #derive ::> LRQ_CW::LRQ_CW_01;
        }
        #derivation connection <'REQ-CW-01>LRQ-CW-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
            end #derive ::> LRQ_CW::LRQ_CW_02;
        }
        #derivation connection <'REQ-CW-01>LRQ-CW-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_01;
            end #derive ::> LRQ_CW::LRQ_CW_03;
        }
        #derivation connection <'REQ-CW-08>LRQ-CW-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> LRQ_CW::LRQ_CW_03;
        }
        #derivation connection <'REQ-CW-02>LRQ-CW-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_02;
            end #derive ::> LRQ_CW::LRQ_CW_04;
        }
        #derivation connection <'REQ-CW-06>LRQ-CW-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
            end #derive ::> LRQ_CW::LRQ_CW_05;
        }
        #derivation connection <'REQ-CW-06>LRQ-CW-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
            end #derive ::> LRQ_CW::LRQ_CW_06;
        }
        #derivation connection <'REQ-CW-06>LRQ-CW-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_06;
            end #derive ::> LRQ_CW::LRQ_CW_07;
        }
        #derivation connection <'REQ-CW-07>LRQ-CW-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_07;
            end #derive ::> LRQ_CW::LRQ_CW_08;
        }
        #derivation connection <'REQ-CW-07>LRQ-CW-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_07;
            end #derive ::> LRQ_CW::LRQ_CW_09;
        }
        #derivation connection <'REQ-CW-03>LRQ-CW-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> LRQ_CW::LRQ_CW_10;
        }
        #derivation connection <'REQ-CW-03>LRQ-CW-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> LRQ_CW::LRQ_CW_11;
        }
        #derivation connection <'REQ-CW-03>LRQ-CW-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> LRQ_CW::LRQ_CW_12;
        }
        #derivation connection <'REQ-CW-03>LRQ-CW-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> LRQ_CW::LRQ_CW_13;
        }
        #derivation connection <'REQ-CW-03>LRQ-CW-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_03;
            end #derive ::> LRQ_CW::LRQ_CW_14;
        }
        #derivation connection <'REQ-CW-04>LRQ-CW-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
            end #derive ::> LRQ_CW::LRQ_CW_15;
        }
        #derivation connection <'REQ-CW-04>LRQ-CW-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
            end #derive ::> LRQ_CW::LRQ_CW_16;
        }
        #derivation connection <'REQ-CW-04>LRQ-CW-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_04;
            end #derive ::> LRQ_CW::LRQ_CW_17;
        }
        #derivation connection <'REQ-CW-08>LRQ-CW-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> LRQ_CW::LRQ_CW_18;
        }
        #derivation connection <'REQ-CW-08>LRQ-CW-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> LRQ_CW::LRQ_CW_19;
        }
        #derivation connection <'REQ-CW-08>LRQ-CW-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> LRQ_CW::LRQ_CW_20;
        }
        #derivation connection <'REQ-CW-09>LRQ-CW-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_09;
            end #derive ::> LRQ_CW::LRQ_CW_20;
        }
        #derivation connection <'REQ-CW-08>LRQ-CW-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_08;
            end #derive ::> LRQ_CW::LRQ_CW_21;
        }
        #derivation connection <'REQ-CW-10>LRQ-CW-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_CW::REQ_CW_10;
            end #derive ::> LRQ_CW::LRQ_CW_22;
        }
        #derivation connection <'REQ-DPS-08>LRQ-DPS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> LRQ_DPS::LRQ_DPS_01;
        }
        #derivation connection <'REQ-DPS-08>LRQ-DPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> LRQ_DPS::LRQ_DPS_02;
        }
        #derivation connection <'REQ-DPS-09>LRQ-DPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
            end #derive ::> LRQ_DPS::LRQ_DPS_03;
        }
        #derivation connection <'REQ-DPS-07>LRQ-DPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> LRQ_DPS::LRQ_DPS_03;
        }
        #derivation connection <'REQ-DPS-08>LRQ-DPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_08;
            end #derive ::> LRQ_DPS::LRQ_DPS_04;
        }
        #derivation connection <'REQ-DPS-09>LRQ-DPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_09;
            end #derive ::> LRQ_DPS::LRQ_DPS_04;
        }
        #derivation connection <'REQ-DPS-06>LRQ-DPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> LRQ_DPS::LRQ_DPS_05;
        }
        #derivation connection <'REQ-DPS-07>LRQ-DPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> LRQ_DPS::LRQ_DPS_06;
        }
        #derivation connection <'REQ-DPS-06>LRQ-DPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> LRQ_DPS::LRQ_DPS_07;
        }
        #derivation connection <'REQ-DPS-07>LRQ-DPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_07;
            end #derive ::> LRQ_DPS::LRQ_DPS_08;
        }
        #derivation connection <'REQ-DPS-01>LRQ-DPS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
            end #derive ::> LRQ_DPS::LRQ_DPS_09;
        }
        #derivation connection <'REQ-DPS-05>LRQ-DPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
            end #derive ::> LRQ_DPS::LRQ_DPS_10;
        }
        #derivation connection <'REQ-DPS-05>LRQ-DPS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_05;
            end #derive ::> LRQ_DPS::LRQ_DPS_11;
        }
        #derivation connection <'REQ-DPS-04>LRQ-DPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
            end #derive ::> LRQ_DPS::LRQ_DPS_12;
        }
        #derivation connection <'REQ-DPS-03>LRQ-DPS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
            end #derive ::> LRQ_DPS::LRQ_DPS_13;
        }
        #derivation connection <'REQ-DPS-03>LRQ-DPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_03;
            end #derive ::> LRQ_DPS::LRQ_DPS_14;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_14;
        }
        #derivation connection <'REQ-DPS-01>LRQ-DPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
            end #derive ::> LRQ_DPS::LRQ_DPS_15;
        }
        #derivation connection <'REQ-DPS-01>LRQ-DPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
            end #derive ::> LRQ_DPS::LRQ_DPS_16;
        }
        #derivation connection <'REQ-DPS-06>LRQ-DPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> LRQ_DPS::LRQ_DPS_16;
        }
        #derivation connection <'REQ-DPS-01>LRQ-DPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
            end #derive ::> LRQ_DPS::LRQ_DPS_17;
        }
        #derivation connection <'REQ-DPS-04>LRQ-DPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_04;
            end #derive ::> LRQ_DPS::LRQ_DPS_17;
        }
        #derivation connection <'REQ-DPS-10>LRQ-DPS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_10;
            end #derive ::> LRQ_DPS::LRQ_DPS_18;
        }
        #derivation connection <'REQ-DPS-10>LRQ-DPS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_10;
            end #derive ::> LRQ_DPS::LRQ_DPS_19;
        }
        #derivation connection <'REQ-DPS-10>LRQ-DPS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_10;
            end #derive ::> LRQ_DPS::LRQ_DPS_20;
        }
        #derivation connection <'REQ-DPS-10>LRQ-DPS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_10;
            end #derive ::> LRQ_DPS::LRQ_DPS_21;
        }
        #derivation connection <'REQ-DPS-01>LRQ-DPS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_01;
            end #derive ::> LRQ_DPS::LRQ_DPS_21;
        }
        #derivation connection <'REQ-DPS-11>LRQ-DPS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
            end #derive ::> LRQ_DPS::LRQ_DPS_22;
        }
        #derivation connection <'REQ-DPS-11>LRQ-DPS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
            end #derive ::> LRQ_DPS::LRQ_DPS_23;
        }
        #derivation connection <'REQ-DPS-11>LRQ-DPS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
            end #derive ::> LRQ_DPS::LRQ_DPS_24;
        }
        #derivation connection <'REQ-DPS-11>LRQ-DPS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_11;
            end #derive ::> LRQ_DPS::LRQ_DPS_25;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_26;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_27;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_28;
        }
        #derivation connection <'REQ-DPS-13>LRQ-DPS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_13;
            end #derive ::> LRQ_DPS::LRQ_DPS_28;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_29;
        }
        #derivation connection <'REQ-DPS-06>LRQ-DPS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_06;
            end #derive ::> LRQ_DPS::LRQ_DPS_29;
        }
        #derivation connection <'REQ-DPS-12>LRQ-DPS-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_12;
            end #derive ::> LRQ_DPS::LRQ_DPS_30;
        }
        #derivation connection <'REQ-DPS-13>LRQ-DPS-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_DPS::REQ_DPS_13;
            end #derive ::> LRQ_DPS::LRQ_DPS_30;
        }
        #derivation connection <'REQ-EPS-10>LRQ-EPS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
            end #derive ::> LRQ_EPS::LRQ_EPS_01;
        }
        #derivation connection <'REQ-EPS-10>LRQ-EPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
            end #derive ::> LRQ_EPS::LRQ_EPS_02;
        }
        #derivation connection <'REQ-EPS-13>LRQ-EPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_13;
            end #derive ::> LRQ_EPS::LRQ_EPS_02;
        }
        #derivation connection <'REQ-EPS-10>LRQ-EPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_10;
            end #derive ::> LRQ_EPS::LRQ_EPS_03;
        }
        #derivation connection <'REQ-EPS-13>LRQ-EPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_13;
            end #derive ::> LRQ_EPS::LRQ_EPS_04;
        }
        #derivation connection <'REQ-EPS-18>LRQ-EPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
            end #derive ::> LRQ_EPS::LRQ_EPS_04;
        }
        #derivation connection <'REQ-EPS-03>LRQ-EPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
            end #derive ::> LRQ_EPS::LRQ_EPS_05;
        }
        #derivation connection <'REQ-EPS-20>LRQ-EPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_20;
            end #derive ::> LRQ_EPS::LRQ_EPS_06;
        }
        #derivation connection <'REQ-EPS-16>LRQ-EPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
            end #derive ::> LRQ_EPS::LRQ_EPS_07;
        }
        #derivation connection <'REQ-EPS-07>LRQ-EPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_07;
            end #derive ::> LRQ_EPS::LRQ_EPS_08;
        }
        #derivation connection <'REQ-EPS-15>LRQ-EPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_15;
            end #derive ::> LRQ_EPS::LRQ_EPS_08;
        }
        #derivation connection <'REQ-EPS-16>LRQ-EPS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_16;
            end #derive ::> LRQ_EPS::LRQ_EPS_09;
        }
        #derivation connection <'REQ-EPS-07>LRQ-EPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_07;
            end #derive ::> LRQ_EPS::LRQ_EPS_10;
        }
        #derivation connection <'REQ-EPS-03>LRQ-EPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
            end #derive ::> LRQ_EPS::LRQ_EPS_10;
        }
        #derivation connection <'REQ-EPS-17>LRQ-EPS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_17;
            end #derive ::> LRQ_EPS::LRQ_EPS_11;
        }
        #derivation connection <'REQ-EPS-06>LRQ-EPS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_06;
            end #derive ::> LRQ_EPS::LRQ_EPS_11;
        }
        #derivation connection <'REQ-EPS-19>LRQ-EPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_19;
            end #derive ::> LRQ_EPS::LRQ_EPS_12;
        }
        #derivation connection <'REQ-EPS-03>LRQ-EPS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_03;
            end #derive ::> LRQ_EPS::LRQ_EPS_13;
        }
        #derivation connection <'REQ-EPS-18>LRQ-EPS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_18;
            end #derive ::> LRQ_EPS::LRQ_EPS_13;
        }
        #derivation connection <'REQ-EPS-09>LRQ-EPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_09;
            end #derive ::> LRQ_EPS::LRQ_EPS_14;
        }
        #derivation connection <'REQ-EPS-09>LRQ-EPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_09;
            end #derive ::> LRQ_EPS::LRQ_EPS_15;
        }
        #derivation connection <'REQ-EPS-09>LRQ-EPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_09;
            end #derive ::> LRQ_EPS::LRQ_EPS_16;
        }
        #derivation connection <'REQ-EPS-08>LRQ-EPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_08;
            end #derive ::> LRQ_EPS::LRQ_EPS_16;
        }
        #derivation connection <'REQ-EPS-08>LRQ-EPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_08;
            end #derive ::> LRQ_EPS::LRQ_EPS_17;
        }
        #derivation connection <'REQ-EPS-08>LRQ-EPS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EPS::REQ_EPS_08;
            end #derive ::> LRQ_EPS::LRQ_EPS_18;
        }
        #derivation connection <'REQ-EVA-01>LRQ-EVA-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
            end #derive ::> LRQ_EVA::LRQ_EVA_01;
        }
        #derivation connection <'REQ-EVA-01>LRQ-EVA-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
            end #derive ::> LRQ_EVA::LRQ_EVA_02;
        }
        #derivation connection <'REQ-EVA-01>LRQ-EVA-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
            end #derive ::> LRQ_EVA::LRQ_EVA_03;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_03;
        }
        #derivation connection <'REQ-EVA-01>LRQ-EVA-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
            end #derive ::> LRQ_EVA::LRQ_EVA_04;
        }
        #derivation connection <'REQ-EVA-02>LRQ-EVA-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
            end #derive ::> LRQ_EVA::LRQ_EVA_05;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_06;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_07;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_08;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_09;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_09;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_10;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_11;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_12;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_13;
        }
        #derivation connection <'REQ-EVA-08>LRQ-EVA-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
            end #derive ::> LRQ_EVA::LRQ_EVA_13;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_14;
        }
        #derivation connection <'REQ-EVA-07>LRQ-EVA-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
            end #derive ::> LRQ_EVA::LRQ_EVA_15;
        }
        #derivation connection <'REQ-EVA-05>LRQ-EVA-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> LRQ_EVA::LRQ_EVA_16;
        }
        #derivation connection <'REQ-EVA-05>LRQ-EVA-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> LRQ_EVA::LRQ_EVA_17;
        }
        #derivation connection <'REQ-EVA-05>LRQ-EVA-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> LRQ_EVA::LRQ_EVA_18;
        }
        #derivation connection <'REQ-EVA-05>LRQ-EVA-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_05;
            end #derive ::> LRQ_EVA::LRQ_EVA_19;
        }
        #derivation connection <'REQ-EVA-02>LRQ-EVA-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
            end #derive ::> LRQ_EVA::LRQ_EVA_20;
        }
        #derivation connection <'REQ-EVA-02>LRQ-EVA-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_02;
            end #derive ::> LRQ_EVA::LRQ_EVA_21;
        }
        #derivation connection <'REQ-EVA-03>LRQ-EVA-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_03;
            end #derive ::> LRQ_EVA::LRQ_EVA_22;
        }
        #derivation connection <'REQ-EVA-01>LRQ-EVA-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_01;
            end #derive ::> LRQ_EVA::LRQ_EVA_22;
        }
        #derivation connection <'REQ-EVA-07>LRQ-EVA-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_07;
            end #derive ::> LRQ_EVA::LRQ_EVA_23;
        }
        #derivation connection <'REQ-EVA-08>LRQ-EVA-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
            end #derive ::> LRQ_EVA::LRQ_EVA_23;
        }
        #derivation connection <'REQ-EVA-08>LRQ-EVA-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_08;
            end #derive ::> LRQ_EVA::LRQ_EVA_24;
        }
        #derivation connection <'REQ-EVA-06>LRQ-EVA-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_06;
            end #derive ::> LRQ_EVA::LRQ_EVA_24;
        }
        #derivation connection <'REQ-EVA-04>LRQ-EVA-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> LRQ_EVA::LRQ_EVA_25;
        }
        #derivation connection <'REQ-EVA-04>LRQ-EVA-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> LRQ_EVA::LRQ_EVA_26;
        }
        #derivation connection <'REQ-EVA-04>LRQ-EVA-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> LRQ_EVA::LRQ_EVA_27;
        }
        #derivation connection <'REQ-EVA-04>LRQ-EVA-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> LRQ_EVA::LRQ_EVA_28;
        }
        #derivation connection <'REQ-EVA-04>LRQ-EVA-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_EVA::REQ_EVA_04;
            end #derive ::> LRQ_EVA::LRQ_EVA_29;
        }
        #derivation connection <'REQ-GNC-10>LRQ-GNC-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
            end #derive ::> LRQ_GNC::LRQ_GNC_01;
        }
        #derivation connection <'REQ-GNC-10>LRQ-GNC-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
            end #derive ::> LRQ_GNC::LRQ_GNC_02;
        }
        #derivation connection <'REQ-GNC-10>LRQ-GNC-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
            end #derive ::> LRQ_GNC::LRQ_GNC_03;
        }
        #derivation connection <'REQ-GNC-13>LRQ-GNC-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
            end #derive ::> LRQ_GNC::LRQ_GNC_03;
        }
        #derivation connection <'REQ-GNC-11>LRQ-GNC-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_11;
            end #derive ::> LRQ_GNC::LRQ_GNC_04;
        }
        #derivation connection <'REQ-GNC-12>LRQ-GNC-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_12;
            end #derive ::> LRQ_GNC::LRQ_GNC_05;
        }
        #derivation connection <'REQ-GNC-12>LRQ-GNC-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_12;
            end #derive ::> LRQ_GNC::LRQ_GNC_06;
        }
        #derivation connection <'REQ-GNC-12>LRQ-GNC-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_12;
            end #derive ::> LRQ_GNC::LRQ_GNC_07;
        }
        #derivation connection <'REQ-GNC-08>LRQ-GNC-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_08;
            end #derive ::> LRQ_GNC::LRQ_GNC_08;
        }
        #derivation connection <'REQ-GNC-08>LRQ-GNC-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_08;
            end #derive ::> LRQ_GNC::LRQ_GNC_09;
        }
        #derivation connection <'REQ-GNC-09>LRQ-GNC-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
            end #derive ::> LRQ_GNC::LRQ_GNC_10;
        }
        #derivation connection <'REQ-GNC-09>LRQ-GNC-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_09;
            end #derive ::> LRQ_GNC::LRQ_GNC_11;
        }
        #derivation connection <'REQ-GNC-05>LRQ-GNC-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_05;
            end #derive ::> LRQ_GNC::LRQ_GNC_12;
        }
        #derivation connection <'REQ-GNC-06>LRQ-GNC-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_06;
            end #derive ::> LRQ_GNC::LRQ_GNC_13;
        }
        #derivation connection <'REQ-GNC-07>LRQ-GNC-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_07;
            end #derive ::> LRQ_GNC::LRQ_GNC_14;
        }
        #derivation connection <'REQ-GNC-07>LRQ-GNC-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_07;
            end #derive ::> LRQ_GNC::LRQ_GNC_15;
        }
        #derivation connection <'REQ-GNC-01>LRQ-GNC-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
            end #derive ::> LRQ_GNC::LRQ_GNC_16;
        }
        #derivation connection <'REQ-GNC-01>LRQ-GNC-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_01;
            end #derive ::> LRQ_GNC::LRQ_GNC_17;
        }
        #derivation connection <'REQ-GNC-05>LRQ-GNC-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_05;
            end #derive ::> LRQ_GNC::LRQ_GNC_17;
        }
        #derivation connection <'REQ-GNC-02>LRQ-GNC-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
            end #derive ::> LRQ_GNC::LRQ_GNC_18;
        }
        #derivation connection <'REQ-GNC-02>LRQ-GNC-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_02;
            end #derive ::> LRQ_GNC::LRQ_GNC_19;
        }
        #derivation connection <'REQ-GNC-03>LRQ-GNC-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
            end #derive ::> LRQ_GNC::LRQ_GNC_20;
        }
        #derivation connection <'REQ-GNC-03>LRQ-GNC-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
            end #derive ::> LRQ_GNC::LRQ_GNC_21;
        }
        #derivation connection <'REQ-GNC-04>LRQ-GNC-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_04;
            end #derive ::> LRQ_GNC::LRQ_GNC_22;
        }
        #derivation connection <'REQ-GNC-03>LRQ-GNC-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_03;
            end #derive ::> LRQ_GNC::LRQ_GNC_23;
        }
        #derivation connection <'REQ-GNC-13>LRQ-GNC-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
            end #derive ::> LRQ_GNC::LRQ_GNC_24;
        }
        #derivation connection <'REQ-GNC-13>LRQ-GNC-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
            end #derive ::> LRQ_GNC::LRQ_GNC_25;
        }
        #derivation connection <'REQ-GNC-13>LRQ-GNC-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
            end #derive ::> LRQ_GNC::LRQ_GNC_26;
        }
        #derivation connection <'REQ-GNC-10>LRQ-GNC-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_10;
            end #derive ::> LRQ_GNC::LRQ_GNC_26;
        }
        #derivation connection <'REQ-GNC-13>LRQ-GNC-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_13;
            end #derive ::> LRQ_GNC::LRQ_GNC_27;
        }
        #derivation connection <'REQ-GNC-08>LRQ-GNC-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_GNC::REQ_GNC_08;
            end #derive ::> LRQ_GNC::LRQ_GNC_27;
        }
        #derivation connection <'REQ-MECH-01>LRQ-MECH-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> LRQ_MECH::LRQ_MECH_01;
        }
        #derivation connection <'REQ-MECH-01>LRQ-MECH-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> LRQ_MECH::LRQ_MECH_02;
        }
        #derivation connection <'REQ-MECH-01>LRQ-MECH-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> LRQ_MECH::LRQ_MECH_03;
        }
        #derivation connection <'REQ-MECH-02>LRQ-MECH-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_02;
            end #derive ::> LRQ_MECH::LRQ_MECH_04;
        }
        #derivation connection <'REQ-MECH-08>LRQ-MECH-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
            end #derive ::> LRQ_MECH::LRQ_MECH_05;
        }
        #derivation connection <'REQ-MECH-08>LRQ-MECH-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
            end #derive ::> LRQ_MECH::LRQ_MECH_06;
        }
        #derivation connection <'REQ-MECH-08>LRQ-MECH-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_08;
            end #derive ::> LRQ_MECH::LRQ_MECH_07;
        }
        #derivation connection <'REQ-MECH-09>LRQ-MECH-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_09;
            end #derive ::> LRQ_MECH::LRQ_MECH_08;
        }
        #derivation connection <'REQ-MECH-07>LRQ-MECH-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> LRQ_MECH::LRQ_MECH_09;
        }
        #derivation connection <'REQ-MECH-07>LRQ-MECH-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> LRQ_MECH::LRQ_MECH_10;
        }
        #derivation connection <'REQ-MECH-07>LRQ-MECH-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> LRQ_MECH::LRQ_MECH_11;
        }
        #derivation connection <'REQ-MECH-07>LRQ-MECH-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> LRQ_MECH::LRQ_MECH_12;
        }
        #derivation connection <'REQ-MECH-07>LRQ-MECH-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_07;
            end #derive ::> LRQ_MECH::LRQ_MECH_13;
        }
        #derivation connection <'REQ-MECH-04>LRQ-MECH-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
            end #derive ::> LRQ_MECH::LRQ_MECH_14;
        }
        #derivation connection <'REQ-MECH-01>LRQ-MECH-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> LRQ_MECH::LRQ_MECH_15;
        }
        #derivation connection <'REQ-MECH-02>LRQ-MECH-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_02;
            end #derive ::> LRQ_MECH::LRQ_MECH_15;
        }
        #derivation connection <'REQ-MECH-05>LRQ-MECH-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> LRQ_MECH::LRQ_MECH_16;
        }
        #derivation connection <'REQ-MECH-06>LRQ-MECH-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
            end #derive ::> LRQ_MECH::LRQ_MECH_17;
        }
        #derivation connection <'REQ-MECH-03>LRQ-MECH-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> LRQ_MECH::LRQ_MECH_18;
        }
        #derivation connection <'REQ-MECH-03>LRQ-MECH-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> LRQ_MECH::LRQ_MECH_19;
        }
        #derivation connection <'REQ-MECH-01>LRQ-MECH-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_01;
            end #derive ::> LRQ_MECH::LRQ_MECH_20;
        }
        #derivation connection <'REQ-MECH-03>LRQ-MECH-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> LRQ_MECH::LRQ_MECH_20;
        }
        #derivation connection <'REQ-MECH-03>LRQ-MECH-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> LRQ_MECH::LRQ_MECH_21;
        }
        #derivation connection <'REQ-MECH-04>LRQ-MECH-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_04;
            end #derive ::> LRQ_MECH::LRQ_MECH_21;
        }
        #derivation connection <'REQ-MECH-03>LRQ-MECH-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_03;
            end #derive ::> LRQ_MECH::LRQ_MECH_22;
        }
        #derivation connection <'REQ-MECH-05>LRQ-MECH-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> LRQ_MECH::LRQ_MECH_23;
        }
        #derivation connection <'REQ-MECH-05>LRQ-MECH-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> LRQ_MECH::LRQ_MECH_24;
        }
        #derivation connection <'REQ-MECH-05>LRQ-MECH-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_05;
            end #derive ::> LRQ_MECH::LRQ_MECH_25;
        }
        #derivation connection <'REQ-MECH-06>LRQ-MECH-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
            end #derive ::> LRQ_MECH::LRQ_MECH_26;
        }
        #derivation connection <'REQ-MECH-06>LRQ-MECH-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MECH::REQ_MECH_06;
            end #derive ::> LRQ_MECH::LRQ_MECH_27;
        }
        #derivation connection <'REQ-MPS-04>LRQ-MPS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> LRQ_MPS::LRQ_MPS_01;
        }
        #derivation connection <'REQ-MPS-04>LRQ-MPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> LRQ_MPS::LRQ_MPS_02;
        }
        #derivation connection <'REQ-MPS-05>LRQ-MPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_05;
            end #derive ::> LRQ_MPS::LRQ_MPS_03;
        }
        #derivation connection <'REQ-MPS-06>LRQ-MPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_06;
            end #derive ::> LRQ_MPS::LRQ_MPS_04;
        }
        #derivation connection <'REQ-MPS-10>LRQ-MPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> LRQ_MPS::LRQ_MPS_05;
        }
        #derivation connection <'REQ-MPS-10>LRQ-MPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> LRQ_MPS::LRQ_MPS_06;
        }
        #derivation connection <'REQ-MPS-10>LRQ-MPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> LRQ_MPS::LRQ_MPS_07;
        }
        #derivation connection <'REQ-MPS-10>LRQ-MPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> LRQ_MPS::LRQ_MPS_08;
        }
        #derivation connection <'REQ-MPS-10>LRQ-MPS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_10;
            end #derive ::> LRQ_MPS::LRQ_MPS_09;
        }
        #derivation connection <'REQ-MPS-11>LRQ-MPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> LRQ_MPS::LRQ_MPS_10;
        }
        #derivation connection <'REQ-MPS-11>LRQ-MPS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> LRQ_MPS::LRQ_MPS_11;
        }
        #derivation connection <'REQ-MPS-11>LRQ-MPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> LRQ_MPS::LRQ_MPS_12;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_12;
        }
        #derivation connection <'REQ-MPS-11>LRQ-MPS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> LRQ_MPS::LRQ_MPS_13;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_14;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_15;
        }
        #derivation connection <'REQ-MPS-04>LRQ-MPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> LRQ_MPS::LRQ_MPS_16;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_16;
        }
        #derivation connection <'REQ-MPS-11>LRQ-MPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_11;
            end #derive ::> LRQ_MPS::LRQ_MPS_17;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_17;
        }
        #derivation connection <'REQ-MPS-13>LRQ-MPS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_13;
            end #derive ::> LRQ_MPS::LRQ_MPS_18;
        }
        #derivation connection <'REQ-MPS-08>LRQ-MPS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
            end #derive ::> LRQ_MPS::LRQ_MPS_18;
        }
        #derivation connection <'REQ-MPS-07>LRQ-MPS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_07;
            end #derive ::> LRQ_MPS::LRQ_MPS_19;
        }
        #derivation connection <'REQ-MPS-08>LRQ-MPS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
            end #derive ::> LRQ_MPS::LRQ_MPS_20;
        }
        #derivation connection <'REQ-MPS-08>LRQ-MPS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_08;
            end #derive ::> LRQ_MPS::LRQ_MPS_21;
        }
        #derivation connection <'REQ-MPS-09>LRQ-MPS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_09;
            end #derive ::> LRQ_MPS::LRQ_MPS_22;
        }
        #derivation connection <'REQ-MPS-01>LRQ-MPS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_01;
            end #derive ::> LRQ_MPS::LRQ_MPS_23;
        }
        #derivation connection <'REQ-MPS-01>LRQ-MPS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_01;
            end #derive ::> LRQ_MPS::LRQ_MPS_24;
        }
        #derivation connection <'REQ-MPS-02>LRQ-MPS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_02;
            end #derive ::> LRQ_MPS::LRQ_MPS_24;
        }
        #derivation connection <'REQ-MPS-02>LRQ-MPS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_02;
            end #derive ::> LRQ_MPS::LRQ_MPS_25;
        }
        #derivation connection <'REQ-MPS-04>LRQ-MPS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> LRQ_MPS::LRQ_MPS_25;
        }
        #derivation connection <'REQ-MPS-02>LRQ-MPS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_02;
            end #derive ::> LRQ_MPS::LRQ_MPS_26;
        }
        #derivation connection <'REQ-MPS-06>LRQ-MPS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_06;
            end #derive ::> LRQ_MPS::LRQ_MPS_26;
        }
        #derivation connection <'REQ-MPS-12>LRQ-MPS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> LRQ_MPS::LRQ_MPS_27;
        }
        #derivation connection <'REQ-MPS-12>LRQ-MPS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> LRQ_MPS::LRQ_MPS_28;
        }
        #derivation connection <'REQ-MPS-12>LRQ-MPS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> LRQ_MPS::LRQ_MPS_29;
        }
        #derivation connection <'REQ-MPS-04>LRQ-MPS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_04;
            end #derive ::> LRQ_MPS::LRQ_MPS_29;
        }
        #derivation connection <'REQ-MPS-12>LRQ-MPS-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_MPS::REQ_MPS_12;
            end #derive ::> LRQ_MPS::LRQ_MPS_30;
        }
        #derivation connection <'REQ-OMS-01>LRQ-OMS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_01;
            end #derive ::> LRQ_OMS::LRQ_OMS_01;
        }
        #derivation connection <'REQ-OMS-03>LRQ-OMS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_03;
            end #derive ::> LRQ_OMS::LRQ_OMS_01;
        }
        #derivation connection <'REQ-OMS-01>LRQ-OMS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_01;
            end #derive ::> LRQ_OMS::LRQ_OMS_02;
        }
        #derivation connection <'REQ-OMS-02>LRQ-OMS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_02;
            end #derive ::> LRQ_OMS::LRQ_OMS_03;
        }
        #derivation connection <'REQ-OMS-03>LRQ-OMS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_03;
            end #derive ::> LRQ_OMS::LRQ_OMS_04;
        }
        #derivation connection <'REQ-OMS-04>LRQ-OMS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
            end #derive ::> LRQ_OMS::LRQ_OMS_05;
        }
        #derivation connection <'REQ-OMS-04>LRQ-OMS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
            end #derive ::> LRQ_OMS::LRQ_OMS_06;
        }
        #derivation connection <'REQ-OMS-04>LRQ-OMS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
            end #derive ::> LRQ_OMS::LRQ_OMS_07;
        }
        #derivation connection <'REQ-OMS-04>LRQ-OMS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_04;
            end #derive ::> LRQ_OMS::LRQ_OMS_08;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_09;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_10;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_11;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_12;
        }
        #derivation connection <'REQ-OMS-06>LRQ-OMS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_06;
            end #derive ::> LRQ_OMS::LRQ_OMS_13;
        }
        #derivation connection <'REQ-OMS-05>LRQ-OMS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_05;
            end #derive ::> LRQ_OMS::LRQ_OMS_14;
        }
        #derivation connection <'REQ-OMS-11>LRQ-OMS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_11;
            end #derive ::> LRQ_OMS::LRQ_OMS_14;
        }
        #derivation connection <'REQ-OMS-06>LRQ-OMS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_06;
            end #derive ::> LRQ_OMS::LRQ_OMS_15;
        }
        #derivation connection <'REQ-OMS-06>LRQ-OMS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_06;
            end #derive ::> LRQ_OMS::LRQ_OMS_16;
        }
        #derivation connection <'REQ-OMS-09>LRQ-OMS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_09;
            end #derive ::> LRQ_OMS::LRQ_OMS_17;
        }
        #derivation connection <'REQ-OMS-09>LRQ-OMS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_09;
            end #derive ::> LRQ_OMS::LRQ_OMS_18;
        }
        #derivation connection <'REQ-OMS-09>LRQ-OMS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_09;
            end #derive ::> LRQ_OMS::LRQ_OMS_19;
        }
        #derivation connection <'REQ-OMS-09>LRQ-OMS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_09;
            end #derive ::> LRQ_OMS::LRQ_OMS_20;
        }
        #derivation connection <'REQ-OMS-08>LRQ-OMS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
            end #derive ::> LRQ_OMS::LRQ_OMS_21;
        }
        #derivation connection <'REQ-OMS-08>LRQ-OMS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
            end #derive ::> LRQ_OMS::LRQ_OMS_22;
        }
        #derivation connection <'REQ-OMS-08>LRQ-OMS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
            end #derive ::> LRQ_OMS::LRQ_OMS_23;
        }
        #derivation connection <'REQ-OMS-08>LRQ-OMS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_08;
            end #derive ::> LRQ_OMS::LRQ_OMS_24;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_24;
        }
        #derivation connection <'REQ-OMS-07>LRQ-OMS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> LRQ_OMS::LRQ_OMS_25;
        }
        #derivation connection <'REQ-OMS-07>LRQ-OMS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> LRQ_OMS::LRQ_OMS_26;
        }
        #derivation connection <'REQ-OMS-07>LRQ-OMS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> LRQ_OMS::LRQ_OMS_27;
        }
        #derivation connection <'REQ-OMS-10>LRQ-OMS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_10;
            end #derive ::> LRQ_OMS::LRQ_OMS_27;
        }
        #derivation connection <'REQ-OMS-07>LRQ-OMS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> LRQ_OMS::LRQ_OMS_28;
        }
        #derivation connection <'REQ-OMS-07>LRQ-OMS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_OMS::REQ_OMS_07;
            end #derive ::> LRQ_OMS::LRQ_OMS_29;
        }
        #derivation connection <'REQ-PLS-02>LRQ-PLS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
            end #derive ::> LRQ_PLS::LRQ_PLS_01;
        }
        #derivation connection <'REQ-PLS-02>LRQ-PLS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
            end #derive ::> LRQ_PLS::LRQ_PLS_02;
        }
        #derivation connection <'REQ-PLS-01>LRQ-PLS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
            end #derive ::> LRQ_PLS::LRQ_PLS_03;
        }
        #derivation connection <'REQ-PLS-02>LRQ-PLS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_02;
            end #derive ::> LRQ_PLS::LRQ_PLS_04;
        }
        #derivation connection <'REQ-PLS-01>LRQ-PLS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_01;
            end #derive ::> LRQ_PLS::LRQ_PLS_05;
        }
        #derivation connection <'REQ-PLS-03>LRQ-PLS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> LRQ_PLS::LRQ_PLS_06;
        }
        #derivation connection <'REQ-PLS-04>LRQ-PLS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
            end #derive ::> LRQ_PLS::LRQ_PLS_07;
        }
        #derivation connection <'REQ-PLS-03>LRQ-PLS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> LRQ_PLS::LRQ_PLS_08;
        }
        #derivation connection <'REQ-PLS-04>LRQ-PLS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_04;
            end #derive ::> LRQ_PLS::LRQ_PLS_08;
        }
        #derivation connection <'REQ-PLS-03>LRQ-PLS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> LRQ_PLS::LRQ_PLS_09;
        }
        #derivation connection <'REQ-PLS-03>LRQ-PLS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_03;
            end #derive ::> LRQ_PLS::LRQ_PLS_10;
        }
        #derivation connection <'REQ-PLS-05>LRQ-PLS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
            end #derive ::> LRQ_PLS::LRQ_PLS_11;
        }
        #derivation connection <'REQ-PLS-05>LRQ-PLS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
            end #derive ::> LRQ_PLS::LRQ_PLS_12;
        }
        #derivation connection <'REQ-PLS-05>LRQ-PLS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
            end #derive ::> LRQ_PLS::LRQ_PLS_13;
        }
        #derivation connection <'REQ-PLS-05>LRQ-PLS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_05;
            end #derive ::> LRQ_PLS::LRQ_PLS_14;
        }
        #derivation connection <'REQ-PLS-07>LRQ-PLS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
            end #derive ::> LRQ_PLS::LRQ_PLS_15;
        }
        #derivation connection <'REQ-PLS-07>LRQ-PLS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
            end #derive ::> LRQ_PLS::LRQ_PLS_16;
        }
        #derivation connection <'REQ-PLS-07>LRQ-PLS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
            end #derive ::> LRQ_PLS::LRQ_PLS_17;
        }
        #derivation connection <'REQ-PLS-07>LRQ-PLS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
            end #derive ::> LRQ_PLS::LRQ_PLS_18;
        }
        #derivation connection <'REQ-PLS-07>LRQ-PLS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_07;
            end #derive ::> LRQ_PLS::LRQ_PLS_19;
        }
        #derivation connection <'REQ-PLS-08>LRQ-PLS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_08;
            end #derive ::> LRQ_PLS::LRQ_PLS_20;
        }
        #derivation connection <'REQ-PLS-09>LRQ-PLS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_09;
            end #derive ::> LRQ_PLS::LRQ_PLS_21;
        }
        #derivation connection <'REQ-PLS-09>LRQ-PLS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_09;
            end #derive ::> LRQ_PLS::LRQ_PLS_22;
        }
        #derivation connection <'REQ-PLS-08>LRQ-PLS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_08;
            end #derive ::> LRQ_PLS::LRQ_PLS_23;
        }
        #derivation connection <'REQ-PLS-06>LRQ-PLS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_06;
            end #derive ::> LRQ_PLS::LRQ_PLS_24;
        }
        #derivation connection <'REQ-PLS-06>LRQ-PLS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_06;
            end #derive ::> LRQ_PLS::LRQ_PLS_25;
        }
        #derivation connection <'REQ-PLS-06>LRQ-PLS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_06;
            end #derive ::> LRQ_PLS::LRQ_PLS_26;
        }
        #derivation connection <'REQ-PLS-06>LRQ-PLS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_PLS::REQ_PLS_06;
            end #derive ::> LRQ_PLS::LRQ_PLS_27;
        }
        #derivation connection <'REQ-RCS-01>LRQ-RCS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
            end #derive ::> LRQ_RCS::LRQ_RCS_01;
        }
        #derivation connection <'REQ-RCS-01>LRQ-RCS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
            end #derive ::> LRQ_RCS::LRQ_RCS_02;
        }
        #derivation connection <'REQ-RCS-01>LRQ-RCS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
            end #derive ::> LRQ_RCS::LRQ_RCS_03;
        }
        #derivation connection <'REQ-RCS-01>LRQ-RCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_01;
            end #derive ::> LRQ_RCS::LRQ_RCS_04;
        }
        #derivation connection <'REQ-RCS-10>LRQ-RCS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_10;
            end #derive ::> LRQ_RCS::LRQ_RCS_04;
        }
        #derivation connection <'REQ-RCS-07>LRQ-RCS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> LRQ_RCS::LRQ_RCS_05;
        }
        #derivation connection <'REQ-RCS-07>LRQ-RCS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> LRQ_RCS::LRQ_RCS_06;
        }
        #derivation connection <'REQ-RCS-07>LRQ-RCS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> LRQ_RCS::LRQ_RCS_07;
        }
        #derivation connection <'REQ-RCS-07>LRQ-RCS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> LRQ_RCS::LRQ_RCS_08;
        }
        #derivation connection <'REQ-RCS-07>LRQ-RCS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_07;
            end #derive ::> LRQ_RCS::LRQ_RCS_09;
        }
        #derivation connection <'REQ-RCS-04>LRQ-RCS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
            end #derive ::> LRQ_RCS::LRQ_RCS_10;
        }
        #derivation connection <'REQ-RCS-04>LRQ-RCS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
            end #derive ::> LRQ_RCS::LRQ_RCS_11;
        }
        #derivation connection <'REQ-RCS-05>LRQ-RCS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_05;
            end #derive ::> LRQ_RCS::LRQ_RCS_12;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_12;
        }
        #derivation connection <'REQ-RCS-05>LRQ-RCS-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_05;
            end #derive ::> LRQ_RCS::LRQ_RCS_13;
        }
        #derivation connection <'REQ-RCS-09>LRQ-RCS-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
            end #derive ::> LRQ_RCS::LRQ_RCS_14;
        }
        #derivation connection <'REQ-RCS-04>LRQ-RCS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_04;
            end #derive ::> LRQ_RCS::LRQ_RCS_15;
        }
        #derivation connection <'REQ-RCS-09>LRQ-RCS-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
            end #derive ::> LRQ_RCS::LRQ_RCS_15;
        }
        #derivation connection <'REQ-RCS-10>LRQ-RCS-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_10;
            end #derive ::> LRQ_RCS::LRQ_RCS_16;
        }
        #derivation connection <'REQ-RCS-10>LRQ-RCS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_10;
            end #derive ::> LRQ_RCS::LRQ_RCS_17;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_17;
        }
        #derivation connection <'REQ-RCS-09>LRQ-RCS-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
            end #derive ::> LRQ_RCS::LRQ_RCS_18;
        }
        #derivation connection <'REQ-RCS-02>LRQ-RCS-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_02;
            end #derive ::> LRQ_RCS::LRQ_RCS_19;
        }
        #derivation connection <'REQ-RCS-02>LRQ-RCS-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_02;
            end #derive ::> LRQ_RCS::LRQ_RCS_20;
        }
        #derivation connection <'REQ-RCS-02>LRQ-RCS-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_02;
            end #derive ::> LRQ_RCS::LRQ_RCS_21;
        }
        #derivation connection <'REQ-RCS-03>LRQ-RCS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_03;
            end #derive ::> LRQ_RCS::LRQ_RCS_22;
        }
        #derivation connection <'REQ-RCS-09>LRQ-RCS-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_09;
            end #derive ::> LRQ_RCS::LRQ_RCS_22;
        }
        #derivation connection <'REQ-RCS-06>LRQ-RCS-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> LRQ_RCS::LRQ_RCS_23;
        }
        #derivation connection <'REQ-RCS-06>LRQ-RCS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> LRQ_RCS::LRQ_RCS_24;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_24;
        }
        #derivation connection <'REQ-RCS-06>LRQ-RCS-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_06;
            end #derive ::> LRQ_RCS::LRQ_RCS_25;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_26;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_27;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_28;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_29;
        }
        #derivation connection <'REQ-RCS-08>LRQ-RCS-30'> {
            end #original ::> SSD_RQM_SYS_001::REQ_RCS::REQ_RCS_08;
            end #derive ::> LRQ_RCS::LRQ_RCS_30;
        }
        #derivation connection <'REQ-STR-06>LRQ-STR-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> LRQ_STR::LRQ_STR_01;
        }
        #derivation connection <'REQ-STR-06>LRQ-STR-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> LRQ_STR::LRQ_STR_02;
        }
        #derivation connection <'REQ-STR-06>LRQ-STR-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> LRQ_STR::LRQ_STR_03;
        }
        #derivation connection <'REQ-STR-06>LRQ-STR-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> LRQ_STR::LRQ_STR_04;
        }
        #derivation connection <'REQ-STR-06>LRQ-STR-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_06;
            end #derive ::> LRQ_STR::LRQ_STR_05;
        }
        #derivation connection <'REQ-STR-03>LRQ-STR-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_03;
            end #derive ::> LRQ_STR::LRQ_STR_06;
        }
        #derivation connection <'REQ-STR-03>LRQ-STR-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_03;
            end #derive ::> LRQ_STR::LRQ_STR_07;
        }
        #derivation connection <'REQ-STR-03>LRQ-STR-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_03;
            end #derive ::> LRQ_STR::LRQ_STR_08;
        }
        #derivation connection <'REQ-STR-04>LRQ-STR-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> LRQ_STR::LRQ_STR_09;
        }
        #derivation connection <'REQ-STR-04>LRQ-STR-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> LRQ_STR::LRQ_STR_10;
        }
        #derivation connection <'REQ-STR-01>LRQ-STR-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_01;
            end #derive ::> LRQ_STR::LRQ_STR_11;
        }
        #derivation connection <'REQ-STR-01>LRQ-STR-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_01;
            end #derive ::> LRQ_STR::LRQ_STR_12;
        }
        #derivation connection <'REQ-STR-02>LRQ-STR-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_02;
            end #derive ::> LRQ_STR::LRQ_STR_13;
        }
        #derivation connection <'REQ-STR-02>LRQ-STR-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_02;
            end #derive ::> LRQ_STR::LRQ_STR_14;
        }
        #derivation connection <'REQ-STR-05>LRQ-STR-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
            end #derive ::> LRQ_STR::LRQ_STR_15;
        }
        #derivation connection <'REQ-STR-05>LRQ-STR-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
            end #derive ::> LRQ_STR::LRQ_STR_16;
        }
        #derivation connection <'REQ-STR-05>LRQ-STR-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
            end #derive ::> LRQ_STR::LRQ_STR_17;
        }
        #derivation connection <'REQ-STR-05>LRQ-STR-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
            end #derive ::> LRQ_STR::LRQ_STR_18;
        }
        #derivation connection <'REQ-STR-05>LRQ-STR-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_05;
            end #derive ::> LRQ_STR::LRQ_STR_19;
        }
        #derivation connection <'REQ-STR-04>LRQ-STR-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> LRQ_STR::LRQ_STR_20;
        }
        #derivation connection <'REQ-STR-04>LRQ-STR-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> LRQ_STR::LRQ_STR_21;
        }
        #derivation connection <'REQ-STR-04>LRQ-STR-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_04;
            end #derive ::> LRQ_STR::LRQ_STR_22;
        }
        #derivation connection <'REQ-STR-08>LRQ-STR-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_08;
            end #derive ::> LRQ_STR::LRQ_STR_23;
        }
        #derivation connection <'REQ-STR-07>LRQ-STR-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
            end #derive ::> LRQ_STR::LRQ_STR_24;
        }
        #derivation connection <'REQ-STR-07>LRQ-STR-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
            end #derive ::> LRQ_STR::LRQ_STR_25;
        }
        #derivation connection <'REQ-STR-07>LRQ-STR-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
            end #derive ::> LRQ_STR::LRQ_STR_26;
        }
        #derivation connection <'REQ-STR-07>LRQ-STR-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
            end #derive ::> LRQ_STR::LRQ_STR_27;
        }
        #derivation connection <'REQ-STR-07>LRQ-STR-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_STR::REQ_STR_07;
            end #derive ::> LRQ_STR::LRQ_STR_28;
        }
        #derivation connection <'REQ-TPS-02>LRQ-TPS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
            end #derive ::> LRQ_TPS::LRQ_TPS_01;
        }
        #derivation connection <'REQ-TPS-01>LRQ-TPS-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
            end #derive ::> LRQ_TPS::LRQ_TPS_01;
        }
        #derivation connection <'REQ-TPS-02>LRQ-TPS-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
            end #derive ::> LRQ_TPS::LRQ_TPS_02;
        }
        #derivation connection <'REQ-TPS-02>LRQ-TPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
            end #derive ::> LRQ_TPS::LRQ_TPS_03;
        }
        #derivation connection <'REQ-TPS-01>LRQ-TPS-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_01;
            end #derive ::> LRQ_TPS::LRQ_TPS_03;
        }
        #derivation connection <'REQ-TPS-02>LRQ-TPS-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_02;
            end #derive ::> LRQ_TPS::LRQ_TPS_04;
        }
        #derivation connection <'REQ-TPS-07>LRQ-TPS-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_07;
            end #derive ::> LRQ_TPS::LRQ_TPS_05;
        }
        #derivation connection <'REQ-TPS-03>LRQ-TPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_03;
            end #derive ::> LRQ_TPS::LRQ_TPS_06;
        }
        #derivation connection <'REQ-TPS-07>LRQ-TPS-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_07;
            end #derive ::> LRQ_TPS::LRQ_TPS_06;
        }
        #derivation connection <'REQ-TPS-03>LRQ-TPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_03;
            end #derive ::> LRQ_TPS::LRQ_TPS_07;
        }
        #derivation connection <'REQ-TPS-04>LRQ-TPS-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_04;
            end #derive ::> LRQ_TPS::LRQ_TPS_07;
        }
        #derivation connection <'REQ-TPS-04>LRQ-TPS-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_04;
            end #derive ::> LRQ_TPS::LRQ_TPS_08;
        }
        #derivation connection <'REQ-TPS-04>LRQ-TPS-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_04;
            end #derive ::> LRQ_TPS::LRQ_TPS_09;
        }
        #derivation connection <'REQ-TPS-05>LRQ-TPS-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_05;
            end #derive ::> LRQ_TPS::LRQ_TPS_10;
        }
        #derivation connection <'REQ-TPS-06>LRQ-TPS-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_06;
            end #derive ::> LRQ_TPS::LRQ_TPS_11;
        }
        #derivation connection <'REQ-TPS-06>LRQ-TPS-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_TPS::REQ_TPS_06;
            end #derive ::> LRQ_TPS::LRQ_TPS_12;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_01;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_02;
        }
        #derivation connection <'REQ-ET-05>LRQ-ET-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> LRQ_ET::LRQ_ET_02;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_03;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_04;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_05;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_06;
        }
        #derivation connection <'REQ-ET-03>LRQ-ET-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_03;
            end #derive ::> LRQ_ET::LRQ_ET_06;
        }
        #derivation connection <'REQ-ET-01>LRQ-ET-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> LRQ_ET::LRQ_ET_07;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_07;
        }
        #derivation connection <'REQ-ET-04>LRQ-ET-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_04;
            end #derive ::> LRQ_ET::LRQ_ET_08;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_09;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_10;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_11;
        }
        #derivation connection <'REQ-ET-01>LRQ-ET-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_01;
            end #derive ::> LRQ_ET::LRQ_ET_12;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_13;
        }
        #derivation connection <'REQ-ET-02>LRQ-ET-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_02;
            end #derive ::> LRQ_ET::LRQ_ET_14;
        }
        #derivation connection <'REQ-ET-08>LRQ-ET-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> LRQ_ET::LRQ_ET_15;
        }
        #derivation connection <'REQ-ET-08>LRQ-ET-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> LRQ_ET::LRQ_ET_16;
        }
        #derivation connection <'REQ-ET-08>LRQ-ET-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> LRQ_ET::LRQ_ET_17;
        }
        #derivation connection <'REQ-ET-08>LRQ-ET-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_08;
            end #derive ::> LRQ_ET::LRQ_ET_18;
        }
        #derivation connection <'REQ-ET-09>LRQ-ET-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_09;
            end #derive ::> LRQ_ET::LRQ_ET_19;
        }
        #derivation connection <'REQ-ET-07>LRQ-ET-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> LRQ_ET::LRQ_ET_20;
        }
        #derivation connection <'REQ-ET-07>LRQ-ET-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> LRQ_ET::LRQ_ET_21;
        }
        #derivation connection <'REQ-ET-07>LRQ-ET-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> LRQ_ET::LRQ_ET_22;
        }
        #derivation connection <'REQ-ET-07>LRQ-ET-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> LRQ_ET::LRQ_ET_23;
        }
        #derivation connection <'REQ-ET-07>LRQ-ET-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_07;
            end #derive ::> LRQ_ET::LRQ_ET_24;
        }
        #derivation connection <'REQ-ET-05>LRQ-ET-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> LRQ_ET::LRQ_ET_25;
        }
        #derivation connection <'REQ-ET-05>LRQ-ET-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> LRQ_ET::LRQ_ET_26;
        }
        #derivation connection <'REQ-ET-05>LRQ-ET-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> LRQ_ET::LRQ_ET_27;
        }
        #derivation connection <'REQ-ET-05>LRQ-ET-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_05;
            end #derive ::> LRQ_ET::LRQ_ET_28;
        }
        #derivation connection <'REQ-ET-06>LRQ-ET-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_ET::REQ_ET_06;
            end #derive ::> LRQ_ET::LRQ_ET_29;
        }
        #derivation connection <'REQ-SRB-08>LRQ-SRB-01'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
            end #derive ::> LRQ_SRB::LRQ_SRB_01;
        }
        #derivation connection <'REQ-SRB-08>LRQ-SRB-02'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
            end #derive ::> LRQ_SRB::LRQ_SRB_02;
        }
        #derivation connection <'REQ-SRB-08>LRQ-SRB-03'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
            end #derive ::> LRQ_SRB::LRQ_SRB_03;
        }
        #derivation connection <'REQ-SRB-08>LRQ-SRB-04'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
            end #derive ::> LRQ_SRB::LRQ_SRB_04;
        }
        #derivation connection <'REQ-SRB-08>LRQ-SRB-05'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_08;
            end #derive ::> LRQ_SRB::LRQ_SRB_05;
        }
        #derivation connection <'REQ-SRB-06>LRQ-SRB-06'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_06;
            end #derive ::> LRQ_SRB::LRQ_SRB_06;
        }
        #derivation connection <'REQ-SRB-06>LRQ-SRB-07'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_06;
            end #derive ::> LRQ_SRB::LRQ_SRB_07;
        }
        #derivation connection <'REQ-SRB-07>LRQ-SRB-08'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_07;
            end #derive ::> LRQ_SRB::LRQ_SRB_08;
        }
        #derivation connection <'REQ-SRB-07>LRQ-SRB-09'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_07;
            end #derive ::> LRQ_SRB::LRQ_SRB_09;
        }
        #derivation connection <'REQ-SRB-03>LRQ-SRB-10'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
            end #derive ::> LRQ_SRB::LRQ_SRB_10;
        }
        #derivation connection <'REQ-SRB-03>LRQ-SRB-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
            end #derive ::> LRQ_SRB::LRQ_SRB_11;
        }
        #derivation connection <'REQ-SRB-04>LRQ-SRB-11'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> LRQ_SRB::LRQ_SRB_11;
        }
        #derivation connection <'REQ-SRB-04>LRQ-SRB-12'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> LRQ_SRB::LRQ_SRB_12;
        }
        #derivation connection <'REQ-SRB-04>LRQ-SRB-13'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_04;
            end #derive ::> LRQ_SRB::LRQ_SRB_13;
        }
        #derivation connection <'REQ-SRB-03>LRQ-SRB-14'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_03;
            end #derive ::> LRQ_SRB::LRQ_SRB_14;
        }
        #derivation connection <'REQ-SRB-01>LRQ-SRB-15'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
            end #derive ::> LRQ_SRB::LRQ_SRB_15;
        }
        #derivation connection <'REQ-SRB-01>LRQ-SRB-16'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
            end #derive ::> LRQ_SRB::LRQ_SRB_16;
        }
        #derivation connection <'REQ-SRB-01>LRQ-SRB-17'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
            end #derive ::> LRQ_SRB::LRQ_SRB_17;
        }
        #derivation connection <'REQ-SRB-01>LRQ-SRB-18'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_01;
            end #derive ::> LRQ_SRB::LRQ_SRB_18;
        }
        #derivation connection <'REQ-SRB-02>LRQ-SRB-19'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_02;
            end #derive ::> LRQ_SRB::LRQ_SRB_19;
        }
        #derivation connection <'REQ-SRB-05>LRQ-SRB-20'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> LRQ_SRB::LRQ_SRB_20;
        }
        #derivation connection <'REQ-SRB-05>LRQ-SRB-21'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> LRQ_SRB::LRQ_SRB_21;
        }
        #derivation connection <'REQ-SRB-05>LRQ-SRB-22'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> LRQ_SRB::LRQ_SRB_22;
        }
        #derivation connection <'REQ-SRB-05>LRQ-SRB-23'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> LRQ_SRB::LRQ_SRB_23;
        }
        #derivation connection <'REQ-SRB-05>LRQ-SRB-24'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_05;
            end #derive ::> LRQ_SRB::LRQ_SRB_24;
        }
        #derivation connection <'REQ-SRB-09>LRQ-SRB-25'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
            end #derive ::> LRQ_SRB::LRQ_SRB_25;
        }
        #derivation connection <'REQ-SRB-09>LRQ-SRB-26'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
            end #derive ::> LRQ_SRB::LRQ_SRB_26;
        }
        #derivation connection <'REQ-SRB-09>LRQ-SRB-27'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
            end #derive ::> LRQ_SRB::LRQ_SRB_27;
        }
        #derivation connection <'REQ-SRB-09>LRQ-SRB-28'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
            end #derive ::> LRQ_SRB::LRQ_SRB_28;
        }
        #derivation connection <'REQ-SRB-09>LRQ-SRB-29'> {
            end #original ::> SSD_RQM_SYS_001::REQ_SRB::REQ_SRB_09;
            end #derive ::> LRQ_SRB::LRQ_SRB_29;
        }
    }
    // ---- 充足（割付先の機能行を持つ機能説明書の部品）
    package Satisfaction {
        satisfy LRQ_APU::LRQ_APU_01 by context.sts.orb.apu.cir { doc /* 割付先：F-APU-CIR-01 */ }
        satisfy LRQ_APU::LRQ_APU_02 by context.sts.orb.apu.cir { doc /* 割付先：F-APU-CIR-06・F-APU-CIR-08 */ }
        satisfy LRQ_APU::LRQ_APU_03 by context.sts.orb.apu.cir { doc /* 割付先：F-APU-CIR-10・F-APU-CIR-12 */ }
        satisfy LRQ_APU::LRQ_APU_04 by context.sts.orb.apu.cir { doc /* 割付先：F-APU-CIR-09・F-APU-CIR-04 */ }
        satisfy LRQ_APU::LRQ_APU_05 by context.sts.orb.apu.ctl { doc /* 割付先：F-APU-CTL-01 */ }
        satisfy LRQ_APU::LRQ_APU_06 by context.sts.orb.apu.ctl { doc /* 割付先：F-APU-CTL-04・F-APU-CTL-06 */ }
        satisfy LRQ_APU::LRQ_APU_07 by context.sts.orb.apu.ctl { doc /* 割付先：F-APU-CTL-08・F-APU-CTL-09 */ }
        satisfy LRQ_APU::LRQ_APU_08 by context.sts.orb.apu.ctl { doc /* 割付先：F-APU-CTL-05・F-APU-CTL-12 */ }
        satisfy LRQ_APU::LRQ_APU_09 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-06 */ }
        satisfy LRQ_APU::LRQ_APU_10 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-07・F-APU-FUL-08 */ }
        satisfy LRQ_APU::LRQ_APU_11 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-09 */ }
        satisfy LRQ_APU::LRQ_APU_12 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-10 */ }
        satisfy LRQ_APU::LRQ_APU_13 by context.sts.orb.apu.hyd { doc /* 割付先：F-APU-HYD-02・F-APU-HYD-03 */ }
        satisfy LRQ_APU::LRQ_APU_14 by context.sts.orb.apu.hyd { doc /* 割付先：F-APU-HYD-04・F-APU-HYD-06 */ }
        satisfy LRQ_APU::LRQ_APU_15 by context.sts.orb.apu.hyd { doc /* 割付先：F-APU-HYD-07・F-APU-HYD-08 */ }
        satisfy LRQ_APU::LRQ_APU_16 by context.sts.orb.apu.hyd { doc /* 割付先：F-APU-HYD-11・F-APU-HYD-13 */ }
        satisfy LRQ_APU::LRQ_APU_17 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-01・F-APU-OPS-02 */ }
        satisfy LRQ_APU::LRQ_APU_18 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-03 */ }
        satisfy LRQ_APU::LRQ_APU_19 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-04 */ }
        satisfy LRQ_APU::LRQ_APU_20 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-05 */ }
        satisfy LRQ_APU::LRQ_APU_21 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-10 */ }
        satisfy LRQ_APU::LRQ_APU_22 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-12 */ }
        satisfy LRQ_APU::LRQ_APU_23 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-08・F-APU-TRB-09 */ }
        satisfy LRQ_APU::LRQ_APU_24 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-10 */ }
        satisfy LRQ_APU::LRQ_APU_25 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-11・F-APU-TRB-07 */ }
        satisfy LRQ_APU::LRQ_APU_26 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-12・F-APU-TRB-13 */ }
        satisfy LRQ_APU::LRQ_APU_27 by context.sts.orb.apu.wsb { doc /* 割付先：F-APU-WSB-07・F-APU-WSB-13 */ }
        satisfy LRQ_APU::LRQ_APU_28 by context.sts.orb.apu.wsb { doc /* 割付先：F-APU-WSB-08 */ }
        satisfy LRQ_APU::LRQ_APU_29 by context.sts.orb.apu.wsb { doc /* 割付先：F-APU-WSB-09・F-APU-WSB-10 */ }
        satisfy LRQ_APU::LRQ_APU_30 by context.sts.orb.apu.wsb { doc /* 割付先：F-APU-WSB-12 */ }
        satisfy LRQ_CREW::LRQ_CREW_01 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-04・F-CREW-HAB-05 */ }
        satisfy LRQ_CREW::LRQ_CREW_02 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-01・F-CREW-HAB-02 */ }
        satisfy LRQ_CREW::LRQ_CREW_03 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-06 */ }
        satisfy LRQ_CREW::LRQ_CREW_04 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-07 */ }
        satisfy LRQ_CREW::LRQ_CREW_05 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-08 */ }
        satisfy LRQ_CREW::LRQ_CREW_06 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-02 */ }
        satisfy LRQ_CREW::LRQ_CREW_07 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-03 */ }
        satisfy LRQ_CREW::LRQ_CREW_08 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-01 */ }
        satisfy LRQ_CREW::LRQ_CREW_09 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-05・F-CREW-LTG-07 */ }
        satisfy LRQ_CREW::LRQ_CREW_10 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-04・F-CREW-LTG-06 */ }
        satisfy LRQ_CREW::LRQ_CREW_11 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-01・F-CREW-MED-02 */ }
        satisfy LRQ_CREW::LRQ_CREW_12 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-03・F-CREW-MED-04 */ }
        satisfy LRQ_CREW::LRQ_CREW_13 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-05 */ }
        satisfy LRQ_CREW::LRQ_CREW_14 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-06 */ }
        satisfy LRQ_CREW::LRQ_CREW_15 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-07 */ }
        satisfy LRQ_CREW::LRQ_CREW_16 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-01 */ }
        satisfy LRQ_CREW::LRQ_CREW_17 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-07・F-CREW-OPS-02 */ }
        satisfy LRQ_CREW::LRQ_CREW_18 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-02 */ }
        satisfy LRQ_CREW::LRQ_CREW_19 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-04 */ }
        satisfy LRQ_CREW::LRQ_CREW_20 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-05・F-CREW-OPS-08 */ }
        satisfy LRQ_CREW::LRQ_CREW_21 by context.sts.orb.crew.stw { doc /* 割付先：F-CREW-STW-02・F-CREW-STW-03 */ }
        satisfy LRQ_CREW::LRQ_CREW_22 by context.sts.orb.crew.stw { doc /* 割付先：F-CREW-STW-05 */ }
        satisfy LRQ_CREW::LRQ_CREW_23 by context.sts.orb.crew.stw { doc /* 割付先：F-CREW-STW-06 */ }
        satisfy LRQ_CREW::LRQ_CREW_24 by context.sts.orb.crew.stw { doc /* 割付先：F-CREW-STW-07・F-CREW-STW-01 */ }
        satisfy LRQ_CREW::LRQ_CREW_25 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-03 */ }
        satisfy LRQ_CREW::LRQ_CREW_26 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-04 */ }
        satisfy LRQ_CREW::LRQ_CREW_27 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-05・F-CREW-ESC-09 */ }
        satisfy LRQ_CREW::LRQ_CREW_28 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-02・F-CREW-ESC-06 */ }
        satisfy LRQ_CREW::LRQ_CREW_29 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-07 */ }
        satisfy LRQ_CREW::LRQ_CREW_30 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-08 */ }
        satisfy LRQ_CT::LRQ_CT_01 by context.sts.orb.ct.aud { doc /* 割付先：F-CT-AUD-05・F-CT-AUD-06 */ }
        satisfy LRQ_CT::LRQ_CT_02 by context.sts.orb.ct.aud { doc /* 割付先：F-CT-AUD-04・F-CT-AUD-11 */ }
        satisfy LRQ_CT::LRQ_CT_03 by context.sts.orb.ct.aud { doc /* 割付先：F-CT-AUD-07・F-CT-AUD-12 */ }
        satisfy LRQ_CT::LRQ_CT_04 by context.sts.orb.ct.aud { doc /* 割付先：F-CT-AUD-08・F-CT-AUD-10 */ }
        satisfy LRQ_CT::LRQ_CT_05 by context.sts.orb.ct.cctv { doc /* 割付先：F-CT-CCTV-03・F-CT-CCTV-10 */ }
        satisfy LRQ_CT::LRQ_CT_06 by context.sts.orb.ct.cctv { doc /* 割付先：F-CT-CCTV-05・F-CT-CCTV-07 */ }
        satisfy LRQ_CT::LRQ_CT_07 by context.sts.orb.ct.cctv { doc /* 割付先：F-CT-CCTV-12・F-CT-CCTV-01 */ }
        satisfy LRQ_CT::LRQ_CT_08 by context.sts.orb.ct.cctv { doc /* 割付先：F-CT-CCTV-08・F-CT-CCTV-09 */ }
        satisfy LRQ_CT::LRQ_CT_09 by context.sts.orb.ct.inst { doc /* 割付先：F-CT-INST-03・F-CT-INST-04 */ }
        satisfy LRQ_CT::LRQ_CT_10 by context.sts.orb.ct.inst { doc /* 割付先：F-CT-INST-05・F-CT-INST-07・F-CT-INST-08 */ }
        satisfy LRQ_CT::LRQ_CT_11 by context.sts.orb.ct.inst { doc /* 割付先：F-CT-INST-12・F-CT-INST-10 */ }
        satisfy LRQ_CT::LRQ_CT_12 by context.sts.orb.ct.inst { doc /* 割付先：F-CT-INST-11・F-CT-INST-10 */ }
        satisfy LRQ_CT::LRQ_CT_13 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-03・F-CT-KU-04 */ }
        satisfy LRQ_CT::LRQ_CT_14 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-02・F-CT-KU-05 */ }
        satisfy LRQ_CT::LRQ_CT_15 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-06・F-CT-KU-07 */ }
        satisfy LRQ_CT::LRQ_CT_16 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-10・F-CT-KU-11・F-CT-KU-12 */ }
        satisfy LRQ_CT::LRQ_CT_17 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-08・F-CT-KU-09 */ }
        satisfy LRQ_CT::LRQ_CT_18 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-05・F-CT-OPS-02 */ }
        satisfy LRQ_CT::LRQ_CT_19 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-03・F-CT-OPS-04 */ }
        satisfy LRQ_CT::LRQ_CT_20 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-06・F-CT-OPS-07 */ }
        satisfy LRQ_CT::LRQ_CT_21 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-08・F-CT-OPS-01 */ }
        satisfy LRQ_CT::LRQ_CT_22 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-10・F-CT-OPS-11・F-CT-OPS-12・F-CT-OPS-09 */ }
        satisfy LRQ_CT::LRQ_CT_23 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-03・F-CT-SBD-05・F-CT-SBD-06 */ }
        satisfy LRQ_CT::LRQ_CT_24 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-04 */ }
        satisfy LRQ_CT::LRQ_CT_25 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-08・F-CT-SBD-09 */ }
        satisfy LRQ_CT::LRQ_CT_26 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-11・F-CT-SBD-12・F-CT-SBD-10 */ }
        satisfy LRQ_CT::LRQ_CT_27 by context.sts.orb.ct.uhf { doc /* 割付先：F-CT-UHF-02・F-CT-UHF-05・F-CT-UHF-01 */ }
        satisfy LRQ_CT::LRQ_CT_28 by context.sts.orb.ct.uhf { doc /* 割付先：F-CT-UHF-03・F-CT-UHF-04 */ }
        satisfy LRQ_CT::LRQ_CT_29 by context.sts.orb.ct.uhf { doc /* 割付先：F-CT-UHF-07・F-CT-UHF-08 */ }
        satisfy LRQ_CT::LRQ_CT_30 by context.sts.orb.ct.uhf { doc /* 割付先：F-CT-UHF-09・F-CT-UHF-11・F-CT-UHF-10 */ }
        satisfy LRQ_CW::LRQ_CW_01 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-01・F-CW-PRI-02 */ }
        satisfy LRQ_CW::LRQ_CW_02 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-03 */ }
        satisfy LRQ_CW::LRQ_CW_03 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-05・F-CW-PRI-04 */ }
        satisfy LRQ_CW::LRQ_CW_04 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-07・F-CW-PRI-06 */ }
        satisfy LRQ_CW::LRQ_CW_05 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-04・F-CW-ANN-01 */ }
        satisfy LRQ_CW::LRQ_CW_06 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-04・F-CW-ANN-01 */ }
        satisfy LRQ_CW::LRQ_CW_07 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-05・F-CW-ANN-06 */ }
        satisfy LRQ_CW::LRQ_CW_08 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-02・F-CW-ANN-01 */ }
        satisfy LRQ_CW::LRQ_CW_09 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-03・F-CW-ANN-07 */ }
        satisfy LRQ_CW::LRQ_CW_10 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-03・F-CW-BKP-02 */ }
        satisfy LRQ_CW::LRQ_CW_11 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-04・F-CW-BKP-01 */ }
        satisfy LRQ_CW::LRQ_CW_12 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-05 */ }
        satisfy LRQ_CW::LRQ_CW_13 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-06・F-CW-BKP-02 */ }
        satisfy LRQ_CW::LRQ_CW_14 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-07 */ }
        satisfy LRQ_CW::LRQ_CW_15 by context.sts.orb.cw.alt { doc /* 割付先：F-CW-ALT-02・F-CW-ALT-01 */ }
        satisfy LRQ_CW::LRQ_CW_16 by context.sts.orb.cw.alt { doc /* 割付先：F-CW-ALT-03・F-CW-ALT-02 */ }
        satisfy LRQ_CW::LRQ_CW_17 by context.sts.orb.cw.alt { doc /* 割付先：F-CW-ALT-04・F-CW-ALT-05 */ }
        satisfy LRQ_CW::LRQ_CW_18 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-09・F-CW-OPS-01 */ }
        satisfy LRQ_CW::LRQ_CW_19 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-02・F-CW-OPS-01 */ }
        satisfy LRQ_CW::LRQ_CW_20 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-03・F-CW-OPS-05 */ }
        satisfy LRQ_CW::LRQ_CW_21 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-04・F-CW-OPS-03 */ }
        satisfy LRQ_CW::LRQ_CW_22 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-07・F-CW-OPS-08 */ }
        satisfy LRQ_DPS::LRQ_DPS_01 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-02・F-DPS-ASC-03・F-DPS-ASC-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_02 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-05 */ }
        satisfy LRQ_DPS::LRQ_DPS_03 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-09・F-DPS-ASC-11 */ }
        satisfy LRQ_DPS::LRQ_DPS_04 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-12・F-DPS-ASC-01 */ }
        satisfy LRQ_DPS::LRQ_DPS_05 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-02・F-DPS-BUS-05 */ }
        satisfy LRQ_DPS::LRQ_DPS_06 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-10・F-DPS-BUS-08 */ }
        satisfy LRQ_DPS::LRQ_DPS_07 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-06・F-DPS-BUS-07 */ }
        satisfy LRQ_DPS::LRQ_DPS_08 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-12・F-DPS-BUS-11 */ }
        satisfy LRQ_DPS::LRQ_DPS_09 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_09 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-10 */ }
        satisfy LRQ_DPS::LRQ_DPS_10 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-05・F-DPS-FSW-06 */ }
        satisfy LRQ_DPS::LRQ_DPS_11 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-08・F-DPS-FSW-07 */ }
        satisfy LRQ_DPS::LRQ_DPS_12 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-12・F-DPS-FSW-11 */ }
        satisfy LRQ_DPS::LRQ_DPS_13 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-02 */ }
        satisfy LRQ_DPS::LRQ_DPS_14 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-03・F-DPS-GPC-02 */ }
        satisfy LRQ_DPS::LRQ_DPS_15 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-05・F-DPS-GPC-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_16 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-06 */ }
        satisfy LRQ_DPS::LRQ_DPS_17 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-08・F-DPS-GPC-09 */ }
        satisfy LRQ_DPS::LRQ_DPS_18 by context.sts.orb.dps.meds { doc /* 割付先：F-DPS-MEDS-10・F-DPS-MEDS-09 */ }
        satisfy LRQ_DPS::LRQ_DPS_19 by context.sts.orb.dps.meds { doc /* 割付先：F-DPS-MEDS-04・F-DPS-MEDS-01 */ }
        satisfy LRQ_DPS::LRQ_DPS_20 by context.sts.orb.dps.meds { doc /* 割付先：F-DPS-MEDS-06 */ }
        satisfy LRQ_DPS::LRQ_DPS_21 by context.sts.orb.dps.meds { doc /* 割付先：F-DPS-MEDS-09・F-DPS-MEDS-08 */ }
        satisfy LRQ_DPS::LRQ_DPS_22 by context.sts.orb.dps.mtu { doc /* 割付先：F-DPS-MTU-06・F-DPS-MTU-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_23 by context.sts.orb.dps.mtu { doc /* 割付先：F-DPS-MTU-07・F-DPS-MTU-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_24 by context.sts.orb.dps.mtu { doc /* 割付先：F-DPS-MTU-08・F-DPS-MTU-03 */ }
        satisfy LRQ_DPS::LRQ_DPS_25 by context.sts.orb.dps.mtu { doc /* 割付先：F-DPS-MTU-12・F-DPS-MTU-01 */ }
        satisfy LRQ_DPS::LRQ_DPS_26 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-01・F-DPS-OPS-02 */ }
        satisfy LRQ_DPS::LRQ_DPS_27 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-05・F-DPS-OPS-03 */ }
        satisfy LRQ_DPS::LRQ_DPS_28 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-11・F-DPS-OPS-04 */ }
        satisfy LRQ_DPS::LRQ_DPS_29 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-07 */ }
        satisfy LRQ_DPS::LRQ_DPS_29 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-05 */ }
        satisfy LRQ_DPS::LRQ_DPS_30 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-12 */ }
        satisfy LRQ_DPS::LRQ_DPS_30 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-03 */ }
        satisfy LRQ_EPS::LRQ_EPS_01 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-01・F-EPS-PRSD-03 */ }
        satisfy LRQ_EPS::LRQ_EPS_02 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-03・F-EPS-PRSD-07 */ }
        satisfy LRQ_EPS::LRQ_EPS_03 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-03 */ }
        satisfy LRQ_EPS::LRQ_EPS_04 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-04・F-EPS-PRSD-07 */ }
        satisfy LRQ_EPS::LRQ_EPS_05 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-03・F-EPS-FCP-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_06 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-01・F-EPS-FCP-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_07 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_08 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_08 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-02 */ }
        satisfy LRQ_EPS::LRQ_EPS_09 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-03・F-EPS-FCP-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_10 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-01・F-EPS-DC-02 */ }
        satisfy LRQ_EPS::LRQ_EPS_11 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-02・F-EPS-DC-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_12 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-06 */ }
        satisfy LRQ_EPS::LRQ_EPS_13 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-05・F-EPS-DC-01 */ }
        satisfy LRQ_EPS::LRQ_EPS_14 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_15 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-04 */ }
        satisfy LRQ_EPS::LRQ_EPS_16 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-04・F-EPS-AC-01 */ }
        satisfy LRQ_EPS::LRQ_EPS_17 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-05 */ }
        satisfy LRQ_EPS::LRQ_EPS_18 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-01・F-EPS-AC-02 */ }
        satisfy LRQ_EVA::LRQ_EVA_01 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-03・F-EVA-CHK-04 */ }
        satisfy LRQ_EVA::LRQ_EVA_02 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-05・F-EVA-CHK-06 */ }
        satisfy LRQ_EVA::LRQ_EVA_03 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-07 */ }
        satisfy LRQ_EVA::LRQ_EVA_03 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-12 */ }
        satisfy LRQ_EVA::LRQ_EVA_04 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-09・F-EVA-CHK-10 */ }
        satisfy LRQ_EVA::LRQ_EVA_05 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-11・F-EVA-CHK-12 */ }
        satisfy LRQ_EVA::LRQ_EVA_06 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-02・F-EVA-DPR-11 */ }
        satisfy LRQ_EVA::LRQ_EVA_07 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-04・F-EVA-DPR-05 */ }
        satisfy LRQ_EVA::LRQ_EVA_08 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-08・F-EVA-DPR-09 */ }
        satisfy LRQ_EVA::LRQ_EVA_09 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-12・F-EVA-DPR-11 */ }
        satisfy LRQ_EVA::LRQ_EVA_10 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-10・F-EVA-DPR-07 */ }
        satisfy LRQ_EVA::LRQ_EVA_11 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-01・F-EVA-EMG-02 */ }
        satisfy LRQ_EVA::LRQ_EVA_12 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-04・F-EVA-EMG-05 */ }
        satisfy LRQ_EVA::LRQ_EVA_13 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-07・F-EVA-EMG-08 */ }
        satisfy LRQ_EVA::LRQ_EVA_14 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-12・F-EVA-EMG-13 */ }
        satisfy LRQ_EVA::LRQ_EVA_15 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-10・F-EVA-EMG-11 */ }
        satisfy LRQ_EVA::LRQ_EVA_16 by context.sts.orb.eva.mnt { doc /* 割付先：F-EVA-MNT-03・F-EVA-MNT-04・F-EVA-MNT-05 */ }
        satisfy LRQ_EVA::LRQ_EVA_17 by context.sts.orb.eva.mnt { doc /* 割付先：F-EVA-MNT-09・F-EVA-MNT-10 */ }
        satisfy LRQ_EVA::LRQ_EVA_18 by context.sts.orb.eva.mnt { doc /* 割付先：F-EVA-MNT-07・F-EVA-MNT-01 */ }
        satisfy LRQ_EVA::LRQ_EVA_19 by context.sts.orb.eva.mnt { doc /* 割付先：F-EVA-MNT-11・F-EVA-MNT-12 */ }
        satisfy LRQ_EVA::LRQ_EVA_20 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-01・F-EVA-OPS-02 */ }
        satisfy LRQ_EVA::LRQ_EVA_21 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-03・F-EVA-OPS-04 */ }
        satisfy LRQ_EVA::LRQ_EVA_22 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-05・F-EVA-OPS-06 */ }
        satisfy LRQ_EVA::LRQ_EVA_23 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-07・F-EVA-OPS-08 */ }
        satisfy LRQ_EVA::LRQ_EVA_24 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-12・F-EVA-OPS-13 */ }
        satisfy LRQ_EVA::LRQ_EVA_25 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-02・F-EVA-TLS-03 */ }
        satisfy LRQ_EVA::LRQ_EVA_26 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-04・F-EVA-TLS-05 */ }
        satisfy LRQ_EVA::LRQ_EVA_27 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-06・F-EVA-TLS-07 */ }
        satisfy LRQ_EVA::LRQ_EVA_28 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-09・F-EVA-TLS-10・F-EVA-TLS-11 */ }
        satisfy LRQ_EVA::LRQ_EVA_29 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-08・F-EVA-TLS-12 */ }
        satisfy LRQ_GNC::LRQ_GNC_01 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-02・F-GNC-ACT-03 */ }
        satisfy LRQ_GNC::LRQ_GNC_02 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-04 */ }
        satisfy LRQ_GNC::LRQ_GNC_03 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-05・F-GNC-ACT-06 */ }
        satisfy LRQ_GNC::LRQ_GNC_04 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-09・F-GNC-ACT-10 */ }
        satisfy LRQ_GNC::LRQ_GNC_05 by context.sts.orb.gnc.ccd { doc /* 割付先：F-GNC-CCD-01・F-GNC-CCD-03 */ }
        satisfy LRQ_GNC::LRQ_GNC_06 by context.sts.orb.gnc.ccd { doc /* 割付先：F-GNC-CCD-04・F-GNC-CCD-09 */ }
        satisfy LRQ_GNC::LRQ_GNC_07 by context.sts.orb.gnc.ccd { doc /* 割付先：F-GNC-CCD-05・F-GNC-CCD-06・F-GNC-CCD-07 */ }
        satisfy LRQ_GNC::LRQ_GNC_08 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-02・F-GNC-FCS-03 */ }
        satisfy LRQ_GNC::LRQ_GNC_09 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-05・F-GNC-FCS-06 */ }
        satisfy LRQ_GNC::LRQ_GNC_10 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-08・F-GNC-FCS-10 */ }
        satisfy LRQ_GNC::LRQ_GNC_11 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-11・F-GNC-FCS-12 */ }
        satisfy LRQ_GNC::LRQ_GNC_12 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-07・F-GNC-GNS-06 */ }
        satisfy LRQ_GNC::LRQ_GNC_13 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-08 */ }
        satisfy LRQ_GNC::LRQ_GNC_14 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-11 */ }
        satisfy LRQ_GNC::LRQ_GNC_15 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-12 */ }
        satisfy LRQ_GNC::LRQ_GNC_16 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-05・F-GNC-INS-06 */ }
        satisfy LRQ_GNC::LRQ_GNC_17 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-07 */ }
        satisfy LRQ_GNC::LRQ_GNC_18 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-08・F-GNC-INS-10 */ }
        satisfy LRQ_GNC::LRQ_GNC_19 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-09・F-GNC-INS-11 */ }
        satisfy LRQ_GNC::LRQ_GNC_20 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-03・F-GNC-NAS-04 */ }
        satisfy LRQ_GNC::LRQ_GNC_21 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-06・F-GNC-NAS-05 */ }
        satisfy LRQ_GNC::LRQ_GNC_22 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-07・F-GNC-NAS-08・F-GNC-NAS-09 */ }
        satisfy LRQ_GNC::LRQ_GNC_23 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-10・F-GNC-NAS-12 */ }
        satisfy LRQ_GNC::LRQ_GNC_24 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-04・F-GNC-OPS-03 */ }
        satisfy LRQ_GNC::LRQ_GNC_25 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-05 */ }
        satisfy LRQ_GNC::LRQ_GNC_26 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-09 */ }
        satisfy LRQ_GNC::LRQ_GNC_27 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-12・F-GNC-OPS-11 */ }
        satisfy LRQ_MECH::LRQ_MECH_01 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-03 */ }
        satisfy LRQ_MECH::LRQ_MECH_02 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_03 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-06 */ }
        satisfy LRQ_MECH::LRQ_MECH_04 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-05・F-MECH-ACT-07 */ }
        satisfy LRQ_MECH::LRQ_MECH_05 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-03 */ }
        satisfy LRQ_MECH::LRQ_MECH_06 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-01・F-MECH-DEC-02 */ }
        satisfy LRQ_MECH::LRQ_MECH_07 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-04・F-MECH-DEC-05 */ }
        satisfy LRQ_MECH::LRQ_MECH_08 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-06 */ }
        satisfy LRQ_MECH::LRQ_MECH_09 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-08 */ }
        satisfy LRQ_MECH::LRQ_MECH_10 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-02 */ }
        satisfy LRQ_MECH::LRQ_MECH_11 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_12 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-06 */ }
        satisfy LRQ_MECH::LRQ_MECH_13 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-07 */ }
        satisfy LRQ_MECH::LRQ_MECH_14 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-01 */ }
        satisfy LRQ_MECH::LRQ_MECH_15 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-02 */ }
        satisfy LRQ_MECH::LRQ_MECH_16 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_17 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-05 */ }
        satisfy LRQ_MECH::LRQ_MECH_18 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-02 */ }
        satisfy LRQ_MECH::LRQ_MECH_19 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_20 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_21 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-06 */ }
        satisfy LRQ_MECH::LRQ_MECH_22 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-07 */ }
        satisfy LRQ_MECH::LRQ_MECH_23 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-02 */ }
        satisfy LRQ_MECH::LRQ_MECH_24 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-03 */ }
        satisfy LRQ_MECH::LRQ_MECH_25 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-04 */ }
        satisfy LRQ_MECH::LRQ_MECH_26 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-06 */ }
        satisfy LRQ_MECH::LRQ_MECH_27 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-07 */ }
        satisfy LRQ_MPS::LRQ_MPS_01 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-01・F-MPS-CTL-02 */ }
        satisfy LRQ_MPS::LRQ_MPS_02 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-13・F-MPS-CTL-04 */ }
        satisfy LRQ_MPS::LRQ_MPS_03 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-08・F-MPS-CTL-09・F-MPS-CTL-10 */ }
        satisfy LRQ_MPS::LRQ_MPS_04 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-11・F-MPS-CTL-12 */ }
        satisfy LRQ_MPS::LRQ_MPS_05 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-01・F-MPS-DMP-02・F-MPS-DMP-03 */ }
        satisfy LRQ_MPS::LRQ_MPS_06 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-04 */ }
        satisfy LRQ_MPS::LRQ_MPS_07 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-06・F-MPS-DMP-07・F-MPS-DMP-08 */ }
        satisfy LRQ_MPS::LRQ_MPS_08 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-10・F-MPS-DMP-09 */ }
        satisfy LRQ_MPS::LRQ_MPS_09 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-12・F-MPS-DMP-13 */ }
        satisfy LRQ_MPS::LRQ_MPS_10 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-01・F-MPS-HE-04・F-MPS-HE-05 */ }
        satisfy LRQ_MPS::LRQ_MPS_11 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-09・F-MPS-HE-10・F-MPS-HE-06 */ }
        satisfy LRQ_MPS::LRQ_MPS_12 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-11・F-MPS-HE-03 */ }
        satisfy LRQ_MPS::LRQ_MPS_13 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-13・F-MPS-HE-02 */ }
        satisfy LRQ_MPS::LRQ_MPS_14 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-02・F-MPS-OPS-03 */ }
        satisfy LRQ_MPS::LRQ_MPS_15 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-05・F-MPS-OPS-06 */ }
        satisfy LRQ_MPS::LRQ_MPS_16 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-07 */ }
        satisfy LRQ_MPS::LRQ_MPS_17 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-08・F-MPS-OPS-09 */ }
        satisfy LRQ_MPS::LRQ_MPS_18 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-11 */ }
        satisfy LRQ_MPS::LRQ_MPS_19 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-04・F-MPS-PMS-11・F-MPS-PMS-12 */ }
        satisfy LRQ_MPS::LRQ_MPS_20 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-08・F-MPS-PMS-09 */ }
        satisfy LRQ_MPS::LRQ_MPS_21 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-07・F-MPS-PMS-06 */ }
        satisfy LRQ_MPS::LRQ_MPS_22 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-10 */ }
        satisfy LRQ_MPS::LRQ_MPS_23 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-03・F-MPS-SSME-04 */ }
        satisfy LRQ_MPS::LRQ_MPS_24 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-06・F-MPS-SSME-07 */ }
        satisfy LRQ_MPS::LRQ_MPS_25 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-12 */ }
        satisfy LRQ_MPS::LRQ_MPS_25 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-03 */ }
        satisfy LRQ_MPS::LRQ_MPS_26 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-08 */ }
        satisfy LRQ_MPS::LRQ_MPS_26 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-12 */ }
        satisfy LRQ_MPS::LRQ_MPS_26 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-11 */ }
        satisfy LRQ_MPS::LRQ_MPS_27 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-02・F-MPS-TVC-07 */ }
        satisfy LRQ_MPS::LRQ_MPS_28 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-11 */ }
        satisfy LRQ_MPS::LRQ_MPS_29 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-04・F-MPS-TVC-03 */ }
        satisfy LRQ_MPS::LRQ_MPS_30 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-09・F-MPS-TVC-12・F-MPS-TVC-13・F-MPS-TVC-10 */ }
        satisfy LRQ_OMS::LRQ_OMS_01 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-02・F-OMS-ENG-13 */ }
        satisfy LRQ_OMS::LRQ_OMS_02 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-06・F-OMS-ENG-07 */ }
        satisfy LRQ_OMS::LRQ_OMS_03 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-04・F-OMS-ENG-08・F-OMS-ENG-09 */ }
        satisfy LRQ_OMS::LRQ_OMS_04 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-11・F-OMS-ENG-12 */ }
        satisfy LRQ_OMS::LRQ_OMS_05 by context.sts.orb.oms.he { doc /* 割付先：F-OMS-HE-04・F-OMS-HE-05 */ }
        satisfy LRQ_OMS::LRQ_OMS_06 by context.sts.orb.oms.he { doc /* 割付先：F-OMS-HE-06・F-OMS-HE-09 */ }
        satisfy LRQ_OMS::LRQ_OMS_07 by context.sts.orb.oms.he { doc /* 割付先：F-OMS-HE-02・F-OMS-HE-03・F-OMS-HE-10 */ }
        satisfy LRQ_OMS::LRQ_OMS_08 by context.sts.orb.oms.he { doc /* 割付先：F-OMS-HE-07・F-OMS-HE-08 */ }
        satisfy LRQ_OMS::LRQ_OMS_09 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-01 */ }
        satisfy LRQ_OMS::LRQ_OMS_10 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-02・F-OMS-OPS-03 */ }
        satisfy LRQ_OMS::LRQ_OMS_11 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-05 */ }
        satisfy LRQ_OMS::LRQ_OMS_12 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-04・F-OMS-OPS-12 */ }
        satisfy LRQ_OMS::LRQ_OMS_13 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-11・F-OMS-PSD-05 */ }
        satisfy LRQ_OMS::LRQ_OMS_14 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-12 */ }
        satisfy LRQ_OMS::LRQ_OMS_15 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-07・F-OMS-PSD-08 */ }
        satisfy LRQ_OMS::LRQ_OMS_16 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-09・F-OMS-PSD-10 */ }
        satisfy LRQ_OMS::LRQ_OMS_17 by context.sts.orb.oms.thm { doc /* 割付先：F-OMS-THM-02・F-OMS-THM-03 */ }
        satisfy LRQ_OMS::LRQ_OMS_18 by context.sts.orb.oms.thm { doc /* 割付先：F-OMS-THM-08・F-OMS-THM-09 */ }
        satisfy LRQ_OMS::LRQ_OMS_19 by context.sts.orb.oms.thm { doc /* 割付先：F-OMS-THM-07・F-OMS-THM-11 */ }
        satisfy LRQ_OMS::LRQ_OMS_20 by context.sts.orb.oms.thm { doc /* 割付先：F-OMS-THM-04・F-OMS-THM-12 */ }
        satisfy LRQ_OMS::LRQ_OMS_21 by context.sts.orb.oms.tvc { doc /* 割付先：F-OMS-TVC-02・F-OMS-TVC-01 */ }
        satisfy LRQ_OMS::LRQ_OMS_22 by context.sts.orb.oms.tvc { doc /* 割付先：F-OMS-TVC-05・F-OMS-TVC-09 */ }
        satisfy LRQ_OMS::LRQ_OMS_23 by context.sts.orb.oms.tvc { doc /* 割付先：F-OMS-TVC-10・F-OMS-TVC-04 */ }
        satisfy LRQ_OMS::LRQ_OMS_24 by context.sts.orb.oms.tvc { doc /* 割付先：F-OMS-TVC-12・F-OMS-TVC-08・F-OMS-TVC-11 */ }
        satisfy LRQ_OMS::LRQ_OMS_25 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-05・F-OMS-XFD-06 */ }
        satisfy LRQ_OMS::LRQ_OMS_26 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-07・F-OMS-XFD-08 */ }
        satisfy LRQ_OMS::LRQ_OMS_27 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-12・F-OMS-XFD-04 */ }
        satisfy LRQ_OMS::LRQ_OMS_28 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-09・F-OMS-XFD-10 */ }
        satisfy LRQ_OMS::LRQ_OMS_29 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-11・F-OMS-XFD-13 */ }
        satisfy LRQ_PLS::LRQ_PLS_01 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_02 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-08 */ }
        satisfy LRQ_PLS::LRQ_PLS_03 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-03・F-PLS-ARM-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_04 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-05・F-PLS-ARM-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_05 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-02 */ }
        satisfy LRQ_PLS::LRQ_PLS_06 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-01・F-PLS-CTL-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_07 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-03・F-PLS-CTL-04 */ }
        satisfy LRQ_PLS::LRQ_PLS_08 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-01・F-PLS-CTL-03 */ }
        satisfy LRQ_PLS::LRQ_PLS_09 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-06・F-PLS-CTL-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_10 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_11 by context.sts.orb.pls.mpm { doc /* 割付先：F-PLS-MPM-01・F-PLS-MPM-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_12 by context.sts.orb.pls.mpm { doc /* 割付先：F-PLS-MPM-03 */ }
        satisfy LRQ_PLS::LRQ_PLS_13 by context.sts.orb.pls.mpm { doc /* 割付先：F-PLS-MPM-04 */ }
        satisfy LRQ_PLS::LRQ_PLS_14 by context.sts.orb.pls.mpm { doc /* 割付先：F-PLS-MPM-05・F-PLS-MPM-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_15 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-05・F-PLS-ODS-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_16 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-05・F-PLS-ODS-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_17 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-05 */ }
        satisfy LRQ_PLS::LRQ_PLS_18 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_19 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-03・F-PLS-ODS-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_20 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-01 */ }
        satisfy LRQ_PLS::LRQ_PLS_21 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-05 */ }
        satisfy LRQ_PLS::LRQ_PLS_22 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_23 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_24 by context.sts.orb.pls.prl { doc /* 割付先：F-PLS-PRL-03・F-PLS-PRL-04 */ }
        satisfy LRQ_PLS::LRQ_PLS_25 by context.sts.orb.pls.prl { doc /* 割付先：F-PLS-PRL-05・F-PLS-PRL-06 */ }
        satisfy LRQ_PLS::LRQ_PLS_26 by context.sts.orb.pls.prl { doc /* 割付先：F-PLS-PRL-07 */ }
        satisfy LRQ_PLS::LRQ_PLS_27 by context.sts.orb.pls.prl { doc /* 割付先：F-PLS-PRL-05・F-PLS-PRL-07 */ }
        satisfy LRQ_RCS::LRQ_RCS_01 by context.sts.orb.rcs.hep { doc /* 割付先：F-RCS-HEP-03 */ }
        satisfy LRQ_RCS::LRQ_RCS_02 by context.sts.orb.rcs.hep { doc /* 割付先：F-RCS-HEP-09 */ }
        satisfy LRQ_RCS::LRQ_RCS_03 by context.sts.orb.rcs.hep { doc /* 割付先：F-RCS-HEP-04・F-RCS-HEP-05 */ }
        satisfy LRQ_RCS::LRQ_RCS_04 by context.sts.orb.rcs.hep { doc /* 割付先：F-RCS-HEP-10・F-RCS-HEP-11・F-RCS-HEP-12 */ }
        satisfy LRQ_RCS::LRQ_RCS_05 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-02・F-RCS-HTR-03 */ }
        satisfy LRQ_RCS::LRQ_RCS_06 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-04・F-RCS-HTR-05・F-RCS-HTR-06 */ }
        satisfy LRQ_RCS::LRQ_RCS_07 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-07・F-RCS-HTR-08・F-RCS-HTR-09 */ }
        satisfy LRQ_RCS::LRQ_RCS_08 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-11 */ }
        satisfy LRQ_RCS::LRQ_RCS_09 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-12 */ }
        satisfy LRQ_RCS::LRQ_RCS_10 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-01・F-RCS-JET-04 */ }
        satisfy LRQ_RCS::LRQ_RCS_11 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-02・F-RCS-JET-10 */ }
        satisfy LRQ_RCS::LRQ_RCS_12 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-07・F-RCS-JET-11 */ }
        satisfy LRQ_RCS::LRQ_RCS_13 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-09・F-RCS-JET-12 */ }
        satisfy LRQ_RCS::LRQ_RCS_14 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-01 */ }
        satisfy LRQ_RCS::LRQ_RCS_15 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-03 */ }
        satisfy LRQ_RCS::LRQ_RCS_16 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-05・F-RCS-OPS-08 */ }
        satisfy LRQ_RCS::LRQ_RCS_17 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-09 */ }
        satisfy LRQ_RCS::LRQ_RCS_18 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-10 */ }
        satisfy LRQ_RCS::LRQ_RCS_19 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-04・F-RCS-PRP-05・F-RCS-PRP-06 */ }
        satisfy LRQ_RCS::LRQ_RCS_20 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-07・F-RCS-PRP-08 */ }
        satisfy LRQ_RCS::LRQ_RCS_21 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-10 */ }
        satisfy LRQ_RCS::LRQ_RCS_22 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-01・F-RCS-PRP-11 */ }
        satisfy LRQ_RCS::LRQ_RCS_23 by context.sts.orb.rcs.rjd { doc /* 割付先：F-RCS-RJD-04 */ }
        satisfy LRQ_RCS::LRQ_RCS_24 by context.sts.orb.rcs.rjd { doc /* 割付先：F-RCS-RJD-02・F-RCS-RJD-11 */ }
        satisfy LRQ_RCS::LRQ_RCS_25 by context.sts.orb.rcs.rjd { doc /* 割付先：F-RCS-RJD-07・F-RCS-RJD-09・F-RCS-RJD-10 */ }
        satisfy LRQ_RCS::LRQ_RCS_26 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-03・F-RCS-RM-04 */ }
        satisfy LRQ_RCS::LRQ_RCS_27 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-05 */ }
        satisfy LRQ_RCS::LRQ_RCS_28 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-06 */ }
        satisfy LRQ_RCS::LRQ_RCS_29 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-09・F-RCS-RM-10 */ }
        satisfy LRQ_RCS::LRQ_RCS_30 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-11・F-RCS-RM-12 */ }
        satisfy LRQ_STR::LRQ_STR_01 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-03 */ }
        satisfy LRQ_STR::LRQ_STR_02 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-05 */ }
        satisfy LRQ_STR::LRQ_STR_03 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-04 */ }
        satisfy LRQ_STR::LRQ_STR_04 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-07 */ }
        satisfy LRQ_STR::LRQ_STR_05 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-02 */ }
        satisfy LRQ_STR::LRQ_STR_06 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-01 */ }
        satisfy LRQ_STR::LRQ_STR_07 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-02 */ }
        satisfy LRQ_STR::LRQ_STR_08 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-03 */ }
        satisfy LRQ_STR::LRQ_STR_09 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-06 */ }
        satisfy LRQ_STR::LRQ_STR_10 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-07 */ }
        satisfy LRQ_STR::LRQ_STR_11 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-03 */ }
        satisfy LRQ_STR::LRQ_STR_12 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-04 */ }
        satisfy LRQ_STR::LRQ_STR_13 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-05 */ }
        satisfy LRQ_STR::LRQ_STR_14 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-07 */ }
        satisfy LRQ_STR::LRQ_STR_15 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-03 */ }
        satisfy LRQ_STR::LRQ_STR_16 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-04 */ }
        satisfy LRQ_STR::LRQ_STR_17 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-05 */ }
        satisfy LRQ_STR::LRQ_STR_18 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-06 */ }
        satisfy LRQ_STR::LRQ_STR_19 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-07 */ }
        satisfy LRQ_STR::LRQ_STR_20 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-03 */ }
        satisfy LRQ_STR::LRQ_STR_21 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-02 */ }
        satisfy LRQ_STR::LRQ_STR_22 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-04 */ }
        satisfy LRQ_STR::LRQ_STR_23 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-07 */ }
        satisfy LRQ_STR::LRQ_STR_24 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-01 */ }
        satisfy LRQ_STR::LRQ_STR_25 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-03 */ }
        satisfy LRQ_STR::LRQ_STR_26 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-04 */ }
        satisfy LRQ_STR::LRQ_STR_27 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-06 */ }
        satisfy LRQ_STR::LRQ_STR_28 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-08 */ }
        satisfy LRQ_TPS::LRQ_TPS_01 by context.sts.orb.tps { doc /* 割付先：F-TPS-03・F-TPS-05 */ }
        satisfy LRQ_TPS::LRQ_TPS_02 by context.sts.orb.tps { doc /* 割付先：F-TPS-03・F-TPS-04 */ }
        satisfy LRQ_TPS::LRQ_TPS_03 by context.sts.orb.tps { doc /* 割付先：F-TPS-02 */ }
        satisfy LRQ_TPS::LRQ_TPS_04 by context.sts.orb.tps { doc /* 割付先：F-TPS-06・F-TPS-05 */ }
        satisfy LRQ_TPS::LRQ_TPS_05 by context.sts.orb.tcs { doc /* 割付先：F-TCS-04・F-TCS-01 */ }
        satisfy LRQ_TPS::LRQ_TPS_06 by context.sts.orb.tcs { doc /* 割付先：F-TCS-04・F-TCS-03 */ }
        satisfy LRQ_TPS::LRQ_TPS_07 by context.sts.orb.tcs { doc /* 割付先：F-TCS-03・F-TCS-02 */ }
        satisfy LRQ_TPS::LRQ_TPS_08 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-02・F-TCS-PTC-01 */ }
        satisfy LRQ_TPS::LRQ_TPS_09 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-04・F-TCS-PTC-01 */ }
        satisfy LRQ_TPS::LRQ_TPS_10 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-03・F-TCS-PTC-01 */ }
        satisfy LRQ_TPS::LRQ_TPS_11 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-05 */ }
        satisfy LRQ_TPS::LRQ_TPS_12 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-06・F-TCS-PTC-05 */ }
        satisfy LRQ_ET::LRQ_ET_01 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-01・F-ET-ITK-06 */ }
        satisfy LRQ_ET::LRQ_ET_02 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-02 */ }
        satisfy LRQ_ET::LRQ_ET_03 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-03 */ }
        satisfy LRQ_ET::LRQ_ET_04 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-04・F-ET-ITK-06 */ }
        satisfy LRQ_ET::LRQ_ET_05 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-05 */ }
        satisfy LRQ_ET::LRQ_ET_06 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-06 */ }
        satisfy LRQ_ET::LRQ_ET_07 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-02 */ }
        satisfy LRQ_ET::LRQ_ET_08 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-03 */ }
        satisfy LRQ_ET::LRQ_ET_09 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-01・F-ET-LH2-04 */ }
        satisfy LRQ_ET::LRQ_ET_10 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-02・F-ET-LOX-07 */ }
        satisfy LRQ_ET::LRQ_ET_11 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-04 */ }
        satisfy LRQ_ET::LRQ_ET_12 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-05 */ }
        satisfy LRQ_ET::LRQ_ET_13 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-06 */ }
        satisfy LRQ_ET::LRQ_ET_14 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-03 */ }
        satisfy LRQ_ET::LRQ_ET_15 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-01 */ }
        satisfy LRQ_ET::LRQ_ET_16 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-02・F-ET-SEP-03 */ }
        satisfy LRQ_ET::LRQ_ET_17 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-04 */ }
        satisfy LRQ_ET::LRQ_ET_18 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-07 */ }
        satisfy LRQ_ET::LRQ_ET_19 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-05 */ }
        satisfy LRQ_ET::LRQ_ET_20 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-05 */ }
        satisfy LRQ_ET::LRQ_ET_21 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-01・F-ET-TPS-04 */ }
        satisfy LRQ_ET::LRQ_ET_22 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-02 */ }
        satisfy LRQ_ET::LRQ_ET_23 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-06 */ }
        satisfy LRQ_ET::LRQ_ET_24 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-03 */ }
        satisfy LRQ_ET::LRQ_ET_25 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-01 */ }
        satisfy LRQ_ET::LRQ_ET_26 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-02 */ }
        satisfy LRQ_ET::LRQ_ET_27 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-03・F-ET-UMB-04 */ }
        satisfy LRQ_ET::LRQ_ET_28 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-05 */ }
        satisfy LRQ_ET::LRQ_ET_29 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-06 */ }
        satisfy LRQ_ET::LRQ_ET_29 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-06 */ }
        satisfy LRQ_SRB::LRQ_SRB_01 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-02 */ }
        satisfy LRQ_SRB::LRQ_SRB_02 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-03 */ }
        satisfy LRQ_SRB::LRQ_SRB_03 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-07 */ }
        satisfy LRQ_SRB::LRQ_SRB_04 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-05・F-SRB-ATT-06 */ }
        satisfy LRQ_SRB::LRQ_SRB_05 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-01 */ }
        satisfy LRQ_SRB::LRQ_SRB_06 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-01・F-SRB-AVN-02 */ }
        satisfy LRQ_SRB::LRQ_SRB_07 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-05 */ }
        satisfy LRQ_SRB::LRQ_SRB_08 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-08 */ }
        satisfy LRQ_SRB::LRQ_SRB_09 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-06・F-SRB-AVN-07 */ }
        satisfy LRQ_SRB::LRQ_SRB_10 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-03 */ }
        satisfy LRQ_SRB::LRQ_SRB_11 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-03・F-SRB-HDP-04 */ }
        satisfy LRQ_SRB::LRQ_SRB_12 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-04 */ }
        satisfy LRQ_SRB::LRQ_SRB_13 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-06・F-SRB-HDP-07 */ }
        satisfy LRQ_SRB::LRQ_SRB_14 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-01・F-SRB-HDP-02 */ }
        satisfy LRQ_SRB::LRQ_SRB_15 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-09 */ }
        satisfy LRQ_SRB::LRQ_SRB_16 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-03 */ }
        satisfy LRQ_SRB::LRQ_SRB_17 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-01・F-SRB-MTR-04 */ }
        satisfy LRQ_SRB::LRQ_SRB_18 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-05 */ }
        satisfy LRQ_SRB::LRQ_SRB_19 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-06・F-SRB-MTR-07 */ }
        satisfy LRQ_SRB::LRQ_SRB_20 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-03・F-SRB-TVC-04 */ }
        satisfy LRQ_SRB::LRQ_SRB_21 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-05 */ }
        satisfy LRQ_SRB::LRQ_SRB_22 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-06 */ }
        satisfy LRQ_SRB::LRQ_SRB_23 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-07 */ }
        satisfy LRQ_SRB::LRQ_SRB_24 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-08 */ }
        satisfy LRQ_SRB::LRQ_SRB_25 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-01・F-SRB-REC-02 */ }
        satisfy LRQ_SRB::LRQ_SRB_26 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-03 */ }
        satisfy LRQ_SRB::LRQ_SRB_27 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-04 */ }
        satisfy LRQ_SRB::LRQ_SRB_28 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-05 */ }
        satisfy LRQ_SRB::LRQ_SRB_29 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-06 */ }
    }
    // ---- 検証ケース
    package Verification {
        verification def <'VC-LRQ-APU-01'> VC_LRQ_APU_01 {
            doc /* LRQ-APU-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-02'> VC_LRQ_APU_02 {
            doc /* LRQ-APU-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-03'> VC_LRQ_APU_03 {
            doc /* LRQ-APU-03 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-04'> VC_LRQ_APU_04 {
            doc /* LRQ-APU-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-05'> VC_LRQ_APU_05 {
            doc /* LRQ-APU-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-06'> VC_LRQ_APU_06 {
            doc /* LRQ-APU-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-07'> VC_LRQ_APU_07 {
            doc /* LRQ-APU-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-08'> VC_LRQ_APU_08 {
            doc /* LRQ-APU-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-09'> VC_LRQ_APU_09 {
            doc /* LRQ-APU-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-10'> VC_LRQ_APU_10 {
            doc /* LRQ-APU-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-11'> VC_LRQ_APU_11 {
            doc /* LRQ-APU-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-12'> VC_LRQ_APU_12 {
            doc /* LRQ-APU-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-13'> VC_LRQ_APU_13 {
            doc /* LRQ-APU-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-14'> VC_LRQ_APU_14 {
            doc /* LRQ-APU-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-15'> VC_LRQ_APU_15 {
            doc /* LRQ-APU-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-16'> VC_LRQ_APU_16 {
            doc /* LRQ-APU-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-17'> VC_LRQ_APU_17 {
            doc /* LRQ-APU-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-18'> VC_LRQ_APU_18 {
            doc /* LRQ-APU-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-19'> VC_LRQ_APU_19 {
            doc /* LRQ-APU-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-20'> VC_LRQ_APU_20 {
            doc /* LRQ-APU-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-21'> VC_LRQ_APU_21 {
            doc /* LRQ-APU-21 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-22'> VC_LRQ_APU_22 {
            doc /* LRQ-APU-22 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-23'> VC_LRQ_APU_23 {
            doc /* LRQ-APU-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-24'> VC_LRQ_APU_24 {
            doc /* LRQ-APU-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-25'> VC_LRQ_APU_25 {
            doc /* LRQ-APU-25 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-26'> VC_LRQ_APU_26 {
            doc /* LRQ-APU-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-27'> VC_LRQ_APU_27 {
            doc /* LRQ-APU-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-28'> VC_LRQ_APU_28 {
            doc /* LRQ-APU-28 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-29'> VC_LRQ_APU_29 {
            doc /* LRQ-APU-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-APU-30'> VC_LRQ_APU_30 {
            doc /* LRQ-APU-30 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_APU::LRQ_APU_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-01'> VC_LRQ_CREW_01 {
            doc /* LRQ-CREW-01 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-02'> VC_LRQ_CREW_02 {
            doc /* LRQ-CREW-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-03'> VC_LRQ_CREW_03 {
            doc /* LRQ-CREW-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-04'> VC_LRQ_CREW_04 {
            doc /* LRQ-CREW-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-05'> VC_LRQ_CREW_05 {
            doc /* LRQ-CREW-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-06'> VC_LRQ_CREW_06 {
            doc /* LRQ-CREW-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-07'> VC_LRQ_CREW_07 {
            doc /* LRQ-CREW-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-08'> VC_LRQ_CREW_08 {
            doc /* LRQ-CREW-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-09'> VC_LRQ_CREW_09 {
            doc /* LRQ-CREW-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-10'> VC_LRQ_CREW_10 {
            doc /* LRQ-CREW-10 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-11'> VC_LRQ_CREW_11 {
            doc /* LRQ-CREW-11 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-12'> VC_LRQ_CREW_12 {
            doc /* LRQ-CREW-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-13'> VC_LRQ_CREW_13 {
            doc /* LRQ-CREW-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-14'> VC_LRQ_CREW_14 {
            doc /* LRQ-CREW-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-15'> VC_LRQ_CREW_15 {
            doc /* LRQ-CREW-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-16'> VC_LRQ_CREW_16 {
            doc /* LRQ-CREW-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-17'> VC_LRQ_CREW_17 {
            doc /* LRQ-CREW-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-18'> VC_LRQ_CREW_18 {
            doc /* LRQ-CREW-18 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-19'> VC_LRQ_CREW_19 {
            doc /* LRQ-CREW-19 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-20'> VC_LRQ_CREW_20 {
            doc /* LRQ-CREW-20 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-21'> VC_LRQ_CREW_21 {
            doc /* LRQ-CREW-21 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-22'> VC_LRQ_CREW_22 {
            doc /* LRQ-CREW-22 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-23'> VC_LRQ_CREW_23 {
            doc /* LRQ-CREW-23 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-24'> VC_LRQ_CREW_24 {
            doc /* LRQ-CREW-24 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-25'> VC_LRQ_CREW_25 {
            doc /* LRQ-CREW-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-26'> VC_LRQ_CREW_26 {
            doc /* LRQ-CREW-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-27'> VC_LRQ_CREW_27 {
            doc /* LRQ-CREW-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-28'> VC_LRQ_CREW_28 {
            doc /* LRQ-CREW-28 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-29'> VC_LRQ_CREW_29 {
            doc /* LRQ-CREW-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CREW-30'> VC_LRQ_CREW_30 {
            doc /* LRQ-CREW-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CREW::LRQ_CREW_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-01'> VC_LRQ_CT_01 {
            doc /* LRQ-CT-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-02'> VC_LRQ_CT_02 {
            doc /* LRQ-CT-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-03'> VC_LRQ_CT_03 {
            doc /* LRQ-CT-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-04'> VC_LRQ_CT_04 {
            doc /* LRQ-CT-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-05'> VC_LRQ_CT_05 {
            doc /* LRQ-CT-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-06'> VC_LRQ_CT_06 {
            doc /* LRQ-CT-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-07'> VC_LRQ_CT_07 {
            doc /* LRQ-CT-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-08'> VC_LRQ_CT_08 {
            doc /* LRQ-CT-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-09'> VC_LRQ_CT_09 {
            doc /* LRQ-CT-09 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-10'> VC_LRQ_CT_10 {
            doc /* LRQ-CT-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-11'> VC_LRQ_CT_11 {
            doc /* LRQ-CT-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-12'> VC_LRQ_CT_12 {
            doc /* LRQ-CT-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-13'> VC_LRQ_CT_13 {
            doc /* LRQ-CT-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-14'> VC_LRQ_CT_14 {
            doc /* LRQ-CT-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-15'> VC_LRQ_CT_15 {
            doc /* LRQ-CT-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-16'> VC_LRQ_CT_16 {
            doc /* LRQ-CT-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-17'> VC_LRQ_CT_17 {
            doc /* LRQ-CT-17 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-18'> VC_LRQ_CT_18 {
            doc /* LRQ-CT-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-19'> VC_LRQ_CT_19 {
            doc /* LRQ-CT-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-20'> VC_LRQ_CT_20 {
            doc /* LRQ-CT-20 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-21'> VC_LRQ_CT_21 {
            doc /* LRQ-CT-21 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-22'> VC_LRQ_CT_22 {
            doc /* LRQ-CT-22 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-23'> VC_LRQ_CT_23 {
            doc /* LRQ-CT-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-24'> VC_LRQ_CT_24 {
            doc /* LRQ-CT-24 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-25'> VC_LRQ_CT_25 {
            doc /* LRQ-CT-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-26'> VC_LRQ_CT_26 {
            doc /* LRQ-CT-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-27'> VC_LRQ_CT_27 {
            doc /* LRQ-CT-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-28'> VC_LRQ_CT_28 {
            doc /* LRQ-CT-28 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-29'> VC_LRQ_CT_29 {
            doc /* LRQ-CT-29 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CT-30'> VC_LRQ_CT_30 {
            doc /* LRQ-CT-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CT::LRQ_CT_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-01'> VC_LRQ_CW_01 {
            doc /* LRQ-CW-01 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-02'> VC_LRQ_CW_02 {
            doc /* LRQ-CW-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-03'> VC_LRQ_CW_03 {
            doc /* LRQ-CW-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-04'> VC_LRQ_CW_04 {
            doc /* LRQ-CW-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-05'> VC_LRQ_CW_05 {
            doc /* LRQ-CW-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-06'> VC_LRQ_CW_06 {
            doc /* LRQ-CW-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-07'> VC_LRQ_CW_07 {
            doc /* LRQ-CW-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-08'> VC_LRQ_CW_08 {
            doc /* LRQ-CW-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-09'> VC_LRQ_CW_09 {
            doc /* LRQ-CW-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-10'> VC_LRQ_CW_10 {
            doc /* LRQ-CW-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-11'> VC_LRQ_CW_11 {
            doc /* LRQ-CW-11 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-12'> VC_LRQ_CW_12 {
            doc /* LRQ-CW-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-13'> VC_LRQ_CW_13 {
            doc /* LRQ-CW-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-14'> VC_LRQ_CW_14 {
            doc /* LRQ-CW-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-15'> VC_LRQ_CW_15 {
            doc /* LRQ-CW-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-16'> VC_LRQ_CW_16 {
            doc /* LRQ-CW-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-17'> VC_LRQ_CW_17 {
            doc /* LRQ-CW-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-18'> VC_LRQ_CW_18 {
            doc /* LRQ-CW-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-19'> VC_LRQ_CW_19 {
            doc /* LRQ-CW-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-20'> VC_LRQ_CW_20 {
            doc /* LRQ-CW-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-21'> VC_LRQ_CW_21 {
            doc /* LRQ-CW-21 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-CW-22'> VC_LRQ_CW_22 {
            doc /* LRQ-CW-22 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_CW::LRQ_CW_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-01'> VC_LRQ_DPS_01 {
            doc /* LRQ-DPS-01 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-02'> VC_LRQ_DPS_02 {
            doc /* LRQ-DPS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-03'> VC_LRQ_DPS_03 {
            doc /* LRQ-DPS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-04'> VC_LRQ_DPS_04 {
            doc /* LRQ-DPS-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-05'> VC_LRQ_DPS_05 {
            doc /* LRQ-DPS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-06'> VC_LRQ_DPS_06 {
            doc /* LRQ-DPS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-07'> VC_LRQ_DPS_07 {
            doc /* LRQ-DPS-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-08'> VC_LRQ_DPS_08 {
            doc /* LRQ-DPS-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-09'> VC_LRQ_DPS_09 {
            doc /* LRQ-DPS-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-10'> VC_LRQ_DPS_10 {
            doc /* LRQ-DPS-10 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-11'> VC_LRQ_DPS_11 {
            doc /* LRQ-DPS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-12'> VC_LRQ_DPS_12 {
            doc /* LRQ-DPS-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-13'> VC_LRQ_DPS_13 {
            doc /* LRQ-DPS-13 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-14'> VC_LRQ_DPS_14 {
            doc /* LRQ-DPS-14 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-15'> VC_LRQ_DPS_15 {
            doc /* LRQ-DPS-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-16'> VC_LRQ_DPS_16 {
            doc /* LRQ-DPS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-17'> VC_LRQ_DPS_17 {
            doc /* LRQ-DPS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-18'> VC_LRQ_DPS_18 {
            doc /* LRQ-DPS-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-19'> VC_LRQ_DPS_19 {
            doc /* LRQ-DPS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-20'> VC_LRQ_DPS_20 {
            doc /* LRQ-DPS-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-21'> VC_LRQ_DPS_21 {
            doc /* LRQ-DPS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-22'> VC_LRQ_DPS_22 {
            doc /* LRQ-DPS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-23'> VC_LRQ_DPS_23 {
            doc /* LRQ-DPS-23 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-24'> VC_LRQ_DPS_24 {
            doc /* LRQ-DPS-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-25'> VC_LRQ_DPS_25 {
            doc /* LRQ-DPS-25 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-26'> VC_LRQ_DPS_26 {
            doc /* LRQ-DPS-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-27'> VC_LRQ_DPS_27 {
            doc /* LRQ-DPS-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-28'> VC_LRQ_DPS_28 {
            doc /* LRQ-DPS-28 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-29'> VC_LRQ_DPS_29 {
            doc /* LRQ-DPS-29 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-DPS-30'> VC_LRQ_DPS_30 {
            doc /* LRQ-DPS-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_DPS::LRQ_DPS_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-01'> VC_LRQ_EPS_01 {
            doc /* LRQ-EPS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-02'> VC_LRQ_EPS_02 {
            doc /* LRQ-EPS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-03'> VC_LRQ_EPS_03 {
            doc /* LRQ-EPS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-04'> VC_LRQ_EPS_04 {
            doc /* LRQ-EPS-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-05'> VC_LRQ_EPS_05 {
            doc /* LRQ-EPS-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-06'> VC_LRQ_EPS_06 {
            doc /* LRQ-EPS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-07'> VC_LRQ_EPS_07 {
            doc /* LRQ-EPS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-08'> VC_LRQ_EPS_08 {
            doc /* LRQ-EPS-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-09'> VC_LRQ_EPS_09 {
            doc /* LRQ-EPS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-10'> VC_LRQ_EPS_10 {
            doc /* LRQ-EPS-10 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-11'> VC_LRQ_EPS_11 {
            doc /* LRQ-EPS-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-12'> VC_LRQ_EPS_12 {
            doc /* LRQ-EPS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-13'> VC_LRQ_EPS_13 {
            doc /* LRQ-EPS-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-14'> VC_LRQ_EPS_14 {
            doc /* LRQ-EPS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-15'> VC_LRQ_EPS_15 {
            doc /* LRQ-EPS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-16'> VC_LRQ_EPS_16 {
            doc /* LRQ-EPS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-17'> VC_LRQ_EPS_17 {
            doc /* LRQ-EPS-17 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EPS-18'> VC_LRQ_EPS_18 {
            doc /* LRQ-EPS-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EPS::LRQ_EPS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-01'> VC_LRQ_EVA_01 {
            doc /* LRQ-EVA-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-02'> VC_LRQ_EVA_02 {
            doc /* LRQ-EVA-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-03'> VC_LRQ_EVA_03 {
            doc /* LRQ-EVA-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-04'> VC_LRQ_EVA_04 {
            doc /* LRQ-EVA-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-05'> VC_LRQ_EVA_05 {
            doc /* LRQ-EVA-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-06'> VC_LRQ_EVA_06 {
            doc /* LRQ-EVA-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-07'> VC_LRQ_EVA_07 {
            doc /* LRQ-EVA-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-08'> VC_LRQ_EVA_08 {
            doc /* LRQ-EVA-08 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-09'> VC_LRQ_EVA_09 {
            doc /* LRQ-EVA-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-10'> VC_LRQ_EVA_10 {
            doc /* LRQ-EVA-10 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-11'> VC_LRQ_EVA_11 {
            doc /* LRQ-EVA-11 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-12'> VC_LRQ_EVA_12 {
            doc /* LRQ-EVA-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-13'> VC_LRQ_EVA_13 {
            doc /* LRQ-EVA-13 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-14'> VC_LRQ_EVA_14 {
            doc /* LRQ-EVA-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-15'> VC_LRQ_EVA_15 {
            doc /* LRQ-EVA-15 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-16'> VC_LRQ_EVA_16 {
            doc /* LRQ-EVA-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-17'> VC_LRQ_EVA_17 {
            doc /* LRQ-EVA-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-18'> VC_LRQ_EVA_18 {
            doc /* LRQ-EVA-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-19'> VC_LRQ_EVA_19 {
            doc /* LRQ-EVA-19 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-20'> VC_LRQ_EVA_20 {
            doc /* LRQ-EVA-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-21'> VC_LRQ_EVA_21 {
            doc /* LRQ-EVA-21 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-22'> VC_LRQ_EVA_22 {
            doc /* LRQ-EVA-22 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-23'> VC_LRQ_EVA_23 {
            doc /* LRQ-EVA-23 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-24'> VC_LRQ_EVA_24 {
            doc /* LRQ-EVA-24 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-25'> VC_LRQ_EVA_25 {
            doc /* LRQ-EVA-25 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-26'> VC_LRQ_EVA_26 {
            doc /* LRQ-EVA-26 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-27'> VC_LRQ_EVA_27 {
            doc /* LRQ-EVA-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-28'> VC_LRQ_EVA_28 {
            doc /* LRQ-EVA-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-EVA-29'> VC_LRQ_EVA_29 {
            doc /* LRQ-EVA-29 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_EVA::LRQ_EVA_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-01'> VC_LRQ_GNC_01 {
            doc /* LRQ-GNC-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-02'> VC_LRQ_GNC_02 {
            doc /* LRQ-GNC-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-03'> VC_LRQ_GNC_03 {
            doc /* LRQ-GNC-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-04'> VC_LRQ_GNC_04 {
            doc /* LRQ-GNC-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-05'> VC_LRQ_GNC_05 {
            doc /* LRQ-GNC-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-06'> VC_LRQ_GNC_06 {
            doc /* LRQ-GNC-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-07'> VC_LRQ_GNC_07 {
            doc /* LRQ-GNC-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-08'> VC_LRQ_GNC_08 {
            doc /* LRQ-GNC-08 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-09'> VC_LRQ_GNC_09 {
            doc /* LRQ-GNC-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-10'> VC_LRQ_GNC_10 {
            doc /* LRQ-GNC-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-11'> VC_LRQ_GNC_11 {
            doc /* LRQ-GNC-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-12'> VC_LRQ_GNC_12 {
            doc /* LRQ-GNC-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-13'> VC_LRQ_GNC_13 {
            doc /* LRQ-GNC-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-14'> VC_LRQ_GNC_14 {
            doc /* LRQ-GNC-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-15'> VC_LRQ_GNC_15 {
            doc /* LRQ-GNC-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-16'> VC_LRQ_GNC_16 {
            doc /* LRQ-GNC-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-17'> VC_LRQ_GNC_17 {
            doc /* LRQ-GNC-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-18'> VC_LRQ_GNC_18 {
            doc /* LRQ-GNC-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-19'> VC_LRQ_GNC_19 {
            doc /* LRQ-GNC-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-20'> VC_LRQ_GNC_20 {
            doc /* LRQ-GNC-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-21'> VC_LRQ_GNC_21 {
            doc /* LRQ-GNC-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-22'> VC_LRQ_GNC_22 {
            doc /* LRQ-GNC-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-23'> VC_LRQ_GNC_23 {
            doc /* LRQ-GNC-23 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-24'> VC_LRQ_GNC_24 {
            doc /* LRQ-GNC-24 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-25'> VC_LRQ_GNC_25 {
            doc /* LRQ-GNC-25 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-26'> VC_LRQ_GNC_26 {
            doc /* LRQ-GNC-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-GNC-27'> VC_LRQ_GNC_27 {
            doc /* LRQ-GNC-27 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_GNC::LRQ_GNC_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-01'> VC_LRQ_MECH_01 {
            doc /* LRQ-MECH-01 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-02'> VC_LRQ_MECH_02 {
            doc /* LRQ-MECH-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-03'> VC_LRQ_MECH_03 {
            doc /* LRQ-MECH-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-04'> VC_LRQ_MECH_04 {
            doc /* LRQ-MECH-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-05'> VC_LRQ_MECH_05 {
            doc /* LRQ-MECH-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-06'> VC_LRQ_MECH_06 {
            doc /* LRQ-MECH-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-07'> VC_LRQ_MECH_07 {
            doc /* LRQ-MECH-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-08'> VC_LRQ_MECH_08 {
            doc /* LRQ-MECH-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-09'> VC_LRQ_MECH_09 {
            doc /* LRQ-MECH-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-10'> VC_LRQ_MECH_10 {
            doc /* LRQ-MECH-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-11'> VC_LRQ_MECH_11 {
            doc /* LRQ-MECH-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-12'> VC_LRQ_MECH_12 {
            doc /* LRQ-MECH-12 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-13'> VC_LRQ_MECH_13 {
            doc /* LRQ-MECH-13 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-14'> VC_LRQ_MECH_14 {
            doc /* LRQ-MECH-14 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-15'> VC_LRQ_MECH_15 {
            doc /* LRQ-MECH-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-16'> VC_LRQ_MECH_16 {
            doc /* LRQ-MECH-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-17'> VC_LRQ_MECH_17 {
            doc /* LRQ-MECH-17 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-18'> VC_LRQ_MECH_18 {
            doc /* LRQ-MECH-18 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-19'> VC_LRQ_MECH_19 {
            doc /* LRQ-MECH-19 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-20'> VC_LRQ_MECH_20 {
            doc /* LRQ-MECH-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-21'> VC_LRQ_MECH_21 {
            doc /* LRQ-MECH-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-22'> VC_LRQ_MECH_22 {
            doc /* LRQ-MECH-22 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-23'> VC_LRQ_MECH_23 {
            doc /* LRQ-MECH-23 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-24'> VC_LRQ_MECH_24 {
            doc /* LRQ-MECH-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-25'> VC_LRQ_MECH_25 {
            doc /* LRQ-MECH-25 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-26'> VC_LRQ_MECH_26 {
            doc /* LRQ-MECH-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MECH-27'> VC_LRQ_MECH_27 {
            doc /* LRQ-MECH-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MECH::LRQ_MECH_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-01'> VC_LRQ_MPS_01 {
            doc /* LRQ-MPS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-02'> VC_LRQ_MPS_02 {
            doc /* LRQ-MPS-02 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-03'> VC_LRQ_MPS_03 {
            doc /* LRQ-MPS-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-04'> VC_LRQ_MPS_04 {
            doc /* LRQ-MPS-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-05'> VC_LRQ_MPS_05 {
            doc /* LRQ-MPS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-06'> VC_LRQ_MPS_06 {
            doc /* LRQ-MPS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-07'> VC_LRQ_MPS_07 {
            doc /* LRQ-MPS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-08'> VC_LRQ_MPS_08 {
            doc /* LRQ-MPS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-09'> VC_LRQ_MPS_09 {
            doc /* LRQ-MPS-09 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-10'> VC_LRQ_MPS_10 {
            doc /* LRQ-MPS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-11'> VC_LRQ_MPS_11 {
            doc /* LRQ-MPS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-12'> VC_LRQ_MPS_12 {
            doc /* LRQ-MPS-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-13'> VC_LRQ_MPS_13 {
            doc /* LRQ-MPS-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-14'> VC_LRQ_MPS_14 {
            doc /* LRQ-MPS-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-15'> VC_LRQ_MPS_15 {
            doc /* LRQ-MPS-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-16'> VC_LRQ_MPS_16 {
            doc /* LRQ-MPS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-17'> VC_LRQ_MPS_17 {
            doc /* LRQ-MPS-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-18'> VC_LRQ_MPS_18 {
            doc /* LRQ-MPS-18 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-19'> VC_LRQ_MPS_19 {
            doc /* LRQ-MPS-19 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-20'> VC_LRQ_MPS_20 {
            doc /* LRQ-MPS-20 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-21'> VC_LRQ_MPS_21 {
            doc /* LRQ-MPS-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-22'> VC_LRQ_MPS_22 {
            doc /* LRQ-MPS-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-23'> VC_LRQ_MPS_23 {
            doc /* LRQ-MPS-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-24'> VC_LRQ_MPS_24 {
            doc /* LRQ-MPS-24 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-25'> VC_LRQ_MPS_25 {
            doc /* LRQ-MPS-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-26'> VC_LRQ_MPS_26 {
            doc /* LRQ-MPS-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-27'> VC_LRQ_MPS_27 {
            doc /* LRQ-MPS-27 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-28'> VC_LRQ_MPS_28 {
            doc /* LRQ-MPS-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-29'> VC_LRQ_MPS_29 {
            doc /* LRQ-MPS-29 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-MPS-30'> VC_LRQ_MPS_30 {
            doc /* LRQ-MPS-30 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_MPS::LRQ_MPS_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-01'> VC_LRQ_OMS_01 {
            doc /* LRQ-OMS-01 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-02'> VC_LRQ_OMS_02 {
            doc /* LRQ-OMS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-03'> VC_LRQ_OMS_03 {
            doc /* LRQ-OMS-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-04'> VC_LRQ_OMS_04 {
            doc /* LRQ-OMS-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-05'> VC_LRQ_OMS_05 {
            doc /* LRQ-OMS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-06'> VC_LRQ_OMS_06 {
            doc /* LRQ-OMS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-07'> VC_LRQ_OMS_07 {
            doc /* LRQ-OMS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-08'> VC_LRQ_OMS_08 {
            doc /* LRQ-OMS-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-09'> VC_LRQ_OMS_09 {
            doc /* LRQ-OMS-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-10'> VC_LRQ_OMS_10 {
            doc /* LRQ-OMS-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-11'> VC_LRQ_OMS_11 {
            doc /* LRQ-OMS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-12'> VC_LRQ_OMS_12 {
            doc /* LRQ-OMS-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-13'> VC_LRQ_OMS_13 {
            doc /* LRQ-OMS-13 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-14'> VC_LRQ_OMS_14 {
            doc /* LRQ-OMS-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-15'> VC_LRQ_OMS_15 {
            doc /* LRQ-OMS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-16'> VC_LRQ_OMS_16 {
            doc /* LRQ-OMS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-17'> VC_LRQ_OMS_17 {
            doc /* LRQ-OMS-17 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-18'> VC_LRQ_OMS_18 {
            doc /* LRQ-OMS-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-19'> VC_LRQ_OMS_19 {
            doc /* LRQ-OMS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-20'> VC_LRQ_OMS_20 {
            doc /* LRQ-OMS-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-21'> VC_LRQ_OMS_21 {
            doc /* LRQ-OMS-21 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-22'> VC_LRQ_OMS_22 {
            doc /* LRQ-OMS-22 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-23'> VC_LRQ_OMS_23 {
            doc /* LRQ-OMS-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-24'> VC_LRQ_OMS_24 {
            doc /* LRQ-OMS-24 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-25'> VC_LRQ_OMS_25 {
            doc /* LRQ-OMS-25 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-26'> VC_LRQ_OMS_26 {
            doc /* LRQ-OMS-26 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-27'> VC_LRQ_OMS_27 {
            doc /* LRQ-OMS-27 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-28'> VC_LRQ_OMS_28 {
            doc /* LRQ-OMS-28 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-OMS-29'> VC_LRQ_OMS_29 {
            doc /* LRQ-OMS-29 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_OMS::LRQ_OMS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-01'> VC_LRQ_PLS_01 {
            doc /* LRQ-PLS-01 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-02'> VC_LRQ_PLS_02 {
            doc /* LRQ-PLS-02 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-03'> VC_LRQ_PLS_03 {
            doc /* LRQ-PLS-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-04'> VC_LRQ_PLS_04 {
            doc /* LRQ-PLS-04 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-05'> VC_LRQ_PLS_05 {
            doc /* LRQ-PLS-05 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-06'> VC_LRQ_PLS_06 {
            doc /* LRQ-PLS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-07'> VC_LRQ_PLS_07 {
            doc /* LRQ-PLS-07 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-08'> VC_LRQ_PLS_08 {
            doc /* LRQ-PLS-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-09'> VC_LRQ_PLS_09 {
            doc /* LRQ-PLS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-10'> VC_LRQ_PLS_10 {
            doc /* LRQ-PLS-10 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-11'> VC_LRQ_PLS_11 {
            doc /* LRQ-PLS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-12'> VC_LRQ_PLS_12 {
            doc /* LRQ-PLS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-13'> VC_LRQ_PLS_13 {
            doc /* LRQ-PLS-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-14'> VC_LRQ_PLS_14 {
            doc /* LRQ-PLS-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-15'> VC_LRQ_PLS_15 {
            doc /* LRQ-PLS-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-16'> VC_LRQ_PLS_16 {
            doc /* LRQ-PLS-16 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-17'> VC_LRQ_PLS_17 {
            doc /* LRQ-PLS-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-18'> VC_LRQ_PLS_18 {
            doc /* LRQ-PLS-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-19'> VC_LRQ_PLS_19 {
            doc /* LRQ-PLS-19 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-20'> VC_LRQ_PLS_20 {
            doc /* LRQ-PLS-20 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-21'> VC_LRQ_PLS_21 {
            doc /* LRQ-PLS-21 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-22'> VC_LRQ_PLS_22 {
            doc /* LRQ-PLS-22 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-23'> VC_LRQ_PLS_23 {
            doc /* LRQ-PLS-23 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-24'> VC_LRQ_PLS_24 {
            doc /* LRQ-PLS-24 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-25'> VC_LRQ_PLS_25 {
            doc /* LRQ-PLS-25 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-26'> VC_LRQ_PLS_26 {
            doc /* LRQ-PLS-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-PLS-27'> VC_LRQ_PLS_27 {
            doc /* LRQ-PLS-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_PLS::LRQ_PLS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-01'> VC_LRQ_RCS_01 {
            doc /* LRQ-RCS-01 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-02'> VC_LRQ_RCS_02 {
            doc /* LRQ-RCS-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-03'> VC_LRQ_RCS_03 {
            doc /* LRQ-RCS-03 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-04'> VC_LRQ_RCS_04 {
            doc /* LRQ-RCS-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-05'> VC_LRQ_RCS_05 {
            doc /* LRQ-RCS-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-06'> VC_LRQ_RCS_06 {
            doc /* LRQ-RCS-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-07'> VC_LRQ_RCS_07 {
            doc /* LRQ-RCS-07 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-08'> VC_LRQ_RCS_08 {
            doc /* LRQ-RCS-08 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-09'> VC_LRQ_RCS_09 {
            doc /* LRQ-RCS-09 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-10'> VC_LRQ_RCS_10 {
            doc /* LRQ-RCS-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-11'> VC_LRQ_RCS_11 {
            doc /* LRQ-RCS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-12'> VC_LRQ_RCS_12 {
            doc /* LRQ-RCS-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-13'> VC_LRQ_RCS_13 {
            doc /* LRQ-RCS-13 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-14'> VC_LRQ_RCS_14 {
            doc /* LRQ-RCS-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-15'> VC_LRQ_RCS_15 {
            doc /* LRQ-RCS-15 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-16'> VC_LRQ_RCS_16 {
            doc /* LRQ-RCS-16 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-17'> VC_LRQ_RCS_17 {
            doc /* LRQ-RCS-17 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-18'> VC_LRQ_RCS_18 {
            doc /* LRQ-RCS-18 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-19'> VC_LRQ_RCS_19 {
            doc /* LRQ-RCS-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-20'> VC_LRQ_RCS_20 {
            doc /* LRQ-RCS-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-21'> VC_LRQ_RCS_21 {
            doc /* LRQ-RCS-21 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-22'> VC_LRQ_RCS_22 {
            doc /* LRQ-RCS-22 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-23'> VC_LRQ_RCS_23 {
            doc /* LRQ-RCS-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-24'> VC_LRQ_RCS_24 {
            doc /* LRQ-RCS-24 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-25'> VC_LRQ_RCS_25 {
            doc /* LRQ-RCS-25 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-26'> VC_LRQ_RCS_26 {
            doc /* LRQ-RCS-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-27'> VC_LRQ_RCS_27 {
            doc /* LRQ-RCS-27 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-28'> VC_LRQ_RCS_28 {
            doc /* LRQ-RCS-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-29'> VC_LRQ_RCS_29 {
            doc /* LRQ-RCS-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-RCS-30'> VC_LRQ_RCS_30 {
            doc /* LRQ-RCS-30 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_RCS::LRQ_RCS_30; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-01'> VC_LRQ_STR_01 {
            doc /* LRQ-STR-01 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-02'> VC_LRQ_STR_02 {
            doc /* LRQ-STR-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-03'> VC_LRQ_STR_03 {
            doc /* LRQ-STR-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-04'> VC_LRQ_STR_04 {
            doc /* LRQ-STR-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-05'> VC_LRQ_STR_05 {
            doc /* LRQ-STR-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-06'> VC_LRQ_STR_06 {
            doc /* LRQ-STR-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-07'> VC_LRQ_STR_07 {
            doc /* LRQ-STR-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-08'> VC_LRQ_STR_08 {
            doc /* LRQ-STR-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-09'> VC_LRQ_STR_09 {
            doc /* LRQ-STR-09 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-10'> VC_LRQ_STR_10 {
            doc /* LRQ-STR-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-11'> VC_LRQ_STR_11 {
            doc /* LRQ-STR-11 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-12'> VC_LRQ_STR_12 {
            doc /* LRQ-STR-12 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-13'> VC_LRQ_STR_13 {
            doc /* LRQ-STR-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-14'> VC_LRQ_STR_14 {
            doc /* LRQ-STR-14 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-15'> VC_LRQ_STR_15 {
            doc /* LRQ-STR-15 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-16'> VC_LRQ_STR_16 {
            doc /* LRQ-STR-16 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-17'> VC_LRQ_STR_17 {
            doc /* LRQ-STR-17 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-18'> VC_LRQ_STR_18 {
            doc /* LRQ-STR-18 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-19'> VC_LRQ_STR_19 {
            doc /* LRQ-STR-19 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-20'> VC_LRQ_STR_20 {
            doc /* LRQ-STR-20 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-21'> VC_LRQ_STR_21 {
            doc /* LRQ-STR-21 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-22'> VC_LRQ_STR_22 {
            doc /* LRQ-STR-22 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-23'> VC_LRQ_STR_23 {
            doc /* LRQ-STR-23 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-24'> VC_LRQ_STR_24 {
            doc /* LRQ-STR-24 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-25'> VC_LRQ_STR_25 {
            doc /* LRQ-STR-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-26'> VC_LRQ_STR_26 {
            doc /* LRQ-STR-26 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-27'> VC_LRQ_STR_27 {
            doc /* LRQ-STR-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-STR-28'> VC_LRQ_STR_28 {
            doc /* LRQ-STR-28 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_STR::LRQ_STR_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-01'> VC_LRQ_TPS_01 {
            doc /* LRQ-TPS-01 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-02'> VC_LRQ_TPS_02 {
            doc /* LRQ-TPS-02 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-03'> VC_LRQ_TPS_03 {
            doc /* LRQ-TPS-03 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-04'> VC_LRQ_TPS_04 {
            doc /* LRQ-TPS-04 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-05'> VC_LRQ_TPS_05 {
            doc /* LRQ-TPS-05 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-06'> VC_LRQ_TPS_06 {
            doc /* LRQ-TPS-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-07'> VC_LRQ_TPS_07 {
            doc /* LRQ-TPS-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-08'> VC_LRQ_TPS_08 {
            doc /* LRQ-TPS-08 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-09'> VC_LRQ_TPS_09 {
            doc /* LRQ-TPS-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-10'> VC_LRQ_TPS_10 {
            doc /* LRQ-TPS-10 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-11'> VC_LRQ_TPS_11 {
            doc /* LRQ-TPS-11 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-TPS-12'> VC_LRQ_TPS_12 {
            doc /* LRQ-TPS-12 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_TPS::LRQ_TPS_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-01'> VC_LRQ_ET_01 {
            doc /* LRQ-ET-01 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-02'> VC_LRQ_ET_02 {
            doc /* LRQ-ET-02 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-03'> VC_LRQ_ET_03 {
            doc /* LRQ-ET-03 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-04'> VC_LRQ_ET_04 {
            doc /* LRQ-ET-04 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-05'> VC_LRQ_ET_05 {
            doc /* LRQ-ET-05 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-06'> VC_LRQ_ET_06 {
            doc /* LRQ-ET-06 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-07'> VC_LRQ_ET_07 {
            doc /* LRQ-ET-07 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-08'> VC_LRQ_ET_08 {
            doc /* LRQ-ET-08 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-09'> VC_LRQ_ET_09 {
            doc /* LRQ-ET-09 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-10'> VC_LRQ_ET_10 {
            doc /* LRQ-ET-10 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-11'> VC_LRQ_ET_11 {
            doc /* LRQ-ET-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-12'> VC_LRQ_ET_12 {
            doc /* LRQ-ET-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-13'> VC_LRQ_ET_13 {
            doc /* LRQ-ET-13 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-14'> VC_LRQ_ET_14 {
            doc /* LRQ-ET-14 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-15'> VC_LRQ_ET_15 {
            doc /* LRQ-ET-15 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-16'> VC_LRQ_ET_16 {
            doc /* LRQ-ET-16 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-17'> VC_LRQ_ET_17 {
            doc /* LRQ-ET-17 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-18'> VC_LRQ_ET_18 {
            doc /* LRQ-ET-18 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-19'> VC_LRQ_ET_19 {
            doc /* LRQ-ET-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-20'> VC_LRQ_ET_20 {
            doc /* LRQ-ET-20 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-21'> VC_LRQ_ET_21 {
            doc /* LRQ-ET-21 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-22'> VC_LRQ_ET_22 {
            doc /* LRQ-ET-22 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-23'> VC_LRQ_ET_23 {
            doc /* LRQ-ET-23 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-24'> VC_LRQ_ET_24 {
            doc /* LRQ-ET-24 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-25'> VC_LRQ_ET_25 {
            doc /* LRQ-ET-25 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-26'> VC_LRQ_ET_26 {
            doc /* LRQ-ET-26 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-27'> VC_LRQ_ET_27 {
            doc /* LRQ-ET-27 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-28'> VC_LRQ_ET_28 {
            doc /* LRQ-ET-28 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-ET-29'> VC_LRQ_ET_29 {
            doc /* LRQ-ET-29 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_ET::LRQ_ET_29; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-01'> VC_LRQ_SRB_01 {
            doc /* LRQ-SRB-01 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_01; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-02'> VC_LRQ_SRB_02 {
            doc /* LRQ-SRB-02 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_02; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-03'> VC_LRQ_SRB_03 {
            doc /* LRQ-SRB-03 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_03; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-04'> VC_LRQ_SRB_04 {
            doc /* LRQ-SRB-04 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_04; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-05'> VC_LRQ_SRB_05 {
            doc /* LRQ-SRB-05 をA（解析）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::analyze; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_05; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-06'> VC_LRQ_SRB_06 {
            doc /* LRQ-SRB-06 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_06; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-07'> VC_LRQ_SRB_07 {
            doc /* LRQ-SRB-07 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_07; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-08'> VC_LRQ_SRB_08 {
            doc /* LRQ-SRB-08 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_08; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-09'> VC_LRQ_SRB_09 {
            doc /* LRQ-SRB-09 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_09; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-10'> VC_LRQ_SRB_10 {
            doc /* LRQ-SRB-10 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_10; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-11'> VC_LRQ_SRB_11 {
            doc /* LRQ-SRB-11 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_11; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-12'> VC_LRQ_SRB_12 {
            doc /* LRQ-SRB-12 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_12; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-13'> VC_LRQ_SRB_13 {
            doc /* LRQ-SRB-13 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_13; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-14'> VC_LRQ_SRB_14 {
            doc /* LRQ-SRB-14 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_14; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-15'> VC_LRQ_SRB_15 {
            doc /* LRQ-SRB-15 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_15; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-16'> VC_LRQ_SRB_16 {
            doc /* LRQ-SRB-16 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_16; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-17'> VC_LRQ_SRB_17 {
            doc /* LRQ-SRB-17 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_17; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-18'> VC_LRQ_SRB_18 {
            doc /* LRQ-SRB-18 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_18; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-19'> VC_LRQ_SRB_19 {
            doc /* LRQ-SRB-19 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_19; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-20'> VC_LRQ_SRB_20 {
            doc /* LRQ-SRB-20 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_20; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-21'> VC_LRQ_SRB_21 {
            doc /* LRQ-SRB-21 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_21; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-22'> VC_LRQ_SRB_22 {
            doc /* LRQ-SRB-22 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_22; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-23'> VC_LRQ_SRB_23 {
            doc /* LRQ-SRB-23 をT（試験）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::test; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_23; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-24'> VC_LRQ_SRB_24 {
            doc /* LRQ-SRB-24 をI（検査）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::inspect; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_24; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-25'> VC_LRQ_SRB_25 {
            doc /* LRQ-SRB-25 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_25; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-26'> VC_LRQ_SRB_26 {
            doc /* LRQ-SRB-26 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_26; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-27'> VC_LRQ_SRB_27 {
            doc /* LRQ-SRB-27 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_27; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-28'> VC_LRQ_SRB_28 {
            doc /* LRQ-SRB-28 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_28; }
            return verdict : VerdictKind;
        }
        verification def <'VC-LRQ-SRB-29'> VC_LRQ_SRB_29 {
            doc /* LRQ-SRB-29 をD（実証）で確かめる。 */
            @VerificationMethod { kind = VerificationMethodKind::demo; }
            subject s : Parts::Part;
            objective { verify LRQ_SRB::LRQ_SRB_29; }
            return verdict : VerdictKind;
        }
    }
    // ---- 検証の結果（対象は割付先の機能説明書の部品。根拠ありは pass、根拠なしは inconclusive）
    package Results {
        verification vc_lrq_apu_01 : Verification::VC_LRQ_APU_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_02 : Verification::VC_LRQ_APU_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_03 : Verification::VC_LRQ_APU_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_04 : Verification::VC_LRQ_APU_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.cir;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_05 : Verification::VC_LRQ_APU_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_06 : Verification::VC_LRQ_APU_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_07 : Verification::VC_LRQ_APU_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_08 : Verification::VC_LRQ_APU_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_09 : Verification::VC_LRQ_APU_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_10 : Verification::VC_LRQ_APU_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_11 : Verification::VC_LRQ_APU_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_12 : Verification::VC_LRQ_APU_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ful;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_13 : Verification::VC_LRQ_APU_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_14 : Verification::VC_LRQ_APU_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_15 : Verification::VC_LRQ_APU_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_16 : Verification::VC_LRQ_APU_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.hyd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_17 : Verification::VC_LRQ_APU_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_18 : Verification::VC_LRQ_APU_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_19 : Verification::VC_LRQ_APU_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_20 : Verification::VC_LRQ_APU_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_21 : Verification::VC_LRQ_APU_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_22 : Verification::VC_LRQ_APU_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_apu_23 : Verification::VC_LRQ_APU_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_24 : Verification::VC_LRQ_APU_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_25 : Verification::VC_LRQ_APU_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_26 : Verification::VC_LRQ_APU_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.trb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_27 : Verification::VC_LRQ_APU_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.wsb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_28 : Verification::VC_LRQ_APU_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.wsb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_29 : Verification::VC_LRQ_APU_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.wsb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_apu_30 : Verification::VC_LRQ_APU_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.apu.wsb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_01 : Verification::VC_LRQ_CREW_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_02 : Verification::VC_LRQ_CREW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_03 : Verification::VC_LRQ_CREW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_04 : Verification::VC_LRQ_CREW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_05 : Verification::VC_LRQ_CREW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.hab;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_06 : Verification::VC_LRQ_CREW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_07 : Verification::VC_LRQ_CREW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_08 : Verification::VC_LRQ_CREW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_09 : Verification::VC_LRQ_CREW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_10 : Verification::VC_LRQ_CREW_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ltg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_11 : Verification::VC_LRQ_CREW_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_12 : Verification::VC_LRQ_CREW_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_13 : Verification::VC_LRQ_CREW_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_14 : Verification::VC_LRQ_CREW_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_15 : Verification::VC_LRQ_CREW_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.med;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_16 : Verification::VC_LRQ_CREW_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_17 : Verification::VC_LRQ_CREW_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_18 : Verification::VC_LRQ_CREW_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_19 : Verification::VC_LRQ_CREW_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_20 : Verification::VC_LRQ_CREW_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_21 : Verification::VC_LRQ_CREW_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_22 : Verification::VC_LRQ_CREW_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_crew_23 : Verification::VC_LRQ_CREW_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_24 : Verification::VC_LRQ_CREW_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.stw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_25 : Verification::VC_LRQ_CREW_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_26 : Verification::VC_LRQ_CREW_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_27 : Verification::VC_LRQ_CREW_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_28 : Verification::VC_LRQ_CREW_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_29 : Verification::VC_LRQ_CREW_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_crew_30 : Verification::VC_LRQ_CREW_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.crew.esc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_01 : Verification::VC_LRQ_CT_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_02 : Verification::VC_LRQ_CT_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_03 : Verification::VC_LRQ_CT_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_04 : Verification::VC_LRQ_CT_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.aud;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_05 : Verification::VC_LRQ_CT_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_06 : Verification::VC_LRQ_CT_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_07 : Verification::VC_LRQ_CT_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_08 : Verification::VC_LRQ_CT_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.cctv;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_09 : Verification::VC_LRQ_CT_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_10 : Verification::VC_LRQ_CT_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_11 : Verification::VC_LRQ_CT_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_12 : Verification::VC_LRQ_CT_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.inst;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_13 : Verification::VC_LRQ_CT_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_14 : Verification::VC_LRQ_CT_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_15 : Verification::VC_LRQ_CT_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_16 : Verification::VC_LRQ_CT_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_17 : Verification::VC_LRQ_CT_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ku;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_18 : Verification::VC_LRQ_CT_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_19 : Verification::VC_LRQ_CT_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_20 : Verification::VC_LRQ_CT_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_21 : Verification::VC_LRQ_CT_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_22 : Verification::VC_LRQ_CT_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_ct_23 : Verification::VC_LRQ_CT_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_24 : Verification::VC_LRQ_CT_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_25 : Verification::VC_LRQ_CT_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_26 : Verification::VC_LRQ_CT_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.sbd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_27 : Verification::VC_LRQ_CT_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_28 : Verification::VC_LRQ_CT_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_29 : Verification::VC_LRQ_CT_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_ct_30 : Verification::VC_LRQ_CT_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.ct.uhf;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_01 : Verification::VC_LRQ_CW_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_02 : Verification::VC_LRQ_CW_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_03 : Verification::VC_LRQ_CW_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_04 : Verification::VC_LRQ_CW_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.pri;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_05 : Verification::VC_LRQ_CW_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_06 : Verification::VC_LRQ_CW_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_07 : Verification::VC_LRQ_CW_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_08 : Verification::VC_LRQ_CW_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_09 : Verification::VC_LRQ_CW_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ann;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_10 : Verification::VC_LRQ_CW_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_11 : Verification::VC_LRQ_CW_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_12 : Verification::VC_LRQ_CW_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_13 : Verification::VC_LRQ_CW_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_14 : Verification::VC_LRQ_CW_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.bkp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_15 : Verification::VC_LRQ_CW_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_16 : Verification::VC_LRQ_CW_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_17 : Verification::VC_LRQ_CW_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.alt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_18 : Verification::VC_LRQ_CW_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_cw_19 : Verification::VC_LRQ_CW_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_20 : Verification::VC_LRQ_CW_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_21 : Verification::VC_LRQ_CW_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_cw_22 : Verification::VC_LRQ_CW_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.cw.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_01 : Verification::VC_LRQ_DPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_02 : Verification::VC_LRQ_DPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_03 : Verification::VC_LRQ_DPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_04 : Verification::VC_LRQ_DPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.asc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_05 : Verification::VC_LRQ_DPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_06 : Verification::VC_LRQ_DPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_07 : Verification::VC_LRQ_DPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_08 : Verification::VC_LRQ_DPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.bus;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_09 : Verification::VC_LRQ_DPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_10 : Verification::VC_LRQ_DPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_11 : Verification::VC_LRQ_DPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_12 : Verification::VC_LRQ_DPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.fsw;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_13 : Verification::VC_LRQ_DPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_14 : Verification::VC_LRQ_DPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_15 : Verification::VC_LRQ_DPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_16 : Verification::VC_LRQ_DPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_17 : Verification::VC_LRQ_DPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.gpc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_18 : Verification::VC_LRQ_DPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_19 : Verification::VC_LRQ_DPS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_20 : Verification::VC_LRQ_DPS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_21 : Verification::VC_LRQ_DPS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.meds;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_22 : Verification::VC_LRQ_DPS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_23 : Verification::VC_LRQ_DPS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_24 : Verification::VC_LRQ_DPS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_25 : Verification::VC_LRQ_DPS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.mtu;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_26 : Verification::VC_LRQ_DPS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_27 : Verification::VC_LRQ_DPS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_28 : Verification::VC_LRQ_DPS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_dps_29 : Verification::VC_LRQ_DPS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_dps_30 : Verification::VC_LRQ_DPS_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.dps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_01 : Verification::VC_LRQ_EPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_02 : Verification::VC_LRQ_EPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_03 : Verification::VC_LRQ_EPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_04 : Verification::VC_LRQ_EPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.prsd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_05 : Verification::VC_LRQ_EPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_06 : Verification::VC_LRQ_EPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_07 : Verification::VC_LRQ_EPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_08 : Verification::VC_LRQ_EPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_09 : Verification::VC_LRQ_EPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.fcp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_10 : Verification::VC_LRQ_EPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_11 : Verification::VC_LRQ_EPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_12 : Verification::VC_LRQ_EPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_13 : Verification::VC_LRQ_EPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.dc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_14 : Verification::VC_LRQ_EPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_15 : Verification::VC_LRQ_EPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eps_16 : Verification::VC_LRQ_EPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_17 : Verification::VC_LRQ_EPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eps_18 : Verification::VC_LRQ_EPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eps.ac;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_01 : Verification::VC_LRQ_EVA_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_02 : Verification::VC_LRQ_EVA_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_03 : Verification::VC_LRQ_EVA_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_04 : Verification::VC_LRQ_EVA_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_05 : Verification::VC_LRQ_EVA_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.chk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_06 : Verification::VC_LRQ_EVA_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_07 : Verification::VC_LRQ_EVA_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_08 : Verification::VC_LRQ_EVA_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_09 : Verification::VC_LRQ_EVA_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_10 : Verification::VC_LRQ_EVA_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.dpr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_11 : Verification::VC_LRQ_EVA_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_12 : Verification::VC_LRQ_EVA_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_13 : Verification::VC_LRQ_EVA_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_14 : Verification::VC_LRQ_EVA_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_15 : Verification::VC_LRQ_EVA_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.emg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_16 : Verification::VC_LRQ_EVA_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_17 : Verification::VC_LRQ_EVA_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_18 : Verification::VC_LRQ_EVA_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_19 : Verification::VC_LRQ_EVA_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.mnt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_20 : Verification::VC_LRQ_EVA_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_21 : Verification::VC_LRQ_EVA_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_22 : Verification::VC_LRQ_EVA_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_23 : Verification::VC_LRQ_EVA_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_24 : Verification::VC_LRQ_EVA_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_25 : Verification::VC_LRQ_EVA_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_26 : Verification::VC_LRQ_EVA_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_eva_27 : Verification::VC_LRQ_EVA_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_28 : Verification::VC_LRQ_EVA_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_eva_29 : Verification::VC_LRQ_EVA_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.eva.tls;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_gnc_01 : Verification::VC_LRQ_GNC_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_02 : Verification::VC_LRQ_GNC_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_gnc_03 : Verification::VC_LRQ_GNC_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_04 : Verification::VC_LRQ_GNC_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_05 : Verification::VC_LRQ_GNC_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_06 : Verification::VC_LRQ_GNC_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_07 : Verification::VC_LRQ_GNC_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ccd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_gnc_08 : Verification::VC_LRQ_GNC_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_09 : Verification::VC_LRQ_GNC_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_10 : Verification::VC_LRQ_GNC_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_11 : Verification::VC_LRQ_GNC_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.fcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_12 : Verification::VC_LRQ_GNC_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_13 : Verification::VC_LRQ_GNC_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_14 : Verification::VC_LRQ_GNC_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_15 : Verification::VC_LRQ_GNC_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.gns;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_16 : Verification::VC_LRQ_GNC_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_17 : Verification::VC_LRQ_GNC_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_18 : Verification::VC_LRQ_GNC_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_19 : Verification::VC_LRQ_GNC_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ins;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_20 : Verification::VC_LRQ_GNC_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_21 : Verification::VC_LRQ_GNC_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_gnc_22 : Verification::VC_LRQ_GNC_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_23 : Verification::VC_LRQ_GNC_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.nas;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_24 : Verification::VC_LRQ_GNC_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_25 : Verification::VC_LRQ_GNC_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_gnc_26 : Verification::VC_LRQ_GNC_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_gnc_27 : Verification::VC_LRQ_GNC_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.gnc.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_01 : Verification::VC_LRQ_MECH_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_02 : Verification::VC_LRQ_MECH_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_03 : Verification::VC_LRQ_MECH_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_04 : Verification::VC_LRQ_MECH_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.act;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_05 : Verification::VC_LRQ_MECH_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_06 : Verification::VC_LRQ_MECH_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_07 : Verification::VC_LRQ_MECH_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_08 : Verification::VC_LRQ_MECH_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.dec;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_09 : Verification::VC_LRQ_MECH_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_10 : Verification::VC_LRQ_MECH_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_11 : Verification::VC_LRQ_MECH_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_12 : Verification::VC_LRQ_MECH_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_13 : Verification::VC_LRQ_MECH_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ldg;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_14 : Verification::VC_LRQ_MECH_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_15 : Verification::VC_LRQ_MECH_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_16 : Verification::VC_LRQ_MECH_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_17 : Verification::VC_LRQ_MECH_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_18 : Verification::VC_LRQ_MECH_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_19 : Verification::VC_LRQ_MECH_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_20 : Verification::VC_LRQ_MECH_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_21 : Verification::VC_LRQ_MECH_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_22 : Verification::VC_LRQ_MECH_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.plb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_23 : Verification::VC_LRQ_MECH_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mech_24 : Verification::VC_LRQ_MECH_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_25 : Verification::VC_LRQ_MECH_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_26 : Verification::VC_LRQ_MECH_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mech_27 : Verification::VC_LRQ_MECH_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mech.vnt;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_01 : Verification::VC_LRQ_MPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_02 : Verification::VC_LRQ_MPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_03 : Verification::VC_LRQ_MPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_04 : Verification::VC_LRQ_MPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_05 : Verification::VC_LRQ_MPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_06 : Verification::VC_LRQ_MPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_07 : Verification::VC_LRQ_MPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_08 : Verification::VC_LRQ_MPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_09 : Verification::VC_LRQ_MPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.dmp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_10 : Verification::VC_LRQ_MPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_11 : Verification::VC_LRQ_MPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_12 : Verification::VC_LRQ_MPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_13 : Verification::VC_LRQ_MPS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_14 : Verification::VC_LRQ_MPS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_15 : Verification::VC_LRQ_MPS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_16 : Verification::VC_LRQ_MPS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_17 : Verification::VC_LRQ_MPS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_18 : Verification::VC_LRQ_MPS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_19 : Verification::VC_LRQ_MPS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_20 : Verification::VC_LRQ_MPS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_21 : Verification::VC_LRQ_MPS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_22 : Verification::VC_LRQ_MPS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.pms;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_23 : Verification::VC_LRQ_MPS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_24 : Verification::VC_LRQ_MPS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_25 : Verification::VC_LRQ_MPS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_26 : Verification::VC_LRQ_MPS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.ssme;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_27 : Verification::VC_LRQ_MPS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_28 : Verification::VC_LRQ_MPS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_mps_29 : Verification::VC_LRQ_MPS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_mps_30 : Verification::VC_LRQ_MPS_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.mps.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_01 : Verification::VC_LRQ_OMS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_02 : Verification::VC_LRQ_OMS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_03 : Verification::VC_LRQ_OMS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_04 : Verification::VC_LRQ_OMS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.eng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_05 : Verification::VC_LRQ_OMS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_06 : Verification::VC_LRQ_OMS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_07 : Verification::VC_LRQ_OMS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_08 : Verification::VC_LRQ_OMS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.he;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_09 : Verification::VC_LRQ_OMS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_10 : Verification::VC_LRQ_OMS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_11 : Verification::VC_LRQ_OMS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_12 : Verification::VC_LRQ_OMS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_13 : Verification::VC_LRQ_OMS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_14 : Verification::VC_LRQ_OMS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_15 : Verification::VC_LRQ_OMS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_16 : Verification::VC_LRQ_OMS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.psd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_17 : Verification::VC_LRQ_OMS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.thm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_18 : Verification::VC_LRQ_OMS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.thm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_19 : Verification::VC_LRQ_OMS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.thm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_20 : Verification::VC_LRQ_OMS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.thm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_21 : Verification::VC_LRQ_OMS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_22 : Verification::VC_LRQ_OMS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_23 : Verification::VC_LRQ_OMS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_24 : Verification::VC_LRQ_OMS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_25 : Verification::VC_LRQ_OMS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_26 : Verification::VC_LRQ_OMS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_27 : Verification::VC_LRQ_OMS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_oms_28 : Verification::VC_LRQ_OMS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_oms_29 : Verification::VC_LRQ_OMS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.oms.xfd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_01 : Verification::VC_LRQ_PLS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_02 : Verification::VC_LRQ_PLS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_03 : Verification::VC_LRQ_PLS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_04 : Verification::VC_LRQ_PLS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_05 : Verification::VC_LRQ_PLS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.arm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_06 : Verification::VC_LRQ_PLS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_07 : Verification::VC_LRQ_PLS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_08 : Verification::VC_LRQ_PLS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_09 : Verification::VC_LRQ_PLS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_10 : Verification::VC_LRQ_PLS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ctl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_11 : Verification::VC_LRQ_PLS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_12 : Verification::VC_LRQ_PLS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_13 : Verification::VC_LRQ_PLS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_14 : Verification::VC_LRQ_PLS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.mpm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_15 : Verification::VC_LRQ_PLS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_16 : Verification::VC_LRQ_PLS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_17 : Verification::VC_LRQ_PLS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_18 : Verification::VC_LRQ_PLS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_19 : Verification::VC_LRQ_PLS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ods;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_20 : Verification::VC_LRQ_PLS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_21 : Verification::VC_LRQ_PLS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_22 : Verification::VC_LRQ_PLS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_23 : Verification::VC_LRQ_PLS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_24 : Verification::VC_LRQ_PLS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.prl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_25 : Verification::VC_LRQ_PLS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.prl;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_pls_26 : Verification::VC_LRQ_PLS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.prl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_pls_27 : Verification::VC_LRQ_PLS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.pls.prl;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_01 : Verification::VC_LRQ_RCS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_02 : Verification::VC_LRQ_RCS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_03 : Verification::VC_LRQ_RCS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_04 : Verification::VC_LRQ_RCS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.hep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_05 : Verification::VC_LRQ_RCS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_06 : Verification::VC_LRQ_RCS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_07 : Verification::VC_LRQ_RCS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_08 : Verification::VC_LRQ_RCS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_09 : Verification::VC_LRQ_RCS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.htr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_10 : Verification::VC_LRQ_RCS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_11 : Verification::VC_LRQ_RCS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_12 : Verification::VC_LRQ_RCS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_13 : Verification::VC_LRQ_RCS_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.jet;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_14 : Verification::VC_LRQ_RCS_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_15 : Verification::VC_LRQ_RCS_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_16 : Verification::VC_LRQ_RCS_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_17 : Verification::VC_LRQ_RCS_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_18 : Verification::VC_LRQ_RCS_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.ops;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_19 : Verification::VC_LRQ_RCS_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_20 : Verification::VC_LRQ_RCS_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_21 : Verification::VC_LRQ_RCS_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_22 : Verification::VC_LRQ_RCS_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.prp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_23 : Verification::VC_LRQ_RCS_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_24 : Verification::VC_LRQ_RCS_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_25 : Verification::VC_LRQ_RCS_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rjd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_26 : Verification::VC_LRQ_RCS_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_27 : Verification::VC_LRQ_RCS_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_rcs_28 : Verification::VC_LRQ_RCS_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_29 : Verification::VC_LRQ_RCS_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_rcs_30 : Verification::VC_LRQ_RCS_30 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.rcs.rm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_01 : Verification::VC_LRQ_STR_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_02 : Verification::VC_LRQ_STR_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_03 : Verification::VC_LRQ_STR_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_04 : Verification::VC_LRQ_STR_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_05 : Verification::VC_LRQ_STR_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.aft;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_06 : Verification::VC_LRQ_STR_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_07 : Verification::VC_LRQ_STR_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_08 : Verification::VC_LRQ_STR_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_09 : Verification::VC_LRQ_STR_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_10 : Verification::VC_LRQ_STR_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.crm;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_11 : Verification::VC_LRQ_STR_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_12 : Verification::VC_LRQ_STR_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_13 : Verification::VC_LRQ_STR_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_14 : Verification::VC_LRQ_STR_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.fwd;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_15 : Verification::VC_LRQ_STR_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_16 : Verification::VC_LRQ_STR_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_17 : Verification::VC_LRQ_STR_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_18 : Verification::VC_LRQ_STR_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_19 : Verification::VC_LRQ_STR_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.mid;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_20 : Verification::VC_LRQ_STR_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_21 : Verification::VC_LRQ_STR_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_22 : Verification::VC_LRQ_STR_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_23 : Verification::VC_LRQ_STR_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.ops;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_24 : Verification::VC_LRQ_STR_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_str_25 : Verification::VC_LRQ_STR_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_26 : Verification::VC_LRQ_STR_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_27 : Verification::VC_LRQ_STR_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_str_28 : Verification::VC_LRQ_STR_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.str.wng;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_01 : Verification::VC_LRQ_TPS_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_tps_02 : Verification::VC_LRQ_TPS_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_tps_03 : Verification::VC_LRQ_TPS_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_04 : Verification::VC_LRQ_TPS_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_05 : Verification::VC_LRQ_TPS_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_06 : Verification::VC_LRQ_TPS_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_tps_07 : Verification::VC_LRQ_TPS_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_08 : Verification::VC_LRQ_TPS_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_tps_09 : Verification::VC_LRQ_TPS_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_10 : Verification::VC_LRQ_TPS_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_tps_11 : Verification::VC_LRQ_TPS_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_tps_12 : Verification::VC_LRQ_TPS_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.orb.tcs.ptc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_01 : Verification::VC_LRQ_ET_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_02 : Verification::VC_LRQ_ET_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_03 : Verification::VC_LRQ_ET_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_04 : Verification::VC_LRQ_ET_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_05 : Verification::VC_LRQ_ET_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.itk;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_06 : Verification::VC_LRQ_ET_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_07 : Verification::VC_LRQ_ET_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_08 : Verification::VC_LRQ_ET_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_09 : Verification::VC_LRQ_ET_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lh2;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_10 : Verification::VC_LRQ_ET_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_11 : Verification::VC_LRQ_ET_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_12 : Verification::VC_LRQ_ET_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_13 : Verification::VC_LRQ_ET_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_14 : Verification::VC_LRQ_ET_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.lox;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_15 : Verification::VC_LRQ_ET_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_16 : Verification::VC_LRQ_ET_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_17 : Verification::VC_LRQ_ET_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_18 : Verification::VC_LRQ_ET_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_19 : Verification::VC_LRQ_ET_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.sep;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_20 : Verification::VC_LRQ_ET_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_21 : Verification::VC_LRQ_ET_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_22 : Verification::VC_LRQ_ET_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_23 : Verification::VC_LRQ_ET_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_24 : Verification::VC_LRQ_ET_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.tps;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_25 : Verification::VC_LRQ_ET_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_26 : Verification::VC_LRQ_ET_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_27 : Verification::VC_LRQ_ET_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_et_28 : Verification::VC_LRQ_ET_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_et_29 : Verification::VC_LRQ_ET_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.et.umb;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_01 : Verification::VC_LRQ_SRB_01 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_02 : Verification::VC_LRQ_SRB_02 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_03 : Verification::VC_LRQ_SRB_03 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_04 : Verification::VC_LRQ_SRB_04 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_05 : Verification::VC_LRQ_SRB_05 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.att;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_06 : Verification::VC_LRQ_SRB_06 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_07 : Verification::VC_LRQ_SRB_07 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_08 : Verification::VC_LRQ_SRB_08 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_09 : Verification::VC_LRQ_SRB_09 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.avn;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_10 : Verification::VC_LRQ_SRB_10 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_11 : Verification::VC_LRQ_SRB_11 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_12 : Verification::VC_LRQ_SRB_12 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_13 : Verification::VC_LRQ_SRB_13 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_14 : Verification::VC_LRQ_SRB_14 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.hdp;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_15 : Verification::VC_LRQ_SRB_15 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_16 : Verification::VC_LRQ_SRB_16 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_17 : Verification::VC_LRQ_SRB_17 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_18 : Verification::VC_LRQ_SRB_18 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_19 : Verification::VC_LRQ_SRB_19 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.mtr;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_20 : Verification::VC_LRQ_SRB_20 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_21 : Verification::VC_LRQ_SRB_21 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_22 : Verification::VC_LRQ_SRB_22 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_23 : Verification::VC_LRQ_SRB_23 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_24 : Verification::VC_LRQ_SRB_24 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.tvc;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_25 : Verification::VC_LRQ_SRB_25 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_26 : Verification::VC_LRQ_SRB_26 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_27 : Verification::VC_LRQ_SRB_27 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::pass;
        }
        verification vc_lrq_srb_28 : Verification::VC_LRQ_SRB_28 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::inconclusive;
        }
        verification vc_lrq_srb_29 : Verification::VC_LRQ_SRB_29 {
            subject :>> s = SSD_BLK_SYS_001::context.sts.srb.rec;
            return :>> verdict = VerdictKind::pass;
        }
    }
}
