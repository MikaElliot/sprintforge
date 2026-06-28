<script setup lang="ts">
    import AppHeader from "@/layouts/app/Header/AppHeader.vue";
    import AppFooterLayout from "@/layouts/app/Footer/AppFooterLayout.vue";
    import GuestSidebar from "@/layouts/app/Sidebar/Sidebar.vue"
    import ProjectModal from "@/layouts/app/modal/ProjectModal.vue";
    import { useUI } from "@/stores/uiStores";

    const ui = useUI();

</script>
<template>
    <div class="flex text-text min-h-screen relative overflow-hidden">

        <!-- //Modal -->
         <div class="fixed inset-0">
             <div
                 class="absolute inset-0 bg-black/75 backdrop-blur-sm left-4 right-4 rounded-t-4xl border-t-4 border border-t-brand border-brand/75 duration-500 flex flex-col gap-2 overflow-hidden"
                 :class="ui.showProjectForm ? 'top-[25%]' : 'top-[98%]'"
                 @mouseenter="ui.openProjectForm()"
                 @mouseleave="ui.closeProjectForm()"
             >
                 <ProjectModal />
             </div>
         </div>
        <!-- //GuestSidebar -->
        <!-- <GuestSidebar /> -->

        <!-- //Main Content of project -->
        <main class="main flex-1 bg-black flex flex-col">
            <AppHeader />
                <slot />
            <AppFooterLayout />
        </main>
    </div>
</template>