function accuracy = predict(dataX, X_test, y_test,k)
    means = get_means(dataX, k);
    dist_arr = zeros(length(X_test),size(means,1));
    for i=1:length(X_test)
        for j=1:size(means,1)
            dist_arr(i,j) = dist(means(j,:), X_test(i,:));
        end
    end
    
    [~,y_pred] = min(dist_arr');
    y_pred = y_pred(:);
    accuracy = sum(y_pred == y_test + 1)/length(y_pred);
end