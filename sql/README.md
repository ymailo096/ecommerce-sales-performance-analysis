# SQL Analysis

The SQL part of the project was performed using BigQuery Standard SQL.

The query builds an analytical dataset by combining:

- sessions;
- session parameters;
- account information;
- orders;
- product information.

## Join Logic

`LEFT JOIN` is used to preserve all sessions, including sessions from users who did not register on the website.

This follows the original project requirement to retain all sessions and order-related data while enriching the dataset with additional user, traffic and product attributes.

## Main Analytical Dimensions

The extracted dataset contains information about:

- Date and session;
- Geography;
- Device and browser;
- Traffic source and channel;
- Registered user information;
- Product category and product;
- Product price.

## SQL Skills Demonstrated

- SELECT statements;
- Multiple table JOINs;
- LEFT JOIN;
- Column aliases;
- Analytical dataset preparation;
- BigQuery Standard SQL;
- Data extraction for downstream Python and statistical analysis.
