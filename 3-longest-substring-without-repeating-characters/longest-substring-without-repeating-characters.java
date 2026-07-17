class Solution {
    public int lengthOfLongestSubstring(String s) {
        Set<Character> chset=new HashSet<>();
        int left=0;
        int maxl=0;
        for(int i=0;i<s.length();i++){
            while(chset.contains(s.charAt(i))){
                chset.remove(s.charAt(left));
                left+=1;
            }
            chset.add(s.charAt(i));
            maxl=Math.max(maxl,i-left+1);
        }
        return maxl;
    }
}