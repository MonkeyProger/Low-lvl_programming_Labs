#include "findCoeffs.h"
int main() {
    int power = 5;
    int *res = findCoeffs(power);
    for (int i = 0; i <= power; i++)
    {
        printf("%i \n", res[i]);
    }
    return 0;
}

