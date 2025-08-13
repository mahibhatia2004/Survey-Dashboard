-- Insert banks
INSERT INTO banks (name, location, region) VALUES
('State Bank of India', 'Mumbai, Maharashtra', 'Western India'),
('HDFC Bank', 'Bangalore, Karnataka', 'South India'),
('ICICI Bank', 'Delhi, NCR', 'North India'),
('Axis Bank', 'Kolkata, West Bengal', 'East India');

-- Insert surveys
INSERT INTO surveys (bank_id, total_surveys, completion_rate, status) VALUES
(1, 247, 94, 'Active'),
(2, 189, 87, 'Active'),
(3, 156, 91, 'Pending'),
(4, 203, 89, 'Active');

-- Insert responses
INSERT INTO responses (survey_id, bank_id, respondent_name, age, satisfaction, date, feedback) VALUES
(1, 1, 'Priya Sharma', 34, 'Excellent', '2024-01-15', 'बहुत अच्छी सेवा!'),
(2, 2, 'Rajesh Kumar', 28, 'Good', '2024-01-14', 'Could be better'),
(3, 3, 'Anita Patel', 42, 'Excellent', '2024-01-13', 'Very satisfied'),
(4, 4, 'Vikram Singh', 55, 'Poor', '2024-01-12', 'Needs improvement');

-- Insert cities
INSERT INTO cities (name, region, primary_bank_id, population, survey_count, avg_rating) VALUES
('Mumbai', 'Western India', 1, '12.4M', 247, 4.2),
('Bangalore', 'South India', 2, '8.4M', 189, 3.8),
('Delhi', 'North India', 3, '16.8M', 156, 4.1),
('Kolkata', 'East India', 4, '4.5M', 203, 4.0);
