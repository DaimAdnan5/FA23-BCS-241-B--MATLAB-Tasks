% task5_spam_classification_bayes.m
% Task 5: Simulate Spam Classification Using Bayes' Rule

clc;
clear;

% Sample dataset
% Each row is an email with presence (1) or absence (0) of a word
% Column 1: Contains word "offer"
% Column 2: Contains word "win"
% Column 3: Contains word "meeting"
% Label: 1 = Spam, 0 = Not Spam

data = [
    1 1 0 1;   % spam
    1 0 0 1;   % spam
    0 1 0 1;   % spam
    0 0 1 0;   % not spam
    0 0 1 0;   % not spam
    1 0 1 0    % not spam
];

X = data(:, 1:3);  % Features (words)
y = data(:, 4);    % Labels (1 = Spam, 0 = Not Spam)

% Prior probabilities
pSpam = sum(y == 1) / length(y);
pNotSpam = sum(y == 0) / length(y);

% Likelihoods: P(word | class)
% For each word (column), compute P(word=1 | Spam=1) and P(word=1 | Spam=0)
likelihood_spam = sum(X(y == 1, :)) / sum(y == 1);
likelihood_notspam = sum(X(y == 0, :)) / sum(y == 0);

% New email to classify: [1 1 0] (has 'offer' and 'win', no 'meeting')
newEmail = [1 1 0];

% Apply Naive Bayes (assume word independence)
pWordGivenSpam = prod(likelihood_spam .^ newEmail .* (1 - likelihood_spam) .^ (1 - newEmail));
pWordGivenNotSpam = prod(likelihood_notspam .^ newEmail .* (1 - likelihood_notspam) .^ (1 - newEmail));

% Bayes rule
posteriorSpam = pWordGivenSpam * pSpam;
posteriorNotSpam = pWordGivenNotSpam * pNotSpam;

% Normalize (optional)
total = posteriorSpam + posteriorNotSpam;
posteriorSpam = posteriorSpam / total;
posteriorNotSpam = posteriorNotSpam / total;

% Display classification
disp('--- Task 5: Spam Classification Using Bayes Rule ---');
disp(['P(Spam | Email): ', num2str(posteriorSpam)]);
disp(['P(Not Spam | Email): ', num2str(posteriorNotSpam)]);

if posteriorSpam > posteriorNotSpam
    disp('Classification: SPAM');
else
    disp('Classification: NOT SPAM');
end
