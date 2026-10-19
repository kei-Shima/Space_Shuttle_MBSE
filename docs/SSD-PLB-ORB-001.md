# ペイロード搭載・着陸の制約定義書（貨物の重量・重心・荷重・取付け）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-PLB-ORB-001 |
| 表題 | ペイロード搭載・着陸の制約定義書（貨物の重量・重心・荷重・取付け） |
| 版・日付 | 初版（Rev. -）／2026-10-19 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-ANA-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図261 ペイロード搭載・着陸の制約の一覧・図262 緊急着陸の終局荷重係数・図263 着陸重量の内訳（乾燥重量・貨物・残り） |

## 1. 目的

オービタが運ぶ貨物（ペイロード）の側の制約を、重量・貨物室・重心・荷重・取付けに分けて示す。着陸重量の上限と質量モーメントの制約（SSD-ANA-ORB-001）は機体全体の制約で、本書は貨物の最大の設計重量（打上げ 65,000 lb・着陸 32,000 lb）、貨物の重心の範囲、緊急着陸の終局荷重係数、貨物室の寸法・取付け点を足し、着陸重量の上限を乾燥重量と貨物の設計重量に分けた内訳（本書の計算）で結ぶ。

## 2. 範囲と書き方

資料は Rockwell の SSV80-1 Space Shuttle System Summary（1980年5月）で、数値は本文の文の転記だけにした（頁と照合語を示す）。基準の時期は1980年の設計値で、飛行した機体の実測値ではない（SCOM 2008 の着陸重量の上限などと異なる値は注記に示す）。頁 193 の限界荷重係数の表と頁 195 の許容荷重の表は、OCR で列の見出しと値の対応が崩れていて確かめられないので載せない。図の曲線（貨物の重心の包絡、打上げ能力）も読んでいない。

## 3. 貨物の制約

貨物の制約 18件を、重量・貨物室・重心・荷重・取付けに分けて示す（値は1980年の設計値）。着陸の設計貨物 32,000 lb のときの重心の範囲だけを載せ、それ以外の重量での範囲は図だけなので載せない。図261 に同じ表を示す。

