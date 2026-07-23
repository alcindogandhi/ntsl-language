" Vim syntax file
" Language:    NTSL (Nelogica ProfitChart)
" Based on:    Pascal syntax (NTSL eh uma linguagem derivada de Pascal)

if exists("b:current_syntax")
  finish
endif

" Reaproveita a gramatica do Pascal, jah embutida no Vim
runtime! syntax/pascal.vim
unlet! b:current_syntax

" ---------------------------------------------------------------------------
" Secao Input: declaracao de parametros de entrada da estrategia
" Exemplo:
"   Input
"       Preco (Close);
"       Periodo (2);
" ---------------------------------------------------------------------------
syn keyword ntslInputKeyword Input contained

syn region ntslInputBlock start="\c\<Input\>" end="\c\ze\<\(Var\|Begin\)\>" contains=ntslInputKeyword,ntslInputParam,pascalComment,pascalString,pascalNumber,pascalFloat
syn match ntslInputParam "[A-Za-zÀ-ÿ_][A-Za-zÀ-ÿ0-9_]*\ze\s*(" contained contains=NONE

" ---------------------------------------------------------------------------
" Funcoes de biblioteca do NTSL (Manual NTSL v4.3), por categoria
" ---------------------------------------------------------------------------
" Funcoes de Alarme (1)
syn keyword ntslFunction Alert

" Funcoes de Backtesting (38)
syn keyword ntslFunction AutomationResult AvgTradeResult AvgTradeResultDaily BuyAtMarket
syn keyword ntslFunction BuyLimit BuyPosition BuyPositionQty BuyPrice BuyStop
syn keyword ntslFunction BuyToCoverAtMarket BuyToCoverLimit BuyToCoverStop
syn keyword ntslFunction CancelPendingOrders ClosePosition DailyResult HasPendingOrders
syn keyword ntslFunction HasPosition IsBought IsSold LastTradeResult MyPrice
syn keyword ntslFunction NumberOfPendingOrders OpenResult Position PositionQty Price
syn keyword ntslFunction ReversePosition SellPosition SellPositionQty SellPrice
syn keyword ntslFunction SellShortAtMarket SellShortLimit SellShortStop
syn keyword ntslFunction SellToCoverAtMarket SellToCoverLimit SellToCoverStop SendOrder
syn keyword ntslFunction XRay

" Funcoes de Calendario (66)
syn keyword ntslFunction BarAnnualization BarDuration BarDurationF Bartype CalcDate
syn keyword ntslFunction CalcTime CalcWorkingDate CloseD CloseM CloseW CloseY
syn keyword ntslFunction CurrentAssetDate CurrentDate CurrentTime Date DayOfMonth
syn keyword ntslFunction DayOfWeek DaysToExpiration ELDate ELDate_Consol FindBar
syn keyword ntslFunction FirstWorkingDayOfMonth FirstWorkingDayOfWeek
syn keyword ntslFunction FirstWorkingDayOfYear Friday HighD HighM HighW HighY
syn keyword ntslFunction IsWorkingDay LastCalcDate LastCalcTime LastDayOfMonth
syn keyword ntslFunction LastWorkingDayOfMonth LastWorkingDayOfWeek LastWorkingDayOfYear
syn keyword ntslFunction LowD LowM LowW LowY MinutesIntoWeek Monday Month Next3rdFriday
syn keyword ntslFunction OpenD OpenM OpenW OpenY QuarterEnd QuarterStart RS_BarsPerDay
syn keyword ntslFunction Saturday Sunday Thursday Time TimeExchange TimeToMinutes Today
syn keyword ntslFunction Tuesday VolumeD VolumeM VolumeW VolumeY Wednesday Year Yesterday

" Funcoes de Candlestick (8)
syn keyword ntslFunction C_3WhSolds_3BlkCrows C_BullEng_BearEng C_Doji
syn keyword ntslFunction C_Hammer_HangingMan C_MornDoji_EveDoji C_MornStar_EveStar
syn keyword ntslFunction C_PierceLine_DkCloud C_ShootingStar

" Funcoes de Graficas (40)
syn keyword ntslFunction AvgPrice BarCount ConsoleLog CurrentBar GetPlotColor
syn keyword ntslFunction GetPlotWidth GraphicInterval GraphicOffset HorizontalLine
syn keyword ntslFunction HorizontalLineCustom LastBarOnChart Leader LineSegment
syn keyword ntslFunction MaxBarsBack MaxBarsForward MedianPrice NoPlot PaintBar Plot
syn keyword ntslFunction Plot2 Plot3 Plot99 PlotCandle PlotN PlotText RGB Range
syn keyword ntslFunction RangeLeader SetPlotColor SetPlotStyle SetPlotType SetPlotWidth
syn keyword ntslFunction TrueHigh TrueLow TrueRange TrueRangeCustom TypicalPrice
syn keyword ntslFunction VerticalLine VerticalLineCustom WeightedClose

