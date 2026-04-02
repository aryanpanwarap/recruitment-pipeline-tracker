# Recruitment Pipeline Tracker
### End-to-end data analysis project | Python · SQL · Power BI · Excel

---

## Problem Statement
Recruitment teams generate large volumes of candidate data but rarely analyze it systematically.
This project tracks 300 candidates across a full hiring pipeline — from application to offer —
to answer key business questions: Which sources convert best? Where do candidates drop off?
Which recruiters close the most hires?

---

## Dataset
- **Rows:** 300 candidates
- **Period:** April 2025 – April 2026
- **Columns:** id, candidate_name, role, source, app_date, stage, status, recruiter, years_exp

**Roles covered:** Frontend Developer, Backend Developer, UI/UX Designer, Product Manager, Data Analyst  
**Sources:** Naukri, LinkedIn, Indeed, Company Website, Employee Referral  
**Recruiters:** Sana Khan, Amit Verma, Vikram Singh, Priya Sharma  

---

## Tools & Tech Stack
![Python](https://img.shields.io/badge/Python-Pandas%20%7C%20Matplotlib-blue)
![SQL](https://img.shields.io/badge/SQL-SQLite-lightgrey)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Excel](https://img.shields.io/badge/Excel-Pivot%20Tables-green)

---

## Key Insights

| # | Insight | Finding |
|---|---------|---------|
| 1 | **Overall hire rate** | 38.7% (116 of 300 candidates hired) |
| 2 | **Best sourcing channel** | Naukri — 50% hire rate (highest among all sources) |
| 3 | **Weakest channel** | LinkedIn — only 31.6% hire rate despite 57 applications |
| 4 | **Top recruiter** | Sana Khan — 45.2% hire rate across 84 candidates |
| 5 | **Highest drop-off stage** | Offered stage — 37.3% of candidates who received offers were still rejected |
| 6 | **Easiest role to fill** | Frontend Developer — 45.2% hire rate |
| 7 | **Hardest role to fill** | Data Analyst — only 33.9% hire rate |
| 8 | **Peak hiring month** | March 2026 — 13 applications received |

---

## Project Structure
```
recruitment-pipeline-tracker/
│
├── MOCK_DATA.csv              # Raw dataset (300 rows)
├── analysis.ipynb             # Full Python EDA notebook
├── queries.sql                # 6 business SQL queries
├── dashboard.png              # Power BI / Matplotlib dashboard
└── README.md
```

---

## How to Run

```bash
# 1. Clone the repo
git clone https://github.com/aryanpanwarap/recruitment-pipeline-tracker

# 2. Install dependencies
pip install pandas matplotlib

# 3. Open the notebook
jupyter notebook analysis.ipynb
```

---

## SQL Queries Included
1. Pipeline funnel — candidates at each stage
2. Source conversion — hire rate by sourcing channel
3. Recruiter performance — hires and rejection rate per recruiter
4. Monthly trend — application volume over time
5. Role-wise conversion — hardest and easiest roles to fill
6. Drop-off analysis — where candidates exit the pipeline

---

## What I Learned
- Employee Referrals and Naukri significantly outperform LinkedIn for hire rate — suggesting budget reallocation away from LinkedIn
- The "Offered" stage has a 37% drop-off, meaning the company loses candidates after investing full interview effort — a major operational gap
- Priya Sharma has the highest rejection rate (41.9%) among recruiters, suggesting a possible mismatch in candidate screening criteria

---

## About This Project
Built as a domain-relevant portfolio project to demonstrate data analytics skills applied directly
to recruitment operations — the core business of companies like Affinity Steps.

**Author:** Aryan Panwar | [LinkedIn](https://linkedin.com/in/aryan-panwar03) | [GitHub](https://github.com/aryanpanwarap)
