function dist_from_means()
    load('mnist_hw1.mat');
    acc_arr = [];
    for k=50:50:2000
        acc_arr = [acc_arr,predict(dataX, X_test, Y_test, k)];
    end
    plot(50:50:2000,acc_arr),xlabel('Number of points used to calculate mean'),ylabel('Test accuracy'),title('Distance from means - accuracy vs mean sampling set size');
end