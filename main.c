#include <stdio.h>
#include "array_list.h"

int main(void) {
    AList_t* array_list = array_list_new(sizeof(float));

    const float x = 3.14f;
    const float y = 6.27f;
    const float z = 1.7f;

    array_list_add(array_list, &x);
    array_list_add(array_list, &y);
    array_list_add(array_list, &z);

    printf("x: %g\n", *(float*)array_list->data);
    printf("y: %g\n", *((float*)array_list->data + 1));
    printf("z: %g\n", *((float*)array_list->data + 2));

    array_list_delete(array_list);
    return 0;
}
