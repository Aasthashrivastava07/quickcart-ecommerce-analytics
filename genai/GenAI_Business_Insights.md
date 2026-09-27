# QuickCart — GenAI Business Insights

## 1. Objective

The GenAI layer was used to convert validated QuickCart analytics into
clear, natural-language business insights.

The underlying analysis was performed using Excel, SQL, and Power BI.
GenAI was then used as an interpretation layer to summarize findings,
identify areas requiring further investigation, answer business
questions, and structure recommendations.

---

## 2. Analytics Workflow

The QuickCart analytics workflow was:

**Raw Data → Excel Cleaning & Exploration → SQL Analysis → Power BI Dashboards → GenAI Insights**

GenAI was not used to generate the underlying metrics. The model was
provided with validated analytical results and used to interpret and
communicate them in a business-friendly format.

---

## 3. Key Business Insights

### Overall Performance

- QuickCart recorded **12,000 orders**.
- Total net sales were **₹55,045,288.81**.
- Total profit was **₹19,014,323.41**.
- Overall profit margin was **34.54%**.
- Return rate was **9.10%**.
- Average delivery time was **3.27 days**.
- Average customer rating was **4.06/5**.

### Category Performance

- **Electronics** generated the highest category sales at
  **₹26,791,332.53**.
- **Home & Kitchen** had the highest category return rate at
  **9.72%**.

### Sales Channel Performance

- **Mobile App** generated the highest total profit at
  **₹9,530,963.63**.

### City Performance

- **Mumbai** recorded the highest city-level return rate at
  **10.06%**.

### Delivery and Customer Satisfaction

- The correlation between delivery days and customer rating was
  **-0.202**.
- This indicates an observed negative association in the dataset,
  but correlation does not establish causation.

---

## 4. Areas for Investigation

Based on the validated results, GenAI identified the following areas
for further business investigation.

### Category Returns

**Observation:** Home & Kitchen has the highest category return rate
at 9.72%.

**Investigation Question:**
What product, quality, pricing, fulfillment, or customer-expectation
factors may be contributing to returns in this category?

### City-Level Returns

**Observation:** Mumbai has the highest city return rate at 10.06%.

**Investigation Question:**
Are the higher returns concentrated in specific products,
customer segments, delivery patterns, or sales channels within Mumbai?

### Delivery and Customer Satisfaction

**Observation:** Delivery days and customer rating have a correlation
of -0.202.

**Investigation Question:**
Does delivery duration remain associated with customer satisfaction
after considering category, city, and order status?

> Correlation is an observation and does not prove causation.

---

## 5. Recommended Business Actions

The following are recommendations based on the observed analytics.

| Action | Metric to Monitor |
|---|---|
| Investigate returns in the highest-return category | Category return rate |
| Review return patterns in the highest-return city | City return rate |
| Analyze delivery performance across channels and customer segments | Average delivery days |
| Monitor customer ratings alongside delivery performance | Average customer rating |
| Evaluate high-sales categories using both sales and profitability | Category profit margin |

---

## 6. Natural-Language Business Q&A

### Which category generated the most sales?

**Electronics** generated the highest sales at
**₹26,791,332.53**.

### Which city has the highest return rate?

**Mumbai** has the highest return rate at **10.06%**.

### Which sales channel generated the highest profit?

**Mobile App** generated the highest total profit at
**₹9,530,963.63**.

### Does longer delivery appear associated with lower ratings?

The dataset shows a delivery-days/customer-rating correlation of
**-0.202**.

This represents an observed association and does not establish that
longer delivery time causes lower customer ratings.

---

## 7. GenAI Prompt Used

The following prompt was used to structure the business insight
generation:

> You are a business data analyst reviewing QuickCart's e-commerce
> performance.
>
> Using only the provided validated analytical results:
>
> 1. Identify the most important business trends.
> 2. Highlight unusual or potentially concerning metrics.
> 3. Compare categories, cities, customer segments, and sales channels.
> 4. Identify areas that require further investigation.
> 5. Suggest practical business questions management should investigate.
> 6. Suggest business actions based only on the available evidence.
> 7. Do not invent data, causes, or relationships that are not supported
>    by the analytical results.
>
> Present the response as:
>
> - Key Findings
> - Areas for Investigation
> - Business Questions
> - Suggested Actions

---

## 8. Role of GenAI in the Project

GenAI was used as an **insight and communication layer** rather than
as the primary analytical engine.

The workflow was:

**Excel / SQL / Power BI**
↓
**Validated KPIs and analytical results**
↓
**GenAI**
↓
**Business Insights + Investigation Questions + Recommendations**

This approach ensures that the underlying calculations come from the
analytical workflow while GenAI helps communicate the results in a
natural-language business format.

---

## 9. Tools Used

- **MS Excel** — Data cleaning and exploration
- **SQL** — Business analysis and KPI calculations
- **Power BI** — Interactive dashboards and visualization
- **GenAI** — Natural-language insight generation and business
  interpretation
- **GitHub** — Project documentation and version control

---

## 10. Limitations

- GenAI-generated interpretations depend on the quality and completeness
  of the analytical results provided to the model.
- Recommendations are areas for investigation rather than guaranteed
  business outcomes.
- Correlation-based observations should not be interpreted as causal
  relationships.
- Business decisions should be based on further investigation and
  validated evidence.
