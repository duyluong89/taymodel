<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo $pconfig->title;?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>public/site/css/style.css">
	<script type="text/javascript" src="<?php echo base_url()?>public/site/nivo-slider/jquery-1.9.0.min.js"></script>
	<?php echo (isset($js))?$js:"" ?>
</head>
<body <?php echo (isset($home)? "class='" . $home . "'": "")?>>
	<div id="wrapper">
	<header>
		<div id="logo">
			<?php
				if(isset($home)){
					?>
					<a href="<?php echo base_url()?>"><img src="<?php echo base_url(). "assets/uploads/files/" . $pconfig->homelogo?>" alt="<?php echo $pconfig->title ?>" /></a>
					<?php
				}else{
				?>
				<a href="<?php echo base_url()?>"><img src="<?php echo base_url(). "assets/uploads/files/". $pconfig->logo?>" alt="<?php echo $pconfig->title ?>" /></a>
				<?php
				}
			?>
		</div>
		<?php echo isset($mainmenu)?$mainmenu:""?>
	</header>
	<div id="content">
		<?php echo isset($content)?$content:""?>
	</div>
	<div class="footer">
		<div class="copyright">
			<?php echo $pconfig->copyright;?>
		</div>
		<div class="social">
			<?php echo isset($social)?$social:""?>
		</div>
	</div>
</div>
</body>
</html>