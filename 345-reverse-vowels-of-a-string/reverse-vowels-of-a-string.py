class Solution:

    def reverseVowels(self, s: str) -> str:
        # Define set of vowels (both lowercase and uppercase for O(1) lookup)
        vowels = set("aeiouAEIOU")

        # Convert string to list since Python strings are immutable
        chars = list(s)
        left, right = 0, len(chars) - 1

        while left < right:
            # Advance left pointer until it points to a vowel
            while left < right and chars[left] not in vowels:
                left += 1

            # Move right pointer backward until it points to a vowel
            while left < right and chars[right] not in vowels:
                right -= 1

            # Swap the vowels at left and right pointers
            chars[left], chars[right] = chars[right], chars[left]

            # Move pointers inward
            left += 1
            right -= 1

        return "".join(chars)