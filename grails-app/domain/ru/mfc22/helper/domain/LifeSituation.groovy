package ru.mfc22.helper.domain

class LifeSituation {

    String name

    static constraints = {
        name(nullable: false, blank: false)
    }

    static hasMany = [serviceCards : ServiceCard]

    String toString() {
        return name;
    }

}
