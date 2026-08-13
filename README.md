# E-commerce Sales Performance Analysis

End-to-end analysis of e-commerce sales: where revenue comes from, how users behave, which channels and devices perform better, and where the data has issues.

**SQL · Python · Statistics · Tableau**

## Business Context

The goal was to understand what is associated with revenue — geography, devices, acquisition channels, and differences between registered and anonymous users — and how reliable the data is for decision-making.

## Key Results

| Metric | Result |
| --- | --- |
| Total Revenue | $31.97M |
| Sessions | 349.5K |
| Registered Users | 27.9K |
| Revenue per Session | $91.47 |
| Americas share | 55.25% |
| Organic Search share | 35.76% |
| Desktop share | 59.00% |

**Statistical findings:**

- Sessions and revenue are strongly correlated (r = 0.791, p < 0.0001).
- Registered users show an even stronger correlation with daily revenue (r = 0.955, p < 0.0001).
- There is no statistically significant difference in revenue per session between registered and anonymous users (Mann–Whitney U = 3619, p = 0.2201).

## What Was Done

Data was pulled from several BigQuery tables, cleaned, and validated for types, missing values, and duplicates. Core metrics were calculated across continents, countries, channels, and devices. Several hypotheses were tested statistically. The results were brought together in two Tableau dashboards.

## Key Insights

- Americas generate more than half of total revenue. Other regions lag noticeably behind.
- Organic Search is the strongest individual channel by revenue. Paid Search comes second.
- Desktop accounts for 59% of revenue, compared with 39% for mobile.
- Registered users are strongly associated with daily revenue, but the difference in average revenue per session versus anonymous users is small and not statistically significant.
- Data quality issue: from Jan 28–31, almost all `price` values are missing, so revenue for those days appears as zero.

## Recommendations

- Dig deeper into Americas and Organic Search — these are the largest contributors.
- Monitor the difference between desktop and mobile revenue when evaluating acquisition and user experience decisions.
- Track registration metrics alongside revenue. The correlation is strong, even though causation is not proven.
- Fix the missing `price` values before using late-January figures for business decisions.

## Tableau Dashboard

Two dashboards:

- **Executive Overview** — high-level view of revenue, sessions, geography, and devices.
- **Sales Performance** — registration, channels, trends, and product categories.

[View Interactive Dashboard](https://public.tableau.com/views/GlobalE-commerceSalesPerformanceAnalysis/ExecutiveOverview)

## Project Structure

```text
ecommerce-sales-performance-analysis/
├── python/
│   └── analysis.ipynb
├── sql/
│   ├── analysis.sql
│   └── README.md
├── tableau/
│   ├── Executive Overview.png
│   ├── Sales Performance.png
│   └── README.md
└── README.md
