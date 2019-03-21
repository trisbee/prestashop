{capture name=path}
	<a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Go back to the Checkout' mod='trisbee'}">{l s='Checkout' mod='trisbee'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Trisbee payment' mod='trisbee'}
{/capture}

{include file="$tpl_dir./breadcrumb.tpl"}

<h2>{l s='Order summary' mod='trisbee'}</h2>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

<h3>{l s='Trisbee payment' mod='trisbee'}</h3>

<form action="{$link->getModuleLink('trisbee', 'validation', [], true)|escape:'html'}" method="post">
	<input type="hidden" name="confirm" value="1" />
	<p>
		<img src="{$this_path_trisbee}images/logo.png" alt="{l s='Trisbee payment' mod='trisbee'}" style="float:left; margin: 0px 10px 5px 0px;" />
		{l s='You have chosen the Trisbee method.' mod='trisbee'}
		<br/><br />
		{l s='The total amount of your order is' mod='trisbee'}
		<span id="amount_{$currencies.0.id_currency}" class="price">{convertPrice price=$total}</span>
		{if $use_taxes == 1}
		    {l s='(tax incl.)' mod='trisbee'}
		{/if}
	</p>
	<p>
		<br /><br />
		<br /><br />
		<b>{l s='Please confirm your order by clicking \'I confirm my order\'.' mod='trisbee'}</b>
	</p>
	<p class="cart_navigation" id="cart_navigation">
		<a href="{$link->getPageLink('order', true)}?step=3" class="button_large">{l s='Other payment methods' mod='trisbee'}</a>
		<input type="submit" value="{l s='I confirm my order' mod='trisbee'}" class="exclusive_large" />
	</p>
</form>
