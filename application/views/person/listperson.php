<div class="list">
	<ul class="ul-person">
		<?php foreach ($persons as $key => $p): ?>
			<li>
				<div class="person">
					<h2><?php echo $p->name?></h2>
					<a href="#"><img src="<?php echo base_url() . "assets/uploads/files/" . $p->avatar?>" /></a>
				</div>
			</li>
		<?php endforeach?>
	</ul>
</div>