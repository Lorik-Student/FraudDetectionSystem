CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    amount NUMERIC(12,2) NOT NULL,
    merchant TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    is_fraud BOOLEAN DEFAULT FALSE
);
