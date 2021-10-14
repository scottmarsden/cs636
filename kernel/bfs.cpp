#include <cassert>
#include <iostream>
#include "csr.h"
#include <queue>
#include "omp.h"

using std::cout;
using std::endl;

void mtBFS(graph_t& g, vid_t root){
	cout << "parallel BFS root = " << root << endl;
	csr_t* csr = &g.csr;
    	csr_t* csc = &g.csc;
	vid_t* nbrs = csr->get_nbrs();
    	vid_t* offset = csr->get_offset();
	int visited[(int) csr->get_vcount()];
    for (int i = 0; i < (int) csr->get_vcount(); i++){
      visited[i] = 1000;
    }
    visited[root] = 0;
	
    bool complete = false;
    omp_set_num_threads((int) csr->get_vcount());
    vid_t level = 0;
    
	while (complete != true) {
  	//paralell loop instead of queue otherwise same structure as BFS
  	#pragma omp parallel for
  	for (int i = 0; i < (int) csr->get_vcount(); i++) {
    		if(visited[i] == level){
			
		vid_t start = offset[i];
      		vid_t end = offset[i + 1];
		}
	}
		
		for (int j = start; j < end; j++){
			if (visited[nbrs[i]] > visited[currNode] + 1 ){
        		//cout << nbrs[i]  << endl;
          			visited[nbrs[i]] = visited[currNode] + 1;
			}
		}
	complete = true;
	level = level + 1;
	//check to make sure we have seen every node
	for (int i = 0; i < (int) csr->get_vcount(); i++{
		if(visted[i] == 1000){
			complete = false
		}
	}
	}
	     
    //same print structure are regular BFS
    int levelCount = 0;
    for(int i = 0; i < (int) csr->get_vcount(); i++){
      	 if (visited[i] > levelCount){
        	levelCount = visited[i];
        		//cout << levelCount << endl;
      	 }
     }
    
    
    //counts the level
    int levels[levelCount+1] = {0};
    for(int i = 0; i < (int) csr->get_vcount(); i++){
      	levels[visited[i]] = levels[visited[i]]+ 1;
    }
    
    
    //prints level output in form Level #: # of nodes
    for(int i = 0; i < levelCount + 1; i++){
      	cout<<"level"<< i << ": " << levels[i] <<endl;
    }
	

	
}


void run_bfs(graph_t& g, vid_t root)
{
    csr_t* csr = &g.csr;
    csr_t* csc = &g.csc;

    //TODO

    cout << "root = " << root << endl;
    //print bfs tree here
    //i.e. how many vertex in each level
    vid_t* nbrs = csr->get_nbrs();
    vid_t* offset = csr->get_offset();
    int visited[(int) csr->get_vcount()];
    for (int i = 0; i < (int) csr->get_vcount(); i++){
      visited[i] = 1000;
    }
    visited[root] = 0;
    queue<vid_t> q;
	//cout << "sucess" << endl;
    q.push(root);
    while(!q.empty()){
    
      vid_t currNode = q.front();
      //cout << currNode  << endl;
      
      vid_t start = offset[currNode];
      vid_t end = offset[currNode + 1];

      for (int i = start; i < end; i++){
      //cout << nbrs[i]  << endl;
      //cout << visited[nbrs[i]] + 1   << endl;
        if (visited[nbrs[i]] > visited[currNode] + 1 ){
        //cout << nbrs[i]  << endl;
          visited[nbrs[i]] = visited[currNode] + 1;
          //level[i] = level[currNode] + 1;
          q.push(nbrs[i]);
          
          //cout << q.back()<< "blach"  << endl;
        }
        
      }
      q.pop();
    }

    cout << "root = " << root << endl;
    int levelCount = 0;
    for(int i = 0; i < (int) csr->get_vcount(); i++){
      if (visited[i] > levelCount){
        levelCount = visited[i];
        //cout << levelCount << endl;
      }
    }
    
    
    //counts the level
    int levels[levelCount+1] = {0};
    for(int i = 0; i < (int) csr->get_vcount(); i++){
      levels[visited[i]] = levels[visited[i]]+ 1;
    }
    
    
    //prints level output in form Level #: # of nodes
    for(int i = 0; i < levelCount + 1; i++){
      cout<<"level"<< i << ": " << levels[i] <<endl;
    }
}


