# Marketing Campaign Analysis Project

#### Project Overview :-
This project provides a comprehensive, interactive analysis of a marketing campaign's performance. The objective is to evaluate the effectiveness of different content types and channels, understand customer behavior across various demographics (Age/Gender), and identify key product performance indicators to inform and optimize future marketing strategies and budget allocation.

#### Explore the interactive dashboard here :-
Marketing Campaign Analytics Dashboard – [Power BI](https://app.powerbi.com/view?r=eyJrIjoiMThkOTE5NDYtZmZlOC00M2Y0LThmMTktNzA5ZDk0MDk0MTdmIiwidCI6IjZhZTYxOTA2LTE0YTUtNDllYS05NmZkLWI2NjgzNzQ2MDlkNCJ9)

#### Tools Used :-
* Power BI – Data visualization & dashboard design
* SQL – Data extraction, transformation, and aggregation
* Excel – Data preprocessing and cleaning
* DAX – Measures and calculated columns for KPIs

#### Dataset / Input Data :-
The dashboard is built upon customer and campaign interaction data, including:
* Customer Details: CustId, CustName, Gender, Age_group.
* Campaign Details: CampaignID, Eng_date, ContentType.
* Review/Product Data: Prd_name, Review text, Sentiment_Rating, Average of Rating.
* Performance Metrics: CLV (Customer Lifetime Value), Conv_rate, Drop_off_rate, Eng_rate, YTD_engagement.

#### What the Dashboard Shows :-
**1. Key Metrics & KPIs**
* Total Reviews - 1363
* Conversion Rate -	4.99%
* Drop-off Rate -	15.28%
* Engagement Rate	-	22.97%
* Average Rating -	3.69 / 5
* Click-Through Rate (CTR) -	20%

**Highlights:**
* Customer Lifetime Value (CLV): The 25-40 age group contributes the highest CLV for both genders.
* Gender Performance: Males have a higher Conversion Rate (5.14%) and a lower Drop-off Rate (14.15%) than Females.
* Engagement Decline: A critical insight is the significant drop in YTD engagement from 0.4M in 2023 to 0.04M in 2025.
* Product Ratings (Screenshot 141026.png): The Treemap visualization shows the distribution of products and their corresponding Average Rating (overall average is 3.69). Climbing Rope (3.91) and Cycling Helmet (3.80) are among the highest-rated products.

####  Output:
* The Male, 25-40 demographic is the most valuable segment, showing high CLV and the best Conv_rate/Drop_off_rate profile.
* The Below-25 age group represents the highest churn risk, with a near 20% drop-off rate.
* All content types (Video, Blog, Socialmedia, Newsletter) are performing consistently in terms of engagement, suggesting a well-balanced content strategy, though overall engagement is falling.
* The majority of visible reviews use the text "Amazing value for the price," indicating strong perceived value for money.

#### Conclusion :-
The marketing campaign is effective in converting specific high-value demographics (Male, 25-40) and has a product line generally perceived as offering good value.
However, the alarming year-over-year decline in YTD Engagement requires immediate and thorough investigation to prevent a catastrophic loss of audience. Strategic efforts must also be directed at understanding and mitigating the high drop-off rate among the Below-25 audience segment to secure future customer pipelines.
