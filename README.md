# Io-Stack

This is a simple implementation of a stack in [Io](https://iolanguage.org/). This stack has [GForth](https://gforth.org/) based stack operations. 

## Create Stack Object 

To use the stack create a stack object. Attention all stack objects are linked and changes in one result in changes of the other objects!

```io
// Create Stack Object
testStack := Stack clone
```

## Push

To push a value on the stack use the push method:

```io
// Push value on the stack
testStack := Stack clone

testStack push(2) // (2)
```

## Drop

To drop the last value of the stack use the drop method:

```io
// Drop last value of the stack
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack drop // (1, 2, 3)
```

## Pop

Pop pops the last value of the stack and returns it for further use.

```io
// Pop value of the stack
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

l1 := testStack pop // l1 = 4, stack = (1, 2, 3)
```

## Clear

This method clears the stack.

```io
// Clear stack
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack clear // ()
```

## Show

This method prints the stack. Attention this method was not tested.

```io
// Show stack
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack show // => 1, 2, 3, 4
```

## Add

Add pop the last 2 elements from the stack and pushes their result onto the stack.

```io
// Show stack
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack add // (1, 2, 7)
```

## Sub, Mul, Div

These methods work like add. They pop 2 elements of the stack and push the result back onto the stack.

## Swap

Swap swaps the last 2 elements of the stack.

```io
// Swap
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack swap // (1, 2, 4, 3)
```

## Rot

The rot method rotates the last three elements of the stack. The last element (from the end) becomes the second and the second becomes the third element. The third element becomes the last of the stack. (1 2 3 -> 2 3 1).

```io
// Rot
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack rot // (1, 3, 4, 2)
```

## Dup

Dup duplicates pushes a copy of the last element on the stack.

```io
// Dup
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack dup // (1, 2, 3, 4, 4)
```

## Over

Over pushes the copy of the second last element onto the stack.

```io
// Over
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack over // (1, 2, 3, 4, 3)
```

## Nip

The nip method pops the second last element from the stack.

```io
// Nip
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack nip // (1, 2, 4)
```

## Tuck

Tuck pops the last element of the stack, then dups the seconds last. After that the last element gets returned onto the stack.

```io
// Tuck
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

testStack tuck // (1, 2, 3, 3, 4)
```

## Count 

This method counts the elements on the stack.

```io
// Count
testStack := Stack clone
testStack lst append(1, 2, 3, 4)

l1 := testStack count// l1 = 4

