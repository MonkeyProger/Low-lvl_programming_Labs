#include "findCoeffs.h"
int *findCoeffs(int power) {
    int a = 1;
    int *arr = (int*) calloc(power+1, sizeof(int));
    for (int t=1; t<= power+1; t++){
        arr[t-1]=a;
        a=a*(power + 1 - t)/t;
    }
    return arr;
}
