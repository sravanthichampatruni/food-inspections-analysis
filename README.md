# Chicago Food Inspections: Where Should Inspectors Look First?

> One-line summary: [fill in after analysis, e.g. "Analyzed 317K inspections to find which facility types, ZIP codes, and repeat offenders drive failed inspections."]

## Business Problem
A city health department cannot inspect every food business equally often. Which facility types, locations, and violations are most linked to failed inspections, and which repeat offenders should be inspected first?

## Dashboard
[Interactive Tableau Public dashboard](PASTE-LINK-HERE)

![Dashboard](dashboard/dashboard.png)

## Dataset
- City of Chicago Data Portal: **Food Inspections** (see `data/raw/README.md` for download steps)
- Each row is one inspection: facility, risk level, date, result, and a long text of violations
- Size: 317,225 inspections and 17 columns
- 227,719 inspections list at least one violation; splitting that text gives 1,027,296 violation rows (about 4.5 per inspection)
- No duplicate rows and no duplicate Inspection IDs

## Tools
- **Python** (pandas, matplotlib, seaborn) in Jupyter notebooks: cleaning and exploration
- **SQL** (PostgreSQL): business questions answered with joins, CTEs, and window functions
- **Tableau Public**: interactive dashboard with map and filters
- **Git/GitHub**: version control

## Process
1. Cleaned and standardized the data (`notebooks/01_cleaning.ipynb`): column names, dates, text, ZIP and license types
2. Split the combined violations text into one row per violation, with a violation code and description
3. Explored patterns (`notebooks/02_eda.ipynb`)
4. Answered business questions in SQL (`sql/`)
5. Built a Tableau dashboard (`dashboard/`)

## Key Findings
1. 19.3% of all 317,225 inspection records are a Fail (61,090). Counting only real inspections (Pass, Pass W/ Conditions, Fail; 272,331 rows), the failure rate is 22.4%.
2. 52% of records are a Pass (164,230) and 15% are Pass W/ Conditions (47,011). The rest are visits where no inspection took place: Out of Business (25,944), No Entry (14,217), Not Ready (4,637) and Business Not Located (96).
3. [Finding with a number]
4. [Finding with a number]

## Recommendations
1. [Action]
2. [Action]
3. [Action]

## Limitations
- Inspections are not random, so a high fail rate may partly reflect where inspectors chose to go.
- Violations is empty for 89,506 inspections (28%). About 49% of these are visits where no inspection took place and about 46% are clean passes, so I kept these rows. 4,606 rows (about 5%) are Fail or Pass W/ Conditions with no violations listed, which may be a gap in the source data.
- 1,062 rows have no latitude or longitude, so they cannot be shown on a map.
- [Add more as you find them]

## How to Reproduce
1. Clone this repo and install packages: `pip install -r requirements.txt`
2. Download the data (see `data/raw/README.md`)
3. Run `notebooks/01_cleaning.ipynb`. It creates two files in `data/processed/` (git-ignored because of their size):
   - `inspections_clean.csv`: one row per inspection (317,225 rows)
   - `violations_clean.csv`: one row per violation (1,027,296 rows)

   Then run `notebooks/02_eda.ipynb`
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
