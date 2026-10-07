# 要求の形式化定義書（属性・制約・値による判定）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RQF-SYS-001 |
| 表題 | 要求の形式化定義書（属性・制約・値による判定） |
| 版・日付 | Rev. A／2026-10-06 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-RQM-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図124 要求の形式化の区分・図125 要求の値による判定 |

## 1. 目的

要求書（SSD-REQ-*-001）の要求 212件の「値」の欄を、SysML v2 の要求の属性（ISQ の量と単位）と制約（require constraint）に書き直し（形式化）、設計値（標準ミッションのパラメータ・解析）と飛行の実績（個体・時間定義書の STS-1・STS-114・STS-125）を属性に入れて、値で満たすかを判定する。検証定義書（SSD-VER-SYS-001）の根拠の有無による判定を、値による判定で補う。全体は図124・125 に示す。

## 2. 書き方

要求は、量の上限・下限・範囲・等しい値を持つもの（数値）、個数・台数などの数を持つもの（数）、数値にできないもの（定性）に分けた。値の欄の単位のまま書き、SysML では ISQ の量の型と標準ライブラリの単位にした（psia・psig は lbf/in²、°F は °F_abs、n.mi. は nmi、ms は s に、MHz は Hz に換算。標準重力の倍数・毎分回転数・％・データ速度などは Real）。「約」「超」などの但し書きは条件の欄に残した。形式化の下書きは要求書の表から作り、本書が確かめた。判定は、評価の値が範囲のときは最も不利な端で行い、本書の計算の値は補足に書いた。

## 3. 区分

要求書ごと（系）の区分の数と制約の数を示す。

| 系 | 数値 | 数 | 定性 | 制約 |
|---|---|---|---|---|
| APU | 8 | 1 | 0 | 21 |
| CREW | 7 | 2 | 1 | 14 |
| CT | 5 | 4 | 0 | 22 |
| CW | 1 | 5 | 4 | 12 |
| DPS | 2 | 9 | 2 | 27 |
| ECLSS | 8 | 3 | 2 | 21 |
| EPS | 13 | 3 | 6 | 39 |
| ET | 6 | 2 | 1 | 17 |
| EVA | 6 | 1 | 1 | 10 |
| GNC | 8 | 6 | 0 | 34 |
| MECH | 6 | 3 | 1 | 19 |
| MPS | 8 | 3 | 2 | 28 |
| OMS | 9 | 2 | 0 | 20 |
| PLS | 3 | 5 | 1 | 15 |
| RCS | 6 | 2 | 2 | 18 |
| SRB | 7 | 2 | 0 | 18 |
| STR | 5 | 3 | 0 | 16 |
| SYS | 10 | 6 | 2 | 23 |
| TPS | 4 | 0 | 3 | 9 |
| 計 | 122 | 62 | 28 | 383 |

## 4. 形式化した制約

数値・数の要求 184件の制約 383件を示す。量の型の欄の Real は ISQ の型を付けないもの。

