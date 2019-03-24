{*
* 2007-2019 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2019 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div class="alert alert-success">
	{l s='Your order on %s is complete.' sprintf=$shop_name mod='trisbee'}
</div>

<div class="trisbee_steps">
	<h2>{l s='How to do payment?' mod='trisbee'}</h2>

	<div class="trisbee_steps_img">
		<img src="{$module_template_dir}views/steps.png" alt="Picture with steps" />
	</div>

	<ul style="list-style: decimal inside;">
		<li class="list-group-item">
			{l s='1. Download mobile application:' mod='trisbee'}
			<a class="trisbee_link" href="https://play.google.com/store/apps/details?id=cz.primaplatba.primaplatba&referrer=utm_source=prestashop&utm_medium=web" target="_blank">{l s='For Android' mod='trisbee'}</a> /
			<a class="trisbee_link" href="https://itunes.apple.com/us/app/trisbee/id1239588371?pt=118150552&ct=prestashop&mt=8" target="_blank">{l s='For iOS' mod='trisbee'}</a>
		</li>
		<li class="list-group-item">
			{l s='2. You been asked for mobile number and sms verification - it is easy' mod='trisbee'}
		</li>
		<li class="list-group-item">
			{l s='3. In the list of dealers, just find our brand %s and send us the amount of the order via the application.' sprintf=$shop_name mod='trisbee'}
		</li>
		<li class="list-group-item">
			{l s='4. The payment will be made in a few seconds and then we will confirm receipt of the payment by email and we will process the order.' mod='trisbee'}
		</li>
	</ul>
</div>

<div class="trisbee_movies">
	<h3>{l s='Do you want to see how Trisbee works? Check these movies' mod='trisbee'}</h3>

	<ul>
		<li class="list-group-item"><a class="trisbee_link" href="https://www.youtube.com/watch?v=yx2h51PaFsA" target="_blank">{l s='How to start using Trisbee?' mod='trisbee'}</a></li>
		<li class="list-group-item"><a class="trisbee_link" href="https://www.youtube.com/watch?v=opxnCR6F3to" target="_blank">{l s='How do payment in merchnat?' mod='trisbee'}</a></li>
	</ul>
</div>

<div class="alert alert-info">
	<p>
		{l s='For any questions or for further information, please contact our' mod='trisbee'} <a href="{$link->getPageLink('contact-form', true)|escape:'html'}">{l s='customer support' mod='trisbee'}</a>.
	</p>
</div>

<p>
	<br>
	<br>
</p>

<style>
	.trisbee_link {
		text-decoration: underline;
		font-weight: bold;
	}
	.trisbee_steps, .trisbee_movies {
		margin-bottom: 25px;
	}
	.trisbee_steps_img {
		text-align: center;
	}
	.trisbee_steps_img img {
		max-width: 100%;
	}
</style>