#include<iostream>

using namespace std;
int n,arr[100],key,loc=-1;

class binary{
	public:
		void input(){
			cout<<"Enter the number of elements:  ";
			cin>>n;
			cout<<endl;
			for(int i=0;i<n;i++){
				cout<<"Enter element number "<<i+1<<":-  ";
				cin>>arr[i];
			}
		}
		void display1(){
			cout<<endl<<"Elements list in array is :-  "<<endl;
			for(int i=0;i<n;i++){
				cout<<arr[i]<<" --> ";
			}
			cout<<endl;
		}
		void search(){
			cout<<endl<<"Enter the element you want to search in array:-  ";
			cin>>key;
			for(int i=0;i<n;i++){
				if(arr[i] == key){
					loc = i+1;
					cout<<endl<<"Element "<<key<<" is found at "<<loc<<" position. At "<<i<<" memory location"<<endl;
				}
			}
			if(loc == -1){
				arr[n] = key;
				cout<<endl<<"Element "<<key<<" is not found in current array."<<endl;
				cout<<"Element "<<key<<" is stored at last of the array at "<<n<<" position"<<endl;
				display2();
			}
		}
		void display2(){
			cout<<endl<<"Elements list in array is after adding new element is:-  "<<endl;
			for(int i=0;i<=n;i++){
				cout<<arr[i]<<" --> ";
			}
			cout<<endl;
		}
};
int main(){
	binary bs;
	bs.input();
	bs.display1();
	bs.search();
	return 0;
}
