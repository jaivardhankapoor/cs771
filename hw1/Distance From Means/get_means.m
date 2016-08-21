function means = get_means(dataX, k)

    means = zeros(10,size(dataX{1},2));
    for i=1:10
        datai = dataX{i};
        sample_X = datai(randperm(size(datai,1)),:);
        sample_X = sample_X(1:k,:);
        means(i,:) = mean(sample_X);
    end
end
