class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, color: int) -> List[List[int]]:
        rows, columns = len(image) , len(image[0]) # r -> # of rows , c -> # of columns
        color_to_replace = image[sr][sc]

        if color_to_replace == color:
            return image 

        def dfs(r, c):

            if ( r < 0 or r >= rows or c < 0 or c >= columns  or image[r][c] != color_to_replace):
                return 

            image[r][c] = color

            dfs( r+1, c)
            dfs( r-1, c)
            dfs( r, c+1)
            dfs(r, c-1)

        
        dfs(sr, sc)
        return image