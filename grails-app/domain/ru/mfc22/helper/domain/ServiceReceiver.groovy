package ru.mfc22.helper.domain

class ServiceReceiver {

    String name
    String shortName

    static constraints = {
        name(nullable: false, blank: false)
        shortName(nullable: false, blank: false)
    }

    static hasMany = [serviceCards : ServiceCard]

}
