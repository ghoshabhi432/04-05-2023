#include <bits/stdc++.h>
using namespace std;

int main() {
	// your code goes here
	
	//input
	int n;
	cin>>n;
	int arr[n];
	for(int i=0;i<n;i++){
	   cin>>arr[i];
	}

	//question
	int mask=0;
	for(int i=0;i<n;i++){
	    mask=mask^arr[i];
	}
	cout<<mask<<endl;
	int one=0,two=0;
	for(int i=0;i<n;i++){
	    if((arr[i]&mask)==0){
	        one=one^arr[i];
	    }
	    else{
	        two=two^arr[i];
	    }
	}
	cout<<one<<" "<<two<<endl;
	
	return 0;
}

//output
8
2 4 6 7 4 5 6 2

5 7
