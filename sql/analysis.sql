-- ==========================================================
-- E-commerce Sales Performance Analysis
-- SQL Data Extraction
-- BigQuery Standard SQL
-- ==========================================================
--
-- Purpose:
-- Build an analytical dataset combining session,
-- account, traffic, order and product information.
--
-- Join logic:
-- LEFT JOINs are used to preserve all sessions,
-- including sessions from users who did not register.
--
-- Data grain:
-- Session-level data enriched with order/product information.
-- ==========================================================


SELECT
    s.date AS order_date,
    s.ga_session_id AS session_id,

    sp.continent AS continent,
    sp.country AS country,
    sp.device AS device,
    sp.browser AS browser,
    sp.mobile_model_name AS device_model,
    sp.operating_system AS operating_system,
    sp.language AS language,
    sp.name AS traffic_source,
    sp.channel AS traffic_channel,

    acc.id AS user_id,
    acc.is_verified AS confirmed_email,
    acc.is_unsubscribed AS newsletter_unsubscribed,

    p.category AS product_category,
    p.name AS product_name,
    p.price AS price,
    p.short_description AS product_description

FROM `data-analytics-mate.DA.session` AS s

LEFT JOIN `data-analytics-mate.DA.account_session` AS acs
    ON s.ga_session_id = acs.ga_session_id

LEFT JOIN `data-analytics-mate.DA.account` AS acc
    ON acs.account_id = acc.id

LEFT JOIN `data-analytics-mate.DA.session_params` AS sp
    ON s.ga_session_id = sp.ga_session_id

LEFT JOIN `data-analytics-mate.DA.order` AS o
    ON s.ga_session_id = o.ga_session_id

LEFT JOIN `data-analytics-mate.DA.product` AS p
    ON o.item_id = p.item_id;