| ID | 要求 | 属性 | 内容 | 量の型 | 単位 | 制約 | 条件 |
|---|---|---|---|---|---|---|---|
| RF-001 | REQ-SYS-01 | majorElements | 主要素の数 | Integer | — | ＝ 4 | — |
| RF-002 | REQ-SYS-01 | srbCount | SRB の本数 | Integer | — | ＝ 2 | — |
| RF-003 | REQ-SYS-01 | ssmeCount | SSME の基数 | Integer | — | ＝ 3 | — |
| RF-004 | REQ-SYS-02 | orbitAltitude | ペイロードを運ぶ地球周回軌道の高度 | LengthValue | n.mi. | 100〜312 n.mi. | — |
| RF-005 | REQ-SYS-03 | payloadBayDiameter | ペイロードベイの直径 | LengthValue | ft | ＝ 15 ft | — |
| RF-006 | REQ-SYS-03 | payloadBayLength | ペイロードベイの長さ | LengthValue | ft | ＝ 60 ft | — |
| RF-007 | REQ-SYS-05 | crewCapacity | 運べる乗員の数 | Integer | — | ≦ 8 | 最大（実績） |
| RF-008 | REQ-SYS-06 | orbitStayDuration | 通常のミッションの軌道滞在期間 | DurationValue | d | 4〜16 d | — |
| RF-009 | REQ-SYS-07 | cabinPressure | 乗員室の圧力 | PressureValue | psia | 14.5〜14.9 psia | 14.7 ± 0.2 psia |
| RF-010 | REQ-SYS-08 | crewAcceleration | 乗員と機体の加速度 | Real | g | ≦ 3 g | — |
| RF-011 | REQ-SYS-08 | ascentNx | 上昇時の Nx | Real | g | ≦ 3.11 g | 上昇時 |
| RF-012 | REQ-SYS-09 | crossrange | 帰還時の横方向移動（クロスレンジ）の能力 | LengthValue | n.mi. | ≧ 1100 n.mi. | 約 |
| RF-013 | REQ-SYS-10 | faultsToContinueMission | ミッションを継続できる故障の数 | Integer | — | ≧ 1 | — |
| RF-014 | REQ-SYS-10 | faultsToSafeReturn | 安全に帰還できる故障の数 | Integer | — | ≧ 2 | — |
| RF-015 | REQ-SYS-11 | redundancyLevels | 冗長の判定段階の数（2故障許容・1故障許容・0故障許容・飛行不能） | Integer | — | ＝ 4 | — |
| RF-016 | REQ-SYS-12 | eomLandingTime | 通常の EOM 着陸までの飛行時間 | DurationValue | h | ≧ 96 h | 約、第5飛行日以降 |
| RF-017 | REQ-SYS-13 | extensionDays | 確保する延長日（天候1日・ウェーブオフ1日） | DurationValue | d | ≧ 2 d | — |
| RF-018 | REQ-SYS-14 | goNoGoCategories | Go/No-Go の判定区分の数（上昇継続・MDF・次の PLS） | Integer | — | ＝ 3 | — |
| RF-019 | REQ-SYS-15 | intactAbortModes | intact アボートの種類の数（RTLS・TAL・AOA・ATO） | Integer | — | ＝ 4 | — |
| RF-020 | REQ-SYS-17 | eomLandingWeight | EOM の着陸重量 | MassValue | lb | ≦ 233000 lb | — |
| RF-021 | REQ-SYS-17 | abortLandingWeightLimit | アボートの着陸重量の認定限界 | MassValue | lb | 239000〜248000 lb | 軌道傾斜角に応じた限界で、着陸重量はその限界以下 |
| RF-022 | REQ-SYS-18 | noseGearSinkRate | 前脚接地の降下率 | SpeedValue | ft/s | ≦ 11.5 ft/s | — |
| RF-023 | REQ-SYS-18 | noseGearPitchRate | 前脚接地のピッチ角速度 | Real | deg/s | ≦ 9.9 deg/s | — |
| RF-024 | REQ-APU-01 | apuCount | 独立した APU の台数 | Integer | — | ＝ 3 | — |
| RF-025 | REQ-APU-01 | hydrazineLoadPerApu | APU 1台あたりの無水ヒドラジンの搭載量 | MassValue | lb | ＝ 332 lb | 約 |
| RF-026 | REQ-APU-01 | nominalRunTime | 公称の連続運転時間 | DurationValue | min | ≧ 90 min | 公称 |
| RF-027 | REQ-APU-01 | extendedRunTime | AOA などの連続運転時間 | DurationValue | min | ≧ 110 min | 約、AOA のような場合 |
| RF-028 | REQ-APU-02 | fuelSystemTemperature | 燃料系の温度 | ThermodynamicTemperatureValue | °F | ≧ 35 °F | 35°F 超（厳密） |
| RF-029 | REQ-APU-03 | lubeOilPressure | 潤滑油の圧力 | PressureValue | psi | ＝ 60 psi | 約 |
| RF-030 | REQ-APU-04 | controlledSpeedPct | 制御する回転数（定格比） | Real | % | ＝ 103 % | — |
| RF-031 | REQ-APU-04 | controlledSpeed | 制御する回転数 | Real | rpm | ＝ 74160 rpm | 要求文は約 74,000 rpm |
| RF-032 | REQ-APU-04 | underspeedShutdownPct | 自動停止の低回転の限界（未満で停止） | Real | % | ＝ 80 % | — |
| RF-033 | REQ-APU-04 | overspeedShutdownPct | 自動停止の過回転の限界（超で停止） | Real | % | ＝ 129 % | — |
| RF-034 | REQ-APU-04 | speedPickups | 回転数を測るピックアップの数 | Integer | — | ＝ 3 | — |
| RF-035 | REQ-APU-05 | hydraulicSystems | 独立した油圧系の数 | Integer | — | ＝ 3 | — |
| RF-036 | REQ-APU-05 | mainPumpPressure | 主油圧ポンプの供給圧 | PressureValue | psi | ＝ 3000 psi | — |
| RF-037 | REQ-APU-05 | mainPumpFlow | 主油圧ポンプの流量 | Real | gpm | 0〜63 gpm | — |
| RF-038 | REQ-APU-06 | accumulatorRepressPressure | アキュムレータの再加圧の圧力 | PressureValue | psi | ＝ 1960 psi | 循環ポンプで再加圧 |
| RF-039 | REQ-APU-06 | circPumpsRunning | 同時に運転する循環ポンプの数 | Integer | — | ≦ 1 | — |
| RF-040 | REQ-APU-07 | lubeOilTemperature | 潤滑油の温度 | ThermodynamicTemperatureValue | °F | ＝ 250 °F | 約 |
| RF-041 | REQ-APU-07 | hydraulicFluidTemperature | 作動油の温度 | ThermodynamicTemperatureValue | °F | 210〜220 °F | — |
| RF-042 | REQ-APU-08 | hydraulicSystemsForEntry | 突入に確保する油圧系の数 | Integer | — | ≧ 2 | — |
| RF-043 | REQ-APU-09 | apuFuelReserve | 軌道離脱前に残す APU の燃料 | MassValue | lb | ≧ 192 lb | 2〜3系統が使えるとき |
| RF-044 | REQ-APU-09 | wsbWaterReserve | 軌道離脱前に残す WSB の水 | MassValue | lb | ≧ 63 lb | 2〜3系統が使えるとき |
| RF-045 | REQ-CREW-01 | sleepPeriod | 1日の睡眠時間 | DurationValue | h | ＝ 8 h | — |
| RF-046 | REQ-CREW-01 | activityPeriod | 1日の活動時間 | DurationValue | h | ＝ 16 h | — |
| RF-047 | REQ-CREW-02 | exerciseInterval | CDR・PLT・MS2 の運動の間隔 | DurationValue | d | ≦ 2 d | 少なくとも1日おき（FD04〜EOM-1） |
| RF-048 | REQ-CREW-02 | otherCrewExerciseInterval | 他の乗員の運動の間隔 | DurationValue | d | ≦ 3 d | 11日を超える飛行 |
| RF-049 | REQ-CREW-03 | noiseActionLevel | 処置をとる24時間平均の騒音レベル（以上で処置） | Real | dBA | ＝ 74 dBA | — |
| RF-050 | REQ-CREW-03 | wetTrashVentRate | 湿ったごみの排気量 | MassFlowRateValue | lb/d | ＝ 3 lb/d | 約 |
| RF-051 | REQ-CREW-04 | lockerStowageVolume | 交換可能なロッカーの収納容積 | VolumeValue | ft3 | ＝ 150 ft3 | 約 |
| RF-052 | REQ-CREW-04 | lockerMass | ロッカー1個の質量 | MassValue | lb | ≦ 68 lb | — |
| RF-053 | REQ-CREW-05 | supplementalO2Fraction | 補助酸素の酸素濃度 | Real | % | ＝ 100 % | — |
| RF-054 | REQ-CREW-07 | flightDeckLightingPower | 操縦室照明の電力 | PowerValue | kW | 1〜2 kW | — |
| RF-055 | REQ-CREW-08 | bailoutAltitude | 脱出できる制御された滑空の高度 | LengthValue | ft | ≦ 30000 ft | — |
| RF-056 | REQ-CREW-08 | acesSuitPressure | ACES（与圧服）の圧力 | PressureValue | psia | ＝ 3.67 psia | — |
| RF-057 | REQ-CREW-09 | escapeRoutes | 脱出口の数（側面ハッチ・頭上窓） | Integer | — | ＝ 2 | — |
| RF-058 | REQ-CREW-10 | lesO2Systems | LES の酸素供給系の系統数 | Integer | — | ＝ 2 | — |
| RF-059 | REQ-CT-01 | forwardLinkRate | S帯 PM のフォワードリンクの速度 | Real | kbps | ＝ 72 kbps | — |
| RF-060 | REQ-CT-01 | majorLruRedundancy | 主要 LRU（トランスポンダ・前置増幅器・電力増幅器・NSP）の各台数 | Integer | — | ＝ 2 | — |
| RF-061 | REQ-CT-02 | sbandFmFrequency | S帯 FM の周波数 | FrequencyValue | MHz | ＝ 2250 MHz | — |
| RF-062 | REQ-CT-02 | fmTransmitters | S帯 FM の送信機の台数 | Integer | — | ＝ 2 | — |
| RF-063 | REQ-CT-03 | kuChannels | Ku帯の通信チャネル数 | Integer | — | ＝ 3 | — |
| RF-064 | REQ-CT-03 | kuOperationalRate | Ku帯の運用の速度 | Real | kbps | ＝ 192 kbps | — |
| RF-065 | REQ-CT-03 | kuMaxRate | Ku帯の最大速度 | Real | Mbps | ＝ 4 Mbps | 4 Mbps 級 |
| RF-066 | REQ-CT-04 | kuAntennaStowTime | Ku帯アンテナの展開・格納の時間 | DurationValue | s | ＝ 23 s | — |
| RF-067 | REQ-CT-05 | uhfPrimaryFrequency | UHF の主周波数 | FrequencyValue | MHz | ＝ 259.7 MHz | — |
| RF-068 | REQ-CT-05 | uhfBackupFrequency | UHF の予備周波数 | FrequencyValue | MHz | ＝ 296.8 MHz | — |
| RF-069 | REQ-CT-05 | ssorSets | SSOR の組数 | Integer | — | ＝ 2 | — |
| RF-070 | REQ-CT-06 | audioLoops | 音声ループの数 | Integer | — | ＝ 8 | — |
| RF-071 | REQ-CT-06 | atuCount | ATU の台数 | Integer | — | ＝ 6 | — |
| RF-072 | REQ-CT-07 | vsuInputs | VSU の入力数 | Integer | — | ＝ 13 | — |
| RF-073 | REQ-CT-07 | vsuOutputs | VSU の出力数 | Integer | — | ＝ 7 | — |
| RF-074 | REQ-CT-08 | dscCount | DSC の台数 | Integer | — | ＝ 14 | — |
| RF-075 | REQ-CT-08 | oiMdmCount | OI MDM の台数 | Integer | — | ＝ 7 | — |
| RF-076 | REQ-CT-08 | pcmmuCount | PCMMU の台数 | Integer | — | ＝ 2 | — |
| RF-077 | REQ-CT-08 | ssrCount | 記録器（SSR）の台数 | Integer | — | ＝ 2 | — |
| RF-078 | REQ-CT-09 | voicePaths | 音声の系統数 | Integer | — | ＝ 3 | — |
| RF-079 | REQ-CT-09 | commandPaths | コマンドの系統数 | Integer | — | ＝ 2 | — |
| RF-080 | REQ-CT-09 | pathLossForNextPls | 次の PLS とする系統の喪失数 | Integer | — | ＝ 2 | — |
| RF-081 | REQ-CW-01 | cwInputs | 主C/W の入力数 | Integer | — | ＝ 120 | — |
| RF-082 | REQ-CW-01 | cwSampleRate | 主C/W の標本化の周波数 | FrequencyValue | Hz | ＝ 80 Hz | — |
| RF-083 | REQ-CW-01 | consecutiveSamples | 限界外れと判定する連続標本数 | Integer | — | ＝ 8 | — |
| RF-084 | REQ-CW-01 | detectionWindow | 限界外れの判定時間 | DurationValue | ms | ＝ 100 ms | — |
| RF-085 | REQ-CW-02 | cwPowerSources | C/W 電子装置の電源の系統数（ESS 1BC・ESS 2CA） | Integer | — | ＝ 2 | — |
| RF-086 | REQ-CW-02 | selfTestParameters | 自己試験のパラメータ数 | Integer | — | ＝ 8 | — |
| RF-087 | REQ-CW-03 | masterAlarmLights | MASTER ALARM 灯の数 | Integer | — | ＝ 4 | — |
| RF-088 | REQ-CW-04 | limitSetsPerParameter | パラメータごとの限界の組数 | Integer | — | 1〜3 | — |
| RF-089 | REQ-CW-06 | toneGenerators | トーン発生器の数（A・B） | Integer | — | ＝ 2 | — |
| RF-090 | REQ-CW-07 | masterAlarmLights | MASTER ALARM 灯の数 | Integer | — | ＝ 4 | — |
| RF-091 | REQ-CW-07 | f7AnnunciatorLights | F7 表示盤の表示灯の数 | Integer | — | ＝ 40 | — |
| RF-092 | REQ-CW-07 | bulbsPerLight | 表示灯1つあたりの並列の電球の数 | Integer | — | ＝ 2 | — |
| RF-093 | REQ-DPS-01 | gpcCount | 同一の GPC の台数 | Integer | — | ＝ 5 | — |
| RF-094 | REQ-DPS-01 | redundantSetSize | 上昇・再突入の冗長セットの GPC の数 | Integer | — | ≧ 4 | — |
| RF-095 | REQ-DPS-01 | bfsGpcCount | BFS を載せる GPC の台数 | Integer | — | ＝ 1 | — |
| RF-096 | REQ-DPS-03 | rpcPerGpc | GPC ごとの RPC の数（3主母線から） | Integer | — | ＝ 3 | — |
| RF-097 | REQ-DPS-04 | bfsGpcCount | BFS を載せる GPC の台数 | Integer | — | ＝ 1 | — |
| RF-098 | REQ-DPS-05 | mmuCount | MMU の台数 | Integer | — | ＝ 2 | — |
| RF-099 | REQ-DPS-05 | mmuCapacity | MMU 1台の容量 | Real | Mbit | ＝ 128 Mbit | — |
| RF-100 | REQ-DPS-06 | flightCriticalBuses | 飛行重要バスの本数 | Integer | — | ＝ 8 | — |
| RF-101 | REQ-DPS-06 | strings | ストリングの数 | Integer | — | ＝ 4 | — |
| RF-102 | REQ-DPS-07 | dpsMdmCount | DPS の MDM の台数 | Integer | — | ＝ 13 | — |
| RF-103 | REQ-DPS-07 | oiMdmCount | OI MDM の台数 | Integer | — | ＝ 7 | — |
| RF-104 | REQ-DPS-07 | mdmPowerFeeds | MDM に給電する主母線の数 | Integer | — | ＝ 2 | — |
| RF-105 | REQ-DPS-08 | eiuCount | EIU の台数（各エンジン専用） | Integer | — | ＝ 3 | — |
| RF-106 | REQ-DPS-08 | eiuCommandSources | EIU が指令を受ける GPC の数 | Integer | — | ＝ 4 | — |
| RF-107 | REQ-DPS-09 | mecCount | MEC の台数 | Integer | — | ＝ 2 | — |
| RF-108 | REQ-DPS-09 | pyroSignals | 火工品の信号の数（arm・fire 1・fire 2） | Integer | — | ＝ 3 | — |
| RF-109 | REQ-DPS-10 | idpCount | IDP の台数 | Integer | — | ＝ 4 | — |
| RF-110 | REQ-DPS-10 | mduCount | MDU の台数 | Integer | — | ＝ 11 | — |
| RF-111 | REQ-DPS-10 | adcCount | ADC の台数 | Integer | — | ＝ 4 | — |
| RF-112 | REQ-DPS-10 | keyboardCount | キーボードの数 | Integer | — | ＝ 3 | — |
| RF-113 | REQ-DPS-10 | idpPerMdu | MDU がつながる IDP の数 | Integer | — | ＝ 2 | — |
| RF-114 | REQ-DPS-11 | oscillators | MTU の発振器の数 | Integer | — | ＝ 2 | — |
| RF-115 | REQ-DPS-11 | accumulators | MTU の累算器の数 | Integer | — | ＝ 3 | — |
| RF-116 | REQ-DPS-11 | mtuPowerFeeds | MTU に給電する必須母線の数 | Integer | — | ＝ 2 | — |
| RF-117 | REQ-DPS-11 | gpcSyncError | GPC の時刻の同期のずれ | DurationValue | ms | ≦ 1 ms | 1 ms 未満（厳密） |
| RF-118 | REQ-DPS-13 | gpcLossForMdf | MDF とする GPC の喪失の数 | Integer | — | ＝ 2 | — |
| RF-119 | REQ-DPS-13 | deorbitSoftwareSources | 軌道離脱用ソフトウェアの独立した源の数 | Integer | — | ≧ 2 | — |
| RF-120 | REQ-ECLSS-01 | cabinPressure | 乗員室の全圧 | PressureValue | psia | 14.5〜14.9 psia | 14.7±0.2 psia |
| RF-121 | REQ-ECLSS-01 | nitrogenFraction | 窒素の割合 | Real | % | ＝ 80 % | 約 |
| RF-122 | REQ-ECLSS-01 | oxygenFraction | 酸素の割合 | Real | % | ＝ 20 % | 約 |
| RF-123 | REQ-ECLSS-01 | oxygenPartialPressure | 酸素分圧（PPO2） | PressureValue | psi | 2.95〜3.45 psi | — |
| RF-124 | REQ-ECLSS-02 | rapidDepressRateAlarm | 急減圧の警報の dP/dT の閾値 | Real | psi/min | ≦ -0.08 psi/min | dP/dT がこの値以下（減圧率 0.08 psi/min 以上）でクラクソン・MASTER ALARM |
| RF-125 | REQ-ECLSS-03 | emergencyCabinPressure | 非常時 8 psia モードの乗員室圧 | PressureValue | psia | 7.8〜8.2 psia | 8±0.2 psia |
| RF-126 | REQ-ECLSS-04 | preEvaCabinPressure | EVA 前に下げる乗員室圧 | PressureValue | psia | ＝ 10.2 psia | — |
| RF-127 | REQ-ECLSS-05 | relativeHumidity | 乗員室の相対湿度 | Real | % | 30〜75 % | — |
| RF-128 | REQ-ECLSS-06 | liohCanisters | LiOH キャニスタの数 | Integer | — | ＝ 2 | — |
| RF-129 | REQ-ECLSS-06 | canisterRate | キャニスタ1個あたりの処理の値 | MassFlowRateValue | lb/h | ＝ 120 lb/h | 約、各キャニスタ |
| RF-130 | REQ-ECLSS-07 | waterCoolantLoops | 水冷却ループの系統数 | Integer | — | ＝ 2 | — |
| RF-131 | REQ-ECLSS-07 | loop1Pumps | ループ1のポンプの台数 | Integer | — | ＝ 2 | — |
| RF-132 | REQ-ECLSS-08 | freonLoops | フレオンループの系統数 | Integer | — | ＝ 2 | — |
| RF-133 | REQ-ECLSS-08 | heatSinkTypes | ヒートシンクの種類（放熱器・FES・アンモニアボイラ） | Integer | — | ＝ 3 | — |
| RF-134 | REQ-ECLSS-09 | loopLossForAbort | アボート・早期軌道離脱とするループの喪失数 | Integer | — | ＝ 2 | — |
| RF-135 | REQ-ECLSS-10 | potableTanks | 給水タンクの数 | Integer | — | ＝ 4 | — |
| RF-136 | REQ-ECLSS-10 | wasteTanks | 廃水タンクの数 | Integer | — | ＝ 1 | — |
| RF-137 | REQ-ECLSS-10 | tankCapacity | タンク1基の容量 | MassValue | lb | ＝ 165 lb | 各タンク |
| RF-138 | REQ-ECLSS-11 | smokeAlarmThreshold | 煙検知器の警報の煙濃度 | Real | µg/m3 | 1800〜2200 µg/m3 | 2,000±200 µg/m3 |
| RF-139 | REQ-ECLSS-11 | fixedExtinguishers | アビオニクスベイの固定消火ボトルの数 | Integer | — | ＝ 3 | — |
| RF-140 | REQ-ECLSS-11 | portableExtinguishers | 携帯消火器の数 | Integer | — | ＝ 3 | — |
| RF-141 | REQ-EPS-02 | fuelCellCount | 燃料電池の基数 | Integer | — | ＝ 3 | — |
| RF-142 | REQ-EPS-02 | fuelCellTakeoverTime | 燃料電池が全電力を受け持ち始める時刻（打上げ前） | DurationValue | s | ＝ 50 s | T-50 秒から滑走終了まで |
| RF-143 | REQ-EPS-02 | dcBusVoltage | 機体の直流電力の電圧 | ElectricPotentialDifferenceValue | V | ＝ 28 V | — |
| RF-144 | REQ-EPS-03 | independentSources | 独立した電源の数 | Integer | — | ＝ 3 | — |
| RF-145 | REQ-EPS-03 | mainBuses | 直流主母線の数 | Integer | — | ＝ 3 | — |
| RF-146 | REQ-EPS-04 | fcContinuousPower | 燃料電池1基の通常の連続出力 | PowerValue | kW | 2〜10 kW | — |
| RF-147 | REQ-EPS-04 | fcPeakPower | 燃料電池1基の通常のピーク出力 | PowerValue | kW | 10〜12 kW | 3時間ごとに15分以内 |
| RF-148 | REQ-EPS-04 | fcPeakDuration | 通常のピーク出力の運転時間 | DurationValue | min | ≦ 15 min | 3時間ごと |
| RF-149 | REQ-EPS-04 | fcContingencyContinuousPower | 故障時の残る燃料電池の連続出力 | PowerValue | kW | 2〜12 kW | 故障時 |
| RF-150 | REQ-EPS-04 | fcContingencyPeakPower | 故障時の最大出力 | PowerValue | kW | ≦ 16 kW | 故障時、10分 |
| RF-151 | REQ-EPS-04 | fcContingencyPeakDuration | 故障時の最大出力の運転時間 | DurationValue | min | ≦ 10 min | 故障時、16 kW まで |
| RF-152 | REQ-EPS-05 | fcOutputVoltage | 燃料電池の出力電圧 | ElectricPotentialDifferenceValue | V | 27.5〜32.5 V | 負荷 12〜2 kW（12 kW で 27.5 V、2 kW で 32.5 V） |
| RF-153 | REQ-EPS-06 | mainBusVoltage | 直流主母線の電圧 | ElectricPotentialDifferenceValue | V | 27.0〜32.0 V | 27.0 < V < 32.0（両端を含まない、厳密） |
| RF-154 | REQ-EPS-06 | mainBusUndervoltAlarm | 主母線低電圧の警報の電圧 | ElectricPotentialDifferenceValue | V | ＝ 26.4 V | — |
| RF-155 | REQ-EPS-07 | essentialBusSources | 必須母線が接続する電源の数 | Integer | — | ＝ 3 | — |
| RF-156 | REQ-EPS-08 | acBusVoltage | 交流母線の電圧（実効値） | ElectricPotentialDifferenceValue | V | ＝ 117 V | 実効値（rms） |
| RF-157 | REQ-EPS-08 | acBusFrequency | 交流母線の周波数 | FrequencyValue | Hz | ＝ 400 Hz | — |
| RF-158 | REQ-EPS-08 | inverterCount | 静止形インバータの台数 | Integer | — | ＝ 9 | — |
| RF-159 | REQ-EPS-08 | invertersPerBus | 主母線1本あたりのインバータの台数（3相） | Integer | — | ＝ 3 | — |
| RF-160 | REQ-EPS-10 | o2StoragePressure | 酸素の貯蔵圧 | PressureValue | psia | ≧ 731 psia | 超臨界（超、厳密） |
| RF-161 | REQ-EPS-10 | o2StorageTemperature | 酸素の貯蔵温度 | ThermodynamicTemperatureValue | °F | ＝ -285 °F | — |
| RF-162 | REQ-EPS-10 | h2StoragePressure | 水素の貯蔵圧 | PressureValue | psia | ≧ 188 psia | 超臨界（超、厳密） |
| RF-163 | REQ-EPS-10 | h2StorageTemperature | 水素の貯蔵温度 | ThermodynamicTemperatureValue | °F | ＝ -420 °F | — |
| RF-164 | REQ-EPS-12 | stay3Sets | 3セット搭載時の軌道滞在日数 | DurationValue | d | ＝ 8 d | 最大、3セット |
| RF-165 | REQ-EPS-12 | stay5Sets | 5セット搭載時の軌道滞在日数 | DurationValue | d | ＝ 12 d | 5セット |
| RF-166 | REQ-EPS-12 | stay8Sets | 8セット搭載時の軌道滞在日数 | DurationValue | d | ＝ 18 d | 8セット |
| RF-167 | REQ-EPS-14 | purgeDuration | 燃料電池1基のパージ時間 | DurationValue | min | ≧ 2 min | — |
| RF-168 | REQ-EPS-14 | purgeInterval | パージの間隔 | DurationValue | h | ≦ 12 h | — |
| RF-169 | REQ-EPS-15 | stackTemperature | 燃料電池スタックの温度 | ThermodynamicTemperatureValue | °F | ＝ 200 °F | 約、負荷に応じる |
| RF-170 | REQ-EPS-15 | coolingLossResponseTime | 冷却喪失時に処置するまでの時間 | DurationValue | min | ≦ 9 min | 負荷 7 kW |
| RF-171 | REQ-EPS-17 | rpcCurrentLimit | RPC の電流制限（定格比） | Real | % | ＝ 150 % | — |
| RF-172 | REQ-EPS-17 | rpcLimitDuration | 電流を制限する時間 | DurationValue | s | 2〜3 s | — |
| RF-173 | REQ-EPS-17 | rpcTripTime | 遮断までの時間 | DurationValue | s | ≦ 3 s | — |
| RF-174 | REQ-EPS-18 | goNoGoCategories | A9-1001 の判定区分の数 | Integer | — | ＝ 3 | — |
| RF-175 | REQ-EPS-19 | generationCapacity | 発電能力（軌道の平均消費電力を超える） | PowerValue | kW | ≧ 14 kW | 約14 kW を超える（厳密） |
| RF-176 | REQ-EPS-20 | fcCumulativeLife | 燃料電池の累積運転時間の寿命 | DurationValue | h | ≧ 2000 h | — |
| RF-177 | REQ-EPS-21 | entryReservedTankSets | 再突入用に残すタンク（タンク1・2）の数 | Integer | — | ＝ 2 | — |
| RF-178 | REQ-EPS-21 | h2EntryReserve | 水素タンクの再突入用の残量 | Real | % | ≧ 4 % | 2基それぞれ |
| RF-179 | REQ-EPS-21 | entryFuelCellPower | 残量でまかなう再突入の燃料電池の出力 | PowerValue | kW | ＝ 20 kW | 約、相当 |
| RF-180 | REQ-ET-01 | ssmeFed | 推進薬を供給する SSME の基数 | Integer | — | ＝ 3 | — |
| RF-181 | REQ-ET-01 | lo2FlowRate | LO2 の流量 | MassFlowRateValue | lb/s | ＝ 2787 lb/s | 約、104% |
| RF-182 | REQ-ET-01 | lh2FlowRate | LH2 の流量 | MassFlowRateValue | lb/s | ＝ 465 lb/s | 104% |
| RF-183 | REQ-ET-02 | lo2TankPressure | LO2 タンクの運用圧 | PressureValue | psig | 20〜22 psig | — |
| RF-184 | REQ-ET-02 | lh2TankPressure | LH2 タンクの運用圧 | PressureValue | psia | 32〜34 psia | — |
| RF-185 | REQ-ET-03 | mixtureRatio | 混合比（酸化剤/燃料） | Real | — | ＝ 6 | 6:1 |
| RF-186 | REQ-ET-03 | lh2Excess | 混合比に必要な量を超えて積む LH2 | MassValue | lb | ＝ 1100 lb | — |
| RF-187 | REQ-ET-04 | forwardAttachPoints | オービタとの前部の結合の数 | Integer | — | ＝ 1 | — |
| RF-188 | REQ-ET-04 | aftAttachPoints | オービタとの後部の結合の数 | Integer | — | ＝ 2 | — |
| RF-189 | REQ-ET-05 | lh2VentReliefPressure | LH2 のベント/リリーフ弁の開く圧力 | PressureValue | psig | ＝ 36 psig | — |
| RF-190 | REQ-ET-05 | lo2VentReliefPressure | LO2 のベント/リリーフ弁の開く圧力 | PressureValue | psig | ＝ 31 psig | — |
| RF-191 | REQ-ET-06 | depletionSensorsPerPropellant | 推進薬ごとの枯渇センサの数 | Integer | — | ＝ 4 | — |
| RF-192 | REQ-ET-06 | drySensorsForCutoff | エンジン停止とする乾きの検知の数 | Integer | — | ＝ 2 | — |
| RF-193 | REQ-ET-06 | sensorFailuresForTal | TAL とするセンサの故障の数 | Integer | — | ≧ 3 | — |
| RF-194 | REQ-ET-07 | tpsMass | ET の TPS の質量 | MassValue | lb | ＝ 4823 lb | — |
| RF-195 | REQ-ET-08 | separationRateLimit | ET 分離を許す角速度 | Real | deg/s | ≦ 0.7 deg/s | 超えると分離を抑止 |
| RF-196 | REQ-ET-08 | separationDelay | 分離の抑止の遅延 | DurationValue | min | ≦ 6 min | MECO＋6分まで |
| RF-197 | REQ-EVA-01 | leakCheckSuitPressure | 漏れ点検の服圧 | PressureValue | psid | 4.2〜4.4 psid | — |
| RF-198 | REQ-EVA-02 | initialPrebreathe | 初期の前呼吸の時間 | DurationValue | min | ≧ 45 min | 10.2 psi のキャビン |
| RF-199 | REQ-EVA-02 | prebreatheCabinPressure | 前呼吸のキャビン圧 | PressureValue | psi | ＝ 10.2 psi | — |
| RF-200 | REQ-EVA-03 | airlockVolume | エアロックの容積 | VolumeValue | ft3 | ＝ 228 ft3 | — |
| RF-201 | REQ-EVA-03 | airlockLeakCheckPressure | 減圧途中の EMU 漏れ点検の圧力 | PressureValue | psi | ＝ 5.0 psi | — |
| RF-202 | REQ-EVA-05 | waterRefillPressure | 水の再充填の圧力 | PressureValue | psi | 8〜15 psi | — |
| RF-203 | REQ-EVA-06 | contingencyEvaReserve | 常に確保する非常時 EVA の回数 | Integer | — | ≧ 1 | — |
| RF-204 | REQ-EVA-07 | btaPressure | 減圧症治療アダプタ（BTA）の加圧 | PressureValue | psid | 6〜8 psid | — |
| RF-205 | REQ-EVA-08 | ingressConsumablesMargin | エアロック進入を終える時の消耗品の残り時間 | DurationValue | min | ≧ 30 min | — |
| RF-206 | REQ-EVA-08 | plannedEvaEarliestMet | 計画 EVA を行える最も早い MET | DurationValue | h | ≧ 72 h | — |
| RF-207 | REQ-GNC-01 | imuCount | IMU の台数 | Integer | — | ＝ 3 | — |
| RF-208 | REQ-GNC-01 | imuMinForFlight | 飛行できる IMU の最少台数 | Integer | — | ＝ 1 | — |
| RF-209 | REQ-GNC-02 | eiAttitudeError | EI の IMU の姿勢誤差 | AngularMeasureValue | deg | ≦ 0.5 deg | — |
| RF-210 | REQ-GNC-02 | nominalDeorbitAttitudeError | 公称の軌道離脱を行う姿勢誤差（超えれば遅らせる） | AngularMeasureValue | deg | ≦ 0.25 deg | 公称の軌道離脱 |
| RF-211 | REQ-GNC-03 | tacanCount | TACAN の台数（または OV-105 の GPS） | Integer | — | ＝ 3 | — |
| RF-212 | REQ-GNC-03 | tacanRange | TACAN の距離 | LengthValue | n.mi. | ≦ 400 n.mi. | 最大 |
| RF-213 | REQ-GNC-03 | mlsCount | MLS の台数 | Integer | — | ＝ 3 | — |
| RF-214 | REQ-GNC-04 | airDataProbes | エアデータプローブの数 | Integer | — | ＝ 2 | — |
| RF-215 | REQ-GNC-04 | adtaCount | ADTA の台数 | Integer | — | ＝ 4 | — |
| RF-216 | REQ-GNC-04 | probeDeployMotors | プローブの展開モータの数 | Integer | — | ＝ 2 | — |
| RF-217 | REQ-GNC-04 | probeDeployTime | プローブの展開時間 | DurationValue | s | ＝ 15 s | — |
| RF-218 | REQ-GNC-05 | stateVectorElements | 状態ベクトルの要素数（時刻を除く） | Integer | — | ＝ 6 | — |
| RF-219 | REQ-GNC-05 | entryStateVectors | 再突入で中間値を選ぶ状態ベクトルの数 | Integer | — | ＝ 3 | — |
| RF-220 | REQ-GNC-06 | ascentAcceleration | 上昇の加速度 | Real | g | ≦ 3 g | — |
| RF-221 | REQ-GNC-07 | flareAltitude | フレアの高度 | LengthValue | ft | 30〜80 ft | — |
| RF-222 | REQ-GNC-08 | rgaCount | RGA の台数 | Integer | — | ＝ 4 | — |
| RF-223 | REQ-GNC-08 | aaCount | AA の台数 | Integer | — | ＝ 4 | — |
| RF-224 | REQ-GNC-08 | faultsToNeom | 公称の終了まで続けられる故障の数（4台構成） | Integer | — | ≧ 1 | — |
| RF-225 | REQ-GNC-09 | etSepDelay | MECO から ET 分離指令までの時間 | DurationValue | s | ＝ 20 s | 約 |
| RF-226 | REQ-GNC-09 | etSepTranslation | 分離後の −Z の並進速度 | SpeedValue | ft/s | ＝ 4 ft/s | — |
| RF-227 | REQ-GNC-10 | aeroSurfaces | 空力舵面の枚数 | Integer | — | ＝ 7 | — |
| RF-228 | REQ-GNC-10 | servoChannels | サーボ弁のフライトコントロールチャネル数 | Integer | — | ＝ 4 | — |
| RF-229 | REQ-GNC-10 | secDeltaPBypass | サーボ弁を切り離す二次差圧 | PressureValue | psi | ≧ 2025 psi | — |
| RF-230 | REQ-GNC-10 | bypassDetectTime | 切り離しまでの持続時間 | DurationValue | ms | ＝ 120 ms | — |
| RF-231 | REQ-GNC-11 | atvcCount | ATVC の台数 | Integer | — | ＝ 4 | — |
| RF-232 | REQ-GNC-11 | servoValvesPerActuator | アクチュエータごとのサーボ弁の数 | Integer | — | ＝ 4 | — |
| RF-233 | REQ-GNC-11 | ssmePitchGimbal | SSME のピッチのジンバル角 | AngularMeasureValue | deg | -10.5〜10.5 deg | ±10.5° |
| RF-234 | REQ-GNC-11 | ssmeYawGimbal | SSME のヨーのジンバル角 | AngularMeasureValue | deg | -8.5〜8.5 deg | ±8.5° |
| RF-235 | REQ-GNC-11 | srbGimbal | SRB のジンバル角 | AngularMeasureValue | deg | -5〜5 deg | ±5° |
| RF-236 | REQ-GNC-12 | rhcLocations | RHC の数（か所） | Integer | — | ＝ 3 | — |
| RF-237 | REQ-GNC-12 | transducers | 変換器の数（3重） | Integer | — | ＝ 9 | — |
| RF-238 | REQ-GNC-12 | goodSignalsRequired | 働くのに要る良い信号の数 | Integer | — | ≧ 1 | — |
| RF-239 | REQ-GNC-13 | goNoGoCategories | A8-1001 の判定区分の数（MDF・次の PLS・初日の PLS） | Integer | — | ＝ 3 | — |
| RF-240 | REQ-GNC-14 | fcsCheckouts | 軌道離脱前の FCS の点検の回数 | Integer | — | ≧ 1 | — |
| RF-241 | REQ-MECH-01 | motorsPerActuator | アクチュエータごとの3相交流モータの数 | Integer | — | ＝ 2 | — |
| RF-242 | REQ-MECH-01 | singleMotorTimeRatio | 1モータで動かすときの時間の倍率 | Real | — | ＝ 2 | — |
| RF-243 | REQ-MECH-03 | payloadBayDoors | ペイロードベイドアの枚数 | Integer | — | ＝ 2 | — |
| RF-244 | REQ-MECH-03 | doorArea | ドアの面積 | Real | ft2 | ＝ 1600 ft2 | — |
| RF-245 | REQ-MECH-03 | doorLatches | 閉状態を保つラッチの数 | Integer | — | ＝ 32 | — |
| RF-246 | REQ-MECH-04 | openLatchGangsForEntry | 外れたままで突入できるラッチギャングの数 | Integer | — | ≦ 1 | — |
| RF-247 | REQ-MECH-05 | ventPorts | ベント口の数 | Integer | — | ＝ 14 | — |
| RF-248 | REQ-MECH-05 | ventDoorCycleTime | ベント扉の開閉時間 | DurationValue | s | ＝ 5 s | — |
| RF-249 | REQ-MECH-06 | umbilicalDoors | ET アンビリカル扉の数 | Integer | — | ＝ 2 | — |
| RF-250 | REQ-MECH-07 | landingGearLegs | 降着装置の脚の数 | Integer | — | ＝ 3 | — |
| RF-251 | REQ-MECH-07 | gearDeployAltitude | 降着装置を展開する高度 | LengthValue | ft | 200〜400 ft | 300±100 ft |
| RF-252 | REQ-MECH-07 | gearDeploySpeed | 降着装置を展開する速度 | SpeedValue | KEAS | ≦ 312 KEAS | — |
| RF-253 | REQ-MECH-07 | gearLockTime | 下げ位置でロックするまでの時間 | DurationValue | s | ≦ 10 s | — |
| RF-254 | REQ-MECH-08 | dragChuteJettisonSpeed | ドラッグシュートを投棄する対地速度 | SpeedValue | kt | 40〜80 kt | 60（±20） kt |
| RF-255 | REQ-MECH-08 | mainWheels | ブレーキを持つ主輪の数 | Integer | — | ＝ 4 | — |
| RF-256 | REQ-MECH-09 | nwsEnableConditions | 前輪操向の有効化条件の数 | Integer | — | ＝ 3 | — |
| RF-257 | REQ-MECH-09 | nwsEnablePitch | 前輪操向を有効にするピッチ角 | AngularMeasureValue | deg | ≦ 0 deg | 0°未満（厳密） |
| RF-258 | REQ-MECH-10 | deployLossForNextPls | 次の PLS とする脚の展開系の喪失数 | Integer | — | ＝ 2 | — |
| RF-259 | REQ-MECH-10 | brakingSteeringFaultTolerance | 制動・前輪操向による方向制御の故障許容 | Integer | — | ＝ 0 | — |
| RF-260 | REQ-MPS-01 | ssmeCount | SSME の基数 | Integer | — | ＝ 3 | — |
| RF-261 | REQ-MPS-01 | throttleRange | 推力の絞りの範囲（定格比） | Real | % | 67〜109 % | — |
| RF-262 | REQ-MPS-01 | ratedThrustSeaLevel | 定格（100%）の海面推力 | ForceValue | lbf | ＝ 375000 lbf | — |
| RF-263 | REQ-MPS-01 | ratedThrustVacuum | 定格（100%）の真空推力 | ForceValue | lbf | ＝ 470000 lbf | — |
| RF-264 | REQ-MPS-02 | engineStarts | エンジン1基の始動の回数 | Integer | — | ≧ 30 | — |
| RF-265 | REQ-MPS-02 | engineOperatingLife | エンジン1基の運転時間 | DurationValue | s | ≧ 15000 s | — |
| RF-266 | REQ-MPS-04 | dcuPerController | 制御器ごとのデジタル計算機の数 | Integer | — | ＝ 2 | — |
| RF-267 | REQ-MPS-04 | enginesLostOnTwoAcBus | どの2本の交流母線を失っても失うエンジンの数 | Integer | — | ≦ 1 | — |
| RF-268 | REQ-MPS-05 | commandSourceGpcs | 指令を出す GPC の数 | Integer | — | ＝ 4 | — |
| RF-269 | REQ-MPS-05 | commandChannels | 制御器に届く指令の数 | Integer | — | ＝ 3 | — |
| RF-270 | REQ-MPS-05 | validCommandsToExecute | 実行に要る有効な指令の数 | Integer | — | ≧ 2 | — |
| RF-271 | REQ-MPS-06 | redlinePersistence | 停止とするレッドライン超過の持続時間 | DurationValue | ms | ＝ 60 ms | — |
| RF-272 | REQ-MPS-06 | monitorCycle | 監視の周期 | DurationValue | ms | ＝ 20 ms | — |
| RF-273 | REQ-MPS-06 | consecutiveExceedances | 連続の超過回数 | Integer | — | ＝ 3 | — |
| RF-274 | REQ-MPS-07 | feedlineDiameter | 供給配管マニホールドの直径 | LengthValue | in | ＝ 17 in | — |
| RF-275 | REQ-MPS-07 | feedManifolds | マニホールドの数（LO2・LH2） | Integer | — | ＝ 2 | — |
| RF-276 | REQ-MPS-07 | disconnectValves | 切離し弁の数 | Integer | — | ＝ 4 | — |
| RF-277 | REQ-MPS-08 | lo2UllagePressure | LO2 タンクのアレージ圧 | PressureValue | psig | 20〜25 psig | — |
| RF-278 | REQ-MPS-08 | lh2UllagePressure | LH2 タンクのアレージ圧 | PressureValue | psia | 32〜34 psia | — |
| RF-279 | REQ-MPS-09 | lo2DepletionSensors | LO2 の枯渇センサの数 | Integer | — | ＝ 4 | — |
| RF-280 | REQ-MPS-09 | lh2DepletionSensors | LH2 の枯渇センサの数 | Integer | — | ＝ 4 | — |
| RF-281 | REQ-MPS-10 | dumpStartTime | MECO からダンプ開始までの時間 | DurationValue | min | ＝ 2 min | — |
| RF-282 | REQ-MPS-10 | vacuumInertTime | ダンプ終了から真空不活性化までの時間 | DurationValue | min | ＝ 15 min | — |
| RF-283 | REQ-MPS-11 | heliumSystems | ヘリウム系の系統数（エンジン3・空圧1） | Integer | — | ＝ 4 | — |
| RF-284 | REQ-MPS-11 | regulatedPressure | エンジン系統の調圧 | PressureValue | psia | 730〜785 psia | — |
| RF-285 | REQ-MPS-12 | ssmePitchGimbal | SSME のピッチのジンバル角 | AngularMeasureValue | deg | -10.5〜10.5 deg | ±10.5° |
| RF-286 | REQ-MPS-12 | ssmeYawGimbal | SSME のヨーのジンバル角 | AngularMeasureValue | deg | -8.5〜8.5 deg | ±8.5° |
| RF-287 | REQ-MPS-12 | hydraulicSupplies | アクチュエータが受ける油圧系の数 | Integer | — | ＝ 2 | — |
| RF-288 | REQ-OMS-01 | omsThrust | OMS エンジンの推力 | ForceValue | lbf | ＝ 6087 lbf | — |
| RF-289 | REQ-OMS-01 | omsStarts | 始動の回数 | Integer | — | ≧ 1000 | — |
| RF-290 | REQ-OMS-01 | omsCumulativeFiring | 累積の噴射時間 | DurationValue | h | ≧ 15 h | — |
| RF-291 | REQ-OMS-02 | seriesValves | 燃料・酸化剤それぞれの直列の推進薬弁の数 | Integer | — | ＝ 2 | — |
| RF-292 | REQ-OMS-02 | purgeDelay | 停止からパージまでの時間 | DurationValue | s | ＝ 0.36 s | — |
| RF-293 | REQ-OMS-03 | fuelInjectorTempLimit | 燃料噴射器温度の限界 | ThermodynamicTemperatureValue | °F | ≦ 260 °F | — |
| RF-294 | REQ-OMS-04 | heliumTanks | ヘリウムタンクの数 | Integer | — | ＝ 1 | — |
| RF-295 | REQ-OMS-04 | primaryRegPressure | 一次調圧の圧力 | PressureValue | psig | 252〜262 psig | — |
| RF-296 | REQ-OMS-05 | omsDeltaV | 両ポッドの OMS 推進薬で与える速度変化 | SpeedValue | ft/s | ≧ 1000 ft/s | ペイロード 65,000 lb |
| RF-297 | REQ-OMS-05 | referencePayload | 速度変化の基準のペイロード質量 | MassValue | lb | ＝ 65000 lb | — |
| RF-298 | REQ-OMS-06 | nominalTankPressure | 公称のタンク圧 | PressureValue | psi | ＝ 250 psi | — |
| RF-299 | REQ-OMS-06 | maxTankPressure | 最大のタンク圧 | PressureValue | psia | ≦ 313 psia | — |
| RF-300 | REQ-OMS-07 | crossfeedValvesPerLine | 配管ごとの並列のクロスフィード弁の数 | Integer | — | ＝ 2 | — |
| RF-301 | REQ-OMS-08 | omsPitchGimbal | OMS のピッチのジンバル角 | AngularMeasureValue | deg | -6〜6 deg | ±6° |
| RF-302 | REQ-OMS-08 | omsYawGimbal | OMS のヨーのジンバル角 | AngularMeasureValue | deg | -7〜7 deg | ±7° |
| RF-303 | REQ-OMS-08 | actuatorMotors | アクチュエータの電動機の数 | Integer | — | ＝ 2 | — |
| RF-304 | REQ-OMS-09 | propellantTemperature | OMS の推進薬の温度 | ThermodynamicTemperatureValue | °F | 40〜100 °F | — |
| RF-305 | REQ-OMS-09 | crossfeedLineTemperature | クロスフィード配管の温度 | ThermodynamicTemperatureValue | °F | 40〜125 °F | — |
| RF-306 | REQ-OMS-10 | deorbitMeansAfterLoss | 1基喪失後の軌道離脱の手段の数 | Integer | — | ＝ 2 | — |
| RF-307 | REQ-OMS-11 | landingPropellantPerPod | 着陸時の各ポッドの推進薬 | Real | % | ≦ 22 % | — |
| RF-308 | REQ-PLS-01 | rmsJoints | RMS の関節の数 | Integer | — | ＝ 6 | — |
| RF-309 | REQ-PLS-01 | rmsLength | RMS の長さ | LengthValue | ft | ＝ 50.25 ft | 50 ft 3 in |
| RF-310 | REQ-PLS-01 | rmsPayloadMass | 展開・回収できるペイロードの質量 | MassValue | lb | ≦ 586000 lb | 最大、無重量 |
| RF-311 | REQ-PLS-02 | jointDriveVoltage | 関節の駆動の電圧 | ElectricPotentialDifferenceValue | V | ＝ 28 V | DC |
| RF-312 | REQ-PLS-02 | jointDrivePaths | 関節の駆動経路の数（SPA・予備駆動増幅器） | Integer | — | ＝ 2 | — |
| RF-313 | REQ-PLS-03 | spareMciu | 予備の MCIU の数 | Integer | — | ＝ 1 | — |
| RF-314 | REQ-PLS-04 | rmsOperators | RMS の操作員の数 | Integer | — | ＝ 2 | — |
| RF-315 | REQ-PLS-05 | mpmSeparationPoints | MPM の分離点の数（左舷） | Integer | — | ＝ 4 | — |
| RF-316 | REQ-PLS-06 | payloadsPerFlight | 1回の飛行で支えるペイロードの数 | Integer | — | ≦ 3 | — |
| RF-317 | REQ-PLS-06 | longeronAttachPoints | 縦通材の取付け点の数 | Integer | — | ＝ 124 | — |
| RF-318 | REQ-PLS-06 | keelAttachPoints | キールの取付け点の数 | Integer | — | ＝ 75 | — |
| RF-319 | REQ-PLS-07 | structuralHookPairs | ODS の構造フックの対の数 | Integer | — | ＝ 12 | — |
| RF-320 | REQ-PLS-08 | rmsCheckoutDuration | RMS の点検の時間 | DurationValue | h | ＝ 1 h | 約 |
| RF-321 | REQ-PLS-08 | rmsCheckoutsPerFlight | 1飛行あたりの点検の回数 | Integer | — | ＝ 1 | — |
| RF-322 | REQ-PLS-08 | goodCameraViews | 用意するよいカメラの視野の数 | Integer | — | ≧ 2 | — |
| RF-323 | REQ-RCS-01 | heliumTanksPerModule | RCS ごとのヘリウムタンクの数 | Integer | — | ＝ 2 | — |
| RF-324 | REQ-RCS-01 | regulatorSets | 調圧器の組数 | Integer | — | ＝ 2 | — |
| RF-325 | REQ-RCS-01 | primaryRegPressure | 一次調圧の圧力 | PressureValue | psig | 242〜248 psig | — |
| RF-326 | REQ-RCS-01 | secondaryRegPressure | 二次調圧の圧力 | PressureValue | psig | 253〜259 psig | — |
| RF-327 | REQ-RCS-03 | quantityMismatchAlarm | 警報を出す燃料と酸化剤の量の差 | Real | % | ＝ 9.5 % | この差を超えたら警報 |
| RF-328 | REQ-RCS-04 | primaryThrusters | 主噴射器の数 | Integer | — | ＝ 38 | — |
| RF-329 | REQ-RCS-04 | primaryThrust | 主噴射器1基の推力 | ForceValue | lbf | ＝ 870 lbf | — |
| RF-330 | REQ-RCS-04 | vernierThrusters | バーニア噴射器の数 | Integer | — | ＝ 6 | — |
| RF-331 | REQ-RCS-04 | vernierThrust | バーニア噴射器1基の推力 | ForceValue | lbf | ＝ 24 lbf | — |
| RF-332 | REQ-RCS-05 | primaryContinuousFire | 主噴射器の連続噴射時間 | DurationValue | s | ≦ 150 s | — |
| RF-333 | REQ-RCS-05 | vernierContinuousFire | バーニアの連続噴射時間 | DurationValue | s | ≦ 275 s | — |
| RF-334 | REQ-RCS-06 | pcOnThreshold | 燃焼室圧の離散信号の ON の圧力 | PressureValue | psi | ＝ 36 psi | — |
| RF-335 | REQ-RCS-06 | pcOffThreshold | 燃焼室圧の離散信号の OFF の圧力 | PressureValue | psi | ＝ 26 psi | — |
| RF-336 | REQ-RCS-07 | thrusterTemperature | 噴射器の温度 | ThermodynamicTemperatureValue | °F | ≧ 50 °F | 括弧内 55°F（もう一方の値） |
| RF-337 | REQ-RCS-07 | aftTankTemperature | 後部 RCS のタンクの温度 | ThermodynamicTemperatureValue | °F | ≧ 68 °F | 括弧内 70°F（もう一方の値） |
| RF-338 | REQ-RCS-08 | failureDetectCycles | 故障検知の周期数 | Integer | — | ＝ 3 | — |
| RF-339 | REQ-RCS-08 | maxDeselectPerPod | ポッドごとの自動選択解除の上限 | Integer | — | ≦ 2 | — |
| RF-340 | REQ-RCS-10 | aftLeaksForNextPls | 次の PLS とする後部タンクの漏れの件数 | Integer | — | ＝ 1 | — |
| RF-341 | REQ-SRB-01 | srbThrustSeaLevel | SRB 1本の海面推力 | ForceValue | lbf | ＝ 3300000 lbf | 約 |
| RF-342 | REQ-SRB-01 | srbThrustShare | 打上げ・第1段上昇の推力に占める割合 | Real | % | ＝ 71.4 % | — |
| RF-343 | REQ-SRB-02 | thrustBucketTime | 推力を下げる時刻（打上げ後） | DurationValue | s | ＝ 50 s | 約 |
| RF-344 | REQ-SRB-02 | thrustReductionFraction | 推力の低減の割合 | Real | — | ＝ 0.3333333333333333 | 約3分の1 |
| RF-345 | REQ-SRB-03 | holdDownBoltSets | SRB 1本あたりの保持ボルトの組数 | Integer | — | ＝ 4 | — |
| RF-346 | REQ-SRB-04 | ssmeThrustForIgnition | SRB 点火を許す SSME の推力（定格比） | Real | % | ≧ 90 % | — |
| RF-347 | REQ-SRB-04 | pyroSignals | 火工品の発火に要る信号の数（arm・fire 1・fire 2） | Integer | — | ＝ 3 | — |
| RF-348 | REQ-SRB-05 | nozzleGimbal | ノズルのジンバル角（全軸） | AngularMeasureValue | deg | ≦ 8 deg | — |
| RF-349 | REQ-SRB-05 | hpuPerSrb | SRB 1本あたりの独立した HPU の数 | Integer | — | ＝ 2 | — |
| RF-350 | REQ-SRB-06 | srbBusNominalVoltage | SRB 母線の公称電圧 | ElectricPotentialDifferenceValue | V | ＝ 28 V | — |
| RF-351 | REQ-SRB-06 | srbBusVoltage | SRB 母線の電圧の範囲 | ElectricPotentialDifferenceValue | V | 24〜32 V | — |
| RF-352 | REQ-SRB-06 | supplyingMainBuses | 給電するオービタの主直流母線の数 | Integer | — | ＝ 3 | — |
| RF-353 | REQ-SRB-07 | rssCommands | 射場安全系の指令の数（arm・fire） | Integer | — | ＝ 2 | — |
| RF-354 | REQ-SRB-07 | rssDistributors | クロスストラップする分配器の数 | Integer | — | ＝ 2 | — |
| RF-355 | REQ-SRB-08 | separationChamberPressure | 分離を始める両 SRB の燃焼圧 | PressureValue | psi | ≦ 50 psi | — |
| RF-356 | REQ-SRB-08 | separationTime | 発火の指令から分離までの時間 | DurationValue | ms | ≦ 30 ms | — |
| RF-357 | REQ-SRB-08 | bsmPerSrb | SRB 1本あたりの分離モータの数 | Integer | — | ＝ 8 | — |
| RF-358 | REQ-SRB-09 | splashdownSpeed | 着水の速度 | SpeedValue | ft/s | ＝ 76 ft/s | — |
| RF-359 | REQ-STR-01 | majorSections | オービタ構造の主要区分の数 | Integer | — | ＝ 9 | — |
| RF-360 | REQ-STR-02 | frcsFasteners | 前部 RCS モジュールの留め具の数 | Integer | — | ＝ 16 | — |
| RF-361 | REQ-STR-03 | crewCabinPressure | 乗員室の圧力 | PressureValue | psia | 14.5〜14.9 psia | 14.7±0.2 psia |
| RF-362 | REQ-STR-03 | designPressure | 乗員室の設計圧力 | PressureValue | psia | ≧ 16 psia | 耐えること |
| RF-363 | REQ-STR-03 | crewCabinVolume | 乗員室の容積 | VolumeValue | ft3 | ＝ 2553 ft3 | — |
| RF-364 | REQ-STR-04 | windowPanes | 前方窓の板ガラスの枚数 | Integer | — | ＝ 3 | — |
| RF-365 | REQ-STR-04 | pressurePaneThickness | 圧力ペインの厚さ | LengthValue | in | ＝ 0.625 in | — |
| RF-366 | REQ-STR-04 | reducedCabinPressure | 圧力ペイン故障時に下げる客室圧 | PressureValue | psi | ＝ 10.2 psi | 圧力ペインの故障時 |
| RF-367 | REQ-STR-05 | payloadBayLength | ペイロードベイの長さ | LengthValue | ft | ＝ 60 ft | — |
| RF-368 | REQ-STR-05 | payloadBayWidth | ペイロードベイの幅 | LengthValue | ft | ＝ 17 ft | — |
| RF-369 | REQ-STR-05 | payloadBayHeight | ペイロードベイの高さ | LengthValue | ft | ＝ 13 ft | — |
| RF-370 | REQ-STR-06 | ssmeSupported | 推力構造が支える SSME の基数 | Integer | — | ＝ 3 | — |
| RF-371 | REQ-STR-06 | podBolts | OMS/RCS ポッドの取付けボルトの数 | Integer | — | ＝ 11 | — |
| RF-372 | REQ-STR-07 | elevonUpDeflection | エレボンの上げ方向の舵角 | AngularMeasureValue | deg | ≦ 33 deg | — |
| RF-373 | REQ-STR-07 | elevonDownDeflection | エレボンの下げ方向の舵角 | AngularMeasureValue | deg | ≦ 18 deg | — |
| RF-374 | REQ-STR-08 | bondLineTemperature | TPS の接着層の温度 | ThermodynamicTemperatureValue | °F | ≧ -170 °F | −170°F より高く（厳密） |
| RF-375 | REQ-TPS-01 | skinTemperature | 再突入時のオービタ外板の温度 | ThermodynamicTemperatureValue | °F | ≦ 350 °F | — |
| RF-376 | REQ-TPS-01 | reuseMissions | TPS を再使用するミッションの回数 | Integer | — | ≧ 100 | — |
| RF-377 | REQ-TPS-02 | rccRegionTemperature | RCC で守る部位の最高温度 | ThermodynamicTemperatureValue | °F | ≧ 2300 °F | 2,300°F を超える部位（厳密） |
| RF-378 | REQ-TPS-02 | hrsiRegionTemperature | HRSI（FRCI）で守る部位の最高温度 | ThermodynamicTemperatureValue | °F | ≦ 2300 °F | 2,300°F 未満（厳密） |
| RF-379 | REQ-TPS-02 | lrsiRegionTemperature | LRSI で守る部位の最高温度 | ThermodynamicTemperatureValue | °F | ≦ 1200 °F | 1,200°F 未満（厳密） |
| RF-380 | REQ-TPS-02 | frsiRegionTemperature | FRSI で守る部位の最高温度 | ThermodynamicTemperatureValue | °F | ≦ 700 °F | 700°F 未満（厳密） |
| RF-381 | REQ-TPS-03 | bondLineTemperature | TPS の接着層の温度 | ThermodynamicTemperatureValue | °F | ≧ -170 °F | −170°F より高く（厳密） |
| RF-382 | REQ-TPS-05 | podHeaterSetpoint | OMS/RCS ポッドのヒータで保つ温度 | ThermodynamicTemperatureValue | °F | 55〜75 °F | — |
| RF-383 | REQ-TPS-05 | heaterSystems | ヒータの系統数（A・B） | Integer | — | ＝ 2 | — |

