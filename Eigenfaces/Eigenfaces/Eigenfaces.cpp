#include <iostream>

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>

using namespace cv;
using namespace std;

int main()
{
	Mat image;
	image = imread("pickle.png");

	if (image.empty()){
		cout << "failed" << std::endl;
		return -1;
	}

	namedWindow("Im show", WINDOW_AUTOSIZE);
	imshow("Im show", image);

	waitKey(0);
	return 0;
}
