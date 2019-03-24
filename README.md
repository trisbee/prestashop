# Trisbe app for PrestaShop

Modul pro platby kartou s využitím mobilní aplikace [Trisbee](https://www.trisbee.com/#zakaznik).

Testováno na verzi Prestashop: `1.6.1.17` s tématem `default-boostrap`.

# Instalace

1. stáhněte si poslední verzi pluginu v [releases](https://github.com/trisbee/prestashop/releases) - pojmenována vždy `module.zip`.
2. v administraci eshopu kliněte v menu na: `Moduly a Služby` -> `Přidat nový modul` -> `Vybrat soubor` -> `Nahrát tento modul`.
3. modul je připraven

# Náhled

![Screenshot admin](./doc/screenshot_admin.png)

![Screenshot front_1](./doc/screenshot_front_1.png)

![Screenshot front_2](./doc/screenshot_front_2.png)

# Contributing

- Check module on official [PrestaShop validator](https://validator.prestashop.com) before you made release.
- [Module generator](https://validator.prestashop.com/generator) can be useful too
- PrestaShop needs add index.php to each folder, you can use [this tool](https://github.com/jmcollin/autoindex) for that
- Read [documentation](http://doc.prestashop.com/display/PS16/Creating+a+PrestaShop+module#CreatingaPrestaShopmodule-ThePrestaShopfilestructure) about file structure
- Coding Standards [guide](http://doc.prestashop.com/display/PS16/Coding+Standards#CodingStandards-Installingthecodevalidator%28PHPCodeSniffer%29) (it is in composer scripts)