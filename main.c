#include <stdio.h>
#include <stdlib.h> // for rand() and srand()
#include <time.h>   // for time() in srand()
#include "appdev.h"

int main()
{
    rock r; // declare an instance of rock

    // Initialize random seed
    srand(time(NULL));

    printf("Application Developers Rock!\n");
    printf("Enter Rockers' name: ");
    scanf("%19s", r.rname); // limit input to 19 chars (N-1)

    r.max = rand() % 50 + 51; // max: random value between 51-100
    r.min = rand() % 50 + 1;  // min: random value between 1-50

    send_data(r);
    printf("Rockn'Roll\n");

    return 0;
}