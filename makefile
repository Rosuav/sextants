frame%.png: ../tmp/frames/frame%.png
	convert -resize 960x540 $< $@

thumb%.png: ../tmp/frames/frame%.png
	convert -resize 320x180 $< $@

%.png: frame%.png thumb%.png
	@true

.PRECIOUS: frame%.png thumb%.png
