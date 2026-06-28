import { defineStore } from "pinia";

export const useUI = defineStore('uiModal', {
    state: () => ({
        showProjectForm: false,
        showGuestSidebar: true
    }),
    actions: {
        openProjectForm() {
            this.showProjectForm = true
        },
        closeProjectForm() {
            this.showProjectForm = false
        },
        openGuestSidebar() {
            this.showGuestSidebar = true
        },
        closeGuestSidebar() {
            this.showGuestSidebar = false
        }
    }
})