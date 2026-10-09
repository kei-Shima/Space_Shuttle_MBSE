// SysML v2 テキスト：医療の構造と処置（SOMS・傷病と減圧症の処置・医療の事象）
// SSD-MED-ORB-001 医療の構造と処置定義書（SOMS・傷病と減圧症の処置・医療の事象の実績） の表から生成（lib/build_docs_bp.py・rev_bp/bpdata.py）。根拠の頁は SSD-MED-ORB-001 にある。
package SSD_MED_ORB_001 {
    doc /* SSD-MED-ORB-001 医療の構造と処置定義書（SOMS・傷病と減圧症の処置・医療の事象の実績）。図187〜190 と同じ内容。SOMS は医療の機能ブロック（SSD-FD-CREW-MED-001）の部品の定義を特化する。 */
    private import SSD_BLK_SYS_001::*;
    private import ScalarValues::*;
    metadata def CriterionFrom { doc /* 照合の基準の出どころ（照合表の 3001 の要求） */ }
    // ---- SOMS の構成（キット・サブパック）
    part def <'MED-K01'> MedK01 :> CREW_MED {
        doc /* シャトル・オービタ医療システム（SOMS）（全期）。軽い傷病の治療と重い傷病者の帰還までの安定のための医療キット一式。全飛行に積む。1987年の FOM では2キット 10.5 lb・0.6 ft3、1991年の資料では SOMS と CCK で約 20 lb。 */
        part medk02 : MedK02;
        part medk03 : MedK03;
        part medk08 : MedK08;
        part medk11 : MedK11;
        part medk12 : MedK12;
        part medk13 : MedK13;
        part medk14 : MedK14;
        part medk15 : MedK15;
        part medk16 : MedK16;
        part medk17 : MedK17;
        part medk18 : MedK18;
        part medk19 : MedK19;
        part medk20 : MedK20;
        part medk21 : MedK21;
        part medk22 : MedK22;
        part medk23 : MedK23;
    }
    part def <'MED-K02'> MedK02 {
        doc /* SOMS-A（OFT 用の版）（OFT）。MBK・EMK・Medical Checklist から成り、2人・最大14日の需要を賄う在庫。 */
    }
    part def <'MED-K03'> MedK03 {
        doc /* 緊急医療キット（EMK）（FOM）。4つのパレット（A・B・C・G）。赤いベルクロの付いた青のキット、内側の背にもポケット。 */
        part medk04 : MedK04;
        part medk05 : MedK05;
        part medk06 : MedK06;
        part medk07 : MedK07;
    }
    part def <'MED-K04'> MedK04 {
        doc /* パレット A：注射薬（FOM）。エピネフリン・ベナドリル・アトロピン・リドカイン・モルヒネ・デカドロン・バリウム・コンパジン・フェネルガンなど（典型例） */
    }
    part def <'MED-K05'> MedK05 {
        doc /* パレット B：注射の付属品と外科の品（FOM）。注射針・注射器・洗浄液・縫合糸・尿検査・外科器具・滅菌布・メス */
    }
    part def <'MED-K06'> MedK06 {
        doc /* パレット C：診断・治療の品（FOM）。血圧計の帯と聴診器・駆血帯・エアウェイ・輪状甲状膜切開の器具・体温計・舌圧子・耳鏡・ペンライト・滅菌手袋・検眼鏡 */
    }
    part def <'MED-K07'> MedK07 {
        doc /* パレット G：微生物検査の品（FOM）。喉・創傷の培養キット・尿の培養キット・歯科キット */
    }
    part def <'MED-K08'> MedK08 {
        doc /* 薬・包帯キット（MBK）（FOM）。3つのパレット（D・E・F）。青のキット。 */
        part medk09 : MedK09;
        part medk10 : MedK10;
    }
    part def <'MED-K09'> MedK09 {
        doc /* パレット D：経口薬（FOM）。鎮痛薬・抗生物質・スコポラミン（と合剤）・デキセドリン・睡眠薬・止瀉薬・抗ヒスタミン薬など */
    }
    part def <'MED-K10'> MedK10 {
        doc /* パレット E：包帯の品／パレット F：その他の薬（FOM）。包帯・ガーゼ・眼帯・伸縮包帯・テープ／点鼻薬・点耳薬・外用の軟膏・点眼薬・拡大鏡 */
    }
    part def <'MED-K11'> MedK11 {
        doc /* Airway Subpack（SCOM）。緊急の気道管理の器具（経口エアウェイ・喉頭鏡・CO2 検知器）。赤字の黄色の札で緊急品を示す。 */
    }
    part def <'MED-K12'> MedK12 {
        doc /* Drug Subpack（SCOM）。経口・外用・注射の薬。常用薬は背に置き、外側に医療データの記録とアレルギーの一覧。最もよく使うサブパック。 */
    }
    part def <'MED-K13'> MedK13 {
        doc /* EENT Subpack（SCOM）。目・耳・鼻・喉の診断と治療の品（歯科の薬と器具・点眼薬・点鼻薬・軟膏） */
    }
    part def <'MED-K14'> MedK14 {
        doc /* IV ADMIN Subpack と食塩水（SCOM）。静脈路の器具（皮膚の準備品・延長チューブ・翼状針・血圧計の帯・食塩水 500 ml）。食塩水の袋（500 ml×4）と 250 ml×2 を合わせ計 3100 ml。 */
    }
    part def <'MED-K15'> MedK15 {
        doc /* Trauma Subpack（SCOM）。裂傷の閉鎖と導尿の器具（包帯材・ガーゼ・縫合糸・尿道カテーテル） */
    }
    part def <'MED-K16'> MedK16 {
        doc /* 鋭利物の容器（SCOM）。注射器・針を発泡材の溝に差して捨てる。使った医療品（鋭利物を除く）は湿ったごみの区画に入れる。 */
    }
    part def <'MED-K17'> MedK17 {
        doc /* 患者・救助者の拘束具（SCOM）。患者をふくらはぎと胸で固定し、救助者は腰のベルトのピップピンでロッカーの留め具に留める。 */
    }
    part def <'MED-K18'> MedK18 {
        doc /* 蘇生器（SCOM）。マスク・手動／要求式の酸素弁・6フィートのホース・急速継手。100% の補助酸素（AMBU バッグか要求流量）。 */
    }
    part def <'MED-K19'> MedK19 {
        doc /* 汚染除去キット（CCK）と非常用洗眼器（SEE）（全期）。粒子の汚染から乗員を守る多目的のキット。有害物質の漏洩用の手袋・ゴーグル・マスク、ギャレーの清水につなぐ洗眼器。 */
    }
    part def <'MED-K20'> MedK20 {
        doc /* 医療付属キット（MAK）（SCOM）。乗員・ミッション固有の薬（氷嚢・伸縮包帯など）。ミッションごとに積み、各飛行に2つ。 */
    }
    part def <'MED-K21'> MedK21 {
        doc /* Medical Checklist（MED C/L）とキューカード（全期）。緊急の医療手順・図解つきの手技・器具と薬の収納、薬と副作用の一覧（付録）、DCS の診察・DCS AFTERCARE・CPR STATION。キューカードは MEDICATION DATA LOG と AIRWAY ILMA。 */
    }
    part def <'MED-K22'> MedK22 {
        doc /* 生体計測系（OBS）と電極取付キット（EAK）（全期）。心電図の信号を地上へ送る。軌道上は飛行医の求めによる非常時だけ使い、EVA では心電図・心拍・呼吸・体温を地上で監視する。 */
    }
    part def <'MED-K23'> MedK23 {
        doc /* 減圧症治療アダプタ（BTA）（全期）。EMU の正圧逃し弁に付けて EMU を高圧治療室にし、服内を乗員室圧より 6〜8 psid 高くする。 */
    }
    // ---- 役割（乗員・地上）
    part def <'MED-R01'> Role01 { doc /* 乗員の医療担当（CMO）（機上）：症状を評価し SOMS で処置する。急ぐときはいつでも医療の会議を求められる。DCS の処置中・後は症状の変化を飛行医へ報告する。FOM の表の印の薬は2回まで与えてよい。 */ }
    part def <'MED-R02'> Role02 { doc /* ほかの乗員（機上）：CMO を補い、CPR を行う。EVA ではもう1人の EVA 乗員が患者をエアロックへ補助する。 */ }
    part def <'MED-R03'> Role03 { doc /* 搭乗した宇宙飛行士の医師（機上）：「医師の承認が要る」品の使用を指示できる（宇宙飛行士の約10%が医師）。 */ }
    part def <'MED-R04'> Role04 { doc /* FCR（MOCR）の飛行医（Surgeon）（MCC）：PMC で乗員の健康を評価し、診断・治療を指示する。医師の承認が要る品の使用を指示する。EVA 前の健康の評価、DCS の処置の時間と圧力、任務への復帰を決める。 */ }
    part def <'MED-R05'> Role05 { doc /* 生体医工技術者（BME）（MCC の SSR）：飛行医を支える（OFT の体制）。 */ }
    part def <'MED-R06'> Role06 { doc /* 専門医（地上）：飛行医の求めで専門の相談に応じる。 */ }
    part def <'MED-R07'> Role07 { doc /* 乗員医師・副乗員医師（打上げ場・着陸場）：飛行前後の診察。打上げでは LCC から乗員の健康の Go/No-Go を MOCR の飛行医を通じフライトディレクタに伝え、着陸後は機内に入って乗員を確かめる。 */ }
    part def <'MED-R08'> Role08 { doc /* 着陸場の救急医療（EMSS 調整官・医療ヘリの飛行医・救急車）（打上げ場・着陸場）：打上げ・着陸の非常に備え、傷病者を中間・最終の医療施設へ運ぶ。 */ }
    part def <'MED-R09'> Role09 { doc /* CDR・フライトディレクタ（機上・MCC）：PMC を求められる。CDR は飛行医と私的でない通信での処方を判断する。 */ }
    // ---- 活動（傷病・減圧症の処置）
    action def IllnessResponse {
        doc /* 図188 乗員の傷病の処置 活動図：乗員の傷病の処置（評価・飛行医との相談・医療キット・飛行の継続／打ち切り・帰還後） */
        attribute lifeThreatening : ScalarValues::Boolean { doc /* ガード：緊急 */ }
        attribute onOrbitTreatmentAcceptable : ScalarValues::Boolean { doc /* ガード：できる */ }
        attribute transportRequired : ScalarValues::Boolean { doc /* ガード：要る */ }
        action AC_ML_01 { doc /* AC-ML-01 乗員の傷病・症状が起き、CMO が Medical Checklist で症状を評価する（OBS の心電図は飛行医の求めによる非常時だけ） */ }
        decide DC_ML_01;
            if lifeThreatening then AC_ML_02;
            if not lifeThreatening then MG_ML_01;
        action AC_ML_02 { doc /* AC-ML-02 緊急の処置をする（Airway Subpack・AIRWAY ILMA のキューカード、蘇生器で 100% の補助酸素、患者・救助者の拘束具、CPR） */ }
        merge MG_ML_01;
        action AC_ML_03 { doc /* AC-ML-03 MCC の飛行医と相談する（CMO・CDR・飛行医・フライトディレクタが PMC を求める。CDR と飛行医の裁量で私的でない通信でも処方できる） */ }
        action AC_ML_04 { doc /* AC-ML-04 医療キット（SOMS）で処置し、使った薬を MEDICATION DATA LOG に記録する（医師の承認が要る品は飛行医か搭乗医師の指示で使う） */ }
        action AC_ML_05 { doc /* AC-ML-05 経過を毎日の PMC で飛行医に報告し、飛行医が治療を見直す */ }
        decide DC_ML_02;
            if onOrbitTreatmentAcceptable then AC_ML_06;
            if not onOrbitTreatmentAcceptable then AC_ML_07;
        action AC_ML_06 { doc /* AC-ML-06 飛行を続ける（予定どおりの終了まで、毎日の PMC で経過を見る） */ }
        action AC_ML_07 { doc /* AC-ML-07 乗員の健康による早期終了を実時間で判断し、重い傷病者を安定させて軌道離脱・帰還する */ }
        merge MG_ML_02;
        action AC_ML_08 { doc /* AC-ML-08 着陸後、飛行医が乗員室に入って健康を確かめ、医学の評価と着陸後の医学データの収集を行う */ }
        decide DC_ML_03;
            if transportRequired then AC_ML_09;
            if not transportRequired then AC_ML_10;
        action AC_ML_09 { doc /* AC-ML-09 救急医療（EMSS）で中間・最終の医療施設へ運ぶ（医療ヘリ・救急車） */ }
        action AC_ML_10 { doc /* AC-ML-10 飛行後のデブリーフで医療キットの使用の記録を飛行医に報告する（SOMS の補充に使う） */ }
        first start then AC_ML_01;
        first AC_ML_01 then DC_ML_01;
        first AC_ML_02 then MG_ML_01;
        first MG_ML_01 then AC_ML_03;
        first AC_ML_03 then AC_ML_04;
        first AC_ML_04 then AC_ML_05;
        first AC_ML_05 then DC_ML_02;
        first AC_ML_06 then MG_ML_02;
        first AC_ML_07 then MG_ML_02;
        first MG_ML_02 then AC_ML_08;
        first AC_ML_08 then DC_ML_03;
        first AC_ML_09 then done;
        first AC_ML_10 then done;
    }
    action def DcsTreatment {
        doc /* 図189 減圧症の疑いの処置 活動図：減圧症の疑いの処置（カフ区分・TERMINATE／ABORT EVA・服の加圧と BTA・乗員室の加圧・打ち切りと帰還） */
        attribute cuff1 : ScalarValues::Boolean { doc /* ガード：カフ1 */ }
        attribute cuff4 : ScalarValues::Boolean { doc /* ガード：カフ4 */ }
        attribute resolved20min : ScalarValues::Boolean { doc /* ガード：消えた */ }
        attribute resolvedBta6 : ScalarValues::Boolean { doc /* ガード：消えた */ }
        attribute resolvedBta8 : ScalarValues::Boolean { doc /* ガード：消えた */ }
        attribute persistentCuff4 : ScalarValues::Boolean { doc /* ガード：消えないカフ4・進行 */ }
        action AC_MD_01 { doc /* AC-MD-01 EVA 中・後に減圧症の症状を報告し、カフチェックリストの定義でカフ区分を決める */ }
        decide DC_MD_01;
            if cuff1 then AC_MD_02;
            if not cuff1 then DC_MD_07;
        action AC_MD_02 { doc /* AC-MD-02 カフ1：EVA を続け、再与圧で症状が消えるかを見る */ }
        action AC_MD_03 { doc /* AC-MD-03 EVA 後の PMC で報告する（以後の EVA と飛行期間に影響しない）（再与圧で消えればカフ2 として扱い、消えなければ服の圧迫点と区別しにくい症状として報告する） */ }
        action AC_MD_04 { doc /* AC-MD-04 カフ2・3：TERMINATE EVA（作業場所の片付け・PLB の安全化、カフ3は患者をエアロックへ補助）し、MCC に報告する */ }
        action AC_MD_05 { doc /* AC-MD-05 カフ4：ABORT EVA（患者を補助してエアロックへ、患者を単独で直ちに再与圧、もう1人は PLB を安全化）し、SOMS から蘇生器を出す */ }
        action AC_MD_06 { doc /* AC-MD-06 カフ4：乗員室をエアロックの再与圧の前か間に 14.7 psi へ再与圧する */ }
        merge MG_MD_01;
        action AC_MD_07 { doc /* AC-MD-07 エアロックを再与圧し SCU につないだまま O2 ACT を PRESS にする（服内の純酸素・加圧）。CMO が Medical Checklist の DCS の診察をして飛行医に報告する */ }
        action AC_MD_08 { doc /* AC-MD-08 O2 ACT を PRESS のまま20分置き（10.2 psi から数える）、BTA を準備する。処置が LiOH を超えるなら交換する */ }
        decide DC_MD_03;
            if resolved20min then MG_MD_03;
            if not resolved20min then AC_MD_09;
        action AC_MD_09 { doc /* AC-MD-09 乗員室を 14.7 psi に再与圧し、BTA を付けて服内 6 psid で20分処置する（カフ4は 8 psid から） */ }
        decide DC_MD_04;
            if resolvedBta6 then MG_MD_05;
            if not resolvedBta6 then AC_MD_10;
        action AC_MD_10 { doc /* AC-MD-10 乗員室を最大 15.56 psia に上げ、BTA 8 psid で2時間処置する。CMO が症状の変化を飛行医に報告する */ }
        decide DC_MD_05;
            if resolvedBta8 then MG_MD_04;
            if not resolvedBta8 then AC_MD_11;
        action AC_MD_11 { doc /* AC-MD-11 MCC に薬物の処置を確かめ（QDM に替えて飛行医の指示で服薬）、服の加圧を続ける */ }
        decide DC_MD_06;
            if persistentCuff4 then AC_MD_12;
            if not persistentCuff4 then MG_MD_02;
        action AC_MD_12 { doc /* AC-MD-12 早期に終了し、次の主着陸場か NPLS の時期の範囲で一次の高圧治療施設の着陸場へ軌道離脱する（発症から最短10時間） */ }
        action AC_MD_13 { doc /* AC-MD-13 着陸後、患者を高圧治療の施設へ運ぶ */ }
        merge MG_MD_02;
        action AC_MD_14 { doc /* AC-MD-14 EVA 後の手順を行い QDM で2時間酸素を吸う。CMO は12時間ごとに飛行医へ報告し、72時間は下げた乗員室圧にさらさない。任務・EVA への復帰は飛行医が決め、DCS AFTERCARE へ進む */ }
        decide DC_MD_07;
            if cuff4 then AC_MD_05;
            if not cuff4 then AC_MD_04;
        merge MG_MD_03;
        merge MG_MD_04;
        merge MG_MD_05;
        first start then AC_MD_01;
        first AC_MD_01 then DC_MD_01;
        first AC_MD_02 then AC_MD_03;
        first AC_MD_03 then done;
        first AC_MD_05 then AC_MD_06;
        first AC_MD_06 then MG_MD_01;
        first AC_MD_04 then MG_MD_01;
        first MG_MD_01 then AC_MD_07;
        first AC_MD_07 then AC_MD_08;
        first AC_MD_08 then DC_MD_03;
        first AC_MD_09 then DC_MD_04;
        first AC_MD_10 then DC_MD_05;
        first AC_MD_11 then DC_MD_06;
        first AC_MD_12 then AC_MD_13;
        first AC_MD_13 then done;
        first MG_MD_03 then MG_MD_05;
        first MG_MD_05 then MG_MD_04;
        first MG_MD_04 then MG_MD_02;
        first MG_MD_02 then AC_MD_14;
        first AC_MD_14 then done;
    }
    // ---- 医療の事象の実績（率は %、資料の値）
    package Events {
        attribute <'MDD-E01'> e01 : Real = 50.0 { doc /* 宇宙酔い（OFT）（4/8 人、STS-1〜STS-4） */ }
        attribute <'MDD-E02'> e02 : Real = 80.0 { doc /* 宇宙酔いの予防薬の使用と発症（OFT）（4/5 人（Scop/Dex を使った乗員のうち発症）、STS-1〜STS-4） */ }
        attribute <'MDD-E03'> e03 : Real = 73.0 { doc /* 宇宙酔い（初めてのシャトルの飛行）（、シャトル（飛行規則 Vol. A 2002 の根拠の値、集計の期間は資料に無い）） */ }
        attribute <'MDD-E04'> e04 : Real = 40.0 { doc /* 宇宙酔い（STS-1〜STS-94 の軽い臨床的な状態の集計）（、STS-1〜STS-94） */ }
        attribute <'MDD-E05'> e05 : Real = 47.3 { doc /* 宇宙酔い（飛行後の医学の聞き取りの集計）（約150/317 人、資料に無い（抄録は飛行の範囲を書かない）） */ }
        attribute <'MDD-E06'> e06 : Real = 33.3 { doc /* 宇宙酔いの期間と重さ（シャトルの感覚運動の研究のまとめ）（、シャトル計画（全体）） */ }
        attribute <'MDD-E07'> e07 : Real { doc /* 飛行中の処方の内訳（飛行後の医学の聞き取り）（、資料に無い） */ }
        attribute <'MDD-E08'> e08 : Real { doc /* 飛行中の薬の使用の理由（症状）（、シャトルを含む米国の飛行） */ }
        attribute <'MDD-E09'> e09 : Real { doc /* OFT の SOMS-A の使用（6 品目、STS-1〜STS-4） */ }
        attribute <'MDD-E10'> e10 : Real { doc /* 医療の消耗品の使用の順位（シャトル 21 飛行）（21 飛行、STS-107・STS-115〜STS-135） */ }
        attribute <'MDD-E11'> e11 : Real = 0.0 { doc /* 乗員の喪失（LOCL）・医療の搬送（EVAC）（0 件/21 飛行、STS-107・STS-115〜STS-135） */ }
        attribute <'MDD-E12'> e12 : Real = 58.0 { doc /* 宇宙適応の背中の痛み（STS）（、STS-1〜STS-122（STS-51L・STS-107 を除く）） */ }
        attribute <'MDD-E13'> e13 : Real = 52.0 { doc /* 宇宙適応の背中の痛み（米国の全計画）（772 飛行、Mercury〜ISS 第15次（シャトルを含む）） */ }
        attribute <'MDD-E14'> e14 : Real { doc /* 飛行中の睡眠の時間（1988年の調査）（58 人・9 飛行（4〜9 日）、1988年までのシャトルの飛行（飛行名は資料に無い）） */ }
        attribute <'MDD-E15'> e15 : Real { doc /* 飛行中の睡眠の短縮（Barger ほか 2014）（、シャトル（10年間の測定）） */ }
        attribute <'MDD-E16'> e16 : Real = 52.0 { doc /* 睡眠薬の使用（、シャトル） */ }
        attribute <'MDD-E17'> e17 : Real = 54.0 { doc /* 寝付き・眠り続けのしやすさ（調査）（74 人、シャトル） */ }
        attribute <'MDD-E18'> e18 : Real = 0.0 { doc /* EVA 中の減圧症の報告（シャトル）（0 件/153 人・EVA、STS-41B〜2011年（段階の手順）） */ }
        attribute <'MDD-E19'> e19 : Real = 0.0 { doc /* 4時間の服の中のプリブリーズでの減圧症（0 件/6 回、シャトル・ISS（飛行名は資料に無い）） */ }
        attribute <'MDD-E20'> e20 : Real = 26.0 { doc /* 地上のチャンバー試験の減圧症の症状（10.2 psi の手順の確認）（173 回の人の試験、地上の試験（NASA-TM-58259、1984年）） */ }
        attribute <'MDD-E21'> e21 : Real { doc /* シャトルの段階の手順の組織比（R 値）（142 回、シャトル） */ }
        attribute <'MDD-E22'> e22 : Real { doc /* OFT の飛行の線量当量（4 飛行、STS-1・STS-3・STS-4） */ }
        attribute <'MDD-E23'> e23 : Real { doc /* STS の乗員の線量（軌道傾斜角と高度の区分、2004年まで）（549（人・飛行）、STS（2004年まで）） */ }
        attribute <'MDD-E24'> e24 : Real { doc /* EVA の線量（、EVA のある飛行） */ }
        attribute <'MDD-E25'> e25 : Real = 12.5 { doc /* 帰還後の起立試験の打ち切り（OFT）（1/8 人、STS-1〜STS-4） */ }
        attribute <'MDD-E26'> e26 : Real = 20.0 { doc /* 着陸日の傾斜の試験を終えられなかった（シャトル）（13/66 人、STS-81〜STS-124 の期間（標準の測定）） */ }
        attribute <'MDD-E27'> e27 : Real = 25.0 { doc /* 起立耐性の低下（短い飛行、起立・傾斜の試験）（、短い飛行（4〜18 日）） */ }
        attribute <'MDD-E28'> e28 : Real = 42.0 { doc /* 初飛行の乗員の着陸後の脱出の支障（聞き取り）（202 件・134 人、シャトル（飛行名は資料に無い）） */ }
        attribute <'MDD-E29'> e29 : Real { doc /* 船長の着陸直後の起立試験（27 飛行・20 人、STS-41〜STS-66） */ }
        attribute <'MDD-E30'> e30 : Real = 100.0 { doc /* 飛行の資格への復帰（OFT）（8/8 人、STS-1〜STS-4） */ }
    }
    // ---- 照合表の行（値を示す。判定は照合表のまま）
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-005'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_3004;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-021'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_3016;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-028'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_4005;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-032'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_4009;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-033'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_4010;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-052'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_4030;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-066'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_6001;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-075'> from Events to SSD_HSI_SYS_001::V1Criteria::V1_7001;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-105'> from Events to SSD_HSI_SYS_001::V2Criteria::V2_6008;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-180'> from Events to SSD_HSI_SYS_001::V2Criteria::V2_6095;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-225'> from Events to SSD_HSI_SYS_001::V2Criteria::V2_7042;
    #CriterionFrom dependency <'SSD-MED-ORB-001>HSI-226'> from Events to SSD_HSI_SYS_001::V2Criteria::V2_7043;
}
