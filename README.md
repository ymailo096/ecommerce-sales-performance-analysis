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

## Executive Summary

Days with more sessions generally brought higher revenue (r = 0.791, p < 0.0001). An even stronger relationship was found between registered users and daily revenue (r = 0.955, p < 0.0001).

Three patterns stood out across the analysis:
- Americas generated the largest share of revenue (55.25%, $17.67M)
- Organic Search was the top acquisition channel (35.76%, $11.43M)
- Desktop brought in more revenue than Mobile and Tablet (59.00% vs 38.73% vs 2.26%)

Not every difference turned out to be statistically significant. Registered users generated $92.74 per session compared with $91.23 for anonymous users. The Mann–Whitney U-test (p = 0.2201) found no significant difference between the two groups.

A clear data-quality issue also appeared: revenue dropped to zero from January 28–31 because almost all `price` values were missing. This was not a real sales collapse, just incomplete data — a useful reminder that validation should come before interpretation.

## What Was Done

Data was extracted from several BigQuery tables, cleaned, and checked for types, missing values, and duplicates. Core metrics were calculated across continents, countries, channels, and devices. Several hypotheses were tested statistically. The results were collected in two Tableau dashboards.

## Recommendations

- Look more closely at Americas and Organic Search — these are the biggest contributors.
- Keep an eye on the desktop vs mobile revenue split when making acquisition and UX decisions.
- Track registration metrics together with revenue. The correlation is strong, even if causation is not proven.
- Fix the missing `price` values before using late-January numbers for any decisions.

## Tableau Dashboard

Two dashboards:

- **Executive Overview** — high-level view of revenue, sessions, geography, and devices
- **Sales Performance** — registration, channels, trends, and product categories

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
