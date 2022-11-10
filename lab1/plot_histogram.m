function [x, y] =  plot_histogram (img)
  image_arr_length = length(img(:));

  image_arr = [];

  for i=1:image_arr_length
    image_arr(i) = img(i);
  endfor

  img = image_arr;

  img_dict = struct();
  img_dict.("-0") = 0;
  x = 0:255;
  y = [];

  for i=0:255
    img_dict.(num2str(i)) = 0;
  endfor

  for i=1:length(img)
    img_dict.(num2str(img(i)))++;
  endfor

  for i=0:255
      y(end+1) = img_dict.(int2str(i));
  endfor
endfunction