## 5. 定性の要求

数値にしなかった要求 28件と理由を示す。

| ID | 要求 | 理由 |
|---|---|---|
| QL-01 | REQ-SYS-04 | 再使用できるという性質の記述で、値の欄に量が無い（再使用の回数は下位の REQ-TPS-01・REQ-MPS-02 などが持つ）。 |
| QL-02 | REQ-SYS-16 | 機上で全電力を供給するという機能の記述で、値の欄に量が無い。 |
| QL-03 | REQ-CREW-06 | 値の欄の 0.05〜0.07 rem は実績の線量で要求の限度ではなく、法定の限度の数値は要求書に無い（ALARA は定性）。 |
| QL-04 | REQ-CW-05 | クラス0は警報音なしで矢印を出す表示の仕方の記述で、量が無い。 |
| QL-05 | REQ-CW-08 | SPEC 60・TMBU は画面・手段の名称で、量ではない（限界変更の操作の手段の記述）。 |
| QL-06 | REQ-CW-09 | 主C&W とバックアップ C&W の限界値が等しいことは属性どうしの等式で、定数の制約ではない。 |
| QL-07 | REQ-CW-10 | 両方の喪失で次の PLS とする判断の定義で、量が無い。 |
| QL-08 | REQ-DPS-02 | 照合の頻度「毎秒数百回」は幅が定まらず、限度の数値にできない（票決で外す機能の記述）。 |
| QL-09 | REQ-DPS-12 | 冗長な GNC GPC を要する運用の種類と、故障した GPC を外す手順の記述で、量が無い。 |
| QL-10 | REQ-ECLSS-12 | A17-1001 は判定基準の参照で、量が無い（アボート・MDF・次の PLS の判断の規則）。 |
| QL-11 | REQ-ECLSS-13 | 値の欄が「—」。WCS の収集・処理の機能の記述。 |
| QL-12 | REQ-EPS-01 | 値の欄は「全電力（オービタ・ET・SRB・ペイロード）」で供給の範囲の記述、量が無い。 |
| QL-13 | REQ-EPS-09 | 上昇中は母線センサが監視のみで自動遮断しないという運用モードの記述で、量が無い。 |
| QL-14 | REQ-EPS-11 | 値の欄が「—」。PRSD から ECLSS へ酸素を供給する機能の記述。 |
| QL-15 | REQ-EPS-13 | 値の欄が「—」。逆止弁で逆流を止める機能（1故障で反応剤を全損しない）の記述。 |
| QL-16 | REQ-EPS-16 | 値の欄の約20分（7 kW）は生成水の除去が止まったときに浸水するまでの結果で、要求の限度ではない（除去し続ける機能の記述）。 |
| QL-17 | REQ-EPS-22 | 配電機器の冷却の構成（フレオンループ・水ループ・空冷）の記述で、量が無い。 |
| QL-18 | REQ-ET-09 | 値の欄は「電池・受信/解読器・アンテナ 冗長」で、冗長の数が書かれていない。 |
| QL-19 | REQ-EVA-04 | エアロックの外では常にテザーでつなぐという手順の記述で、量が無い。 |
| QL-20 | REQ-MECH-02 | 値の欄は「1モータの駆動時間」で数値が無い（機構ごとのタイマの値は要求書に無い）。 |
| QL-21 | REQ-MPS-03 | ポゴ抑制とエンジン停止時のヘリウムでの加圧の手段の記述で、量が無い。 |
| QL-22 | REQ-MPS-13 | 手動停止・リミット制御の手順の記述で、値の欄の「MECO 約30秒前」は手順の一例（「など」）で限度ではない。 |
| QL-23 | REQ-PLS-09 | EVA を冗長の1段に数える運用の考え方で、Go/No-Go の判断の規則。量として検証する値ではない。 |
| QL-24 | REQ-RCS-02 | 表面張力式の捕捉装置と後部 RCS の突入用コレクタ・サンプ・ガストラップの構成の記述で、量が無い。 |
| QL-25 | REQ-RCS-09 | 後部 RCS の軌道離脱レッドラインは名称だけで値が書かれていない。 |
| QL-26 | REQ-TPS-04 | 値の欄は手段（断熱材・ヒータ・パージ）の列挙で、温度の値が無い。 |
| QL-27 | REQ-TPS-06 | 地上からのパージとベント扉のパージ位置の運用の記述で、量が無い。 |
| QL-28 | REQ-TPS-07 | ドア開放後に放熱器を主な冷却源とする運用の記述で、量が無い（「まもなく」に値が無い）。 |

