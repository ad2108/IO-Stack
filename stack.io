// --------------------------------------------------
// Implementation of a stack
// --------------------------------------------------
// Author: ad2108
// Version: 1.0
// Date: 2025-08-01
// License: MIT
// 
// Description:
//   A simple implementation of a stack with
//   Gforth based stack operations
// --------------------------------------------------

// --------------------------------------------------
// Stack Class
Stack := Object clone do(

  // ------------------------------------------------
  // Internal base is a list
  lst := List clone

  // ------------------------------------------------
  // Size of the internal list
  size := method(return lst size)

  // ------------------------------------------------
  // Push element on the stack
  push := method(v, lst append(v))

  // ------------------------------------------------
  // Drop element from the stack
  drop := method(lst := lst remove(lst at(lst size-1)))

  // ------------------------------------------------
  // Pop element of the stack
  pop := method(
    if(lst size != 0, 
      l := lst last
      self drop
      return l
    )
    return nill
  )

  // ------------------------------------------------
  // Clear stack
  clear := method(for(i,0,lst size-1, 
    self drop
  ))

  // ------------------------------------------------
  // Show stack 
  show := method(lst join(", ") println)

  // ------------------------------------------------
  // Add two last elements of the stack
  add := method(
    if(lst size >= 2,
      l1 := self pop
      l2 := self pop
      lst append(l1+l2),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Subtrace two last elements of the stack
  sub := method(
    if(lst size >= 2,
      l1 := self pop
      l2 := self pop
      lst append(l2-l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Multiply two last elements of the stack
  mul := method(
    if(lst size >= 2,
      l1 := self pop
      l2 := self pop
      lst append(l1*l2),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Divide two last elements of the stack
  div := method(
    if(lst size >= 2,
      l1 := self pop 
      l2 := self pop
      lst append(l2/l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Swap the last two elements of the stack
  swap := method(
    if(lst size >= 2,
      l1 := self pop
      l2 := self pop
      lst append(l2, l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Rotate the last three elements of the stack
  rot := method(
    if(lst size >= 3,
      l1 := self pop
      l2 := self pop
      l3 := self pop
      lst append(l2, l1, l3),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Duplicate the last element of the stack
  dup := method(
    if(lst size >= 1,
      l1 := lst last
      lst append(l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Copy element over the last element
  over := method(
    if(lst size >= 2,
      l1 := lst at(lst size-2) 
      lst append(l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Nip second element 
  nip := method(
    if(lst size >= 2,
      l1 := self pop
      self pop
      lst append(l1),

      Exception raise("Stack underflow")
    )
  )

  // ------------------------------------------------
  // Count elements in stack 
  count := method(self size)

)
      
// --------------------------------------------------
// End of file
// --------------------------------------------------

