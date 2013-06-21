<div class="flexslider">
	<ul class="slides">
<?php foreach ($sliders as $key => $s) : ?>
	<li>
	 <img src="<?php echo base_url() ?>assets/uploads/files/<?php echo $s->image?>"  alt="" />
	</li>
<?php endforeach?>
</ul>
</div>
