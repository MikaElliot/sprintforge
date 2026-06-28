<script setup lang="ts">
    import { useForm } from '@inertiajs/vue3';
    import { ref } from 'vue';
    import Input from '@/components/ui/input/Input.vue';

    const form = useForm({
        title: "",
        description: "",
        categories: null,
        date_end: "",
        time_end: ""
    });

    const onnsubmit = () => {
        form.post(route('register'), {
            onFinish: () => form.reset('title', 'description', 'categories', 'date_end', 'time_end')
        })
    }

    const categories = ref([
    { id: 1, value: 'informatique', name: 'Informatique' },
    { id: 2, value: 'commerce', name: 'Commerce' },
    { id: 1, value: 'comptabilité', name: 'Comptabilité' },
    { id: 1, value: 'santé', name: 'Santé' },
    { id: 1, value: 'administration', name: 'Administration' },
    { id: 1, value: 'éducation', name: 'Éducation' },
    { id: 1, value: 'design', name: 'Design' },
    { id: 1, value: 'restauration', name: 'Restauration' },
    { id: 1, value: 'logistique', name: 'Logistique' },
    { id: 1, value: 'support', name: 'Support' },
    { id: 3, value: 'autres', name: 'Autres' }
]);
</script>
<template>
    <div class="">
        <h1 class="bg-brand p-2 text-center">Creation d'un projet</h1>
        <form action="" class="bg-black/25 flex-1 border border-black p-6">
            <div class="flex gap-4 min-h-30 p-2 mb-4">

                <!-- //Title of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <label for="">Titre au projet</label>
                    <Input
                        type="text"
                        id="title"
                        v-model="form.title"
                        class="bg-black/25 border border-white/15 rounded-lg flex-1"
                        required autofocus :tabindex="1" autocomplete="title"
                    />
                </div>

                <!-- //Description of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <label for="">Description du projet</label>
                    <textarea
                        id="description"
                        v-model="form.description"
                        class="bg-black/25 border border-white/15 rounded-lg flex-1"
                        required autofocus :tabindex="2" autocomplete="description"
                        >
                        
                    </textarea>
                </div>

                     <!-- //Category of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <label for="">Catégorie du projet</label>
                    <select
                        id="category"
                        v-model="form.category"
                        class="
                            w-full px-4 rounded-lg flex-1 p-4
                            border text-gray-400 border-white/15 focus:border-transparent
                            focus:ring-2 focus:bg-[#252a2e] transition-all"
                        required autofocus :tabindex="3" autocomplete="category"
                        >
                        <option value="">Selectionner le categorie</option>
                        <option v-for="category in categories" :value="category.value" :key="category.id">{{ category.name }}
                        </option>
                    </select>
                </div>

            </div>

            <div class="flex items-end gap-4 min-h-20 p-2 mb-4">

                <!-- //End date of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <label for="">Définir la date limite du projet</label>
                    <Input
                        type="date"
                        id="end-date"
                        v-model="form.date_end"
                        class="
                            flex-1 p-4 w-full px-4 rounded-lg
                            border border-white/15 focus:bg-[#252a2e] text-gray-400
                            focus:border-transparent focus:ring-2 
                            transition-all"
                        required autofocus :tabindex="4" autocomplete="end-date"
                    />
                </div>

                <!-- //End time of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <label for="">Définir l'heure</label>
                    <input
                        type="time"
                        id="end-time"
                        v-model="form.time_end"
                        class="
                            flex-1 p-4 w-full px-4 rounded-lg
                            border border-white/15 text-gray-400
                            focus:border-transparent focus:ring-2 focus:bg-[#252a2e]
                            transition-all"
                        required autofocus :tabindex="5" autocomplete="end-time"
                    />
                </div>

                <!-- //End time of project -->
                <div class="flex-1 flex flex-col gap-2">
                    <button
                        type="submit"
                        id="create-project"
                        @click="onnsubmit()"
                        class="
                            flex-1 p-4 w-full px-4 rounded-lg
                            bg-success border border-white/15 text-black
                            focus:border-transparent focus:ring-2 focus:bg-[#252a2e]
                            transition-all"
                            autofocus :tabindex="6" autocomplete="create-project"
                            :disabled="form.processing"
                    >
                    <LoaderCircle v-if="form.processing" class="h-4 w-4 animate-spin" />
                    Créer
                    </button>
                </div>
            </div>
        </form>
    </div>
</template>