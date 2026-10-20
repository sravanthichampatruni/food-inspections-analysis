# Chicago Food Inspections: Where Should Inspectors Look First?

> One-line summary: [fill in after analysis, e.g. "Analyzed 250K+ inspections to find which facility types, ZIP codes, and repeat offenders drive failed inspections."]

## Business Problem
A city health department cannot inspect every food business equally often. Which facility types, locations, and violations are most linked to failed inspections, and which repeat offenders should be inspected first?

## Dashboard
[Interactive Tableau Public dashboard](PASTE-LINK-HERE)

![Dashboard](dashboard/dashboard.png)

## Dataset
- City of Chicago Data Portal: **Food Inspections** (see `data/raw/README.md` for download steps)
- Each row is one inspection: facility, risk level, date, result, and a long text of violations
- Size: [fill in rows and columns after loading]

## Tools
- **Python** (pandas, matplotlib, seaborn) in Jupyter notebooks: cleaning and exploration
- **SQL** (PostgreSQL): business questions answered with joins, CTEs, and window functions
- **Tableau Public**: interactive dashboard with map and filters
- **Git/GitHub**: version control

## Process
1. Cleaned and standardized the data (`notebooks/01_cleaning.ipynb`)
2. Split the combined violations text into one row per violation
3. Explored patterns (`notebooks/02_eda.ipynb`)
4. Answered business questions in SQL (`sql/`)
5. Built a Tableau dashboard (`dashboard/`)

## Key Findings
1. [Finding with a number]
2. [Finding with a number]
3. [Finding with a number]
4. [Finding with a number]

## Recommendations
1. [Action]
2. [Action]
3. [Action]

## Limitations
- Inspections are not random, so a high fail rate may partly reflect where inspectors chose to go.
- [Add your own, e.g. data quality issues you found]

## How to Reproduce
1. Clone this repo and install packages: `pip install -r requirements.txt`
2. Download the data (see `data/raw/README.md`)
3. Run `notebooks/01_cleaning.ipynb`, then `notebooks/02_eda.ipynb`
4. Load the processed data into PostgreSQL and run the files in `sql/`

## Repository Structure
```
data/        raw and processed data (large files are git-ignored)
notebooks/   Python analysis
sql/         table setup and business-question queries
dashboard/   screenshot and Tableau link
reports/     problem statement and findings
```

## Author
Sravanthi | [LinkedIn](PASTE-LINK) | [GitHub](https://github.com/sravanthichampatruni)
