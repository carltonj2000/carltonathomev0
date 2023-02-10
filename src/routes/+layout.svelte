<script lang="ts">
	import '../app.postcss';
	import '@fontsource/inter';
	import 'iconify-icon';
	import { fade } from 'svelte/transition';

	let showToast = false;

	const showT = () => {
		showToast = true;
		setTimeout(() => {
			showToast = false;
		}, 1500);
	};
</script>

<svelte:head>
	<title>Carlton At Home</title>
</svelte:head>

<div class="navbar bg-pink-100">
	<div class="flex-1">
		<a href="/" class="btn btn-ghost normal-case text-xl">Carlton At Home</a>
	</div>
	<div class="flex-none">
		<button class="btn btn-square btn-ghost" on:click={showT} disabled={showToast}>
			<iconify-icon icon="charm:menu-hamburger" style="font-size: 36px" />
		</button>
	</div>
</div>

{#if showToast}
	<div class="toast toast-top toast-center" transition:fade>
		<div class="alert alert-info">
			<div>
				<span>Coming Soon</span>
			</div>
		</div>
	</div>
{/if}

<slot />

<style>
	:global(body) {
		font-family: 'inter', sans-serif;
	}
</style>
