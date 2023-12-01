#include <bits/stdc++.h>
using namespace std;
int main()
{
    float a[100][100], res[100], f;
    int i ,j ,k ,n = 3;
    for(i = 0; i < n; i++)
    {
        float p;
            if(i == 0)
            {
                a[i][2] = 1;
                 p = 25;
                for(j = 0; j <= 1; j++)
                {
                    a[i][j] = p;
                    p = sqrt(p);
                }
                a[i][3] = 106.8;

         }
            else if(i == 1)
            {
                a[i][2] = 1;
                 p = 64;
                for(j = 0 ; j <= 1; j++)
                {
                    a[i][j] = p;
                    p = sqrt(p);
                }
                a[i][3] = 177.2;
            }
             else
             {
                 a[i][2] = 1;
                 p = 121;
                for(j = 0 ; j <= 1; j++)
                {
                    a[i][j] = p;
                    p = sqrt(p);
                }
                a[i][3] = 279.2;
            }

        
    }

    for(i = 0; i < n-1; i++){

        if(a[i][i] == 0.0){
            cout << "error"<<endl;
            return 0;
        }

        for(j = i + 1; j < n; j++){
            f = a[j][i]/a[i][i];
            for(k = 0; k <= n; k++){
                a[j][k] = a[j][k] - f*a[i][k];
            }
        }
    }

    res[n - 1] = a[n - 1][n]/a[n - 1][n - 1];

    for(i = n - 2; i >= 0; i--)
    {
        res[i] = a[i][n];
        for(j = i + 1; j < n; j++){
            res[i] = res[i] - a[i][j]*res[j];
        }

        res[i] = res[i]/a[i][i];
    }

    for(i = 0; i < n;i++)
    {
        cout <<"a"<<i + 1<<": "<<res[i]<< endl;
    }

    
    float ans = 0;
    float tst = 11.0;
    int g = 2;
    for(i = 0; i < 3; i++){
        float sm = 1;
        for(j = 0;j < g - i; j++){
            sm *= tst;
        }
        ans += sm*res[i];
    }

    cout <<"VELOCITY : "<<ans<<" m/s"<<endl;
}