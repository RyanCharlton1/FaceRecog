#include <iostream>
#include <filesystem>
#include <vector>

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>

using namespace cv;
using namespace std;

#define IMAGE_WIDTH 64
#define IMAGE_HEIGHT 64
#define IMAGE_DIM Size(IMAGE_WIDTH, IMAGE_HEIGHT)

int main()
{
	std::vector<Mat> set;
	Mat img;
	Mat vec;
	
	for (const auto& file : filesystem::directory_iterator(".\\..\\lfwcrop_grey\\faces")) {
		img = imread(file.path().u8string(), IMREAD_GRAYSCALE);
		
		img.reshape(1);
		Size sz = img.size();
		int s = (int)img.at<uchar>(0,0);
		set.push_back(img);
		//cout << file.path().u8string() << std::endl;
	}
	
	namedWindow("Im show", WINDOW_AUTOSIZE);
	imshow("Im show", set[0]);
	
	waitKey(0);
	return 0;
}
