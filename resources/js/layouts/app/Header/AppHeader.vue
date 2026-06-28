<script setup lang="ts">
import { ref } from 'vue';
import Logo from './Logo.vue';
import NavLinks from './NavLinks.vue';
import type { NavItem } from '@/types/index'
import { UserCircleIcon } from 'lucide-vue-next';
import { Menu, X } from 'lucide-vue-next'

//Logo name
const appName = "SprintForge"

// Navigation list
const navList = ref<NavItem[]>([
    { title: 'Home', href: '/', isActive: true },
    { title: 'Projects', href: '/projects' },
    { title: 'Sprints', href: '/sprints' },
    { title: 'Contact', href: '/contact' },
])

const menuOpen = ref(false)

</script>
<template>

    <!-- // Desktop Header -->
    <header
        class="
            relative z-30
            bg-layer-2 p-4 mb-2
            hidden md:flex justify-between
        ">
        <Logo :appName="appName" />
        <nav class="flex item-center gap-12">
            <NavLinks :items="navList" />
            <ul class="relative">
                <li>
                    <button class="text-gray-700 relative cursor-pointer">
                        <UserCircleIcon />
                        <span class="absolute -bottom-2 left-0 w-full h-1 bg-danger"></span>
                    </button>
                </li>
            </ul>
        </nav>
    </header>

    <!-- //Mobile Header -->
    <header
        class="
            md:hidden
            relative px-4 py-2 z-30
            flex justify-between
            ">
        <Logo :appName="appName" />
        <button
            class="
                flex items-center justify-center w-9 h-9 rounded-lg
                cursor-pointer relative z-30
                text-white/50 hover:text-white hover:bg-white/5
                transition-colors hover:bg-teal-500"
            :aria-expanded="menuOpen"
            aria-controls="mobile-menu"
            aria-label="Toggle menu"
            @click="menuOpen = !menuOpen"
        >
            <component
                :is="menuOpen ? X : Menu"
                :size="20"
                :stroke-width="1.75"
                aria-hidden="true"
            />
        </button>

        <nav
            v-if="menuOpen"
            class="
                absolute left-0 right-0 top-0 p-2 px-6 z-20
                flex flex-col item-center gap-12
                bg-layer-2">
            <NavLinks :items="navList" />
            <ul class="relative bg-success text-center rounded-md">
                <li>
                    <button class="text-gray-700 relative">
                        <UserCircleIcon />
                        <span class="absolute -bottom-2 left-0 w-full h-1 bg-danger"></span>
                    </button>
                </li>
            </ul>
        </nav>
    </header>
</template>