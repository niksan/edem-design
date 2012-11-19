#encoding: utf-8
module ApplicationHelper

  def page_title
    prefix = 'Студия ландшафтного дизайна "Эдем" - '
    case controller_name
    when 'articles'
      (@article.meta_title.empty?) ? prefix + @article.title : prefix + @article.meta_title
    else
      prefix + 'Ландшафтный дизайн, ландшафтные фирмы, декоративные растения, дачный ландшафтный дизайн.'
    end
  end

  def article_permalink(article, anchor='')
    anchor = (!anchor.empty?) ? '#' + anchor : ''
    '/articles/' + Article.find(article).to_param + anchor
  end

  def portfolio_permalink(portfolio, anchor='')
    anchor = (!anchor.empty?) ? '#' + anchor : ''
    '/portfolio/' + Portfolio.find(portfolio).to_param + anchor
  end

end
