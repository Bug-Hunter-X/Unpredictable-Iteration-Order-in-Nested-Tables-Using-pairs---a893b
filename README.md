# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with nested tables.  The `pairs` function doesn't guarantee a specific iteration order, which can lead to unexpected behavior, particularly in scenarios where the order of elements is significant.

The `bug.lua` file contains a function `foo` which recursively iterates through a nested table. Because the order of iteration is not defined, the output of this function might vary from one run to another, or between different Lua implementations.

The `bugSolution.lua` file provides a solution that addresses this issue by iterating through the table keys in a specific order.  This usually improves predictability, but it's important to remember that even sorted iteration might have performance implications.