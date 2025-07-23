# Polaris Project — Real-World Hospitality Booking Analytics

## 🧭 Project Overview

This project was initiated independently by the author, who reached out to the manager of a newly launched European hospitality business. The goal was to gain real-world experience by offering a free, exploratory analysis. No formal requirements were provided, and the analysis was guided by business intuition and data exploration. The client was highly impressed and commissioned a follow-up report for the end of the season.

## 📂 Data Sources & Transformation

The original data consisted of six calendar-style PDF files:
- Three pricing sheets (Hotel “Polaris”, Apartments “Peric”, Villas “Porat”)
- Three booking logs segmented by month and property type

Each booking sheet had:
- Dates as rows
- Room names as columns
- Booking channels (B for Booking.com, D for Direct) as cell values

Using Power Query, this structure was normalized into a long-format table with fields such as:
- date, month, room_name(AP1,AP3...), channel(booking or direct), room_type(mountain view, sea view), accommodation(hotel, villa, apartments), rate, revenue

Pricing data was joined via SQL in DBeaver, matching bookings to dynamic pricing periods (e.g. 1–15, 16–30 of each month).

## 🛠 Tools Used

- Power Query — data extraction and transformation
- SQL (DBeaver) — joining bookings with pricing periods
- Excel — reporting and dashboard creation

Used familiar tools to ensure fast and reliable delivery.

## 📊 Report Highlights

The final report includes five analytical blocks:

- Monthly dynamics — revenue and booking trends across the season
- Channel performance — comparison of Direct vs Booking.com
- Room type analysis — booking volume vs profitability
- Accommodation breakdown — income by Hotel, Apartment, Villa
- Average rate insights — pricing gaps and optimization opportunities

## 🔍 Key Insights

- 📈 Booking peaked in July, confirming strong seasonality
- 🛎 Direct and Booking.com channels showed similar revenue efficiency
- 🧩 Some room types (e.g. Studio, Two Bedrooms) were overbooked but underpriced
- 💡 room named "Soba 3 & 4" delivered high revenue per booking despite moderate volume
<img width="698" height="487" alt="Report-Block_3" src="https://github.com/user-attachments/assets/e99ff937-e7bb-4db1-8420-2a03d41d89ac" />
- ⚠️ Several pricing anomalies were identified, suggesting opportunities for rate optimization

## 📁 Files Included

- report.xlsx — full dataset and dashboard (in Ukrainian)
- report.pdf — final analytical summary (in Ukrainian)
- queries/ — Power Query scripts and SQL join logic
- screenshots/ — optional visuals (if added)

## ⚠️ Usage Notice

This repository is shared for portfolio and educational purposes only.  
The data and materials may not be reused, redistributed, or repurposed without explicit permission.

---