## 6. 値による判定

制約に設計値・飛行の実績を入れた判定 22件を示す（満たさない 5件）。

| ID | 要求 | 属性 | 制約 | 評価の対象 | 値 | 判定 | 値の出どころ | 補足 |
|---|---|---|---|---|---|---|---|---|
| EV-01 | REQ-EPS-19 | generationCapacity | ≧ 14 kW | 標準ミッション（設計） | 30 kW | 満たす | SSD-PAR-ORB-001 CON-05 powerCapacity | 燃料電池3基×10 kW |
| EV-02 | REQ-EPS-04 | fcContinuousPower | 2〜10 kW | 標準ミッション（設計） | 10 kW | 満たす | SSD-PAR-ORB-001 PAR-14 fcNominal | — |
| EV-03 | REQ-ECLSS-10 | potableTanks | ＝ 4 | 標準ミッション（設計） | 4 | 満たす | SSD-PAR-ORB-001 PAR-06 waterTanks | — |
| EV-04 | REQ-ECLSS-10 | tankCapacity | ＝ 165 lb | 標準ミッション（設計） | 165 lb | 満たす | SSD-PAR-ORB-001 PAR-07 waterPerTank | — |
| EV-05 | REQ-SYS-06 | orbitStayDuration | 4〜16 d | 標準ミッション（設計） | 10 d | 満たす | SSD-PAR-ORB-001 PAR-02 days | — |
| EV-06 | REQ-SYS-13 | extensionDays | ≧ 2 d | 標準ミッション（設計） | 2 d | 満たす | SSD-PAR-ORB-001 PAR-03 reserveDays | 前提の値（LiOH は予備日数を含めると不足：CON-02） |
| EV-07 | REQ-SYS-17 | eomLandingWeight | ≦ 233000 lb | 解析（設計） | 233,000 lb | 満たす | SSD-ANA-ORB-001 eomForwardCg.landingWeight | 上限ちょうどの重量で解析 |
| EV-08 | REQ-SYS-06 | orbitStayDuration | 4〜16 d | STS-1（実績） | 2.26 d | 満たさない | SSD-IND-ORB-001 STS-1 の離昇〜着陸（約54.35時間） | STS-1 は2日間の試験飛行 |
| EV-09 | REQ-SYS-06 | orbitStayDuration | 4〜16 d | STS-114（実績） | 13.9 d | 満たす | SSD-IND-ORB-001 AV-23 | — |
| EV-10 | REQ-SYS-06 | orbitStayDuration | 4〜16 d | STS-125（実績） | 12.9 d | 満たす | SSD-IND-ORB-001 AV-35 | — |
| EV-11 | REQ-SYS-17 | eomLandingWeight | ≦ 233000 lb | STS-114（実績） | 226,199.0 lb | 満たす | SSD-IND-ORB-001 AV-22 | — |
| EV-12 | REQ-SYS-17 | eomLandingWeight | ≦ 233000 lb | STS-125（実績） | 232,591.4 lb | 満たす | SSD-IND-ORB-001 AV-33 | 余裕は約 409 lb（本書の計算） |
| EV-13 | REQ-EPS-14 | purgeInterval | ≦ 12 h | STS-114（実績） | 23〜93 h | 満たさない | SSD-IND-ORB-001 AV-19 | 間隔は本書の計算（約80・88・93・23時間） |
| EV-14 | REQ-EPS-14 | purgeInterval | ≦ 12 h | STS-125（実績） | 24〜49 h | 満たさない | SSD-IND-ORB-001 AV-31 | 間隔は本書の計算（約24〜49時間） |
| EV-15 | REQ-SYS-13 | extensionDays | ≧ 2 d | STS-114（実績） | 1.5 d | 満たさない | SSD-IND-ORB-001 AV-16 | 着陸時の反応剤で 36時間。予備の2日のうち1日を天候で使った後 |
| EV-16 | REQ-SYS-13 | extensionDays | ≧ 2 d | STS-125（実績） | 1.17 d | 満たさない | SSD-IND-ORB-001 AV-28 | 着陸時の反応剤で 28時間 |
| EV-17 | REQ-OMS-11 | landingPropellantPerPod | ≦ 22 % | STS-125（実績） | 6.2〜8.7 % | 満たす | SSD-IND-ORB-001 AV-34 | 4つのタンクの残量の割合（本書の計算） |
| EV-18 | REQ-EPS-04 | fcContinuousPower | 2〜10 kW | STS-1（実績） | 5.25 kW | 満たす | SSD-IND-ORB-001 AV-02 | 飛行の平均電力 15.75 kW を3基で割った値（本書の計算） |
| EV-19 | REQ-EPS-04 | fcContinuousPower | 2〜10 kW | STS-114（実績） | 4.53 kW | 満たす | SSD-IND-ORB-001 AV-15 | 平均電力 13.6 kW を3基で割った値（本書の計算） |
| EV-20 | REQ-EPS-04 | fcContinuousPower | 2〜10 kW | STS-125（実績） | 5.0 kW | 満たす | SSD-IND-ORB-001 AV-27 | 平均電力 15.0 kW を3基で割った値（本書の計算） |
| EV-21 | REQ-SYS-05 | crewCapacity | ≦ 8 | STS-114（実績） | 7 | 満たす | SSD-IND-ORB-001 STS-114 の乗員 | — |
| EV-22 | REQ-SYS-05 | crewCapacity | ≦ 8 | STS-125（実績） | 7 | 満たす | SSD-IND-ORB-001 STS-125 の乗員 | — |

