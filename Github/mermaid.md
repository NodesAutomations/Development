## horizontal hierarchy

```mermaid
  graph LR;
    Income[Income]-->AxisBankCurrent[Axis Bank Current];
    AxisBankCurrent-->|Savings|AxisBankSavings[Axis Bank Savings];
    AxisBankSavings-->ZerodhaKite[Kite]
    ZerodhaKite-->AxisBankSavings
    AxisBankSavings-->ZerodhaCoin[Coin]
    ZerodhaCoin-->AxisBankSavings
    AxisBankCurrent-->|Spending|JupiterBank[Jupiter Bank];
    JupiterBank[Jupiter Bank]-->AxisBankCredit[Axis Bank Credit Card];
```

## Project Structure
```mermaid
.
├── README.md             <- The project overview.
├── docs                  <- All project documents.
│   ├── doc-1.md
│   └── doc-2.md
└── notebooks             <- All project notebooks.
    ├── notebook-1.ipynb
    └── notebook-2.ipynb

```
