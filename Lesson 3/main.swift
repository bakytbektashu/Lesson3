var month = 7
var lessonInOneWeek = 2
var lessons = 0

for _ in 1...month {
    lessons += 4 * lessonInOneWeek
}

print(lessons)
