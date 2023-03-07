-- Create the openai_params table
CREATE TABLE openai_params (
                               id INT PRIMARY KEY,
                               model VARCHAR(100),
                               prompt VARCHAR(1000),
                               temperature FLOAT,
                               max_tokens INT,
                               top_p FLOAT,
                               frequency_penalty FLOAT,
                               presence_penalty FLOAT,
                               stop VARCHAR(50)
);

-- Insert the OpenAI parameters
INSERT INTO openai_params VALUES (
                                     1,
                                     'text-davinci-003',
                                     'generate me 15 EASY sport trivia questions with answers in Question: Answer: format in Alex Trebek style',
                                     0.9,
                                     150,
                                     1,
                                     0,
                                     0.6,
                                     ''
                                 );

-- Create the trivia table
CREATE TABLE trivia (
                        id INT PRIMARY KEY IDENTITY(1,1),
                        question VARCHAR(500),
                        answer VARCHAR(500),
                        level VARCHAR(10)
);