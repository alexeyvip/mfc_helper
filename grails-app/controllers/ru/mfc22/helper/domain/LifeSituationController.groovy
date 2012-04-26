package ru.mfc22.helper.domain

import org.springframework.dao.DataIntegrityViolationException

class LifeSituationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [lifeSituationInstanceList: LifeSituation.list(params), lifeSituationInstanceTotal: LifeSituation.count()]
    }

    def create() {
        [lifeSituationInstance: new LifeSituation(params)]
    }

    def save() {
        def lifeSituationInstance = new LifeSituation(params)
        if (!lifeSituationInstance.save(flush: true)) {
            render(view: "create", model: [lifeSituationInstance: lifeSituationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), lifeSituationInstance.id])
        redirect(action: "show", id: lifeSituationInstance.id)
    }

    def show() {
        def lifeSituationInstance = LifeSituation.get(params.id)
        if (!lifeSituationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "list")
            return
        }

        [lifeSituationInstance: lifeSituationInstance]
    }

    def edit() {
        def lifeSituationInstance = LifeSituation.get(params.id)
        if (!lifeSituationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "list")
            return
        }

        [lifeSituationInstance: lifeSituationInstance]
    }

    def update() {
        def lifeSituationInstance = LifeSituation.get(params.id)
        if (!lifeSituationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (lifeSituationInstance.version > version) {
                lifeSituationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lifeSituation.label', default: 'LifeSituation')] as Object[],
                        "Another user has updated this LifeSituation while you were editing")
                render(view: "edit", model: [lifeSituationInstance: lifeSituationInstance])
                return
            }
        }

        lifeSituationInstance.properties = params

        if (!lifeSituationInstance.save(flush: true)) {
            render(view: "edit", model: [lifeSituationInstance: lifeSituationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), lifeSituationInstance.id])
        redirect(action: "show", id: lifeSituationInstance.id)
    }

    def delete() {
        def lifeSituationInstance = LifeSituation.get(params.id)
        if (!lifeSituationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "list")
            return
        }

        try {
            lifeSituationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'lifeSituation.label', default: 'LifeSituation'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
