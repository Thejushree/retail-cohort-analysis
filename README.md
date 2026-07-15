# Customer Cohort Retention Analysis

Power BI dashboard analyzing customer retention for 4,300+ customers using cohort analysis. Cleaned 400K+ transaction records in MySQL, then built a retention heatmap in Power BI to track how many customers return each month after their first purchase.

## Key Findings
- December cohorts (2010 and 2011) retained noticeably better than other months
- Early 2010 cohorts showed weaker retention compared to later cohorts
- Analysis accounts for data right-censoring in the most recent cohorts (data window ends Dec 2011)

## Tools Used
- *MySQL* — data cleaning and transformation
- *Power BI* — cohort logic (DAX), retention matrix, dashboard visualization, Year and Country slicers

## Dataset
Transaction data from a UK-based online retailer, covering customers across multiple countries (Jan 2010 – Dec 2011)

## File
Retail_analysis.pbix — open in Power BI Desktop to explore the full interactive dashboard
