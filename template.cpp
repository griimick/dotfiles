#include <algorithm>
#include <bitset>
#include <cassert>
#include <chrono>
#include <cmath>
#include <cstring>
#include <functional>
#include <iomanip>
#include <iostream> // <ios,streambuf,istream,ostream,iosfwd> cout,cerr,endl,flush,ends,
#include <numeric>
#include <random>

// Containers // list, dequeue, forward_list omitted
#include <array>
#include <stack>
#include <queue>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <map>
#include <set>
using namespace std;

// quickly log variables in `(var): value` format using `dbg(var)`
void dbg_out() { cerr << endl; }
template<typename Head, typename... Tail> void dbg_out(Head H, Tail... T) { cerr << ' ' << H; dbg_out(T...); }
#ifdef GRIIMICK
#define dbg(...) cerr << "(" << #__VA_ARGS__ << "):", dbg_out(__VA_ARGS__)
#else
#define dbg(...)
#endif

class Solution {
public:
	void solve();
};

void runCase(int caseNum) {
	// read input and print output
	// Solution sol; 
	// cout << "Case #" << caseNum << ": " << '\n';
}


int main(int argc, char **argv) {
	int cases;
	cin >> cases;
	int caseNum = 0;

	while (caseNum++ < cases) {
		runCase(caseNum);
	}
	cout << flush;
	return 0;
}
