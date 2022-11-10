img = imread('./bwtest.jpg');

[minimum, maximum, mean, standart_deviation, variance, snr] = image_statistical_analysis(img);

printf("Min - %d\n", minimum);
printf("Max - %d\n", maximum);
printf("Mean - %d\n", mean);
printf("Standatr deviation - %d\n", standart_deviation);
printf("Variance - %d\n", variance);
printf("Signal-to-noise ration - %d\n", snr);

[x, y] = plot_histogram(img);
bar(x, y);

equalized_img = histogram_equalization(img, x, y);

[eq_x, eq_y] = plot_histogram(equalized_img);
bar(eq_x, eq_y);

imwrite(equalized_img, './equalized_image.png');

corrected_image = linear_contrast_correction(img, 160, 60);
imwrite(corrected_image, './corrected_image.png');
