# **Telco Customer Churn Analysis – End-to-End Project**
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=flat&logo=microsoft-sql-server&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Power BI](https://img.shields.io/badge/BI-Power%20BI-yellow)

---
## **DATASET LINK**: 
https://www.kaggle.com/datasets/blastchar/telco-customer-churn

## 📌 Project Overview

This repository delivers an end-to-end data analytics solution focused on **telecommunication subscriber retention**. 

Driven by a critical **26.6% churn rate** that threatens the enterprise's bottom line, the project constructs a robust pipeline leveraging:
* 🛢️ **SQL Server** for data orchestration and staging.
* 🐍 **Python** for advanced feature engineering and predictive modeling.
* 📊 **Power BI** for dynamic executive dashboards.

By uncovering core churn drivers and flagging high-risk accounts before they defect, this framework equips businesses with the predictive insights needed to deploy targeted retention campaigns and secure **Customer Lifetime Value (LTV)**.

---
## 🎯 Motivation & Objectives

In subscription-based industries, customer attrition represents one of the most significant financial drains, as user acquisition costs far exceed proactive retention investments. 

I developed this end-to-end project to:
* 🔍 **Uncover Defection Root Causes:** Deep-dive into behavioral data to isolate why subscribers terminate services.
* ⚠️ **Detect Early Flight Signals:** Extract high-risk indicators to flag vulnerable accounts before revenue leakage occurs.
* ⚙️ **Integrate Analytics Disciplines:** Bridge the gap between descriptive diagnostics and advanced predictive modeling.
* 💼 **Drive Revenue Decisions:** Translate machine learning probabilities into practical, high-ROI corporate retention workflows.

This architecture directly mirrors the core responsibilities of an enterprise Data Analyst, where statistical insights must actively protect top-line margins and drive executive decisions.
---
## **Business Context**
Telecom businesses rely on:
- Revenue from monthly subscriptions
- Long-term connections with clients
- Low switching costs and intense competition

A high rate of turnover indicates:
- Loss of steady income
- A rise in the amount spent on acquisitions
- Decreased CLV, or customer lifetime value
In order to make interventions **before customers leave**, the company must determine **who is likely to churn and why**.


---
## **Problem Objective**

Analyse telecom customer data to:
- Assess and comprehend **customer churn**
- Determine the primary causes of churn.
- Anticipate **high-risk clients**
- Encourage **targeted retention strategies** that yield the highest return on investment(ROI).

---
## 🔬 Core Analytical Hypotheses

To guide the exploratory data analysis (EDA) and structure the predictive modeling phase, the following core hypotheses were established:

* **H1 (Tenure Impact):** A strong negative correlation exists between customer loyalty and churn, meaning subscribers in their early adoption cycles (low tenure) present the highest defection risk.
* **H2 (Price Sensitivity):** Financial strain acts as a primary churn trigger; higher monthly billing rates directly accelerate subscriber attrition.
* **H3 (Contractual Fluidity):** Subscription structures dictate stability; flexible, month-to-month contracts suffer significantly higher churn compared to long-term commitments.
* **H4 (Behavioral & Operational Triggers):** Digital billing preferences, automatic payment methods, and premium technical service adoption serve as critical drivers of customer retention.

These foundational assumptions served as the analytical framework for validating patterns within our subscriber data..

---
## 📊 Dataset & Feature Architecture

The analysis is executed on a refined cohort of subscriber profiles, structured to isolate behavioral deviations between loyal and departing segments.

* **Total Evaluated Cohort:** **7,032 subscribers** (Post database-level data cleansing)
* **Target Analytical Feature:** `Churn` (Binary Class: Yes / No)
* **Base Attrition Distribution:**
  * **73.42% Retained** (5,163 Active Accounts)
  * **26.58% Churned** (1,869 Defected Accounts)

---

### 🗂️ Core Feature Categorization

The dataset features are organized into three primary operational dimensions to capture holistic customer behavior:

| Feature Dimension | Target Variables | Strategic Analytical Purpose |
| :--- | :--- | :--- |
| **Demographic Profiles** | `gender`, `SeniorCitizen`, `Partner`, `Dependents` | Evaluates socioeconomic stability and core user lifecycle traits. |
| **Ecosystem & Service Adoption** | `PhoneService`, `MultipleLines`, `InternetService`, `OnlineSecurity`, `OnlineBackup`, `DeviceProtection`, `TechSupport`, `StreamingTV`, `StreamingMovies` | Measures product engagement, cross-selling potential, and ecosystem stickiness. |
| **Account & Financial Metrics** | `tenure`, `Contract`, `PaperlessBilling`, `PaymentMethod`, `MonthlyCharges`, `TotalCharges` | Pinpoints pricing sensitivity, billing friction points, and contractual vulnerabilities.

---
## **Dashboard Overview**
<img src="Telco Churn analysis dashboard.png" width="100%">

---

## ⚙️ End-to-End Analytics Workflow

### 1. Data Ingestion & Relational Staging (`SQL Server`)
* **Source Acquisition:** Sourced the raw telecom subscriber profile metrics.
* **Database Schema Design:** Designed a relational schema within a localized SQL Server environment, ensuring optimized initial data types for noisy transactional artifacts.
* **Data Integrity Enforcement:** Stored and structured data directly in **SQL Server**, performing basic staging tasks and database-level text cleaning to prepare records for downstream analytics pipelines.

### 2. Extraction, Cleansing & Feature Engineering (`Python`)
* **Pipeline Integration:** Established database connectivity using **Pandas, pyodbc, and SQLAlchemy** to securely extract relational data into an isolated runtime.
* **Exploratory Data Analysis (EDA):** Discovered underlying structural errors, such as empty string anomalies in `TotalCharges` originating from zero-month tenure accounts, and converted columns to strict float types.
* **Feature Engineering:** Implemented multi-categorical transformation via categorical encoding (`LabelEncoder`, `pd.get_dummies`), and normalized continuous metrics with scaling techniques (`StandardScaler`).

### 3. Predictive Modeling & Probability Calibration (`Machine Learning`)
* **Statistical Auditing:** Evaluated feature impact matrices to extract specific churn coefficients and identify critical customer flight drivers.
* **Model Training & Selection:** Built and validated multi-class classifiers, including baseline **Logistic Regression** and robust **Random Forest Classifiers**, to capture both linear and non-linear data distributions.
* **Probability Engine:** Utilized the high-performing Logistic Regression model to generate dynamic, unique output probabilities (`Churn_Probability`) for every active subscriber.

### 4. Interactive Enterprise Dashboarding (`Power BI`)
* **Data Model Deployment:** Imported the calibrated machine learning outputs and predictive matrices back into Power BI Desktop.
* **Executive Visualization Layer:** Built a dashboard containing:
  * High-level Churn KPIs (Attrition Rates, Total Subscriber Counts, Revenue At Risk).
  * Cohort Behavioral Segmentations (Tenure buckets, Contract categories).
  * High-Risk Account Identification lists for proactive operations.
  * Deep-dive feature drilldowns to view price sensitivity correlations.

### 5. Strategy Translation & Executive Reporting
* **Strategic Conversion:** Translated statistical feature weights and high-risk prediction scores into concrete financial revenue impacts.
* **Documentation:** Structured all technical codebases, corporate logic boundaries, analytical hypotheses, and high-ROI operational recommendations into a clean, scannable README asset.

---

## **Tools & Technologies Used**

- **SQL / SQLsever:** Data storage and retrieval  
- **Python:** Pandas, NumPy, Scikit-learn (EDA + modeling)  
- **Power BI:** Interactive dashboards and KPIs  
- **Jupyter Notebook:** Analysis and documentation

---
## **Key Outcomes**

- **Churn Rate:** **26.58%**
- **Retained Customers:** **73.42%**
- **High-Risk Customers Identified:** **6.33%**
- **Top Churn Drivers:** Low tenure, high monthly charges, digital billing  

---

## 🏆 Key Analytical Outcomes

The evaluation of the subscriber portfolio and predictive framework yields the following core data insights:

* **Portfolio Attrition (Churn Rate):** **26.58%** — A high-risk metric that exceeds healthy telecom operational baselines.
* **Customer Preservation (Retained Rate):** **73.42%** — Representing the current baseline stable subscriber cohort.
* **Critical Flight Hazards:** **6.33%** of the active customer base has been isolated by the machine learning engine as immediate high-risk (Churn Probability > 0.7).
* **Primary Attrition Catalysts:** The model flags **account longevity (low tenure)**, **financial strain (high monthly charges)**, and **administrative friction (paperless/digital billing dependencies)** as the dominant drivers of customer flight.

---

## 🔍 Deep-Dive Analytical Insights

### ⏳ Customer Lifecycle & Tenure Trajectory
* **Loyal Cohort Benchmark:** Retained subscribers exhibit a strong median longevity of **38 months**.
* **Critical Attrition Window:** Churned customers present a narrow median tenure of just **10 months**.
* **Strategic Takeaway:** The risk profile is heavily concentrated in the onboarding and early adoption phases. Newly acquired accounts are exponentially more volatile, demanding immediate proactive stabilization.

### 💳 Pricing Elasticity & Billing Metrics
* **Retained Segment Cost:** Active accounts maintain a stable median monthly billing rate of **$64.50**.
* **Churned Segment Cost:** Departed accounts reflect an elevated median monthly bill of **$79.70**.
* **Strategic Takeaway:** Financial strain and sudden price barriers act as direct catalysts for flight. Subscribers show high price sensitivity when their monthly costs cross the ~$75 threshold without proportional value add-ons.

### 💰 Portfolio Value & Financial Leakage
* **Retained Customer LTV:** Surviving accounts yield a substantial median lifetime spend of **$1,683.60**.
* **Defected Customer LTV:** Churned accounts terminate with a heavily reduced median lifetime spend of **$703.50**.
* **Strategic Takeaway:** Early-stage churn severely disrupts compound cash flows and cuts Customer Lifetime Value (LTV) by more than half, causing measurable top-line revenue leakage.

### 🤖 Machine Learning-Driven Risk Projections
* **Portfolio Baseline:** The aggregate customer base carries an average churn probability score of **0.27**.
* **Immediate High-Risk Threats:** **6.33%** of active subscribers have been flagged by the predictive model with a critical churn probability exceeding **0.70**.
* **Strategic Takeaway:** This high-probability segment represents the absolute top-priority tier for immediate automated target interventions and personalized save-desk campaigns.

---

## 📈 Strategic Business Impact

The business integration of this predictive pipeline transforms reactive customer support into a proactive revenue defense system:

* 🎯 **Precision Preservation Marketing:** Transitions the enterprise from expensive, low-ROI mass marketing campaigns toward hyper-targeted, high-yielding retention efforts focused exclusively on verified high-risk profiles.
* 🛡️ **Shielding Customer Lifetime Value:** Directly stabilizes long-term corporate recurring revenue (ARR) by deploying specific cross-sell or contractual incentives before the 10-month attrition wall is hit.
* 🛑 **Preventing Revenue Leakage:** Minimizes structural financial damage caused by early lifecycle terminations, ensuring a rapid and maximized return on customer acquisition costs (CAC).
* 📊 **Operational Agility:** Equips management and frontline retention teams with automated probability lists to handle vulnerable accounts with precise, prescriptive saving solutions.

---
## 🎯 Strategic Recommendations & Action Plan

Based on the statistical boundaries and predictive risk scores, the enterprise should prioritize the following seven data-driven interventions:

1. **Optimize Early Lifecycle Onboarding:** Design targeted engagement workflows and milestone check-ins within the first 12 months to directly neutralize the critical 10-month churn wall.
2. **Implement Price-Elasticity Safeguards:** Introduce proactive billing audits and transparency measures for high-tier accounts crossing the critical ~$75 monthly charge threshold to mitigate cost-driven flight.
3. **Streamline Digital Billing Experiences:** Audit and refine paperless billing structures to remove friction points, ensuring clear, automated communications that diminish administrative dissatisfaction.
4. **Deploy Precision Retention Campaigns:** Focus high-value incentives and active "save-desk" interventions exclusively on the **top 6.33% highest-risk customer segment** (those flagged with a Churn Probability > 0.70) to maximize marketing ROI.
5. **Incentivize Contractual Stabilization:** Design compelling pricing tiers or service upgrades to structurally migrate flexible month-to-month subscribers into secure, stable 1 or 2-year term commitments.
6. **Bundle Zero-Cost Technical Support:** Introduce complimentary introductory remote tech support layers for newly acquired accounts, establishing ecosystem stickiness early on.
7. **Institutionalize Lifetime Value Tracking:** Transition core operational review metrics from static churn tracking to dynamic **Customer Lifetime Value (LTV)** mapping alongside customer acquisition costs (CAC).

---

## 🏆 Final Analytical Takeaway

Subscriber attrition within the telecommunications landscape is rarely a random event; it is a direct function of **early-stage lifecycle dissatisfaction, billing threshold pressure, and contractual fluidity**. 

By successfully uniting relational data management (**SQL Server**), advanced machine learning classification (**Python**), and corporate business intelligence (**Power BI**), this framework transitions the enterprise from a vulnerable position 
of *reactive churn management* into an agile posture of **proactive data-driven customer retention**. Implementing these insights directly secures long-term revenue streams, stabilizes recurring portfolios, and elevates customer satisfaction metrics across the board.


## 🚀 How to Run

### Step 1: Database Setup (`SQL Server`)
* Open **SSMS** and execute the script `Telco churn analysis- create database.sql` to initialize the database and tables.

### Step 2: Predictive Pipeline (`Python`)
* Clone the repository and install dependencies:
  ```bash
  git clone [https://github.com/NGUYENBATIN/Telco-Customer-Churn-Analysis-Project.git](https://github.com/NGUYENBATIN/Telco-Customer-Churn-Analysis-Project.git)
  pip install pandas numpy scikit-learn pyodbc sqlalchemy








