/*
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>

#include "ull.h"

namespace ull
{
    /* ************************************************* */

    /* The information support data structure  */
    struct Register
    {
        uint32_t nmec;       //!< student number
        const char *name;    //!< student name
    };

    /* The linked-list support data structure */
    struct Node 
    {
        Register reg;
        struct Node *next;
    };

    static Node *head = NULL;

    /* ************************************************* */

    void reset()
    {
        Node *node = head;
        while(node) {
            Node *nNode = node;
            delete node;
            node = nNode;
        }
        head = NULL;
    }

    /* ************************************************* */

    void load(const char *fname)
    {
        // TODO
    }

    /* ************************************************* */

    void print()
    {
        printf("ull - print:\n");
        Node *node = head;
        while(node) {
            printf("%7d - %s\n", node->reg.nmec, node->reg.name);
            node = node->next;
        }
    }

    /* ************************************************* */

    void insert(uint32_t nmec, const char *name)
    {
        // create new node
        Register *newRegister = new Register({nmec,name});
        Node *newNode = new Node({*newRegister, NULL});

        if( head==NULL || nmec<head->reg.nmec ) {
            Node *oldHead = head;
            head = newNode;
            newNode->next = oldHead;
            printf("INS S\n");
            return; 
        }

        Node *node = head;
        while( true ) { // é sempre possivel inserir
            if( node->next==NULL || nmec<node->next->reg.nmec ) {
                Node *oldNode = node->next;
                node->next = newNode;
                newNode->next = oldNode;
                printf("INS M\n");
                return;
            }
            node = node->next;
        }

        // Node *node = head;
        // Node *prevNode = node;
        // while(true) {
        //     if( node==NULL || nmec>node->reg.nmec ) {
        //         Register *newStudent = new Register({nmec, name});
        //         Node *newNode = new Node({*newStudent, NULL});
        //         node = newNode;
        //         if(!head) head = node;
        //         printf("INSERT A (%d,%s)\n",nmec,name);
        //         return;
        //     } else if( nmec==node->reg.nmec ) {
        //         node->reg.name = name;
        //         printf("INSERT R (%d,%s)\n",nmec,name);
        //         return;
        //     }
        //     prevNode = node;
        //     node = node->next;
        // }
    }

    /* ************************************************* */

    const char *query(uint32_t nmec)
    {
        Node *node = head;
        while(node) {
            if( node->reg.nmec == nmec ) {
                return node->reg.name;
            }
            node = node->next;
        }
        return NULL;
    }

    /* ************************************************* */

    void remove(uint32_t nmec)
    {
        Node *node = head;
        Node *prevNode = node;
        while(node) {
            if( node->reg.nmec==nmec ) {
                if( prevNode==node ) head = node->next;
                else node->next = node->next->next;
                return;
            }
            prevNode = node;
            node = node->next;
        }
    }

    /* ************************************************* */

}