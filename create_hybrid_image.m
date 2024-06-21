function create_hybrid_image(imageA_path, imageB_path)
    % Read the input images
    imageA = imread(imageA_path);
    imageB = imread(imageB_path);

    % Convert images to grayscale if they are RGB
    if size(imageA, 3) == 3
        imageA = rgb2gray(imageA);
    end
    if size(imageB, 3) == 3
        imageB = rgb2gray(imageB);
    end

    % Convert images to double
    imageA = im2double(imageA);
    imageB = im2double(imageB);

    % Resize images to the same size
    [rows, cols] = size(imageA);
    imageB = imresize(imageB, [rows, cols]);

    % Parameters for filtering
    cutoff_frequency = 1.5; % Adjust based on experiment

    % Create a low-pass filter
    low_pass_filter = fspecial('gaussian', cutoff_frequency*4+1, cutoff_frequency);

    % Apply the low-pass filter to imageA
    low_frequencies = imfilter(imageA, low_pass_filter, 'replicate');

    % Create a high-pass filter
    high_frequencies = imageB - imfilter(imageB, low_pass_filter, 'replicate');

    % Combine the two images to create the hybrid image
    hybrid_image = low_frequencies + high_frequencies;

    % Display the results
    figure; imshow(imageA, []); title('Image A (Low Frequencies)');
    figure; imshow(imageB, []); title('Image B (High Frequencies)');
    figure; imshow(low_frequencies, []); title('Low Frequencies');
    figure; imshow(high_frequencies, []); title('High Frequencies');
    figure; imshow(hybrid_image, []); title('Hybrid Image');

    % Save the hybrid image
    imwrite(hybrid_image, 'hybrid_image.jpg');
end