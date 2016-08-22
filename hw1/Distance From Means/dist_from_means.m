function dist_from_means()
    load('mnist_hw1.mat');
    acc_arr = [];
    for iter = 1:10
        acc_arr_temp = [];
        for k=50:50:2000
            acc_arr_temp = [acc_arr_temp,predict(dataX, X_test, Y_test, k)];
        end
        acc_arr = [acc_arr;acc_arr_temp];
    end
    acc_arr = mean(acc_arr);
    plot(50:50:2000,acc_arr),xlabel('Number of points used to calculate mean'),ylabel('Test accuracy'),title('Distance from means - accuracy vs mean sampling set size');
end