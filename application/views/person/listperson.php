<div class="list">
	<ul>
		<?php foreach ($persons as $key => $p): ?>
			<li>
				<div class="person">
					<h2><?php echo $p->name?></h2>
					<img src="<?php echo $p->image?>" />
				</div>
			</li>
		<?php endforeach?>
	</ul>
</div>