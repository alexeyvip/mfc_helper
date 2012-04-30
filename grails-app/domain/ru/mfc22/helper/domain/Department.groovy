package ru.mfc22.helper.domain

class Department {

    String name
    String shortName

    static constraints = {
        name(nullable: false, blank: false)
    }

    static hasMany = [serviceCards : ServiceCard]

    String toString() {
        return shortName;
    }

}
