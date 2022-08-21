#include <algorithm>
#include <array>
#include <bitset>
#include <cassert>
#include <chrono>
#include <cmath>
#include <cstring>
#include <functional>
#include <iomanip>
#include <iostream>
#include <map>
#include <numeric>
#include <queue>
#include <random>
#include <set>
#include <vector>
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
	void solve();
};

void runCase() {
	// read input and print output
	// Solution sol
}


int main(int argc, char **argv) {
	int cases;
	cin >> cases;

	while (cases--) {
		runCase();
	}
	cout << flush;
	return 0;
}
