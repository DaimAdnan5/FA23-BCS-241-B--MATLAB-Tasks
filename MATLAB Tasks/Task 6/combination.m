function c = combination(n, r)
% combination.m
% Returns the number of combinations C(n, r)

    if n < r || n < 0 || r < 0
        error('n must be >= r and both must be non-negative');
    end

    c = factorial(n) / (factorial(r) * factorial(n - r));
end
