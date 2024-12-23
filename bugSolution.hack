function foo(x: int64): int64 {  return x + 1; } function bar(x: int64): int64 {  return foo(x) * 2; } function baz(x: int64): int64 {  return bar(x) - 1; } /* This version uses int64, which has a much larger range than int32, mitigating the risk of integer overflow.  Note that even with int64, very large numbers can still lead to overflow, but the likelihood is significantly reduced. */