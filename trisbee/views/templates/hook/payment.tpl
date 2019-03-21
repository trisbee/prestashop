<div class="row">
	<div class="col-xs-12">
		<p class="payment_module">
			<a class="payment_trisbee" href="{$link->getModuleLink('trisbee', 'validation', [], true)|escape:'html'}" title="{l s='Pay with Trisbee' mod='trisbee'}" rel="nofollow">
				{l s='Pay with Trisbee' mod='trisbee'}
				<span>{l s='(secured card payment in mobile app)' mod='trisbee'}</span>
			</a>
		</p>
	</div>
</div>

<style>
	.payment_trisbee {
		background: url({$this_path_trisbee}images/logo.png) 15px 15px no-repeat #fbfbfb;
	}
</style>