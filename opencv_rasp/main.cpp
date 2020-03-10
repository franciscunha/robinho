/*  NOTES:
Usar a classe pode estra dificultando a filtragem da imagem
*/
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <raspicam/raspicam_cv.h>
#include <string>
#include <iostream>
#include "Target.h"

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
    // Abrir a camera
    raspicam::RaspiCam_Cv cap;

    if(!cap.open())
    {
        cerr << "Couldn't open camera." << endl;
        return 1;
    }

    // Objetos para img em BRG e em HSV
    Mat frameBRG, frameHSV, frameMask;

    // Range da cor que vai ser detectada
    const int redLower[3] = {170, 070, 000};
    const int redUpper[3] = {179, 255, 255};
    
    const int whiteLower[3] = {000, 000, 200};
    const int whiteUpper[3] = {000, 050, 255};

    const int pinkLower[3] = {135, 120, 080};
    const int pinkUpper[3] = {175, 255, 255};

    int colorLower[3] = {0, 0, 0}, colorUpper[3] = {179, 255, 255};

    // Barrinhas para escolher uma cor
    namedWindow("Control", WINDOW_AUTOSIZE);
    createTrackbar("LowH", "Control", &colorLower[0], 179); //Hue (0 - 179)
    createTrackbar("HighH", "Control", &colorUpper[0], 179);
    createTrackbar("LowS", "Control", &colorLower[1], 255); //Saturation (0 - 255)
    createTrackbar("HighS", "Control", &colorUpper[1], 255);
    createTrackbar("LowV", "Control", &colorLower[2], 255);//Value (0 - 255)
    createTrackbar("HighV", "Control", &colorUpper[2], 255);

    // Objeto do objeto a ser buscado
    Target obj;

    while(1)
    {
        // Jogar frames da camera para Mat frameBRG
        cap.grab();
        cap.retrieve(frameBRG);
        frame = frameBRG; //Deletar na versao final

        if(frameBRG.empty())
        {//TODO - Fazer disso uma exception
            cerr << "Empty frame." << endl;
            break;
        }

        GaussianBlur(frameBRG, frameBRG, Size2i(11,11), 0); //Aplica um blur pro filtro ter menos ruido
        cvtColor(frameBRG, frameHSV, COLOR_BGR2HSV); //Converte a imagem lida em BRG para HSV

        // Filtrar a imagem
        inRange(frameHSV, Scalar(colorLower[0], colorLower[1], colorLower[2]), Scalar(colorUpper[0], colorUpper[1], redUpper[2]), frameMask);
        erode(frameMask, frameMask, NULL);
        dilate(frameMask, frameMask, NULL);

        // Exibir captura da camera com filtros -- Deletar na versao final
        namedWindow("Mask", WINDOW_AUTOSIZE);
        imshow("Mask", frameMask);

        // Encontra o contorno do Objetos
        vector<vector<Point>> contours;
        findContours(frameMask, contours, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE); //pode dar problema pela versao

        const float min_radius = 0.01; // Raio minimo do objeto para ser considerado
        const float catch_radius = 55; // Raio quando a distancia for a de ser pego pela garra

        if(contours.size() > 0)
        { // Se algum objeto foi encontrado
            if(!obj.findBestContour(contours))
                cerr << "Couldnt find contour" << endl;

            string center_str = "Center: X = " + to_string(obj.getX()) + " Y  = " + to_string(obj.getY());

            if(obj.getRadius() > min_radius)
            {
                circle(frame, obj.getCenter(), obj.getRadius(), Scalar(0, 255, 255), 2);
                putText(frame, center_str, Point(30, 30), FONT_HERSHEY_PLAIN, 1, Scalar(0, 0, 0));

                if(obj.getRadius() == catch_radius)
                {
                    // TODO - Mandar pra fpga q ta perto
                }
            }
        }
        else
        {
           // TODO - Mandar pra fpga q n tem objeto em vista 
        }
        
        // Exibir captura da camera com circulo ao redor da bola -- Deletar na versao final
        namedWindow("Cam input", WINDOW_AUTOSIZE);
        imshow("Cam input", frame);

        // Fecha o programa ao apertar qualquer tecla
        if(waitKey(30) != 255)
        {
            cap.release();
            break;
        }
    }

    std::cout << "Ending program." << endl;
    
    return 0;
}