| ID | 区分 | 内容 | 値 | 単位 | 根拠 |
|---|---|---|---|---|---|
| PLB-01 | 重量 | 貨物の最大の設計重量（打上げ） | 65,000 | lb | オービタは、長さ 60 ft・直径 15 ft までのペイロードを最大 65,000 lb まで運べる。乾燥重量は約 160,000 lb、全長 122.25 ft、翼幅 78.06 ft である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=91） |
| PLB-02 | 重量 | 貨物の最大の設計重量（着陸） | 32,000 | lb | 機体全体の着陸時の重心は機体長の 65〜67.5% の間になるよう設計されており、貨物の着陸時の設計重量 32,000 lb のとき、貨物の重心は貨物室の前端から 32〜45 ft の間になければならない。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190） |
| PLB-03 | 重量 | 東向き 200 n.mi. 円軌道への打上げ能力（KSC） | 65,000 | lb | 東向きに KSC から打ち上げると、200 n.mi. の円軌道へ最大 65,000 lb のペイロードを運べ、地球へは最大 32,000 lb のペイロードを持ち帰れる。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=9） |
| PLB-04 | 重量 | オービタの乾燥重量（1980年の設計値） | 約 160,000 | lb | オービタは、長さ 60 ft・直径 15 ft までのペイロードを最大 65,000 lb まで運べる。乾燥重量は約 160,000 lb、全長 122.25 ft、翼幅 78.06 ft である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=91） |
| PLB-05 | 重量 | RMS が展開・回収できる最大の重量（32,000 lb 超の回収は非常時の運用） | 65,000 | lb | RMS はペイロードを最大 65,000 lb まで展開・回収できるが、32,000 lb を超えるものの回収は非常時の運用とされる。RMS の長さは 50 ft 3 in で、機体の左舷のペイロードベイに、貨物のための直径 15 ft の包絡の外側に取り付ける。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=196） |
| PLB-06 | 貨物室 | 使える貨物の包絡（長さ×直径、Station 582〜1302） | 60 × 15 | ft | 貨物室の前端の隔壁は Station 576、後端の隔壁は Station 1307 で、使える貨物の包絡は長さ 60 ft・直径 15 ft（Station 582〜1302 の間）である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=186） |
| PLB-07 | 貨物室 | 貨物室の隔壁の位置（前端・後端） | Station 576・1307 | — | 貨物室の前端の隔壁は Station 576、後端の隔壁は Station 1307 で、使える貨物の包絡は長さ 60 ft・直径 15 ft（Station 582〜1302 の間）である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=186） |
| PLB-08 | 貨物室 | RMS の長さ | 50 ft 3 in | — | RMS はペイロードを最大 65,000 lb まで展開・回収できるが、32,000 lb を超えるものの回収は非常時の運用とされる。RMS の長さは 50 ft 3 in で、機体の左舷のペイロードベイに、貨物のための直径 15 ft の包絡の外側に取り付ける。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=196） |
| PLB-09 | 重心 | 機体全体の着陸時の重心 | 機体長の 65〜67.5 | % | 機体全体の着陸時の重心は機体長の 65〜67.5% の間になるよう設計されており、貨物の着陸時の設計重量 32,000 lb のとき、貨物の重心は貨物室の前端から 32〜45 ft の間になければならない。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190） |
| PLB-10 | 重心 | 貨物の重心（着陸の設計貨物 32,000 lb のとき、貨物室の前端から） | 32〜45 | ft | 機体全体の着陸時の重心は機体長の 65〜67.5% の間になるよう設計されており、貨物の着陸時の設計重量 32,000 lb のとき、貨物の重心は貨物室の前端から 32〜45 ft の間になければならない。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190） |
| PLB-11 | 重心 | 重心の計算に入れる品目（置き場所によらない） | ペイロードに課金される品目すべて | — | 貨物は、オービタの空力のために、重心の制約を満たすように組み合わせる。オービタの改造キット・電力キット・予備品など、ペイロードに課金される品目は、置き場所（貨物室・床下・キャビン）にかかわらず貨物の重心の計算に入れる。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190） |
| PLB-12 | 重心 | 32,000 lb を超える重量の包絡（非常時の着陸） | 維持する | — | 32,000 lb を超える重量の包絡は、非常時の着陸の可能性のために維持しなければならない。通常の貨物は、個々のペイロードがこの重心の限界を守る必要は無く、貨物の取りまとめ役が貨物全体の重心を調整する。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190） |
| PLB-13 | 取付け | 取付け点の間隔（主ロンジロン・下面中心線） | 3.933 | in | 取付け点は、主ロンジロンと貨物室の下面中心線に沿って 3.933 in の間隔で並ぶ。ロンジロンの取付け点 171か所のうち、機体の機器・運動・熱膨張・構造のたわみのために 47か所は使えず、124か所が使える。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=186） |
| PLB-14 | 取付け | ロンジロンの取付け点（使える／全体） | 124／171 | か所 | 取付け点は、主ロンジロンと貨物室の下面中心線に沿って 3.933 in の間隔で並ぶ。ロンジロンの取付け点 171か所のうち、機体の機器・運動・熱膨張・構造のたわみのために 47か所は使えず、124か所が使える。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=186） |
| PLB-15 | 取付け | 側面の取付け点の高さ（貨物室の中心線から） | 14 | in | ペイロードは貨物室の両側の、貨物室の中心線より 14 in 上の点と、下面のオービタのキール中心線で支える。取付け金具は、翼箱の上のキール金具（Xo 1179 より後ろ）を除き、すべて機体の動的な包絡の半径 93 in の外にある。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=188） |
| PLB-16 | 取付け | キールのトラニオンの公称直径 | 3 | in | ペイロード側が用意するキールのトラニオンは、公称直径 3 in で、キールの取付け金具の割り軸受に入る。4点・5点の取付けでは X・Z 方向に動けて Y 方向は拘束され、3点の取付けではシェアピンで +X の動きを拘束する。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=188） |
| PLB-17 | 荷重 | 緊急着陸の終局荷重係数（貨物 32,000 lb まで、縦・横・垂直） | 表（表2） | g | 緊急着陸の終局荷重係数（互いに別々に作用）は、貨物重量 32,000 lb までは +4.5（縦・後ろ向き）・+1.5（横・右向き）・+4.5（垂直・上向き）と、−1.5・−1.5・−2.0 で、65,000 lb では縦は +4.5、横は +.738 と −.738、垂直は +2.215 と −0.985、縦の負は −0.738 である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=192） |
| PLB-18 | 荷重 | 緊急着陸の終局荷重係数（貨物 65,000 lb、縦・横・垂直） | 表（表2） | g | 緊急着陸の終局荷重係数（互いに別々に作用）は、貨物重量 32,000 lb までは +4.5（縦・後ろ向き）・+1.5（横・右向き）・+4.5（垂直・上向き）と、−1.5・−1.5・−2.0 で、65,000 lb では縦は +4.5、横は +.738 と −.738、垂直は +2.215 と −0.985、縦の負は −0.738 である。（出典: https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=192） |

