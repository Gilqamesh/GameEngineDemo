int main()
{
    int a = 0;
    ++a;
}

/*
  40111d:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401120:	83 c1 01             	add    $0x1,%ecx
  401123:	89 4d fc             	mov    %ecx,-0x4(%rbp)
*/
