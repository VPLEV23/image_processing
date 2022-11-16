#img = imread('./apple.png');
#noised_image = impulse_noise(img, "salt-and-pepper", 0.2);
#imwrite(noised_image, "./apple_salt_and_pepper_02.png");

#img = imread("./apple_salt_and_pepper_02.png");
#filtered_img = median_filtering(img, 2, 10);
#imwrite(filtered_img, "./filtered_apple_salt_and_pepper_02.png");



initial_img = imread("./apple.png");
filtered_img = imread("./filtered_apple_salt_and_pepper_02.png");
disp(peaksnr(initial_img, filtered_img));
disp(rmse(initial_img, filtered_img));
