# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|


    primary.item :nav_finan, 'Financeiro' do |sub|
      sub.item :nav_registros, 'Diário', financeiro_diario_path
      sub.item :nav_registros, 'Anual', financeiro_anual_path
      sub.item :sep02, nil, class: 'divider'
      sub.item :nav_contas, 'Contas', contas_path
      sub.item :nav_cat, 'Categorias', categorias_path
      sub.item :nav_frm, 'Formas de Pagto', formas_path
    end

    primary.dom_class = 'nav navbar-nav'

  end

end
