### Pine Script for Super trend with ATH line
```
// This source code is subject to the terms of the Mozilla Public License 2.0 at https://mozilla.org/MPL/2.0/
// © akrizary

//@version=5
indicator(title="Super Trend with ATH", overlay=true)

// GetChartHighest() returns the highest value of the given argument
// for the entire chart. That `dataSeries` argument is optional and
// defaults to the bar high prices when not set.
// Note: call this function on every bar for calculation consistency.
// Also, function's output depends on how many bars TradingView loaded
// on chart.
GetChartHighest(dataSeries = high) =>
    var chartHighest = dataSeries
    if dataSeries > nz(chartHighest, -1e10)
        chartHighest := dataSeries
    chartHighest


// GetAllTimeHigh() returns the all-time highest value for the given
// series.
// Call this function on every bar for calculation consistency.
// The function's result depends on how much historical data
// TradingView has for the instrument and exchange combination.
GetAllTimeHigh(dataSeries = high) =>
    highestHTF = request.security(syminfo.tickerid, "D", 
         GetChartHighest(dataSeries)[1], lookahead=barmerge.lookahead_on)
    highestChartTF = GetChartHighest(dataSeries)
    math.max(highestHTF, highestChartTF)


// Get and plot the all-time high
plot(series=GetAllTimeHigh(), color=color.white, linewidth=1,title="All-Time High")

atrPeriod = input(7, "ATR Length")
factor = input.float(3.0, "Factor", step = 0.01)

[supertrend, direction] = ta.supertrend(factor, atrPeriod)

bodyMiddle = plot((open + close) / 2, display=display.none)
upTrend = plot(direction < 0 ? supertrend : na, "Up Trend", color = color.green, style=plot.style_linebr)
downTrend = plot(direction < 0? na : supertrend, "Down Trend", color = color.red, style=plot.style_linebr)

fill(bodyMiddle, upTrend, color.new(color.green, 90), fillgaps=false)
fill(bodyMiddle, downTrend, color.new(color.red, 90), fillgaps=false)
```
