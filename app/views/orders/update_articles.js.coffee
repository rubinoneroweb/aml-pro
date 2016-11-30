$("#order_article_id").empty()
  .append("<%= escape_javascript(render(:partial => @articles)) %>")