## 7. 判定のまとめ

要求ごとの判定の数と、満たさない判定を示す。

| 要求 | 判定 | 満たさない | 扱い |
|---|---|---|---|
| REQ-ECLSS-10 | 2 | — | — |
| REQ-EPS-04 | 4 | — | — |
| REQ-EPS-14 | 2 | EV-13・EV-14 | 見直し候補（要求の値か運用の前提） |
| REQ-EPS-19 | 1 | — | — |
| REQ-OMS-11 | 1 | — | — |
| REQ-SYS-05 | 2 | — | — |
| REQ-SYS-06 | 4 | EV-08 | 見直し候補（要求の値か運用の前提） |
| REQ-SYS-13 | 3 | EV-15・EV-16 | 見直し候補（要求の値か運用の前提） |
| REQ-SYS-17 | 3 | — | — |

## 8. 図

図124 は系ごとの区分（数値・数・定性）と制約の数、制約の演算の内訳、図125 は値による判定（満たす＝緑、満たさない＝赤）を示す。

## 9. SysML v2 テキスト

同じ内容を SysML v2 のテキスト [model/SSD-RQF-SYS-001.sysml](../../model/SSD-RQF-SYS-001.sysml) に示す。数値・数の要求の requirement def 184件（量の属性 383件と require constraint）と、要求モデルの要求への #refinement、判定の requirement 22件（Evaluations の中、属性に評価の値を入れた使用）と評価の対象への #EvaluatedWith から成る。OMG SysML v2 Pilot Implementation 0.62.0（2026-08 リリース、標準ライブラリ付き）で読み込んで、構文・名前の解決・型の検査で誤り 0件・警告 0件を確かめた。制約の真偽（判定）は本書の生成の中で計算した（Pilot は式を評価しない）。

