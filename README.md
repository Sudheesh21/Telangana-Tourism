# Telangana Tourism Data Analytics

A data analytics project I built to explore annual domestic and foreign
visitor data for Telangana from 2014 to 2023. I used **MySQL** for
querying and year-over-year analysis, **Microsoft Excel with VBA** to
automate reporting, and **Power BI** to create an interactive dashboard.

> **Data note:** The values used in this project were modified for
> demonstration purposes. They are not verified official Telangana
> tourism statistics. In particular, the 2016 visitor total is an
> extreme outlier in this dataset, so the findings should be treated as
> results from the project data---not as confirmed real-world tourism
> conclusions.

## Project Overview

The goal of this project was to build an end-to-end analytics workflow:
organize the data, calculate annual visitor totals and growth, automate
repeatable reporting, visualize trends, and summarize potential business
insights.

### Objectives

-   Analyze annual domestic and foreign visitor counts.
-   Calculate total visitors for each year.
-   Calculate year-over-year (YoY) growth or decline.
-   Identify the years with the highest and lowest recorded visitor
    totals.
-   Use Excel VBA to automate report formatting, summary generation, and
    chart creation.
-   Build a Power BI dashboard with KPIs, charts, a year slicer, and a
    growth table.
-   Present findings and recommendations while documenting data
    limitations.

## Tools and Technologies

  -----------------------------------------------------------------------
  Tool                                How I used it
  ----------------------------------- -----------------------------------
  MySQL                               Queried the tourism data and
                                      created an analytical view for
                                      annual totals and YoY growth.

  Microsoft Excel                     Organized and reviewed the analysis
                                      results and summary metrics.

  VBA                                 Automated report formatting,
                                      summary generation, and the annual
                                      visitor trend chart.

  Microsoft Power BI                  Built an interactive dashboard with
                                      KPI cards, annual charts, a year
                                      slicer, and a growth table.
  -----------------------------------------------------------------------

## Workflow

1.  **Data preparation:** Organized annual records by year, domestic
    visitors, and foreign visitors.
2.  **SQL analysis:** Calculated total visitors and used a window
    function (`LAG`) to compare each year with the previous year.
3.  **Excel automation:** Used VBA macros to format the report, generate
    a summary worksheet, and create a trend chart.
4.  **Dashboard development:** Built Power BI visuals to explore visitor
    counts and YoY growth.
5.  **Business insights:** Reviewed high and low visitor counts, annual
    changes, and potential data-quality issues.

## Key Analysis

The results below describe the current project dataset only.

-   **Highest recorded annual visitor total:** 2016.
-   **Lowest recorded annual visitor total:** 2017.
-   **Largest positive YoY change:** 2016.
-   **Largest negative YoY change:** 2017.
-   **Visitor mix:** Domestic visitors account for most of the recorded
    visitor total in this dataset.

The unusually high 2016 value strongly affects the chart scale and YoY
calculation. I have retained the project data as used in the analysis,
but it should be checked against an authoritative source before any
real-world interpretation or forecasting.

## Project Files

A suggested repository structure is:

``` text
Telangana-Tourism-Data-Analytics/
├── README.md
├── Telangana_Tourism_Analysis.sql
├── Telangana_Tourism_Analytics.xlsm
├── Telangana_Tourism_Analytics.pbix
├── Telangana_Tourism_Data_Analytics.pdf
└── screenshots/
    ├── powerbi-dashboard.png
    ├── excel-summary.png
    └── business-insights.png
```

Add only files you actually have. If you use different filenames, update
this list to match your repository. Screenshots are optional, but they
help visitors understand the project quickly.

## How to Explore the Project

### 1. MySQL

1.  Create or select the `TelanganaTourism` database.
2.  Load the `TourismData` table using your project dataset.
3.  Open `Telangana_Tourism_Analysis.sql` in a MySQL editor.
4.  Run the queries in order, checking that the table and column names
    match your database.
5.  Review the `TourismAnalysis` view for annual totals and YoY growth.

The SQL file assumes the database objects created during this project
are available. If you are using a fresh MySQL installation,
create/import the database and table first; the SQL analysis file is not
a replacement for the source dataset.

### 2. Excel and VBA

1.  Open `Telangana_Tourism_Analytics.xlsm` in Microsoft Excel.
2.  Enable macros only if you trust the workbook and its source.
3.  Review the `tourismanalysis`, `TourismSummary`, and
    `BusinessInsights` worksheets.
4.  Use `Alt + F8` to run the VBA macros saved in the workbook.

### 3. Power BI

1.  Open `Telangana_Tourism_Analytics.pbix` in Power BI Desktop.
2.  If prompted, configure the data source for your environment.
3.  Refresh the data if the source is available.
4.  Explore the KPI cards, annual visitor charts, year slicer, and YoY
    growth table.

## Screenshots

**Power BI Dashboard**

![Power BI dashboard](Images\PowerBI_Dashboard.jpg)

**Excel Summary**

![Excel summary](Images\Excel Summary.jpg)

**Business Insights**

![Business insights worksheet](Images\Excel_BusinessInsights.jpg)


## Limitations

-   The dataset values were modified for demonstration and are not
    verified official tourism statistics.
-   The extreme 2016 value materially affects the calculated growth rate
    and chart scale.
-   The analysis identifies patterns in the supplied data but does not
    prove why visitor counts changed.
-   The project does not establish a predictive model or causal
    explanation.

## Future Improvements

-   Replace the demonstration values with validated, authoritative
    tourism data.
-   Add data validation checks and document the data source and update
    date.
-   Analyze tourism by district, season, or visitor category if reliable
    data becomes available.
-   Improve the dashboard with clearer annotations for outliers and
    data-quality warnings.
-   Add automated refresh and a repeatable data-import process.

## What I Learned

Through this project, I practiced querying structured data with MySQL,
calculating year-over-year changes, automating Excel reporting with VBA,
and communicating results through Power BI visualizations. I also
learned why data validation and transparent limitations are important
when presenting analytical findings.

## Author

**Sudheesh V**

This project was created as a data analytics portfolio project.
