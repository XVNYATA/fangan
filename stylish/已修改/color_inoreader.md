@namespace url(http://www.w3.org/1999/xhtml);

@-moz-document domain("inoreader.com") {
/*apply bg-color based on last digit of subscription/feed ID (newer scheme using feed-ID [data-fid] to allow coloring of article bars in other sections, such as the 'trending' section)*/
	.ar.article_unreaded[data-fid$="0"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="0"]  > .article_header {background-color: hsla(  0,100%,90%,1);}
	.ar.article_unreaded[data-fid$="1"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="1"]  > .article_header {background-color: hsla( 30,100%,88%,1);}
	.ar.article_unreaded[data-fid$="2"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="2"]  > .article_header {background-color: hsla( 45,100%,85%,1);}
	.ar.article_unreaded[data-fid$="3"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="3"]  > .article_header {background-color: hsla( 60,100%,82%,1);}
	.ar.article_unreaded[data-fid$="4"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="4"]  > .article_header {background-color: hsla( 75,100%,83%,1);}
	.ar.article_unreaded[data-fid$="5"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="5"]  > .article_header {background-color: hsla( 90,100%,83%,1);}
	.ar.article_unreaded[data-fid$="6"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="6"]  > .article_header {background-color: hsla(105,100%,85%,1);}
	.ar.article_unreaded[data-fid$="7"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="7"]  > .article_header {background-color: hsla(120,100%,88%,1);}
	.ar.article_unreaded[data-fid$="8"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="8"]  > .article_header {background-color: hsla(220,100%,88%,1);}
	.ar.article_unreaded[data-fid$="9"]  > .article_header, .ar:not(.article_subscribed):not(.article_expanded)[data-fid$="9"]  > .article_header {background-color: hsla(280,100%,88%,1);}
	
	/*apply bg-color based on last digit of subscription ID (older scheme using subscription-ID [data-suid])*/
	/*
	.ar.article_unreaded[data-suid$="0"]  > .article_header{background-color: hsla(  0,100%,90%,1);}
	.ar.article_unreaded[data-suid$="1"]  > .article_header{background-color: hsla( 30,100%,88%,1);}
	.ar.article_unreaded[data-suid$="2"]  > .article_header{background-color: hsla( 45,100%,85%,1);}
	.ar.article_unreaded[data-suid$="3"]  > .article_header{background-color: hsla( 60,100%,82%,1);}
	.ar.article_unreaded[data-suid$="4"]  > .article_header{background-color: hsla( 75,100%,83%,1);}
	.ar.article_unreaded[data-suid$="5"]  > .article_header{background-color: hsla( 90,100%,83%,1);}
	.ar.article_unreaded[data-suid$="6"]  > .article_header{background-color: hsla(105,100%,85%,1);}
	.ar.article_unreaded[data-suid$="7"]  > .article_header{background-color: hsla(120,100%,88%,1);}
	.ar.article_unreaded[data-suid$="8"]  > .article_header{background-color: hsla(220,100%,88%,1);}
	.ar.article_unreaded[data-suid$="9"]  > .article_header{background-color: hsla(280,100%,88%,1);}
	*/
}

@-moz-document domain("inoreader.com") {
/*fixing and adjustment: tweak padding, vertical-align*/
	.ar:not(.article_expanded){
		padding-top: 2px !important;
		padding-bottom: 2px !important;
	}
	.article_header > div{
		vertical-align: bottom;
	}

	.article_header > div:first-child > a > img{
		vertical-align: text-bottom !important;
	}
	
	/*line-heights for various display densities*/
	#wraper.display_density_0 .article_header, #wraper.display_density_0 .article_header_text{
		line-height: 2.2em;
	}	
	#wraper.display_density_1 .article_header, #wraper.display_density_1 .article_header_text{
		line-height: 1.9em;
	}		
	#wraper.display_density_2 .article_header, #wraper.display_density_2 .article_header_text{
		line-height: 1.6em;
	}		
	#wraper.display_density_3 .article_header, #wraper.display_density_3 .article_header_text{
		line-height: 1.2em;
	}	
	
		/*old settings; recommend that you use non-length units (e.g., em/ex versus px/pt) */
		/*
		#wraper.display_density_0 :-moz-any(.article_header,.article_header_text){
			line-height: 24pt;
		}	
		#wraper.display_density_1 :-moz-any(.article_header,.article_header_text){
			line-height: 21pt;
		}		
		#wraper.display_density_2 :-moz-any(.article_header,.article_header_text){
			line-height: 17pt;
		}		
		#wraper.display_density_3 :-moz-any(.article_header,.article_header_text){
			line-height: 14pt;
		}	
		*/
	
	
	/*hover style for article bar & article expander*/
	
	.ar.article_expanded > .article_header:hover, 
	.ar:hover:not(.article_expanded),
	.ar:hover:not(.article_expanded) > .article_header,
	.ar:hover:not(.article_expanded) > .article_header > .arrow_div{
		background-color: hsla( 120, 100%, 93%, 1.0) !important;
	}
	.ar:hover:not(.article_expanded) > .article_header > .article_header_text > .article_title_wrapper > a {
		/*text-decoration: underline;*/
	}
	.ar:hover:not(.article_expanded){
		border: 1px dotted black;
	}
}

@-moz-document domain("inoreader.com") {
/*visitation indicator on article link (found on article bars)*/
	.header_buttons > a, .header_buttons > a > span.icon16 {
		color: hsl(240, 30%, 65%) !important;
		opacity: 1.0 !important;
	}
	.header_buttons > a:visited > span.icon16.icon-new_tab:before {
		color: MediumVioletRed !important;
	}
		/*
		.header_buttons > a:visited > span.icon16.icon-new_tab:before {color: MediumVioletRed !important;}
		*/
		/*
		.header_buttons > a >  span.icon16.icon-new_tab {border-bottom: 2px solid silver;}
		.header_buttons > a:visited > span.icon16.icon-new_tab {border-color: firebrick;}
		*/

	/*visitation*/
	/*a.article_title_link.bluelink:visited,*/
	a.article_title_link:visited,
	.article_content a:visited{
		color: MediumVioletRed !important;
	}
	
	/*link hover decoration*/
	/*a.article_title_link.bluelink:hover*/
	a.article_title_link:hover{
		text-decoration: underline !important;
	}

	/*transitional hightlighting*/
	.article_title_link.bluelink:link, .article_content a:link{
		-moz-transition: background-color 6s ease-in 2s;
		-webkit-transition: background-color 6s ease-in 2s;
		-o-transition: background-color 6s ease-in 2s;
	}
	.article_title_link.bluelink:hover, .article_content a:hover{
		background-color: lime;
		-moz-transition: background-color 1s ease-out 0.35s;
		-webkit-transition: background-color 1s ease-out 0.35s;
		-o-transition: background-color 1s ease-out 0.35s;
	}
	.article_title_link.bluelink:active, .article_content a:active{
		background-color: lime;
		-moz-transition: none;
		-webkit-transition: none;
		-o-transition: none;
	}
}

@-moz-document domain("inoreader.com") {
.block_article_ad,
	.leaderboard_ad,
	.ad_size_leaderboard,
	.ad_title,
	.ad_title_centered{
		display:none;
	}

	
	#reader_pane.reader_pane_sinner {
		padding-right: 0 !important;
	}
	#sinner_container{
		display: none !important;		
	}
}