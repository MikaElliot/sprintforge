<script setup>
import { ref, computed } from 'vue'

// Props — le mode est injecté depuis le parent (auth, store, etc.)
const props = defineProps({
  mode: {
    type: String,
    default: 'standard', // 'standard' | 'dev' | 'admin'
  },
})

const modes = {
  standard: {
    label: 'Standard mode',
    pillClass: 'bg-violet-500/10 border-violet-500/35 text-violet-400',
    dotClass: 'bg-violet-400',
    barClass: 'bg-violet-500/5 border-violet-500/20',
    upgrade: { show: true, text: 'Upgrade to Dev →', class: 'text-amber-400 hover:text-amber-300' },
  },
  dev: {
    label: 'Dev mode',
    pillClass: 'bg-emerald-500/10 border-emerald-500/40 text-emerald-400',
    dotClass: 'bg-emerald-400',
    barClass: 'bg-emerald-500/5 border-emerald-500/15',
    upgrade: { show: true, text: 'Upgrade to Admin →', class: 'text-amber-400 hover:text-amber-300' },
  },
  admin: {
    label: 'Admin mode ✦',
    pillClass: 'bg-amber-500/10 border-amber-500/45 text-amber-400',
    dotClass: 'bg-amber-400',
    barClass: 'bg-amber-500/5 border-amber-500/15',
    upgrade: { show: false },
  },
}

const current = computed(() => modes[props.mode] ?? modes.standard)

// Navigation links
const navLinks = [
  { label: 'Home', href: '/', active: true },
  { label: 'Projects', href: '/projects' },
  { label: 'Sprints', href: '/sprints' },
  { label: 'Contact', href: '/contact' },
]

// Mobile menu
const menuOpen = ref(false)
</script>

<template>
  <!-- Mode bar -->
  <div
    class="flex items-center justify-center gap-2.5 px-4 py-1.5 border-b text-xs font-mono"
    :class="current.barClass"
  >
    <span class="text-white/40">You are on</span>

    <!-- Mode pill -->
    <span
      class="inline-flex items-center gap-1.5 px-2.5 py-0.5 rounded-full border text-[11px]"
      :class="current.pillClass"
    >
      <span
        class="w-1.5 h-1.5 rounded-full animate-pulse"
        :class="current.dotClass"
      />
      {{ current.label }}
    </span>

    <!-- Upgrade link -->
    <template v-if="current.upgrade.show">
      <span class="w-px h-3 bg-white/10" aria-hidden="true" />
      <a
        href="/upgrade"
        class="inline-flex items-center gap-1 text-[11px] transition-colors"
        :class="current.upgrade.class"
      >
        <svg
          class="w-3 h-3"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2.5"
          aria-hidden="true"
        >
          <path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z" />
        </svg>
        {{ current.upgrade.text }}
      </a>
    </template>
  </div>

  <!-- Header -->
  <header class="flex items-center justify-between px-8 h-[60px] bg-[#0D0F1A] border-b border-white/[0.07]">

    <!-- Logo -->
    <a href="/" class="flex items-center gap-2.5 no-underline group">
      <div class="w-[30px] h-[30px] bg-violet-600 rounded-lg flex items-center justify-center flex-shrink-0">
        <svg width="17" height="17" viewBox="0 0 18 18" fill="none" aria-hidden="true">
          <rect x="2" y="2" width="6" height="6" rx="1.5" fill="white" opacity="0.9" />
          <rect x="10" y="2" width="6" height="6" rx="1.5" fill="white" opacity="0.5" />
          <rect x="2" y="10" width="6" height="6" rx="1.5" fill="white" opacity="0.5" />
          <rect x="10" y="10" width="6" height="6" rx="1.5" fill="white" opacity="0.25" />
        </svg>
      </div>
      <span class="font-bold text-base text-white tracking-tight leading-none">
        Sprintforge
      </span>
    </a>

    <!-- Desktop nav -->
    <nav class="hidden md:flex items-center gap-10" aria-label="Main navigation">

      <!-- Main links -->
      <ul class="flex items-center gap-0.5 list-none m-0 p-0">
        <li v-for="link in navLinks" :key="link.href">
          <a
            :href="link.href"
            class="block px-3 py-1.5 text-sm rounded-md transition-colors duration-150"
            :class="link.active
              ? 'text-white bg-violet-500/10'
              : 'text-white/50 hover:text-white hover:bg-white/5'"
          >
            {{ link.label }}
          </a>
        </li>
      </ul>

      <!-- Divider -->
      <span class="w-px h-[18px] bg-white/[0.08]" aria-hidden="true" />

      <!-- Auth links -->
      <ul class="flex items-center gap-2 list-none m-0 p-0">
        <li>
          <a
            href="/login"
            class="inline-block px-3.5 py-1.5 text-[13px] font-medium text-white/60 border border-white/[0.12] rounded-lg transition-colors duration-150 hover:text-white hover:border-white/25"
          >
            Log in
          </a>
        </li>
        <li>
          <a
            href="/register"
            class="inline-block px-4 py-1.5 text-[13px] font-medium text-white bg-violet-600 rounded-lg transition-colors duration-150 hover:bg-violet-500"
          >
            Get started
          </a>
        </li>
      </ul>
    </nav>

    <!-- Mobile menu toggle -->
    <button
      class="md:hidden flex items-center justify-center w-9 h-9 rounded-lg text-white/50 hover:text-white hover:bg-white/5 transition-colors"
      :aria-expanded="menuOpen"
      aria-controls="mobile-menu"
      aria-label="Toggle menu"
      @click="menuOpen = !menuOpen"
    >
      <svg
        class="w-5 h-5"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="1.75"
        aria-hidden="true"
      >
        <path v-if="!menuOpen" stroke-linecap="round" d="M4 6h16M4 12h16M4 18h16" />
        <path v-else stroke-linecap="round" d="M6 6l12 12M18 6l-12 12" />
      </svg>
    </button>
  </header>

  <!-- Mobile menu -->
  <div
    v-if="menuOpen"
    id="mobile-menu"
    class="md:hidden bg-[#0D0F1A] border-b border-white/[0.07] px-4 pb-4 pt-2"
  >
    <ul class="flex flex-col gap-1 list-none m-0 p-0 mb-4">
      <li v-for="link in navLinks" :key="link.href">
        <a
          :href="link.href"
          class="block px-3 py-2 text-sm rounded-lg transition-colors"
          :class="link.active
            ? 'text-white bg-violet-500/10'
            : 'text-white/50 hover:text-white hover:bg-white/5'"
        >
          {{ link.label }}
        </a>
      </li>
    </ul>
    <div class="flex flex-col gap-2">
      <a
        href="/login"
        class="block text-center px-4 py-2 text-sm font-medium text-white/60 border border-white/10 rounded-lg hover:text-white hover:border-white/20 transition-colors"
      >
        Log in
      </a>
      <a
        href="/register"
        class="block text-center px-4 py-2 text-sm font-medium text-white bg-violet-600 rounded-lg hover:bg-violet-500 transition-colors"
      >
        Get started
      </a>
    </div>
  </div>
</template>