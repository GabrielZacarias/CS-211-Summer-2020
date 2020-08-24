#include <stdlib.h>
#include <stdio.h>



typedef struct node{
	int value;
	struct node *next;
} Node;


int insert(Node **ptrToHead, int x){
	Node *temp;

	temp = (Node *) malloc(sizeof(Node));
	temp->value = x;
	temp->next = NULL;

	if(*ptrToHead == NULL){
		*ptrToHead = temp;
	}else{
		temp->next = *ptrToHead;
		*ptrToHead = temp;
	}

	return 0;
}

void printLL(Node *head){
	Node *ptr = head;
	while(ptr != NULL){
		printf("%d ", ptr->value);
		ptr = ptr->next;
	}
}

int main(int argc, char *argv[]){

	Node *head = NULL;

	insert(&head, 1);
	insert(&head, 4);
	insert(&head, 6);

	printLL(head);

	// free linked list
	Node *ptr = head;
	Node *ptrNext;
	while(ptr != NULL){
		ptrNext = ptr->next;
		free(ptr);
		ptr = ptrNext;
	}


	return 0;
}
