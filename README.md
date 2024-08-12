# Sales-Performance-Analysis-To-Develop-Products-And-Expand-The-Market
Using SQL and PowerBI for extracting data, data modeling and data visualization.
# Situation
AdventureWorks’ sales manager demands improved internet sales reports and a transition from static to visual dashboards. Management is interested in knowing which items sold the most, to which clientele, and how this has changed over time. Given that each salesperson works with distinct items and consumers, the manager prefers to be able to filter them as well. The sales manager gave a budget worksheet so that he could compare value to performance. The budget is for 2024, and he normally looks back two years for the report.

Dataset: https://s.net.vn/1HMA
# Task
It is critical to comprehend pertinent business requests from important stakeholders including Sales Manager, Product Manager and Sales Representative. From the requests of stakeholders, I identified the purposes of the requests and found out the solutions for them. Here is a summary of the information:

![Screenshot 2024-06-12 232926](https://github.com/user-attachments/assets/36b8fc07-015f-4617-834f-596903a23aac)

# Action
## Extract data with SQL
At the first step, I observed the overview of dataset, schemas, and tables to find exactly which tables are suitable for my analysis purposes. The dataset has a lot of different tables, but I have noticed that these tables would be helpful for this project:

FACT_InternetSales: data about order number of sales, sales amount

DIM_Date: data about the time customers buy products

DIM_Customers: detail information of all the customers

DIM_Products: detail information of all the products

However, cause the relevant tables maybe have too many unessential columns for my analysis, so I decided to use SQL queries in SSMS to extract only necessary columns before adding them to Power BI.

## Load data to Power BI

After extracting necessary data for analysis, I saved them as csv files and loaded data to Power BI. Then I transformed data in Power Query in order that I could clean data of all the tables:

Check the datatype of each columns
Check column profile, column quality, column distribution
Check the name of column, handle incorrect data, duplicate data, and null values if any.

## Data modeling

I used star schema to model the data. The fact table – FACT_InternetSales, which includes the quantitative data has an important role to connect the dimension tables: DIM_Date, DIM_Customers, DIM_Products.

In the model, I added the Budget table (contains data about budget of each month) to follow up the comparison between sales and budget amount by month.

![Screenshot 2024-06-13 211620](https://github.com/user-attachments/assets/5495855f-a3ca-4912-b794-0063d65b937e)

## Data visualization
Sales dashboard

![Screenshot 2024-06-13 231623](https://github.com/user-attachments/assets/5edd69ca-3e18-4e9c-be23-5d8a12b87acc)

This dashboard gives users an overview of the company’s business situation. There are slicers at the top which allow user to see the sales data by month and year. The sales and budget graphs show a seasonal pattern, with higher sales and budgets in the latter part of the year (September-December).

Customer dashboard

![Screenshot 2024-06-13 220657](https://github.com/user-attachments/assets/67ef1c25-06fc-4211-bbff-3ff46fa9866f)

Customer dashboards show us the information about number of customers, top 10 customers by sales over time. Analyzing this data could help identify high-potential customers, understand their purchasing patterns, and develop targeted strategies to nurture and retain them.

I used DAX function to calculate sales for male, sales for female for creating the sales for gender by month chart:

![Screenshot 2024-06-13 230842](https://github.com/user-attachments/assets/d8d06679-197a-400f-b0ca-c4855e0760e5)

![Screenshot 2024-06-13 231047](https://github.com/user-attachments/assets/2a212c55-bd5f-4071-9556-8dc065b2d4d6)

From Sales trends by gender graph, we could indicate an opportunity to further understand and cater to the preferences and needs of the female customer base to potentially drive even more sales from this segment.

Product dashboard

![Screenshot 2024-06-13 221631](https://github.com/user-attachments/assets/89ba2112-6589-475c-966b-1225b2f0d59e)

As you can see about, he top selling products are the “Adjustable Race” and the “Water Bottle – 30 oz.”, indicating these are the company’s star products. However, relying too heavily on a few top-selling items can pose risks. Diversifying the product portfolio could help the company become less vulnerable to shifts in demand for these specific products. Beside that, bikes account for the majority of sales at 53.32%, followed by Accessories at 35.32% and Clothing at 3.15%. The dominance of Bikes suggests the company may be missing opportunities to drive growth in other categories. Exploring ways to promote and increase sales in Accessories and Clothing could help diversify revenue streams.

The top products by orders and sales are mostly from the “Mountain” and “Road” product lines, indicating a focus on these categories. While these product lines are performing well, introducing new product categories or expanding existing lines could help the company reach new customer segments and maintain a competitive edge. Another point is the “Top 10 sub-category by sales” chart providing a detailed view of the sales performance across different product sub-categories. Analyzing the relative performance of sub-categories can help the company identify opportunities for growth, as well as areas that may be oversaturated and require product diversification.

Sales map

![Screenshot 2024-06-13 221800](https://github.com/user-attachments/assets/5aea8b2c-1b9f-4bcd-98a2-a02f42042a1a)

The sales map shows the company’s sales are concentrated primarily in North America and Europe, with limited presence in other regions like Asia, South America, and Africa. his geographic concentration poses risks, as it makes the company vulnerable to changes or downturns in those specific markets. Expanding into new geographic regions could help diversify the sales portfolio and reduce this risk.

The top 10 customer cities by sales are all located in Western Europe and Australia, with London, Paris, and Wollongong being the top three. The lack of representation from other regions, such as North America or Asia, suggests the company may be missing growth opportunities in those markets. Analyzing the factors that drive sales in the top cities and replicating successful strategies in new regions could be beneficial.

The sales map depicts clusters of sales activity in certain areas, particularly in North America and Europe. This could indicate the company has established a strong presence and customer base in these regions, but it also highlights the need to explore ways to penetrate and develop new markets outside of these core geographic areas.

# Result
Since this is a simulated project, there will be no actual results. Therefore, I have documented my suggestions in the “Result” section:

With the unbalanced sales across product categories (the sales breakdown shows that Bikes account for the majority (51.2%) of total sales, while Accessories and Clothing have lower shares. This indicates an imbalance in the product mix):

- Analyze the market demand and customer preferences for each product category to identify opportunities to grow the Accessories and Clothing segments.

- Develop targeted marketing and promotional strategies to promote the underperforming categories and diversify the product portfolio.

- Conduct in-depth market research to identify new product categories or sub-categories that could appeal to a broader customer base. Then we can invest in the development and promotion of these new products to reduce reliance on the company’s current top-selling items.

With the concentration of top customers (the “Top 10 Customers by Sales” chart shows a high concentration of sales from a few key customers, with Jordan Turner being the top contributor):

- Assess the risks associated with relying heavily on a small number of customers and explore strategies to expand the customer base.

- Implement customer relationship management (CRM) practices to better understand the needs of these top customers and find ways to retain and grow their business.

- Identify potential new customer segments and markets to diversify the sales pipeline.

With the seasonal sales fluctuations (the “Sales and Budget Amount by Month” chart indicates significant seasonal variations in sales, with peaks in March-April and October-November):

- Analyze the underlying drivers of these seasonal patterns, such as product launch cycles, marketing campaigns, or consumer behavior.

- Develop inventory management and production planning strategies to better align supply with expected demand throughout the year

- Explore ways to smooth out the sales curve, such as introducing new product lines or offering promotions during off-peak seasons.

With the geographic sales concentration (the sales map shows a concentration of sales in certain regions, particularly in North America and Europe, while other regions like South America and Asia have lower representation):

- Investigate the factors contributing to the strong performance in the North American and European markets, and replicate successful strategies in other regions.

- Conduct market research to identify untapped opportunities in underperforming regions and develop tailored expansion plans.

- Consider opening new sales channels or partnerships to reach a broader geographic customer base.

