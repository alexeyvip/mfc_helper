package ru.mfc22.helper.domain

class ServiceResult {

    String name

    static constraints = {
        name(nullable: false, blank:  false)
    }

    static hasMany = [serviceCards : ServiceCard]

    static belongsTo = [ServiceCard]

    String toString() {
        return name;
    }

}
