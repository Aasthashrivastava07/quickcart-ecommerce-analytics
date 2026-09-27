# QuickCart — GenAI Insight Layer

## Purpose

This document demonstrates how GenAI can convert QuickCart's validated analytics into an executive summary, investigation questions, an action plan, and natural-language answers.

The prompts in the original GenAI file are retained as the workflow basis. The outputs below use the actual QuickCart dashboard/SQL results and do not invent figures.

---

## 1. Weekly Executive Summary

### Observed facts

- QuickCart recorded **12,000 orders**, generating **₹55,045,288.81 in net sales** and **₹19,014,323.41 in profit**.
- Overall **profit margin was 34.54%**, while the **return rate was 9.10%**.
- Average delivery time was **3.27 days**, and average customer rating was **4.06/5**.
- **Electronics** generated the highest category sales at **₹26,791,332.53**.
- **Mobile App** generated the highest total profit at **₹9,530,963.63**.

### Recommendations

These are recommendations, not observed facts:

- Monitor return drivers by category and city to identify where operational or product-level investigation may be useful.
- Track delivery performance together with customer ratings to determine whether slower fulfillment is associated with lower satisfaction.
- Review high-sales categories alongside their profit margins rather than using sales alone to evaluate performance.

---

## 2. Root-Cause Exploration

The uploaded workflow asks GenAI to identify areas for investigation using category, city, channel, and delivery metrics. fileciteturn1file0L17-L18

### Investigation Area 1 — Category returns

**Triggering metric:** Home & Kitchen has the highest category return rate at **9.72%**.

**Business question:** What product, quality, pricing, fulfillment, or customer-expectation factors are contributing to returns in this category?

### Investigation Area 2 — City-level returns

**Triggering metric:** Mumbai has the highest city return rate at **10.06%**.

**Business question:** Is the elevated return rate concentrated in particular products, customer segments, delivery patterns, or sales channels within this city?

### Investigation Area 3 — Delivery and customer satisfaction

**Triggering metric:** The correlation between delivery days and customer rating is **-0.202** in this dataset.

**Business question:** Does delivery duration remain associated with customer satisfaction after controlling for category, city, and order status?

> Correlation is an observation, not proof of causation.

---

## 3. 30-Day Action Plan

The original workflow asks for an action, owner/team, metric, and expected direction of change, while clearly separating recommendations from facts. fileciteturn1file0L20-L25

| Action | Owner / Team | Metric to Monitor | Expected Direction |
|---|---|---|---|
| Investigate returns in the highest-return category | Product + Operations | Category return rate | ↓ |
| Review the highest-return city for product/channel/delivery patterns | Regional Operations | City return rate | ↓ |
| Segment delivery performance by channel and customer segment | Logistics + Operations | Average delivery days | ↓ |
| Monitor customer ratings alongside delivery time | Customer Experience | Average rating | ↑ |
| Review high-sales categories against profit margin | Commercial / Finance | Category margin % | Maintain / ↑ |

---

## 4. Natural-Language Q&A

### Which category generated the most sales?

**Electronics** generated the highest sales, with **₹26,791,332.53**.

### Which city has the highest return rate?

**Mumbai** has the highest return rate at **10.06%**.

### Does longer delivery appear associated with lower ratings?

The dataset shows a delivery-days/customer-rating correlation of **-0.202**. This is an observed association only; it does not establish that delivery time causes rating changes.

### Which sales channel has the highest profit?

**Mobile App** has the highest total profit at **₹9,530,963.63**.

---

## 5. Example GenAI Workflow

**Data → SQL / Power BI / Tableau → KPI tables → GenAI prompt → Business interpretation**

The GenAI layer is therefore not generating the underlying analytics. It is being used to **summarize validated results, surface investigation areas, answer natural-language questions, and structure recommendations**.

## Tools Used

- Excel — data cleaning and exploration
- SQL — business analysis
- Power BI — executive and customer/operations dashboards
- Tableau — complementary customer/operations visualization
- GenAI — natural-language insight and recommendation layer
- GitHub — project documentation and version control
