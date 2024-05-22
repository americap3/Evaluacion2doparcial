-- INSERTAR

CREATE OR REPLACE PROCEDURE insert_customer (
    IN NUMBER p_customer_id,
    IN VARCHAR2 p_cust_first_name,
    IN VARCHAR2 p_cust_last_name,
    IN NUMBER p_credit_limit,
    IN VARCHAR2 p_cust_email,
    IN VARCHAR2 p_income_level,
    IN VARCHAR2 p_region
)
IS
BEGIN
    IF p_region IN ('A', 'B') THEN
        INSERT INTO CUSTOMERS (
            customer_id,
            cust_first_name,
            cust_last_name,
            credit_limit,
            cust_email,
            income_level,
            region
        ) VALUES (
            p_customer_id,
            p_cust_first_name,
            p_cust_last_name,
            p_credit_limit,
            p_cust_email,
            p_income_level,
            p_region
        );
    ELSIF p_region IN ('C', 'D') THEN
        INSERT INTO CUST2 (
            customer_id,
            cust_first_name,
            cust_last_name,
            credit_limit,
            cust_email,
            income_level,
            region
        ) VALUES (
            p_customer_id,
            p_cust_first_name,
            p_cust_last_name,
            p_credit_limit,
            p_cust_email,
            p_income_level,
            p_region
        );
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Region invalida');
    END IF;
END;

-- CONSULTAR

CREATE OR REPLACE PROCEDURE get_customer (
    IN NUMBER p_customer_id,
    OUT VARCHAR2 p_cust_first_name,
    OUT VARCHAR2 p_cust_last_name,
    OUT NUMBER p_credit_limit,
    OUT VARCHAR2 p_cust_email,
    OUT VARCHAR2 p_income_level,
    OUT VARCHAR2 p_region
)
IS
BEGIN
    BEGIN
        SELECT cust_first_name, cust_last_name, credit_limit, cust_email, income_level, region
        INTO p_cust_first_name, p_cust_last_name, p_credit_limit, p_cust_email, p_income_level, p_region
        FROM VG CUSTOMERS
        WHERE customer_id = p_customer_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_cust_first_name := NULL;
            p_cust_last_name := NULL;
            p_credit_limit := NULL;
            p_cust_email := NULL;
            p_income_level := NULL;
            p_region := NULL;
    END;
END;

-- ACTUALIZAR

CREATE OR REPLACE PROCEDURE update_customer (
    IN NUMBER p_customer_id,
    IN VARCHAR2 p_cust_first_name,
    IN VARCHAR2 p_cust_last_name,
    IN NUMBER p_credit_limit,
    IN VARCHAR2 p_cust_email,
    IN VARCHAR2 p_income_level,
    IN VARCHAR2 p_region
)
IS
BEGIN
    IF p_region IN ('A', 'B') THEN
        UPDATE CUSTOMERS
        SET cust_first_name = p_cust_first_name,
            cust_last_name = p_cust_last_name,
            credit_limit = p_credit_limit,
            cust_email = p_cust_email,
            income_level = p_income_level
        WHERE customer_id = p_customer_id AND region = p_region;
    ELSIF p_region IN ('C', 'D') THEN
        UPDATE CUST2
        SET cust_first_name = p_cust_first_name,
            cust_last_name = p_cust_last_name,
            credit_limit = p_credit_limit,
            cust_email = p_cust_email,
            income_level = p_income_level
        WHERE customer_id = p_customer_id AND region = p_region;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Region invalida');
    END IF;
END;

-- ELIMINAR

CREATE OR REPLACE PROCEDURE delete_customer (
    IN NUMBER p_customer_id
)
IS
BEGIN
    BEGIN
        SELECT region INTO v_region FROM CUSTOMERS
        WHERE customer_id = p_customer_id;

        DELETE FROM CUSTOMERS
        WHERE customer_id = p_customer_id;

        RETURN;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;

    BEGIN
        SELECT region INTO v_region FROM CUST2
        WHERE customer_id = p_customer_id;
        DELETE FROM CUST2
        WHERE customer_id = p_customer_id;

    EXCEPTION
        RETURN;
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20002, 'EL ID NO ESTA EN NINGUNA REGION');
    END;
END;
