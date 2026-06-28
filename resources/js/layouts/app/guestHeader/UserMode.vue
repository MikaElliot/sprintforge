<script setup lang="ts">
const modes = {
    standart: {
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
    }
}
</script>