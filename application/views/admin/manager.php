<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title><?php echo $title?></title>
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<a href='<?php echo site_url('admin/home/slidermanager')?>'>Slider manager</a> |
		<a href='<?php echo site_url('admin/home/blogcategorymanager')?>'>Blog Category</a> |
		<a href='<?php echo site_url('admin/home/blogmanager')?>'>Blog</a> |
		<a href='<?php echo site_url('admin/home/categorymanager')?>'>Category</a> | 
		<a href='<?php echo site_url('admin/home/configurationmanager')?>'>Configuration</a> |		 
		<a href='<?php echo site_url('admin/home/personmanager')?>'>Person</a>
	</div>
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
