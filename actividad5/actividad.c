#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_function(void *arg) {
    printf("Thread created\n");
    return NULL;
}

int main() {
    pid_t pid;
    pthread_t thread_id;
    int num_processes = 0;
    int num_threads = 0;

    pid = fork();
    if (pid == 0) { /* child process */
        num_processes++;

        pid = fork();
        if (pid == 0) { /* grandchild process */
            num_processes++;
            pthread_create(&thread_id, NULL, thread_function, NULL);
            num_threads++;
        }
    }

    fork();
    num_processes++;

    printf("Number of unique processes created: %d\n", num_processes);
    printf("Number of unique threads created: %d\n", num_threads);

    return 0;
}