function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative input
  } elseif (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-3); // Test with negative input
}

This improved version explicitly handles negative input values by returning 0, preventing infinite recursion. The elseif condition provides improved readability and efficiency.