## 4. 緊急着陸の終局荷重係数

貨物の重量が 32,000 lb までと 65,000 lb のときの、緊急着陸の終局荷重係数（g。互いに別々に作用）。縦は後ろ向き、横は右向き、垂直は上向きを正とする。OCR の1行の並び（+4.5 +1.5 +4.5 −1.5 −1.5 −2.0 など）を正方向の行と負方向の行に分けて読んだ（本書の判断）。根拠は表の後ろに示す。図262 に同じ表を示す。

| ID | 貨物重量（lb） | 方向 | 縦 | 横 | 垂直 |
|---|---|---|---|---|---|
| PLB-19 | 32,000 | 正 | +4.5 | +1.5 | +4.5 |
| PLB-20 | 32,000 | 負 | -1.5 | -1.5 | -2 |
| PLB-21 | 65,000 | 正 | +4.5 | +0.738 | +2.215 |
| PLB-22 | 65,000 | 負 | -0.738 | -0.738 | -0.985 |
| 検算 | — | — | 縦の +4.5 は両方の重量で同じ | 横・垂直は 荷重＝係数×重量 が一定（1.5×32,000＝48,000、0.738×65,000＝47,970） | — |

## 5. 荷重係数の根拠

（1）緊急着陸の終局荷重係数（互いに別々に作用）は、貨物重量 32,000 lb までは +4.5（縦・後ろ向き）・+1.5（横・右向き）・+4.5（垂直・上向き）と、−1.5・−1.5・−2.0 で、65,000 lb では縦は +4.5、横は +.738 と −.738、垂直は +2.215 と −0.985、縦の負は −0.738 である。（出典は参考文献の頁。荷重係数の値は上の表）

## 6. 着陸重量の内訳（本書の計算）

着陸重量の上限（SSD-ANA-ORB-001・REQ-SYS-17）から、乾燥重量（PLB-04、約 160,000 lb）と着陸の貨物の設計重量（PLB-02、32,000 lb）を引いた残りを示す。残りは乗員・残留推進薬・消耗品・キットなどに許される重量で、資料に値は無い（本書の計算：上限 − 乾燥重量 − 貨物の設計重量）。乾燥重量は1980年の設計値で、飛行した機体の値ではない。図263 に同じ表を示す。

| ID | 上限の区分 | 上限（lb） | 乾燥重量（lb） | 着陸の貨物（lb） | 乾燥＋貨物（lb） | 残り（lb） | 上限の出どころ |
|---|---|---|---|---|---|---|---|
| PLB-23 | EOM（通常の着陸） | 233,000 | 160,000 | 32,000 | 192,000 | 41,000 | SSD-ANA-ORB-001 MS-02 |
| PLB-24 | アボート（上限が最も低い場合：AOA/ATO・57.0°） | 239,000 | 160,000 | 32,000 | 192,000 | 47,000 | SSD-ANA-ORB-001 MS-05 |
| PLB-25 | アボート（上限が最も高い場合：RTLS・TAL・28.5°/39.0°） | 248,000 | 160,000 | 32,000 | 192,000 | 56,000 | SSD-ANA-ORB-001 MS-03・MS-04 |

