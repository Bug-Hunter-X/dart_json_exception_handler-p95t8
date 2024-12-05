# Dart: Unhandled Exception in JSON Decoding and Null Safety

This repository demonstrates a common error in Dart applications: unhandled exceptions during JSON decoding and the risk of accessing nested JSON data without proper null checks. The `bug.dart` file contains the buggy code, while `bugSolution.dart` provides a corrected version with robust error handling and null safety.

## Bug Description:

The `fetchData` function in `bug.dart` fetches JSON data from an API.  It incorrectly accesses nested JSON data without checking for null values, potentially resulting in a runtime exception if the 'nested' or 'value' keys are missing.  Additionally, the catch block lacks proper error handling, simply printing the error and continuing execution.

## Solution:

The `bugSolution.dart` file demonstrates how to address these issues.  It incorporates null checks using the `?` operator for optional values and handles potential exceptions more effectively, ensuring that the application doesn't crash unexpectedly and provides informative error messages.