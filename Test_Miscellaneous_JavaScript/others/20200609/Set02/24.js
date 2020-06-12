let group = {
    title: "Our Group",
    students: ["John", "Pete", "Alice"],

    showList() {
        let self = this;
        this.students.forEach(function (student) {
            // Error: Cannot read property 'title' of undefined
            console.log(self.title + ': ' + student)
        });
    }
};

group.showList();