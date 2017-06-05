# Sed command to convert wordpress "caption" entries to be figures using my css for float left/right
# caption entries look like this (but all on one line):
#  [caption id="attachment_3188" align="alignright" width="300"]
#  <a 
#  href="https://grumblingwanderer.files.wordpress.com/2017/06/dsc_0002-1600x1067.jpg" 
#  rel="noopener 
#  noreferrer">
#  <img class="alignright size-medium wp-image-3188" 
#  src="https://grumblingwanderer.files.wordpress.com/2017/06/dsc_0002-1600x1067.jpg?w=600" 
#  alt="DSC_0002-1600x1067" 
#  width="300" 
#  height="200" 
#  />
#  </a> 
#  Hungry pelicans
#  [/caption]

# We want to make a Figure entry like this
#  <figure class="fig-left" >
#  <img src="/assets/20170410_111022-1600x900.jpg">
#  <figcaption>This is the caption for the image</figcaption>
#  </figure>


s/\[caption.*alignright.*href="\(.*jpg\).*src=.*<\/a>\W*\(.*\)\[\/caption\]/<div class="para-image"><figure class="fig-right"><img src="\1"><figcaption>\2<\/figcaption><\/figure>/g
s/\[caption.*alignleft.*href="\(.*jpg\).*src=.*<\/a>\W*\(.*\)\[\/caption\]/<div class="para-image"><figure class="fig-left"><img src="\1"><figcaption>\2<\/figcaption><\/figure>/g
s/\[caption.*aligncenter.*href="\(.*jpg\).*src=.*<\/a>\W*\(.*\)\[\/caption\]/<div class="para-image"><figure class="fig-center"><img src="\1"><figcaption>\2<\/figcaption><\/figure>/g
s/\[caption.*alignnone.*href="\(.*jpg\).*src=.*<\/a>\W*\(.*\)\[\/caption\]/<div class="para-image"><figure class="fig-none"><img src="\1"><figcaption>\2<\/figcaption><\/figure>/g
