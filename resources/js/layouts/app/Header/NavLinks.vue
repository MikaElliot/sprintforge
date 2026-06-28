<script setup lang="ts">
import { Link } from '@inertiajs/vue3';
import type { NavItem } from '@/types/index'

defineProps<{
    items: NavItem[]
}>()

</script>
<template>

    <ul
        class="
            flex-col md:flex-row
            flex md:gap-6 gap-2 item-center justify-center
        ">
        <li class="flex" v-for="item in items" :key="item.title">
            <Link :href="item.href" class="md:bg-transparent flex-1 text-center py-2">{{ item.title }}</Link>
        </li>
    </ul>
    
</template>