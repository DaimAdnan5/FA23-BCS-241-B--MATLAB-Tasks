function p = permutation(n, r)
% permutation.m
% Returns the number of permutations P(n, r)

    if n < r || n < 0 || r < 0
        error('n must be >= r and both must be non-negative');
    end

    p = factorial(n) / factorial(n - r);
end
