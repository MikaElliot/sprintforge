<script setup lang="ts">
defineProps({
    appName: String
})
</script>
<template>
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
        {{ appName }}
      </span>
    </a>
</template>