class Solution {
    public String convert(String s, int numRows) {
        // Base case: if numRows is 1 or greater than the string length, 
        // the zigzag pattern is just the string itself.
        if (numRows == 1 || numRows >= s.length()) {
            return s;
        }

        // Create an array of StringBuilders for each row
        StringBuilder[] rows = new StringBuilder[numRows];
        for (int i = 0; i < numRows; i++) {
            rows[i] = new StringBuilder();
        }

        int currRow = 0;
        boolean goingDown = false;

        // Traverse each character in the string
        for (char c : s.toCharArray()) {
            rows[currRow].append(c);
            
            // Change direction when we hit the top or bottom row
            if (currRow == 0 || currRow == numRows - 1) {
                goingDown = !goingDown;
            }
            
            // Move to the next row depending on the direction
            currRow += goingDown ? 1 : -1;
        }

        // Combine all rows into a single string
        StringBuilder result = new StringBuilder();
        for (StringBuilder row : rows) {
            result.append(row);
        }

        return result.toString();
    }
}