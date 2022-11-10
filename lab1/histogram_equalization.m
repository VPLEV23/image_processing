function equalized_img = histogram_equalization (img, x, y)
  image_arr_length = length(img(:));

  columns = length(img);
  rows = image_arr_length / columns;

  image_arr = [];
  for i=1:image_arr_length
    image_arr(i) = img(i);
  endfor

  img = image_arr;

  cdf = [];
  sum = 0;
  for i=1:255
    sum += y(i);
    cdf(i) = sum;
  endfor

  cdf_min = 0;

  for i=1:length(cdf)
    if (cdf(i) ~= 0)
      cdf_min = cdf(i);
      break
    endif
  endfor

  contrasts_map = struct();
  contrasts_map.("0") = 0;
  contrasts_map.("-0") = 0;

  for i=1:255
    contrasts_map.(int2str(i)) = round(((cdf(i) - cdf_min) / (length(img) - cdf_min)) * 255);
  endfor

  equalized_img = [];

  for i=1:length(img)
    equalized_img(i) = contrasts_map.(int2str(img(i)));
  endfor

  equalized_img = uint8(reshape(equalized_img, columns, rows));
endfunction
