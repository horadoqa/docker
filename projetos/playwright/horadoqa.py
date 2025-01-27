from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    # Inicia o navegador
    browser = p.chromium.launch()  # ou 'firefox' ou 'webkit'
    page = browser.new_page()

    # Acessa uma URL
    page.goto("https://horadoqa.github.io/exercicios-git/")

    # Tira uma captura de tela
    page.screenshot(path="horadoqa.png")

    # Verifica o título da página
    title = page.title()
    print("Título da página:", title)
    
    page.click('text="Clique aqui!"')  # Altere o seletor conforme necessário

    # Aguarde a página ou interação carregar, caso necessário
    page.wait_for_selector('[class*="dynamic-text-view-model-wiz__h1"]')
     
    # Tira uma captura de tela
    page.screenshot(path="youtube.png")

    # Verifica o título da página
    title = page.title()
    print("Título da página:", title)

    # Fecha o navegador
    browser.close()