## 10. 注記（出典間の相違・構成変更）

> **注記** REQ-EPS-14（燃料電池のパージ間隔 12時間以内）は、STS-114・STS-125 の実績（約23〜93時間）で満たさない。運用飛行規則 A9-52 の 96時間までとも合わず、要求の値の見直し候補（Rev. O・S と同じ）。

> **注記** REQ-SYS-13（2日の延長）は、標準ミッションの前提（予備2日）では満たすが、STS-114（予備1日を使った後で 36時間）・STS-125（28時間）の着陸時の反応剤では満たさない。実績の延長は乗員数・電力・予備日の使い方で変わる。

> **注記** REQ-SYS-06（軌道滞在 4〜16日）を STS-1（約2.3日）は満たさない。STS-1 は試験飛行で、運用の要求の範囲の外である。

> **注記** 形式化は要求書の値の欄からの下書きを本書が確かめたもので、要求の意味を変えていない。値の欄に単位が無い・意味がはっきりしないもの（REQ-EVA-05 の O2 約 850、REQ-RCS-07 の括弧の値、REQ-ECLSS-06 の 120 lb/h）は条件の欄・定性の理由に書いた。

> **注記** 要求どうしの値の違い：REQ-MPS-08 は LO2 の上限を 25 psig、REQ-ET-02 は 22 psig とする（資料の運用圧と上限の違い）。

