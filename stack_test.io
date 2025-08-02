// --------------------------------------------------
// Test of stack implementation
// --------------------------------------------------
// Author: ad2108
// Version: 1.0
// Date: 2025-08-02
// License: MIT
// 
// Description:
//   Test of the implementation of a stack with
//   Gforth based stack operations
// --------------------------------------------------


// --------------------------------------------------
// Simple test framework
Assert := Object clone do(
  testObj := nil

  write := method(name, b, 
    name println
    if(b, 
      "Test passed" println,
      "!!!___Test not passed___!!!" println
    )
    "\n" println
  )

  assertEqual := method(name, a, b,
    self write(name, a==b)
  )

  assertNotEqual := method(name, a, b,
    self write(name, a!=b)
  )
)


// --------------------------------------------------
"Stack Tests: \n" println

// --------------------------------------------------
TestEmpty := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  assertEqual("Test empty stack after creation",
    list(),
    TestObj lst
  )
)

// --------------------------------------------------
TestPush := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)

  assertEqual("Push values on the stack",
    list(3, 4, 3),
    TestObj lst
  )
)

// --------------------------------------------------
TestDrop := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj drop

  assertEqual("Drop last value on the stack",
    list(3, 4),
    TestObj lst
  )
)

// --------------------------------------------------
TestPop := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  l1 := TestObj pop

  assertEqual("Pop value of the stack, stack drop",
    list(3, 4),
    TestObj lst
  )

  assertEqual("Pop value of the stack, popped value",
    3,
    l1
  )
)

// --------------------------------------------------
TestClear := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj clear

  assertEqual("Clear stack",
    list(),
    TestObj lst
  )
)

// --------------------------------------------------
TestAdd := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj add

  assertEqual("Add last 2 elements",
    list(3, 7),
    TestObj lst
  )
)

// --------------------------------------------------
TestSub := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj sub

  assertEqual("Subtract last 2 elements",
    list(3, 1),
    TestObj lst
  )
)

// --------------------------------------------------
TestMul := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj mul

  assertEqual("Multiply last 2 elements",
    list(3, 12),
    TestObj lst
  )
)

// --------------------------------------------------
TestDiv := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj div

  assertEqual("Divide last 2 elements",
    list(3, (4/3)),
    TestObj lst
  )
)

// --------------------------------------------------
TestSwap := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj swap

  assertEqual("Swap last 2 elements",
    list(3, 3, 4),
    TestObj lst
  )
)

// --------------------------------------------------
TestRot := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj rot

  assertEqual("Rotate last three elements",
    list(4, 3, 3),
    TestObj lst
  )
)
      
// --------------------------------------------------
TestDup := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj dup

  assertEqual("Duplicate last element",
    list(3, 4, 3, 3),
    TestObj lst
  )
)

// --------------------------------------------------
TestOver := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj over

  assertEqual("Copy element over the last element",
    list(3, 4, 3, 4),
    TestObj lst
  )
)

// --------------------------------------------------
TestNip := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj nip

  assertEqual("Nip element before the last element",
    list(3, 3),
    TestObj lst
  )
)

// --------------------------------------------------
TestTuck := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)
  TestObj tuck

  assertEqual("Tuck element before the last element",
    list(3, 4, 4, 3),
    TestObj lst
  )
)

// --------------------------------------------------
TestCount := Assert clone do(
  TestObj := Stack clone
  TestObj lst := list()
  TestObj push(3)
  TestObj push(4)
  TestObj push(3)

  assertEqual("Count values in the stack",
    3,
    TestObj count
  )
)


// --------------------------------------------------
// End of file
// --------------------------------------------------

