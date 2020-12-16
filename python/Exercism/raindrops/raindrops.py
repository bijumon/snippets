def convert(number):
    answer = []
    raindrops = {3:"Pling", 5:"Plang", 7:"Plong"}
    if number % 3 == 0:
        answer += raindrops[3]
    if number % 5 == 0:
        answer += raindrops[5]
    if number % 7 == 0:
        answer += raindrops[7]
    return ''.join(answer) or str(number)

# def convert(number):
#     answer = ""
#     if number % 3 == 0:
#         answer += "Pling"
#     if number % 5 == 0:
#         answer += "Plang"
#     if number % 7 == 0:
#         answer += "Plong"
#     if number % 3 != 0 and number % 5 != 0 and number % 7 != 0:
#         answer = str(number)
#     return answer
