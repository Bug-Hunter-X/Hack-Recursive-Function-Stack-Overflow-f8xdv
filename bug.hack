function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will produce a stack overflow error for sufficiently large values of x because it uses recursion without a base case that's always reached. The base case x == 0 is only reached if the initial argument to foo is non-negative.  If a negative value is given, the recursion will continue indefinitely.