" Funcoes de Indicadores (162)
syn keyword ntslFunction ADX AccAgressSaldo AccuDistr AccuDistrW AdaptiveMovingAverage
syn keyword ntslFunction AgressionVolBalance AgressionVolBuy AgressionVolSell AllTimeHigh
syn keyword ntslFunction AllTimeLow ArmsEaseOfMov AroonLin AroonOsc AutoFibonacci
syn keyword ntslFunction AutoFibonacciCustom Averan AvgAgent AvgAgrBuySell AvgAgrTotal
syn keyword ntslFunction AvgSeparation AvgTrueRange BTCPrice BTCSpread BalanceAgent
syn keyword ntslFunction BalanceOfPower BearPower BidAsk BollingerBPerc BollingerBandW
syn keyword ntslFunction BollingerBands BullPower CCI COHENPRICEWAVE COHENWEISWAVE
syn keyword ntslFunction ChaikinMoneyFlow ChaikinOsc ChainSetup ContadorDeCandle
syn keyword ntslFunction DTOscillator DarvasBox DecisionPoints DiDiIndex DiMaisDiMenos
syn keyword ntslFunction DiPDiM DivergenceDetector DonchianCh EMA Envelope Euroinvest
syn keyword ntslFunction FastStochastic FastWMA FgzRobot FinancialVol ForceIndex
syn keyword ntslFunction FrassonATR FrassonVH FullStochastic FuraChao FuraTeto HeikinAshi
syn keyword ntslFunction HiLoActivator HighestVolume HighestVolumePrice HistVolatility
syn keyword ntslFunction HullMovingAverage IFR IchimokuCloud ImpliedVolatility KVO
syn keyword ntslFunction KeltnerCH LSVolatilityIndex LinearRegressionChannel MACD
syn keyword ntslFunction MADRIDMOVINGAVERAGE MADRIDTRENDSQUEEZE MAGOMACD MAGOMEDIAS MFI
syn keyword ntslFunction MIMA MIMAROC Momentum MomentumStochastic MoneyFlow
syn keyword ntslFunction MoneyFlowIndex NelogicaBottomFinder NelogicaPullBackFinder
syn keyword ntslFunction NelogicaWeisWave OBV OBVAvg OnBalanceTR OpenDaily OpenInterest
syn keyword ntslFunction PTAX PTAXFuturo PaintVar ParabolicSAR Phibo Pivot PowerMeter
syn keyword ntslFunction PriceNery PriceOsc PriceVolumeTrend PriorCote QuantityVol RBG
syn keyword ntslFunction ROC RSI Rafi Ravi RenkoVTwo RsiStochastic SMA
syn keyword ntslFunction SOMOSRENKOTRENDMPONTO SafeZoneDownTrend SafeZoneUpTrend
syn keyword ntslFunction SampleAverage SampleBollinger SampleMACD SampleRSI
syn keyword ntslFunction SampleStochastic SampleVWAP Santo SlowStochastic
syn keyword ntslFunction StdDevConstPeriod StopATR TENDENCYTRACKER TOSCANABRUNELLO
syn keyword ntslFunction TOSCANAPICCOLA TOSCANAPICCOLO TOSCANAPRODUTIVIDADE TOSCANART
syn keyword ntslFunction TRADENCIATRENDVARIATION TRENDAVERAGE TRENDCLOUD TRENDDIFUSOR
syn keyword ntslFunction TRENDFLOW TRENDSNIPER TRENDSOLDIER TRENDVOLAG TRIX TRIXM TRPTAX
syn keyword ntslFunction TRPTAXFuturo TWOMVVOLATILITY Tilson TimeAgrBuySell
syn keyword ntslFunction TimeAgrSellBuy TimeAgrTotal TopBottomDetector Trades
syn keyword ntslFunction TwoMVAggression TwoMVPower VSS VWAP VWAPDate VWAPMonthly
syn keyword ntslFunction VWAPWeekly VWMA Valerie VolumeAgent VolumeAtPrice Williams

" Funcoes de Livro (16)
syn keyword ntslFunction AskPrice AskSize BidPrice BidSize BookSpread BuyOfferCount
syn keyword ntslFunction GetAsset GetFeed IsBMF Lote MinOrderIncrement MinOrderQty
syn keyword ntslFunction MinPriceIncrement SellOfferCount TotalBuyQtd TotalSellQtd

" Funcoes de Matematicas (44)
syn keyword ntslFunction ABS Arctangent Ceiling Combination Cos Cosine Cotangent Exp
syn keyword ntslFunction ExpValue ExtremePriceRatio Factorial FastD FastK Floor
syn keyword ntslFunction FracPortion GCD IntPortion Log LogN Max Min MinutesToTime Mod
syn keyword ntslFunction Neg NumUnits PercentR Permutation Pos Power PowerF Random Round
syn keyword ntslFunction Round2Fraction Sign Sin Sine SlowK Sqrt Square Tangent
syn keyword ntslFunction UltimateOscillator Volatility VolumeOsc VolumeROC

" Funcoes de Opcoes (6)
syn keyword ntslFunction Delta Gamma Rho Strike Theta Vega

" Funcoes de Screening (1)
syn keyword ntslFunction Select

" Funcoes de Usuario (21)
syn keyword ntslFunction Cum FastKCustom HarmonicMean Highest HighestBar Lowest LowestBar
syn keyword ntslFunction Media MediaExp MidPoint PercentChange PriceOscillator
syn keyword ntslFunction RateOfChange SlowD StdDevs Summation TriAverage UlcerIndex
syn keyword ntslFunction WAverage WellesSum xAverage

" Funcoes de Utils (4)
syn keyword ntslFunction AssetHasValue BoolToString CompareFloat FloatToString

hi def link ntslInputKeyword pascalStatement
hi def link ntslFunction pascalFunction
hi def ntslInputParam guifg=#68a8d8 ctermfg=68

let b:current_syntax = "ntsl"
