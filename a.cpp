#include <iostream>
#include <cstdio>
146#include <cmath>
147
148using namespace std;
149
150int main() {
151        int a, b, d, t;
152        while ( 2 == scanf( "%d%d", &a, &b ) ) {
153                if ( a > b ) {
154                        t = a;
155                        a = b;
156                        b = t;
157                }
158                d = b - a;
159                t = floor( d * ( sqrt(5.0) + 1 ) / 2 );
160                puts( (t == a) ? "0" : "1" );
161        }
162        return 0;
}