## 7. 図

図261 は貨物の制約の一覧、図262 は緊急着陸の終局荷重係数、図263 は着陸重量の内訳の表である。

## 8. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [SysML/SSD-PLB-ORB-001.sysml](../SysML/SSD-PLB-ORB-001.sysml) に示す。貨物の設計の制約 CargoEnvelope（重量・重心の制約を SSD-ANA-ORB-001 の NotAbove・WithinRange で評価）、着陸重量の内訳 LandingWeightBudget と使用 3件、緊急着陸の荷重係数 EmergencyLandingLoadFactor と使用 4件から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。要求への SysML の関係は張らず、トレースの外に置いた。

## 9. 注記（出典間の相違・構成変更）

> **注記** 範囲・取れなかった値・本書の判断：頁 193 の限界荷重係数の表（打上げ・上昇・TAEM・着陸の飛行の事象ごと）と、頁 195 の許容荷重の表（ブリッジの区間ごと）は、OCR で列の見出しと値の対応が崩れていて確かめられないので載せない（図・表の読み取りをしない）。

> **注記** 範囲・取れなかった値・本書の判断：貨物の重心の包絡の図（頁 191。重量と重心位置の曲線、垂直・横方向の包絡）は値を読まない。本文の文から取れる 32,000 lb のときの 32〜45 ft（機体長の割合 65〜67.5%）だけを載せた。

> **注記** 範囲・取れなかった値・本書の判断：頁 192 の緊急着陸の終局荷重係数の表は、OCR の1行の並び（+4.5 +1.5 +4.5 −1.5 −1.5 −2.0 など）を、正方向の行と負方向の行に分けて読んだ（本書の判断）。65,000 lb の値が 32,000 lb の値の 32,000/65,000（=0.4923）倍になっていること（横・垂直）で列の対応を確かめた。縦の +4.5 は両方の重量で同じ。

> **注記** 範囲・取れなかった値・本書の判断：乾燥重量の約 160,000 lb は 1980年の設計の値で、飛行した機体（OV-102〜105）の実測の重量ではない。SSD-ANA-ORB-001 の MS-01（オービタの空虚重量は資料に無い）を埋めるものではなく、本書は設計の値として扱う。

> **注記** 範囲・取れなかった値・本書の判断：ペイロードの質量・軌道高度・傾斜角ごとの打上げ能力の曲線（頁 58 ほか）は図だけで、数値の表が無いので載せない。NSTS 07700 Vol. XIV（ペイロード搭載の正式の要求）は取得できなかった。

> **注記** 既存との重なり：着陸重量の上限（EOM 233,000 lb・アボート 239,000〜248,000 lb）と質量モーメントの制約は SSD-ANA-ORB-001（MS-02〜MS-05・MC-01〜MC-05）、着陸重量の実績は SSD-TPM-SYS-001（TPM-01）にあり、本書は繰り返さずリンクでつなぐ。貨物室の区画は SSD-PHY-ORB-001。

> **注記** 基準の時期（本書の判断）：1980年の資料の値（貨物の設計重量 65,000／32,000 lb、乾燥重量 約 160,000 lb など）は、飛行を重ねた機体の実測値と異なるはずで、SCOM（2008）の着陸重量の上限 233,000 lb から乾燥重量と貨物の設計重量を引いた残り 41,000 lb は、設計時の余裕の目安としてだけ読む。

## 10. 参考文献

1. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p91） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=91
2. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p190） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=190
3. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p9） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=9
4. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p196） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=196
5. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p186） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=186
6. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p188） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=188
7. Rockwell SSV80-1 Space Shuttle System Summary（Rockwell International Space Systems Group、1980年5月、228頁、86,833,540 バイト。テキスト層あり） （PDF p192） — https://ibiblio.org/apollo/Shuttle/Rockwell%20SSV80-1%20-%20Space%20Shuttle%20System%20Summary%201980.pdf#page=192
8. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
9. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 11. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-19 | 初版作成（貨物の制約 18件、緊急着陸の荷重係数 4行、着陸重量の内訳 3件、図261〜263、SysML v2 テキスト） |
