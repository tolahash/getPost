#pragma once

#define N 20  // length of user name

typedef struct {
    int max;
    int min;
    char rname[N];  // this string can hold N-1 characters
} rock;

void send_data(rock r);