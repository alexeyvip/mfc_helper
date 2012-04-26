package ru.mfc22.helper.domain

class ServiceCategory {

    String name;

    static constraints = {
        name(nullable: false, blank: false)
    }

    static hasMany = [serviceCards : ServiceCard]

}
