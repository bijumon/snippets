class Matrix:
    def __init__(self, matrix_string):
        rowStrings = [r.split() for r in matrix_string.splitlines()]
        self.matrix = [[int(num) for num in row] for row in rowStrings]

    def row(self, index):
        return self.matrix[index - 1]

    def column(self, index):
        return [ column[index - 1] for column in self.matrix]

