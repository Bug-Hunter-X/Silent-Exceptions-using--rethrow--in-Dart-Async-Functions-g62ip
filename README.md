# Silent Exceptions in Dart Async Functions using `rethrow`

This repository demonstrates a common, yet easily overlooked issue in Dart when handling exceptions within asynchronous functions.  The use of `rethrow` without specifying the exception type can lead to silent failures, obscuring the root cause of errors.

## Problem
The `bug.dart` file shows a scenario where an exception is caught, but then rethrown using `rethrow`.  While this seems harmless, it masks the original exception type.  The `main` function catches exceptions, but only gets a generic `Exception` object losing crucial information about the error.

## Solution
The `bugSolution.dart` file provides a solution where the caught exception is rethrown with its specific type. This allows for more precise error handling and easier debugging.

## How to Run
1. Clone this repository.
2. Run `dart bug.dart` and `dart bugSolution.dart` to observe the difference in exception handling.