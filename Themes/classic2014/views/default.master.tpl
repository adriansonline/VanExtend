<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-ca">
<head>
  {asset name='Head'}
</head>
<div id="Frame">
	 
		<div class="navigation">
		<h3 class="navtitle">Navigation Links</h3>
		<ul>
		 {home_link}
		  {profile_link}
		  {if !InSection("DiscussionList")}
            {discussions_link}
          {/if}       
		  {if !InSection("CategoryList")}
            {categories_link}
          {/if}
		  {inbox_link}
		  {signinout_link}
		  {nomobile_link}
		  {dashboard_link}
		  {event name="BeforeSignInLink"}
		</ul>
	 </div>  
	 
	 <input type="checkbox" id="nav-trigger" class="nav-trigger" />
     <label for="nav-trigger"></label>
	 
	 
	 
	 <div class="site-wrap">
	 <div class="Banner">
	  <strong class="SiteTitle"><a href="{link path="/"}">{mobile_logo}</a></strong>
	  <li class="newsearch">
		<a class="Search" href="/search">
		<img alt="Search" src="{link path="/"}themes/classic2014/design/images/search.png">
		</a>
	  </li>
	  {if $User.SignedIn}
	  <li class="newdiscuss">
		<a class="NewDiscussion Selected" href="/vanilla/post/discussion">
		<img alt="New Discussion" src="{link path="/"}themes/classic2014/design/images/new.png">
		</a>
	  </li>
	  {/if}
	 </div>
	 
	 <body id="{$BodyID}" class="{$BodyClass}">

       <div class="BreadcrumbsWrapper">
         {breadcrumbs homelink="0"}
       </div>
	   
		<div id="Content">
		  {asset name="Content"}
		</div>
	 <div id="Foot">
		<div class="FootMenu">
        
		</div>
      <a class="PoweredByVanilla" href="{vanillaurl}"><span>Powered by Vanilla</span></a>
		{asset name="Foot"}
	 </div>
	{event name="AfterBody"}
	</div>
</div>
</body>
</html>
