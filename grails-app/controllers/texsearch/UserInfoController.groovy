package texsearch

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserInfo.list(params), model: [userInfoInstanceCount: UserInfo.count()]
    }

    def show(UserInfo userInfoInstance) {
        respond userInfoInstance
    }

    def create() {
        respond new UserInfo(params)
    }

    @Transactional
    def save(UserInfo userInfoInstance) {
        if (userInfoInstance == null) {
            notFound()
            return
        }

        if (userInfoInstance.hasErrors()) {
            respond userInfoInstance.errors, view: 'create'
            return
        }

        userInfoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userInfo.label', default: 'UserInfo'), userInfoInstance.id])
                redirect userInfoInstance
            }
            '*' { respond userInfoInstance, [status: CREATED] }
        }
    }

    def edit(UserInfo userInfoInstance) {
        respond userInfoInstance
    }

    @Transactional
    def update(UserInfo userInfoInstance) {
        if (userInfoInstance == null) {
            notFound()
            return
        }

        if (userInfoInstance.hasErrors()) {
            respond userInfoInstance.errors, view: 'edit'
            return
        }

        userInfoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserInfo.label', default: 'UserInfo'), userInfoInstance.id])
                redirect userInfoInstance
            }
            '*' { respond userInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserInfo userInfoInstance) {

        if (userInfoInstance == null) {
            notFound()
            return
        }

        userInfoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserInfo.label', default: 'UserInfo'), userInfoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userInfo.label', default: 'UserInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
