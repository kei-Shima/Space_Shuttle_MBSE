// SysML v2 テキスト：要求（L1・L2）と導出・充足・検証方法
// SSD-RQM-SYS-001 要求モデル定義書（導出・充足・検証方法） の表と同じデータ（Design/ の要求書19件と構造モデル SSD_BLK_SYS_001）から生成（lib/build_docs_ae.py）。
package SSD_RQM_SYS_001 {
    doc /* SSD-RQM-SYS-001 要求モデル定義書（導出・充足・検証方法）。要求書の要求を requirement、L1→L2 を導出、割付先を充足で表す。 */
    private import SSD_BLK_SYS_001::*;
    private import RequirementDerivation::*;
    private import VerificationCases::VerificationMethodKind;
    private import ScalarValues::*;
    metadata def RequirementInfo {
        doc /* 要求書の欄：要求書の文書番号・値・フェーズ（SSD-OPS-PHASE-001 の ID） */
        attribute document : String;
        attribute valueText : String;
        attribute phases : String;
    }
    metadata def VerificationIntent {
        doc /* 要求書の検証の欄：想定する検証方法（A＝analyze・T＝test・I＝inspect・D＝demo）と、検証の根拠の状態 */
        attribute method : VerificationMethodKind;
        attribute status : String;
    }
    package <'SSD-REQ-SYS-001'> REQ_SYS {
        doc /* システム要求書（L1） */
        requirement <'REQ-SYS-01'> REQ_SYS_01 {
            subject s : Parts::Part;
            doc /* システムは、オービタ、2本の SRB、推進薬を収める外部タンク、3基の SSME の4つの主要素で構成すること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "主要素 4（オービタ・SRB×2・ET・SSME×3）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-02'> REQ_SYS_02 {
            subject s : Parts::Part;
            doc /* ペイロードを高度 100〜312 n.mi. の地球周回軌道へ運べること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "100〜312 n.mi."; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-03'> REQ_SYS_03 {
            subject s : Parts::Part;
            doc /* 直径 15 ft・長さ 60 ft のペイロードベイにペイロードを収めること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "直径 15 ft × 長さ 60 ft"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠なし"; }
        }
        requirement <'REQ-SYS-04'> REQ_SYS_04 {
            subject s : Parts::Part;
            doc /* オービタと2本の SRB を再使用できること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "オービタ・SRB を再使用"; phases = "PH-8（ターンアラウンド）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-05'> REQ_SYS_05 {
            subject s : Parts::Part;
            doc /* 最大8人の乗員を運べること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "8人（実績）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'REQ-SYS-06'> REQ_SYS_06 {
            subject s : Parts::Part;
            doc /* 通常のミッションで 4〜16 日の軌道滞在ができること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "4〜16 日"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-07'> REQ_SYS_07 {
            subject s : Parts::Part;
            doc /* 乗員室を普段着で過ごせる環境（14.7 ± 0.2 psia）に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "14.7 ± 0.2 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-08'> REQ_SYS_08 {
            subject s : Parts::Part;
            doc /* 乗員と機体の加速度を 3g 以下に保ち、上昇時の Nx を +3.11 g 以下とすること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "3 g（上昇 Nx ≦ +3.11 g）"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-09'> REQ_SYS_09 {
            subject s : Parts::Part;
            doc /* 帰還時に約 1,100 n.mi. の横方向移動（クロスレンジ）ができること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "約 1,100 n.mi."; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-SYS-10'> REQ_SYS_10 {
            subject s : Parts::Part;
            doc /* 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "1故障で継続・2故障で帰還"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-11'> REQ_SYS_11 {
            subject s : Parts::Part;
            doc /* 系の冗長を、2故障許容・1故障許容・0故障許容・飛行不能の4段階で判定できるよう構成すること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "4段階"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-12'> REQ_SYS_12 {
            subject s : Parts::Part;
            doc /* 通常の EOM 着陸は第5飛行日（約96時間）以降とし、再突入に必須の系の1故障目では通常 NEOM まで飛行を続けられること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "EOM ≧ 約96時間"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-13'> REQ_SYS_13 {
            subject s : Parts::Part;
            doc /* すべての飛行で2日の延長日（着陸地の天候に1日、系統のウェーブオフに1日）を確保できること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "延長日 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-14'> REQ_SYS_14 {
            subject s : Parts::Part;
            doc /* 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "判定区分 3（上昇継続・MDF・次の PLS）"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-15'> REQ_SYS_15 {
            subject s : Parts::Part;
            doc /* 上昇中のエンジン停止に対し、intact アボート（RTLS・TAL・AOA・ATO）で計画した着陸地点に安全に戻れること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "intact アボート 4"; phases = "AB-RTLS（RTLS（射点帰還））・AB-TAL（TAL（大洋横断着陸））・AB-AOA（AOA（1周帰還））・AB-ATO（ATO（軌道へのアボート））"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-16'> REQ_SYS_16 {
            subject s : Parts::Part;
            doc /* 地上支援設備に接続していない間、オービタ・外部タンク・SRB・ペイロードの電力をすべて機上で供給すること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "全電力を機上で供給"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-17'> REQ_SYS_17 {
            subject s : Parts::Part;
            doc /* 着陸重量を、EOM で 233,000 lb、アボートで軌道傾斜角に応じた 239,000〜248,000 lb の認定限界以下にすること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "EOM 233k lb、アボート 239k〜248k lb"; phases = "PH-6（再突入）・AB-RTLS（RTLS（射点帰還））・AB-TAL（TAL（大洋横断着陸））・AB-AOA（AOA（1周帰還））・AB-ATO（ATO（軌道へのアボート））"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SYS-18'> REQ_SYS_18 {
            subject s : Parts::Part;
            doc /* 前脚接地の降下率を 11.5 fps（9.9°/s）以下にすること。 */
            @RequirementInfo { document = "SSD-REQ-SYS-001"; valueText = "11.5 fps"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-EPS-001'> REQ_EPS {
        doc /* 電力系（EPS）要求書（L2） */
        requirement <'REQ-EPS-01'> REQ_EPS_01 {
            subject s : Parts::Part;
            doc /* EPS は、反応剤の貯蔵・分配、燃料電池による発電、電力の分配・制御により、地上設備に接続していない間の全電力を供給すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "全電力（オービタ・ET・SRB・ペイロード）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-02'> REQ_EPS_02 {
            subject s : Parts::Part;
            doc /* 予備電池を持たず、3基の燃料電池で T-50 秒から着陸の滑走終了まで機体の 28 V 直流電力のすべてを発電すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "T-50 秒〜滑走終了"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-03'> REQ_EPS_03 {
            subject s : Parts::Part;
            doc /* 3基の燃料電池を独立した電源とし、それぞれが分離された直流主母線に同時に給電し、故障時は母線を相互に接続（バスタイ）できること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "独立電源 3・主母線 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-04'> REQ_EPS_04 {
            subject s : Parts::Part;
            doc /* 燃料電池1基を 2〜10 kW で連続、10〜12 kW で3時間ごとに15分以内運転でき、故障時は残る燃料電池を 2〜12 kW で連続、16 kW まで10分運転できること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "通常 2〜10 kW 連続・10〜12 kW は15分/3時間、故障時 2〜12 kW 連続・16 kW 10分"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-05'> REQ_EPS_05 {
            subject s : Parts::Part;
            doc /* 燃料電池の出力電圧は、負荷 2 kW で 32.5 V、12 kW で 27.5 V の範囲にあること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "27.5〜32.5 V DC（12〜2 kW）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-06'> REQ_EPS_06 {
            subject s : Parts::Part;
            doc /* 直流主母線の電圧を 27.0 V を超え 32.0 V 未満に保ち、26.4 V で主母線低電圧の警報を出すこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "27.0 < V < 32.0 V DC、警報 26.4 V"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-07'> REQ_EPS_07 {
            subject s : Parts::Part;
            doc /* 必須母線は3つの電源すべてに接続し、GPC などの重要機器への給電の冗長を最も高く保つこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "電源 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-08'> REQ_EPS_08 {
            subject s : Parts::Part;
            doc /* 各直流主母線から3台の静止形インバータで 3相 117 V（実効値）・400 Hz の交流母線（AC1〜AC3）を作ること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "117 V rms・400 Hz、インバータ 9"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-09'> REQ_EPS_09 {
            subject s : Parts::Part;
            doc /* 上昇中は交流電力を途切れさせず、交流母線センサは主エンジン制御器を守るため母線を切り離さずに警報だけを出すこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "上昇中は監視のみ（自動遮断しない）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-10'> REQ_EPS_10 {
            subject s : Parts::Part;
            doc /* PRSD は水素と酸素を超臨界状態（酸素 731 psia 以上・−285°F、水素 188 psia 以上・−420°F）で真空断熱タンクに貯蔵し、ヒータで圧力を保って燃料電池へ供給すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "O2 > 731 psia・−285°F、H2 > 188 psia・−420°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-11'> REQ_EPS_11 {
            subject s : Parts::Part;
            doc /* PRSD は乗員室の与圧用の酸素を ECLSS へ供給すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-12'> REQ_EPS_12 {
            subject s : Parts::Part;
            doc /* 反応剤のタンクをミッション期間に応じて搭載し、3セットで最大8日、5セットで12日、8セットで18日の軌道滞在をまかなうこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "3セット 8日・5セット 12日・8セット 18日"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-13'> REQ_EPS_13 {
            subject s : Parts::Part;
            doc /* 1基のタンクが漏れても、弁モジュールの逆止弁で他のタンクへの逆流を止め、反応剤のすべてを失わないこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "—"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-14'> REQ_EPS_14 {
            subject s : Parts::Part;
            doc /* 燃料電池のパージは各燃料電池を2分以上とし、パージの間隔を12時間以内とすること。パージは1基ずつ行うこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "各 2 分以上・間隔 12 時間以内"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠なし"; }
        }
        requirement <'REQ-EPS-15'> REQ_EPS_15 {
            subject s : Parts::Part;
            doc /* 燃料電池の排熱はフレオン冷却ループへ移し、スタックを約 200°F に保つこと。冷却を失ったときは 7 kW の負荷で9分以内に処置すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "約 200°F、冷却喪失時 9 分（7 kW）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-16'> REQ_EPS_16 {
            subject s : Parts::Part;
            doc /* 燃料電池の生成水を取り除き続け、ECLSS の飲料水タンクへ送ること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "除去が止まると約20分で浸水（7 kW）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-17'> REQ_EPS_17 {
            subject s : Parts::Part;
            doc /* 遠隔電力制御器（RPC）は、出力電流を定格の150%に2〜3秒制限し、3秒以内に遮断すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "150%・3秒以内"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-18'> REQ_EPS_18 {
            subject s : Parts::Part;
            doc /* 極低温タンク・マニホールド、燃料電池、直流主母線などの喪失の数に応じて、A9-1001 の判定基準で上昇の継続・MDF・次の PLS を判断できる冗長を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "判定区分 3"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-19'> REQ_EPS_19 {
            subject s : Parts::Part;
            doc /* オービタの平均消費電力（軌道で約 14 kW）を超える発電能力を持ち、主ペイロード母線などからペイロードへ給電できること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "軌道の平均 約14 kW"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-20'> REQ_EPS_20 {
            subject s : Parts::Part;
            doc /* 燃料電池は飛行の間に整備して再使用し、累積 2,000 時間の運転まで使えること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "2,000 時間"; phases = "PH-8（ターンアラウンド）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-21'> REQ_EPS_21 {
            subject s : Parts::Part;
            doc /* 反応剤のタンクは、中央マニホールドの追加タンクから先に使ってタンク1・2を再突入用に残し、水素は2基に各4%の残量を確保して再突入の燃料電池の流量をまかなうこと。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "タンク1・2を再突入用に保持、H2 残量 各4%（2基）・約 20 kW 相当"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EPS-22'> REQ_EPS_22 {
            subject s : Parts::Part;
            doc /* 中胴の配電機器はフレオン冷却ループのコールドプレートで、前部アビオニクスベイの電力制御組立・負荷制御組立・モータ制御組立とインバータは水冷却ループのコールドプレートで冷却すること。 */
            @RequirementInfo { document = "SSD-REQ-EPS-001"; valueText = "中胴・後部：フレオンループ、前部ベイ1〜3：水ループ（インバータ分配組立は空冷）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-ECLSS-001'> REQ_ECLSS {
        doc /* 環境制御・生命維持（ECLSS）要求書（L2） */
        requirement <'REQ-ECLSS-01'> REQ_ECLSS_01 {
            subject s : Parts::Part;
            doc /* 乗員室を 14.7±0.2 psia・窒素約80%・酸素約20% に保ち、酸素分圧を 2.95〜3.45 psi に自動で保つこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "14.7±0.2 psia、PPO2 2.95〜3.45 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-02'> REQ_ECLSS_02 {
            subject s : Parts::Part;
            doc /* 正・負の圧力逃し弁で乗員室構造を過大圧・過小圧から守り、急減圧（dP/dT −0.08 psi/min 以上）でクラクソンと MASTER ALARM を出すこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "dP/dT −0.08 psi/min"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-03'> REQ_ECLSS_03 {
            subject s : Parts::Part;
            doc /* 非常時の 8 psia モードで酸素分圧と全圧を保ち、打上げ・帰還用スーツと非常用呼吸マスクへ呼吸用の酸素を供給できること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "8±0.2 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-04'> REQ_ECLSS_04 {
            subject s : Parts::Part;
            doc /* EVA の前に乗員室を 10.2 psia まで下げ、エアロックを減圧・再与圧して、乗員室を減圧せずに EMU の乗員を出入りさせること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "10.2 psia"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-05'> REQ_ECLSS_05 {
            subject s : Parts::Part;
            doc /* ARS は乗員室の空気を循環させて、温度・湿度・二酸化炭素・一酸化炭素を制御し、乗員室のアビオニクスを冷やすこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "相対湿度 30〜75%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-06'> REQ_ECLSS_06 {
            subject s : Parts::Part;
            doc /* LiOH キャニスタ（長期滞在では再生式 CO2 除去装置）で二酸化炭素を除き、活性炭で臭気と微量の汚染物質を除くこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "LiOH キャニスタ 2（各 約 120 lb/h）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-07'> REQ_ECLSS_07 {
            subject s : Parts::Part;
            doc /* 独立した2系統の水冷却ループで乗員室の熱を集めてフレオンループへ移し、ループ1はポンプを2台持つこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "ループ 2（ループ1 はポンプ 2台）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-08'> REQ_ECLSS_08 {
            subject s : Parts::Part;
            doc /* ATCS は同じ構成の2系統のフレオンループと、放熱器・FES・アンモニアボイラの3種のヒートシンクで、SRB 分離後の全段階の機体の熱を排出すること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "フレオンループ 2、ヒートシンク 3種"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-09'> REQ_ECLSS_09 {
            subject s : Parts::Part;
            doc /* 水ループ2系統またはフレオンループ2系統の喪失では、上昇中はアボート、軌道上は早期の軌道離脱を判断すること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "2系統の喪失"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-10'> REQ_ECLSS_10 {
            subject s : Parts::Part;
            doc /* 4基の給水タンクに燃料電池の生成水を貯めて FES・飲用・衛生に供給し、廃水タンクに湿度分離器と乗員の廃水を貯めて船外へダンプできること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "給水タンク 4・廃水タンク 1（各 165 lb）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-11'> REQ_ECLSS_11 {
            subject s : Parts::Part;
            doc /* イオン化式の煙検知器で煙濃度 2,000±200 µg/m3 または濃度の急な上昇を検知して警報を出し、アビオニクスベイの固定消火ボトルと携帯消火器で消火できること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "2,000±200 µg/m3、固定ボトル 3・携帯 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ECLSS-12'> REQ_ECLSS_12 {
            subject s : Parts::Part;
            doc /* 火災・消火や生命維持の機器の喪失に対し、生命維持の Go/No-Go 基準（A17-1001）でアボート・MDF・次の PLS を判断すること。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "A17-1001"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-ECLSS-13'> REQ_ECLSS_13 {
            subject s : Parts::Part;
            doc /* WCS で無重量環境の乗員の生物系廃棄物を収集・処理し、尿と凝縮水は廃水タンクへ送り、空気は臭気・細菌フィルタを通して乗員室へ戻すこと。 */
            @RequirementInfo { document = "SSD-REQ-ECLSS-001"; valueText = "—"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-GNC-001'> REQ_GNC {
        doc /* 誘導・航法・制御（GN&C）要求書（L2） */
        requirement <'REQ-GNC-01'> REQ_GNC_01 {
            subject s : Parts::Part;
            doc /* 3台の IMU を搭載し、1台でも飛行できる能力を持ちつつ、軸をずらして取り付けて冗長管理で故障した IMU を判定できること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "IMU 3（1台で飛行可・スキュー配置）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-02'> REQ_GNC_02 {
            subject s : Parts::Part;
            doc /* スタートラッカ・HUD・COAS で IMU をアラインメントし、再突入時（EI）の IMU の姿勢誤差を 0.5°以下にしてから軌道離脱すること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "EI の姿勢誤差 ≦ 0.5°（公称の軌道離脱では 0.25° を超えれば遅らせる）"; phases = "PH-3（軌道）・PH-4（離脱準備）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-03'> REQ_GNC_03 {
            subject s : Parts::Part;
            doc /* TACAN（または OV-105 の3系統 GPS）と MLS をそれぞれ3台持ち、中間値の選択で状態ベクトルの更新と進入・着陸に使えること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "TACAN 3（最大 400 n.mi.）または GPS 3、MLS 3"; phases = "PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-04'> REQ_GNC_04 {
            subject s : Parts::Part;
            doc /* 左右2本のエアデータプローブと4台の ADTA でエアデータを求め、良い ADTA が1台だけになったらエアデータの誘導・制御への取り込みを禁止すること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "プローブ 2・ADTA 4（展開 2モータ 15秒）"; phases = "PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-05'> REQ_GNC_05 {
            subject s : Parts::Part;
            doc /* 機体の位置と速度（状態ベクトル）を伝播して推定し、軌道離脱・再突入では3台の IMU による3つの状態ベクトルから中間値の選択で1つを誘導・制御に渡すこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "状態ベクトル 6要素＋時刻、再突入は3本の中間値"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-06'> REQ_GNC_06 {
            subject s : Parts::Part;
            doc /* 上昇の誘導は、第1段は事前の姿勢表、第2段は閉ループの PEG で MECO の目標条件へ導き、主エンジンの推力を加速度 3 g を超えないよう調整すること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "MECO の目標（速度・半径・経路角・傾斜角・昇交点）、3 g 以下"; phases = "PH-2a（上昇・第1段）・PH-2b（上昇・第2段）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-07'> REQ_GNC_07 {
            subject s : Parts::Part;
            doc /* 再突入の誘導は、温度・動圧・垂直加速度の制限を守る抗力加速度のプロファイルを飛び、TAEM のエネルギー管理と自動着陸の誘導で滑走路へ導くこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "抗力プロファイル・HAC・フレア 30〜80 ft"; phases = "PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-08'> REQ_GNC_08 {
            subject s : Parts::Part;
            doc /* 4台の RGA と4台の AA を持ち、中間値の選択と故障検出で選んだ値を飛行制御に与え、4台構成の系は1故障後も公称の終了まで飛行を続けられること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "RGA 4・AA 4（4台構成は1故障後も NEOM）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-09'> REQ_GNC_09 {
            subject s : Parts::Part;
            doc /* 飛行の段階ごとの DAP（遷移・軌道・エアロジェット）で姿勢と並進を制御し、MECO の約20秒後に ET の分離を自動で指令して離脱の並進を行うこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "ET 分離 MECO＋約20秒、−Z 4 ft/s"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-10'> REQ_GNC_10 {
            subject s : Parts::Part;
            doc /* 7枚の空力舵面を、4チャネルのサーボ弁で制御する油圧アクチュエータで駆動し、故障したサーボ弁を二次差圧で切り離し、主の油圧を失えば待機系統へ切り替えること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "フライトコントロールチャネル 4、SEC ΔP ≧ 2,025 psi が 120 ms で切り離し"; phases = "PH-6b（再突入・突入〜滑空）・PH-6c（再突入・進入〜着陸）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-11'> REQ_GNC_11 {
            subject s : Parts::Part;
            doc /* 4台の ATVC で SSME・SRB の推力方向を制御し、各アクチュエータの4つのサーボ弁の多数決で1つの誤った指令の影響を除くこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "ATVC 4、SSME ピッチ ±10.5°・ヨー ±8.5°、SRB ±5°"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-12'> REQ_GNC_12 {
            subject s : Parts::Part;
            doc /* 完全なフライ・バイ・ワイヤとし、乗員の手動の指令（CSS）も GPC を通して出し、操縦装置は3重の変換器で1つの良い信号があれば働くこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "RHC 3か所・変換器 9（3重）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-13'> REQ_GNC_13 {
            subject s : Parts::Part;
            doc /* 操縦装置・TVC・空力舵面・センサ・専用表示の故障の数に応じて、A8-1001 の基準で MDF・次の PLS・初日の PLS を判断できる冗長を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "判定区分 3（MDF・次の PLS・初日の PLS）"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-GNC-14'> REQ_GNC_14 {
            subject s : Parts::Part;
            doc /* 軌道離脱の前に、APU または油圧の循環ポンプを使って FCS の点検を行い、舵面・センサ・操縦装置の健全性を確かめること。 */
            @RequirementInfo { document = "SSD-REQ-GNC-001"; valueText = "軌道離脱前に1回"; phases = "PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-DPS-001'> REQ_DPS {
        doc /* データ処理系（DPS）要求書（L2） */
        requirement <'REQ-DPS-01'> REQ_DPS_01 {
            subject s : Parts::Part;
            doc /* 同一の GPC 5台を持ち、上昇・再突入では4台以上の GPC を冗長セットとして同じ GNC ソフトウェアを実行させ、出力を照合すること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "GPC 5（冗長セット 4＋BFS 1）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-02'> REQ_DPS_02 {
            subject s : Parts::Part;
            doc /* 冗長セットの各 GPC は処理結果を毎秒数百回照合し、同期点を満たさない GPC を残りの GPC の票決で直ちに外し、故障を乗員に示すこと。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "照合 毎秒数百回"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-03'> REQ_DPS_03 {
            subject s : Parts::Part;
            doc /* 各 GPC には3つの主母線から RPC を通じて給電し、主母線または必須母線を1つ失っても GPC が電力を失わないこと。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "GPC ごとの RPC 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-04'> REQ_DPS_04 {
            subject s : Parts::Part;
            doc /* PASS の共通的な誤りに備え、別の会社が作った BFS を1台の GPC に持ち、PASS が機体の制御を失ったときに乗員の操作で制御を引き継げること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "BFS 1（エンゲージは RHC の押しボタン）"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-05'> REQ_DPS_05 {
            subject s : Parts::Part;
            doc /* 飛行ソフトウェアと重要なデータは2台の MMU の両方に消去保護して格納し、OPS 遷移と GPC の再 IPL でロードできること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "MMU 2（各 128 Mbit）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-06'> REQ_DPS_06 {
            subject s : Parts::Part;
            doc /* 飛行重要バス8本を4つのストリングに分け、同種の GNC 機器を別々の MDM とバスに配線して、1本のストリングを失っても運用を続け、2本目を失っても安全に帰還できること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "FC バス 8（ストリング 4）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-07'> REQ_DPS_07 {
            subject s : Parts::Part;
            doc /* MDM は GPC の指令と機体各系のデータを相互に変換し、2つの主母線から冗長に給電され、ポートの故障ではもう一方のポートへ切り替えられること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "DPS の MDM 13・OI MDM 7"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-08'> REQ_DPS_08 {
            subject s : Parts::Part;
            doc /* SSME への指令は各エンジン専用の EIU が4つの GPC から受けて検査し、検証した指令だけをエンジン制御器へ渡すこと。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "EIU 3（各エンジン専用）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-09'> REQ_DPS_09 {
            subject s : Parts::Part;
            doc /* SRB の点火と、SRB・ET の分離の火工品は、GPC の arm・fire 1・fire 2 の3信号を MEC が整形して起爆すること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "MEC 2・信号 3"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-10'> REQ_DPS_10 {
            subject s : Parts::Part;
            doc /* 表示・キーボードは4台の IDP と11台の MDU から成る MEDS とし、MDU は2台の IDP につながって選んだ IDP との通信を失えば自動でもう一方へ切り替わること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "IDP 4・MDU 11・ADC 4・キーボード 3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-11'> REQ_DPS_11 {
            subject s : Parts::Part;
            doc /* GPC 群に GMT・MET の基準時刻を与える MTU は、冗長な2台の発振器と3つの累算器を持ち、2つの必須母線から給電されること。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "発振器 2・累算器 3（GPC は 1 ms 未満で同期）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-12'> REQ_DPS_12 {
            subject s : Parts::Part;
            doc /* ランデブー・ペイロード回収・安全上重要な噴射などには冗長な GNC GPC を用い、故障した GPC は HALT・電源断で冗長セットから外すこと。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "冗長な GNC GPC を要する運用"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-DPS-13'> REQ_DPS_13 {
            subject s : Parts::Part;
            doc /* GPC・IDP・MMU などの喪失の数に応じて、DPS の Go/No-Go 基準で MDF・次の PLS を判断し、EOM まで続けるのに必要なデータ経路と軌道離脱用ソフトウェアの独立した2つの源を保つこと。 */
            @RequirementInfo { document = "SSD-REQ-DPS-001"; valueText = "GPC 2台の喪失で MDF"; phases = "PH-2（上昇）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-MPS-001'> REQ_MPS {
        doc /* 主推進系（MPS）要求書（L2） */
        requirement <'REQ-MPS-01'> REQ_MPS_01 {
            subject s : Parts::Part;
            doc /* 3基の SSME は定格の 67〜109% の範囲で推力を絞れ、3基に同じ推力指令を同時に与えること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "67〜109%（100% = 海面 375,000 lb・真空 470,000 lb）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-02'> REQ_MPS_02 {
            subject s : Parts::Part;
            doc /* SSME は再使用でき、各エンジンが30回の始動で 15,000 秒の運転に耐えること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "30回の始動・15,000 秒"; phases = "PH-2（上昇）・PH-8（ターンアラウンド）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-03'> REQ_MPS_03 {
            subject s : Parts::Part;
            doc /* 酸化剤熱交換器で気化した酸素をポゴ抑制に使い、エンジン停止時はポゴアキュムレータをヘリウムで加圧して酸化剤ポンプ入口に正圧を与えること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "停止時にヘリウムで加圧"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-04'> REQ_MPS_04 {
            subject s : Parts::Part;
            doc /* 各エンジン制御器は2台の冗長なデジタル計算機を持ち、1つ目の故障の後も通常の運転を続け、2つ目の故障で安全に停止し、どの2本の交流母線を失っても失うエンジンを1基以下にすること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "DCU 2（フェイルオペレーショナル／フェイルセーフ）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-05'> REQ_MPS_05 {
            subject s : Parts::Part;
            doc /* エンジンへの指令は4つの GPC から EIU で受けて伝送誤りを検査し、制御器は3つの指令のうち2つ以上が有効なときだけ実行すること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "指令 4→3、2/3 で実行"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-06'> REQ_MPS_06 {
            subject s : Parts::Part;
            doc /* 制御器は安全な運転に重要なパラメータのレッドラインを監視し、限界を 60 ミリ秒続けて超えたときに限りエンジンを停止すること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "60 ms（20 ms 周期で3回連続）"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-07'> REQ_MPS_07 {
            subject s : Parts::Part;
            doc /* 直径17インチの LO2・LH2 の供給配管マニホールドで ET の推進薬をエンジンへ送り、ET 分離の前に4個の切離し弁を自動で閉じること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "17 in マニホールド 2・切離し弁 4"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-08'> REQ_MPS_08 {
            subject s : Parts::Part;
            doc /* エンジンからの加圧ガスで ET のアレージ圧を、LO2 タンクは 20〜25 psig、LH2 タンクは 32〜34 psia に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "LO2 20〜25 psig・LH2 32〜34 psia"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-09'> REQ_MPS_09 {
            subject s : Parts::Part;
            doc /* 推進薬の低液位による停止のため、LO2 と LH2 の枯渇をそれぞれ4個のセンサで検知すること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "LO2 4・LH2 4"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-10'> REQ_MPS_10 {
            subject s : Parts::Part;
            doc /* MECO の後、残った推進薬を自動でダンプし、マニホールドを真空不活性化して、重心の移動と再突入時の水素の危険を除くこと。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "MECO＋2分にダンプ、ダンプ終了＋15分に真空不活性化"; phases = "PH-2c（上昇・軌道投入）・AB-RTLS（RTLS（射点帰還））"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-11'> REQ_MPS_11 {
            subject s : Parts::Part;
            doc /* ヘリウム系はエンジンごとの3系統と空圧の1系統に分け、各エンジン系統は二重冗長の調圧回路でエンジンのパージと緊急の空圧停止に必要な圧力を与えること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "系統 4、調圧 730〜785 psia（エンジン系統）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-12'> REQ_MPS_12 {
            subject s : Parts::Part;
            doc /* 各 SSME のピッチ・ヨーのサーボアクチュエータは3系統のうち2系統の油圧を受け、主系統の圧力を失えば待機系統へ自動で切り替えること。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "ピッチ ±10.5°・ヨー ±8.5°"; phases = "PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-MPS-13'> REQ_MPS_13 {
            subject s : Parts::Part;
            doc /* エンジンの停止を乗員が判断でき、指令経路の故障・ロックアップ・ヘリウムの漏れに対して手動で停止またはリミットを制御する手順を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-MPS-001"; valueText = "MECO 約30秒前の手動停止など"; phases = "PH-2（上昇）・AB-RTLS（RTLS（射点帰還））・AB-TAL（TAL（大洋横断着陸））"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-OMS-001'> REQ_OMS {
        doc /* 軌道制御系（OMS）要求書（L2） */
        requirement <'REQ-OMS-01'> REQ_OMS_01 {
            subject s : Parts::Part;
            doc /* 各 OMS エンジンは 6,087 lb の推力を出し、1,000回の始動と累積15時間の噴射ができること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "6,087 lb、始動 1,000回・15時間"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-02'> REQ_OMS_02 {
            subject s : Parts::Part;
            doc /* 推進薬弁は燃料・酸化剤とも2個を直列に持って漏れに冗長に備え、噴射後は窒素で燃焼室と噴射器をパージすること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "直列 2個、停止 0.36 秒後にパージ"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-03'> REQ_OMS_03 {
            subject s : Parts::Part;
            doc /* 冗長管理ソフトウェアでエンジンの故障を検知し、燃料噴射器温度と入口圧の限界でエンジンを守ること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "燃料噴射器温度 260°F"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-04'> REQ_OMS_04 {
            subject s : Parts::Part;
            doc /* 1基のヘリウムタンクで燃料と酸化剤のタンクを同じ圧力に加圧し、並列の弁・二重の調圧器・直並列の逆止弁で冗長な加圧経路を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "一次調圧 252〜262 psig"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-05'> REQ_OMS_05 {
            subject s : Parts::Part;
            doc /* 両ポッドの OMS 推進薬で、65,000 lb のペイロードを積んだオービタに 1,000 ft/s の速度変化を与えられること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "1,000 ft/s（ペイロード 65,000 lb）"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-06'> REQ_OMS_06 {
            subject s : Parts::Part;
            doc /* 無重量下でもガスを含まない推進薬をエンジンへ送る取得装置を持ち、タンク圧を公称 250 psi・最大 313 psia 以下に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "公称 250 psi・最大 313 psia"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-07'> REQ_OMS_07 {
            subject s : Parts::Part;
            doc /* クロスフィード配管で一方のポッドの推進薬を他方のエンジンと両側の RCS へ送れ（インタコネクト）、ポッド間の推進薬の不均衡を正せること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "クロスフィード弁 並列 2個／配管"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-08'> REQ_OMS_08 {
            subject s : Parts::Part;
            doc /* OMS エンジンを冗長な2台の電動機を持つアクチュエータでジンバルさせ、推力を重心に向けること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "ピッチ ±6°・ヨー ±7°"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-09'> REQ_OMS_09 {
            subject s : Parts::Part;
            doc /* 冗長なヒータで OMS の推進薬を 40〜100°F、クロスフィード配管を 40〜125°F に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "推進薬 40〜100°F・配管 40〜125°F"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-10'> REQ_OMS_10 {
            subject s : Parts::Part;
            doc /* OMS エンジンを1基失っても、残る OMS エンジンと RCS の +X ジェットで軌道離脱でき、エンジン2基の喪失などでは OMS/RCS の Go/No-Go 基準で次の PLS を判断すること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "軌道離脱手段 2（1基喪失後）"; phases = "PH-3（軌道）・PH-6a（再突入・離脱噴射〜突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-OMS-11'> REQ_OMS_11 {
            subject s : Parts::Part;
            doc /* OMS の推進薬は、軌道離脱の延期日などのレッドラインを残し、着陸時は各ポッド 22% 以下として重心を管理すること。 */
            @RequirementInfo { document = "SSD-REQ-OMS-001"; valueText = "着陸時 各ポッド ≦ 22%"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-RCS-001'> REQ_RCS {
        doc /* 姿勢制御系（RCS）要求書（L2） */
        requirement <'REQ-RCS-01'> REQ_RCS_01 {
            subject s : Parts::Part;
            doc /* 前部・左・右の各 RCS は2基のヘリウムタンクで燃料・酸化剤タンクを別々に加圧し、並列の隔離弁と2組の調圧器で冗長な加圧経路を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "一次 242〜248 psig・二次 253〜259 psig"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-02'> REQ_RCS_02 {
            subject s : Parts::Part;
            doc /* 表面張力式の推進薬捕捉装置で無重量下でも推進薬を噴射器へ送り、後部 RCS はアボート・突入でも正しく供給できること。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "後部は突入用コレクタ・サンプ・ガストラップ付き"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-03'> REQ_RCS_03 {
            subject s : Parts::Part;
            doc /* 推進薬の量を PVT 法で計算し、燃料と酸化剤の量の差が 9.5% を超えたら警報を出すこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "量の差 9.5%"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-04'> REQ_RCS_04 {
            subject s : Parts::Part;
            doc /* 主噴射器38基（各 870 lb）とバーニア噴射器6基（各 24 lb）を持ち、複数の主噴射器で冗長な姿勢制御・並進を行えること。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "主 38・バーニア 6"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-05'> REQ_RCS_05 {
            subject s : Parts::Part;
            doc /* 主噴射器の連続噴射を 150 秒、バーニアを 275 秒以内とし、燃焼不安定の保護で噴射器の焼損を防ぐこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "主 150 秒・バーニア 275 秒"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-06'> REQ_RCS_06 {
            subject s : Parts::Part;
            doc /* RJD は GPC の噴射指令を弁の駆動電圧に変え、噴射したことを燃焼室圧の離散信号で冗長管理へ返すこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "Pc 離散 36 psi で ON・26 psi で OFF"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-07'> REQ_RCS_07 {
            subject s : Parts::Part;
            doc /* ヒータで推進薬と噴射器を安全な温度に保ち、後部 RCS のタンクは突入時の燃料・酸化剤の爆発的反応を避ける温度以上に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "噴射器温度 ≧ 50（55）°F、後部タンク ≧ 68（70）°F"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-08'> REQ_RCS_08 {
            subject s : Parts::Part;
            doc /* 冗長管理ソフトウェアで噴射器の fail-off・fail-on・fail-leak を3周期で検知して通報し、故障した噴射器を自動で選択解除すること。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "検知 3周期・選択解除の上限 2（ポッドごと）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-09'> REQ_RCS_09 {
            subject s : Parts::Part;
            doc /* 後部 RCS の推進薬は軌道離脱の準備・OMS 故障時の姿勢制御・軌道離脱の延期などのレッドラインを残し、突入に必要な量を保つこと。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "後部 RCS の軌道離脱レッドライン"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-RCS-10'> REQ_RCS_10 {
            subject s : Parts::Part;
            doc /* 後部 RCS のヘリウム・推進薬タンクの漏れなどに対し、A6-1001 の基準で次の PLS を判断し、漏れのあるマニホールドを隔離できること。 */
            @RequirementInfo { document = "SSD-REQ-RCS-001"; valueText = "後部タンクの漏れ1件で次の PLS"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-APU-001'> REQ_APU {
        doc /* 補助動力・油圧（APU/HYD）要求書（L2） */
        requirement <'REQ-APU-01'> REQ_APU_01 {
            subject s : Parts::Part;
            doc /* 3台の APU と燃料系を互いに独立させ、各 APU は無水ヒドラジンを公称90分、AOA のように約110分連続で運転できる量を搭載すること。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "約 332 lb／APU（公称 90分・連続約 110分）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-02'> REQ_APU_02 {
            subject s : Parts::Part;
            doc /* 燃料系の温度を、ヒドラジンが凍らない 35°F 超に冗長なヒータで保つこと。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "35°F 超"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-03'> REQ_APU_03 {
            subject s : Parts::Part;
            doc /* ガス発生器のヒドラジンの分解ガスでタービンを回し、減速ギアボックスで主油圧ポンプ・燃料ポンプ・潤滑油ポンプを駆動し、潤滑油は WSB で冷やすこと。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "潤滑油 約 60 psi"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-04'> REQ_APU_04 {
            subject s : Parts::Part;
            doc /* 各 APU の制御器は回転数を約 74,000 rpm（103%）に保ち、80% 未満・129% 超で自動停止でき、回転数は3個のピックアップで冗長に測ること。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "103%（74,160 rpm）、停止 80%・129%"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-05'> REQ_APU_05 {
            subject s : Parts::Part;
            doc /* 独立した3系統の油圧系を持ち、主油圧ポンプで 3,000 psi を供給して SSME の TVC・弁、空力舵面、脚・ブレーキ・前輪操向を駆動すること。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "3系統、3,000 psi・0〜63 gpm"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-06'> REQ_APU_06 {
            subject s : Parts::Part;
            doc /* APU が止まっている軌道上では、電動の循環ポンプで作動油を循環させてフレオンループの熱で温め、アキュムレータの圧力を保つこと。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "再加圧 1,960 psi、同時運転 1台"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-07'> REQ_APU_07 {
            subject s : Parts::Part;
            doc /* 各 APU・油圧系に独立した水噴霧ボイラを持ち、冗長な制御器で潤滑油を約 250°F、作動油を 210〜220°F に自動で保つこと。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "潤滑油 約 250°F・作動油 210〜220°F"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-APU-08'> REQ_APU_08 {
            subject s : Parts::Part;
            doc /* 1系統を失っても EOM まで飛行を続け、2系統を失えば次の PLS で突入する判断ができるよう、突入に2系統の油圧を確保すること。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "1系統喪失で EOM、2系統喪失で次の PLS"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-APU-09'> REQ_APU_09 {
            subject s : Parts::Part;
            doc /* 軌道離脱の前に、2〜3系統が使えるときは APU の燃料 192 lb と WSB の水 63 lb を残すこと。 */
            @RequirementInfo { document = "SSD-REQ-APU-001"; valueText = "燃料 192 lb・水 63 lb（2〜3系統）"; phases = "PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-CT-001'> REQ_CT {
        doc /* 通信・追跡（C&T）要求書（L2） */
        requirement <'REQ-CT-01'> REQ_CT_01 {
            subject s : Parts::Part;
            doc /* S帯 PM 系で地上局または TDRS を経由した双方向の通信（コマンド・音声・テレメトリ）を行い、トランスポンダ・前置増幅器・電力増幅器・NSP を2台ずつ冗長に持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "フォワード 72 kbps、主要 LRU 各 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-02'> REQ_CT_02 {
            subject s : Parts::Part;
            doc /* S帯 FM 系の送信専用の冗長な2台の送信機で、上昇中の主エンジンのデータや記録データをダウンリンクできること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "2,250 MHz、送信機 2"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-03'> REQ_CT_03 {
            subject s : Parts::Part;
            doc /* Ku帯系は TDRS を介した高速の通信（3チャネル）と、ランデブ時に目標の角度・距離を測るレーダの機能を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "チャネル 3（運用 192 kbps・最大 4 Mbps 級）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-04'> REQ_CT_04 {
            subject s : Parts::Part;
            doc /* Ku帯アンテナは突入に備えてペイロードベイドアを閉じる前に格納でき、ペイロード・EVA 乗員・ISS を放射から守るマスクを設定できること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "展開・格納 23 秒"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-05'> REQ_CT_05 {
            subject s : Parts::Part;
            doc /* UHF シンプレックス系を上昇・再突入の S帯 PM のバックアップとし、EVA では SSOR で船外の乗員と通信できること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "259.7 MHz（予備 296.8 MHz）、SSOR 2組"; phases = "PH-2（上昇）・PH-5（EVA）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-06'> REQ_CT_06 {
            subject s : Parts::Part;
            doc /* 音声分配系は内部が冗長な ACCU を中心に8つの音声ループを配り、ATU の故障では乗員が別の ATU へ切り替えられること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "音声ループ 8・ATU 6"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-07'> REQ_CT_07 {
            subject s : Parts::Part;
            doc /* CCTV は、ペイロードベイと RMS のカメラの映像を切り替えて記録・表示し、S帯・Ku帯でダウンリンクして軌道上の作業を支えること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "VSU 13入力・7出力"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-08'> REQ_CT_08 {
            subject s : Parts::Part;
            doc /* 計装系は変換器・DSC・OI MDM・2台の PCMMU で機体とペイロードのデータを集めてテレメトリを作り、2台の記録器でダウンリンクまで記録できること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "DSC 14・OI MDM 7・PCMMU 2・SSR 2"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CT-09'> REQ_CT_09 {
            subject s : Parts::Part;
            doc /* 地上からの指令をすべて NSP と FF MDM を経て GPC で受け取り、通信の Go/No-Go 基準（A11-1001）で音声・コマンドの喪失に対し次の PLS を判断すること。 */
            @RequirementInfo { document = "SSD-REQ-CT-001"; valueText = "音声 3系統・コマンド 2系統（2系統の喪失で次の PLS）"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-TPS-001'> REQ_TPS {
        doc /* 熱防護・熱制御（TPS）要求書（L2） */
        requirement <'REQ-TPS-01'> REQ_TPS_01 {
            subject s : Parts::Part;
            doc /* 再突入時に TPS でオービタの外板（アルミニウム・グラファイトエポキシ）を 350°F を超える温度から守り、TPS は整備して 100 回のミッションに再使用できること。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "外板 ≦ 350°F、再使用 100 回"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-TPS-02'> REQ_TPS_02 {
            subject s : Parts::Part;
            doc /* 部位の最高温度に応じて TPS の材料を選び、2,300°F を超える部位は RCC、2,300°F 未満は HRSI（FRCI）、1,200°F 未満は LRSI、700°F 未満は FRSI で守ること。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "RCC > 2,300°F・HRSI < 2,300°F・LRSI < 1,200°F・FRSI < 700°F"; phases = "PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-TPS-03'> REQ_TPS_03 {
            subject s : Parts::Part;
            doc /* 軌道上の姿勢を管理して、TPS の接着層の温度を −170°F より高く、再突入開始（EI）の最大許容温度未満に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "接着層 > −170°F、EI の最大許容温度未満"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠なし"; }
        }
        requirement <'REQ-TPS-04'> REQ_TPS_04 {
            subject s : Parts::Part;
            doc /* オービタの内部の温度を、断熱材・ヒータ・パージで飛行の各段階に管理すること。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "断熱材・ヒータ・パージ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-TPS-05'> REQ_TPS_05 {
            subject s : Parts::Part;
            doc /* OMS/RCS ポッドは内面の断熱材とストリップヒータで熱制御し、A・B 2系統のヒータをサーモスタットで 55〜75°F に保つこと。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "55〜75°F、A・B 2系統"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-TPS-06'> REQ_TPS_06 {
            subject s : Parts::Part;
            doc /* 打上げ前と着陸後は、非与圧区画に地上設備からパージガスを流し、着陸後はベント扉をパージ位置にして地上冷却を行えること。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "ベント扉のパージ位置"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-TPS-07'> REQ_TPS_07 {
            subject s : Parts::Part;
            doc /* 軌道に入ってまもなくペイロードベイドアを開き、放熱器を主な冷却源とすること。 */
            @RequirementInfo { document = "SSD-REQ-TPS-001"; valueText = "ドア開放後に放熱器を主冷却源"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-CW-001'> REQ_CW {
        doc /* 警告・警報（C/W）要求書（L2） */
        requirement <'REQ-CW-01'> REQ_CW_01 {
            subject s : Parts::Part;
            doc /* 主C/W は 120 の入力を 80 Hz で標本化し、連続8標本（100 ms）限界を外れたときに C/W トーン・MASTER ALARM 灯・F7 の表示灯で乗員に知らせること。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "入力 120、80 Hz・8標本（100 ms）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-CW-02'> REQ_CW_02 {
            subject s : Parts::Part;
            doc /* C/W 電子装置は ESS 1BC と ESS 2CA の2系統から電源 A・B を受け、自己試験の失敗を乗員に知らせること。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "電源 2系統、自己試験パラメータ 8"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-CW-03'> REQ_CW_03 {
            subject s : Parts::Part;
            doc /* 主C/W と独立に、GPC のソフトウェアによるバックアップ C/W（クラス2）を持ち、限界外れで MASTER ALARM 灯・BACKUP C/W ALARM 灯と故障メッセージを出すこと。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "MASTER ALARM 灯 4"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-CW-04'> REQ_CW_04 {
            subject s : Parts::Part;
            doc /* クラス3アラートで、クラス2に至る前の状況や5分を超える長い処置が要る状況を知らせ、パラメータごとに系の状態で選ぶ1〜3組の限界を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "限界 1〜3組／パラメータ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-CW-05'> REQ_CW_05 {
            subject s : Parts::Part;
            doc /* クラス0の限界表示で、DPS 表示のパラメータの隣に上・下の矢印を出し、警報音なしで限界外れや通常と異なる状態を示すこと。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "警報音なし"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-CW-06'> REQ_CW_06 {
            subject s : Parts::Part;
            doc /* クラス1（緊急）の火災・急減圧は、ハードウェアでサイレン・クラクソンを鳴らし、2つのトーン発生器でヘッドセットとスピーカへ分配すること。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "トーン発生器 2（A・B）"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-CW-07'> REQ_CW_07 {
            subject s : Parts::Part;
            doc /* 4つの MASTER ALARM 灯・F7 の 40灯の表示盤などの視覚の合図を持ち、各表示灯は2個の電球を並列に持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "MASTER ALARM 4・F7 40灯・電球 2／灯"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-CW-08'> REQ_CW_08 {
            subject s : Parts::Part;
            doc /* 乗員は R13U と SPEC 60 で、地上は TMBU で、限界の変更とパラメータの有効化・抑止を行えること。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "SPEC 60・TMBU"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CW-09'> REQ_CW_09 {
            subject s : Parts::Part;
            doc /* 主C&W とバックアップ C&W の限界値を同じに保ち、運用しないパラメータや迷惑警報を出すパラメータは抑止すること。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "限界値 主＝バックアップ"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-CW-10'> REQ_CW_10 {
            subject s : Parts::Part;
            doc /* 主C&W とバックアップ C&W の両方を失うと次の PLS で帰還すると判断できるよう、C&W の喪失の定義を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CW-001"; valueText = "両方の喪失で次の PLS"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-CREW-001'> REQ_CREW {
        doc /* 乗員系（CREW）要求書（L2） */
        requirement <'REQ-CREW-01'> REQ_CREW_01 {
            subject s : Parts::Part;
            doc /* 軌道上で乗員が過ごせるよう、被服・個人衛生・睡眠設備を持ち、1日を8時間の睡眠と16時間の活動に分けられること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "睡眠 8時間・活動 16時間"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-02'> REQ_CREW_02 {
            subject s : Parts::Part;
            doc /* 心肺機能の低下と骨・筋肉の減少を防ぐ運動器具を持ち、CDR・PLT・MS2 には FD04 から EOM-1 まで少なくとも1日おきに運動を組むこと。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "1日おき（11日超では他の乗員も3日ごと）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-03'> REQ_CREW_03 {
            subject s : Parts::Part;
            doc /* 清掃作業と湿ったごみの収納・排気で居住区画を清潔に保ち、24時間平均の騒音が 74 dBA 以上なら処置をとること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "騒音 74 dBA、ごみ排気 約 3 lb/日"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-04'> REQ_CREW_04 {
            subject s : Parts::Part;
            doc /* 約 150 ft3 の交換可能なロッカーと床下の区画に装備を収め、拘束具と移動補助具で乗員が安全に作業できること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "収納 約 150 ft3、ロッカー ≦ 68 lb"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-05'> REQ_CREW_05 {
            subject s : Parts::Part;
            doc /* 軽い傷病の治療と重い傷病者の安定のため医療キット・蘇生器・洗眼器を持ち、地上の航空医官と相談して診断・治療できること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "補助酸素 100%"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-06'> REQ_CREW_06 {
            subject s : Parts::Part;
            doc /* 乗員の被ばくを線量計で測り、法定の限度内かつ合理的に達成できる限り低く（ALARA）保つこと。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "実績 0.05〜0.07 rem"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-07'> REQ_CREW_07 {
            subject s : Parts::Part;
            doc /* 機内・機外の照明を持ち、必須母線から給電する非常照明と、ペイロードベイドア・EVA・RMS・ドッキングの視界を与える投光照明を持つこと。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "操縦室照明 1〜2 kW"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-08'> REQ_CREW_08 {
            subject s : Parts::Part;
            doc /* 高度 30,000 ft 以下の制御された滑空中に、与圧服・パラシュート・側面ハッチ投棄・脱出ポールで乗員が脱出できること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "高度 ≦ 30,000 ft、ACES 3.67 psia"; phases = "PH-2（上昇）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-09'> REQ_CREW_09 {
            subject s : Parts::Part;
            doc /* 側面ハッチと頭上窓の2つの脱出口と射点のスライドワイヤを持ち、キャビンベントとハッチ投棄は電力なしでも作動すること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "脱出口 2、火工品は電力不要"; phases = "PH-1（打上げ前）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-CREW-10'> REQ_CREW_10 {
            subject s : Parts::Part;
            doc /* LES の酸素供給系を2系統持ち、1系統の喪失で MDF、2系統の喪失で次の PLS と判断すること。 */
            @RequirementInfo { document = "SSD-REQ-CREW-001"; valueText = "2系統（1喪失 MDF・2喪失 次の PLS）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-EVA-001'> REQ_EVA {
        doc /* 船外活動（EVA/EMU）要求書（L2） */
        requirement <'REQ-EVA-01'> REQ_EVA_01 {
            subject s : Parts::Part;
            doc /* EMU は着用前に、服圧 4.2〜4.4 psid での漏れ点検、SOP の点検などを行い、各系が使えることを確かめること。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "服圧 4.2〜4.4 psid"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-02'> REQ_EVA_02 {
            subject s : Parts::Part;
            doc /* 減圧症の危険を減らすため、着用後の窒素パージと、所定の時間の前呼吸を減圧の前に行うこと。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "10.2 psi キャビンで初期前呼吸 45分以上"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-03'> REQ_EVA_03 {
            subject s : Parts::Part;
            doc /* エアロックは乗員室の気密を保ったまま減圧・再与圧でき、減圧の途中 5.0 psi で EMU の漏れ点検を行えること。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "エアロック容積 228 ft3、漏れ点検 5.0 psi"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-04'> REQ_EVA_04 {
            subject s : Parts::Part;
            doc /* 閉じたエアロックの中を除き、EVA 中は各乗員を安全テザーでオービタにつなぐこと。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "常時テザー（エアロック外）"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-05'> REQ_EVA_05 {
            subject s : Parts::Part;
            doc /* EVA の後に EMU の O2・水を再充填し、電池と LiOH カートリッジを交換・充電して次の EVA に備えること。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "O2 約 850、水圧 8〜15 psi"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-06'> REQ_EVA_06 {
            subject s : Parts::Part;
            doc /* 放熱器・ペイロードベイドア・ラッチなどオービタの機器の故障に対し、安全な帰還に必要な非常時の EVA を行えること。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "非常時 EVA 1回分を常に確保"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-07'> REQ_EVA_07 {
            subject s : Parts::Part;
            doc /* 減圧症の乗員を EMU を使った減圧症治療アダプタ（BTA）で処置できること。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "6〜8 psid"; phases = "PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-EVA-08'> REQ_EVA_08 {
            subject s : Parts::Part;
            doc /* 消耗品の残りが 30分になる時までに EVA 乗員がエアロックへの進入を終え、計画 EVA は MET 72時間より前には行わないこと。 */
            @RequirementInfo { document = "SSD-REQ-EVA-001"; valueText = "残り 30分、MET 72時間"; phases = "PH-3（軌道）・PH-5（EVA）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-PLS-001'> REQ_PLS {
        doc /* ペイロード系（PLS）要求書（L2） */
        requirement <'REQ-PLS-01'> REQ_PLS_01 {
            subject s : Parts::Part;
            doc /* RMS は6関節・長さ 50 ft 3 in のアームで、無重量の環境で最大 586,000 lb のペイロードを展開・回収できること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "最大 586,000 lb、長さ 50 ft 3 in"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-02'> REQ_PLS_02 {
            subject s : Parts::Part;
            doc /* 各関節はブレーキで静止を保ち、主母線 A の SPA と主母線 B の予備駆動増幅器の2つの経路で関節を駆動できること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "28 V DC、駆動経路 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-03'> REQ_PLS_03 {
            subject s : Parts::Part;
            doc /* MCIU で SM GPC・表示操作部・RMS の情報を交換し、組込み試験で重大な故障を検知して乗員と地上へ知らせ、故障した MCIU は予備と交換できること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "予備 MCIU 1"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-04'> REQ_PLS_04 {
            subject s : Parts::Part;
            doc /* THC・RHC で RMS を手動で操作でき、運用は2人の操作員で行うこと。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "操作員 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-05'> REQ_PLS_05 {
            subject s : Parts::Part;
            doc /* MPM は2重の冗長モータでアームを収納・運用位置へ回し、保持ラッチは冗長モータで駆動し、アームを戻せないときはドアを閉められるよう投棄できること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "分離点 4（左舷）"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-06'> REQ_PLS_06 {
            subject s : Parts::Part;
            doc /* 1回の飛行で最大3つのペイロードを3軸で支え、展開するペイロードは2重の電動機で駆動するラッチで固定すること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "最大 3ペイロード、縦通材 124点・キール 75点"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-07'> REQ_PLS_07 {
            subject s : Parts::Part;
            doc /* ODS で ISS にドッキングし、外部エアロックで2つの宇宙機の間の気密な通路をつくること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "構造フック 12対"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-08'> REQ_PLS_08 {
            subject s : Parts::Part;
            doc /* RMS の運用の前に肩のブレースを解除し、点検を1飛行に1回できるだけ早く行い、少なくとも2つのよいカメラの視野を用意すること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "点検 約 1時間・カメラ ≧ 2"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-PLS-09'> REQ_PLS_09 {
            subject s : Parts::Part;
            doc /* RMS の Go/No-Go 基準で各運用の継続を判断し、PDRS・PRLA の故障には EVA を冗長の1段として使えること。 */
            @RequirementInfo { document = "SSD-REQ-PLS-001"; valueText = "EVA を冗長の1段"; phases = "PH-3（軌道）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-MECH-001'> REQ_MECH {
        doc /* 機械系（MECH）要求書（L2） */
        requirement <'REQ-MECH-01'> REQ_MECH_01 {
            subject s : Parts::Part;
            doc /* 展開・開閉する機構は2つの3相交流モータを持つ電動アクチュエータで動かし、1つのモータでも2倍の時間で所定の位置まで動かせること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "モータ 2／アクチュエータ"; phases = "PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-02'> REQ_MECH_02 {
            subject s : Parts::Part;
            doc /* 機械系の操作には常にタイマを使い、1モータの時間を過ぎても所定の状態にならなければ駆動の指令を続けないこと。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "1モータの駆動時間"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-03'> REQ_MECH_03 {
            subject s : Parts::Part;
            doc /* 左右2枚のペイロードベイドアでペイロードの開口をつくり、閉じた状態を 32 のラッチで保ち、右舷を先に開けて後に閉めること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "ドア 2枚・1,600 ft2、ラッチ 32"; phases = "PH-2c（上昇・軌道投入）・PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-04'> REQ_MECH_04 {
            subject s : Parts::Part;
            doc /* 閉用のモータが2基そろっていなくても冗長側で閉じられるようにし、1つのラッチギャングが外れたままでも突入できること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "外れたギャング 1まで突入可"; phases = "PH-4（離脱準備）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-05'> REQ_MECH_05 {
            subject s : Parts::Part;
            doc /* 能動ベント系の 14 のベント口で、大気中から真空へ移る間とその逆に与圧されない区画を外気と等圧にすること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "ベント口 14、開閉 5秒"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-06'> REQ_MECH_06 {
            subject s : Parts::Part;
            doc /* ET 分離後に ET アンビリカル扉を閉じ、露出した開口を突入の加熱から守ること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "扉 2"; phases = "PH-2b（上昇・第2段）・PH-2c（上昇・軌道投入）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-07'> REQ_MECH_07 {
            subject s : Parts::Part;
            doc /* 3脚の降着装置を高度 300±100 ft・312 KEAS 以下で展開し、10秒以内に下げ位置でロックし、油圧が無いときは火工品でアップロックを外すこと。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "300±100 ft・≦ 312 KEAS・10秒"; phases = "PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-08'> REQ_MECH_08 {
            subject s : Parts::Part;
            doc /* 接地後に冗長な指令でドラッグシュートを展開して対地 60（±20） kt で投棄し、4つの主輪のブレーキを油圧系1・2（系3は予備）で効かせること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "投棄 60（±20） kt、主輪 4"; phases = "PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-09'> REQ_MECH_09 {
            subject s : Parts::Part;
            doc /* 前輪操向は主脚接地・ピッチ角 0°未満・前脚接地がそろってから有効にし、GPC モードとキャスタモードを持つこと。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "有効化条件 3"; phases = "PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-MECH-10'> REQ_MECH_10 {
            subject s : Parts::Part;
            doc /* 脚の展開系の2つの喪失で次の PLS とし、制動・前輪操向による方向制御はゼロ故障許容を判定条件とすること。 */
            @RequirementInfo { document = "SSD-REQ-MECH-001"; valueText = "展開系 2喪失で次の PLS"; phases = "PH-3（軌道）・PH-6（再突入）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-STR-001'> REQ_STR {
        doc /* 構造（STR）要求書（L2） */
        requirement <'REQ-STR-01'> REQ_STR_01 {
            subject s : Parts::Part;
            doc /* オービタの構造を9つの主要区分に分け、大部分をアルミニウムで造って再使用の表面断熱材で守ること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "主要区分 9"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-STR-02'> REQ_STR_02 {
            subject s : Parts::Part;
            doc /* 前胴は与圧乗員室を囲み、前部 RCS モジュール・前脚・前部のオービタ/ET 結合金具を支えること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "前部 RCS 留め具 16本"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-STR-03'> REQ_STR_03 {
            subject s : Parts::Part;
            doc /* 乗員室は溶接した気密の圧力容器とし、14.7±0.2 psia に保たれ、設計圧力 16 psia に耐えること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "14.7±0.2 psia・設計 16 psia・2,553 ft3"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-STR-04'> REQ_STR_04 {
            subject s : Parts::Part;
            doc /* 前方の窓は3枚の板ガラスで造り、内側の圧力ペインに与圧の冗長を持たせ、圧力ペインが故障したら客室圧を 10.2 psi に下げて次の PLS で帰還すること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "板ガラス 3枚・圧力ペイン 0.625 in"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-STR-05'> REQ_STR_05 {
            subject s : Parts::Part;
            doc /* 中胴は長さ 60 ft・幅 17 ft のペイロードベイを形作り、ペイロードの縦方向の荷重と主脚の横方向の荷重を受けること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "60 ft×17 ft×13 ft"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-STR-06'> REQ_STR_06 {
            subject s : Parts::Part;
            doc /* 後胴の推力構造で3基の SSME を支え、後部のオービタ/ET 結合点と OMS/RCS ポッドの取付けを受け持つこと。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "SSME 3、ポッド ボルト 11本"; phases = "PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-STR-07'> REQ_STR_07 {
            subject s : Parts::Part;
            doc /* 翼・エレボン・ボディフラップ・垂直尾翼で大気中の飛行制御とトリムを行い、ボディフラップは突入中に SSME を熱から守ること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "エレボン 33°上・18°下"; phases = "PH-2（上昇）・PH-6（再突入）・PH-7（着陸後）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-STR-08'> REQ_STR_08 {
            subject s : Parts::Part;
            doc /* オービタの姿勢で TPS の接着層の温度を −170°F より高く保ち、軌道デブリに弱い姿勢で過ごす時間を最小にすること。 */
            @RequirementInfo { document = "SSD-REQ-STR-001"; valueText = "接着層 > −170°F"; phases = "PH-3（軌道）・PH-4（離脱準備）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-ET-001'> REQ_ET {
        doc /* 外部タンク（ET）要求書（L2） */
        requirement <'REQ-ET-01'> REQ_ET_01 {
            subject s : Parts::Part;
            doc /* ET は液体水素と液体酸素を収め、上昇中に3基の SSME へ加圧して供給すること。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "LO2 約 2,787 lb/s・LH2 465 lb/s（104%）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-ET-02'> REQ_ET_02 {
            subject s : Parts::Part;
            doc /* LO2 タンクは 20〜22 psig、LH2 タンクは 32〜34 psia で運用し、揺動防止・渦防止の装置で残液を減らすこと。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "LO2 20〜22 psig・LH2 32〜34 psia"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ET-03'> REQ_ET_03 {
            subject s : Parts::Part;
            doc /* 混合比 6:1 に必要な量より 1,100 lb 多い LH2 を積み、MECO の推進薬比を燃料過多にすること。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "LH2 余剰 1,100 lb"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ET-04'> REQ_ET_04 {
            subject s : Parts::Part;
            doc /* ET の構造は推進薬タンクとなり、オービタ・SRB との間の荷重を受けて分配し、全体の荷重経路の連続を与えること。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "結合 前部1・後部2（オービタ）"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ET-05'> REQ_ET_05 {
            subject s : Parts::Part;
            doc /* 後部のアンビリカルで推進薬・電力・信号をオービタとの間で伝え、ベント/リリーフ弁でタンクの過圧を防ぐこと。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "LH2 36 psig・LO2 31 psig で開"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-ET-06'> REQ_ET_06 {
            subject s : Parts::Part;
            doc /* 推進薬の枯渇センサを燃料・酸化剤に各4つ持ち、2つが乾きを検知するとエンジンを停止し、3つ以上の故障では TAL を判断すること。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "センサ 4／推進薬"; phases = "PH-2（上昇）・AB-TAL（TAL（大洋横断着陸））"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ET-07'> REQ_ET_07 {
            subject s : Parts::Part;
            doc /* 発泡断熱材とアブレータの TPS で、空気の液化と LH2 への熱の流れを防ぎ、ET の氷でオービタの TPS を傷めないこと。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "TPS 4,823 lb"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::inspect; status = "根拠あり"; }
        }
        requirement <'REQ-ET-08'> REQ_ET_08 {
            subject s : Parts::Part;
            doc /* MECO の後に ET を分離し、角速度や供給管の切離しの故障では分離を抑止して再接触を防ぎ、ET は定めた海域に落とすこと。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "角速度 0.7 deg/s、遅延 MECO＋6分まで"; phases = "PH-2b（上昇・第2段）・AB-RTLS（RTLS（射点帰還））"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-ET-09'> REQ_ET_09 {
            subject s : Parts::Part;
            doc /* 射場安全系で打上げから ET の着水まで推進薬を分散させる手段を冗長な機器で持つこと。 */
            @RequirementInfo { document = "SSD-REQ-ET-001"; valueText = "電池・受信/解読器・アンテナ 冗長"; phases = "PH-1（打上げ前）・PH-2（上昇）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
    }
    package <'SSD-REQ-SRB-001'> REQ_SRB {
        doc /* 固体ロケットブースタ（SRB）要求書（L2） */
        requirement <'REQ-SRB-01'> REQ_SRB_01 {
            subject s : Parts::Part;
            doc /* 各 SRB は海面で約 3,300,000 lb の推力を出し、打上げと第1段上昇の推力の 71.4% を担うこと。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "約 3,300,000 lb／本・71.4%"; phases = "PH-1（打上げ前）・PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-02'> REQ_SRB_02 {
            subject s : Parts::Part;
            doc /* 推進薬の穿孔で打上げ約 50 秒後に推力を約3分の1下げて最大動圧での過大な応力を防ぎ、2本の推力の不釣合いを小さくすること。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "約 50 秒で約 1/3 減"; phases = "PH-1（打上げ前）・PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-03'> REQ_SRB_03 {
            subject s : Parts::Part;
            doc /* 打上げ前は4組の保持ボルトで機体を移動発射台に固定し、離昇時に破断式のナットで切り離すこと。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "保持ボルト 4組／本"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-04'> REQ_SRB_04 {
            subject s : Parts::Part;
            doc /* 点火の指令は3基の SSME が定格の 90% 以上で故障や保留が無いときだけ出し、PIC は arm・fire 1・fire 2 の3信号がそろったときだけ火工品を発火させること。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "SSME ≧ 90%、信号 3"; phases = "PH-1（打上げ前）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-05'> REQ_SRB_05 {
            subject s : Parts::Part;
            doc /* ノズルを全軸 8° ジンバルさせ、各 SRB の2つの独立した HPU と多数決のサーボ弁で、1つの故障が推力方向制御に影響しないこと。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "ジンバル 8°、HPU 2／本"; phases = "PH-1（打上げ前）・PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-06'> REQ_SRB_06 {
            subject s : Parts::Part;
            doc /* SRB の電力はオービタの主直流母線3つから互いに予備となるよう供給し、主母線が1つ故障しても SRB の母線がすべて給電され続けること。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "公称 28 V（24〜32 V）"; phases = "PH-1（打上げ前）・PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::analyze; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-07'> REQ_SRB_07 {
            subject s : Parts::Part;
            doc /* 各 SRB に射場安全系を持ち、2本の分配器をクロスストラップし、機体が打上げ軌道のレッドラインを外れたときだけ使うこと。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "指令 2（arm・fire）"; phases = "PH-1（打上げ前）・PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::test; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-08'> REQ_SRB_08 {
            subject s : Parts::Part;
            doc /* 両方の SRB の燃焼圧が 50 psi 以下になったら分離を始め、発火の指令から 30 ms 以内に分離モータで ET から離すこと。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "≦ 50 psi、30 ms、BSM 8／本"; phases = "PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
        requirement <'REQ-SRB-09'> REQ_SRB_09 {
            subject s : Parts::Part;
            doc /* パラシュートで SRB を 76 ft/s で着水させて回収し、モータセグメント・点火器・ノズルを再整備して再使用できること。 */
            @RequirementInfo { document = "SSD-REQ-SRB-001"; valueText = "着水 76 ft/s"; phases = "PH-2a（上昇・第1段）"; }
            @VerificationIntent { method = VerificationMethodKind::demo; status = "根拠あり"; }
        }
    }
    // ---- L1 から L2 への導出（L2 の要求書の「上位」の欄）
    package Derivation {
        #derivation connection <'REQ-SYS-16>REQ-EPS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_01;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_03;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_04;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_05;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_07;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_08;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_09;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_10;
        }
        #derivation connection <'REQ-SYS-07>REQ-EPS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_EPS::REQ_EPS_11;
        }
        #derivation connection <'REQ-SYS-06>REQ-EPS-12'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_EPS::REQ_EPS_12;
        }
        #derivation connection <'REQ-SYS-13>REQ-EPS-12'> {
            end #original ::> REQ_SYS::REQ_SYS_13;
            end #derive ::> REQ_EPS::REQ_EPS_12;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-13'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_13;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-14'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_14;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-15'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_15;
        }
        #derivation connection <'REQ-SYS-07>REQ-EPS-16'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_EPS::REQ_EPS_16;
        }
        #derivation connection <'REQ-SYS-10>REQ-EPS-17'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EPS::REQ_EPS_17;
        }
        #derivation connection <'REQ-SYS-14>REQ-EPS-18'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_EPS::REQ_EPS_18;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-19'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_19;
        }
        #derivation connection <'REQ-SYS-04>REQ-EPS-20'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_EPS::REQ_EPS_20;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-21'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_21;
        }
        #derivation connection <'REQ-SYS-16>REQ-EPS-22'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_EPS::REQ_EPS_22;
        }
        #derivation connection <'REQ-SYS-07>REQ-ECLSS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_01;
        }
        #derivation connection <'REQ-SYS-05>REQ-ECLSS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_02;
        }
        #derivation connection <'REQ-SYS-07>REQ-ECLSS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_02;
        }
        #derivation connection <'REQ-SYS-05>REQ-ECLSS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-ECLSS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_03;
        }
        #derivation connection <'REQ-SYS-07>REQ-ECLSS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_04;
        }
        #derivation connection <'REQ-SYS-06>REQ-ECLSS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_05;
        }
        #derivation connection <'REQ-SYS-07>REQ-ECLSS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_05;
        }
        #derivation connection <'REQ-SYS-06>REQ-ECLSS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_06;
        }
        #derivation connection <'REQ-SYS-07>REQ-ECLSS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-ECLSS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-ECLSS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_08;
        }
        #derivation connection <'REQ-SYS-14>REQ-ECLSS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_09;
        }
        #derivation connection <'REQ-SYS-15>REQ-ECLSS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_09;
        }
        #derivation connection <'REQ-SYS-06>REQ-ECLSS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_10;
        }
        #derivation connection <'REQ-SYS-05>REQ-ECLSS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_11;
        }
        #derivation connection <'REQ-SYS-14>REQ-ECLSS-12'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_12;
        }
        #derivation connection <'REQ-SYS-05>REQ-ECLSS-13'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_13;
        }
        #derivation connection <'REQ-SYS-06>REQ-ECLSS-13'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_ECLSS::REQ_ECLSS_13;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_01;
        }
        #derivation connection <'REQ-SYS-14>REQ-GNC-02'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_GNC::REQ_GNC_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_04;
        }
        #derivation connection <'REQ-SYS-02>REQ-GNC-05'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_GNC::REQ_GNC_05;
        }
        #derivation connection <'REQ-SYS-15>REQ-GNC-05'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_GNC::REQ_GNC_05;
        }
        #derivation connection <'REQ-SYS-02>REQ-GNC-06'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_GNC::REQ_GNC_06;
        }
        #derivation connection <'REQ-SYS-08>REQ-GNC-06'> {
            end #original ::> REQ_SYS::REQ_SYS_08;
            end #derive ::> REQ_GNC::REQ_GNC_06;
        }
        #derivation connection <'REQ-SYS-08>REQ-GNC-07'> {
            end #original ::> REQ_SYS::REQ_SYS_08;
            end #derive ::> REQ_GNC::REQ_GNC_07;
        }
        #derivation connection <'REQ-SYS-09>REQ-GNC-07'> {
            end #original ::> REQ_SYS::REQ_SYS_09;
            end #derive ::> REQ_GNC::REQ_GNC_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_08;
        }
        #derivation connection <'REQ-SYS-02>REQ-GNC-09'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_GNC::REQ_GNC_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-10'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_10;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-11'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_11;
        }
        #derivation connection <'REQ-SYS-02>REQ-GNC-11'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_GNC::REQ_GNC_11;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-12'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_12;
        }
        #derivation connection <'REQ-SYS-14>REQ-GNC-13'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_GNC::REQ_GNC_13;
        }
        #derivation connection <'REQ-SYS-10>REQ-GNC-14'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_GNC::REQ_GNC_14;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_03;
        }
        #derivation connection <'REQ-SYS-16>REQ-DPS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_DPS::REQ_DPS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_08;
        }
        #derivation connection <'REQ-SYS-02>REQ-DPS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_DPS::REQ_DPS_08;
        }
        #derivation connection <'REQ-SYS-01>REQ-DPS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_DPS::REQ_DPS_09;
        }
        #derivation connection <'REQ-SYS-15>REQ-DPS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_DPS::REQ_DPS_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_10;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_11;
        }
        #derivation connection <'REQ-SYS-10>REQ-DPS-12'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_DPS::REQ_DPS_12;
        }
        #derivation connection <'REQ-SYS-14>REQ-DPS-13'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_DPS::REQ_DPS_13;
        }
        #derivation connection <'REQ-SYS-02>REQ-MPS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_MPS::REQ_MPS_01;
        }
        #derivation connection <'REQ-SYS-08>REQ-MPS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_08;
            end #derive ::> REQ_MPS::REQ_MPS_01;
        }
        #derivation connection <'REQ-SYS-04>REQ-MPS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_MPS::REQ_MPS_02;
        }
        #derivation connection <'REQ-SYS-08>REQ-MPS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_08;
            end #derive ::> REQ_MPS::REQ_MPS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_06;
        }
        #derivation connection <'REQ-SYS-01>REQ-MPS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_MPS::REQ_MPS_07;
        }
        #derivation connection <'REQ-SYS-02>REQ-MPS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_MPS::REQ_MPS_08;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_09;
        }
        #derivation connection <'REQ-SYS-17>REQ-MPS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_17;
            end #derive ::> REQ_MPS::REQ_MPS_10;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_11;
        }
        #derivation connection <'REQ-SYS-10>REQ-MPS-12'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MPS::REQ_MPS_12;
        }
        #derivation connection <'REQ-SYS-15>REQ-MPS-13'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_MPS::REQ_MPS_13;
        }
        #derivation connection <'REQ-SYS-02>REQ-OMS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_OMS::REQ_OMS_01;
        }
        #derivation connection <'REQ-SYS-04>REQ-OMS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_OMS::REQ_OMS_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_04;
        }
        #derivation connection <'REQ-SYS-02>REQ-OMS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_OMS::REQ_OMS_05;
        }
        #derivation connection <'REQ-SYS-02>REQ-OMS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_OMS::REQ_OMS_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_07;
        }
        #derivation connection <'REQ-SYS-15>REQ-OMS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_OMS::REQ_OMS_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_08;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-OMS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_OMS::REQ_OMS_10;
        }
        #derivation connection <'REQ-SYS-14>REQ-OMS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_OMS::REQ_OMS_10;
        }
        #derivation connection <'REQ-SYS-13>REQ-OMS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_13;
            end #derive ::> REQ_OMS::REQ_OMS_11;
        }
        #derivation connection <'REQ-SYS-17>REQ-OMS-11'> {
            end #original ::> REQ_SYS::REQ_SYS_17;
            end #derive ::> REQ_OMS::REQ_OMS_11;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_01;
        }
        #derivation connection <'REQ-SYS-15>REQ-RCS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_RCS::REQ_RCS_02;
        }
        #derivation connection <'REQ-SYS-14>REQ-RCS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_RCS::REQ_RCS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-RCS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_RCS::REQ_RCS_08;
        }
        #derivation connection <'REQ-SYS-13>REQ-RCS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_13;
            end #derive ::> REQ_RCS::REQ_RCS_09;
        }
        #derivation connection <'REQ-SYS-15>REQ-RCS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_RCS::REQ_RCS_09;
        }
        #derivation connection <'REQ-SYS-14>REQ-RCS-10'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_RCS::REQ_RCS_10;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_01;
        }
        #derivation connection <'REQ-SYS-15>REQ-APU-01'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_APU::REQ_APU_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-APU-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_APU::REQ_APU_08;
        }
        #derivation connection <'REQ-SYS-14>REQ-APU-08'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_APU::REQ_APU_08;
        }
        #derivation connection <'REQ-SYS-13>REQ-APU-09'> {
            end #original ::> REQ_SYS::REQ_SYS_13;
            end #derive ::> REQ_APU::REQ_APU_09;
        }
        #derivation connection <'REQ-SYS-15>REQ-APU-09'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_APU::REQ_APU_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-CT-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CT::REQ_CT_01;
        }
        #derivation connection <'REQ-SYS-14>REQ-CT-01'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CT::REQ_CT_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-CT-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CT::REQ_CT_02;
        }
        #derivation connection <'REQ-SYS-02>REQ-CT-03'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_CT::REQ_CT_03;
        }
        #derivation connection <'REQ-SYS-03>REQ-CT-04'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_CT::REQ_CT_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-CT-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CT::REQ_CT_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-CT-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CT::REQ_CT_06;
        }
        #derivation connection <'REQ-SYS-03>REQ-CT-07'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_CT::REQ_CT_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-CT-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CT::REQ_CT_08;
        }
        #derivation connection <'REQ-SYS-14>REQ-CT-09'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CT::REQ_CT_09;
        }
        #derivation connection <'REQ-SYS-04>REQ-TPS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_TPS::REQ_TPS_01;
        }
        #derivation connection <'REQ-SYS-04>REQ-TPS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_TPS::REQ_TPS_02;
        }
        #derivation connection <'REQ-SYS-04>REQ-TPS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_TPS::REQ_TPS_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-TPS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_TPS::REQ_TPS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-TPS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_TPS::REQ_TPS_05;
        }
        #derivation connection <'REQ-SYS-04>REQ-TPS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_TPS::REQ_TPS_06;
        }
        #derivation connection <'REQ-SYS-06>REQ-TPS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_TPS::REQ_TPS_07;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-01'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-CW-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CW::REQ_CW_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-CW-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CW::REQ_CW_03;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-03'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_03;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-04'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_04;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-05'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_05;
        }
        #derivation connection <'REQ-SYS-05>REQ-CW-06'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CW::REQ_CW_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-CW-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CW::REQ_CW_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-CW-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CW::REQ_CW_07;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-08'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_08;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-09'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_09;
        }
        #derivation connection <'REQ-SYS-14>REQ-CW-10'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CW::REQ_CW_10;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-01'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_01;
        }
        #derivation connection <'REQ-SYS-06>REQ-CREW-01'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_CREW::REQ_CREW_01;
        }
        #derivation connection <'REQ-SYS-06>REQ-CREW-02'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_CREW::REQ_CREW_02;
        }
        #derivation connection <'REQ-SYS-06>REQ-CREW-03'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_CREW::REQ_CREW_03;
        }
        #derivation connection <'REQ-SYS-07>REQ-CREW-03'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_CREW::REQ_CREW_03;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-04'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_04;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-05'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_05;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-06'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_06;
        }
        #derivation connection <'REQ-SYS-03>REQ-CREW-07'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_CREW::REQ_CREW_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-CREW-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CREW::REQ_CREW_07;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-08'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_08;
        }
        #derivation connection <'REQ-SYS-05>REQ-CREW-09'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_CREW::REQ_CREW_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-CREW-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CREW::REQ_CREW_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-CREW-10'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_CREW::REQ_CREW_10;
        }
        #derivation connection <'REQ-SYS-14>REQ-CREW-10'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_CREW::REQ_CREW_10;
        }
        #derivation connection <'REQ-SYS-10>REQ-EVA-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EVA::REQ_EVA_01;
        }
        #derivation connection <'REQ-SYS-07>REQ-EVA-02'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_EVA::REQ_EVA_02;
        }
        #derivation connection <'REQ-SYS-07>REQ-EVA-03'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_EVA::REQ_EVA_03;
        }
        #derivation connection <'REQ-SYS-05>REQ-EVA-04'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_EVA::REQ_EVA_04;
        }
        #derivation connection <'REQ-SYS-06>REQ-EVA-05'> {
            end #original ::> REQ_SYS::REQ_SYS_06;
            end #derive ::> REQ_EVA::REQ_EVA_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-EVA-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_EVA::REQ_EVA_06;
        }
        #derivation connection <'REQ-SYS-15>REQ-EVA-06'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_EVA::REQ_EVA_06;
        }
        #derivation connection <'REQ-SYS-07>REQ-EVA-07'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_EVA::REQ_EVA_07;
        }
        #derivation connection <'REQ-SYS-05>REQ-EVA-08'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_EVA::REQ_EVA_08;
        }
        #derivation connection <'REQ-SYS-02>REQ-PLS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_PLS::REQ_PLS_01;
        }
        #derivation connection <'REQ-SYS-03>REQ-PLS-01'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_PLS::REQ_PLS_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-PLS-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_PLS::REQ_PLS_02;
        }
        #derivation connection <'REQ-SYS-10>REQ-PLS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_PLS::REQ_PLS_03;
        }
        #derivation connection <'REQ-SYS-14>REQ-PLS-03'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_PLS::REQ_PLS_03;
        }
        #derivation connection <'REQ-SYS-03>REQ-PLS-04'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_PLS::REQ_PLS_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-PLS-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_PLS::REQ_PLS_05;
        }
        #derivation connection <'REQ-SYS-03>REQ-PLS-06'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_PLS::REQ_PLS_06;
        }
        #derivation connection <'REQ-SYS-02>REQ-PLS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_PLS::REQ_PLS_07;
        }
        #derivation connection <'REQ-SYS-07>REQ-PLS-07'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_PLS::REQ_PLS_07;
        }
        #derivation connection <'REQ-SYS-03>REQ-PLS-08'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_PLS::REQ_PLS_08;
        }
        #derivation connection <'REQ-SYS-10>REQ-PLS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_PLS::REQ_PLS_09;
        }
        #derivation connection <'REQ-SYS-14>REQ-PLS-09'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_PLS::REQ_PLS_09;
        }
        #derivation connection <'REQ-SYS-10>REQ-MECH-01'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MECH::REQ_MECH_01;
        }
        #derivation connection <'REQ-SYS-10>REQ-MECH-02'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MECH::REQ_MECH_02;
        }
        #derivation connection <'REQ-SYS-03>REQ-MECH-03'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_MECH::REQ_MECH_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-MECH-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MECH::REQ_MECH_04;
        }
        #derivation connection <'REQ-SYS-04>REQ-MECH-05'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_MECH::REQ_MECH_05;
        }
        #derivation connection <'REQ-SYS-04>REQ-MECH-06'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_MECH::REQ_MECH_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-MECH-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MECH::REQ_MECH_07;
        }
        #derivation connection <'REQ-SYS-18>REQ-MECH-07'> {
            end #original ::> REQ_SYS::REQ_SYS_18;
            end #derive ::> REQ_MECH::REQ_MECH_07;
        }
        #derivation connection <'REQ-SYS-10>REQ-MECH-08'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_MECH::REQ_MECH_08;
        }
        #derivation connection <'REQ-SYS-18>REQ-MECH-09'> {
            end #original ::> REQ_SYS::REQ_SYS_18;
            end #derive ::> REQ_MECH::REQ_MECH_09;
        }
        #derivation connection <'REQ-SYS-14>REQ-MECH-10'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_MECH::REQ_MECH_10;
        }
        #derivation connection <'REQ-SYS-01>REQ-STR-01'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_STR::REQ_STR_01;
        }
        #derivation connection <'REQ-SYS-04>REQ-STR-01'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_STR::REQ_STR_01;
        }
        #derivation connection <'REQ-SYS-01>REQ-STR-02'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_STR::REQ_STR_02;
        }
        #derivation connection <'REQ-SYS-05>REQ-STR-03'> {
            end #original ::> REQ_SYS::REQ_SYS_05;
            end #derive ::> REQ_STR::REQ_STR_03;
        }
        #derivation connection <'REQ-SYS-07>REQ-STR-03'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_STR::REQ_STR_03;
        }
        #derivation connection <'REQ-SYS-07>REQ-STR-04'> {
            end #original ::> REQ_SYS::REQ_SYS_07;
            end #derive ::> REQ_STR::REQ_STR_04;
        }
        #derivation connection <'REQ-SYS-14>REQ-STR-04'> {
            end #original ::> REQ_SYS::REQ_SYS_14;
            end #derive ::> REQ_STR::REQ_STR_04;
        }
        #derivation connection <'REQ-SYS-03>REQ-STR-05'> {
            end #original ::> REQ_SYS::REQ_SYS_03;
            end #derive ::> REQ_STR::REQ_STR_05;
        }
        #derivation connection <'REQ-SYS-01>REQ-STR-06'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_STR::REQ_STR_06;
        }
        #derivation connection <'REQ-SYS-09>REQ-STR-07'> {
            end #original ::> REQ_SYS::REQ_SYS_09;
            end #derive ::> REQ_STR::REQ_STR_07;
        }
        #derivation connection <'REQ-SYS-04>REQ-STR-08'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_STR::REQ_STR_08;
        }
        #derivation connection <'REQ-SYS-01>REQ-ET-01'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_ET::REQ_ET_01;
        }
        #derivation connection <'REQ-SYS-02>REQ-ET-01'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_ET::REQ_ET_01;
        }
        #derivation connection <'REQ-SYS-02>REQ-ET-02'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_ET::REQ_ET_02;
        }
        #derivation connection <'REQ-SYS-02>REQ-ET-03'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_ET::REQ_ET_03;
        }
        #derivation connection <'REQ-SYS-01>REQ-ET-04'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_ET::REQ_ET_04;
        }
        #derivation connection <'REQ-SYS-01>REQ-ET-05'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_ET::REQ_ET_05;
        }
        #derivation connection <'REQ-SYS-16>REQ-ET-05'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_ET::REQ_ET_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-ET-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_ET::REQ_ET_06;
        }
        #derivation connection <'REQ-SYS-15>REQ-ET-06'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_ET::REQ_ET_06;
        }
        #derivation connection <'REQ-SYS-04>REQ-ET-07'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_ET::REQ_ET_07;
        }
        #derivation connection <'REQ-SYS-15>REQ-ET-08'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_ET::REQ_ET_08;
        }
        #derivation connection <'REQ-SYS-10>REQ-ET-09'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_ET::REQ_ET_09;
        }
        #derivation connection <'REQ-SYS-01>REQ-SRB-01'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_SRB::REQ_SRB_01;
        }
        #derivation connection <'REQ-SYS-02>REQ-SRB-01'> {
            end #original ::> REQ_SYS::REQ_SYS_02;
            end #derive ::> REQ_SRB::REQ_SRB_01;
        }
        #derivation connection <'REQ-SYS-08>REQ-SRB-02'> {
            end #original ::> REQ_SYS::REQ_SYS_08;
            end #derive ::> REQ_SRB::REQ_SRB_02;
        }
        #derivation connection <'REQ-SYS-01>REQ-SRB-03'> {
            end #original ::> REQ_SYS::REQ_SYS_01;
            end #derive ::> REQ_SRB::REQ_SRB_03;
        }
        #derivation connection <'REQ-SYS-10>REQ-SRB-04'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_SRB::REQ_SRB_04;
        }
        #derivation connection <'REQ-SYS-10>REQ-SRB-05'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_SRB::REQ_SRB_05;
        }
        #derivation connection <'REQ-SYS-10>REQ-SRB-06'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_SRB::REQ_SRB_06;
        }
        #derivation connection <'REQ-SYS-16>REQ-SRB-06'> {
            end #original ::> REQ_SYS::REQ_SYS_16;
            end #derive ::> REQ_SRB::REQ_SRB_06;
        }
        #derivation connection <'REQ-SYS-10>REQ-SRB-07'> {
            end #original ::> REQ_SYS::REQ_SYS_10;
            end #derive ::> REQ_SRB::REQ_SRB_07;
        }
        #derivation connection <'REQ-SYS-15>REQ-SRB-08'> {
            end #original ::> REQ_SYS::REQ_SYS_15;
            end #derive ::> REQ_SRB::REQ_SRB_08;
        }
        #derivation connection <'REQ-SYS-04>REQ-SRB-09'> {
            end #original ::> REQ_SYS::REQ_SYS_04;
            end #derive ::> REQ_SRB::REQ_SRB_09;
        }
    }
    // ---- 充足（要求書の「割付先」：F-ID は機能行を持つ機能説明書の部品、IF-ID は構造モデルの interface・connection）
    package Satisfaction {
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.orb { doc /* 割付先：F-ORB-01 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.et { doc /* 割付先：F-ET-01 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.srb { doc /* 割付先：F-SRB-01 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.orb.mps { doc /* 割付先：F-MPS-02 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.IF_SYS_01 { doc /* 割付先：IF-SYS-01 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.IF_SYS_02 { doc /* 割付先：IF-SYS-02 */ }
        satisfy REQ_SYS::REQ_SYS_01 by context.sts.IF_SYS_07 { doc /* 割付先：IF-SYS-07 */ }
        satisfy REQ_SYS::REQ_SYS_02 by context.sts.orb.mps { doc /* 割付先：F-MPS-01 */ }
        satisfy REQ_SYS::REQ_SYS_02 by context.sts.srb { doc /* 割付先：F-SRB-01 */ }
        satisfy REQ_SYS::REQ_SYS_02 by context.sts.orb.oms { doc /* 割付先：F-OMS-01 */ }
        satisfy REQ_SYS::REQ_SYS_02 by context.sts.orb.gnc { doc /* 割付先：F-GNC-05 */ }
        satisfy REQ_SYS::REQ_SYS_03 by context.sts.orb.str { doc /* 割付先：F-STR-05 */ }
        satisfy REQ_SYS::REQ_SYS_03 by context.sts.orb.mech { doc /* 割付先：F-MECH-10 */ }
        satisfy REQ_SYS::REQ_SYS_04 by context.sts.srb { doc /* 割付先：F-SRB-03 */ }
        satisfy REQ_SYS::REQ_SYS_04 by context.sts.orb.tps { doc /* 割付先：F-TPS-01 */ }
        satisfy REQ_SYS::REQ_SYS_04 by context.sts.orb.mps { doc /* 割付先：F-MPS-02 */ }
        satisfy REQ_SYS::REQ_SYS_04 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-01 */ }
        satisfy REQ_SYS::REQ_SYS_05 by context.sts.orb.crew { doc /* 割付先：F-CREW-01 */ }
        satisfy REQ_SYS::REQ_SYS_05 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-02 */ }
        satisfy REQ_SYS::REQ_SYS_06 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-04 */ }
        satisfy REQ_SYS::REQ_SYS_06 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-04 */ }
        satisfy REQ_SYS::REQ_SYS_07 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-02・F-ECLSS-03 */ }
        satisfy REQ_SYS::REQ_SYS_07 by context.sts.orb.str { doc /* 割付先：F-STR-04 */ }
        satisfy REQ_SYS::REQ_SYS_07 by context.sts.orb.IF_ORB_09 { doc /* 割付先：IF-ORB-09 */ }
        satisfy REQ_SYS::REQ_SYS_08 by context.sts.orb.mps { doc /* 割付先：F-MPS-01 */ }
        satisfy REQ_SYS::REQ_SYS_08 by context.sts.orb.gnc { doc /* 割付先：F-GNC-05 */ }
        satisfy REQ_SYS::REQ_SYS_08 by context.sts.orb.str { doc /* 割付先：F-STR-01 */ }
        satisfy REQ_SYS::REQ_SYS_09 by context.sts.orb.tps { doc /* 割付先：F-TPS-01 */ }
        satisfy REQ_SYS::REQ_SYS_09 by context.sts.orb.str { doc /* 割付先：F-STR-01 */ }
        satisfy REQ_SYS::REQ_SYS_09 by context.sts.orb.apu { doc /* 割付先：F-APU-02 */ }
        satisfy REQ_SYS::REQ_SYS_10 by context.sts.orb { doc /* 割付先：F-ORB-03 */ }
        satisfy REQ_SYS::REQ_SYS_10 by context.sts.orb.dps { doc /* 割付先：F-DPS-03 */ }
        satisfy REQ_SYS::REQ_SYS_10 by context.sts.orb.apu { doc /* 割付先：F-APU-01 */ }
        satisfy REQ_SYS::REQ_SYS_10 by context.sts.orb.eps { doc /* 割付先：F-EPS-04 */ }
        satisfy REQ_SYS::REQ_SYS_10 by context.sts.orb.gnc { doc /* 割付先：F-GNC-01 */ }
        satisfy REQ_SYS::REQ_SYS_11 by context.sts.orb { doc /* 割付先：F-ORB-03 */ }
        satisfy REQ_SYS::REQ_SYS_11 by context.sts.orb.cw { doc /* 割付先：F-CW-02 */ }
        satisfy REQ_SYS::REQ_SYS_12 by context.sts.orb { doc /* 割付先：F-ORB-03 */ }
        satisfy REQ_SYS::REQ_SYS_13 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-04 */ }
        satisfy REQ_SYS::REQ_SYS_13 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-04 */ }
        satisfy REQ_SYS::REQ_SYS_14 by context.sts.orb { doc /* 割付先：F-ORB-03 */ }
        satisfy REQ_SYS::REQ_SYS_14 by context.sts.orb.cw { doc /* 割付先：F-CW-01 */ }
        satisfy REQ_SYS::REQ_SYS_14 by context.sts.orb.dps { doc /* 割付先：F-DPS-03 */ }
        satisfy REQ_SYS::REQ_SYS_15 by context.sts.orb.gnc { doc /* 割付先：F-GNC-05 */ }
        satisfy REQ_SYS::REQ_SYS_15 by context.sts.orb.oms { doc /* 割付先：F-OMS-01 */ }
        satisfy REQ_SYS::REQ_SYS_15 by context.sts.orb.mps { doc /* 割付先：F-MPS-01 */ }
        satisfy REQ_SYS::REQ_SYS_15 by context.sts.orb.dps { doc /* 割付先：F-DPS-03 */ }
        satisfy REQ_SYS::REQ_SYS_16 by context.sts.orb.eps { doc /* 割付先：F-EPS-01・F-EPS-03 */ }
        satisfy REQ_SYS::REQ_SYS_16 by context.sts.orb.IF_ORB_14 { doc /* 割付先：IF-ORB-14 */ }
        satisfy REQ_SYS::REQ_SYS_16 by context.sts.IF_ORB_27 { doc /* 割付先：IF-ORB-27 */ }
        satisfy REQ_SYS::REQ_SYS_16 by context.sts.IF_ORB_28 { doc /* 割付先：IF-ORB-28 */ }
        satisfy REQ_SYS::REQ_SYS_17 by context.sts.orb.mech { doc /* 割付先：F-MECH-03 */ }
        satisfy REQ_SYS::REQ_SYS_17 by context.sts.orb.str { doc /* 割付先：F-STR-01 */ }
        satisfy REQ_SYS::REQ_SYS_18 by context.sts.orb.mech { doc /* 割付先：F-MECH-03 */ }
        satisfy REQ_EPS::REQ_EPS_01 by context.sts.orb.eps { doc /* 割付先：F-EPS-01 */ }
        satisfy REQ_EPS::REQ_EPS_01 by context.sts.orb.IF_ORB_14 { doc /* 割付先：IF-ORB-14 */ }
        satisfy REQ_EPS::REQ_EPS_01 by context.sts.IF_ORB_27 { doc /* 割付先：IF-ORB-27 */ }
        satisfy REQ_EPS::REQ_EPS_01 by context.sts.IF_ORB_28 { doc /* 割付先：IF-ORB-28 */ }
        satisfy REQ_EPS::REQ_EPS_02 by context.sts.orb.eps { doc /* 割付先：F-EPS-03 */ }
        satisfy REQ_EPS::REQ_EPS_02 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-08 */ }
        satisfy REQ_EPS::REQ_EPS_02 by context.IF_ORB_31 { doc /* 割付先：IF-ORB-31 */ }
        satisfy REQ_EPS::REQ_EPS_03 by context.sts.orb.eps { doc /* 割付先：F-EPS-04 */ }
        satisfy REQ_EPS::REQ_EPS_03 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-02 */ }
        satisfy REQ_EPS::REQ_EPS_03 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-01・F-EPS-DC-05 */ }
        satisfy REQ_EPS::REQ_EPS_04 by context.sts.orb.eps { doc /* 割付先：F-EPS-05 */ }
        satisfy REQ_EPS::REQ_EPS_04 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-07 */ }
        satisfy REQ_EPS::REQ_EPS_05 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-03・F-EPS-FCP-07 */ }
        satisfy REQ_EPS::REQ_EPS_06 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-01・F-EPS-DC-05 */ }
        satisfy REQ_EPS::REQ_EPS_06 by context.sts.orb.IF_ORB_41 { doc /* 割付先：IF-ORB-41 */ }
        satisfy REQ_EPS::REQ_EPS_07 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-02 */ }
        satisfy REQ_EPS::REQ_EPS_07 by context.sts.orb.cw { doc /* 割付先：F-CW-07 */ }
        satisfy REQ_EPS::REQ_EPS_08 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-01・F-EPS-AC-02・F-EPS-AC-03 */ }
        satisfy REQ_EPS::REQ_EPS_08 by context.sts.orb.IF_EPS_12 { doc /* 割付先：IF-EPS-12 */ }
        satisfy REQ_EPS::REQ_EPS_09 by context.sts.orb.eps.ac { doc /* 割付先：F-EPS-AC-04 */ }
        satisfy REQ_EPS::REQ_EPS_09 by context.sts.orb.IF_ORB_06 { doc /* 割付先：IF-ORB-06 */ }
        satisfy REQ_EPS::REQ_EPS_10 by context.sts.orb.eps { doc /* 割付先：F-EPS-02 */ }
        satisfy REQ_EPS::REQ_EPS_10 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-01・F-EPS-PRSD-02・F-EPS-PRSD-03 */ }
        satisfy REQ_EPS::REQ_EPS_11 by context.sts.orb.eps { doc /* 割付先：F-EPS-02 */ }
        satisfy REQ_EPS::REQ_EPS_11 by context.sts.orb.IF_ORB_09 { doc /* 割付先：IF-ORB-09 */ }
        satisfy REQ_EPS::REQ_EPS_11 by context.sts.orb.IF_ECL_01 { doc /* 割付先：IF-ECL-01 */ }
        satisfy REQ_EPS::REQ_EPS_12 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-04・F-EPS-PRSD-05・F-EPS-PRSD-08 */ }
        satisfy REQ_EPS::REQ_EPS_13 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-07 */ }
        satisfy REQ_EPS::REQ_EPS_14 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-06 */ }
        satisfy REQ_EPS::REQ_EPS_14 by context.sts.orb.IF_ORB_20 { doc /* 割付先：IF-ORB-20 */ }
        satisfy REQ_EPS::REQ_EPS_15 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-04・F-EPS-FCP-05 */ }
        satisfy REQ_EPS::REQ_EPS_15 by context.sts.orb.IF_ORB_11 { doc /* 割付先：IF-ORB-11 */ }
        satisfy REQ_EPS::REQ_EPS_15 by context.sts.orb.IF_ECL_09 { doc /* 割付先：IF-ECL-09 */ }
        satisfy REQ_EPS::REQ_EPS_16 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-04 */ }
        satisfy REQ_EPS::REQ_EPS_16 by context.sts.orb.IF_ORB_10 { doc /* 割付先：IF-ORB-10 */ }
        satisfy REQ_EPS::REQ_EPS_16 by context.sts.orb.IF_ECL_10 { doc /* 割付先：IF-ECL-10 */ }
        satisfy REQ_EPS::REQ_EPS_17 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-04 */ }
        satisfy REQ_EPS::REQ_EPS_18 by context.sts.orb.eps { doc /* 割付先：F-EPS-04 */ }
        satisfy REQ_EPS::REQ_EPS_18 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-04 */ }
        satisfy REQ_EPS::REQ_EPS_18 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-01 */ }
        satisfy REQ_EPS::REQ_EPS_19 by context.sts.orb.eps { doc /* 割付先：F-EPS-05 */ }
        satisfy REQ_EPS::REQ_EPS_19 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-06 */ }
        satisfy REQ_EPS::REQ_EPS_20 by context.sts.orb.eps.fcp { doc /* 割付先：F-EPS-FCP-01 */ }
        satisfy REQ_EPS::REQ_EPS_21 by context.sts.orb.eps.prsd { doc /* 割付先：F-EPS-PRSD-06 */ }
        satisfy REQ_EPS::REQ_EPS_22 by context.sts.orb.eps.dc { doc /* 割付先：F-EPS-DC-07 */ }
        satisfy REQ_EPS::REQ_EPS_22 by context.sts.orb.IF_ORB_35 { doc /* 割付先：IF-ORB-35 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_01 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-01・F-ECLSS-03 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_01 by context.sts.orb.eclss.cab { doc /* 割付先：F-ECL-CAB-01・F-ECL-CAB-04 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_01 by context.sts.orb.eclss.pcs { doc /* 割付先：F-ECL-PCS-01・F-ECL-PCS-02・F-ECL-PCS-03・F-ECL-PCS-07・F-ECL-PCS-08 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_01 by context.sts.orb.IF_ORB_09 { doc /* 割付先：IF-ORB-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_02 by context.sts.orb.eclss.pcs { doc /* 割付先：F-ECL-PCS-04・F-ECL-PCS-10 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_03 by context.sts.orb.eclss.pcs { doc /* 割付先：F-ECL-PCS-05・F-ECL-PCS-06・F-ECL-PCS-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_04 by context.sts.orb.eclss.als { doc /* 割付先：F-ECL-ALS-01・F-ECL-ALS-02・F-ECL-ALS-03・F-ECL-ALS-04・F-ECL-ALS-05・F-ECL-ALS-07・F-ECL-ALS-08 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_04 by context.sts.orb.eclss.cab { doc /* 割付先：F-ECL-CAB-03 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_04 by context.sts.orb.eclss.pcs { doc /* 割付先：F-ECL-PCS-11 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_05 by context.sts.orb.eclss.ars { doc /* 割付先：F-ECL-ARS-01・F-ECL-ARS-02・F-ECL-ARS-03・F-ECL-ARS-04・F-ECL-ARS-05 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_05 by context.sts.orb.eclss.cab { doc /* 割付先：F-ECL-CAB-02・F-ECL-CAB-05 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_05 by context.sts.orb.eclss.als { doc /* 割付先：F-ECL-ALS-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_06 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-04 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_06 by context.sts.orb.eclss.ars { doc /* 割付先：F-ECL-ARS-08・F-ECL-ARS-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_07 by context.sts.orb.eclss.ars { doc /* 割付先：F-ECL-ARS-06・F-ECL-ARS-07 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_07 by context.sts.orb.IF_ORB_13 { doc /* 割付先：IF-ORB-13 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_07 by context.sts.orb.IF_ORB_19 { doc /* 割付先：IF-ORB-19 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_08 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-02・F-ECLSS-05・F-ECLSS-06 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_08 by context.sts.orb.eclss.atcs { doc /* 割付先：F-ECL-ATCS-01・F-ECL-ATCS-02・F-ECL-ATCS-03・F-ECL-ATCS-04・F-ECL-ATCS-05・F-ECL-ATCS-06・F-ECL-ATCS-07 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_08 by context.sts.orb.IF_ORB_11 { doc /* 割付先：IF-ORB-11 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_08 by context.sts.orb.IF_ORB_12 { doc /* 割付先：IF-ORB-12 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_08 by context.IF_ORB_32 { doc /* 割付先：IF-ORB-32 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_09 by context.sts.orb.eclss { doc /* 割付先：F-ECLSS-02 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_09 by context.sts.orb.eclss.atcs { doc /* 割付先：F-ECL-ATCS-02 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_10 by context.sts.orb.eclss.h2o { doc /* 割付先：F-ECL-H2O-01・F-ECL-H2O-02・F-ECL-H2O-03・F-ECL-H2O-04・F-ECL-H2O-05・F-ECL-H2O-06・F-ECL-H2O-07・F-ECL-H2O-08・F-ECL-H2O-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_10 by context.sts.orb.eclss.als { doc /* 割付先：F-ECL-ALS-10 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_10 by context.sts.orb.IF_ORB_10 { doc /* 割付先：IF-ORB-10 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_11 by context.sts.orb.eclss.fds { doc /* 割付先：F-ECL-FDS-01・F-ECL-FDS-02・F-ECL-FDS-03・F-ECL-FDS-04・F-ECL-FDS-05・F-ECL-FDS-06・F-ECL-FDS-09・F-ECL-FDS-10・F-ECL-FDS-11・F-ECL-FDS-12 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_12 by context.sts.orb.eclss.fds { doc /* 割付先：F-ECL-FDS-07・F-ECL-FDS-08 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_12 by context.sts.orb.eclss.wcs { doc /* 割付先：F-ECL-WCS-09 */ }
        satisfy REQ_ECLSS::REQ_ECLSS_13 by context.sts.orb.eclss.wcs { doc /* 割付先：F-ECL-WCS-01・F-ECL-WCS-02・F-ECL-WCS-03・F-ECL-WCS-04・F-ECL-WCS-05・F-ECL-WCS-06・F-ECL-WCS-07・F-ECL-WCS-08 */ }
        satisfy REQ_GNC::REQ_GNC_01 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-01・F-GNC-INS-02・F-GNC-INS-04 */ }
        satisfy REQ_GNC::REQ_GNC_02 by context.sts.orb.gnc.ins { doc /* 割付先：F-GNC-INS-08・F-GNC-INS-09・F-GNC-INS-11 */ }
        satisfy REQ_GNC::REQ_GNC_02 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-06・F-GNC-OPS-07 */ }
        satisfy REQ_GNC::REQ_GNC_03 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-01・F-GNC-NAS-02・F-GNC-NAS-03・F-GNC-NAS-04・F-GNC-NAS-05・F-GNC-NAS-10・F-GNC-NAS-11 */ }
        satisfy REQ_GNC::REQ_GNC_04 by context.sts.orb.gnc.nas { doc /* 割付先：F-GNC-NAS-07・F-GNC-NAS-08・F-GNC-NAS-09 */ }
        satisfy REQ_GNC::REQ_GNC_04 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-08 */ }
        satisfy REQ_GNC::REQ_GNC_05 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-01・F-GNC-GNS-02・F-GNC-GNS-03・F-GNC-GNS-04・F-GNC-GNS-05・F-GNC-GNS-06・F-GNC-GNS-07 */ }
        satisfy REQ_GNC::REQ_GNC_06 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-08・F-GNC-GNS-09 */ }
        satisfy REQ_GNC::REQ_GNC_07 by context.sts.orb.gnc.gns { doc /* 割付先：F-GNC-GNS-11・F-GNC-GNS-12 */ }
        satisfy REQ_GNC::REQ_GNC_08 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-01・F-GNC-FCS-03・F-GNC-FCS-04・F-GNC-FCS-05・F-GNC-FCS-06 */ }
        satisfy REQ_GNC::REQ_GNC_08 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-02 */ }
        satisfy REQ_GNC::REQ_GNC_09 by context.sts.orb.gnc.fcs { doc /* 割付先：F-GNC-FCS-07・F-GNC-FCS-08・F-GNC-FCS-09・F-GNC-FCS-10・F-GNC-FCS-11・F-GNC-FCS-12 */ }
        satisfy REQ_GNC::REQ_GNC_10 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-01・F-GNC-ACT-02・F-GNC-ACT-03・F-GNC-ACT-04・F-GNC-ACT-05・F-GNC-ACT-06・F-GNC-ACT-07・F-GNC-ACT-08 */ }
        satisfy REQ_GNC::REQ_GNC_11 by context.sts.orb.gnc.act { doc /* 割付先：F-GNC-ACT-09・F-GNC-ACT-10・F-GNC-ACT-11・F-GNC-ACT-12 */ }
        satisfy REQ_GNC::REQ_GNC_11 by context.sts.IF_GNC_18 { doc /* 割付先：IF-GNC-18 */ }
        satisfy REQ_GNC::REQ_GNC_12 by context.sts.orb.gnc.ccd { doc /* 割付先：F-GNC-CCD-01・F-GNC-CCD-02・F-GNC-CCD-03・F-GNC-CCD-04・F-GNC-CCD-05・F-GNC-CCD-06・F-GNC-CCD-09 */ }
        satisfy REQ_GNC::REQ_GNC_13 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-01・F-GNC-OPS-02・F-GNC-OPS-04・F-GNC-OPS-05・F-GNC-OPS-11・F-GNC-OPS-12 */ }
        satisfy REQ_GNC::REQ_GNC_14 by context.sts.orb.gnc.ops { doc /* 割付先：F-GNC-OPS-10・F-GNC-OPS-09 */ }
        satisfy REQ_DPS::REQ_DPS_01 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-01・F-DPS-GPC-10 */ }
        satisfy REQ_DPS::REQ_DPS_01 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-01 */ }
        satisfy REQ_DPS::REQ_DPS_02 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-09・F-DPS-GPC-11・F-DPS-GPC-12 */ }
        satisfy REQ_DPS::REQ_DPS_03 by context.sts.orb.dps.gpc { doc /* 割付先：F-DPS-GPC-07・F-DPS-GPC-02 */ }
        satisfy REQ_DPS::REQ_DPS_04 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-02・F-DPS-FSW-11・F-DPS-FSW-12・F-DPS-FSW-13 */ }
        satisfy REQ_DPS::REQ_DPS_04 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-02 */ }
        satisfy REQ_DPS::REQ_DPS_05 by context.sts.orb.dps.fsw { doc /* 割付先：F-DPS-FSW-03・F-DPS-FSW-04・F-DPS-FSW-05・F-DPS-FSW-06・F-DPS-FSW-07・F-DPS-FSW-08・F-DPS-FSW-09・F-DPS-FSW-10 */ }
        satisfy REQ_DPS::REQ_DPS_06 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-01・F-DPS-BUS-02・F-DPS-BUS-03・F-DPS-BUS-04・F-DPS-BUS-05・F-DPS-BUS-07 */ }
        satisfy REQ_DPS::REQ_DPS_07 by context.sts.orb.dps.bus { doc /* 割付先：F-DPS-BUS-06・F-DPS-BUS-08・F-DPS-BUS-09・F-DPS-BUS-10・F-DPS-BUS-11・F-DPS-BUS-12 */ }
        satisfy REQ_DPS::REQ_DPS_07 by context.sts.orb.IF_DPS_10 { doc /* 割付先：IF-DPS-10 */ }
        satisfy REQ_DPS::REQ_DPS_07 by context.sts.orb.IF_DPS_11 { doc /* 割付先：IF-DPS-11 */ }
        satisfy REQ_DPS::REQ_DPS_08 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-02・F-DPS-ASC-03・F-DPS-ASC-04・F-DPS-ASC-05・F-DPS-ASC-06 */ }
        satisfy REQ_DPS::REQ_DPS_09 by context.sts.orb.dps.asc { doc /* 割付先：F-DPS-ASC-01・F-DPS-ASC-07・F-DPS-ASC-08・F-DPS-ASC-09・F-DPS-ASC-10・F-DPS-ASC-11・F-DPS-ASC-12 */ }
        satisfy REQ_DPS::REQ_DPS_09 by context.sts.IF_DPS_07 { doc /* 割付先：IF-DPS-07 */ }
        satisfy REQ_DPS::REQ_DPS_09 by context.sts.IF_DPS_08 { doc /* 割付先：IF-DPS-08 */ }
        satisfy REQ_DPS::REQ_DPS_09 by context.sts.IF_DPS_09 { doc /* 割付先：IF-DPS-09 */ }
        satisfy REQ_DPS::REQ_DPS_10 by context.sts.orb.dps.meds { doc /* 割付先：F-DPS-MEDS-01・F-DPS-MEDS-02・F-DPS-MEDS-03・F-DPS-MEDS-04・F-DPS-MEDS-05・F-DPS-MEDS-06・F-DPS-MEDS-07・F-DPS-MEDS-12 */ }
        satisfy REQ_DPS::REQ_DPS_11 by context.sts.orb.dps.mtu { doc /* 割付先：F-DPS-MTU-01・F-DPS-MTU-02・F-DPS-MTU-03・F-DPS-MTU-04・F-DPS-MTU-06・F-DPS-MTU-08 */ }
        satisfy REQ_DPS::REQ_DPS_12 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-01・F-DPS-OPS-03・F-DPS-OPS-04・F-DPS-OPS-05・F-DPS-OPS-06・F-DPS-OPS-07・F-DPS-OPS-11 */ }
        satisfy REQ_DPS::REQ_DPS_13 by context.sts.orb.dps.ops { doc /* 割付先：F-DPS-OPS-08・F-DPS-OPS-09・F-DPS-OPS-10・F-DPS-OPS-12 */ }
        satisfy REQ_MPS::REQ_MPS_01 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-01・F-MPS-SSME-03・F-MPS-SSME-04・F-MPS-SSME-05・F-MPS-SSME-06・F-MPS-SSME-07 */ }
        satisfy REQ_MPS::REQ_MPS_02 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-02・F-MPS-SSME-08・F-MPS-SSME-09・F-MPS-SSME-12 */ }
        satisfy REQ_MPS::REQ_MPS_03 by context.sts.orb.mps.ssme { doc /* 割付先：F-MPS-SSME-10・F-MPS-SSME-11 */ }
        satisfy REQ_MPS::REQ_MPS_04 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-01・F-MPS-CTL-02・F-MPS-CTL-03・F-MPS-CTL-04・F-MPS-CTL-13 */ }
        satisfy REQ_MPS::REQ_MPS_05 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-05・F-MPS-CTL-06・F-MPS-CTL-07・F-MPS-CTL-08・F-MPS-CTL-09・F-MPS-CTL-10 */ }
        satisfy REQ_MPS::REQ_MPS_06 by context.sts.orb.mps.ctl { doc /* 割付先：F-MPS-CTL-11・F-MPS-CTL-12 */ }
        satisfy REQ_MPS::REQ_MPS_07 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-01・F-MPS-PMS-02・F-MPS-PMS-03・F-MPS-PMS-04・F-MPS-PMS-05・F-MPS-PMS-11・F-MPS-PMS-12 */ }
        satisfy REQ_MPS::REQ_MPS_07 by context.sts.IF_MPS_01 { doc /* 割付先：IF-MPS-01 */ }
        satisfy REQ_MPS::REQ_MPS_08 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-06・F-MPS-PMS-07・F-MPS-PMS-08・F-MPS-PMS-09・F-MPS-PMS-13 */ }
        satisfy REQ_MPS::REQ_MPS_08 by context.sts.IF_MPS_02 { doc /* 割付先：IF-MPS-02 */ }
        satisfy REQ_MPS::REQ_MPS_09 by context.sts.orb.mps.pms { doc /* 割付先：F-MPS-PMS-10 */ }
        satisfy REQ_MPS::REQ_MPS_10 by context.sts.orb.mps.dmp { doc /* 割付先：F-MPS-DMP-01・F-MPS-DMP-04・F-MPS-DMP-05・F-MPS-DMP-06・F-MPS-DMP-07・F-MPS-DMP-08・F-MPS-DMP-09・F-MPS-DMP-10・F-MPS-DMP-12 */ }
        satisfy REQ_MPS::REQ_MPS_11 by context.sts.orb.mps.he { doc /* 割付先：F-MPS-HE-01・F-MPS-HE-02・F-MPS-HE-03・F-MPS-HE-07・F-MPS-HE-08・F-MPS-HE-10・F-MPS-HE-11・F-MPS-HE-12 */ }
        satisfy REQ_MPS::REQ_MPS_12 by context.sts.orb.mps.tvc { doc /* 割付先：F-MPS-TVC-01・F-MPS-TVC-02・F-MPS-TVC-03・F-MPS-TVC-05・F-MPS-TVC-06・F-MPS-TVC-07・F-MPS-TVC-08 */ }
        satisfy REQ_MPS::REQ_MPS_13 by context.sts.orb.mps.ops { doc /* 割付先：F-MPS-OPS-01・F-MPS-OPS-02・F-MPS-OPS-03・F-MPS-OPS-04・F-MPS-OPS-05・F-MPS-OPS-06・F-MPS-OPS-10 */ }
        satisfy REQ_OMS::REQ_OMS_01 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-01・F-OMS-ENG-02・F-OMS-ENG-05・F-OMS-ENG-06・F-OMS-ENG-07 */ }
        satisfy REQ_OMS::REQ_OMS_02 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-03・F-OMS-ENG-04・F-OMS-ENG-08・F-OMS-ENG-09・F-OMS-ENG-10 */ }
        satisfy REQ_OMS::REQ_OMS_03 by context.sts.orb.oms.eng { doc /* 割付先：F-OMS-ENG-11・F-OMS-ENG-12・F-OMS-ENG-13 */ }
        satisfy REQ_OMS::REQ_OMS_04 by context.sts.orb.oms.he { doc /* 割付先：F-OMS-HE-01・F-OMS-HE-02・F-OMS-HE-04・F-OMS-HE-05・F-OMS-HE-06・F-OMS-HE-07・F-OMS-HE-08・F-OMS-HE-09 */ }
        satisfy REQ_OMS::REQ_OMS_05 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-01・F-OMS-PSD-02・F-OMS-PSD-03・F-OMS-PSD-12 */ }
        satisfy REQ_OMS::REQ_OMS_06 by context.sts.orb.oms.psd { doc /* 割付先：F-OMS-PSD-04・F-OMS-PSD-05・F-OMS-PSD-06・F-OMS-PSD-07・F-OMS-PSD-08・F-OMS-PSD-09・F-OMS-PSD-11 */ }
        satisfy REQ_OMS::REQ_OMS_07 by context.sts.orb.oms.xfd { doc /* 割付先：F-OMS-XFD-01・F-OMS-XFD-02・F-OMS-XFD-03・F-OMS-XFD-04・F-OMS-XFD-05・F-OMS-XFD-06・F-OMS-XFD-09・F-OMS-XFD-10 */ }
        satisfy REQ_OMS::REQ_OMS_08 by context.sts.orb.oms.tvc { doc /* 割付先：F-OMS-TVC-01・F-OMS-TVC-02・F-OMS-TVC-03・F-OMS-TVC-04・F-OMS-TVC-05・F-OMS-TVC-06・F-OMS-TVC-07・F-OMS-TVC-10 */ }
        satisfy REQ_OMS::REQ_OMS_09 by context.sts.orb.oms.thm { doc /* 割付先：F-OMS-THM-01・F-OMS-THM-02・F-OMS-THM-03・F-OMS-THM-05・F-OMS-THM-06・F-OMS-THM-07・F-OMS-THM-10 */ }
        satisfy REQ_OMS::REQ_OMS_10 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-09・F-OMS-OPS-10・F-OMS-OPS-11 */ }
        satisfy REQ_OMS::REQ_OMS_11 by context.sts.orb.oms.ops { doc /* 割付先：F-OMS-OPS-06・F-OMS-OPS-07・F-OMS-OPS-08 */ }
        satisfy REQ_RCS::REQ_RCS_01 by context.sts.orb.rcs.hep { doc /* 割付先：F-RCS-HEP-01・F-RCS-HEP-02・F-RCS-HEP-04・F-RCS-HEP-05・F-RCS-HEP-07・F-RCS-HEP-08・F-RCS-HEP-09 */ }
        satisfy REQ_RCS::REQ_RCS_02 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-01・F-RCS-PRP-02・F-RCS-PRP-03・F-RCS-PRP-04・F-RCS-PRP-07・F-RCS-PRP-09・F-RCS-PRP-10 */ }
        satisfy REQ_RCS::REQ_RCS_03 by context.sts.orb.rcs.prp { doc /* 割付先：F-RCS-PRP-11・F-RCS-PRP-12 */ }
        satisfy REQ_RCS::REQ_RCS_04 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-01・F-RCS-JET-02・F-RCS-JET-03・F-RCS-JET-04・F-RCS-JET-05・F-RCS-JET-06・F-RCS-JET-07・F-RCS-JET-10 */ }
        satisfy REQ_RCS::REQ_RCS_05 by context.sts.orb.rcs.jet { doc /* 割付先：F-RCS-JET-08・F-RCS-JET-09・F-RCS-JET-11・F-RCS-JET-12 */ }
        satisfy REQ_RCS::REQ_RCS_06 by context.sts.orb.rcs.rjd { doc /* 割付先：F-RCS-RJD-01・F-RCS-RJD-02・F-RCS-RJD-03・F-RCS-RJD-04・F-RCS-RJD-06・F-RCS-RJD-08・F-RCS-RJD-12 */ }
        satisfy REQ_RCS::REQ_RCS_07 by context.sts.orb.rcs.htr { doc /* 割付先：F-RCS-HTR-01・F-RCS-HTR-02・F-RCS-HTR-03・F-RCS-HTR-05・F-RCS-HTR-06・F-RCS-HTR-07・F-RCS-HTR-10・F-RCS-HTR-12 */ }
        satisfy REQ_RCS::REQ_RCS_08 by context.sts.orb.rcs.rm { doc /* 割付先：F-RCS-RM-01・F-RCS-RM-02・F-RCS-RM-03・F-RCS-RM-04・F-RCS-RM-05・F-RCS-RM-06・F-RCS-RM-07・F-RCS-RM-08 */ }
        satisfy REQ_RCS::REQ_RCS_08 by context.sts.orb.IF_RCS_13 { doc /* 割付先：IF-RCS-13 */ }
        satisfy REQ_RCS::REQ_RCS_09 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-04・F-RCS-OPS-10・F-RCS-OPS-11 */ }
        satisfy REQ_RCS::REQ_RCS_10 by context.sts.orb.rcs.ops { doc /* 割付先：F-RCS-OPS-05・F-RCS-OPS-06・F-RCS-OPS-07・F-RCS-OPS-08・F-RCS-OPS-09・F-RCS-OPS-12 */ }
        satisfy REQ_APU::REQ_APU_01 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-01・F-APU-FUL-02・F-APU-FUL-03・F-APU-FUL-04・F-APU-FUL-05・F-APU-FUL-07 */ }
        satisfy REQ_APU::REQ_APU_02 by context.sts.orb.apu.ful { doc /* 割付先：F-APU-FUL-06・F-APU-FUL-10・F-APU-FUL-11・F-APU-FUL-12 */ }
        satisfy REQ_APU::REQ_APU_02 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-11 */ }
        satisfy REQ_APU::REQ_APU_03 by context.sts.orb.apu.trb { doc /* 割付先：F-APU-TRB-01・F-APU-TRB-02・F-APU-TRB-04・F-APU-TRB-05・F-APU-TRB-06・F-APU-TRB-13 */ }
        satisfy REQ_APU::REQ_APU_04 by context.sts.orb.apu.ctl { doc /* 割付先：F-APU-CTL-01・F-APU-CTL-02・F-APU-CTL-04・F-APU-CTL-05・F-APU-CTL-06・F-APU-CTL-07・F-APU-CTL-10・F-APU-CTL-11 */ }
        satisfy REQ_APU::REQ_APU_04 by context.sts.orb.IF_APU_15 { doc /* 割付先：IF-APU-15 */ }
        satisfy REQ_APU::REQ_APU_05 by context.sts.orb.apu.hyd { doc /* 割付先：F-APU-HYD-01・F-APU-HYD-02・F-APU-HYD-03・F-APU-HYD-04・F-APU-HYD-05・F-APU-HYD-06・F-APU-HYD-09・F-APU-HYD-10 */ }
        satisfy REQ_APU::REQ_APU_05 by context.sts.orb.IF_APU_11 { doc /* 割付先：IF-APU-11 */ }
        satisfy REQ_APU::REQ_APU_06 by context.sts.orb.apu.cir { doc /* 割付先：F-APU-CIR-01・F-APU-CIR-02・F-APU-CIR-03・F-APU-CIR-04・F-APU-CIR-05・F-APU-CIR-07・F-APU-CIR-11 */ }
        satisfy REQ_APU::REQ_APU_07 by context.sts.orb.apu.wsb { doc /* 割付先：F-APU-WSB-01・F-APU-WSB-03・F-APU-WSB-04・F-APU-WSB-05・F-APU-WSB-06・F-APU-WSB-09・F-APU-WSB-11 */ }
        satisfy REQ_APU::REQ_APU_08 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-06・F-APU-OPS-07・F-APU-OPS-08・F-APU-OPS-09・F-APU-OPS-10 */ }
        satisfy REQ_APU::REQ_APU_09 by context.sts.orb.apu.ops { doc /* 割付先：F-APU-OPS-11・F-APU-OPS-04・F-APU-OPS-05 */ }
        satisfy REQ_CT::REQ_CT_01 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-01・F-CT-SBD-02・F-CT-SBD-03・F-CT-SBD-04・F-CT-SBD-05・F-CT-SBD-06・F-CT-SBD-07・F-CT-SBD-08・F-CT-SBD-09 */ }
        satisfy REQ_CT::REQ_CT_02 by context.sts.orb.ct.sbd { doc /* 割付先：F-CT-SBD-10・F-CT-SBD-11・F-CT-SBD-12 */ }
        satisfy REQ_CT::REQ_CT_03 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-01・F-CT-KU-02・F-CT-KU-03・F-CT-KU-04・F-CT-KU-05・F-CT-KU-06・F-CT-KU-10・F-CT-KU-11 */ }
        satisfy REQ_CT::REQ_CT_04 by context.sts.orb.ct.ku { doc /* 割付先：F-CT-KU-07・F-CT-KU-08・F-CT-KU-09 */ }
        satisfy REQ_CT::REQ_CT_04 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-06・F-CT-OPS-07 */ }
        satisfy REQ_CT::REQ_CT_05 by context.sts.orb.ct.uhf { doc /* 割付先：F-CT-UHF-01・F-CT-UHF-02・F-CT-UHF-03・F-CT-UHF-04・F-CT-UHF-05・F-CT-UHF-06・F-CT-UHF-07・F-CT-UHF-08 */ }
        satisfy REQ_CT::REQ_CT_06 by context.sts.orb.ct.aud { doc /* 割付先：F-CT-AUD-01・F-CT-AUD-02・F-CT-AUD-03・F-CT-AUD-04・F-CT-AUD-05・F-CT-AUD-06・F-CT-AUD-08・F-CT-AUD-09 */ }
        satisfy REQ_CT::REQ_CT_06 by context.sts.orb.IF_CT_09 { doc /* 割付先：IF-CT-09 */ }
        satisfy REQ_CT::REQ_CT_07 by context.sts.orb.ct.cctv { doc /* 割付先：F-CT-CCTV-01・F-CT-CCTV-02・F-CT-CCTV-03・F-CT-CCTV-04・F-CT-CCTV-07・F-CT-CCTV-10 */ }
        satisfy REQ_CT::REQ_CT_07 by context.sts.orb.IF_CT_11 { doc /* 割付先：IF-CT-11 */ }
        satisfy REQ_CT::REQ_CT_08 by context.sts.orb.ct.inst { doc /* 割付先：F-CT-INST-01・F-CT-INST-02・F-CT-INST-03・F-CT-INST-04・F-CT-INST-05・F-CT-INST-06・F-CT-INST-08・F-CT-INST-09 */ }
        satisfy REQ_CT::REQ_CT_09 by context.sts.orb.ct.ops { doc /* 割付先：F-CT-OPS-01・F-CT-OPS-02・F-CT-OPS-03・F-CT-OPS-04・F-CT-OPS-09・F-CT-OPS-11・F-CT-OPS-12 */ }
        satisfy REQ_TPS::REQ_TPS_01 by context.sts.orb.tps { doc /* 割付先：F-TPS-01 */ }
        satisfy REQ_TPS::REQ_TPS_01 by context.sts.orb.IF_ORB_37 { doc /* 割付先：IF-ORB-37 */ }
        satisfy REQ_TPS::REQ_TPS_02 by context.sts.orb.tps { doc /* 割付先：F-TPS-02・F-TPS-03・F-TPS-04・F-TPS-05・F-TPS-06 */ }
        satisfy REQ_TPS::REQ_TPS_03 by context.sts.orb.tcs { doc /* 割付先：F-TCS-03 */ }
        satisfy REQ_TPS::REQ_TPS_03 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-05 */ }
        satisfy REQ_TPS::REQ_TPS_04 by context.sts.orb.tcs { doc /* 割付先：F-TCS-02 */ }
        satisfy REQ_TPS::REQ_TPS_04 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-01・F-TCS-PTC-02・F-TCS-PTC-04 */ }
        satisfy REQ_TPS::REQ_TPS_05 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-03 */ }
        satisfy REQ_TPS::REQ_TPS_05 by context.sts.orb.IF_TCS_20 { doc /* 割付先：IF-TCS-20 */ }
        satisfy REQ_TPS::REQ_TPS_06 by context.sts.orb.tcs.ptc { doc /* 割付先：F-TCS-PTC-05・F-TCS-PTC-06 */ }
        satisfy REQ_TPS::REQ_TPS_06 by context.IF_TCS_17 { doc /* 割付先：IF-TCS-17 */ }
        satisfy REQ_TPS::REQ_TPS_07 by context.sts.orb.tcs { doc /* 割付先：F-TCS-01・F-TCS-04 */ }
        satisfy REQ_CW::REQ_CW_01 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-01・F-CW-PRI-02・F-CW-PRI-03・F-CW-PRI-04・F-CW-PRI-05 */ }
        satisfy REQ_CW::REQ_CW_02 by context.sts.orb.cw.pri { doc /* 割付先：F-CW-PRI-06・F-CW-PRI-07・F-CW-PRI-08 */ }
        satisfy REQ_CW::REQ_CW_02 by context.sts.orb.IF_CW_01 { doc /* 割付先：IF-CW-01 */ }
        satisfy REQ_CW::REQ_CW_03 by context.sts.orb.cw.bkp { doc /* 割付先：F-CW-BKP-01・F-CW-BKP-02・F-CW-BKP-03・F-CW-BKP-04・F-CW-BKP-05・F-CW-BKP-06・F-CW-BKP-07 */ }
        satisfy REQ_CW::REQ_CW_04 by context.sts.orb.cw.alt { doc /* 割付先：F-CW-ALT-01・F-CW-ALT-02・F-CW-ALT-03・F-CW-ALT-04・F-CW-ALT-05 */ }
        satisfy REQ_CW::REQ_CW_05 by context.sts.orb.cw.alt { doc /* 割付先：F-CW-ALT-06・F-CW-ALT-07 */ }
        satisfy REQ_CW::REQ_CW_06 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-04・F-CW-ANN-05・F-CW-ANN-06 */ }
        satisfy REQ_CW::REQ_CW_07 by context.sts.orb.cw.ann { doc /* 割付先：F-CW-ANN-01・F-CW-ANN-02・F-CW-ANN-03・F-CW-ANN-07・F-CW-ANN-08 */ }
        satisfy REQ_CW::REQ_CW_08 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-01・F-CW-OPS-02・F-CW-OPS-03・F-CW-OPS-04・F-CW-OPS-09 */ }
        satisfy REQ_CW::REQ_CW_09 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-05・F-CW-OPS-06 */ }
        satisfy REQ_CW::REQ_CW_10 by context.sts.orb.cw.ops { doc /* 割付先：F-CW-OPS-07・F-CW-OPS-08 */ }
        satisfy REQ_CREW::REQ_CREW_01 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-01・F-CREW-HAB-02・F-CREW-HAB-03・F-CREW-HAB-04・F-CREW-HAB-05 */ }
        satisfy REQ_CREW::REQ_CREW_02 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-06 */ }
        satisfy REQ_CREW::REQ_CREW_02 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-03 */ }
        satisfy REQ_CREW::REQ_CREW_03 by context.sts.orb.crew.hab { doc /* 割付先：F-CREW-HAB-07・F-CREW-HAB-08 */ }
        satisfy REQ_CREW::REQ_CREW_03 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-04 */ }
        satisfy REQ_CREW::REQ_CREW_04 by context.sts.orb.crew.stw { doc /* 割付先：F-CREW-STW-01・F-CREW-STW-02・F-CREW-STW-03・F-CREW-STW-04・F-CREW-STW-05・F-CREW-STW-06・F-CREW-STW-07 */ }
        satisfy REQ_CREW::REQ_CREW_05 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-01・F-CREW-MED-02・F-CREW-MED-03・F-CREW-MED-04・F-CREW-MED-05 */ }
        satisfy REQ_CREW::REQ_CREW_05 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-01・F-CREW-OPS-02・F-CREW-OPS-07 */ }
        satisfy REQ_CREW::REQ_CREW_06 by context.sts.orb.crew.med { doc /* 割付先：F-CREW-MED-06・F-CREW-MED-07 */ }
        satisfy REQ_CREW::REQ_CREW_06 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-05・F-CREW-OPS-08 */ }
        satisfy REQ_CREW::REQ_CREW_07 by context.sts.orb.crew.ltg { doc /* 割付先：F-CREW-LTG-01・F-CREW-LTG-02・F-CREW-LTG-03・F-CREW-LTG-04・F-CREW-LTG-05・F-CREW-LTG-06・F-CREW-LTG-07 */ }
        satisfy REQ_CREW::REQ_CREW_08 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-01・F-CREW-ESC-02・F-CREW-ESC-03・F-CREW-ESC-04・F-CREW-ESC-05・F-CREW-ESC-06 */ }
        satisfy REQ_CREW::REQ_CREW_09 by context.sts.orb.crew.esc { doc /* 割付先：F-CREW-ESC-07・F-CREW-ESC-08・F-CREW-ESC-09 */ }
        satisfy REQ_CREW::REQ_CREW_10 by context.sts.orb.crew.ops { doc /* 割付先：F-CREW-OPS-06 */ }
        satisfy REQ_EVA::REQ_EVA_01 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-01・F-EVA-CHK-02・F-EVA-CHK-03・F-EVA-CHK-04・F-EVA-CHK-05・F-EVA-CHK-06・F-EVA-CHK-07・F-EVA-CHK-13 */ }
        satisfy REQ_EVA::REQ_EVA_02 by context.sts.orb.eva.chk { doc /* 割付先：F-EVA-CHK-11・F-EVA-CHK-12 */ }
        satisfy REQ_EVA::REQ_EVA_02 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-01・F-EVA-OPS-02・F-EVA-OPS-03・F-EVA-OPS-04 */ }
        satisfy REQ_EVA::REQ_EVA_03 by context.sts.orb.eva.dpr { doc /* 割付先：F-EVA-DPR-01・F-EVA-DPR-02・F-EVA-DPR-03・F-EVA-DPR-04・F-EVA-DPR-05・F-EVA-DPR-06・F-EVA-DPR-08 */ }
        satisfy REQ_EVA::REQ_EVA_04 by context.sts.orb.eva.tls { doc /* 割付先：F-EVA-TLS-01・F-EVA-TLS-02・F-EVA-TLS-03・F-EVA-TLS-06・F-EVA-TLS-08 */ }
        satisfy REQ_EVA::REQ_EVA_05 by context.sts.orb.eva.mnt { doc /* 割付先：F-EVA-MNT-01・F-EVA-MNT-02・F-EVA-MNT-03・F-EVA-MNT-04・F-EVA-MNT-07・F-EVA-MNT-09・F-EVA-MNT-10 */ }
        satisfy REQ_EVA::REQ_EVA_06 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-01・F-EVA-EMG-02・F-EVA-EMG-03 */ }
        satisfy REQ_EVA::REQ_EVA_06 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-13 */ }
        satisfy REQ_EVA::REQ_EVA_06 by context.sts.orb.IF_EVA_11 { doc /* 割付先：IF-EVA-11 */ }
        satisfy REQ_EVA::REQ_EVA_06 by context.sts.orb.IF_EVA_12 { doc /* 割付先：IF-EVA-12 */ }
        satisfy REQ_EVA::REQ_EVA_07 by context.sts.orb.eva.emg { doc /* 割付先：F-EVA-EMG-09・F-EVA-EMG-10・F-EVA-EMG-11 */ }
        satisfy REQ_EVA::REQ_EVA_07 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-08 */ }
        satisfy REQ_EVA::REQ_EVA_08 by context.sts.orb.eva.ops { doc /* 割付先：F-EVA-OPS-09・F-EVA-OPS-10・F-EVA-OPS-11・F-EVA-OPS-12 */ }
        satisfy REQ_EVA::REQ_EVA_08 by context.sts.orb.IF_EVA_15 { doc /* 割付先：IF-EVA-15 */ }
        satisfy REQ_PLS::REQ_PLS_01 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-01・F-PLS-ARM-02・F-PLS-ARM-03・F-PLS-ARM-04・F-PLS-ARM-07 */ }
        satisfy REQ_PLS::REQ_PLS_02 by context.sts.orb.pls.arm { doc /* 割付先：F-PLS-ARM-05・F-PLS-ARM-06・F-PLS-ARM-08 */ }
        satisfy REQ_PLS::REQ_PLS_03 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-01・F-PLS-CTL-02・F-PLS-CTL-06・F-PLS-CTL-07 */ }
        satisfy REQ_PLS::REQ_PLS_04 by context.sts.orb.pls.ctl { doc /* 割付先：F-PLS-CTL-03・F-PLS-CTL-04・F-PLS-CTL-05 */ }
        satisfy REQ_PLS::REQ_PLS_05 by context.sts.orb.pls.mpm { doc /* 割付先：F-PLS-MPM-01・F-PLS-MPM-02・F-PLS-MPM-03・F-PLS-MPM-04・F-PLS-MPM-05・F-PLS-MPM-06・F-PLS-MPM-07 */ }
        satisfy REQ_PLS::REQ_PLS_06 by context.sts.orb.pls.prl { doc /* 割付先：F-PLS-PRL-01・F-PLS-PRL-02・F-PLS-PRL-03・F-PLS-PRL-04・F-PLS-PRL-05・F-PLS-PRL-06・F-PLS-PRL-07 */ }
        satisfy REQ_PLS::REQ_PLS_07 by context.sts.orb.pls.ods { doc /* 割付先：F-PLS-ODS-01・F-PLS-ODS-02・F-PLS-ODS-03・F-PLS-ODS-04・F-PLS-ODS-05・F-PLS-ODS-06・F-PLS-ODS-07 */ }
        satisfy REQ_PLS::REQ_PLS_08 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-01・F-PLS-OPS-02・F-PLS-OPS-07 */ }
        satisfy REQ_PLS::REQ_PLS_09 by context.sts.orb.pls.ops { doc /* 割付先：F-PLS-OPS-03・F-PLS-OPS-04・F-PLS-OPS-05・F-PLS-OPS-06 */ }
        satisfy REQ_MECH::REQ_MECH_01 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-01・F-MECH-ACT-02・F-MECH-ACT-03・F-MECH-ACT-04・F-MECH-ACT-05・F-MECH-ACT-06 */ }
        satisfy REQ_MECH::REQ_MECH_01 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-02 */ }
        satisfy REQ_MECH::REQ_MECH_02 by context.sts.orb.mech.act { doc /* 割付先：F-MECH-ACT-07 */ }
        satisfy REQ_MECH::REQ_MECH_03 by context.sts.orb.mech.plb { doc /* 割付先：F-MECH-PLB-01・F-MECH-PLB-02・F-MECH-PLB-03・F-MECH-PLB-04・F-MECH-PLB-05・F-MECH-PLB-06・F-MECH-PLB-07 */ }
        satisfy REQ_MECH::REQ_MECH_04 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-03・F-MECH-OPS-01 */ }
        satisfy REQ_MECH::REQ_MECH_05 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-01・F-MECH-VNT-02・F-MECH-VNT-03・F-MECH-VNT-04 */ }
        satisfy REQ_MECH::REQ_MECH_05 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-04 */ }
        satisfy REQ_MECH::REQ_MECH_06 by context.sts.orb.mech.vnt { doc /* 割付先：F-MECH-VNT-05・F-MECH-VNT-06・F-MECH-VNT-07 */ }
        satisfy REQ_MECH::REQ_MECH_06 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-05 */ }
        satisfy REQ_MECH::REQ_MECH_07 by context.sts.orb.mech.ldg { doc /* 割付先：F-MECH-LDG-01・F-MECH-LDG-02・F-MECH-LDG-03・F-MECH-LDG-04・F-MECH-LDG-05・F-MECH-LDG-06・F-MECH-LDG-07・F-MECH-LDG-08 */ }
        satisfy REQ_MECH::REQ_MECH_08 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-01・F-MECH-DEC-02・F-MECH-DEC-03・F-MECH-DEC-04・F-MECH-DEC-05 */ }
        satisfy REQ_MECH::REQ_MECH_09 by context.sts.orb.mech.dec { doc /* 割付先：F-MECH-DEC-06・F-MECH-DEC-07 */ }
        satisfy REQ_MECH::REQ_MECH_10 by context.sts.orb.mech.ops { doc /* 割付先：F-MECH-OPS-06 */ }
        satisfy REQ_STR::REQ_STR_01 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-01・F-STR-FWD-03・F-STR-FWD-04 */ }
        satisfy REQ_STR::REQ_STR_02 by context.sts.orb.str.fwd { doc /* 割付先：F-STR-FWD-02・F-STR-FWD-05・F-STR-FWD-06・F-STR-FWD-07 */ }
        satisfy REQ_STR::REQ_STR_03 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-01・F-STR-CRM-02・F-STR-CRM-03・F-STR-CRM-04・F-STR-CRM-05 */ }
        satisfy REQ_STR::REQ_STR_04 by context.sts.orb.str.crm { doc /* 割付先：F-STR-CRM-06・F-STR-CRM-07 */ }
        satisfy REQ_STR::REQ_STR_04 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-01・F-STR-OPS-02・F-STR-OPS-03・F-STR-OPS-04 */ }
        satisfy REQ_STR::REQ_STR_05 by context.sts.orb.str.mid { doc /* 割付先：F-STR-MID-01・F-STR-MID-02・F-STR-MID-03・F-STR-MID-04・F-STR-MID-05・F-STR-MID-06・F-STR-MID-07 */ }
        satisfy REQ_STR::REQ_STR_06 by context.sts.orb.str.aft { doc /* 割付先：F-STR-AFT-01・F-STR-AFT-02・F-STR-AFT-03・F-STR-AFT-04・F-STR-AFT-05・F-STR-AFT-06・F-STR-AFT-07 */ }
        satisfy REQ_STR::REQ_STR_07 by context.sts.orb.str.wng { doc /* 割付先：F-STR-WNG-01・F-STR-WNG-02・F-STR-WNG-03・F-STR-WNG-04・F-STR-WNG-05・F-STR-WNG-06・F-STR-WNG-07・F-STR-WNG-08 */ }
        satisfy REQ_STR::REQ_STR_08 by context.sts.orb.str.ops { doc /* 割付先：F-STR-OPS-05・F-STR-OPS-06・F-STR-OPS-07 */ }
        satisfy REQ_ET::REQ_ET_01 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-01・F-ET-LOX-02・F-ET-LOX-05 */ }
        satisfy REQ_ET::REQ_ET_01 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-02 */ }
        satisfy REQ_ET::REQ_ET_02 by context.sts.et.lox { doc /* 割付先：F-ET-LOX-03・F-ET-LOX-04・F-ET-LOX-06・F-ET-LOX-07 */ }
        satisfy REQ_ET::REQ_ET_02 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-01・F-ET-LH2-04 */ }
        satisfy REQ_ET::REQ_ET_03 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-05・F-ET-LH2-06 */ }
        satisfy REQ_ET::REQ_ET_04 by context.sts.et.itk { doc /* 割付先：F-ET-ITK-01・F-ET-ITK-02・F-ET-ITK-03・F-ET-ITK-04・F-ET-ITK-05・F-ET-ITK-06 */ }
        satisfy REQ_ET::REQ_ET_04 by context.sts.et.lh2 { doc /* 割付先：F-ET-LH2-03 */ }
        satisfy REQ_ET::REQ_ET_05 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-01・F-ET-UMB-02・F-ET-UMB-03・F-ET-UMB-04・F-ET-UMB-05・F-ET-UMB-07 */ }
        satisfy REQ_ET::REQ_ET_06 by context.sts.et.umb { doc /* 割付先：F-ET-UMB-06 */ }
        satisfy REQ_ET::REQ_ET_06 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-06 */ }
        satisfy REQ_ET::REQ_ET_07 by context.sts.et.tps { doc /* 割付先：F-ET-TPS-01・F-ET-TPS-02・F-ET-TPS-03・F-ET-TPS-04・F-ET-TPS-05・F-ET-TPS-06 */ }
        satisfy REQ_ET::REQ_ET_08 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-01・F-ET-SEP-02・F-ET-SEP-03・F-ET-SEP-04・F-ET-SEP-07 */ }
        satisfy REQ_ET::REQ_ET_09 by context.sts.et.sep { doc /* 割付先：F-ET-SEP-05 */ }
        satisfy REQ_SRB::REQ_SRB_01 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-01・F-SRB-MTR-02・F-SRB-MTR-03・F-SRB-MTR-04・F-SRB-MTR-05・F-SRB-MTR-09 */ }
        satisfy REQ_SRB::REQ_SRB_02 by context.sts.srb.mtr { doc /* 割付先：F-SRB-MTR-06・F-SRB-MTR-07・F-SRB-MTR-08 */ }
        satisfy REQ_SRB::REQ_SRB_03 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-01・F-SRB-HDP-02・F-SRB-HDP-03 */ }
        satisfy REQ_SRB::REQ_SRB_04 by context.sts.srb.hdp { doc /* 割付先：F-SRB-HDP-04・F-SRB-HDP-05・F-SRB-HDP-06・F-SRB-HDP-07 */ }
        satisfy REQ_SRB::REQ_SRB_05 by context.sts.srb.tvc { doc /* 割付先：F-SRB-TVC-01・F-SRB-TVC-02・F-SRB-TVC-03・F-SRB-TVC-04・F-SRB-TVC-05・F-SRB-TVC-06・F-SRB-TVC-07・F-SRB-TVC-08 */ }
        satisfy REQ_SRB::REQ_SRB_06 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-01・F-SRB-AVN-02・F-SRB-AVN-03・F-SRB-AVN-04・F-SRB-AVN-05 */ }
        satisfy REQ_SRB::REQ_SRB_07 by context.sts.srb.avn { doc /* 割付先：F-SRB-AVN-06・F-SRB-AVN-07・F-SRB-AVN-08 */ }
        satisfy REQ_SRB::REQ_SRB_08 by context.sts.srb.att { doc /* 割付先：F-SRB-ATT-01・F-SRB-ATT-02・F-SRB-ATT-03・F-SRB-ATT-04・F-SRB-ATT-05・F-SRB-ATT-06・F-SRB-ATT-07 */ }
        satisfy REQ_SRB::REQ_SRB_09 by context.sts.srb.rec { doc /* 割付先：F-SRB-REC-01・F-SRB-REC-02・F-SRB-REC-03・F-SRB-REC-04・F-SRB-REC-05・F-SRB-REC-06 */ }
    }
}
