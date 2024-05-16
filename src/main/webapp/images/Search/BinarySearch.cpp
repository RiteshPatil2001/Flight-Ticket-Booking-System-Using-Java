#include<iostream>

using namespace std;
int n,a[100],temp,key,low,high,mid;

class binarysearch{
	public:
		void input(){
			cout<<"Enter the number of elements:-  ";
			cin>>n;
			cout<<endl;
			for(int i=0;i<n;i++){
				cout<<"Enter element number "<<i+1<<":-  ";
				cin>>a[i];
			}
		}
		void display(){
			cout<<endl<<"Array elements are :- "<<endl;
			for(int i=0;i<n;i++){
				cout<<a[i]<<" --> ";
			}
		}
		void sort(){
			for(int i=0;i<n;i++){
				for(int j=0;j<n-i-1;j++){
                	if(a[j]>a[j+1]){
                    	temp=a[j];
                    	a[j]=a[j+1];
                    	a[j+1]=temp;
                    }
                }
			}
		}
		void sorteddisplay(){
			cout<<endl<<endl<<"Array elements after sorting are :- "<<endl;
			for(int i=0;i<n;i++){
				cout<<a[i]<<" --> ";
			}
		}
		void search(){
			cout<<endl<<endl<<"enter a key which you want to search in array :-  ";
			cin>>key;
			low = 0;
			high = n-1;
			while(low<=high){
				mid = (low+high)/2;
				if(a[mid]==key){
					cout<<endl<<"Element "<<key<<" is found at "<<mid+1<<" position and on "<<mid<<" index.";
					exit(0);
				}
				else if(key>a[mid]){
					low = mid+1;
				}
				else if(key<a[mid]){
					high = mid-1;
				}
			}
			cout<<endl<<"Element "<<key<<" is not found is the entire array. Please try to find another element.";
		}
};
int main(){
	binarysearch bs;
	bs.input();
	bs.display();
	bs.sort();
	bs.sorteddisplay();
	bs.search();
	return 0;
}
