# FreshMart Retail Inventory Optimisation & Stockout Prevention

## Business Problem
FreshMart Retail Pvt. Ltd. operates 5 warehouse locations across India. The operations
team identified that 18–22% of SKUs go out of stock during peak demand periods, resulting
in estimated ₹35–40 lakh in lost monthly revenue. Simultaneously, ~15% of SKUs are
overstocked, unnecessarily tying up working capital.

## Objective
As the Business Analyst, I was tasked to:
1. Identify products at highest stockout and overstock risk
2. Build a demand forecasting model to predict future inventory needs
3. Design an automated reorder recommendation engine
4. Deliver an executive Power BI dashboard for weekly monitoring

## Key Business Outcomes
- Identified top 12 high-risk SKUs responsible for 73% of all stockout events
- Forecasted demand with 89% accuracy using Prophet time-series model
- Recommended reorder strategy estimated to reduce stockout losses by ₹28L/month
- Built a live Power BI dashboard adopted by the operations team

## Tools & Technologies
Python (Pandas, NumPy, Prophet, Scikit-Learn) · SQL · Power BI (DAX) · Excel

## Project Structure
- `data/` — raw, processed, and output datasets
- `notebooks/` — step-by-step Jupyter analysis notebooks
- `sql/` — all SQL queries for inventory KPI analysis
- `powerbi/` — final dashboard file
- `reports/` — phase PDFs and executive summary

## How to Run
1. Clone the repo
2. Install dependencies: `pip install -r requirements.txt`
3. Place raw CSVs in `data/raw/`
4. Run notebooks in order: 01 → 02 → 03 → 04