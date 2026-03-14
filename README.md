# Used Cars Data Cleaning & Preparation (SQL Project)

## Project Overview

This project focuses on **cleaning and preparing a real-world Used Cars dataset using SQL Server**.
Raw datasets often contain missing values, inconsistent entries, and unstructured data.
The goal of this project is to transform the dataset into a **clean and reliable dataset ready for analysis and visualization**.

## Dataset Description

The dataset contains information about used car listings including:

* URL
* Manufacturer
* Model
* Year
* Price
* Condition
* Cylinders
* Fuel Type
* Odometer
* Transmission
* Drive Type
* Vehicle Size
* Vehicle Type
* Title Status

These features provide insights into **vehicle specifications, condition, and pricing**.

## Data Cleaning Steps

Several data preprocessing steps were applied to improve data quality:

### Handling Missing Values

* Replaced NULL values in categorical columns with `UNKNOWN`
* Identified critical columns that must not contain NULL values

### Data Validation

* Checked numeric fields such as:

  * `price`
  * `odometer`
* Detected non-numeric values and unrealistic values

### Data Standardization

* Standardized manufacturer names
* Ensured consistent formatting for categorical variables

### Column Optimization

* Removed unnecessary columns (e.g., `county`)
* Kept only useful attributes for analysis

### Data Quality Checks

* Verified logical ranges for numerical columns
* Checked categorical distributions

## Example SQL Operations

Some of the SQL operations used in this project include:

* Handling NULL values
* Data validation using `TRY_CAST`
* Aggregation using `GROUP BY`
* Data filtering with `WHERE`
* Updating and transforming data
* Removing unnecessary columns

## Tools & Technologies

* **SQL Server**
* **T-SQL**
* **SQL Server Management Studio (SSMS)**

## Project Objectives

* Practice **real-world data cleaning**
* Improve **SQL data transformation skills**
* Prepare datasets for **data analysis and visualization**
* Demonstrate **data preprocessing techniques used in industry**

## Future Work

* Perform **Exploratory Data Analysis (EDA)**
* Build **interactive dashboards**
* Develop **machine learning models to predict car prices**

## Author

Ali Atafe
