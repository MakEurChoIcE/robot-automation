*** Settings ***
Documentation    Página com os objetos da página de compras do sistema


*** Variables ***
&{pageShop}
...        iconCart=id=shopping_cart_container
...        menuButton=xpath://button[@id='react-burger-menu-btn']
...        logoutButton=xpath://a[@id='logout_sidebar_link']
...        addtoCartSauce=xpath://button[@name= 'add-to-cart-sauce-labs-bike-light']
...        removeCartSauce=xpath://button[@name= 'remove-sauce-labs-bike-light']
...        buttonCheckout=xpath://button[@name= 'checkout']
...        CheckoutInfo=xpath://div[@class='checkout_info']
...        inputFirstName=xpath://input[@id='first-name']
...        inputLastName=xpath://input[@id='last-name']
...        inputZipCode=xpath://input[@id='postal-code']
...        buttonContinue=xpath://input[@id='continue']
...        Summaryinfo=xpath://div[@class='summary_info']
...        buttonFinish=xpath://button[@name='finish']
...        PonyExpress=xpath://img[@class='pony_express']