> **注記** NASA-STD-3001 との照合：REQ-CREW-03（検証の判定 VC-REQ-CREW-03 pass）は [V2 6115]（HSI-162） による評価では 不適合。既存の判定と 3001 による評価が食い違うが、判定は据え置く（[SSD-HSI-SYS-001](SSD-HSI-SYS-001.md) §7）。

> **注記** 値による判定と、人間系の基準（NASA-STD-3001）による評価との食い違いは [SSD-HSI-SYS-001](SSD-HSI-SYS-001.md) に示す（SysML v2 テキスト：model/SSD-HSI-SYS-001.sysml）。

## 11. 参考文献

1. OMG Systems Modeling Language (SysML) Version 2.0 仕様 — https://www.omg.org/spec/SysML/2.0
2. SysML v2 Release（OMG SysML v2 Pilot Implementation の公開リリース・標準ライブラリ） — https://github.com/Systems-Modeling/SysML-v2-Release

## 12. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-03 | 初版作成（要求 212件の区分：数値 122・数 62・定性 28、制約 383件、値による判定 22件（満たさない 5件）、図124・125、SysML v2 テキスト） |
| Rev. A | 2026-10-06 | NASA-STD-3001 による評価との食い違い 1件の要求を注記（判定は据え置き）、人間系の基準の照合表 SSD-HSI-SYS-001 への参照を注記（Rev. AY） |
