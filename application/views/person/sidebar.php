<?php if(isset($subcategory) && count($subcategory) > 0):?>
<ul class="ul-sidebar">
<?php foreach ($subcategory as $key => $sub): ?>
	<li><a href="#"><?php echo $sub->name?></a></li>
<?php endforeach ?>

</ul>
<?php endif?>