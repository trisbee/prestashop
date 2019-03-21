<?php
/*
*/

if (!defined('_PS_VERSION_'))
	exit;

class Trisbee extends PaymentModule
{
	public function __construct()
	{
		$this->name = 'trisbee';
		$this->tab = 'payments_gateways';
		$this->version = '1.0.0';
		$this->author = 'Trisbee';
		$this->need_instance = 1;
		$this->controllers = array('validation');
		$this->is_eu_compatible = 1;

		$this->currencies = false;

		parent::__construct();

		$this->displayName = $this->l('Trisbee');
		$this->description = $this->l('Accept Trisbee payments');

		/* For 1.4.3 and less compatibility */
		$updateConfig = array('PS_OS_CHEQUE', 'PS_OS_PAYMENT', 'PS_OS_PREPARATION', 'PS_OS_SHIPPING', 'PS_OS_CANCELED', 'PS_OS_REFUND', 'PS_OS_ERROR', 'PS_OS_OUTOFSTOCK', 'PS_OS_BANKWIRE', 'PS_OS_PAYPAL', 'PS_OS_WS_PAYMENT');
		if (!Configuration::get('PS_OS_PAYMENT'))
			foreach ($updateConfig as $u)
				if (!Configuration::get($u) && defined('_'.$u.'_'))
					Configuration::updateValue($u, constant('_'.$u.'_'));
	}

	public function install()
	{
		if (!parent::install() OR !$this->registerHook('payment') OR ! $this->registerHook('displayPaymentEU') OR !$this->registerHook('paymentReturn'))
			return false;
		return true;
	}

	public function hasProductDownload($cart)
	{
		foreach ($cart->getProducts() AS $product)
		{
			$pd = ProductDownload::getIdFromIdProduct((int)($product['id_product']));
			if ($pd AND Validate::isUnsignedInt($pd))
				return true;
		}
		return false;
	}

	public function hookPayment($params)
	{
		if (!$this->active)
			return ;

		global $smarty;

		// Check if cart has product download
		if ($this->hasProductDownload($params['cart']))
			return false;


		$smarty->assign(array(
			'this_path' => $this->_path, //keep for retro compat
			'this_path_trisbee' => $this->_path,
			'this_path_ssl' => Tools::getShopDomainSsl(true, true).__PS_BASE_URI__.'modules/'.$this->name.'/'
		));
		return $this->display(__FILE__, 'payment.tpl');
	}

	public function hookDisplayPaymentEU($params)
	{
		if (!$this->active)
			return ;

		// Check if cart has product download
		if ($this->hasProductDownload($params['cart']))
			return false;

		return array(
			'cta_text' => $this->l('Pay with Trisbee'),
			'logo' => Media::getMediaPath(dirname(__FILE__).'/trisbee.jpg'),
			'action' => $this->context->link->getModuleLink($this->name, 'validation', array('confirm' => true), true)
		);
	}

	public function hookPaymentReturn($params)
	{
		if (!$this->active)
			return ;

		return $this->display(__FILE__, 'confirmation.tpl');
	}
}
