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
</template>