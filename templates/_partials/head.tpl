{extends file='parent:_partials/head.tpl'}

{block name='stylesheets'}
  {$smarty.block.parent}
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/themes/bbike/assets/css/bbike.css?v=100">
  <link rel="stylesheet" href="/themes/bbike/assets/css/bbike-extra.css?v=101">
{/block}

{block name='javascript_head'}
  {$smarty.block.parent}
  <script src="/themes/bbike/assets/js/custom.js?v=12" defer></script>
{/block}
