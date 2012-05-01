package ru.mfc22.helper.domain

import org.springframework.dao.DataIntegrityViolationException

class ServiceCardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def scaffold = ServiceCard
    static navigation = [
            [group: 'menu',
            order: 1,
            action: 'list',
            subItems: [
                    [action: 'list', order: 1],
                    [action: 'create', order: 2, title: "Создать"],
                    [action: 'edit', order: 3]
            ]],
            [action: 'dictionary',
            order: 2]
    ]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [serviceCardInstanceList: ServiceCard.list(params), serviceCardInstanceTotal: ServiceCard.count()]
    }

    def create() {
        [serviceCardInstance: new ServiceCard(params)]
    }

    def save() {
        def serviceCardInstance = new ServiceCard(params)
        if (!serviceCardInstance.save(flush: true)) {
            render(view: "create", model: [serviceCardInstance: serviceCardInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), serviceCardInstance.id])
        redirect(action: "show", id: serviceCardInstance.id)
    }

    def show() {
        def serviceCardInstance = ServiceCard.get(params.id)
        if (!serviceCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "list")
            return
        }

        [serviceCardInstance: serviceCardInstance]
    }

    def edit() {
        def serviceCardInstance = ServiceCard.get(params.id)
        if (!serviceCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "list")
            return
        }

        [serviceCardInstance: serviceCardInstance]
    }

    def update() {
        def serviceCardInstance = ServiceCard.get(params.id)
        if (!serviceCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (serviceCardInstance.version > version) {
                serviceCardInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'serviceCard.label', default: 'ServiceCard')] as Object[],
                        "Another user has updated this ServiceCard while you were editing")
                render(view: "edit", model: [serviceCardInstance: serviceCardInstance])
                return
            }
        }

        serviceCardInstance.properties = params

        if (!serviceCardInstance.save(flush: true)) {
            render(view: "edit", model: [serviceCardInstance: serviceCardInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), serviceCardInstance.id])
        redirect(action: "show", id: serviceCardInstance.id)
    }

    def delete() {
        def serviceCardInstance = ServiceCard.get(params.id)
        if (!serviceCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "list")
            return
        }

        try {
            serviceCardInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serviceCard.label', default: 'ServiceCard'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def dictionary() {
        [:]
    }

}
