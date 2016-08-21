function d = dist(a,b)
    a = a(:);
    b = b(:);
    d = sqrt((a-b)'*(a-b));
end