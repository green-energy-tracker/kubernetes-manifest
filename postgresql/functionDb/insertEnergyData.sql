
DECLARE
    v_sensor_code VARCHAR;
BEGIN
    SELECT code INTO v_sensor_code
    FROM microservices.sensors
    ORDER BY RANDOM()
    LIMIT 1;

    INSERT INTO microservices.energy_data (sensor_code, timestamp, energy_kwh)
    VALUES (
        v_sensor_code,
        now(),
        round((random() * 5 + 1)::numeric, 2)::text
    );
END;
